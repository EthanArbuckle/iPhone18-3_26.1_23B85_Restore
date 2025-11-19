@interface SBSAbstractSystemService
- (SBSSystemServiceClient)client;
@end

@implementation SBSAbstractSystemService

- (SBSSystemServiceClient)client
{
  v4.receiver = self;
  v4.super_class = SBSAbstractSystemService;
  v2 = [(SBSAbstractFacilityService *)&v4 client];

  return v2;
}

@end