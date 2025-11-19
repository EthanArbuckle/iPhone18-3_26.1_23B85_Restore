@interface TSDMSGService
+ (id)sharedMSGService;
- (BOOL)checkExtSyncSessionRegistered:(unsigned int)a3;
- (BOOL)deregisterExtSyncSession:(unsigned int)a3 pid:(int)a4;
- (TSDMSGService)init;
- (int)getPidForSyncSession:(id)a3;
- (int)registerExtSyncSession:(id *)a3 pid:(int)a4 callback:(id)a5;
@end

@implementation TSDMSGService

+ (id)sharedMSGService
{
  if (qword_100058838 != -1)
  {
    sub_10002A144();
  }

  v3 = qword_100058830;

  return v3;
}

- (TSDMSGService)init
{
  v10.receiver = self;
  v10.super_class = TSDMSGService;
  v2 = [(TSDMSGService *)&v10 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    activeExtSyncSessionsByPid = v2->_activeExtSyncSessionsByPid;
    v2->_activeExtSyncSessionsByPid = v3;

    v5 = +[NSMutableDictionary dictionary];
    extSyncCallbackHandlers = v2->_extSyncCallbackHandlers;
    v2->_extSyncCallbackHandlers = v5;

    v2->_extSyncSessionsLock._os_unfair_lock_opaque = 0;
    v7 = +[NSMutableDictionary dictionary];
    activeClockSessionsBySyncId = v2->_activeClockSessionsBySyncId;
    v2->_activeClockSessionsBySyncId = v7;

    v2->_clockSessionsLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (int)getPidForSyncSession:(id)a3
{
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_activeExtSyncSessionsByPid;
  v17 = v5;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_activeExtSyncSessionsByPid objectForKeyedSubscript:v9];
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = *v19;
          while (2)
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v11);
              }

              if (*(*(&v18 + 1) + 8 * j) == v4)
              {
                v15 = [v9 intValue];

                v5 = v17;
                goto LABEL_19;
              }
            }

            v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v5 = v17;
      }

      v6 = [(NSMutableDictionary *)v17 countByEnumeratingWithState:&v22 objects:v27 count:16];
      v15 = -1;
    }

    while (v6);
  }

  else
  {
    v15 = -1;
  }

LABEL_19:

  return v15;
}

- (BOOL)checkExtSyncSessionRegistered:(unsigned int)a3
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_activeExtSyncSessionsByPid;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [(NSMutableDictionary *)self->_activeExtSyncSessionsByPid objectForKeyedSubscript:*(*(&v23 + 1) + 8 * i)];
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = *v20;
          while (2)
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v19 + 1) + 8 * j);
              if (v14)
              {
                [v14 config];
                v15 = v18;
              }

              else
              {
                v15 = 0;
              }

              if (v15 == a3)
              {

                v16 = 1;
                goto LABEL_22;
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v16 = 0;
    }

    while (v6);
  }

  else
  {
    v16 = 0;
  }

LABEL_22:

  return v16;
}

- (int)registerExtSyncSession:(id *)a3 pid:(int)a4 callback:(id)a5
{
  v8 = a5;
  v9 = [NSNumber numberWithInteger:a4];
  v10 = objc_retainBlock(v8);
  extSyncCallbackHandlers = self->_extSyncCallbackHandlers;
  v12 = [NSNumber numberWithUnsignedInt:a3->var1];
  [(NSMutableDictionary *)extSyncCallbackHandlers setObject:v10 forKeyedSubscript:v12];

  v13 = [TSDMSGExtSyncSession withConfig:a3 andCallback:&stru_10004C848];
  v14 = [v13 start];
  if (v14)
  {
    v15 = self->_extSyncCallbackHandlers;
    v16 = [NSNumber numberWithUnsignedInt:a3->var1];
    [(NSMutableDictionary *)v15 removeObjectForKey:v16];
  }

  else
  {
    v16 = [(NSMutableDictionary *)self->_activeExtSyncSessionsByPid objectForKeyedSubscript:v9];
    if (!v16)
    {
      v16 = +[NSMutableArray array];
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    [v16 addObject:v13];
  }

  return v14;
}

- (BOOL)deregisterExtSyncSession:(unsigned int)a3 pid:(int)a4
{
  v6 = [NSNumber numberWithInteger:a4];
  [(NSMutableDictionary *)self->_activeExtSyncSessionsByPid objectForKeyedSubscript:v6];
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v7 = v21 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v21 + 1) + 8 * v10);
      if (v11)
      {
        [*(*(&v21 + 1) + 8 * v10) config];
        v12 = v20;
      }

      else
      {
        v12 = 0;
      }

      if (v12 == a3)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v16 = v11;

    if (v11)
    {
      [v16 stop];
      [v7 removeObject:v16];
      extSyncCallbackHandlers = self->_extSyncCallbackHandlers;
      [v16 config];
      v18 = [NSNumber numberWithUnsignedInt:v20];
      [(NSMutableDictionary *)extSyncCallbackHandlers removeObjectForKey:v18];

      v14 = v16;
      AnalyticsSendEventLazy();
      v13 = 1;
      v15 = v14;
      goto LABEL_15;
    }

    v13 = 0;
    v14 = 0;
  }

  else
  {
LABEL_12:
    v13 = 0;
    v14 = 0;
    v15 = v7;
LABEL_15:
  }

  if (![v7 count])
  {
    [(NSMutableDictionary *)self->_activeExtSyncSessionsByPid removeObjectForKey:v6];

    v7 = 0;
  }

  return v13;
}

@end