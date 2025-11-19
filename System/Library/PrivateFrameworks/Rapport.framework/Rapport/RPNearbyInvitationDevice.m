@interface RPNearbyInvitationDevice
- (BOOL)isEqualToDevice:(id)a3;
- (RPNearbyInvitationDevice)initWithCoder:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (unsigned)updateWithEndpoint:(id)a3;
- (unsigned)updateWithSFDevice:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RPNearbyInvitationDevice

- (RPNearbyInvitationDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RPNearbyInvitationDevice;
  v5 = [(RPEndpoint *)&v8 initWithCoder:v4];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = RPNearbyInvitationDevice;
  [(RPEndpoint *)&v5 encodeWithCoder:v4];
  if (self->_deviceColor)
  {
    [v4 encodeInteger:? forKey:?];
  }
}

- (id)descriptionWithLevel:(int)a3
{
  NSAppendPrintF();
  v11 = 0;
  v9 = [(RPEndpoint *)self identifier];
  NSAppendPrintF();
  v4 = v11;

  v10 = [(RPNearbyInvitationDevice *)self deviceColor];
  NSAppendPrintF();
  v5 = v4;

  v6 = [(RPEndpoint *)self model];
  if (v6)
  {
    NSAppendPrintF();
    v7 = v5;

    v5 = v7;
  }

  return v5;
}

- (BOOL)isEqualToDevice:(id)a3
{
  identifier = self->super._identifier;
  v4 = [a3 identifier];
  LOBYTE(identifier) = [(NSString *)identifier isEqualToString:v4];

  return identifier;
}

- (unsigned)updateWithSFDevice:(id)a3
{
  v10.receiver = self;
  v10.super_class = RPNearbyInvitationDevice;
  v4 = a3;
  v5 = [(RPEndpoint *)&v10 updateWithSFDevice:v4];
  v6 = [v4 bleDevice];

  v7 = [v6 advertisementFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  if (self->_deviceColor != Int64Ranged)
  {
    self->_deviceColor = Int64Ranged;
    v5 |= 2u;
  }

  return v5;
}

- (unsigned)updateWithEndpoint:(id)a3
{
  v4.receiver = self;
  v4.super_class = RPNearbyInvitationDevice;
  return [(RPEndpoint *)&v4 updateWithEndpoint:a3];
}

@end