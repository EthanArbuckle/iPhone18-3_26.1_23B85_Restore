@interface SBSAbstractFacilityService
+ (Class)serviceFacilityClientClass;
- (OS_dispatch_queue)callbackQueue;
- (SBSAbstractFacilityService)init;
- (void)dealloc;
@end

@implementation SBSAbstractFacilityService

- (SBSAbstractFacilityService)init
{
  v6.receiver = self;
  v6.super_class = SBSAbstractFacilityService;
  v2 = [(SBSAbstractFacilityService *)&v6 init];
  if (v2)
  {
    v3 = +[SBSServiceFacilityClient checkOutClientWithClass:](SBSServiceFacilityClient, "checkOutClientWithClass:", [objc_opt_class() serviceFacilityClientClass]);
    client = v2->_client;
    v2->_client = v3;
  }

  return v2;
}

- (void)dealloc
{
  [SBSServiceFacilityClient checkInClient:self->_client];
  v3.receiver = self;
  v3.super_class = SBSAbstractFacilityService;
  [(SBSAbstractFacilityService *)&v3 dealloc];
}

- (OS_dispatch_queue)callbackQueue
{
  v2 = [(SBSAbstractFacilityService *)self client];
  v3 = [v2 calloutQueue];

  return v3;
}

+ (Class)serviceFacilityClientClass
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"SBSAbstractFacilityService.m" lineNumber:42 description:@"A service identifier must be provided."];

  return 0;
}

@end