@interface UACornerActionManagerHandler
- (BOOL)resume;
- (BOOL)suspend;
- (BOOL)suspended;
- (BOOL)terminate;
- (UACornerActionManagerHandler)initWithManager:(id)manager name:(id)name;
- (id)statusString;
- (void)setSuspended:(BOOL)suspended;
@end

@implementation UACornerActionManagerHandler

- (BOOL)suspended
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  suspended = selfCopy->_suspended;
  objc_sync_exit(selfCopy);

  return suspended;
}

- (BOOL)resume
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  suspended = selfCopy->_suspended;
  if (suspended)
  {
    v4 = sub_100001A30(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      name = [(UACornerActionManagerHandler *)selfCopy name];
      v7 = 138543362;
      v8 = name;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "HANDLER: %{public}@ is being resumed(was suspended)", &v7, 0xCu);
    }

    selfCopy->_suspended = 0;
  }

  objc_sync_exit(selfCopy);

  return suspended;
}

- (UACornerActionManagerHandler)initWithManager:(id)manager name:(id)name
{
  managerCopy = manager;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = UACornerActionManagerHandler;
  v9 = [(UACornerActionManagerHandler *)&v13 init];
  if (v9)
  {
    v10 = +[NSUUID UUID];
    uuid = v9->_uuid;
    v9->_uuid = v10;

    objc_storeStrong(&v9->_manager, manager);
    objc_storeStrong(&v9->_name, name);
    v9->_suspended = 1;
  }

  return v9;
}

- (void)setSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_suspended != suspendedCopy)
  {
    v5 = sub_100001A30(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      name = [(UACornerActionManagerHandler *)selfCopy name];
      v7 = name;
      v8 = "resumed";
      if (suspendedCopy)
      {
        v8 = "suspended";
      }

      v9 = 138543618;
      v10 = name;
      v11 = 2082;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "HANDLER: %{public}@ is being %{public}s", &v9, 0x16u);
    }

    if (suspendedCopy)
    {
      [(UACornerActionManagerHandler *)selfCopy suspend];
    }

    else
    {
      [(UACornerActionManagerHandler *)selfCopy resume];
    }
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)suspend
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  suspended = selfCopy->_suspended;
  if (!suspended)
  {
    v4 = sub_100001A30(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      name = [(UACornerActionManagerHandler *)selfCopy name];
      v7 = 138543362;
      v8 = name;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "HANDLER: %{public}@ is being suspended(was not)", &v7, 0xCu);
    }

    selfCopy->_suspended = 1;
  }

  objc_sync_exit(selfCopy);

  return !suspended;
}

- (BOOL)terminate
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    name = [(UACornerActionManagerHandler *)self name];
    terminated = [(UACornerActionManagerHandler *)self terminated];
    v6 = &stru_1000C67D0;
    if (terminated)
    {
      v6 = @"(was already terminated)";
    }

    v9 = 138543618;
    v10 = name;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "HANDLER: %{public}@ is being terminated %{public}@", &v9, 0x16u);
  }

  terminated2 = [(UACornerActionManagerHandler *)self terminated];
  if ((terminated2 & 1) == 0)
  {
    if (![(UACornerActionManagerHandler *)self suspended])
    {
      [(UACornerActionManagerHandler *)self suspend];
    }

    self->_terminated = 1;
  }

  return terminated2 ^ 1;
}

- (id)statusString
{
  name = [(UACornerActionManagerHandler *)self name];
  if (name)
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