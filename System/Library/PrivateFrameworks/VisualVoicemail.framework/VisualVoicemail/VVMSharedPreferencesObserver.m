@interface VVMSharedPreferencesObserver
+ (id)sharedPreferencesObserver;
- (BOOL)isAirplaneMode;
- (VVMSharedPreferencesObserver)init;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)checkAirplaneModePreference;
- (void)dealloc;
- (void)handleRadioPreferencesChanged:(id)a3;
- (void)notifyAirplaneModeChanged_sync:(BOOL)a3;
- (void)removeDelegate:(id)a3;
- (void)setupAirplaneModeCallback;
@end

@implementation VVMSharedPreferencesObserver

+ (id)sharedPreferencesObserver
{
  if (qword_10010D718 != -1)
  {
    sub_10009B4D0();
  }

  v3 = qword_10010D710;

  return v3;
}

- (VVMSharedPreferencesObserver)init
{
  v3 = sub_10000B2B0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v20 = "";
    v21 = 2080;
    v22 = "";
    v23 = 2112;
    v24 = objc_opt_class();
    v25 = 2048;
    v26 = self;
    v4 = v24;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p Creating", buf, 0x2Au);
  }

  v18.receiver = self;
  v18.super_class = VVMSharedPreferencesObserver;
  v5 = [(VVMSharedPreferencesObserver *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v5->lock._os_unfair_lock_opaque = 0;
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 bundleIdentifier];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [NSString stringWithFormat:@"%@.%@", v8, v10];
    v12 = v11;
    v13 = dispatch_queue_create([v11 UTF8String], 0);
    queue = v6->queue;
    v6->queue = v13;

    v6->preferences = 0;
    v6->airplane = 0;
    v15 = +[NSMapTable weakToWeakObjectsMapTable];
    delegates = v6->delegates;
    v6->delegates = v15;

    [(VVMSharedPreferencesObserver *)v6 setupAirplaneModeCallback];
    [(VVMSharedPreferencesObserver *)v6 checkAirplaneModePreference];
  }

  return v6;
}

- (void)dealloc
{
  v3 = sub_10000B2B0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2112;
    *&buf[24] = objc_opt_class();
    LOWORD(v8[0]) = 2048;
    *(v8 + 2) = self;
    v4 = *&buf[24];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p Deleting", buf, 0x2Au);
  }

  preferences = self->preferences;
  if (preferences)
  {
    *buf = unk_1000ED8A8;
    *&buf[16] = unk_1000ED8B8;
    v8[0] = 0;
    SCPreferencesSetCallback(preferences, 0, buf);
    SCPreferencesSetDispatchQueue(self->preferences, 0);
    CFRelease(self->preferences);
    self->preferences = 0;
  }

  v6.receiver = self;
  v6.super_class = VVMSharedPreferencesObserver;
  [(VVMSharedPreferencesObserver *)&v6 dealloc];
}

- (void)setupAirplaneModeCallback
{
  v3 = SCPreferencesCreate(kCFAllocatorDefault, @"com.apple.voicemail:registerForAirplaneModeNotifications", @"com.apple.radios.plist");
  self->preferences = v3;
  if (v3)
  {
    *&v6.version = unk_1000ED8A8;
    memset(&v6.retain, 0, 24);
    SCPreferencesSetCallback(v3, sub_10000B5D0, &v6);
    SCPreferencesSetDispatchQueue(self->preferences, self->queue);
  }

  else
  {
    v4 = sub_10000B2B0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = SCError();
      LODWORD(v6.version) = 136315650;
      *(&v6.version + 4) = "";
      WORD2(v6.info) = 2080;
      *(&v6.info + 6) = "";
      HIWORD(v6.retain) = 2080;
      v6.release = SCErrorString(v5);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sUnable to create airplane mode preferences session: %s", &v6, 0x20u);
    }
  }
}

- (void)checkAirplaneModePreference
{
  preferences = self->preferences;
  if (!preferences)
  {
    v10 = sub_10000B2B0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "";
      v13 = 2080;
      v14 = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sAirplaneMode preferences session is null", &v11, 0x16u);
    }

    goto LABEL_15;
  }

  SCPreferencesSynchronize(preferences);
  Value = SCPreferencesGetValue(self->preferences, @"AirplaneMode");
  if (!Value)
  {
    v10 = sub_10000B2B0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "";
      v13 = 2080;
      v14 = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sAirplaneMode key not found", &v11, 0x16u);
    }

    goto LABEL_15;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFBooleanGetTypeID())
  {
    v10 = sub_10000B2B0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "";
      v13 = 2080;
      v14 = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sAirplaneMode is not BOOLean", &v11, 0x16u);
    }

LABEL_15:

    return;
  }

  v7 = CFBooleanGetValue(v5);
  v8 = sub_10000B2B0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = asNSStringBOOL();
    v11 = 136315650;
    v12 = "";
    v13 = 2080;
    v14 = "";
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sAirplaneMode is %@", &v11, 0x20u);
  }

  [(VVMSharedPreferencesObserver *)self setAirplaneMode:v7 != 0];
}

- (void)handleRadioPreferencesChanged:(id)a3
{
  v4 = a3;
  v5 = sub_10000B2B0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "";
    v12 = 2080;
    v13 = "";
    v14 = 2112;
    v15 = objc_opt_class();
    v16 = 2112;
    v17 = v4;
    v6 = v15;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is handling RadioPreferencesChanged with info <%@>", &v10, 0x2Au);
  }

  if ([v4 isEqualToString:@"AirplaneMode"])
  {
    [(VVMSharedPreferencesObserver *)self checkAirplaneModePreference];
  }

  else
  {
    v7 = sub_10000B2B0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v10 = 136315906;
      v11 = "";
      v12 = 2080;
      v13 = "";
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v4;
      v9 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is suppressing notification for %@", &v10, 0x2Au);
    }
  }
}

- (BOOL)isAirplaneMode
{
  os_unfair_lock_lock(&self->lock);
  airplane = self->airplane;
  os_unfair_lock_unlock(&self->lock);
  return airplane;
}

- (void)notifyAirplaneModeChanged_sync:(BOOL)a3
{
  v5 = sub_10000B2B0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSMapTable *)self->delegates count];
    *buf = 136315650;
    v21 = "";
    v22 = 2080;
    v23 = "";
    v24 = 2048;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sSending AirplaneModeChanged to %lu delegates", buf, 0x20u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->delegates;
  v7 = [(NSMapTable *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->delegates objectForKey:v10];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000BE6C;
        block[3] = &unk_1000ED8D8;
        block[4] = v10;
        v14 = a3;
        dispatch_async(v11, block);
      }

      v7 = [(NSMapTable *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->lock);
  [(NSMapTable *)self->delegates setObject:v6 forKey:v7];

  os_unfair_lock_unlock(&self->lock);
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->lock);
  [(NSMapTable *)self->delegates removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->lock);
}

@end