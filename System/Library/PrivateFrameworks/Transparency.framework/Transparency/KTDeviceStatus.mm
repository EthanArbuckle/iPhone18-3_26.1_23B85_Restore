@interface KTDeviceStatus
- (KTDeviceStatus)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTDeviceStatus

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  idms = [(KTDeviceStatus *)self idms];

  if (idms)
  {
    idms2 = [(KTDeviceStatus *)self idms];
    [coderCopy encodeObject:idms2 forKey:@"idms"];
  }

  loggableData = [(KTDeviceStatus *)self loggableData];

  if (loggableData)
  {
    loggableData2 = [(KTDeviceStatus *)self loggableData];
    [coderCopy encodeObject:loggableData2 forKey:@"loggableData"];
  }

  loggableDataError = [(KTDeviceStatus *)self loggableDataError];

  v9 = coderCopy;
  if (loggableDataError)
  {
    v10 = MEMORY[0x1E697AAC0];
    loggableDataError2 = [(KTDeviceStatus *)self loggableDataError];
    v12 = [v10 cleanseErrorForXPC:loggableDataError2];
    [coderCopy encodeObject:v12 forKey:@"loggableDataError"];

    v9 = coderCopy;
  }
}

- (KTDeviceStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = KTDeviceStatus;
  v5 = [(KTDeviceStatus *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idms"];
    [(KTDeviceStatus *)v5 setIdms:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"loggableData"];
    [(KTDeviceStatus *)v5 setLoggableData:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"loggableDataError"];
    [(KTDeviceStatus *)v5 setLoggableDataError:v8];

    v9 = v5;
  }

  return v5;
}

@end