@interface SAStackIterator
- (BOOL)hasKernelStack;
- (BOOL)hasSwiftAsyncStack;
- (BOOL)hasUserStack;
- (void)iterateFramesWithBacktraceStyle:(unint64_t)style block:(id)block;
@end

@implementation SAStackIterator

- (void)iterateFramesWithBacktraceStyle:(unint64_t)style block:(id)block
{
  v29 = *MEMORY[0x1E69E9840];
  if ((style & 0x1C) != 0)
  {
    v14 = *__error();
    v15 = _sa_logt();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      styleCopy = style;
      _os_log_error_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_ERROR, "SAStackIterator doesn't support backtrace style 0x%llx", buf, 0xCu);
    }

    *__error() = v14;
    _SASetCrashLogMessage(1088, "SAStackIterator doesn't support backtrace style 0x%llx", v16, v17, v18, v19, v20, v21, style);
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
          if ((style & 2) != 0)
          {
            continue;
          }

LABEL_13:
          (*(block + 2))(block, v11);
          continue;
        }

        if (style)
        {
          goto LABEL_16;
        }

        isExclave = [v11 isExclave];
        if ((style & 0x20) == 0 || (isExclave & 1) == 0)
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
    firstObject = [(NSArray *)self->_stack firstObject];
    v4 = [firstObject isKernel] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)hasSwiftAsyncStack
{
  firstObject = [(NSArray *)self->_stack firstObject];
  isSwiftAsync = [firstObject isSwiftAsync];

  return isSwiftAsync;
}

- (BOOL)hasKernelStack
{
  v3 = [(NSArray *)self->_stack count];
  if (v3)
  {
    lastObject = [(NSArray *)self->_stack lastObject];
    isKernel = [lastObject isKernel];

    LOBYTE(v3) = isKernel;
  }

  return v3;
}

@end