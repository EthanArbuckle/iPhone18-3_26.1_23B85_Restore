@interface SSLaunchOnenessAppCommand
- (SSLaunchOnenessAppCommand)initWithApplicationBundleId:(id)id;
- (SSLaunchOnenessAppCommand)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSLaunchOnenessAppCommand

- (SSLaunchOnenessAppCommand)initWithApplicationBundleId:(id)id
{
  idCopy = id;
  v9.receiver = self;
  v9.super_class = SSLaunchOnenessAppCommand;
  v6 = [(SSLaunchOnenessAppCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationBundleId, id);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SSLaunchOnenessAppCommand;
  coderCopy = coder;
  [(SSLaunchOnenessAppCommand *)&v6 encodeWithCoder:coderCopy];
  v5 = [(SSLaunchOnenessAppCommand *)self applicationBundleId:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"applicationBundleId"];
}

- (SSLaunchOnenessAppCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SSLaunchOnenessAppCommand;
  v5 = [(SSLaunchOnenessAppCommand *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleId"];
    [(SSLaunchOnenessAppCommand *)v5 setApplicationBundleId:v6];
  }

  return v5;
}

@end