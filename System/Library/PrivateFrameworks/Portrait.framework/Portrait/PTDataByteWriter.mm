@interface PTDataByteWriter
- (BOOL)appendBytes:(const void *)bytes size:(unint64_t)size;
- (BOOL)writeBytes:(const void *)bytes size:(unint64_t)size offset:(unint64_t)offset;
- (PTDataByteWriter)initWithMutableData:(id)data;
- (id)_errorForSize:(unint64_t)size offset:(unint64_t)offset;
@end

@implementation PTDataByteWriter

- (PTDataByteWriter)initWithMutableData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = PTDataByteWriter;
  v6 = [(PTDataByteWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
  }

  return v7;
}

- (BOOL)appendBytes:(const void *)bytes size:(unint64_t)size
{
  error = [(PTDataByteWriter *)self error];

  if (error)
  {
    return 0;
  }

  v9 = [(NSMutableData *)self->_data length];
  [(NSMutableData *)self->_data appendBytes:bytes length:size];
  if ([(NSMutableData *)self->_data length]!= v9 + size)
  {
    v10 = [(PTDataByteWriter *)self _errorForSize:size offset:v9];
    [(PTDataByteWriter *)self setError:v10];
  }

  error2 = [(PTDataByteWriter *)self error];
  v8 = error2 == 0;

  return v8;
}

- (BOOL)writeBytes:(const void *)bytes size:(unint64_t)size offset:(unint64_t)offset
{
  error = [(PTDataByteWriter *)self error];

  if (error)
  {
    return 0;
  }

  v11 = [(NSMutableData *)self->_data length];
  [(NSMutableData *)self->_data replaceBytesInRange:offset withBytes:size length:bytes, size];
  if (offset + size <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = offset + size;
  }

  if ([(NSMutableData *)self->_data length]!= v12)
  {
    v13 = [(PTDataByteWriter *)self _errorForSize:size offset:offset];
    [(PTDataByteWriter *)self setError:v13];
  }

  error2 = [(PTDataByteWriter *)self error];
  v10 = error2 == 0;

  return v10;
}

- (id)_errorForSize:(unint64_t)size offset:(unint64_t)offset
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA590];
  v10 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"attempt to write bytes at offset %lu size %lu to data of length %lu", offset, size, -[NSMutableData length](self->_data, "length")];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v4 errorWithDomain:v5 code:-20 userInfo:v7];

  return v8;
}

@end