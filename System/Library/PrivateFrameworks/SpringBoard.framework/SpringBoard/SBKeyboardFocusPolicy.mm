@interface SBKeyboardFocusPolicy
+ (SBKeyboardFocusPolicy)new;
+ (id)build:(id)build;
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (SBKeyboardFocusPolicy)init;
- (SBWindowScene)sbWindowSceneAncestor;
- (id)_initWithCopyOf:(id *)of;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_init;
- (void)appendDescriptionToStream:(id)stream;
@end

@implementation SBKeyboardFocusPolicy

- (void)_init
{
  selfCopy = self;
  if (self)
  {
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:sel__init object:selfCopy file:@"SBKeyboardFocusPolicy.m" lineNumber:59 description:@"_SBKeyboardFocusPolicy cannot be subclassed"];
      }
    }

    v8.receiver = selfCopy;
    v8.super_class = SBKeyboardFocusPolicy;
    selfCopy = objc_msgSendSuper2(&v8, sel_init);
    if (selfCopy)
    {
      v4 = objc_alloc_init(MEMORY[0x277CF0B88]);
      v5 = selfCopy[4];
      selfCopy[4] = v4;
    }
  }

  return selfCopy;
}

- (SBWindowScene)sbWindowSceneAncestor
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowSceneAncestor);

  return WeakRetained;
}

+ (id)build:(id)build
{
  buildCopy = build;
  _init = [(SBKeyboardFocusPolicy *)[SBMutableKeyboardFocusPolicy alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

- (SBKeyboardFocusPolicy)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBKeyboardFocusPolicy init]"];
  [currentHandler handleFailureInFunction:v4 file:@"SBKeyboardFocusPolicy.m" lineNumber:48 description:@"cannot directly allocate _SBKeyboardFocusPolicy"];

  return 0;
}

+ (SBKeyboardFocusPolicy)new
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[SBKeyboardFocusPolicy new]"];
  [currentHandler handleFailureInFunction:v3 file:@"SBKeyboardFocusPolicy.m" lineNumber:53 description:@"cannot directly allocate _SBKeyboardFocusPolicy"];

  return 0;
}

- (unint64_t)hash
{
  v3 = [(SBKeyboardFocusTarget *)self->_keyboardFocusTarget hash];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_selectionPolicy];
  v5 = [v4 hash] ^ v3;

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldSuppressRemoteDeferring];
  v7 = [v6 hash];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_suppressCameraButtonDeferringToApplications];
  v9 = v5 ^ v7 ^ [v8 hash];

  WeakRetained = objc_loadWeakRetained(&self->_sbWindowSceneAncestor);
  v11 = v9 ^ [WeakRetained hash];

  v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
  return v12 ^ (v12 >> 31);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (BSEqualObjects() && v5[2] == self->_selectionPolicy && *(v5 + 24) == self->_shouldSuppressRemoteDeferring && *(v5 + 25) == self->_suppressCameraButtonDeferringToApplications)
    {
      WeakRetained = objc_loadWeakRetained(v5 + 5);
      v7 = objc_loadWeakRetained(&self->_sbWindowSceneAncestor);
      v8 = BSEqualObjects();
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

  return v8;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CF0C08];
  debugStyle = [MEMORY[0x277CF0C10] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SBKeyboardFocusPolicy_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendBodySectionWithName:0 block:v6];
}

void __51__SBKeyboardFocusPolicy_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"keyboardFocusTarget"];
  v3 = *(a1 + 32);
  v4 = NSStringFromSBKeyboardFocusAdviceAcceptancePolicy(*(*(a1 + 40) + 16));
  [v3 appendString:v4 withName:@"selectionPolicy"];

  v5 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 24) withName:@"shouldSuppressRemoteDeferring"];
  v6 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 25) withName:@"suppressCameraButtonDeferringToApplications" ifEqualTo:1];
  if ([*(a1 + 32) hasDebugStyle])
  {
    v8 = [*(*(a1 + 40) + 32) items];
    if ([v8 count])
    {
      v7 = [*(a1 + 32) appendObject:v8 withName:@"auditHistory"];
    }
  }
}

- (id)_initWithCopyOf:(id *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(SBKeyboardFocusPolicy *)of _init];
    of = _init;
    if (_init)
    {
      objc_storeStrong(_init + 1, v3[1]);
      of[2] = v3[2];
      *(of + 24) = *(v3 + 24);
      *(of + 25) = *(v3 + 25);
      objc_storeStrong(of + 4, v3[4]);
      WeakRetained = objc_loadWeakRetained(v3 + 5);
      objc_storeWeak(of + 5, WeakRetained);
    }
  }

  return of;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SBMutableKeyboardFocusPolicy alloc];

  return [(SBKeyboardFocusPolicy *)&v4->super.super.isa _initWithCopyOf:?];
}

@end