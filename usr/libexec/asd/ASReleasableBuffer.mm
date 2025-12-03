@interface ASReleasableBuffer
- (ASReleasableBuffer)initWithData:(id)data;
- (char)takeDataAndOwnership;
- (void)dealloc;
- (void)releaseData;
@end

@implementation ASReleasableBuffer

- (ASReleasableBuffer)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = ASReleasableBuffer;
  v5 = [(ASReleasableBuffer *)&v9 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  byte_1006DF760 = 1;
  v6 = [dataCopy length];
  v5->_originalDataLength = v6;
  if (!v6)
  {
    v5->_data = 0;
    goto LABEL_6;
  }

  v7 = malloc_type_malloc(v6, 0x993D5070uLL);
  v5->_data = v7;
  if (v7)
  {
    memcpy(v7, [dataCopy bytes], v5->_originalDataLength);
LABEL_6:
    v7 = v5;
  }

  return v7;
}

- (void)releaseData
{
  data = self->_data;
  if (data)
  {
    if (byte_1006DF760 == 1)
    {
      free(data);
      self->_data = 0;
    }
  }
}

- (void)dealloc
{
  byte_1006DF760 = 1;
  [(ASReleasableBuffer *)self releaseData];
  v3.receiver = self;
  v3.super_class = ASReleasableBuffer;
  [(ASReleasableBuffer *)&v3 dealloc];
}

- (char)takeDataAndOwnership
{
  result = self->_data;
  if (!result)
  {
    v4 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
    {
      sub_100593AE8(v4);
    }

    return 0;
  }

  if (byte_1006DF760 == 1)
  {
    self->_data = 0;
    return result;
  }

  v5 = malloc_type_malloc(self->_originalDataLength, 0xE1F54D2BuLL);
  if (!v5)
  {
    v8 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
    {
      sub_100593AA4(v8);
    }

    return 0;
  }

  originalDataLength = self->_originalDataLength;
  data = self->_data;

  return memcpy(v5, data, originalDataLength);
}

@end