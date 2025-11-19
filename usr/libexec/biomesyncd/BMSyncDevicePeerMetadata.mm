@interface BMSyncDevicePeerMetadata
+ (id)devicePeerMetadata;
- (BMSyncDevicePeerMetadata)initWithName:(id)a3 model:(id)a4 platform:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)a3;
- (unint64_t)hash;
@end

@implementation BMSyncDevicePeerMetadata

- (BMSyncDevicePeerMetadata)initWithName:(id)a3 model:(id)a4 platform:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = BMSyncDevicePeerMetadata;
  v11 = [(BMSyncDevicePeerMetadata *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, a3);
    objc_storeStrong(&v12->_model, a4);
    v12->_platform = a5;
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

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v7 = v6;
  v8 = v7;
  name = self->_name;
  v10 = name;
  if (!name)
  {
    v3 = [v7 name];
    if (!v3)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v10 = self->_name;
  }

  v4 = [v8 name];
  if (![(NSString *)v10 isEqualToString:v4])
  {
    v12 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v11 = 1;
LABEL_10:
  model = self->_model;
  v14 = [v8 model];
  if ([(NSString *)model isEqual:v14])
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

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"name"];
  v6 = +[NSNull null];
  if ([v5 isEqual:v6])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v4 objectForKeyedSubscript:@"name"];
  }

  v8 = [v4 objectForKeyedSubscript:@"model"];
  v9 = [v4 objectForKeyedSubscript:@"platform"];
  v10 = [v9 unsignedIntegerValue];

  v11 = [(BMSyncDevicePeerMetadata *)self initWithName:v7 model:v8 platform:v10];
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