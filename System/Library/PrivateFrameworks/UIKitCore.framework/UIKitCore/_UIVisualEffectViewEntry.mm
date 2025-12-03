@interface _UIVisualEffectViewEntry
- (BOOL)isSameTypeOfEffect:(id)effect;
- (NSString)description;
- (id)copyForTransitionOut;
- (id)copyForTransitionToEffect:(id)effect;
- (void)applyEffectAsRequested:(BOOL)requested toView:(id)view;
@end

@implementation _UIVisualEffectViewEntry

- (id)copyForTransitionOut
{
  v3 = [_UIVisualEffectViewReversingEntry alloc];

  return [(_UIVisualEffectViewReversingEntry *)v3 initWithViewEntry:self];
}

- (void)applyEffectAsRequested:(BOOL)requested toView:(id)view
{
  if (requested)
  {
    [(_UIVisualEffectViewEntry *)self applyRequestedEffectToView:view];
  }

  else
  {
    [(_UIVisualEffectViewEntry *)self applyIdentityEffectToView:view];
  }
}

- (BOOL)isSameTypeOfEffect:(id)effect
{
  effectCopy = effect;
  v4 = [effectCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (id)copyForTransitionToEffect:(id)effect
{
  effectCopy = effect;
  v5 = [[_UIVisualEffectViewTransitioningEntry alloc] initWithSourceEntry:self destinationEntry:effectCopy];

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = _UIVisualEffectViewEntry;
  v3 = [(_UIVisualEffectViewEntry *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" requirements=%li", self->_requirements];

  return v4;
}

@end