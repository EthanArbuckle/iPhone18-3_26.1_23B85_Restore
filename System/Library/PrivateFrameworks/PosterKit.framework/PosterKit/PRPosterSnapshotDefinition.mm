@interface PRPosterSnapshotDefinition
+ (int64_t)snapshotOptionsForDefinition:(id)definition;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDefinition:(id)definition;
- (PRPosterSnapshotDefinition)initWithUniqueIdentifier:(id)identifier includeHeaderElements:(BOOL)elements includesComplications:(BOOL)complications layerSet:(unint64_t)set isUnlocked:(BOOL)unlocked renderingContent:(int64_t)content renderingMode:(int64_t)mode previewContent:(unint64_t)self0;
- (PRPosterSnapshotDefinition)initWithUniqueIdentifier:(id)identifier includeHeaderElements:(BOOL)elements includesComplications:(BOOL)complications levelSets:(id)sets isUnlocked:(BOOL)unlocked renderingContent:(int64_t)content renderingMode:(int64_t)mode previewContent:(unint64_t)self0 boundingShape:(int64_t)self1 showingIdealizedTime:(BOOL)self2 isIdle:(BOOL)self3;
- (id)description;
- (unint64_t)hash;
- (void)applySceneSettings:(id)settings;
@end

@implementation PRPosterSnapshotDefinition

- (PRPosterSnapshotDefinition)initWithUniqueIdentifier:(id)identifier includeHeaderElements:(BOOL)elements includesComplications:(BOOL)complications levelSets:(id)sets isUnlocked:(BOOL)unlocked renderingContent:(int64_t)content renderingMode:(int64_t)mode previewContent:(unint64_t)self0 boundingShape:(int64_t)self1 showingIdealizedTime:(BOOL)self2 isIdle:(BOOL)self3
{
  identifierCopy = identifier;
  setsCopy = sets;
  v22 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v22)
  {
    [PRPosterSnapshotDefinition initWithUniqueIdentifier:includeHeaderElements:includesComplications:levelSets:isUnlocked:renderingContent:renderingMode:previewContent:boundingShape:showingIdealizedTime:isIdle:];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterSnapshotDefinition initWithUniqueIdentifier:includeHeaderElements:includesComplications:levelSets:isUnlocked:renderingContent:renderingMode:previewContent:boundingShape:showingIdealizedTime:isIdle:];
  }

  v23 = setsCopy;
  NSClassFromString(&cfstr_Nsarray.isa);
  if (!v23)
  {
    [PRPosterSnapshotDefinition initWithUniqueIdentifier:includeHeaderElements:includesComplications:levelSets:isUnlocked:renderingContent:renderingMode:previewContent:boundingShape:showingIdealizedTime:isIdle:];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterSnapshotDefinition initWithUniqueIdentifier:includeHeaderElements:includesComplications:levelSets:isUnlocked:renderingContent:renderingMode:previewContent:boundingShape:showingIdealizedTime:isIdle:];
  }

  if (![v23 count])
  {
    [PRPosterSnapshotDefinition initWithUniqueIdentifier:a2 includeHeaderElements:self includesComplications:? levelSets:? isUnlocked:? renderingContent:? renderingMode:? previewContent:? boundingShape:? showingIdealizedTime:? isIdle:?];
  }

  v31.receiver = self;
  v31.super_class = PRPosterSnapshotDefinition;
  v24 = [(PRPosterSnapshotDefinition *)&v31 init];
  v25 = v24;
  if (v24)
  {
    v24->_includesHeaderElements = elements;
    v24->_includesComplications = complications;
    v26 = [v23 copy];
    levelSets = v25->_levelSets;
    v25->_levelSets = v26;

    v25->_layerSet = PRPosterSnapshotDefinitionLayerSetForPRPosterLevelSets(v23);
    v25->_unlocked = unlocked;
    v25->_renderingContent = content;
    v25->_renderingMode = mode;
    v25->_previewContent = previewContent;
    v28 = [v22 copy];
    uniqueIdentifier = v25->_uniqueIdentifier;
    v25->_uniqueIdentifier = v28;

    v25->_boundingShape = shape;
    v25->_showingIdealizedTime = time;
    v25->_isIdle = idle;
  }

  return v25;
}

- (PRPosterSnapshotDefinition)initWithUniqueIdentifier:(id)identifier includeHeaderElements:(BOOL)elements includesComplications:(BOOL)complications layerSet:(unint64_t)set isUnlocked:(BOOL)unlocked renderingContent:(int64_t)content renderingMode:(int64_t)mode previewContent:(unint64_t)self0
{
  unlockedCopy = unlocked;
  complicationsCopy = complications;
  elementsCopy = elements;
  identifierCopy = identifier;
  v17 = PRPosterLevelSetsForPRSPosterSnapshotDefinitionLayerSet(set);
  v18 = [(PRPosterSnapshotDefinition *)self initWithUniqueIdentifier:identifierCopy includeHeaderElements:elementsCopy includesComplications:complicationsCopy levelSets:v17 isUnlocked:unlockedCopy renderingContent:content renderingMode:mode previewContent:previewContent];

  if (v18)
  {
    v18->_layerSet = set;
  }

  return v18;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendBool:self->_includesHeaderElements];
  v5 = [builder appendBool:self->_includesComplications];
  v6 = [builder appendObject:self->_levelSets];
  v7 = [builder appendBool:self->_unlocked];
  v8 = [builder appendUnsignedInteger:self->_renderingContent];
  v9 = [builder appendUnsignedInteger:self->_renderingMode];
  v10 = [builder appendUnsignedInteger:self->_previewContent];
  v11 = [builder appendBool:self->_showingIdealizedTime];
  v12 = [builder appendBool:self->_isIdle];
  v13 = [builder hash];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PRPosterSnapshotDefinition *)self isEqualToDefinition:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToDefinition:(id)definition
{
  definitionCopy = definition;
  if (self == definitionCopy)
  {
    v32 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
    includesHeaderElements = [(PRPosterSnapshotDefinition *)self includesHeaderElements];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __50__PRPosterSnapshotDefinition_isEqualToDefinition___block_invoke;
    v50[3] = &unk_1E78438B0;
    v7 = definitionCopy;
    v51 = v7;
    v8 = [v5 appendBool:includesHeaderElements counterpart:v50];
    levelSets = [(PRPosterSnapshotDefinition *)self levelSets];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __50__PRPosterSnapshotDefinition_isEqualToDefinition___block_invoke_2;
    v48[3] = &unk_1E7844DA0;
    v10 = v7;
    v49 = v10;
    v11 = [v5 appendObject:levelSets counterpart:v48];

    isUnlocked = [(PRPosterSnapshotDefinition *)self isUnlocked];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __50__PRPosterSnapshotDefinition_isEqualToDefinition___block_invoke_3;
    v46[3] = &unk_1E78438B0;
    v13 = v10;
    v47 = v13;
    v14 = [v5 appendBool:isUnlocked counterpart:v46];
    uniqueIdentifier = [(PRPosterSnapshotDefinition *)self uniqueIdentifier];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __50__PRPosterSnapshotDefinition_isEqualToDefinition___block_invoke_4;
    v44[3] = &unk_1E7843888;
    v16 = v13;
    v45 = v16;
    v17 = [v5 appendString:uniqueIdentifier counterpart:v44];

    renderingContent = [(PRPosterSnapshotDefinition *)self renderingContent];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __50__PRPosterSnapshotDefinition_isEqualToDefinition___block_invoke_5;
    v42[3] = &unk_1E7843900;
    v19 = v16;
    v43 = v19;
    v20 = [v5 appendInt64:renderingContent counterpart:v42];
    renderingMode = [(PRPosterSnapshotDefinition *)self renderingMode];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __50__PRPosterSnapshotDefinition_isEqualToDefinition___block_invoke_6;
    v40[3] = &unk_1E7843900;
    v22 = v19;
    v41 = v22;
    v23 = [v5 appendInt64:renderingMode counterpart:v40];
    previewContent = [(PRPosterSnapshotDefinition *)self previewContent];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __50__PRPosterSnapshotDefinition_isEqualToDefinition___block_invoke_7;
    v38[3] = &unk_1E7843900;
    v25 = v22;
    v39 = v25;
    v26 = [v5 appendInt64:previewContent counterpart:v38];
    showingIdealizedTime = [(PRPosterSnapshotDefinition *)self showingIdealizedTime];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __50__PRPosterSnapshotDefinition_isEqualToDefinition___block_invoke_8;
    v36[3] = &unk_1E78438B0;
    v28 = v25;
    v37 = v28;
    v29 = [v5 appendBool:showingIdealizedTime counterpart:v36];
    isIdle = [(PRPosterSnapshotDefinition *)self isIdle];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __50__PRPosterSnapshotDefinition_isEqualToDefinition___block_invoke_9;
    v34[3] = &unk_1E78438B0;
    v35 = v28;
    v31 = [v5 appendBool:isIdle counterpart:v34];
    v32 = [v5 isEqual];
  }

  return v32;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_uniqueIdentifier withName:@"uniqueIdentifier"];
  v5 = [v3 appendBool:self->_includesHeaderElements withName:@"includesHeaderElements"];
  v6 = [v3 appendBool:self->_includesComplications withName:@"includesComplications"];
  v7 = [v3 appendBool:self->_unlocked withName:@"isUnlocked"];
  v8 = NSStringFromPRRenderingContent();
  [v3 appendString:v8 withName:@"renderingContent"];

  v9 = NSStringFromPRRenderingMode(self->_renderingMode);
  [v3 appendString:v9 withName:@"renderingMode"];

  v10 = NSStringFromPRPosterPreviewContent(self->_previewContent);
  [v3 appendString:v10 withName:@"previewContent"];

  v11 = [v3 appendObject:self->_levelSets withName:@"levelSets"];
  v12 = [v3 appendBool:self->_showingIdealizedTime withName:@"showingIdealizedTime"];
  v13 = [v3 appendBool:self->_isIdle withName:@"isIdle"];
  build = [v3 build];

  return build;
}

- (void)applySceneSettings:(id)settings
{
  settingsCopy = settings;
  uniqueIdentifier = [(PRPosterSnapshotDefinition *)self uniqueIdentifier];
  includesHeaderElements = [(PRPosterSnapshotDefinition *)self includesHeaderElements];
  includesComplications = [(PRPosterSnapshotDefinition *)self includesComplications];
  v7 = [(PRPosterSnapshotDefinition *)self boundingShape]!= 0;
  renderingContent = [(PRPosterSnapshotDefinition *)self renderingContent];
  renderingMode = [(PRPosterSnapshotDefinition *)self renderingMode];
  previewContent = [(PRPosterSnapshotDefinition *)self previewContent];
  if ([(PRPosterSnapshotDefinition *)self isUnlocked])
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 0.0;
  }

  [settingsCopy pui_setContent:renderingContent];
  [settingsCopy pui_setMode:renderingMode];
  [settingsCopy pui_setPreviewContent:previewContent];
  [settingsCopy pui_setPreviewIdentifier:uniqueIdentifier];
  [settingsCopy pr_setUnlockProgress:v11];
  [settingsCopy pui_setShowsComplications:includesComplications];
  [settingsCopy pui_setShowsHeaderElements:includesHeaderElements];
  [settingsCopy pui_setPosterBoundingShape:v7];
  [settingsCopy pui_setShowingIdealizedTime:{-[PRPosterSnapshotDefinition showingIdealizedTime](self, "showingIdealizedTime")}];
  [settingsCopy pui_setIdle:{-[PRPosterSnapshotDefinition isIdle](self, "isIdle")}];
}

+ (int64_t)snapshotOptionsForDefinition:(id)definition
{
  definitionCopy = definition;
  if ([definitionCopy includesHeaderElements])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if ([definitionCopy includesComplications])
  {
    v4 |= 4uLL;
  }

  layerSet = [definitionCopy layerSet];
  v6 = v4 | 0x20;
  v7 = v4 | 0x38;
  if (layerSet)
  {
    v7 = v4;
  }

  if (layerSet != 1)
  {
    v6 = v7;
  }

  if (layerSet == 2)
  {
    v8 = v4 | 0x18;
  }

  else
  {
    v8 = v6;
  }

  if ([definitionCopy isUnlocked])
  {
    v8 |= 0x40uLL;
  }

  if (PRRenderingContentIsPreview([definitionCopy renderingContent]))
  {
    v8 |= 0x80uLL;
  }

  return v8;
}

- (void)initWithUniqueIdentifier:includeHeaderElements:includesComplications:levelSets:isUnlocked:renderingContent:renderingMode:previewContent:boundingShape:showingIdealizedTime:isIdle:.cold.1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PRPosterSnapshotDefinition initWithUniqueIdentifier:includeHeaderElements:includesComplications:levelSets:isUnlocked:renderingContent:renderingMode:previewContent:boundingShape:showingIdealizedTime:isIdle:]"];
    OUTLINED_FUNCTION_0_11(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"[_bs_assert_object isKindOfClass:NSStringClass]", v7, 2u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUniqueIdentifier:includeHeaderElements:includesComplications:levelSets:isUnlocked:renderingContent:renderingMode:previewContent:boundingShape:showingIdealizedTime:isIdle:.cold.2()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PRPosterSnapshotDefinition initWithUniqueIdentifier:includeHeaderElements:includesComplications:levelSets:isUnlocked:renderingContent:renderingMode:previewContent:boundingShape:showingIdealizedTime:isIdle:]"];
    OUTLINED_FUNCTION_0_11(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"[_bs_assert_object isKindOfClass:NSArrayClass]", v7, 2u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUniqueIdentifier:(const char *)a1 includeHeaderElements:(uint64_t)a2 includesComplications:levelSets:isUnlocked:renderingContent:renderingMode:previewContent:boundingShape:showingIdealizedTime:isIdle:.cold.3(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[levelSets count] > 0"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PRPosterSnapshotDefinition.m";
    v16 = 1024;
    v17 = 66;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUniqueIdentifier:includeHeaderElements:includesComplications:levelSets:isUnlocked:renderingContent:renderingMode:previewContent:boundingShape:showingIdealizedTime:isIdle:.cold.4()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PRPosterSnapshotDefinition initWithUniqueIdentifier:includeHeaderElements:includesComplications:levelSets:isUnlocked:renderingContent:renderingMode:previewContent:boundingShape:showingIdealizedTime:isIdle:]"];
    OUTLINED_FUNCTION_0_11(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"_bs_assert_object != nil", v7, 2u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUniqueIdentifier:includeHeaderElements:includesComplications:levelSets:isUnlocked:renderingContent:renderingMode:previewContent:boundingShape:showingIdealizedTime:isIdle:.cold.5()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PRPosterSnapshotDefinition initWithUniqueIdentifier:includeHeaderElements:includesComplications:levelSets:isUnlocked:renderingContent:renderingMode:previewContent:boundingShape:showingIdealizedTime:isIdle:]"];
    OUTLINED_FUNCTION_0_11(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", v3, v4, v5, v6, @"_bs_assert_object != nil", v7, 2u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end