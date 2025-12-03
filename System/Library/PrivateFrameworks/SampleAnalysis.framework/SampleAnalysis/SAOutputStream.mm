@interface SAOutputStream
- (int)appendData:(id)data;
- (int)appendString:(id)string;
- (int)printWithFormat:(id)format;
@end

@implementation SAOutputStream

- (int)printWithFormat:(id)format
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:format arguments:&v6];
  LODWORD(self) = [(SAOutputStream *)self appendString:v4];

  return self;
}

- (int)appendString:(id)string
{
  v5 = [string lengthOfBytesUsingEncoding:4];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = malloc_type_malloc(v5 + 1, 0xB626F0C3uLL);
  if ([string getCString:v7 maxLength:v6 + 1 encoding:4])
  {
    v8 = [(SAOutputStream *)self write:v7 maxLength:v6];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [string dataUsingEncoding:4 allowLossyConversion:1];
    if (v10)
    {
      v8 = [(SAOutputStream *)self appendData:v10];
    }

    else
    {
      v8 = 0;
    }

    objc_autoreleasePoolPop(v9);
  }

  free(v7);
  return v8;
}

- (int)appendData:(id)data
{
  v3 = *__error();
  v4 = _sa_logt();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1E0E2F000, v4, OS_LOG_TYPE_ERROR, "Called appendData: on the superclass. Subclasses implement this.", v6, 2u);
  }

  *__error() = v3;
  v5 = [MEMORY[0x1E695DF30] exceptionWithName:@"SAOutputStream implementation error" reason:@"subclass must implement appendData" userInfo:0];
  objc_exception_throw(v5);
}

@end