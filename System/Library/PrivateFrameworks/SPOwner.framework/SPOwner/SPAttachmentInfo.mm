@interface SPAttachmentInfo
- (SPAttachmentInfo)initWithAttachedToDevice:(id)device;
- (SPAttachmentInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SPAttachmentInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPAttachmentInfo alloc];
  attachedToDevice = [(SPAttachmentInfo *)self attachedToDevice];
  v6 = [(SPAttachmentInfo *)v4 initWithAttachedToDevice:attachedToDevice];

  return v6;
}

- (SPAttachmentInfo)initWithAttachedToDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = SPAttachmentInfo;
  v6 = [(SPAttachmentInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attachedToDevice, device);
  }

  return v7;
}

- (SPAttachmentInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attachedToDevice"];

  attachedToDevice = self->_attachedToDevice;
  self->_attachedToDevice = v5;

  return self;
}

@end