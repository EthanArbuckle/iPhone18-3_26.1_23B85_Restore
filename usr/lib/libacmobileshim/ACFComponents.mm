@interface ACFComponents
+ (id)components;
+ (void)setComponents:(id)components;
- (id)createLocalAuthenticationContext;
- (id)createTransport;
- (void)dealloc;
@end

@implementation ACFComponents

+ (id)components
{
  objc_sync_enter(self);
  v3 = sComponents;
  objc_sync_exit(self);
  return v3;
}

+ (void)setComponents:(id)components
{
  objc_sync_enter(self);
  if (([components isEqual:sComponents] & 1) == 0)
  {
    v5 = sComponents;
    sComponents = components;
  }

  objc_sync_exit(self);
}

- (void)dealloc
{
  [(ACFComponents *)self setCryptograph:0];
  [(ACFComponents *)self setKeychainManager:0];
  [(ACFComponents *)self setCertificateStoragePolicy:0];
  [(ACFComponents *)self setTransportClass:0];
  [(ACFComponents *)self setLocalAuthenticationContextClass:0];
  v3.receiver = self;
  v3.super_class = ACFComponents;
  [(ACFComponents *)&v3 dealloc];
}

- (id)createTransport
{
  [(ACFComponents *)self transportClass];
  v2 = objc_opt_new();

  return v2;
}

- (id)createLocalAuthenticationContext
{
  [(ACFComponents *)self localAuthenticationContextClass];
  v2 = objc_opt_new();

  return v2;
}

@end