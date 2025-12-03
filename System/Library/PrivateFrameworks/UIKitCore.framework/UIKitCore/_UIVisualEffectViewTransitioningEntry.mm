@interface _UIVisualEffectViewTransitioningEntry
- (BOOL)shouldAnimateProperty:(id)property;
- (_UIVisualEffectViewTransitioningEntry)initWithSourceEntry:(id)entry destinationEntry:(id)destinationEntry;
- (id)copyForTransitionOut;
- (id)copyForTransitionToEffect:(id)effect;
- (id)description;
@end

@implementation _UIVisualEffectViewTransitioningEntry

- (_UIVisualEffectViewTransitioningEntry)initWithSourceEntry:(id)entry destinationEntry:(id)destinationEntry
{
  entryCopy = entry;
  destinationEntryCopy = destinationEntry;
  v15.receiver = self;
  v15.super_class = _UIVisualEffectViewTransitioningEntry;
  v9 = [(_UIVisualEffectViewTransitioningEntry *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceEntry, entry);
    objc_storeStrong(&v10->_destinationEntry, destinationEntry);
    requirements = [(_UIVisualEffectViewEntry *)v10->_sourceEntry requirements];
    requirements2 = [(_UIVisualEffectViewEntry *)v10->_destinationEntry requirements];
    if (requirements == requirements2 || requirements2 == 0)
    {
      goto LABEL_8;
    }

    if (!requirements)
    {
      requirements = requirements2;
LABEL_8:
      [(_UIVisualEffectViewEntry *)v10 setRequirements:requirements];
    }
  }

  return v10;
}

- (BOOL)shouldAnimateProperty:(id)property
{
  propertyCopy = property;
  v5 = [(_UIVisualEffectViewEntry *)self->_sourceEntry shouldAnimateProperty:propertyCopy]|| [(_UIVisualEffectViewEntry *)self->_destinationEntry shouldAnimateProperty:propertyCopy];

  return v5;
}

- (id)copyForTransitionToEffect:(id)effect
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIVisualEffectModel.m" lineNumber:307 description:@"Logic error: attempt to transition from a transitioning helper effect."];

  return 0;
}

- (id)copyForTransitionOut
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIVisualEffectModel.m" lineNumber:313 description:@"Logic error: attempt to transition from a transitioning helper effect."];

  return 0;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UIVisualEffectViewTransitioningEntry;
  v3 = [(_UIVisualEffectViewEntry *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" source=%@ destination=%@", self->_sourceEntry, self->_destinationEntry];

  return v4;
}

@end