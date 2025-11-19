@interface SBLockScreenElementOverride
+ (id)overrideForElement:(int64_t)a3;
+ (id)overrideForHiddenElement:(int64_t)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBLockScreenElementOverride

+ (id)overrideForElement:(int64_t)a3
{
  v4 = objc_alloc_init(SBLockScreenElementOverride);
  [(SBLockScreenElementOverride *)v4 setElement:a3];

  return v4;
}

+ (id)overrideForHiddenElement:(int64_t)a3
{
  v3 = [a1 overrideForElement:a3];
  [v3 setHidden:1];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(SBLockScreenElementOverride *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = NSStringFromLockScreenElement(self->_element);
  v5 = [v3 appendObject:v4 withName:@"element"];

  v6 = [v3 appendBool:self->_hidden withName:@"hidden"];
  [v3 appendString:self->_text withName:@"text" skipIfEmpty:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBLockScreenElementOverride *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end