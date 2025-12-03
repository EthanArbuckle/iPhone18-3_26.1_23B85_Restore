@interface RPNearbyInvitationDevice
- (BOOL)isEqualToDevice:(id)device;
- (RPNearbyInvitationDevice)initWithCoder:(id)coder;
- (id)descriptionWithLevel:(int)level;
- (unsigned)updateWithEndpoint:(id)endpoint;
- (unsigned)updateWithSFDevice:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RPNearbyInvitationDevice

- (RPNearbyInvitationDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = RPNearbyInvitationDevice;
  v5 = [(RPEndpoint *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v9 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_deviceColor = v9;
    }

    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = RPNearbyInvitationDevice;
  [(RPEndpoint *)&v5 encodeWithCoder:coderCopy];
  if (self->_deviceColor)
  {
    [coderCopy encodeInteger:? forKey:?];
  }
}

- (id)descriptionWithLevel:(int)level
{
  NSAppendPrintF();
  v11 = 0;
  identifier = [(RPEndpoint *)self identifier];
  NSAppendPrintF();
  v4 = v11;

  deviceColor = [(RPNearbyInvitationDevice *)self deviceColor];
  NSAppendPrintF();
  v5 = v4;

  model = [(RPEndpoint *)self model];
  if (model)
  {
    NSAppendPrintF();
    v7 = v5;

    v5 = v7;
  }

  return v5;
}

- (BOOL)isEqualToDevice:(id)device
{
  identifier = self->super._identifier;
  identifier = [device identifier];
  LOBYTE(identifier) = [(NSString *)identifier isEqualToString:identifier];

  return identifier;
}

- (unsigned)updateWithSFDevice:(id)device
{
  v10.receiver = self;
  v10.super_class = RPNearbyInvitationDevice;
  deviceCopy = device;
  v5 = [(RPEndpoint *)&v10 updateWithSFDevice:deviceCopy];
  bleDevice = [deviceCopy bleDevice];

  advertisementFields = [bleDevice advertisementFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  if (self->_deviceColor != Int64Ranged)
  {
    self->_deviceColor = Int64Ranged;
    v5 |= 2u;
  }

  return v5;
}

- (unsigned)updateWithEndpoint:(id)endpoint
{
  v4.receiver = self;
  v4.super_class = RPNearbyInvitationDevice;
  return [(RPEndpoint *)&v4 updateWithEndpoint:endpoint];
}

@end