@interface STSDiffieHellmanParameter
- (BOOL)isEqual:(id)equal;
- (STSDiffieHellmanParameter)initWithCoder:(id)coder;
- (STSDiffieHellmanParameter)initWithKeyGroup:(unint64_t)group key:(id)key;
- (id)asData;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSDiffieHellmanParameter

- (void)encodeWithCoder:(id)coder
{
  publicKeyGroup = self->_publicKeyGroup;
  coderCopy = coder;
  [coderCopy encodeInteger:publicKeyGroup forKey:@"publicKeyGroup"];
  [coderCopy encodeObject:self->_publicKey forKey:@"publicKey"];
}

- (STSDiffieHellmanParameter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STSDiffieHellmanParameter;
  v5 = [(STSDiffieHellmanParameter *)&v9 init];
  if (v5)
  {
    v5->_publicKeyGroup = [coderCopy decodeIntegerForKey:@"publicKeyGroup"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dhInfo"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    publicKeyGroup = self->_publicKeyGroup;
    if (publicKeyGroup == -[STSDiffieHellmanParameter publicKeyGroup](v6, "publicKeyGroup") && (v8 = -[NSData length](self->_publicKey, "length"), -[STSDiffieHellmanParameter publicKey](v6, "publicKey"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 length], v9, v8 == v10))
    {
      publicKey = self->_publicKey;
      if (publicKey)
      {
        publicKey = [(STSDiffieHellmanParameter *)v6 publicKey];
        v13 = [(NSData *)publicKey isEqualToData:publicKey];
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

- (STSDiffieHellmanParameter)initWithKeyGroup:(unint64_t)group key:(id)key
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = STSDiffieHellmanParameter;
  v8 = [(STSDiffieHellmanParameter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_publicKeyGroup = group;
    objc_storeStrong(&v8->_publicKey, key);
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