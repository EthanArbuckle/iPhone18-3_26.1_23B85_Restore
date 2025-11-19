@interface PTDataByteWriter
- (BOOL)appendBytes:(const void *)a3 size:(unint64_t)a4;
- (BOOL)writeBytes:(const void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5;
- (PTDataByteWriter)initWithMutableData:(id)a3;
- (id)_errorForSize:(unint64_t)a3 offset:(unint64_t)a4;
@end

@implementation PTDataByteWriter

- (PTDataByteWriter)initWithMutableData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PTDataByteWriter;
  v6 = [(PTDataByteWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

- (BOOL)appendBytes:(const void *)a3 size:(unint64_t)a4
{
  v7 = [(PTDataByteWriter *)self error];

  if (v7)
  {
    return 0;
  }

  v9 = [(NSMutableData *)self->_data length];
  [(NSMutableData *)self->_data appendBytes:a3 length:a4];
  if ([(NSMutableData *)self->_data length]!= v9 + a4)
  {
    v10 = [(PTDataByteWriter *)self _errorForSize:a4 offset:v9];
    [(PTDataByteWriter *)self setError:v10];
  }

  v11 = [(PTDataByteWriter *)self error];
  v8 = v11 == 0;

  return v8;
}

- (BOOL)writeBytes:(const void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5
{
  v9 = [(PTDataByteWriter *)self error];

  if (v9)
  {
    return 0;
  }

  v11 = [(NSMutableData *)self->_data length];
  [(NSMutableData *)self->_data replaceBytesInRange:a5 withBytes:a4 length:a3, a4];
  if (a5 + a4 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = a5 + a4;
  }

  if ([(NSMutableData *)self->_data length]!= v12)
  {
    v13 = [(PTDataByteWriter *)self _errorForSize:a4 offset:a5];
    [(PTDataByteWriter *)self setError:v13];
  }

  v14 = [(PTDataByteWriter *)self error];
  v10 = v14 == 0;

  return v10;
}

- (id)_errorForSize:(unint64_t)a3 offset:(unint64_t)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA590];
  v10 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"attempt to write bytes at offset %lu size %lu to data of length %lu", a4, a3, -[NSMutableData length](self->_data, "length")];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v4 errorWithDomain:v5 code:-20 userInfo:v7];

  return v8;
}

@end