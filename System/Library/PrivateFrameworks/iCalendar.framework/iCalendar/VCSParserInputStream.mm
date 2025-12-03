@interface VCSParserInputStream
- (BOOL)isContinued;
- (VCSParserInputStream)initWithData:(id)data;
- (id)errorStr:(unint64_t)str;
- (unint64_t)getLine:(char *)line withSize:(unint64_t *)size;
- (unint64_t)loadLineBuffer;
@end

@implementation VCSParserInputStream

- (VCSParserInputStream)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = VCSParserInputStream;
  v6 = [(VCSParserInputStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataStream, data);
  }

  return v7;
}

- (unint64_t)getLine:(char *)line withSize:(unint64_t *)size
{
  if (!self->_dataStream)
  {
    return 1;
  }

  if (!line)
  {
    return 2;
  }

  if (self->_discardBuffer)
  {
    loadLineBuffer = [(VCSParserInputStream *)self loadLineBuffer];
    if (loadLineBuffer == 4)
    {
      return loadLineBuffer;
    }
  }

  else
  {
    loadLineBuffer = 0;
  }

  length = self->_buffer.length;
  if (*size <= length)
  {
    *size = length + 1;
    return 3;
  }

  else
  {
    [(NSData *)self->_dataStream getBytes:line range:self->_buffer.location];
    line[self->_buffer.length] = 0;
    self->_discardBuffer = 1;
    if (!loadLineBuffer)
    {
      ++self->_currentLineNum;
    }
  }

  return loadLineBuffer;
}

- (unint64_t)loadLineBuffer
{
  bytes = [(NSData *)self->_dataStream bytes];
  v4 = [(NSData *)self->_dataStream length];
  seek = self->_seek;
  if (v4 <= seek)
  {
    result = 4;
    v11 = self->_seek;
  }

  else
  {
    v6 = seek + 1;
    v7 = self->_seek;
    while (1)
    {
      v8 = bytes[v7];
      self->_seek = v6;
      if (v8 == 10)
      {
        result = 0;
        goto LABEL_13;
      }

      if (v8 == 13)
      {
        break;
      }

      v7 = v6;
      v9 = v6 + 1;
      if (v4 <= v6++)
      {
        v11 = v9 - 1;
        result = 4;
        goto LABEL_14;
      }
    }

    result = 0;
    if (bytes[v6] == 10)
    {
      v13 = v6 + 1;
    }

    else
    {
      v13 = v6;
    }

    self->_seek = v13;
LABEL_13:
    v11 = v6 - 1;
  }

LABEL_14:
  self->_buffer.location = seek;
  self->_buffer.length = v11 - seek;
  return result;
}

- (BOOL)isContinued
{
  if ([(VCSParserInputStream *)self loadLineBuffer]== 4)
  {
    result = 0;
    self->_discardBuffer = 1;
    return result;
  }

  self->_discardBuffer = 0;
  if (!self->_buffer.length)
  {
    return 0;
  }

  v9 = 0;
  location = self->_buffer.location;
  if (location >= 6)
  {
    v8 = 0;
    v7 = 0;
    [(NSData *)self->_dataStream getBytes:&v8 range:location - 3, 1];
    [(NSData *)self->_dataStream getBytes:&v7 + 1 range:self->_buffer.location - 2, 1];
    [(NSData *)self->_dataStream getBytes:&v7 range:self->_buffer.location - 1, 1];
    v5 = v7 == 13 || v7 == 10;
    if (v5 && HIBYTE(v7) == 61 || v7 == 10 && HIBYTE(v7) == 13 && v8 == 61)
    {
      return 1;
    }

    location = self->_buffer.location;
  }

  [(NSData *)self->_dataStream getBytes:&v9 range:location, 1];
  return v9 == 32 || v9 == 9;
}

- (id)errorStr:(unint64_t)str
{
  if (str - 1 > 3)
  {
    return @"Unknown error.";
  }

  else
  {
    return off_27A64C3D8[str - 1];
  }
}

@end