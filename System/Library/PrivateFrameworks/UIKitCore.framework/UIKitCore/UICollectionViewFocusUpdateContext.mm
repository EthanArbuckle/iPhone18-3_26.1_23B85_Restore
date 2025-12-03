@interface UICollectionViewFocusUpdateContext
+ (id)_contextWithContext:(id)context collectionView:(id)view;
+ (id)_contextWithContext:(id)context collectionView:(id)view cachedPreviouslyFocusedIndexPath:(id)path;
- (NSIndexPath)nextFocusedIndexPath;
- (NSIndexPath)previouslyFocusedIndexPath;
- (UICollectionView)collectionView;
- (id)_initWithContext:(id)context collectionView:(id)view cachedPreviouslyFocusedIndexPath:(id)path;
@end

@implementation UICollectionViewFocusUpdateContext

+ (id)_contextWithContext:(id)context collectionView:(id)view
{
  viewCopy = view;
  contextCopy = context;
  v8 = [[self alloc] _initWithContext:contextCopy collectionView:viewCopy cachedPreviouslyFocusedIndexPath:0];

  return v8;
}

+ (id)_contextWithContext:(id)context collectionView:(id)view cachedPreviouslyFocusedIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  contextCopy = context;
  v11 = [[self alloc] _initWithContext:contextCopy collectionView:viewCopy cachedPreviouslyFocusedIndexPath:pathCopy];

  return v11;
}

- (id)_initWithContext:(id)context collectionView:(id)view cachedPreviouslyFocusedIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = UICollectionViewFocusUpdateContext;
  v10 = [(UIFocusUpdateContext *)&v15 _initWithContext:context];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(v10 + 20, viewCopy);
    v12 = [pathCopy copy];
    v13 = v11[18];
    v11[18] = v12;

    *(v11 + 136) = pathCopy != 0;
  }

  return v11;
}

- (NSIndexPath)previouslyFocusedIndexPath
{
  if (!self->_didSetPreviouslyFocusedIndexPath)
  {
    previouslyFocusedView = [(UIFocusUpdateContext *)self previouslyFocusedView];
    if (previouslyFocusedView)
    {
      collectionView = [(UICollectionViewFocusUpdateContext *)self collectionView];
      v5 = _UICollectionViewCellForView(collectionView, previouslyFocusedView);
      if (v5)
      {
        v6 = [collectionView indexPathForCell:v5];
      }

      else
      {
        v6 = 0;
      }

      objc_storeStrong(&self->_previouslyFocusedIndexPath, v6);
      if (v5)
      {
      }
    }

    self->_didSetPreviouslyFocusedIndexPath = 1;
  }

  previouslyFocusedIndexPath = self->_previouslyFocusedIndexPath;

  return previouslyFocusedIndexPath;
}

- (NSIndexPath)nextFocusedIndexPath
{
  if (!self->_didSetNextFocusedIndexPath)
  {
    nextFocusedView = [(UIFocusUpdateContext *)self nextFocusedView];
    if (nextFocusedView)
    {
      collectionView = [(UICollectionViewFocusUpdateContext *)self collectionView];
      v5 = _UICollectionViewCellForView(collectionView, nextFocusedView);
      if (v5)
      {
        v6 = [collectionView indexPathForCell:v5];
      }

      else
      {
        v6 = 0;
      }

      objc_storeStrong(&self->_nextFocusedIndexPath, v6);
      if (v5)
      {
      }
    }

    self->_didSetNextFocusedIndexPath = 1;
  }

  nextFocusedIndexPath = self->_nextFocusedIndexPath;

  return nextFocusedIndexPath;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

@end