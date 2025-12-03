@interface PSSharedStreamManager
- (BOOL)closeStreamWithKey:(id)key;
- (BOOL)isValidStream:(id)stream;
- (BOOL)openStreamWithKey:(id)key;
- (BOOL)startStreamWithKey:(id)key;
- (BOOL)stopStreamWithKey:(id)key;
- (PSSharedStreamManager)initWithServer:(PSCommsServer *)server device:(id)device machPortName:(id)name gsm:(ps_gsm_s *)gsm;
@end

@implementation PSSharedStreamManager

- (PSSharedStreamManager)initWithServer:(PSCommsServer *)server device:(id)device machPortName:(id)name gsm:(ps_gsm_s *)gsm
{
  deviceCopy = device;
  nameCopy = name;
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

    objc_storeStrong(&v12->_currDevice, device);
    v12->_gsm = gsm;
    [nameCopy UTF8String];
    ps_comms_register_callback_with_entitlements();
    v17 = v12;
  }

  return v12;
}

- (BOOL)isValidStream:(id)stream
{
  streamCopy = stream;
  if ([(PLSDevice *)self->_currDevice hasSensor:streamCopy])
  {
    v5 = [(PLSDevice *)self->_currDevice propertiesForKey:streamCopy];
    isSharedStream = [v5 isSharedStream];
  }

  else
  {
    v7 = sub_100013BF4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = streamCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No stream on this device for key (%@)", &v9, 0xCu);
    }

    isSharedStream = 0;
  }

  return isSharedStream;
}

- (BOOL)startStreamWithKey:(id)key
{
  keyCopy = key;
  if ([(PSSharedStreamManager *)self isValidStream:keyCopy])
  {
    v5 = [(NSMutableDictionary *)self->_sharedStreams objectForKeyedSubscript:keyCopy];
    v6 = v5;
    if (v5)
    {
      if ([v5 startCount])
      {
        [v6 setStartCount:{objc_msgSend(v6, "startCount") + 1}];
        start = 1;
      }

      else
      {
        stream = [v6 stream];

        if (stream)
        {
          stream2 = [v6 stream];
          start = [stream2 start];
        }

        else
        {
          start = 1;
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

      start = 0;
    }
  }

  else
  {
    start = 0;
  }

  return start;
}

- (BOOL)stopStreamWithKey:(id)key
{
  keyCopy = key;
  if ([(PSSharedStreamManager *)self isValidStream:keyCopy])
  {
    v5 = [(NSMutableDictionary *)self->_sharedStreams objectForKeyedSubscript:keyCopy];
    v6 = v5;
    if (v5)
    {
      if ([v5 startCount])
      {
        if ([v6 startCount] == 1)
        {
          [v6 setStartCount:0];
          stream = [v6 stream];

          if (stream)
          {
            stream2 = [v6 stream];
            stop = [stream2 stop];
          }

          else
          {
            stop = 1;
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
          stop = 1;
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

    stop = 0;
LABEL_19:

    goto LABEL_20;
  }

  stop = 0;
LABEL_20:

  return stop;
}

- (BOOL)closeStreamWithKey:(id)key
{
  keyCopy = key;
  if ([(PSSharedStreamManager *)self isValidStream:keyCopy])
  {
    v5 = [(NSMutableDictionary *)self->_sharedStreams objectForKeyedSubscript:keyCopy];
    v6 = v5;
    if (v5)
    {
      if ([v5 openCount] > 1)
      {
        [v6 setOpenCount:{objc_msgSend(v6, "openCount") - 1}];
        close = 1;
      }

      else
      {
        stream = [v6 stream];

        if (stream)
        {
          stream2 = [v6 stream];
          close = [stream2 close];
        }

        else
        {
          close = 1;
        }

        v11 = sub_100013BF4();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Closing stream for key", v13, 2u);
        }

        [(NSMutableDictionary *)self->_sharedStreams removeObjectForKey:keyCopy];
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

      close = 0;
    }
  }

  else
  {
    close = 0;
  }

  return close;
}

- (BOOL)openStreamWithKey:(id)key
{
  keyCopy = key;
  v5 = [(PSSharedStreamManager *)self isValidStream:keyCopy];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_sharedStreams objectForKeyedSubscript:keyCopy];
    if (v6)
    {
      v7 = v6;
      [(StreamInfo *)v6 setOpenCount:[(StreamInfo *)v6 openCount]+ 1];
    }

    else
    {
      v7 = [[StreamInfo alloc] initWithKey:keyCopy device:self->_currDevice manager:self];
      [(StreamInfo *)v7 setOpenCount:[(StreamInfo *)v7 openCount]+ 1];
      [(NSMutableDictionary *)self->_sharedStreams setObject:v7 forKeyedSubscript:keyCopy];
    }
  }

  return v5;
}

@end