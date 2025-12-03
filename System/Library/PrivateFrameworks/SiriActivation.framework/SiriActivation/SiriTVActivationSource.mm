@interface SiriTVActivationSource
+ (id)activationSourceForIdentifier:(int64_t)identifier;
- (void)setDeviceIdentifier:(id)identifier;
- (void)setRemoteType:(unint64_t)type;
@end

@implementation SiriTVActivationSource

+ (id)activationSourceForIdentifier:(int64_t)identifier
{
  v3 = [(SiriLongPressButtonSource *)[SiriTVActivationSource alloc] _initWithButtonIdentifier:identifier];
  [v3 setLongPressInterval:0.0];
  v4 = objc_alloc_init(SiriTVLongPressButtonContext);
  [(SiriLongPressButtonContext *)v4 setButtonDownTimestamp:0.0];
  [v3 setContext:v4];

  return v3;
}

- (void)setDeviceIdentifier:(id)identifier
{
  v4 = [identifier copy];
  deviceIdentifier = self->_deviceIdentifier;
  self->_deviceIdentifier = v4;

  context = [(SiriTVActivationSource *)self context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    context2 = [(SiriTVActivationSource *)self context];
    if ([(NSString *)self->_deviceIdentifier length])
    {
      v8 = self->_deviceIdentifier;
    }

    else
    {
      v8 = &stru_1F47C3998;
    }

    [context2 setActiveDeviceBluetoothIdentifier:v8];
  }
}

- (void)setRemoteType:(unint64_t)type
{
  self->_remoteType = type;
  context = [(SiriTVActivationSource *)self context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    context2 = [(SiriTVActivationSource *)self context];
    [context2 setRemoteType:type];
  }
}

@end