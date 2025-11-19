@interface IMAPServiceActivityController
+ (unsigned)remainingBodyRetries;
- (BOOL)_is_my_activity_sync:(id)a3;
- (BOOL)bodyFetchPendingForRecord:(void *)a3;
- (BOOL)is_my_activity:(id)a3;
- (BOOL)taskOfTypeExists:(int64_t)a3;
- (id)bodyFetchActivityForRecord:(void *)a3;
- (id)initForService:(id)a3;
- (int64_t)currentTaskType;
- (int64_t)voicemailTaskType_sync:(id)a3;
- (void)__removeScheduledActivity:(id)a3;
- (void)_activityEnded:(id)a3;
- (void)_activityStarted:(id)a3;
- (void)_postNotificationName:(id)a3 userInfo:(id)a4;
- (void)_primaryTargetChanged:(id)a3;
- (void)_targetsAdded:(id)a3;
- (void)addScheduledActivity:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation IMAPServiceActivityController

- (int64_t)voicemailTaskType_sync:(id)a3
{
  v4 = a3;
  activityToTaskType = self->_activityToTaskType;
  v6 = [NSValue valueWithPointer:v4];
  v7 = [(NSMutableDictionary *)activityToTaskType objectForKey:v6];

  if (v7)
  {
    v8 = [MFActivityMonitor voicemailTaskTypeForTaskName:v7];
    v9 = sub_100030068();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = self->mambaID;
      v15 = 136316162;
      v16 = mambaID;
      v17 = 2080;
      v18 = " ";
      v19 = 2112;
      v20 = v4;
      v21 = 2080;
      v22 = sub_10002FDE8(v8);
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] %@ voicemailTaskType: task %s, found taskName '%@' in activity map", &v15, 0x34u);
    }
  }

  else
  {
    v11 = [v4 taskName];
    v8 = [MFActivityMonitor voicemailTaskTypeForTaskName:v11];

    v9 = sub_100030068();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->mambaID;
      v13 = [v4 taskName];
      v15 = 136316162;
      v16 = v12;
      v17 = 2080;
      v18 = " ";
      v19 = 2112;
      v20 = v4;
      v21 = 2080;
      v22 = sub_10002FDE8(v8);
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] %@ voicemailTaskType: task %s, using taskName '%@' from monitor property", &v15, 0x34u);
    }
  }

  return v8;
}

- (int64_t)currentTaskType
{
  [(IMAPServiceActivityController *)self mf_lock];
  v3 = +[MFActivityMonitor currentTracebleMonitor];
  v4 = [(IMAPServiceActivityController *)self voicemailTaskType_sync:v3];

  [(IMAPServiceActivityController *)self mf_unlock];
  v5 = sub_100030068();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    v8 = 136315650;
    v9 = mambaID;
    v10 = 2080;
    v11 = " ";
    v12 = 2080;
    v13 = sub_10002FDE8(v4);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] currentTaskType: %s", &v8, 0x20u);
  }

  return v4;
}

+ (unsigned)remainingBodyRetries
{
  v2 = +[NSThread currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKey:@"_VVIMAPBodyRetries"];
  v5 = [v4 unsignedIntValue];
  v6 = sub_100030068();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [IVM] remainingBodyRetries: %u", v8, 8u);
  }

  return v5;
}

- (id)initForService:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = IMAPServiceActivityController;
  v5 = [(IMAPServiceActivityController *)&v12 init];
  if (v5)
  {
    v5->mambaID = [v4 getServiceObjLogPrefix];
    v6 = sub_100030068();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = v5->mambaID;
      *buf = 136316162;
      v14 = mambaID;
      v15 = 2080;
      v16 = " ";
      v17 = 2048;
      v18 = v5;
      v19 = 2112;
      v20 = v4;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] %p IMAPServiceActivityController::initForService: %@: -> %@", buf, 0x34u);
    }

    objc_storeWeak(&v5->_service, v4);
    v8 = objc_alloc_init(NSMutableDictionary);
    activityToTaskType = v5->_activityToTaskType;
    v5->_activityToTaskType = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v5 selector:"_activityStarted:" name:MonitoredActivityStarted object:0];
    [v10 addObserver:v5 selector:"_activityEnded:" name:MonitoredActivityEnded object:0];
    [v10 addObserver:v5 selector:"_primaryTargetChanged:" name:MonitoredActivityPrimaryTargetChanged object:0];
    [v10 addObserver:v5 selector:"_targetsAdded:" name:MonitoredActivityDidAddActivityTarget object:0];
  }

  return v5;
}

- (void)addScheduledActivity:(id)a3
{
  v4 = a3;
  [(IMAPServiceActivityController *)self mf_lock];
  scheduledActivities = self->_scheduledActivities;
  if (!scheduledActivities)
  {
    v6 = objc_opt_new();
    v7 = self->_scheduledActivities;
    self->_scheduledActivities = v6;

    scheduledActivities = self->_scheduledActivities;
  }

  v8 = [v4 taskName];
  v9 = [NSValue valueWithPointer:v4];
  [(NSMutableDictionary *)scheduledActivities setObject:v8 forKey:v9];

  v10 = sub_100030068();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    v12 = 136315650;
    v13 = mambaID;
    v14 = 2080;
    v15 = " ";
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] %@ addScheduledActivity: added to activities", &v12, 0x20u);
  }

  [(IMAPServiceActivityController *)self mf_unlock];
}

- (BOOL)_is_my_activity_sync:(id)a3
{
  v4 = a3;
  scheduledActivities = self->_scheduledActivities;
  if (scheduledActivities)
  {
    v6 = [NSValue valueWithPointer:v4];
    v7 = [(NSMutableDictionary *)scheduledActivities objectForKey:v6];
    LOBYTE(scheduledActivities) = v7 != 0;
  }

  return scheduledActivities;
}

- (BOOL)is_my_activity:(id)a3
{
  v4 = a3;
  [(IMAPServiceActivityController *)self mf_lock];
  v5 = [(IMAPServiceActivityController *)self _is_my_activity_sync:v4];
  [(IMAPServiceActivityController *)self mf_unlock];

  return v5;
}

- (void)__removeScheduledActivity:(id)a3
{
  v4 = a3;
  scheduledActivities = self->_scheduledActivities;
  if (scheduledActivities)
  {
    v6 = [NSValue valueWithPointer:v4];
    [(NSMutableDictionary *)scheduledActivities removeObjectForKey:v6];

    v7 = sub_100030068();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = self->mambaID;
      v9 = 136315650;
      v10 = mambaID;
      v11 = 2080;
      v12 = " ";
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] %@ removeScheduledActivity: removed from activities", &v9, 0x20u);
    }
  }
}

- (void)invalidate
{
  v3 = sub_100030068();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    WeakRetained = objc_loadWeakRetained(&self->_service);
    v6 = 136315650;
    v7 = mambaID;
    v8 = 2080;
    v9 = " ";
    v10 = 2112;
    v11 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] invalidate: %@", &v6, 0x20u);
  }

  objc_storeWeak(&self->_service, 0);
}

- (void)dealloc
{
  [(IMAPServiceActivityController *)self mf_lock];
  v3 = sub_100030068();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    WeakRetained = objc_loadWeakRetained(&self->_service);
    *buf = 136315650;
    v10 = mambaID;
    v11 = 2080;
    v12 = " ";
    v13 = 2112;
    v14 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] dealloc: %@", buf, 0x20u);
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  activeActivities = self->_activeActivities;
  if (activeActivities)
  {
    CFRelease(activeActivities);
  }

  [(IMAPServiceActivityController *)self mf_unlock];
  v8.receiver = self;
  v8.super_class = IMAPServiceActivityController;
  [(IMAPServiceActivityController *)&v8 dealloc];
}

- (BOOL)taskOfTypeExists:(int64_t)a3
{
  [(IMAPServiceActivityController *)self mf_lock];
  activeActivities = self->_activeActivities;
  if (activeActivities)
  {
    v6 = CFDictionaryGetValue(activeActivities, [NSNumber numberWithInteger:a3]);
    v7 = [v6 count] != 0;
  }

  else
  {
    v7 = 0;
  }

  [(IMAPServiceActivityController *)self mf_unlock];
  v8 = sub_100030068();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    v10 = asNSStringBOOL();
    v12 = 136315906;
    v13 = mambaID;
    v14 = 2080;
    v15 = " ";
    v16 = 2080;
    v17 = sub_10002FDE8(a3);
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] taskOfTypeExists: %s -> %@", &v12, 0x2Au);
  }

  return v7;
}

- (id)bodyFetchActivityForRecord:(void *)a3
{
  [(IMAPServiceActivityController *)self mf_lock];
  if (self->_activeActivities && [(NSMutableSet *)self->_inProcessRecords containsObject:a3])
  {
    v5 = CFDictionaryGetValue(self->_activeActivities, &off_1000F5740);
    v6 = v5;
    if (v5)
    {
      v7 = [v5 allObjects];
      v8 = [v7 count];
      if (v8)
      {
        v9 = 1;
        while (1)
        {
          v10 = [v7 objectAtIndex:v9 - 1];
          v11 = [v10 activityTargets];
          v12 = v11;
          if (v11)
          {
            if ([v11 containsObject:a3])
            {
              goto LABEL_8;
            }
          }

          else
          {
            v14 = [v10 activityTarget];

            if (v14 == a3)
            {
LABEL_8:
              v13 = v10;
              goto LABEL_11;
            }
          }

          v13 = 0;
LABEL_11:

          if (v9 < v8)
          {
            ++v9;
            if (!v13)
            {
              continue;
            }
          }

          goto LABEL_17;
        }
      }

      v13 = 0;
LABEL_17:
    }

    else
    {
      v13 = 0;
    }

    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  [(IMAPServiceActivityController *)self mf_unlock];
  v16 = sub_100030068();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    v19 = 136315650;
    v20 = mambaID;
    v21 = 2080;
    v22 = " ";
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] bodyFetchActivityForRecord: %@", &v19, 0x20u);
  }

  return v15;
}

- (BOOL)bodyFetchPendingForRecord:(void *)a3
{
  v5 = sub_100030068();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    v7 = sub_100087658(a3);
    v9 = 136315650;
    v10 = mambaID;
    v11 = 2080;
    v12 = " ";
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] bodyFetchPendingForRecord: %@", &v9, 0x20u);
  }

  return [(NSMutableSet *)self->_inProcessRecords containsObject:a3];
}

- (void)_postNotificationName:(id)a3 userInfo:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003122C;
  block[3] = &unk_1000EE120;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_activityStarted:(id)a3
{
  v4 = a3;
  [(IMAPServiceActivityController *)self mf_lock];
  v5 = [v4 object];
  if ([(IMAPServiceActivityController *)self _is_my_activity_sync:v5])
  {
    v6 = [(IMAPServiceActivityController *)self voicemailTaskType_sync:v5];
    v7 = sub_100030068();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = self->mambaID;
      v9 = sub_10002FDE8(v6);
      WeakRetained = objc_loadWeakRetained(&self->_service);
      *buf = 136316418;
      v28 = mambaID;
      v29 = 2080;
      v30 = " ";
      v31 = 2112;
      v32 = v5;
      v33 = 2080;
      v34 = v9;
      v35 = 2112;
      v36 = v4;
      v37 = 2112;
      v38 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] %@ _activityStarted: task %s info %@ service %@", buf, 0x3Eu);
    }

    if (v6)
    {
      activeActivities = self->_activeActivities;
      if (!activeActivities)
      {
        activeActivities = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        self->_activeActivities = activeActivities;
      }

      Value = CFDictionaryGetValue(activeActivities, [NSNumber numberWithInteger:v6]);
      if (!Value)
      {
        Value = objc_opt_new();
        CFDictionarySetValue(self->_activeActivities, [NSNumber numberWithInteger:v6], Value);
        CFRelease(Value);
      }

      CFSetAddValue(Value, v5);
      activityToTaskType = self->_activityToTaskType;
      v14 = [v5 taskName];
      v15 = [NSValue valueWithPointer:v5];
      [(NSMutableDictionary *)activityToTaskType setObject:v14 forKey:v15];

      v16 = sub_100030068();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = self->mambaID;
        v18 = sub_10002FDE8(v6);
        *buf = 136315906;
        v28 = v17;
        v29 = 2080;
        v30 = " ";
        v31 = 2112;
        v32 = v5;
        v33 = 2080;
        v34 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] %@ added to activity map for task %s", buf, 0x2Au);
      }

      [(IMAPServiceActivityController *)self mf_unlock];
      if (v6 == 2)
      {
        v19 = [v4 name];
        v20 = [v19 isEqualToString:MonitoredActivityStarted];

        if (v20)
        {
          v21 = sub_100030068();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = self->mambaID;
            *buf = 136315650;
            v28 = v22;
            v29 = 2080;
            v30 = " ";
            v31 = 2112;
            v32 = v5;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] %@ _activityStarted: bail", buf, 0x20u);
          }

          goto LABEL_20;
        }

        v24 = [v4 userInfo];
        v23 = [v24 objectForKey:MonitoredActivityNewPrimaryTarget];
      }

      else
      {
        v23 = 0;
      }

      v25 = [NSDictionary alloc];
      v26 = [NSNumber numberWithInteger:v6];
      v21 = [v25 initWithObjectsAndKeys:{v26, @"VVTaskType", v23, @"VVRecord", 0}];

      [(IMAPServiceActivityController *)self _postNotificationName:@"VVServiceTaskStartedNotification" userInfo:v21];
LABEL_20:

      goto LABEL_21;
    }

    [(IMAPServiceActivityController *)self mf_unlock];
  }

  else
  {
    [(IMAPServiceActivityController *)self mf_unlock];
  }

LABEL_21:
}

- (void)_activityEnded:(id)a3
{
  v4 = a3;
  [(IMAPServiceActivityController *)self mf_lock];
  v5 = [v4 object];
  if (![(IMAPServiceActivityController *)self _is_my_activity_sync:v5])
  {
    [(IMAPServiceActivityController *)self mf_unlock];
    goto LABEL_44;
  }

  v6 = [(IMAPServiceActivityController *)self voicemailTaskType_sync:v5];
  v7 = sub_100030068();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    v9 = sub_10002FDE8(v6);
    WeakRetained = objc_loadWeakRetained(&self->_service);
    *buf = 136316418;
    v49 = mambaID;
    v50 = 2080;
    v51 = " ";
    v52 = 2112;
    v53 = v5;
    v54 = 2080;
    v55 = v9;
    v56 = 2112;
    v57 = v4;
    v58 = 2112;
    v59 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] %@ _activityEnded: task %s info %@ service %@", buf, 0x3Eu);
  }

  [(IMAPServiceActivityController *)self mf_unlock];
  v11 = objc_loadWeakRetained(&self->_service);
  [v11 imapTransactionEnded];

  [(IMAPServiceActivityController *)self mf_lock];
  if (v6)
  {
    activeActivities = self->_activeActivities;
    if (!activeActivities || (v13 = CFDictionaryGetValue(activeActivities, [NSNumber numberWithInteger:v6])) == 0)
    {
      v14 = sub_100030068();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->mambaID;
        *buf = 136315650;
        v49 = v18;
        v50 = 2080;
        v51 = " ";
        v52 = 2112;
        v53 = v5;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] %@ _activityEnded: not posting", buf, 0x20u);
      }

      goto LABEL_40;
    }

    v14 = v13;
    [v13 removeObject:v5];
    if (v6 != 2)
    {
      v17 = 0;
      goto LABEL_18;
    }

    v15 = [v4 name];
    v16 = [v15 isEqualToString:MonitoredActivityEnded];

    if (v16)
    {
      v17 = [v5 primaryTarget];
      if (v17)
      {
LABEL_17:
        [(NSMutableSet *)self->_inProcessRecords removeObject:v17];
LABEL_18:
        [(IMAPServiceActivityController *)self mf_unlock];
        v46 = v17;
        if (v6 == 2)
        {
          v20 = [v5 taskName];
          v21 = [v20 isEqualToString:@"Caching Bodies"];
        }

        else
        {
          v21 = 0;
        }

        v22 = [v5 error];
        v23 = sub_10002FCE0(v22);
        v45 = v23;
        if (v23)
        {
          v24 = [NSNumber alloc];
          if (v21)
          {
            v25 = 1;
          }

          else
          {
            v25 = [v23 shouldPresentErrorForTaskType:v6] ^ 1;
          }

          v47 = [v24 initWithBool:v25];
        }

        else
        {
          v47 = 0;
        }

        v26 = [NSMutableDictionary alloc];
        v27 = [NSNumber numberWithInteger:v6];
        v28 = [v26 initWithObjectsAndKeys:{v27, @"VVTaskType", v23, @"VVError", v47, @"VVSuppressError", 0}];

        v29 = [v5 shouldCancel];
        v30 = &off_1000EEA48;
        if (!v29)
        {
          v30 = &off_1000EEA40;
        }

        v31 = *v30;
        v32 = v46;
        if (!v22)
        {
          goto LABEL_37;
        }

        v33 = [v22 domain];
        if ([v33 isEqualToString:MFMessageErrorDomain])
        {
          v34 = [v22 code] == 1032;

          if (!v34)
          {
LABEL_34:
            v35 = sub_100030068();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v44 = self->mambaID;
              v40 = [v22 domain];
              v43 = [v22 code];
              v41 = [v22 localizedDescription];
              *buf = 136316418;
              v49 = v44;
              v50 = 2080;
              v51 = " ";
              v52 = 2048;
              v53 = v6;
              v54 = 2112;
              v55 = v40;
              v56 = 2048;
              v57 = v43;
              v58 = 2112;
              v42 = v41;
              v59 = v41;
              _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "#E %s%s[IVM] Error (%ld) - %@/%ld - %@", buf, 0x3Eu);
            }

            v32 = v46;
LABEL_37:
            if (v32)
            {
              [v28 setObject:v32 forKey:@"VVRecord"];
            }

            [(IMAPServiceActivityController *)self _postNotificationName:v31 userInfo:v28];
            [(IMAPServiceActivityController *)self mf_lock];

LABEL_40:
            goto LABEL_41;
          }

          v33 = objc_loadWeakRetained(&self->_service);
          [v33 _authenticationFailed];
        }

        goto LABEL_34;
      }

      v17 = [v5 activityTarget];
    }

    else
    {
      v19 = [v4 userInfo];
      v17 = [v19 objectForKey:MonitoredActivityOldPrimaryTarget];
    }

    if (!v17)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_41:
  activityToTaskType = self->_activityToTaskType;
  v37 = [NSValue valueWithPointer:v5];
  [(NSMutableDictionary *)activityToTaskType removeObjectForKey:v37];

  v38 = sub_100030068();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = self->mambaID;
    *buf = 136315650;
    v49 = v39;
    v50 = 2080;
    v51 = " ";
    v52 = 2112;
    v53 = v5;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] %@ removed from activity map", buf, 0x20u);
  }

  [(IMAPServiceActivityController *)self __removeScheduledActivity:v5];
  [(IMAPServiceActivityController *)self mf_unlock];
LABEL_44:
}

- (void)_primaryTargetChanged:(id)a3
{
  v4 = a3;
  v5 = sub_100030068();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    v12 = 136315650;
    v13 = mambaID;
    v14 = 2080;
    v15 = " ";
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] _primaryTargetChanged: %@", &v12, 0x20u);
  }

  v7 = [v4 object];
  if ([(IMAPServiceActivityController *)self is_my_activity:v7])
  {
    v8 = [v4 userInfo];
    v9 = [v8 objectForKey:MonitoredActivityOldPrimaryTarget];

    if (v9)
    {
      [(IMAPServiceActivityController *)self _activityEnded:v4];
    }

    v10 = [v8 objectForKey:MonitoredActivityNewPrimaryTarget];
    v11 = v10 == 0;

    if (!v11)
    {
      if (v9)
      {
        [(IMAPServiceActivityController *)self addScheduledActivity:v7];
      }

      [(IMAPServiceActivityController *)self _activityStarted:v4];
    }
  }
}

- (void)_targetsAdded:(id)a3
{
  v4 = a3;
  v5 = sub_100030068();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    v14 = 136315650;
    v15 = mambaID;
    v16 = 2080;
    v17 = " ";
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] _targetsAdded: %@", &v14, 0x20u);
  }

  v7 = [v4 object];
  [(IMAPServiceActivityController *)self mf_lock];
  if ([(IMAPServiceActivityController *)self _is_my_activity_sync:v7]&& [(IMAPServiceActivityController *)self voicemailTaskType_sync:v7]== 2)
  {
    inProcessRecords = self->_inProcessRecords;
    if (!inProcessRecords)
    {
      v9 = objc_alloc_init(NSMutableSet);
      v10 = self->_inProcessRecords;
      self->_inProcessRecords = v9;

      inProcessRecords = self->_inProcessRecords;
    }

    v11 = [v7 activityTargets];
    [(NSMutableSet *)inProcessRecords addObjectsFromArray:v11];

    v12 = sub_100030068();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->mambaID;
      v14 = 136315650;
      v15 = v13;
      v16 = 2080;
      v17 = " ";
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] %@ _targetsAdded: adding inProcessRecords from activity targets", &v14, 0x20u);
    }
  }

  [(IMAPServiceActivityController *)self mf_unlock];
}

@end