@interface BMSyncDevicePeerMetadata
+ (id)devicePeerMetadata;
- (BMSyncDevicePeerMetadata)initWithName:(id)name model:(id)model platform:(int64_t)platform;
- (BOOL)isEqual:(id)equal;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
- (unint64_t)hash;
@end

@implementation BMSyncDevicePeerMetadata

- (BMSyncDevicePeerMetadata)initWithName:(id)name model:(id)model platform:(int64_t)platform
{
  nameCopy = name;
  modelCopy = model;
  v14.receiver = self;
  v14.super_class = BMSyncDevicePeerMetadata;
  v11 = [(BMSyncDevicePeerMetadata *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    objc_storeStrong(&v12->_model, model);
    v12->_platform = platform;
  }

  return v12;
}

+ (id)devicePeerMetadata
{
  v2 = [BMSyncDevicePeerMetadata alloc];
  v3 = +[BMDeviceMetadataUtils osBuildVersion];
  v4 = [(BMSyncDevicePeerMetadata *)v2 initWithName:0 model:v3 platform:+[BMDeviceMetadataUtils platform]];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v7 = equalCopy;
  v8 = v7;
  name = self->_name;
  v10 = name;
  if (!name)
  {
    name = [v7 name];
    if (!name)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v10 = self->_name;
  }

  name2 = [v8 name];
  if (![(NSString *)v10 isEqualToString:name2])
  {
    v12 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v11 = 1;
LABEL_10:
  model = self->_model;
  model = [v8 model];
  if ([(NSString *)model isEqual:model])
  {
    platform = self->_platform;
    v12 = platform == [v8 platform];
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (!name)
  {
  }

LABEL_18:
  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_model hash]^ v3;
  v5 = [NSNumber numberWithInteger:self->_platform];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  v6 = +[NSNull null];
  if ([v5 isEqual:v6])
  {
    v7 = 0;
  }

  else
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"model"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"platform"];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  v11 = [(BMSyncDevicePeerMetadata *)self initWithName:v7 model:v8 platform:unsignedIntegerValue];
  return v11;
}

- (id)dictionaryRepresentation
{
  v10[0] = @"name";
  name = self->_name;
  v4 = name;
  if (!name)
  {
    v4 = +[NSNull null];
  }

  model = self->_model;
  platform = self->_platform;
  v11[0] = v4;
  v11[1] = model;
  v10[1] = @"model";
  v10[2] = @"platform";
  v7 = [NSNumber numberWithInteger:platform];
  v11[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  if (!name)
  {
  }

  return v8;
}

@end