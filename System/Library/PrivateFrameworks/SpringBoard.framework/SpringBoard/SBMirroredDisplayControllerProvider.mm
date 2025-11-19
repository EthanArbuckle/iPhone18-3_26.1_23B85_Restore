@interface SBMirroredDisplayControllerProvider
- (SBMirroredDisplayControllerProvider)initWithExternalDisplayDefaults:(id)a3;
- (id)displayControllerInfoForConnectingDisplay:(id)a3 configuration:(id)a4;
@end

@implementation SBMirroredDisplayControllerProvider

- (SBMirroredDisplayControllerProvider)initWithExternalDisplayDefaults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBMirroredDisplayControllerProvider;
  v6 = [(SBMirroredDisplayControllerProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_externalDisplayDefaults, a3);
  }

  return v7;
}

- (id)displayControllerInfoForConnectingDisplay:(id)a3 configuration:(id)a4
{
  if ([a3 _sb_requiresBaselineController])
  {
    v5 = [[SBMirroredDisplayController alloc] initWithExternalDisplayDefaults:self->_externalDisplayDefaults];
    v6 = [[SBDisplayControllerInfo alloc] initWithController:v5 windowingMode:0 priorityLevel:1 deactivationReasons:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end