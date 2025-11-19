@interface SidecarDisplaySendingDeviceSessionState
- (SidecarDisplaySendingDeviceSessionState)initWithCoder:(id)a3;
- (SidecarDisplaySendingDeviceSessionState)initWithDevice:(id)a3 sessionState:(int64_t)a4 visualDetectability:(int64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SidecarDisplaySendingDeviceSessionState

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SidecarDisplaySendingDeviceSessionState *)self device];
  v7 = [v6 identifier];
  v8 = [(SidecarDisplaySendingDeviceSessionState *)self visualDetectability];
  if (v8 > 2)
  {
    v9 = @"UnrecognizedValue";
  }

  else
  {
    v9 = off_279BC35E0[v8];
  }

  v10 = v9;
  v11 = [(SidecarDisplaySendingDeviceSessionState *)self sessionState];
  if (v11 > 3)
  {
    v12 = @"Unknown";
  }

  else
  {
    v12 = off_279BC31A0[v11];
  }

  v13 = v12;
  v14 = [v3 stringWithFormat:@"%@ device identifier: [%@], visualDetectability: [%@], sessionState: [%@]", v5, v7, v10, v13];

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  device = self->_device;
  v5 = a3;
  encodeObject(v5, @"device", device);
  encodeInteger(v5, @"sessionState", self->_sessionState);
  encodeInteger(v5, @"visualDetectability", self->_visualDetectability);
}

- (SidecarDisplaySendingDeviceSessionState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = decodeObject(v4, @"device", v5);
  v7 = decodeInteger(v4, @"sessionState");
  v8 = decodeInteger(v4, @"visualDetectability");

  v9 = [(SidecarDisplaySendingDeviceSessionState *)self initWithDevice:v6 sessionState:v7 visualDetectability:v8];
  return v9;
}

- (SidecarDisplaySendingDeviceSessionState)initWithDevice:(id)a3 sessionState:(int64_t)a4 visualDetectability:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = SidecarDisplaySendingDeviceSessionState;
  v10 = [(SidecarDisplaySendingDeviceSessionState *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, a3);
    v11->_sessionState = a4;
    v11->_visualDetectability = a5;
  }

  return v11;
}

@end