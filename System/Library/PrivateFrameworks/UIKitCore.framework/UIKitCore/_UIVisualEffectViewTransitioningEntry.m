@interface _UIVisualEffectViewTransitioningEntry
- (BOOL)shouldAnimateProperty:(id)a3;
- (_UIVisualEffectViewTransitioningEntry)initWithSourceEntry:(id)a3 destinationEntry:(id)a4;
- (id)copyForTransitionOut;
- (id)copyForTransitionToEffect:(id)a3;
- (id)description;
@end

@implementation _UIVisualEffectViewTransitioningEntry

- (_UIVisualEffectViewTransitioningEntry)initWithSourceEntry:(id)a3 destinationEntry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = _UIVisualEffectViewTransitioningEntry;
  v9 = [(_UIVisualEffectViewTransitioningEntry *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceEntry, a3);
    objc_storeStrong(&v10->_destinationEntry, a4);
    v11 = [(_UIVisualEffectViewEntry *)v10->_sourceEntry requirements];
    v12 = [(_UIVisualEffectViewEntry *)v10->_destinationEntry requirements];
    if (v11 == v12 || v12 == 0)
    {
      goto LABEL_8;
    }

    if (!v11)
    {
      v11 = v12;
LABEL_8:
      [(_UIVisualEffectViewEntry *)v10 setRequirements:v11];
    }
  }

  return v10;
}

- (BOOL)shouldAnimateProperty:(id)a3
{
  v4 = a3;
  v5 = [(_UIVisualEffectViewEntry *)self->_sourceEntry shouldAnimateProperty:v4]|| [(_UIVisualEffectViewEntry *)self->_destinationEntry shouldAnimateProperty:v4];

  return v5;
}

- (id)copyForTransitionToEffect:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIVisualEffectModel.m" lineNumber:307 description:@"Logic error: attempt to transition from a transitioning helper effect."];

  return 0;
}

- (id)copyForTransitionOut
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIVisualEffectModel.m" lineNumber:313 description:@"Logic error: attempt to transition from a transitioning helper effect."];

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