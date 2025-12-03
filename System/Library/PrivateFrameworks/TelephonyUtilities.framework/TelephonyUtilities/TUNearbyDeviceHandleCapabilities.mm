@interface TUNearbyDeviceHandleCapabilities
- (TUNearbyDeviceHandleCapabilities)initWithAVLessCapable:(BOOL)capable lagunaCapable:(BOOL)lagunaCapable audioCallCapable:(BOOL)callCapable telephonyRelayCapable:(BOOL)relayCapable greenTea:(BOOL)tea;
- (TUNearbyDeviceHandleCapabilities)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUNearbyDeviceHandleCapabilities

- (TUNearbyDeviceHandleCapabilities)initWithAVLessCapable:(BOOL)capable lagunaCapable:(BOOL)lagunaCapable audioCallCapable:(BOOL)callCapable telephonyRelayCapable:(BOOL)relayCapable greenTea:(BOOL)tea
{
  v13.receiver = self;
  v13.super_class = TUNearbyDeviceHandleCapabilities;
  result = [(TUNearbyDeviceHandleCapabilities *)&v13 init];
  if (result)
  {
    result->_avLessCapable = capable;
    result->_lagunaCapable = lagunaCapable;
    result->_audioCallCapable = callCapable;
    result->_telephonyRelayCapable = relayCapable;
    result->_greenTea = tea;
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

- (TUNearbyDeviceHandleCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_isAVLessCapable);
  v6 = [coderCopy decodeBoolForKey:v5];

  v7 = NSStringFromSelector(sel_isLagunaCapable);
  v8 = [coderCopy decodeBoolForKey:v7];

  v9 = NSStringFromSelector(sel_isAudioCallCapable);
  v10 = [coderCopy decodeBoolForKey:v9];

  v11 = NSStringFromSelector(sel_isTelephonyRelayCapable);
  v12 = [coderCopy decodeBoolForKey:v11];

  v13 = NSStringFromSelector(sel_isGreenTea);
  v14 = [coderCopy decodeBoolForKey:v13];

  return [(TUNearbyDeviceHandleCapabilities *)self initWithAVLessCapable:v6 lagunaCapable:v8 audioCallCapable:v10 telephonyRelayCapable:v12 greenTea:v14];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  isAVLessCapable = [(TUNearbyDeviceHandleCapabilities *)self isAVLessCapable];
  v6 = NSStringFromSelector(sel_isAVLessCapable);
  [coderCopy encodeBool:isAVLessCapable forKey:v6];

  isLagunaCapable = [(TUNearbyDeviceHandleCapabilities *)self isLagunaCapable];
  v8 = NSStringFromSelector(sel_isLagunaCapable);
  [coderCopy encodeBool:isLagunaCapable forKey:v8];

  isAudioCallCapable = [(TUNearbyDeviceHandleCapabilities *)self isAudioCallCapable];
  v10 = NSStringFromSelector(sel_isAudioCallCapable);
  [coderCopy encodeBool:isAudioCallCapable forKey:v10];

  isTelephonyRelayCapable = [(TUNearbyDeviceHandleCapabilities *)self isTelephonyRelayCapable];
  v12 = NSStringFromSelector(sel_isTelephonyRelayCapable);
  [coderCopy encodeBool:isTelephonyRelayCapable forKey:v12];

  isGreenTea = [(TUNearbyDeviceHandleCapabilities *)self isGreenTea];
  v14 = NSStringFromSelector(sel_isGreenTea);
  [coderCopy encodeBool:isGreenTea forKey:v14];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  isAVLessCapable = [(TUNearbyDeviceHandleCapabilities *)self isAVLessCapable];
  isLagunaCapable = [(TUNearbyDeviceHandleCapabilities *)self isLagunaCapable];
  isAudioCallCapable = [(TUNearbyDeviceHandleCapabilities *)self isAudioCallCapable];
  isTelephonyRelayCapable = [(TUNearbyDeviceHandleCapabilities *)self isTelephonyRelayCapable];
  isGreenTea = [(TUNearbyDeviceHandleCapabilities *)self isGreenTea];

  return [v4 initWithAVLessCapable:isAVLessCapable lagunaCapable:isLagunaCapable audioCallCapable:isAudioCallCapable telephonyRelayCapable:isTelephonyRelayCapable greenTea:isGreenTea];
}

@end