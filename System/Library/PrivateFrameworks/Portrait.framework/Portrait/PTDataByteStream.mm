@interface PTDataByteStream
- (PTDataByteStream)initWithData:(id)data;
- (id)_errorForSize:(unint64_t)size offset:(unint64_t)offset;
- (unint64_t)readBytes:(void *)bytes size:(unint64_t)size offset:(unint64_t)offset;
@end

@implementation PTDataByteStream

- (PTDataByteStream)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = PTDataByteStream;
  v6 = [(PTDataByteStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
  }

  return v7;
}

- (unint64_t)readBytes:(void *)bytes size:(unint64_t)size offset:(unint64_t)offset
{
  [(PTDataByteStream *)self setError:0];
  if (size && [(NSData *)self->_data length]> offset)
  {
    if ([(NSData *)self->_data length]< offset + size)
    {
      v9 = [(NSData *)self->_data length];
      size = v9 - offset;
      v10 = [(PTDataByteStream *)self _errorForSize:v9 - offset offset:offset];
      [(PTDataByteStream *)self setError:v10];
    }

    [(NSData *)self->_data getBytes:bytes range:offset, size];
  }

  else
  {
    v11 = [(PTDataByteStream *)self _errorForSize:size offset:offset];
    [(PTDataByteStream *)self setError:v11];

    return 0;
  }

  return size;
}

- (id)_errorForSize:(unint64_t)size offset:(unint64_t)offset
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA590];
  v10 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"attempt to read bytes at offset %lu size %lu from data of length %lu", offset, size, -[NSData length](self->_data, "length")];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v4 errorWithDomain:v5 code:-19 userInfo:v7];

  return v8;
}

@end