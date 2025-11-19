@interface SBDisplayControllerInfo
- (SBDisplayControllerInfo)initWithController:(id)a3 windowingMode:(int64_t)a4 priorityLevel:(unint64_t)a5 deactivationReasons:(unint64_t)a6;
- (id)description;
@end

@implementation SBDisplayControllerInfo

- (SBDisplayControllerInfo)initWithController:(id)a3 windowingMode:(int64_t)a4 priorityLevel:(unint64_t)a5 deactivationReasons:(unint64_t)a6
{
  v12 = a3;
  if (!v12)
  {
    [SBDisplayControllerInfo initWithController:a2 windowingMode:self priorityLevel:? deactivationReasons:?];
  }

  if (!SBDisplayAssertionLevelIsValid(a5))
  {
    [SBDisplayControllerInfo initWithController:a2 windowingMode:self priorityLevel:? deactivationReasons:?];
  }

  v16.receiver = self;
  v16.super_class = SBDisplayControllerInfo;
  v13 = [(SBDisplayControllerInfo *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_displayController, a3);
    v14->_windowingMode = a4;
    v14->_priorityLevel = a5;
    v14->_deactivationReasons = a6;
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

  v9 = [v3 build];

  return v9;
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