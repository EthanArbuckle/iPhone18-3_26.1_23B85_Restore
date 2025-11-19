@interface SABlockingInfo
- (BOOL)hasMatchingBlocker:(id)a3;
- (SABlockingInfo)init;
- (id)_init;
- (int)blockingPid;
- (unint64_t)blockingTid;
@end

@implementation SABlockingInfo

- (SABlockingInfo)init
{
  v2 = *__error();
  v3 = _sa_logt();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_error_impl(&dword_1E0E2F000, v3, OS_LOG_TYPE_ERROR, "Must use a subclass of SABlockingInfo, not SABlockingInfo directly", v11, 2u);
  }

  *__error() = v2;
  _SASetCrashLogMessage(1865, "Must use a subclass of SABlockingInfo, not SABlockingInfo directly", v4, v5, v6, v7, v8, v9, v11[0]);
  result = _os_crash();
  __break(1u);
  return result;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SABlockingInfo;
  return [(SABlockingInfo *)&v3 init];
}

- (unint64_t)blockingTid
{
  v3 = *__error();
  v4 = _sa_logt();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    ClassName = object_getClassName(self);
    _os_log_error_impl(&dword_1E0E2F000, v4, OS_LOG_TYPE_ERROR, "SABlockingInfo subclass %s doesn't implement blockingTid", buf, 0xCu);
  }

  *__error() = v3;
  v5 = object_getClassName(self);
  _SASetCrashLogMessage(1873, "SABlockingInfo subclass %s doesn't implement blockingTid", v6, v7, v8, v9, v10, v11, v5);
  result = _os_crash();
  __break(1u);
  return result;
}

- (int)blockingPid
{
  v3 = *__error();
  v4 = _sa_logt();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    ClassName = object_getClassName(self);
    _os_log_error_impl(&dword_1E0E2F000, v4, OS_LOG_TYPE_ERROR, "SABlockingInfo subclass %s doesn't implement blockingPid", buf, 0xCu);
  }

  *__error() = v3;
  v5 = object_getClassName(self);
  _SASetCrashLogMessage(1877, "SABlockingInfo subclass %s doesn't implement blockingPid", v6, v7, v8, v9, v10, v11, v5);
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)hasMatchingBlocker:(id)a3
{
  v6 = [(SABlockingInfo *)self blockingTid];
  v7 = [a3 blockingTid];
  if (v6 | v7)
  {
    if (v6 != v7)
    {
      return 0;
    }

LABEL_6:
    v11 = [(SABlockingInfo *)self portName];
    if (!v11)
    {
      v3 = [a3 portName];
      if (!v3)
      {
        v8 = 1;
LABEL_16:

        goto LABEL_17;
      }
    }

    v12 = [(SABlockingInfo *)self portName];
    if (v12)
    {
      v13 = v12;
      v14 = [a3 portName];
      if (v14)
      {
        v15 = v14;
        v16 = [(SABlockingInfo *)self portName];
        v17 = [a3 portName];
        v8 = [v16 isEqualToString:v17];

        if (!v11)
        {
          goto LABEL_16;
        }

LABEL_17:

        return v8;
      }
    }

    v8 = 0;
    if (!v11)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v9 = [(SABlockingInfo *)self blockingPid];
  v10 = [a3 blockingPid];
  v8 = 0;
  if ((v9 & v10) != 0xFFFFFFFF && v9 == v10)
  {
    goto LABEL_6;
  }

  return v8;
}

@end