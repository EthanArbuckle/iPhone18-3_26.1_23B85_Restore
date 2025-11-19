@interface PTDataByteStream
- (PTDataByteStream)initWithData:(id)a3;
- (id)_errorForSize:(unint64_t)a3 offset:(unint64_t)a4;
- (unint64_t)readBytes:(void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5;
@end

@implementation PTDataByteStream

- (PTDataByteStream)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PTDataByteStream;
  v6 = [(PTDataByteStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

- (unint64_t)readBytes:(void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5
{
  [(PTDataByteStream *)self setError:0];
  if (a4 && [(NSData *)self->_data length]> a5)
  {
    if ([(NSData *)self->_data length]< a5 + a4)
    {
      v9 = [(NSData *)self->_data length];
      a4 = v9 - a5;
      v10 = [(PTDataByteStream *)self _errorForSize:v9 - a5 offset:a5];
      [(PTDataByteStream *)self setError:v10];
    }

    [(NSData *)self->_data getBytes:a3 range:a5, a4];
  }

  else
  {
    v11 = [(PTDataByteStream *)self _errorForSize:a4 offset:a5];
    [(PTDataByteStream *)self setError:v11];

    return 0;
  }

  return a4;
}

- (id)_errorForSize:(unint64_t)a3 offset:(unint64_t)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA590];
  v10 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"attempt to read bytes at offset %lu size %lu from data of length %lu", a4, a3, -[NSData length](self->_data, "length")];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v4 errorWithDomain:v5 code:-19 userInfo:v7];

  return v8;
}

@end