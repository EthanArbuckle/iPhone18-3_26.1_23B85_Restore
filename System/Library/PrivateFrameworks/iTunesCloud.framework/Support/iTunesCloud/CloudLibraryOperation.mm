@interface CloudLibraryOperation
- (CloudLibraryOperation)init;
- (CloudLibraryOperation)initWithCoder:(id)coder;
- (CloudLibraryOperation)initWithConfiguration:(id)configuration;
- (CloudLibraryOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CloudLibraryOperation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  configuration = [(CloudLibraryOperation *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"configuration"];

  [coderCopy encodeTCCIdentity:self->_clientIdentity forKey:@"clientIdentity"];
}

- (CloudLibraryOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  v9 = [coderCopy decodeTCCIdentityForKey:@"clientIdentity"];
  v10 = [(CloudLibraryOperation *)self initWithConfiguration:v8 clientIdentity:v9];

  return v10;
}

- (CloudLibraryOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity
{
  configurationCopy = configuration;
  identityCopy = identity;
  v19.receiver = self;
  v19.super_class = CloudLibraryOperation;
  v9 = [(CloudLibraryOperation *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    userIdentity = [configurationCopy userIdentity];
    userIdentity = v10->_userIdentity;
    v10->_userIdentity = userIdentity;

    userIdentityStore = [configurationCopy userIdentityStore];
    userIdentityStore = v10->_userIdentityStore;
    v10->_userIdentityStore = userIdentityStore;

    objc_storeStrong(&v10->_clientIdentity, identity);
    userIdentity2 = [configurationCopy userIdentity];
    v16 = [ML3MusicLibrary musicLibraryForUserAccount:userIdentity2];
    musicLibrary = v10->_musicLibrary;
    v10->_musicLibrary = v16;
  }

  return v10;
}

- (CloudLibraryOperation)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = MSVTCCIdentityForCurrentProcess();
  v6 = [(CloudLibraryOperation *)self initWithConfiguration:configurationCopy clientIdentity:v5];

  return v6;
}

- (CloudLibraryOperation)init
{
  v3 = objc_opt_new();
  v4 = [(CloudLibraryOperation *)self initWithConfiguration:v3];

  return v4;
}

@end