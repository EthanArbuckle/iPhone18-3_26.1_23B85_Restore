@interface TUNearbyDeviceHandleCapabilities
- (TUNearbyDeviceHandleCapabilities)initWithAVLessCapable:(BOOL)a3 lagunaCapable:(BOOL)a4 audioCallCapable:(BOOL)a5 telephonyRelayCapable:(BOOL)a6 greenTea:(BOOL)a7;
- (TUNearbyDeviceHandleCapabilities)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUNearbyDeviceHandleCapabilities

- (TUNearbyDeviceHandleCapabilities)initWithAVLessCapable:(BOOL)a3 lagunaCapable:(BOOL)a4 audioCallCapable:(BOOL)a5 telephonyRelayCapable:(BOOL)a6 greenTea:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = TUNearbyDeviceHandleCapabilities;
  result = [(TUNearbyDeviceHandleCapabilities *)&v13 init];
  if (result)
  {
    result->_avLessCapable = a3;
    result->_lagunaCapable = a4;
    result->_audioCallCapable = a5;
    result->_telephonyRelayCapable = a6;
    result->_greenTea = a7;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  [v6 appendFormat:@" isAVLessCapable=%d", -[TUNearbyDeviceHandleCapabilities isAVLessCapable](self, "isAVLessCapable")];
  [v6 appendFormat:@" isLagunaCapable=%d", -[TUNearbyDeviceHandleCapabilities isLagunaCapable](self, "isLagunaCapable")];
  [v6 appendFormat:@" isAudioCallCapable=%d", -[TUNearbyDeviceHandleCapabilities isAudioCallCapable](self, "isAudioCallCapable")];
  [v6 appendFormat:@" isTelephonyRelayCapable=%d", -[TUNearbyDeviceHandleCapabilities isTelephonyRelayCapable](self, "isTelephonyRelayCapable")];
  [v6 appendFormat:@" isGreenTea=%d", -[TUNearbyDeviceHandleCapabilities isGreenTea](self, "isGreenTea")];
  [v6 appendString:@">"];
  v7 = [v6 copy];

  return v7;
}

- (TUNearbyDeviceHandleCapabilities)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_isAVLessCapable);
  v6 = [v4 decodeBoolForKey:v5];

  v7 = NSStringFromSelector(sel_isLagunaCapable);
  v8 = [v4 decodeBoolForKey:v7];

  v9 = NSStringFromSelector(sel_isAudioCallCapable);
  v10 = [v4 decodeBoolForKey:v9];

  v11 = NSStringFromSelector(sel_isTelephonyRelayCapable);
  v12 = [v4 decodeBoolForKey:v11];

  v13 = NSStringFromSelector(sel_isGreenTea);
  v14 = [v4 decodeBoolForKey:v13];

  return [(TUNearbyDeviceHandleCapabilities *)self initWithAVLessCapable:v6 lagunaCapable:v8 audioCallCapable:v10 telephonyRelayCapable:v12 greenTea:v14];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUNearbyDeviceHandleCapabilities *)self isAVLessCapable];
  v6 = NSStringFromSelector(sel_isAVLessCapable);
  [v4 encodeBool:v5 forKey:v6];

  v7 = [(TUNearbyDeviceHandleCapabilities *)self isLagunaCapable];
  v8 = NSStringFromSelector(sel_isLagunaCapable);
  [v4 encodeBool:v7 forKey:v8];

  v9 = [(TUNearbyDeviceHandleCapabilities *)self isAudioCallCapable];
  v10 = NSStringFromSelector(sel_isAudioCallCapable);
  [v4 encodeBool:v9 forKey:v10];

  v11 = [(TUNearbyDeviceHandleCapabilities *)self isTelephonyRelayCapable];
  v12 = NSStringFromSelector(sel_isTelephonyRelayCapable);
  [v4 encodeBool:v11 forKey:v12];

  v13 = [(TUNearbyDeviceHandleCapabilities *)self isGreenTea];
  v14 = NSStringFromSelector(sel_isGreenTea);
  [v4 encodeBool:v13 forKey:v14];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TUNearbyDeviceHandleCapabilities *)self isAVLessCapable];
  v6 = [(TUNearbyDeviceHandleCapabilities *)self isLagunaCapable];
  v7 = [(TUNearbyDeviceHandleCapabilities *)self isAudioCallCapable];
  v8 = [(TUNearbyDeviceHandleCapabilities *)self isTelephonyRelayCapable];
  v9 = [(TUNearbyDeviceHandleCapabilities *)self isGreenTea];

  return [v4 initWithAVLessCapable:v5 lagunaCapable:v6 audioCallCapable:v7 telephonyRelayCapable:v8 greenTea:v9];
}

@end