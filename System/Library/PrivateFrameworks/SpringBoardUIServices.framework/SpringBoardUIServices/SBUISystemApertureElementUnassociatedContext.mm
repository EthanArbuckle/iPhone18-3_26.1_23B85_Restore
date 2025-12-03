@interface SBUISystemApertureElementUnassociatedContext
+ (id)unassociatedContext;
- (void)_logErrorForSelectorIfNeeded:(SEL)needed;
@end

@implementation SBUISystemApertureElementUnassociatedContext

+ (id)unassociatedContext
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SBUISystemApertureElementUnassociatedContext_unassociatedContext__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (unassociatedContext_onceToken != -1)
  {
    dispatch_once(&unassociatedContext_onceToken, block);
  }

  v2 = unassociatedContext_unassociatedContext;

  return v2;
}

uint64_t __67__SBUISystemApertureElementUnassociatedContext_unassociatedContext__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = unassociatedContext_unassociatedContext;
  unassociatedContext_unassociatedContext = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (void)_logErrorForSelectorIfNeeded:(SEL)needed
{
  if (SBUIIsSystemApertureEnabled())
  {
    v4 = NSStringFromSelector(needed);
    NSLog(&cfstr_CallingSbuisys.isa, v4);
  }
}

@end