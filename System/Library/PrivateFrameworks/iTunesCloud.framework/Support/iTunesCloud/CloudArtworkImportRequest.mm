@interface CloudArtworkImportRequest
- (CloudArtworkImportRequest)init;
- (CloudArtworkImportRequest)initWithClientIdentity:(id)identity;
@end

@implementation CloudArtworkImportRequest

- (CloudArtworkImportRequest)initWithClientIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = CloudArtworkImportRequest;
  v6 = [(CloudArtworkImportRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientIdentity, identity);
    v7->_allowsCellularData = 1;
  }

  return v7;
}

- (CloudArtworkImportRequest)init
{
  v3 = MSVTCCIdentityForCurrentProcess();
  v4 = [(CloudArtworkImportRequest *)self initWithClientIdentity:v3];

  return v4;
}

@end