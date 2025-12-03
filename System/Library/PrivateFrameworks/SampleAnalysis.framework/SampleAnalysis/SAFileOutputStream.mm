@interface SAFileOutputStream
- (int)appendData:(id)data;
- (int64_t)write:(const char *)write maxLength:(unint64_t)length;
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

- (int)appendData:(id)data
{
  dataCopy = data;
  if (fwrite([data bytes], objc_msgSend(data, "length"), 1uLL, self->_outputFileStream) == 1)
  {
    return [data length];
  }

  else
  {
    return 0;
  }
}

- (int64_t)write:(const char *)write maxLength:(unint64_t)length
{
  if (fwrite(write, length, 1uLL, self->_outputFileStream) == 1)
  {
    return length;
  }

  else
  {
    return -1;
  }
}

@end