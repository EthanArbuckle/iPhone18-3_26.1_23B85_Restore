@interface VSAudioSession
+ (id)sharedInstance;
+ (int64_t)_VSAudioCategoryForActivity:(int64_t)activity;
- (VSAudioSession)init;
- (int64_t)_nextActivityForActive:(BOOL)active activity:(int64_t)activity serverActivity:(int64_t)serverActivity;
- (int64_t)_safeServerGeneration;
- (void)_audioSessionInterrupted:(id)interrupted;
- (void)_mediaServicesWereReset:(id)reset;
- (void)_safeSetActive:(BOOL)active withActivity:(int64_t)activity;
- (void)_safeSetBluetoothInputAllowed:(BOOL)allowed;
- (void)_safeSetCategoryForActivity:(int64_t)activity;
- (void)_safeSetupAudioSession;
- (void)_setCategoryForActivity:(int64_t)activity;
- (void)_setupAudioSession;
- (void)dealloc;
@end

@implementation VSAudioSession

- (void)_safeSetBluetoothInputAllowed:(BOOL)allowed
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000EA220;
  v4[3] = &unk_1000FEA90;
  v4[4] = self;
  allowedCopy = allowed;
  dispatch_sync(queue, v4);
}

- (void)_safeSetActive:(BOOL)active withActivity:(int64_t)activity
{
  if (activity)
  {
    activeCopy = active;
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = "INACTIVE";
      if (activeCopy)
      {
        v9 = "ACTIVE";
      }

      *buf = 67109378;
      activityCopy = activity;
      v14 = 2080;
      v15 = v9;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "#AudioSession : activity %d --> %s\n", buf, 0x12u);
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000EA514;
    block[3] = &unk_1000FEA68;
    v11 = activeCopy;
    block[4] = self;
    block[5] = activity;
    dispatch_sync(queue, block);
  }
}

- (void)_safeSetCategoryForActivity:(int64_t)activity
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000EA8BC;
  v4[3] = &unk_1000FEA40;
  v4[4] = self;
  v4[5] = activity;
  dispatch_sync(queue, v4);
}

- (int64_t)_safeServerGeneration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000EA974;
  v5[3] = &unk_1000FEB00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_safeSetupAudioSession
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EA9FC;
  block[3] = &unk_1000FEAD8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (int64_t)_nextActivityForActive:(BOOL)active activity:(int64_t)activity serverActivity:(int64_t)serverActivity
{
  activityBag = self->_activityBag;
  if (active)
  {
    if (activityBag)
    {
      if ((activity & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      activityBag = CFBagCreateMutable(kCFAllocatorDefault, 0, 0);
      self->_activityBag = activityBag;
      if ((activity & 1) == 0)
      {
LABEL_4:
        if ((activity & 2) == 0)
        {
          return serverActivity | activity;
        }

LABEL_5:
        CFBagAddValue(self->_activityBag, 2);
        return serverActivity | activity;
      }
    }

    CFBagAddValue(activityBag, 1);
    if ((activity & 2) == 0)
    {
      return serverActivity | activity;
    }

    goto LABEL_5;
  }

  if (!activityBag)
  {
    v13 = VSGetLogDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 0;
      v14 = "#AudioSession active count went negative!\n";
      v15 = &v18;
LABEL_28:
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v14, v15, 2u);
    }

LABEL_29:

    return serverActivity;
  }

  if ((activity & 1) == 0)
  {
    goto LABEL_12;
  }

  CountOfValue = CFBagGetCountOfValue(activityBag, 1);
  if (CountOfValue)
  {
    v10 = CountOfValue;
    CFBagRemoveValue(self->_activityBag, 1);
    if (v10 == 1)
    {
      serverActivity &= ~1uLL;
    }

LABEL_12:
    if ((activity & 2) == 0)
    {
      return serverActivity;
    }

LABEL_13:
    v11 = CFBagGetCountOfValue(self->_activityBag, 2);
    if (v11)
    {
      v12 = v11;
      CFBagRemoveValue(self->_activityBag, 2);
      if (v12 == 1)
      {
        return serverActivity & 0xFFFFFFFFFFFFFFFDLL;
      }

      return serverActivity;
    }

    v13 = VSGetLogDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "#AudioSession active count went negative for output!\n";
      v15 = buf;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v16 = VSGetLogDefault();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#AudioSession active count went negative for input!\n", v20, 2u);
  }

  if ((activity & 2) != 0)
  {
    goto LABEL_13;
  }

  return serverActivity;
}

- (void)_setCategoryForActivity:(int64_t)activity
{
  v4 = [VSAudioSession _VSAudioCategoryForActivity:activity];
  if (v4)
  {
    v5 = v4;
    if (self->_cachedState.category != v4)
    {
      v6 = VSGetLogDefault();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v23) = v5;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "#AudioSession : category = %d\n", buf, 8u);
      }

      if (self->_cachedState.category == 2)
      {
        sub_1000EA71C();
      }

      v7 = +[AVAudioSession sharedInstance];
      v8 = AVAudioSessionCategoryVoiceCommand;
      v9 = AVAudioSessionCategoryVoiceOver;
      if (v5 == 2)
      {
        v9 = AVAudioSessionCategoryVoiceCommand;
      }

      v10 = v9;
      v21 = 0;
      [v7 setCategory:v10 error:&v21];
      v11 = v21;
      if (v11)
      {
        v12 = v11;
        v13 = VSGetLogDefault();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          code = [v12 code];
          *buf = 134217984;
          v23 = code;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#AudioSession error %ld setting audio category\n", buf, 0xCu);
        }
      }

      else
      {
        if (v5 == 2 && (v14 = [v7 categoryOptions], ((((v14 & 4) == 0) ^ self->_bluetoothAllowed) & 1) == 0))
        {
          v20 = 0;
          [v7 setCategory:v8 withOptions:v14 ^ 4 error:&v20];
          v12 = v20;
          v15 = VSGetLogDefault();
          v16 = v15;
          if (v12)
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              code2 = [v12 code];
              *buf = 134217984;
              v23 = code2;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#AudioSession error %ld setting bluetooth allowability\n", buf, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              if (self->_bluetoothAllowed)
              {
                v19 = "en";
              }

              else
              {
                v19 = "dis";
              }

              *buf = 136315138;
              v23 = v19;
              _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "#AudioSession : Bluetooth %sabled\n", buf, 0xCu);
            }

            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        self->_cachedState.category = v5;
      }

      self->_desiredState.category = v5;
    }
  }
}

- (void)_setupAudioSession
{
  if (!self->_audioSessionIsSetUp)
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "#AudioSession : Setting up audio session", buf, 2u);
    }

    v4 = +[AVAudioSession sharedInstance];
    v8 = 0;
    [v4 setPreferredSampleRate:&v8 error:48000.0];
    v5 = v8;

    if (v5)
    {
      v6 = VSGetLogDefault();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        code = [v5 code];
        *buf = 134217984;
        v10 = code;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#AudioSession error setting HW sample rate: %ld\n", buf, 0xCu);
      }
    }

    self->_audioSessionIsSetUp = 1;
  }
}

- (void)_mediaServicesWereReset:(id)reset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EB058;
  block[3] = &unk_1000FEAD8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_audioSessionInterrupted:(id)interrupted
{
  userInfo = [interrupted userInfo];
  v5 = [userInfo objectForKey:AVAudioSessionInterruptionTypeKey];
  integerValue = [v5 integerValue];

  if (integerValue == 1)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000EB1B4;
    block[3] = &unk_1000FEAD8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  activityBag = self->_activityBag;
  if (activityBag)
  {
    CFRelease(activityBag);
  }

  v5.receiver = self;
  v5.super_class = VSAudioSession;
  [(VSAudioSession *)&v5 dealloc];
}

- (VSAudioSession)init
{
  v7.receiver = self;
  v7.super_class = VSAudioSession;
  v2 = [(VSAudioSession *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("VSAudioSessionQueue", 0);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    *(v2 + 40) = 0u;
    *(v2 + 24) = 0u;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_audioSessionInterrupted:" name:AVAudioSessionInterruptionNotification object:0];
    [v5 addObserver:v2 selector:"_mediaServicesWereReset:" name:AVAudioSessionMediaServicesWereResetNotification object:0];
  }

  return v2;
}

+ (int64_t)_VSAudioCategoryForActivity:(int64_t)activity
{
  if (activity)
  {
    return 2;
  }

  else
  {
    return (activity >> 1) & 1;
  }
}

+ (id)sharedInstance
{
  if (qword_100106588 != -1)
  {
    dispatch_once(&qword_100106588, &stru_1000FEA18);
  }

  v3 = qword_100106580;

  return v3;
}

@end