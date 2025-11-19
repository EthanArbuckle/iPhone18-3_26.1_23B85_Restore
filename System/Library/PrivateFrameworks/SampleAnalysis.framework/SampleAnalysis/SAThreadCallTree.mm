@interface SAThreadCallTree
- (id)initWithThread:(void *)a3 dispatchQueue:(void *)a4 swiftTask:(uint64_t)a5 rootObjects:;
@end

@implementation SAThreadCallTree

- (id)initWithThread:(void *)a3 dispatchQueue:(void *)a4 swiftTask:(uint64_t)a5 rootObjects:
{
  if (!a1)
  {
    return 0;
  }

  if (!a2 && !a3 && !a4)
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

  v19.receiver = a1;
  v19.super_class = SAThreadCallTree;
  v8 = objc_msgSendSuper2(&v19, sel_initWithRootObjects_, a5);
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 2, a2);
    objc_storeStrong(v9 + 3, a3);
    objc_storeStrong(v9 + 4, a4);
  }

  return v9;
}

@end