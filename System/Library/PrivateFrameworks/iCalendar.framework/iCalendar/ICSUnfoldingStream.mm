@interface ICSUnfoldingStream
- (BOOL)eos;
- (ICSUnfoldingStream)initWithInputStream:(id)stream;
- (char)read;
@end

@implementation ICSUnfoldingStream

- (ICSUnfoldingStream)initWithInputStream:(id)stream
{
  streamCopy = stream;
  v10.receiver = self;
  v10.super_class = ICSUnfoldingStream;
  v6 = [(ICSUnfoldingStream *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (!streamCopy)
    {
      v8 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v6->_underStream, stream);
    [(ICSUnfoldingStream *)v7 _readTwo];
  }

  v8 = v7;
LABEL_6:

  return v8;
}

- (char)read
{
  while (1)
  {
    while (1)
    {
      char1 = self->_char1;
      if (char1 == 10)
      {
        break;
      }

      if (char1 != 13 || self->_char2 != 10)
      {
        goto LABEL_16;
      }

      read = [(ICSInputByteStream *)self->_underStream read];
      v5 = read;
      if (read == 32 || read == 9)
      {
        [(ICSUnfoldingStream *)self _readTwo];
      }

      else
      {
        self->_char1 = 10;
        self->_char2 = read;
      }

      if (v5 != 9 && v5 != 32)
      {
        return char1;
      }
    }

    char2 = self->_char2;
    if (char2 != 9 && char2 != 32)
    {
      break;
    }

    [(ICSUnfoldingStream *)self _readTwo];
  }

LABEL_16:
  [(ICSUnfoldingStream *)self _shiftRead];
  return char1;
}

- (BOOL)eos
{
  if (self->_char1 || self->_char2)
  {
    return 0;
  }

  else
  {
    return [(ICSInputByteStream *)self->_underStream eos];
  }
}

@end