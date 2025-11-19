@interface SAFileOutputStream
- (int)appendData:(id)a3;
- (int64_t)write:(const char *)a3 maxLength:(unint64_t)a4;
- (void)initWithFileStream:(void *)result;
@end

@implementation SAFileOutputStream

- (void)initWithFileStream:(void *)result
{
  if (result)
  {
    v3.receiver = result;
    v3.super_class = SAFileOutputStream;
    result = objc_msgSendSuper2(&v3, sel_init);
    if (result)
    {
      result[17] = a2;
    }
  }

  return result;
}

- (int)appendData:(id)a3
{
  v5 = a3;
  if (fwrite([a3 bytes], objc_msgSend(a3, "length"), 1uLL, self->_outputFileStream) == 1)
  {
    return [a3 length];
  }

  else
  {
    return 0;
  }
}

- (int64_t)write:(const char *)a3 maxLength:(unint64_t)a4
{
  if (fwrite(a3, a4, 1uLL, self->_outputFileStream) == 1)
  {
    return a4;
  }

  else
  {
    return -1;
  }
}

@end