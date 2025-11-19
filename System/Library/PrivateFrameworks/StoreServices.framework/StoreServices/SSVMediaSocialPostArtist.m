@interface SSVMediaSocialPostArtist
- (SSVMediaSocialPostArtist)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
@end

@implementation SSVMediaSocialPostArtist

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setIdentifier:self->_identifier];
  [v4 setName:self->_name];
  return v4;
}

- (SSVMediaSocialPostArtist)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v12.receiver = self;
    v12.super_class = SSVMediaSocialPostArtist;
    v6 = [(SSVMediaSocialPostArtist *)&v12 init];
    if (v6)
    {
      objc_opt_class();
      v8 = SSXPCDictionaryCopyCFObjectWithClass(v5, "0");
      identifier = v6->_identifier;
      v6->_identifier = v8;

      objc_opt_class();
      v10 = SSXPCDictionaryCopyCFObjectWithClass(v5, "1");
      name = v6->_name;
      v6->_name = v10;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_identifier);
  SSXPCDictionarySetObject(v3, "1", self->_name);
  return v3;
}

@end