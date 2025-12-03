@interface _UICollectionSectionContainerView
- (_UICollectionSectionContainerView)initWithFrame:(CGRect)frame;
- (void)_addSubview:(id)subview positioned:(int64_t)positioned relativeTo:(id)to;
- (void)_willRemoveSubview:(id)subview;
- (void)bringSubviewToFront:(id)front;
- (void)dealloc;
- (void)exchangeSubviewAtIndex:(int64_t)index withSubviewAtIndex:(int64_t)atIndex;
- (void)sendSubviewToBack:(id)back;
@end

@implementation _UICollectionSectionContainerView

- (_UICollectionSectionContainerView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = _UICollectionSectionContainerView;
  v3 = [(UIView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[_UICollectionViewSubviewRouter alloc] initWithContainer:v3];
    subviewRouter = v3->_subviewRouter;
    v3->_subviewRouter = v4;

    v6 = *MEMORY[0x1E69796E8];
    layer = [(UIView *)v3 layer];
    [layer setCornerCurve:v6];

    [(UIView *)v3 setClipsToBounds:1];
  }

  return v3;
}

- (void)_addSubview:(id)subview positioned:(int64_t)positioned relativeTo:(id)to
{
  subviewCopy = subview;
  positionedCopy = positioned;
  toCopy = to;
  if (self)
  {
    subviewRouter = self->_subviewRouter;
    if (subviewRouter)
    {
      if ([(_UICollectionViewSubviewRouter *)subviewRouter shouldAddSubview:subviewCopy atPosition:&positionedCopy relativeTo:toCopy creatingBookmarkIfNecessary:1])
      {
        v11.receiver = self;
        v11.super_class = _UICollectionSectionContainerView;
        [(UIView *)&v11 _addSubview:subviewCopy positioned:positionedCopy relativeTo:toCopy];
      }
    }
  }
}

- (void)bringSubviewToFront:(id)front
{
  frontCopy = front;
  if (self)
  {
    subviewRouter = self->_subviewRouter;
  }

  else
  {
    subviewRouter = 0;
  }

  if ([(_UICollectionViewSubviewRouter *)subviewRouter shouldBringSubviewToFront:frontCopy])
  {
    v6.receiver = self;
    v6.super_class = _UICollectionSectionContainerView;
    [(UIView *)&v6 bringSubviewToFront:frontCopy];
  }
}

- (void)sendSubviewToBack:(id)back
{
  backCopy = back;
  if (self)
  {
    subviewRouter = self->_subviewRouter;
    if (subviewRouter)
    {
      v7 = 0;
      if ([(_UICollectionViewSubviewRouter *)subviewRouter shouldAddSubview:backCopy atPosition:&v7 relativeTo:0 creatingBookmarkIfNecessary:0])
      {
        v6.receiver = self;
        v6.super_class = _UICollectionSectionContainerView;
        [(UIView *)&v6 sendSubviewToBack:backCopy];
      }
    }
  }
}

- (void)exchangeSubviewAtIndex:(int64_t)index withSubviewAtIndex:(int64_t)atIndex
{
  selfCopy = self;
  if (self)
  {
    self = self->_subviewRouter;
  }

  if ([(_UICollectionViewSubviewRouter *)self shouldExchangeSubviewAtIndex:index withSubviewAtIndex:atIndex])
  {
    v7.receiver = selfCopy;
    v7.super_class = _UICollectionSectionContainerView;
    [(UIView *)&v7 exchangeSubviewAtIndex:index withSubviewAtIndex:atIndex];
  }
}

- (void)_willRemoveSubview:(id)subview
{
  v6.receiver = self;
  v6.super_class = _UICollectionSectionContainerView;
  subviewCopy = subview;
  [(UIView *)&v6 _willRemoveSubview:subviewCopy];
  if (self)
  {
    subviewRouter = self->_subviewRouter;
  }

  else
  {
    subviewRouter = 0;
  }

  [(_UICollectionViewSubviewRouter *)subviewRouter willRemoveSubview:subviewCopy];
}

- (void)dealloc
{
  [(_UICollectionViewSubviewRouter *)self->_subviewRouter setContainer:?];
  v3.receiver = self;
  v3.super_class = _UICollectionSectionContainerView;
  [(UIView *)&v3 dealloc];
}

@end