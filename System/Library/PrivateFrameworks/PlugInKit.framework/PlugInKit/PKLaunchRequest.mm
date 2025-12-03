@interface PKLaunchRequest
+ (id)launchRequestWithUUID:(id)d launchPersona:(id)persona;
- (id)_initWithUUID:(id)d launchPersona:(id)persona;
@end

@implementation PKLaunchRequest

- (id)_initWithUUID:(id)d launchPersona:(id)persona
{
  dCopy = d;
  personaCopy = persona;
  v12.receiver = self;
  v12.super_class = PKLaunchRequest;
  v8 = [(PKLaunchRequest *)&v12 init];
  if (v8)
  {
    v9 = [dCopy copy];
    uuid = v8->_uuid;
    v8->_uuid = v9;

    objc_storeStrong(&v8->_launchPersona, persona);
  }

  return v8;
}

+ (id)launchRequestWithUUID:(id)d launchPersona:(id)persona
{
  personaCopy = persona;
  dCopy = d;
  v8 = [[self alloc] _initWithUUID:dCopy launchPersona:personaCopy];

  return v8;
}

@end