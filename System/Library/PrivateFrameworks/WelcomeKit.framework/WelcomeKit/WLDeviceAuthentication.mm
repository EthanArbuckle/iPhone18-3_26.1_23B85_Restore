@interface WLDeviceAuthentication
- (WLDeviceAuthentication)init;
- (WLDeviceAuthentication)initWithCoder:(id)coder;
@end

@implementation WLDeviceAuthentication

- (WLDeviceAuthentication)init
{
  v7.receiver = self;
  v7.super_class = WLDeviceAuthentication;
  v2 = [(WLDeviceAuthentication *)&v7 init];
  if (v2)
  {
    v3 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
    v4 = CFUUIDCreateString(0, v3);
    sessionUUID = v2->_sessionUUID;
    v2->_sessionUUID = &v4->isa;

    CFRelease(v3);
  }

  return v2;
}

- (WLDeviceAuthentication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WLDeviceAuthentication *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sessionUUID"];
    sessionUUID = v5->_sessionUUID;
    v5->_sessionUUID = v6;
  }

  return v5;
}

@end