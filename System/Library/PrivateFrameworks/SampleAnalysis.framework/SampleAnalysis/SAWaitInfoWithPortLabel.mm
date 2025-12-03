@interface SAWaitInfoWithPortLabel
- (SAWaitInfoWithPortLabel)initWithKCDataWaitInfo:(const stackshot_thread_waitinfo_v2 *)info;
- (void)setPortDomain:(unint64_t)domain;
- (void)setPortFlags:(unint64_t)flags;
@end

@implementation SAWaitInfoWithPortLabel

- (SAWaitInfoWithPortLabel)initWithKCDataWaitInfo:(const stackshot_thread_waitinfo_v2 *)info
{
  v3 = *__error();
  v4 = _sa_logt();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v12 = 0;
    _os_log_error_impl(&dword_1E0E2F000, v4, OS_LOG_TYPE_ERROR, "SAWaitInfoWithPortLabel init with port info", v12, 2u);
  }

  *__error() = v3;
  _SASetCrashLogMessage(3104, "SAWaitInfoWithPortLabel init with port info", v5, v6, v7, v8, v9, v10, v12[0]);
  result = _os_crash();
  __break(1u);
  return result;
}

- (void)setPortFlags:(unint64_t)flags
{
  v10 = *MEMORY[0x1E69E9840];
  if (flags >= 0x10000)
  {
    v6 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 134217984;
      flagsCopy = flags;
      _os_log_fault_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_FAULT, "port label flags 0x%llx is too large", &v8, 0xCu);
    }

    *__error() = v6;
  }

  self->_portFlags = flags;
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setPortDomain:(unint64_t)domain
{
  v10 = *MEMORY[0x1E69E9840];
  if (domain >= 0x100)
  {
    v6 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 134217984;
      domainCopy = domain;
      _os_log_fault_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_FAULT, "port label domain %llu is too large", &v8, 0xCu);
    }

    *__error() = v6;
  }

  self->_portDomain = domain;
  v5 = *MEMORY[0x1E69E9840];
}

@end