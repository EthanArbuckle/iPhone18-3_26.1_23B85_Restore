@interface SSVMediaSocialPostItem
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SSVMediaSocialPostItem)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
@end

@implementation SSVMediaSocialPostItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    identifier = [(SSVMediaSocialPostItem *)self identifier];
    identifier2 = [equalCopy identifier];
    v6 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SSVMediaSocialPostItem)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
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