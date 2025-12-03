@interface SPDeviceEvent
- (SPDeviceEvent)initWithCoder:(id)coder;
- (SPDeviceEvent)initWithTimestamp:(id)timestamp source:(int64_t)source attachmentInfo:(id)info serialNumber:(id)number;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPDeviceEvent

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPDeviceEvent alloc];
  timestamp = [(SPDeviceEvent *)self timestamp];
  source = [(SPDeviceEvent *)self source];
  attachmentInfo = [(SPDeviceEvent *)self attachmentInfo];
  serialNumber = [(SPDeviceEvent *)self serialNumber];
  v9 = [(SPDeviceEvent *)v4 initWithTimestamp:timestamp source:source attachmentInfo:attachmentInfo serialNumber:serialNumber];

  return v9;
}

- (SPDeviceEvent)initWithTimestamp:(id)timestamp source:(int64_t)source attachmentInfo:(id)info serialNumber:(id)number
{
  timestampCopy = timestamp;
  infoCopy = info;
  numberCopy = number;
  v17.receiver = self;
  v17.super_class = SPDeviceEvent;
  v14 = [(SPDeviceEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_timestamp, timestamp);
    v15->_source = source;
    objc_storeStrong(&v15->_attachmentInfo, info);
    objc_storeStrong(&v15->_serialNumber, number);
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];
  [coderCopy encodeInteger:self->_source forKey:@"source"];
  [coderCopy encodeObject:self->_attachmentInfo forKey:@"attachmentInfo"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"serialNumber"];
}

- (SPDeviceEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  timestamp = self->_timestamp;
  self->_timestamp = v5;

  self->_source = [coderCopy decodeIntegerForKey:@"source"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attachmentInfo"];
  attachmentInfo = self->_attachmentInfo;
  self->_attachmentInfo = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];

  serialNumber = self->_serialNumber;
  self->_serialNumber = v9;

  return self;
}

@end