@interface TransparencyCloudDevice
- (TransparencyCloudDevice)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransparencyCloudDevice

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  loggableData = [(TransparencyCloudDevice *)self loggableData];
  [coderCopy encodeObject:loggableData forKey:@"loggableData"];

  state = [(TransparencyCloudDevice *)self state];
  [coderCopy encodeObject:state forKey:@"state"];

  serialNumber = [(TransparencyCloudDevice *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"sn"];

  uploadedToCKAt = [(TransparencyCloudDevice *)self uploadedToCKAt];
  [coderCopy encodeObject:uploadedToCKAt forKey:@"uploadedToCKAt"];
}

- (TransparencyCloudDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = TransparencyCloudDevice;
  v5 = [(TransparencyCloudDevice *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"loggableData"];
    [(TransparencyCloudDevice *)v5 setLoggableData:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    [(TransparencyCloudDevice *)v5 setState:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sn"];
    [(TransparencyCloudDevice *)v5 setSerialNumber:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uploadedToCKAt"];
    [(TransparencyCloudDevice *)v5 setUploadedToCKAt:v9];

    v10 = v5;
  }

  return v5;
}

@end