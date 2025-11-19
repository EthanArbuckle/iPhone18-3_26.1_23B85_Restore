@interface STGeneratedAudioMetadata
- (STGeneratedAudioMetadata)initWithCoder:(id)a3;
- (STGeneratedAudioMetadata)initWithUUID:(id)a3 text:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STGeneratedAudioMetadata

- (STGeneratedAudioMetadata)initWithUUID:(id)a3 text:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = STGeneratedAudioMetadata;
  v8 = [(STGeneratedAudioMetadata *)&v17 init];
  if (v8)
  {
    v9 = [v6 copy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x277CCAD78] UUID];
    }

    uuid = v8->_uuid;
    v8->_uuid = v11;

    v13 = [v7 copy];
    text = v8->_text;
    v8->_text = v13;

    v15 = v8;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"uuid"];
  [v5 encodeObject:self->_text forKey:@"text"];
}

- (STGeneratedAudioMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = STGeneratedAudioMetadata;
  v5 = [(STGeneratedAudioMetadata *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v8;

    v10 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STGeneratedAudioMetadata alloc];
  uuid = self->_uuid;
  text = self->_text;

  return [(STGeneratedAudioMetadata *)v4 initWithUUID:uuid text:text];
}

@end