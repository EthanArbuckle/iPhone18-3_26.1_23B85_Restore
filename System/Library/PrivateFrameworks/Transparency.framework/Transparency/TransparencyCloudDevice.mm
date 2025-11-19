@interface TransparencyCloudDevice
- (TransparencyCloudDevice)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TransparencyCloudDevice

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TransparencyCloudDevice *)self loggableData];
  [v4 encodeObject:v5 forKey:@"loggableData"];

  v6 = [(TransparencyCloudDevice *)self state];
  [v4 encodeObject:v6 forKey:@"state"];

  v7 = [(TransparencyCloudDevice *)self serialNumber];
  [v4 encodeObject:v7 forKey:@"sn"];

  v8 = [(TransparencyCloudDevice *)self uploadedToCKAt];
  [v4 encodeObject:v8 forKey:@"uploadedToCKAt"];
}

- (TransparencyCloudDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TransparencyCloudDevice;
  v5 = [(TransparencyCloudDevice *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"loggableData"];
    [(TransparencyCloudDevice *)v5 setLoggableData:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    [(TransparencyCloudDevice *)v5 setState:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sn"];
    [(TransparencyCloudDevice *)v5 setSerialNumber:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uploadedToCKAt"];
    [(TransparencyCloudDevice *)v5 setUploadedToCKAt:v9];

    v10 = v5;
  }

  return v5;
}

@end