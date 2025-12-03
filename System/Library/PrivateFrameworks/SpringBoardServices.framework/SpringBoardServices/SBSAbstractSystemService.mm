@interface SBSAbstractSystemService
- (SBSSystemServiceClient)client;
@end

@implementation SBSAbstractSystemService

- (SBSSystemServiceClient)client
{
  v4.receiver = self;
  v4.super_class = SBSAbstractSystemService;
  client = [(SBSAbstractFacilityService *)&v4 client];

  return client;
}

@end