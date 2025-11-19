@interface IPAChecksum
- (BOOL)isEqual:(id)a3;
- (IPAChecksum)initWithBytes:(IPAChecksumBytes)a3;
- (IPAChecksum)initWithChecksumAsData:(id)a3;
- (IPAChecksum)initWithData:(id)a3;
- (IPAChecksum)initWithString:(id)a3;
- (IPAChecksumBytes)checksumBytes;
- (id)description;
- (id)string;
@end

@implementation IPAChecksum

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(IPAChecksum *)self string];
  v6 = [v3 stringWithFormat:@"<%@:%p> %@", v4, self, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 checksumBytes];
    v7 = [(IPAChecksum *)self isEqualToBytes:v5, v6];

    return v7;
  }

  else
  {
    v9 = _PFAssertFailHandler();
    return [(IPAChecksum *)v9 string];
  }
}

- (id)string
{
  v2 = 0;
  v10 = *MEMORY[0x277D85DE8];
  p_bytes = &self->_bytes;
  do
  {
    v4 = p_bytes->data[0];
    p_bytes = (p_bytes + 1);
    v5 = byte_25E5E0410[v4 & 0xF];
    v6 = &v9[v2];
    *v6 = byte_25E5E0410[v4 >> 4];
    v6[1] = v5;
    v2 += 2;
  }

  while (v2 != 32);
  v9[32] = 0;
  v7 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:1];

  return v7;
}

- (IPAChecksumBytes)checksumBytes
{
  v2 = *&self->_bytes.data[8];
  v3 = *self->_bytes.data;
  *&result.data[8] = v2;
  *result.data = v3;
  return result;
}

- (IPAChecksum)initWithChecksumAsData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    if ([v4 length] == 16)
    {
      v6 = [v5 bytes];
      v7 = [(IPAChecksum *)self initWithBytes:*v6, v6[1]];

      return v7;
    }
  }

  else
  {
    _PFAssertFailHandler();
  }

  v9 = _PFAssertFailHandler();
  return [(IPAChecksum *)v9 initWithData:v10, v11];
}

- (IPAChecksum)initWithData:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v10.receiver = self;
    v10.super_class = IPAChecksum;
    v5 = [(IPAChecksum *)&v10 init];
    CC_MD5([v4 bytes], objc_msgSend(v4, "length"), v5->_bytes.data);

    return v5;
  }

  else
  {
    v7 = _PFAssertFailHandler();
    return [(IPAChecksum *)v7 initWithString:v8, v9];
  }
}

- (IPAChecksum)initWithString:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
    _PFAssertFailHandler();
    goto LABEL_14;
  }

  v19.receiver = self;
  v19.super_class = IPAChecksum;
  v5 = [(IPAChecksum *)&v19 init];
  if ([v4 length] != 32)
  {
LABEL_14:
    v17 = _PFAssertFailHandler();
    return [(IPAChecksum *)v17 initWithBytes:v18, v20];
  }

  v6 = [v4 uppercaseString];
  v7 = [v6 UTF8String];

  v8 = 0;
  v9 = 8;
  do
  {
    v10 = *(v7 + v8);
    if (v10 <= 64)
    {
      v11 = 64;
    }

    else
    {
      v11 = 9;
    }

    v12 = v11 + v10;
    v13 = *(v7 + v8 + 1);
    if (v13 <= 64)
    {
      v14 = -48;
    }

    else
    {
      v14 = -55;
    }

    *(&v5->super.isa + v9++) = v14 + v13 + 16 * v12;
    v15 = v8 >= 0x1E;
    v8 += 2;
  }

  while (!v15);

  return v5;
}

- (IPAChecksum)initWithBytes:(IPAChecksumBytes)a3
{
  v3 = *&a3.data[8];
  v4 = *a3.data;
  v6.receiver = self;
  v6.super_class = IPAChecksum;
  result = [(IPAChecksum *)&v6 init];
  *result->_bytes.data = v4;
  *&result->_bytes.data[8] = v3;
  return result;
}

@end