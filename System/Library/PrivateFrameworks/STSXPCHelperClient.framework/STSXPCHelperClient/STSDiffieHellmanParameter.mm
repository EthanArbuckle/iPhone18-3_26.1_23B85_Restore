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
  v7 = a3;
  objc_msgSend_encodeInteger_forKey_(v7, v5, publicKeyGroup, @"publicKeyGroup");
  objc_msgSend_encodeObject_forKey_(v7, v6, self->_publicKey, @"publicKey");
}

- (STSDiffieHellmanParameter)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = STSDiffieHellmanParameter;
  v6 = [(STSDiffieHellmanParameter *)&v12 init];
  if (v6)
  {
    v6->_publicKeyGroup = objc_msgSend_decodeIntegerForKey_(v4, v5, @"publicKeyGroup");
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"dhInfo");
    publicKey = v6->_publicKey;
    v6->_publicKey = v9;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    isEqualToData = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    publicKeyGroup = self->_publicKeyGroup;
    if (publicKeyGroup == objc_msgSend_publicKeyGroup(v6, v8, v9) && (v12 = objc_msgSend_length(self->_publicKey, v10, v11), objc_msgSend_publicKey(v6, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend_length(v15, v16, v17), v15, v12 == v18))
    {
      publicKey = self->_publicKey;
      if (publicKey)
      {
        v22 = objc_msgSend_publicKey(v6, v19, v20);
        isEqualToData = objc_msgSend_isEqualToData_(publicKey, v23, v22);
      }

      else
      {
        isEqualToData = 1;
      }
    }

    else
    {
      isEqualToData = 0;
    }
  }

  else
  {
    isEqualToData = 0;
  }

  return isEqualToData & 1;
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
  v4 = objc_msgSend_data(MEMORY[0x277CBEB28], a2, v2);
  v13 = objc_msgSend_length(self->_publicKey, v5, v6) + 3;
  objc_msgSend_appendBytes_length_(v4, v7, &v13, 1);
  objc_msgSend_appendBytes_length_(v4, v8, &unk_264507598, 1);
  v12 = bswap32(LOWORD(self->_publicKeyGroup)) >> 16;
  objc_msgSend_appendBytes_length_(v4, v9, &v12, 2);
  objc_msgSend_appendData_(v4, v10, self->_publicKey);

  return v4;
}

@end