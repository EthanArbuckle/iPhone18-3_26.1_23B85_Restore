@interface STGeneratedAudioMetadata
- (STGeneratedAudioMetadata)initWithCoder:(id)coder;
- (STGeneratedAudioMetadata)initWithUUID:(id)d text:(id)text;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STGeneratedAudioMetadata

- (STGeneratedAudioMetadata)initWithUUID:(id)d text:(id)text
{
  dCopy = d;
  textCopy = text;
  v17.receiver = self;
  v17.super_class = STGeneratedAudioMetadata;
  v8 = [(STGeneratedAudioMetadata *)&v17 init];
  if (v8)
  {
    v9 = [dCopy copy];
    v10 = v9;
    if (v9)
    {
      uUID = v9;
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
    }

    uuid = v8->_uuid;
    v8->_uuid = uUID;

    v13 = [textCopy copy];
    text = v8->_text;
    v8->_text = v13;

    v15 = v8;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"uuid"];
  [coderCopy encodeObject:self->_text forKey:@"text"];
}

- (STGeneratedAudioMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = STGeneratedAudioMetadata;
  v5 = [(STGeneratedAudioMetadata *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v8;

    v10 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STGeneratedAudioMetadata alloc];
  uuid = self->_uuid;
  text = self->_text;

  return [(STGeneratedAudioMetadata *)v4 initWithUUID:uuid text:text];
}

@end