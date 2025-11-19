@interface KTDeviceStatus
- (KTDeviceStatus)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTDeviceStatus

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = [(KTDeviceStatus *)self idms];

  if (v4)
  {
    v5 = [(KTDeviceStatus *)self idms];
    [v13 encodeObject:v5 forKey:@"idms"];
  }

  v6 = [(KTDeviceStatus *)self loggableData];

  if (v6)
  {
    v7 = [(KTDeviceStatus *)self loggableData];
    [v13 encodeObject:v7 forKey:@"loggableData"];
  }

  v8 = [(KTDeviceStatus *)self loggableDataError];

  v9 = v13;
  if (v8)
  {
    v10 = MEMORY[0x1E697AAC0];
    v11 = [(KTDeviceStatus *)self loggableDataError];
    v12 = [v10 cleanseErrorForXPC:v11];
    [v13 encodeObject:v12 forKey:@"loggableDataError"];

    v9 = v13;
  }
}

- (KTDeviceStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = KTDeviceStatus;
  v5 = [(KTDeviceStatus *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idms"];
    [(KTDeviceStatus *)v5 setIdms:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"loggableData"];
    [(KTDeviceStatus *)v5 setLoggableData:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"loggableDataError"];
    [(KTDeviceStatus *)v5 setLoggableDataError:v8];

    v9 = v5;
  }

  return v5;
}

@end