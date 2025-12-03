@interface INRegistrationTTLOverride
- (BOOL)hasOverride;
- (INRegistrationTTLOverride)init;
- (double)overrideTimeInterval;
@end

@implementation INRegistrationTTLOverride

- (BOOL)hasOverride
{
  v2 = *((swift_isaMask & self->super.isa) + 0x78);
  selfCopy = self;
  v2();
  LOBYTE(v2) = v4;

  return (v2 & 1) == 0;
}

- (double)overrideTimeInterval
{
  v2 = *((swift_isaMask & self->super.isa) + 0x78);
  selfCopy = self;
  v4 = COERCE_DOUBLE(v2());
  v6 = v5;

  result = v4;
  if (v6)
  {
    return -1.0;
  }

  return result;
}

- (INRegistrationTTLOverride)init
{
  v3 = OBJC_IVAR___INRegistrationTTLOverride_defaults;
  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithSuiteName:v5];

  *(&self->super.isa + v3) = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RegistrationTTLOverride();
  return [(INRegistrationTTLOverride *)&v8 init];
}

@end