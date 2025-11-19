@interface SBSAbstractApplicationService
- (SBSApplicationClient)client;
@end

@implementation SBSAbstractApplicationService

- (SBSApplicationClient)client
{
  v4.receiver = self;
  v4.super_class = SBSAbstractApplicationService;
  v2 = [(SBSAbstractFacilityService *)&v4 client];

  return v2;
}

@end