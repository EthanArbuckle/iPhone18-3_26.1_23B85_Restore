@interface SSVMediaSocialPostItem
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SSVMediaSocialPostItem)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
@end

@implementation SSVMediaSocialPostItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setIdentifier:self->_identifier];
  [v4 setType:self->_type];
  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = SSVMediaSocialPostItem;
  v4 = [(SSVMediaSocialPostItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: [ID: %@, Type: %@]", v4, self->_identifier, self->_type];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [(SSVMediaSocialPostItem *)self identifier];
    v8 = [v4 identifier];
    v6 = [v7 isEqualToString:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SSVMediaSocialPostItem)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v12.receiver = self;
    v12.super_class = SSVMediaSocialPostItem;
    v6 = [(SSVMediaSocialPostItem *)&v12 init];
    if (v6)
    {
      v8 = SSXPCDictionaryCopyCFObject(v5, "0");
      identifier = v6->_identifier;
      v6->_identifier = v8;

      v10 = SSXPCDictionaryCopyCFObject(v5, "1");
      type = v6->_type;
      v6->_type = v10;
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
  SSXPCDictionarySetObject(v3, "1", self->_type);
  return v3;
}

@end