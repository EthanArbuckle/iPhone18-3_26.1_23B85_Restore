@interface _UIVisualEffectViewReversingEntry
- (_UIVisualEffectViewReversingEntry)initWithViewEntry:(id)entry;
- (id)copyForTransitionOut;
- (id)copyForTransitionToEffect:(id)effect;
- (id)description;
@end

@implementation _UIVisualEffectViewReversingEntry

- (_UIVisualEffectViewReversingEntry)initWithViewEntry:(id)entry
{
  entryCopy = entry;
  v9.receiver = self;
  v9.super_class = _UIVisualEffectViewReversingEntry;
  v6 = [(_UIVisualEffectViewReversingEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceEntry, entry);
    [(_UIVisualEffectViewEntry *)v7 setRequirements:[(_UIVisualEffectViewEntry *)v7->_sourceEntry requirements]];
  }

  return v7;
}

- (id)copyForTransitionToEffect:(id)effect
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIVisualEffectModel.m" lineNumber:229 description:@"Logic error: attempt to transition from a transitioning helper effect."];

  return 0;
}

- (id)copyForTransitionOut
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIVisualEffectModel.m" lineNumber:235 description:@"Logic error: attempt to transition from a transitioning helper effect."];

  return 0;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UIVisualEffectViewReversingEntry;
  v3 = [(_UIVisualEffectViewEntry *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" source=%@", self->_sourceEntry];

  return v4;
}

@end