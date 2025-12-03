@interface SBSADefaultsContext
+ (id)instanceWithBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (SBSADefaultsContext)initWithDefaultsContext:(id)context;
- (id)copyBySettingAlwaysRenderSystemApertureFillOnGPU:(BOOL)u;
- (id)copyBySettingAlwaysShowSystemApertureInSnapshots:(BOOL)snapshots;
- (id)copyBySettingAlwaysShowSystemApertureOnClonedDisplays:(BOOL)displays;
- (id)copyBySettingEnableSystemApertureStateCollection:(BOOL)collection;
- (id)copyBySettingNeverRenderSystemApertureFillOnGPU:(BOOL)u;
- (id)copyBySettingSuppressDynamicIslandCompletely:(BOOL)completely;
- (id)copyWithBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSADefaultsContext

- (SBSADefaultsContext)initWithDefaultsContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = SBSADefaultsContext;
  v5 = [(SBSADefaultsContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_suppressDynamicIslandCompletely = contextCopy[8];
    v5->_alwaysShowSystemApertureOnClonedDisplays = contextCopy[9];
    v5->_alwaysShowSystemApertureInSnapshots = contextCopy[10];
    v5->_alwaysRenderSystemApertureFillOnGPU = contextCopy[11];
    v5->_neverRenderSystemApertureFillOnGPU = contextCopy[12];
    v5->_enableSystemApertureStateCollection = contextCopy[13];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  suppressDynamicIslandCompletely = self->_suppressDynamicIslandCompletely;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __31__SBSADefaultsContext_isEqual___block_invoke;
  v35[3] = &unk_2783ACE58;
  v7 = equalCopy;
  v36 = v7;
  v8 = [v5 appendBool:suppressDynamicIslandCompletely counterpart:v35];
  alwaysShowSystemApertureOnClonedDisplays = self->_alwaysShowSystemApertureOnClonedDisplays;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __31__SBSADefaultsContext_isEqual___block_invoke_2;
  v33[3] = &unk_2783ACE58;
  v10 = v7;
  v34 = v10;
  v11 = [v8 appendBool:alwaysShowSystemApertureOnClonedDisplays counterpart:v33];
  alwaysShowSystemApertureInSnapshots = self->_alwaysShowSystemApertureInSnapshots;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __31__SBSADefaultsContext_isEqual___block_invoke_3;
  v31[3] = &unk_2783ACE58;
  v13 = v10;
  v32 = v13;
  v14 = [v11 appendBool:alwaysShowSystemApertureInSnapshots counterpart:v31];
  alwaysRenderSystemApertureFillOnGPU = self->_alwaysRenderSystemApertureFillOnGPU;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __31__SBSADefaultsContext_isEqual___block_invoke_4;
  v29[3] = &unk_2783ACE58;
  v16 = v13;
  v30 = v16;
  v17 = [v14 appendBool:alwaysRenderSystemApertureFillOnGPU counterpart:v29];
  neverRenderSystemApertureFillOnGPU = self->_neverRenderSystemApertureFillOnGPU;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __31__SBSADefaultsContext_isEqual___block_invoke_5;
  v27[3] = &unk_2783ACE58;
  v19 = v16;
  v28 = v19;
  v20 = [v17 appendBool:neverRenderSystemApertureFillOnGPU counterpart:v27];
  enableSystemApertureStateCollection = self->_enableSystemApertureStateCollection;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __31__SBSADefaultsContext_isEqual___block_invoke_6;
  v25[3] = &unk_2783ACE58;
  v26 = v19;
  v22 = v19;
  v23 = [v20 appendBool:enableSystemApertureStateCollection counterpart:v25];
  LOBYTE(v19) = [v23 isEqual];

  return v19;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendBool:self->_suppressDynamicIslandCompletely];
  v5 = [v4 appendBool:self->_alwaysShowSystemApertureOnClonedDisplays];
  v6 = [v5 appendBool:self->_alwaysShowSystemApertureInSnapshots];
  v7 = [v6 appendBool:self->_alwaysRenderSystemApertureFillOnGPU];
  v8 = [v7 appendBool:self->_neverRenderSystemApertureFillOnGPU];
  v9 = [v8 appendBool:self->_enableSystemApertureStateCollection];
  v10 = [v9 hash];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithDefaultsContext:self];
}

+ (id)instanceWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v4 copyWithBlock:blockCopy];

  return v5;
}

- (id)copyWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(SBSADefaultsContext *)self copy];
  if (blockCopy)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    blockCopy[2](blockCopy, v6);
  }

  return v5;
}

- (id)copyBySettingSuppressDynamicIslandCompletely:(BOOL)completely
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__SBSADefaultsContext_copyBySettingSuppressDynamicIslandCompletely___block_invoke;
  v4[3] = &__block_descriptor_33_e8_v16__0_8l;
  completelyCopy = completely;
  return [(SBSADefaultsContext *)self copyWithBlock:v4];
}

- (id)copyBySettingAlwaysShowSystemApertureOnClonedDisplays:(BOOL)displays
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__SBSADefaultsContext_copyBySettingAlwaysShowSystemApertureOnClonedDisplays___block_invoke;
  v4[3] = &__block_descriptor_33_e8_v16__0_8l;
  displaysCopy = displays;
  return [(SBSADefaultsContext *)self copyWithBlock:v4];
}

- (id)copyBySettingAlwaysShowSystemApertureInSnapshots:(BOOL)snapshots
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__SBSADefaultsContext_copyBySettingAlwaysShowSystemApertureInSnapshots___block_invoke;
  v4[3] = &__block_descriptor_33_e8_v16__0_8l;
  snapshotsCopy = snapshots;
  return [(SBSADefaultsContext *)self copyWithBlock:v4];
}

- (id)copyBySettingAlwaysRenderSystemApertureFillOnGPU:(BOOL)u
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__SBSADefaultsContext_copyBySettingAlwaysRenderSystemApertureFillOnGPU___block_invoke;
  v4[3] = &__block_descriptor_33_e8_v16__0_8l;
  uCopy = u;
  return [(SBSADefaultsContext *)self copyWithBlock:v4];
}

- (id)copyBySettingNeverRenderSystemApertureFillOnGPU:(BOOL)u
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__SBSADefaultsContext_copyBySettingNeverRenderSystemApertureFillOnGPU___block_invoke;
  v4[3] = &__block_descriptor_33_e8_v16__0_8l;
  uCopy = u;
  return [(SBSADefaultsContext *)self copyWithBlock:v4];
}

- (id)copyBySettingEnableSystemApertureStateCollection:(BOOL)collection
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__SBSADefaultsContext_copyBySettingEnableSystemApertureStateCollection___block_invoke;
  v4[3] = &__block_descriptor_33_e8_v16__0_8l;
  collectionCopy = collection;
  return [(SBSADefaultsContext *)self copyWithBlock:v4];
}

@end