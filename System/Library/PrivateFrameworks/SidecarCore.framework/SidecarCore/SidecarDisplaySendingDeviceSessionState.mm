@interface SidecarDisplaySendingDeviceSessionState
- (SidecarDisplaySendingDeviceSessionState)initWithCoder:(id)coder;
- (SidecarDisplaySendingDeviceSessionState)initWithDevice:(id)device sessionState:(int64_t)state visualDetectability:(int64_t)detectability;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SidecarDisplaySendingDeviceSessionState

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  device = [(SidecarDisplaySendingDeviceSessionState *)self device];
  identifier = [device identifier];
  visualDetectability = [(SidecarDisplaySendingDeviceSessionState *)self visualDetectability];
  if (visualDetectability > 2)
  {
    v9 = @"UnrecognizedValue";
  }

  else
  {
    v9 = off_279BC35E0[visualDetectability];
  }

  v10 = v9;
  sessionState = [(SidecarDisplaySendingDeviceSessionState *)self sessionState];
  if (sessionState > 3)
  {
    v12 = @"Unknown";
  }

  else
  {
    v12 = off_279BC31A0[sessionState];
  }

  v13 = v12;
  v14 = [v3 stringWithFormat:@"%@ device identifier: [%@], visualDetectability: [%@], sessionState: [%@]", v5, identifier, v10, v13];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  device = self->_device;
  coderCopy = coder;
  encodeObject(coderCopy, @"device", device);
  encodeInteger(coderCopy, @"sessionState", self->_sessionState);
  encodeInteger(coderCopy, @"visualDetectability", self->_visualDetectability);
}

- (SidecarDisplaySendingDeviceSessionState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = decodeObject(coderCopy, @"device", v5);
  v7 = decodeInteger(coderCopy, @"sessionState");
  v8 = decodeInteger(coderCopy, @"visualDetectability");

  v9 = [(SidecarDisplaySendingDeviceSessionState *)self initWithDevice:v6 sessionState:v7 visualDetectability:v8];
  return v9;
}

- (SidecarDisplaySendingDeviceSessionState)initWithDevice:(id)device sessionState:(int64_t)state visualDetectability:(int64_t)detectability
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = SidecarDisplaySendingDeviceSessionState;
  v10 = [(SidecarDisplaySendingDeviceSessionState *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, device);
    v11->_sessionState = state;
    v11->_visualDetectability = detectability;
  }

  return v11;
}

@end