@interface SBLockScreenElementOverride
+ (id)overrideForElement:(int64_t)element;
+ (id)overrideForHiddenElement:(int64_t)element;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBLockScreenElementOverride

+ (id)overrideForElement:(int64_t)element
{
  v4 = objc_alloc_init(SBLockScreenElementOverride);
  [(SBLockScreenElementOverride *)v4 setElement:element];

  return v4;
}

+ (id)overrideForHiddenElement:(int64_t)element
{
  v3 = [self overrideForElement:element];
  [v3 setHidden:1];

  return v3;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBLockScreenElementOverride *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBLockScreenElementOverride *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end