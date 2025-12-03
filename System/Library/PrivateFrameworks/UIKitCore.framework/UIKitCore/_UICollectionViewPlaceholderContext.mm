@interface _UICollectionViewPlaceholderContext
- (BOOL)commitInsertionWithDataSourceUpdates:(id)updates;
- (BOOL)deletePlaceholder;
- (NSString)description;
- (_UICollectionViewPlaceholderContextDelegate)delegate;
- (void)addAnimations:(id)animations;
- (void)addCompletion:(id)completion;
- (void)setNeedsCellUpdate;
@end

@implementation _UICollectionViewPlaceholderContext

- (BOOL)deletePlaceholder
{
  selfCopy = self;
  delegate = [(_UICollectionViewPlaceholderContext *)self delegate];
  v4 = [delegate placeholderContextDidDismiss:selfCopy];
  LOBYTE(selfCopy) = v4 != 0;

  return selfCopy;
}

- (BOOL)commitInsertionWithDataSourceUpdates:(id)updates
{
  updatesCopy = updates;
  delegate = [(_UICollectionViewPlaceholderContext *)self delegate];
  LOBYTE(self) = [delegate placeholderContext:self didCommitInsertionWithDataSourceUpdates:updatesCopy];

  return self;
}

- (void)setNeedsCellUpdate
{
  delegate = [(_UICollectionViewPlaceholderContext *)self delegate];
  [delegate placeholderContextNeedsCellUpdate:self];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    v6 = self->_originalInsertionIndexPath;
    reuseIdentifier = self->_reuseIdentifier;
  }

  else
  {
    v6 = 0;
    reuseIdentifier = 0;
  }

  reuseIdentifier = [v3 stringWithFormat:@"<%@:%p insertionIndexPath=%@ reuseIdentifier=%@>", v5, self, v6, reuseIdentifier];

  return reuseIdentifier;
}

- (void)addAnimations:(id)animations
{
  if (self)
  {
    self = self->_animationHandlers;
  }

  [(_UICollectionViewPlaceholderContext *)self addAnimations:animations];
}

- (void)addCompletion:(id)completion
{
  if (self)
  {
    self = self->_animationHandlers;
  }

  [(_UICollectionViewPlaceholderContext *)self addCompletion:completion];
}

- (_UICollectionViewPlaceholderContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end