@interface SSLaunchOnenessAppCommand
- (SSLaunchOnenessAppCommand)initWithApplicationBundleId:(id)a3;
- (SSLaunchOnenessAppCommand)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSLaunchOnenessAppCommand

- (SSLaunchOnenessAppCommand)initWithApplicationBundleId:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SSLaunchOnenessAppCommand;
  v6 = [(SSLaunchOnenessAppCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationBundleId, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SSLaunchOnenessAppCommand;
  v4 = a3;
  [(SSLaunchOnenessAppCommand *)&v6 encodeWithCoder:v4];
  v5 = [(SSLaunchOnenessAppCommand *)self applicationBundleId:v6.receiver];
  [v4 encodeObject:v5 forKey:@"applicationBundleId"];
}

- (SSLaunchOnenessAppCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SSLaunchOnenessAppCommand;
  v5 = [(SSLaunchOnenessAppCommand *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleId"];
    [(SSLaunchOnenessAppCommand *)v5 setApplicationBundleId:v6];
  }

  return v5;
}

@end