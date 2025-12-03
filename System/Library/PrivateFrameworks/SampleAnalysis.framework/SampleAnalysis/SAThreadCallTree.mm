@interface SAThreadCallTree
- (id)initWithThread:(void *)thread dispatchQueue:(void *)queue swiftTask:(uint64_t)task rootObjects:;
@end

@implementation SAThreadCallTree

- (id)initWithThread:(void *)thread dispatchQueue:(void *)queue swiftTask:(uint64_t)task rootObjects:
{
  if (!self)
  {
    return 0;
  }

  if (!a2 && !thread && !queue)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "Neither thread nor dispatchQueue nor swiftTask provided", buf, 2u);
    }

    *__error() = v11;
    _SASetCrashLogMessage(435, "Neither thread nor dispatchQueue nor swiftTask provided", v13, v14, v15, v16, v17, v18, v19.receiver);
    _os_crash();
    __break(1u);
    return 0;
  }

  v19.receiver = self;
  v19.super_class = SAThreadCallTree;
  v8 = objc_msgSendSuper2(&v19, sel_initWithRootObjects_, task);
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 2, a2);
    objc_storeStrong(v9 + 3, thread);
    objc_storeStrong(v9 + 4, queue);
  }

  return v9;
}

@end