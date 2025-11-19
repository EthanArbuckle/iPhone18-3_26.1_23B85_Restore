@interface _UIVisualEffectViewEntry
- (BOOL)isSameTypeOfEffect:(id)a3;
- (NSString)description;
- (id)copyForTransitionOut;
- (id)copyForTransitionToEffect:(id)a3;
- (void)applyEffectAsRequested:(BOOL)a3 toView:(id)a4;
@end

@implementation _UIVisualEffectViewEntry

- (id)copyForTransitionOut
{
  v3 = [_UIVisualEffectViewReversingEntry alloc];

  return [(_UIVisualEffectViewReversingEntry *)v3 initWithViewEntry:self];
}

- (void)applyEffectAsRequested:(BOOL)a3 toView:(id)a4
{
  if (a3)
  {
    [(_UIVisualEffectViewEntry *)self applyRequestedEffectToView:a4];
  }

  else
  {
    [(_UIVisualEffectViewEntry *)self applyIdentityEffectToView:a4];
  }
}

- (BOOL)isSameTypeOfEffect:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

- (id)copyForTransitionToEffect:(id)a3
{
  v4 = a3;
  v5 = [[_UIVisualEffectViewTransitioningEntry alloc] initWithSourceEntry:self destinationEntry:v4];

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