@interface SBMirroredDisplayControllerProvider
- (SBMirroredDisplayControllerProvider)initWithExternalDisplayDefaults:(id)defaults;
- (id)displayControllerInfoForConnectingDisplay:(id)display configuration:(id)configuration;
@end

@implementation SBMirroredDisplayControllerProvider

- (SBMirroredDisplayControllerProvider)initWithExternalDisplayDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v9.receiver = self;
  v9.super_class = SBMirroredDisplayControllerProvider;
  v6 = [(SBMirroredDisplayControllerProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_externalDisplayDefaults, defaults);
  }

  return v7;
}

- (id)displayControllerInfoForConnectingDisplay:(id)display configuration:(id)configuration
{
  if ([display _sb_requiresBaselineController])
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