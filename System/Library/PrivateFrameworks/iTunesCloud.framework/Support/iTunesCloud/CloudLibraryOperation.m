@interface CloudLibraryOperation
- (CloudLibraryOperation)init;
- (CloudLibraryOperation)initWithCoder:(id)a3;
- (CloudLibraryOperation)initWithConfiguration:(id)a3;
- (CloudLibraryOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CloudLibraryOperation

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CloudLibraryOperation *)self configuration];
  [v5 encodeObject:v4 forKey:@"configuration"];

  [v5 encodeTCCIdentity:self->_clientIdentity forKey:@"clientIdentity"];
}

- (CloudLibraryOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
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

  v9 = [v4 decodeTCCIdentityForKey:@"clientIdentity"];
  v10 = [(CloudLibraryOperation *)self initWithConfiguration:v8 clientIdentity:v9];

  return v10;
}

- (CloudLibraryOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = CloudLibraryOperation;
  v9 = [(CloudLibraryOperation *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    v11 = [v7 userIdentity];
    userIdentity = v10->_userIdentity;
    v10->_userIdentity = v11;

    v13 = [v7 userIdentityStore];
    userIdentityStore = v10->_userIdentityStore;
    v10->_userIdentityStore = v13;

    objc_storeStrong(&v10->_clientIdentity, a4);
    v15 = [v7 userIdentity];
    v16 = [ML3MusicLibrary musicLibraryForUserAccount:v15];
    musicLibrary = v10->_musicLibrary;
    v10->_musicLibrary = v16;
  }

  return v10;
}

- (CloudLibraryOperation)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = MSVTCCIdentityForCurrentProcess();
  v6 = [(CloudLibraryOperation *)self initWithConfiguration:v4 clientIdentity:v5];

  return v6;
}

- (CloudLibraryOperation)init
{
  v3 = objc_opt_new();
  v4 = [(CloudLibraryOperation *)self initWithConfiguration:v3];

  return v4;
}

@end