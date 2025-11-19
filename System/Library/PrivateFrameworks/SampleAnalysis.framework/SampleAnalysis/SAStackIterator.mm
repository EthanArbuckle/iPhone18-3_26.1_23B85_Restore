@interface SAStackIterator
- (BOOL)hasKernelStack;
- (BOOL)hasSwiftAsyncStack;
- (BOOL)hasUserStack;
- (void)iterateFramesWithBacktraceStyle:(unint64_t)a3 block:(id)a4;
@end

@implementation SAStackIterator

- (void)iterateFramesWithBacktraceStyle:(unint64_t)a3 block:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x1C) != 0)
  {
    v14 = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v28 = a3;
      _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "SAStackIterator doesn't support backtrace style 0x%llx", buf, 0xCu);
    }

    *__error() = v14;
    _SASetCrashLogMessage(1088, "SAStackIterator doesn't support backtrace style 0x%llx", v16, v17, v18, v19, v20, v21, a3);
    _os_crash();
    __break(1u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_stack;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if (![v11 isKernel])
        {
          if ((a3 & 2) != 0)
          {
            continue;
          }

LABEL_13:
          (*(a4 + 2))(a4, v11);
          continue;
        }

        if (a3)
        {
          goto LABEL_16;
        }

        v12 = [v11 isExclave];
        if ((a3 & 0x20) == 0 || (v12 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

LABEL_16:

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasUserStack
{
  if ([(NSArray *)self->_stack count])
  {
    v3 = [(NSArray *)self->_stack firstObject];
    v4 = [v3 isKernel] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)hasSwiftAsyncStack
{
  v2 = [(NSArray *)self->_stack firstObject];
  v3 = [v2 isSwiftAsync];

  return v3;
}

- (BOOL)hasKernelStack
{
  v3 = [(NSArray *)self->_stack count];
  if (v3)
  {
    v4 = [(NSArray *)self->_stack lastObject];
    v5 = [v4 isKernel];

    LOBYTE(v3) = v5;
  }

  return v3;
}

@end