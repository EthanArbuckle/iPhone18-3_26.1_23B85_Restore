@interface _UICollectionViewPlaceholderContext
- (BOOL)commitInsertionWithDataSourceUpdates:(id)a3;
- (BOOL)deletePlaceholder;
- (NSString)description;
- (_UICollectionViewPlaceholderContextDelegate)delegate;
- (void)addAnimations:(id)a3;
- (void)addCompletion:(id)a3;
- (void)setNeedsCellUpdate;
@end

@implementation _UICollectionViewPlaceholderContext

- (BOOL)deletePlaceholder
{
  v2 = self;
  v3 = [(_UICollectionViewPlaceholderContext *)self delegate];
  v4 = [v3 placeholderContextDidDismiss:v2];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (BOOL)commitInsertionWithDataSourceUpdates:(id)a3
{
  v4 = a3;
  v5 = [(_UICollectionViewPlaceholderContext *)self delegate];
  LOBYTE(self) = [v5 placeholderContext:self didCommitInsertionWithDataSourceUpdates:v4];

  return self;
}

- (void)setNeedsCellUpdate
{
  v3 = [(_UICollectionViewPlaceholderContext *)self delegate];
  [v3 placeholderContextNeedsCellUpdate:self];
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

  v8 = [v3 stringWithFormat:@"<%@:%p insertionIndexPath=%@ reuseIdentifier=%@>", v5, self, v6, reuseIdentifier];

  return v8;
}

- (void)addAnimations:(id)a3
{
  if (self)
  {
    self = self->_animationHandlers;
  }

  [(_UICollectionViewPlaceholderContext *)self addAnimations:a3];
}

- (void)addCompletion:(id)a3
{
  if (self)
  {
    self = self->_animationHandlers;
  }

  [(_UICollectionViewPlaceholderContext *)self addCompletion:a3];
}

- (_UICollectionViewPlaceholderContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end