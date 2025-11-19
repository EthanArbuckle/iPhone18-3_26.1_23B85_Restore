@interface UACornerActionManagerHandler
- (BOOL)resume;
- (BOOL)suspend;
- (BOOL)suspended;
- (BOOL)terminate;
- (UACornerActionManagerHandler)initWithManager:(id)a3 name:(id)a4;
- (id)statusString;
- (void)setSuspended:(BOOL)a3;
@end

@implementation UACornerActionManagerHandler

- (BOOL)suspended
{
  v2 = self;
  objc_sync_enter(v2);
  suspended = v2->_suspended;
  objc_sync_exit(v2);

  return suspended;
}

- (BOOL)resume
{
  v2 = self;
  objc_sync_enter(v2);
  suspended = v2->_suspended;
  if (suspended)
  {
    v4 = sub_100001A30(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [(UACornerActionManagerHandler *)v2 name];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "HANDLER: %{public}@ is being resumed(was suspended)", &v7, 0xCu);
    }

    v2->_suspended = 0;
  }

  objc_sync_exit(v2);

  return suspended;
}

- (UACornerActionManagerHandler)initWithManager:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = UACornerActionManagerHandler;
  v9 = [(UACornerActionManagerHandler *)&v13 init];
  if (v9)
  {
    v10 = +[NSUUID UUID];
    uuid = v9->_uuid;
    v9->_uuid = v10;

    objc_storeStrong(&v9->_manager, a3);
    objc_storeStrong(&v9->_name, a4);
    v9->_suspended = 1;
  }

  return v9;
}

- (void)setSuspended:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_suspended != v3)
  {
    v5 = sub_100001A30(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(UACornerActionManagerHandler *)v4 name];
      v7 = v6;
      v8 = "resumed";
      if (v3)
      {
        v8 = "suspended";
      }

      v9 = 138543618;
      v10 = v6;
      v11 = 2082;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "HANDLER: %{public}@ is being %{public}s", &v9, 0x16u);
    }

    if (v3)
    {
      [(UACornerActionManagerHandler *)v4 suspend];
    }

    else
    {
      [(UACornerActionManagerHandler *)v4 resume];
    }
  }

  objc_sync_exit(v4);
}

- (BOOL)suspend
{
  v2 = self;
  objc_sync_enter(v2);
  suspended = v2->_suspended;
  if (!suspended)
  {
    v4 = sub_100001A30(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [(UACornerActionManagerHandler *)v2 name];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "HANDLER: %{public}@ is being suspended(was not)", &v7, 0xCu);
    }

    v2->_suspended = 1;
  }

  objc_sync_exit(v2);

  return !suspended;
}

- (BOOL)terminate
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(UACornerActionManagerHandler *)self name];
    v5 = [(UACornerActionManagerHandler *)self terminated];
    v6 = &stru_1000C67D0;
    if (v5)
    {
      v6 = @"(was already terminated)";
    }

    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "HANDLER: %{public}@ is being terminated %{public}@", &v9, 0x16u);
  }

  v7 = [(UACornerActionManagerHandler *)self terminated];
  if ((v7 & 1) == 0)
  {
    if (![(UACornerActionManagerHandler *)self suspended])
    {
      [(UACornerActionManagerHandler *)self suspend];
    }

    self->_terminated = 1;
  }

  return v7 ^ 1;
}

- (id)statusString
{
  v3 = [(UACornerActionManagerHandler *)self name];
  if (v3)
  {
    [(UACornerActionManagerHandler *)self name];
  }

  else
  {
    [NSString stringWithCString:object_getClassName(self) encoding:4];
  }
  v4 = ;
  v5 = [NSString stringWithFormat:@"%@: %@\n", v4, self];

  return v5;
}

@end