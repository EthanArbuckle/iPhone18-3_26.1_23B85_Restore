@interface SBDisplayControllerInfo
- (SBDisplayControllerInfo)initWithController:(id)controller windowingMode:(int64_t)mode priorityLevel:(unint64_t)level deactivationReasons:(unint64_t)reasons;
- (id)description;
@end

@implementation SBDisplayControllerInfo

- (SBDisplayControllerInfo)initWithController:(id)controller windowingMode:(int64_t)mode priorityLevel:(unint64_t)level deactivationReasons:(unint64_t)reasons
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    [SBDisplayControllerInfo initWithController:a2 windowingMode:self priorityLevel:? deactivationReasons:?];
  }

  if (!SBDisplayAssertionLevelIsValid(level))
  {
    [SBDisplayControllerInfo initWithController:a2 windowingMode:self priorityLevel:? deactivationReasons:?];
  }

  v16.receiver = self;
  v16.super_class = SBDisplayControllerInfo;
  v13 = [(SBDisplayControllerInfo *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_displayController, controller);
    v14->_windowingMode = mode;
    v14->_priorityLevel = level;
    v14->_deactivationReasons = reasons;
  }

  return v14;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_displayController withName:@"displayController"];
  v5 = SBDisplayWindowingModeDescription(self->_windowingMode);
  [v3 appendString:v5 withName:@"windowingMode"];

  v6 = SBDisplayAssertionLevelDescription(self->_priorityLevel);
  [v3 appendString:v6 withName:@"priorityLevel"];

  v7 = UIApplicationSceneDeactivationReasonMaskDescriptionComponents();
  v8 = [v7 description];
  [v3 appendString:v8 withName:@"deactivationReasons"];

  build = [v3 build];

  return build;
}

- (void)initWithController:(uint64_t)a1 windowingMode:(uint64_t)a2 priorityLevel:deactivationReasons:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDisplayControlling.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"displayController"}];
}

- (void)initWithController:(uint64_t)a1 windowingMode:(uint64_t)a2 priorityLevel:deactivationReasons:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDisplayControlling.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"SBDisplayAssertionLevelIsValid(priorityLevel)"}];
}

@end