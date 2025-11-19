@interface SBSwitcherWindowManagementContext
+ (id)singleAppContext;
- (BOOL)isChamoisOrFlexibleWindowing;
- (BOOL)isEqual:(id)a3;
- (SBSwitcherWindowManagementContext)initWithBaseStyle:(unint64_t)a3 automaticStageCreationEnabled:(BOOL)a4 restoresPreviouslyOpenWindows:(BOOL)a5;
- (int64_t)telemetryMultitaskingMode;
@end

@implementation SBSwitcherWindowManagementContext

- (BOOL)isChamoisOrFlexibleWindowing
{
  baseStyle = self->_baseStyle;
  if (baseStyle == 2)
  {
    return 1;
  }

  else
  {
    return baseStyle == 1 && self->_automaticStageCreationEnabled;
  }
}

- (SBSwitcherWindowManagementContext)initWithBaseStyle:(unint64_t)a3 automaticStageCreationEnabled:(BOOL)a4 restoresPreviouslyOpenWindows:(BOOL)a5
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = SBSwitcherWindowManagementContext;
  v9 = [(SBSwitcherWindowManagementContext *)&v15 init];
  if (v9)
  {
    if (!a3 && v6)
    {
      [SBSwitcherWindowManagementContext initWithBaseStyle:a2 automaticStageCreationEnabled:v9 restoresPreviouslyOpenWindows:?];
    }

    v9->_baseStyle = a3;
    v9->_automaticStageCreationEnabled = v6;
    v9->_restoresPreviouslyOpenWindows = a5;
    v10 = objc_alloc_init(MEMORY[0x277CF0C40]);
    v11 = [v10 appendUnsignedInteger:v9->_baseStyle];
    v12 = [v10 appendBool:v9->_automaticStageCreationEnabled];
    v13 = [v10 appendBool:v9->_restoresPreviouslyOpenWindows];
    v9->_hash = [v10 hash];
  }

  return v9;
}

+ (id)singleAppContext
{
  v2 = [[a1 alloc] initWithBaseStyle:0 automaticStageCreationEnabled:0 restoresPreviouslyOpenWindows:0];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_baseStyle == v5->_baseStyle && self->_automaticStageCreationEnabled == v5->_automaticStageCreationEnabled && self->_restoresPreviouslyOpenWindows == v5->_restoresPreviouslyOpenWindows;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (int64_t)telemetryMultitaskingMode
{
  v3 = [(SBSwitcherWindowManagementContext *)self baseStyle];
  if (!v3)
  {
    return 1;
  }

  if (v3 != 2)
  {
    return 0;
  }

  if ([(SBSwitcherWindowManagementContext *)self isAutomaticStageCreationEnabled])
  {
    return 3;
  }

  return 2;
}

- (void)initWithBaseStyle:(uint64_t)a1 automaticStageCreationEnabled:(uint64_t)a2 restoresPreviouslyOpenWindows:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSwitcherWindowManagementContext.m" lineNumber:19 description:@"Stage manager cannot be enabled if multitasking isn't enabled"];
}

@end