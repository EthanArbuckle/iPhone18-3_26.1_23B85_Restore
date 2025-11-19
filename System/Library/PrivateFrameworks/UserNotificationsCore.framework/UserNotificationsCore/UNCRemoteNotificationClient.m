@interface UNCRemoteNotificationClient
+ (void)initialize;
- (UNCRemoteNotificationClient)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNCRemoteNotificationClient

+ (void)initialize
{
  [MEMORY[0x1E696ACD0] setClass:objc_opt_class() forClassName:@"UNRemoteNotificationClient"];
  v2 = MEMORY[0x1E696ACD0];
  v3 = objc_opt_class();

  [v2 setClass:v3 forClassName:@"SBRemoteNotificationClient"];
}

- (UNCRemoteNotificationClient)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UNCRemoteNotificationClient;
  v5 = [(UNCRemoteNotificationClient *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SBEnvironment"];
    [(UNCRemoteNotificationClient *)v5 setEnvironment:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SBLastKnownDeviceToken"];
    [(UNCRemoteNotificationClient *)v5 setLastKnownDeviceToken:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SBTokenId"];
    [(UNCRemoteNotificationClient *)v5 setTokenIdentifier:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNCRemoteNotificationClient *)self environment];
  [v4 encodeObject:v5 forKey:@"SBEnvironment"];

  v6 = [(UNCRemoteNotificationClient *)self lastKnownDeviceToken];
  [v4 encodeObject:v6 forKey:@"SBLastKnownDeviceToken"];

  v7 = [(UNCRemoteNotificationClient *)self tokenIdentifier];
  [v4 encodeObject:v7 forKey:@"SBTokenId"];
}

@end