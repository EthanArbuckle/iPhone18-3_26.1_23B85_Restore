@interface SBSwitcherKeyboardSuppressionMode
+ (id)newSuppressionModeForSwitcherScenesFromAppLayouts:(id)layouts;
+ (id)suppressionModeForAllScenes;
+ (id)suppressionModeNone;
- (BOOL)isEqual:(id)equal;
- (id)_initWithAppLayouts:(id)layouts suppressionType:(int64_t)type;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBSwitcherKeyboardSuppressionMode

+ (id)suppressionModeForAllScenes
{
  if (suppressionModeForAllScenes_onceToken != -1)
  {
    +[SBSwitcherKeyboardSuppressionMode suppressionModeForAllScenes];
  }

  v3 = suppressionModeForAllScenes___allScenesSuppressionMode;

  return v3;
}

+ (id)suppressionModeNone
{
  if (suppressionModeNone_onceToken != -1)
  {
    +[SBSwitcherKeyboardSuppressionMode suppressionModeNone];
  }

  v3 = suppressionModeNone___noScenesSuppressionMode;

  return v3;
}

- (id)_initWithAppLayouts:(id)layouts suppressionType:(int64_t)type
{
  layoutsCopy = layouts;
  v11.receiver = self;
  v11.super_class = SBSwitcherKeyboardSuppressionMode;
  v8 = [(SBSwitcherKeyboardSuppressionMode *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appLayouts, layouts);
    v9->_type = type;
  }

  return v9;
}

+ (id)newSuppressionModeForSwitcherScenesFromAppLayouts:(id)layouts
{
  layoutsCopy = layouts;
  if (!layoutsCopy)
  {
    [(SBSwitcherKeyboardSuppressionMode *)a2 newSuppressionModeForSwitcherScenesFromAppLayouts:self];
  }

  v6 = [[SBSwitcherKeyboardSuppressionMode alloc] _initWithAppLayouts:layoutsCopy suppressionType:2];

  return v6;
}

void __56__SBSwitcherKeyboardSuppressionMode_suppressionModeNone__block_invoke()
{
  v0 = [SBSwitcherKeyboardSuppressionMode alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v1 = [(SBSwitcherKeyboardSuppressionMode *)v0 _initWithAppLayouts:v3 suppressionType:0];
  v2 = suppressionModeNone___noScenesSuppressionMode;
  suppressionModeNone___noScenesSuppressionMode = v1;
}

void __64__SBSwitcherKeyboardSuppressionMode_suppressionModeForAllScenes__block_invoke()
{
  v0 = [SBSwitcherKeyboardSuppressionMode alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v1 = [(SBSwitcherKeyboardSuppressionMode *)v0 _initWithAppLayouts:v3 suppressionType:1];
  v2 = suppressionModeForAllScenes___allScenesSuppressionMode;
  suppressionModeForAllScenes___allScenesSuppressionMode = v1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = self->_type;
      if (type == [(SBSwitcherKeyboardSuppressionMode *)v5 type])
      {
        appLayouts = [(SBSwitcherKeyboardSuppressionMode *)v5 appLayouts];
        v8 = BSEqualSets();
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSwitcherKeyboardSuppressionMode *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  type = self->_type;
  v6 = @"none";
  if (type == 1)
  {
    v6 = @"allScenes";
  }

  if (type == 2)
  {
    v7 = @"switcherScenesOnly";
  }

  else
  {
    v7 = v6;
  }

  [v3 appendString:v7 withName:@"type"];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSwitcherKeyboardSuppressionMode *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

+ (void)newSuppressionModeForSwitcherScenesFromAppLayouts:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSwitcherKeyboardSuppressionMode.m" lineNumber:45 description:@"appLayouts cannot be nil."];
}

@end