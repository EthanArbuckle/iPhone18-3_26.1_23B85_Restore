@interface PKLaunchRequest
+ (id)launchRequestWithUUID:(id)a3 launchPersona:(id)a4;
- (id)_initWithUUID:(id)a3 launchPersona:(id)a4;
@end

@implementation PKLaunchRequest

- (id)_initWithUUID:(id)a3 launchPersona:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PKLaunchRequest;
  v8 = [(PKLaunchRequest *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    uuid = v8->_uuid;
    v8->_uuid = v9;

    objc_storeStrong(&v8->_launchPersona, a4);
  }

  return v8;
}

+ (id)launchRequestWithUUID:(id)a3 launchPersona:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithUUID:v7 launchPersona:v6];

  return v8;
}

@end