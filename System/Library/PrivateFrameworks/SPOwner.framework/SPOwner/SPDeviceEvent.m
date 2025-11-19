@interface SPDeviceEvent
- (SPDeviceEvent)initWithCoder:(id)a3;
- (SPDeviceEvent)initWithTimestamp:(id)a3 source:(int64_t)a4 attachmentInfo:(id)a5 serialNumber:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPDeviceEvent

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPDeviceEvent alloc];
  v5 = [(SPDeviceEvent *)self timestamp];
  v6 = [(SPDeviceEvent *)self source];
  v7 = [(SPDeviceEvent *)self attachmentInfo];
  v8 = [(SPDeviceEvent *)self serialNumber];
  v9 = [(SPDeviceEvent *)v4 initWithTimestamp:v5 source:v6 attachmentInfo:v7 serialNumber:v8];

  return v9;
}

- (SPDeviceEvent)initWithTimestamp:(id)a3 source:(int64_t)a4 attachmentInfo:(id)a5 serialNumber:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = SPDeviceEvent;
  v14 = [(SPDeviceEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_timestamp, a3);
    v15->_source = a4;
    objc_storeStrong(&v15->_attachmentInfo, a5);
    objc_storeStrong(&v15->_serialNumber, a6);
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeObject:timestamp forKey:@"timestamp"];
  [v5 encodeInteger:self->_source forKey:@"source"];
  [v5 encodeObject:self->_attachmentInfo forKey:@"attachmentInfo"];
  [v5 encodeObject:self->_serialNumber forKey:@"serialNumber"];
}

- (SPDeviceEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  timestamp = self->_timestamp;
  self->_timestamp = v5;

  self->_source = [v4 decodeIntegerForKey:@"source"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attachmentInfo"];
  attachmentInfo = self->_attachmentInfo;
  self->_attachmentInfo = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];

  serialNumber = self->_serialNumber;
  self->_serialNumber = v9;

  return self;
}

@end