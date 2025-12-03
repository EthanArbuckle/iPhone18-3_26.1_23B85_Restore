@interface REDuetContextDevice
+ (id)companionDevice;
+ (id)localDevice;
- (BOOL)isEqual:(id)equal;
- (REDuetContextDevice)initWithUUID:(id)d type:(unint64_t)type;
@end

@implementation REDuetContextDevice

- (REDuetContextDevice)initWithUUID:(id)d type:(unint64_t)type
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = REDuetContextDevice;
  v8 = [(REDuetContextDevice *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, d);
    v9->_deviceType = type;
  }

  return v9;
}

+ (id)localDevice
{
  if (localDevice_onceToken != -1)
  {
    +[REDuetContextDevice localDevice];
  }

  v3 = localDevice_LocalDevice;

  return v3;
}

uint64_t __34__REDuetContextDevice_localDevice__block_invoke()
{
  v0 = [[REDuetContextDevice alloc] initWithUUID:0 type:2];
  v1 = localDevice_LocalDevice;
  localDevice_LocalDevice = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)companionDevice
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"69F29713-2C08-51C0-9C58-DA6DB6AFBD28"];
  v3 = [[REDuetContextDevice alloc] initWithUUID:v2 type:0xFFFFLL];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = equalCopy->_identifier;
      v7 = identifier;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSUUID *)v7 isEqual:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end