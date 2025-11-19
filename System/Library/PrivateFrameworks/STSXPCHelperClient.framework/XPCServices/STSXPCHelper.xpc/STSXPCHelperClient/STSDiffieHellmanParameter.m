@interface STSDiffieHellmanParameter
- (BOOL)isEqual:(id)a3;
- (STSDiffieHellmanParameter)initWithCoder:(id)a3;
- (STSDiffieHellmanParameter)initWithKeyGroup:(unint64_t)a3 key:(id)a4;
- (id)asData;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSDiffieHellmanParameter

- (void)encodeWithCoder:(id)a3
{
  publicKeyGroup = self->_publicKeyGroup;
  v5 = a3;
  [v5 encodeInteger:publicKeyGroup forKey:@"publicKeyGroup"];
  [v5 encodeObject:self->_publicKey forKey:@"publicKey"];
}

- (STSDiffieHellmanParameter)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STSDiffieHellmanParameter;
  v5 = [(STSDiffieHellmanParameter *)&v9 init];
  if (v5)
  {
    v5->_publicKeyGroup = [v4 decodeIntegerForKey:@"publicKeyGroup"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dhInfo"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    publicKeyGroup = self->_publicKeyGroup;
    if (publicKeyGroup == -[STSDiffieHellmanParameter publicKeyGroup](v6, "publicKeyGroup") && (v8 = -[NSData length](self->_publicKey, "length"), -[STSDiffieHellmanParameter publicKey](v6, "publicKey"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 length], v9, v8 == v10))
    {
      publicKey = self->_publicKey;
      if (publicKey)
      {
        v12 = [(STSDiffieHellmanParameter *)v6 publicKey];
        v13 = [(NSData *)publicKey isEqualToData:v12];
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (STSDiffieHellmanParameter)initWithKeyGroup:(unint64_t)a3 key:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = STSDiffieHellmanParameter;
  v8 = [(STSDiffieHellmanParameter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_publicKeyGroup = a3;
    objc_storeStrong(&v8->_publicKey, a4);
  }

  return v9;
}

- (id)asData
{
  v3 = +[NSMutableData data];
  v6 = [(NSData *)self->_publicKey length]+ 3;
  [v3 appendBytes:&v6 length:1];
  [v3 appendBytes:&unk_100042958 length:1];
  v5 = bswap32(LOWORD(self->_publicKeyGroup)) >> 16;
  [v3 appendBytes:&v5 length:2];
  [v3 appendData:self->_publicKey];

  return v3;
}

@end