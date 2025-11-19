@interface SBKeyboardFocusPolicy
+ (SBKeyboardFocusPolicy)new;
+ (id)build:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (SBKeyboardFocusPolicy)init;
- (SBWindowScene)sbWindowSceneAncestor;
- (id)_initWithCopyOf:(id *)a1;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_init;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation SBKeyboardFocusPolicy

- (void)_init
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        [v7 handleFailureInMethod:sel__init object:v1 file:@"SBKeyboardFocusPolicy.m" lineNumber:59 description:@"_SBKeyboardFocusPolicy cannot be subclassed"];
      }
    }

    v8.receiver = v1;
    v8.super_class = SBKeyboardFocusPolicy;
    v1 = objc_msgSendSuper2(&v8, sel_init);
    if (v1)
    {
      v4 = objc_alloc_init(MEMORY[0x277CF0B88]);
      v5 = v1[4];
      v1[4] = v4;
    }
  }

  return v1;
}

- (SBWindowScene)sbWindowSceneAncestor
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowSceneAncestor);

  return WeakRetained;
}

+ (id)build:(id)a3
{
  v3 = a3;
  v4 = [(SBKeyboardFocusPolicy *)[SBMutableKeyboardFocusPolicy alloc] _init];
  v3[2](v3, v4);

  v5 = [v4 copy];

  return v5;
}

- (SBKeyboardFocusPolicy)init
{
  v3 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBKeyboardFocusPolicy init]"];
  [v3 handleFailureInFunction:v4 file:@"SBKeyboardFocusPolicy.m" lineNumber:48 description:@"cannot directly allocate _SBKeyboardFocusPolicy"];

  return 0;
}

+ (SBKeyboardFocusPolicy)new
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[SBKeyboardFocusPolicy new]"];
  [v2 handleFailureInFunction:v3 file:@"SBKeyboardFocusPolicy.m" lineNumber:53 description:@"cannot directly allocate _SBKeyboardFocusPolicy"];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
  v4 = [MEMORY[0x277CF0C10] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SBKeyboardFocusPolicy_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = v4;
  v8 = self;
  v5 = v4;
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

- (id)_initWithCopyOf:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(SBKeyboardFocusPolicy *)a1 _init];
    a1 = v4;
    if (v4)
    {
      objc_storeStrong(v4 + 1, v3[1]);
      a1[2] = v3[2];
      *(a1 + 24) = *(v3 + 24);
      *(a1 + 25) = *(v3 + 25);
      objc_storeStrong(a1 + 4, v3[4]);
      WeakRetained = objc_loadWeakRetained(v3 + 5);
      objc_storeWeak(a1 + 5, WeakRetained);
    }
  }

  return a1;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SBMutableKeyboardFocusPolicy alloc];

  return [(SBKeyboardFocusPolicy *)&v4->super.super.isa _initWithCopyOf:?];
}

@end