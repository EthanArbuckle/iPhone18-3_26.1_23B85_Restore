@interface SBSAbstractApplicationService
- (SBSApplicationClient)client;
@end

@implementation SBSAbstractApplicationService

- (SBSApplicationClient)client
{
  v4.receiver = self;
  v4.super_class = SBSAbstractApplicationService;
  client = [(SBSAbstractFacilityService *)&v4 client];

  return client;
}

@end