@interface PSSharedStreamManager
- (BOOL)closeStreamWithKey:(id)a3;
- (BOOL)isValidStream:(id)a3;
- (BOOL)openStreamWithKey:(id)a3;
- (BOOL)startStreamWithKey:(id)a3;
- (BOOL)stopStreamWithKey:(id)a3;
- (PSSharedStreamManager)initWithServer:(PSCommsServer *)a3 device:(id)a4 machPortName:(id)a5 gsm:(ps_gsm_s *)a6;
@end

@implementation PSSharedStreamManager

- (PSSharedStreamManager)initWithServer:(PSCommsServer *)a3 device:(id)a4 machPortName:(id)a5 gsm:(ps_gsm_s *)a6
{
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = PSSharedStreamManager;
  v12 = [(PSSharedStreamManager *)&v19 init];
  if (v12)
  {
    v13 = objc_alloc_init(NSMutableDictionary);
    sharedStreams = v12->_sharedStreams;
    v12->_sharedStreams = v13;

    v15 = dispatch_queue_create("Stream_manager.queue", 0);
    creatorQueue = v12->_creatorQueue;
    v12->_creatorQueue = v15;

    objc_storeStrong(&v12->_currDevice, a4);
    v12->_gsm = a6;
    [v11 UTF8String];
    ps_comms_register_callback_with_entitlements();
    v17 = v12;
  }

  return v12;
}

- (BOOL)isValidStream:(id)a3
{
  v4 = a3;
  if ([(PLSDevice *)self->_currDevice hasSensor:v4])
  {
    v5 = [(PLSDevice *)self->_currDevice propertiesForKey:v4];
    v6 = [v5 isSharedStream];
  }

  else
  {
    v7 = sub_100013BF4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No stream on this device for key (%@)", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)startStreamWithKey:(id)a3
{
  v4 = a3;
  if ([(PSSharedStreamManager *)self isValidStream:v4])
  {
    v5 = [(NSMutableDictionary *)self->_sharedStreams objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5)
    {
      if ([v5 startCount])
      {
        [v6 setStartCount:{objc_msgSend(v6, "startCount") + 1}];
        v7 = 1;
      }

      else
      {
        v9 = [v6 stream];

        if (v9)
        {
          v10 = [v6 stream];
          v7 = [v10 start];
        }

        else
        {
          v7 = 1;
        }

        [v6 setStartCount:1];
        v11 = sub_100013BF4();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting stream for key", v13, 2u);
        }
      }
    }

    else
    {
      v8 = sub_100013BF4();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No stream for key to start", buf, 2u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)stopStreamWithKey:(id)a3
{
  v4 = a3;
  if ([(PSSharedStreamManager *)self isValidStream:v4])
  {
    v5 = [(NSMutableDictionary *)self->_sharedStreams objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5)
    {
      if ([v5 startCount])
      {
        if ([v6 startCount] == 1)
        {
          [v6 setStartCount:0];
          v7 = [v6 stream];

          if (v7)
          {
            v8 = [v6 stream];
            v9 = [v8 stop];
          }

          else
          {
            v9 = 1;
          }

          v13 = sub_100013BF4();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *v15 = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Stopping stream for key", v15, 2u);
          }
        }

        else
        {
          [v6 setStartCount:{objc_msgSend(v6, "startCount") - 1}];
          v9 = 1;
        }

        goto LABEL_19;
      }

      v10 = sub_100013BF4();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = "Stream for key is already stopped";
        v12 = buf;
        goto LABEL_12;
      }
    }

    else
    {
      v10 = sub_100013BF4();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 0;
        v11 = "No stream for key to stop";
        v12 = &v17;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
      }
    }

    v9 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v9 = 0;
LABEL_20:

  return v9;
}

- (BOOL)closeStreamWithKey:(id)a3
{
  v4 = a3;
  if ([(PSSharedStreamManager *)self isValidStream:v4])
  {
    v5 = [(NSMutableDictionary *)self->_sharedStreams objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5)
    {
      if ([v5 openCount] > 1)
      {
        [v6 setOpenCount:{objc_msgSend(v6, "openCount") - 1}];
        v9 = 1;
      }

      else
      {
        v7 = [v6 stream];

        if (v7)
        {
          v8 = [v6 stream];
          v9 = [v8 close];
        }

        else
        {
          v9 = 1;
        }

        v11 = sub_100013BF4();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Closing stream for key", v13, 2u);
        }

        [(NSMutableDictionary *)self->_sharedStreams removeObjectForKey:v4];
      }
    }

    else
    {
      v10 = sub_100013BF4();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Stream for key is already closed", buf, 2u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)openStreamWithKey:(id)a3
{
  v4 = a3;
  v5 = [(PSSharedStreamManager *)self isValidStream:v4];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_sharedStreams objectForKeyedSubscript:v4];
    if (v6)
    {
      v7 = v6;
      [(StreamInfo *)v6 setOpenCount:[(StreamInfo *)v6 openCount]+ 1];
    }

    else
    {
      v7 = [[StreamInfo alloc] initWithKey:v4 device:self->_currDevice manager:self];
      [(StreamInfo *)v7 setOpenCount:[(StreamInfo *)v7 openCount]+ 1];
      [(NSMutableDictionary *)self->_sharedStreams setObject:v7 forKeyedSubscript:v4];
    }
  }

  return v5;
}

@end