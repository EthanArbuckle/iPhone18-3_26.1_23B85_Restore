@interface KTIDMSDevice
- (KTIDMSDevice)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTIDMSDevice

- (void)encodeWithCoder:(id)a3
{
  v19 = a3;
  v4 = [(KTIDMSDevice *)self deviceID];

  if (v4)
  {
    v5 = [(KTIDMSDevice *)self deviceID];
    [v19 encodeObject:v5 forKey:@"deviceID"];
  }

  v6 = [(KTIDMSDevice *)self name];

  if (v6)
  {
    v7 = [(KTIDMSDevice *)self name];
    [v19 encodeObject:v7 forKey:@"name"];
  }

  v8 = [(KTIDMSDevice *)self model];

  if (v8)
  {
    v9 = [(KTIDMSDevice *)self model];
    [v19 encodeObject:v9 forKey:@"model"];
  }

  v10 = [(KTIDMSDevice *)self name];

  if (v10)
  {
    v11 = [(KTIDMSDevice *)self pushToken];
    [v19 encodeObject:v11 forKey:@"pushToken"];
  }

  v12 = [(KTIDMSDevice *)self osVersion];

  if (v12)
  {
    v13 = [(KTIDMSDevice *)self osVersion];
    [v19 encodeObject:v13 forKey:@"osVersion"];
  }

  v14 = [(KTIDMSDevice *)self build];

  if (v14)
  {
    v15 = [(KTIDMSDevice *)self build];
    [v19 encodeObject:v15 forKey:@"build"];
  }

  v16 = [(KTIDMSDevice *)self serial];

  v17 = v19;
  if (v16)
  {
    v18 = [(KTIDMSDevice *)self serial];
    [v19 encodeObject:v18 forKey:@"serial"];

    v17 = v19;
  }
}

- (KTIDMSDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = KTIDMSDevice;
  v5 = [(KTIDMSDevice *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
    [(KTIDMSDevice *)v5 setDeviceID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(KTIDMSDevice *)v5 setName:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    [(KTIDMSDevice *)v5 setModel:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
    [(KTIDMSDevice *)v5 setPushToken:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"osVersion"];
    [(KTIDMSDevice *)v5 setOsVersion:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"build"];
    [(KTIDMSDevice *)v5 setBuild:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serial"];
    [(KTIDMSDevice *)v5 setSerial:v12];

    v13 = v5;
  }

  return v5;
}

@end