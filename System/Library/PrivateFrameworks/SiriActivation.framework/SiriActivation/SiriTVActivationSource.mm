@interface SiriTVActivationSource
+ (id)activationSourceForIdentifier:(int64_t)a3;
- (void)setDeviceIdentifier:(id)a3;
- (void)setRemoteType:(unint64_t)a3;
@end

@implementation SiriTVActivationSource

+ (id)activationSourceForIdentifier:(int64_t)a3
{
  v3 = [(SiriLongPressButtonSource *)[SiriTVActivationSource alloc] _initWithButtonIdentifier:a3];
  [v3 setLongPressInterval:0.0];
  v4 = objc_alloc_init(SiriTVLongPressButtonContext);
  [(SiriLongPressButtonContext *)v4 setButtonDownTimestamp:0.0];
  [v3 setContext:v4];

  return v3;
}

- (void)setDeviceIdentifier:(id)a3
{
  v4 = [a3 copy];
  deviceIdentifier = self->_deviceIdentifier;
  self->_deviceIdentifier = v4;

  v6 = [(SiriTVActivationSource *)self context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(SiriTVActivationSource *)self context];
    if ([(NSString *)self->_deviceIdentifier length])
    {
      v8 = self->_deviceIdentifier;
    }

    else
    {
      v8 = &stru_1F47C3998;
    }

    [v9 setActiveDeviceBluetoothIdentifier:v8];
  }
}

- (void)setRemoteType:(unint64_t)a3
{
  self->_remoteType = a3;
  v5 = [(SiriTVActivationSource *)self context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(SiriTVActivationSource *)self context];
    [v7 setRemoteType:a3];
  }
}

@end