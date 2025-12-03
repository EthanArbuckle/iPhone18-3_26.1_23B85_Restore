@interface UNCRemoteNotificationClient
+ (void)initialize;
- (UNCRemoteNotificationClient)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNCRemoteNotificationClient

+ (void)initialize
{
  [MEMORY[0x1E696ACD0] setClass:objc_opt_class() forClassName:@"UNRemoteNotificationClient"];
  v2 = MEMORY[0x1E696ACD0];
  v3 = objc_opt_class();

  [v2 setClass:v3 forClassName:@"SBRemoteNotificationClient"];
}

- (UNCRemoteNotificationClient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = UNCRemoteNotificationClient;
  v5 = [(UNCRemoteNotificationClient *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SBEnvironment"];
    [(UNCRemoteNotificationClient *)v5 setEnvironment:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SBLastKnownDeviceToken"];
    [(UNCRemoteNotificationClient *)v5 setLastKnownDeviceToken:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SBTokenId"];
    [(UNCRemoteNotificationClient *)v5 setTokenIdentifier:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  environment = [(UNCRemoteNotificationClient *)self environment];
  [coderCopy encodeObject:environment forKey:@"SBEnvironment"];

  lastKnownDeviceToken = [(UNCRemoteNotificationClient *)self lastKnownDeviceToken];
  [coderCopy encodeObject:lastKnownDeviceToken forKey:@"SBLastKnownDeviceToken"];

  tokenIdentifier = [(UNCRemoteNotificationClient *)self tokenIdentifier];
  [coderCopy encodeObject:tokenIdentifier forKey:@"SBTokenId"];
}

@end