@interface _UICollectionSectionContainerView
- (_UICollectionSectionContainerView)initWithFrame:(CGRect)a3;
- (void)_addSubview:(id)a3 positioned:(int64_t)a4 relativeTo:(id)a5;
- (void)_willRemoveSubview:(id)a3;
- (void)bringSubviewToFront:(id)a3;
- (void)dealloc;
- (void)exchangeSubviewAtIndex:(int64_t)a3 withSubviewAtIndex:(int64_t)a4;
- (void)sendSubviewToBack:(id)a3;
@end

@implementation _UICollectionSectionContainerView

- (_UICollectionSectionContainerView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = _UICollectionSectionContainerView;
  v3 = [(UIView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[_UICollectionViewSubviewRouter alloc] initWithContainer:v3];
    subviewRouter = v3->_subviewRouter;
    v3->_subviewRouter = v4;

    v6 = *MEMORY[0x1E69796E8];
    v7 = [(UIView *)v3 layer];
    [v7 setCornerCurve:v6];

    [(UIView *)v3 setClipsToBounds:1];
  }

  return v3;
}

- (void)_addSubview:(id)a3 positioned:(int64_t)a4 relativeTo:(id)a5
{
  v8 = a3;
  v12 = a4;
  v9 = a5;
  if (self)
  {
    subviewRouter = self->_subviewRouter;
    if (subviewRouter)
    {
      if ([(_UICollectionViewSubviewRouter *)subviewRouter shouldAddSubview:v8 atPosition:&v12 relativeTo:v9 creatingBookmarkIfNecessary:1])
      {
        v11.receiver = self;
        v11.super_class = _UICollectionSectionContainerView;
        [(UIView *)&v11 _addSubview:v8 positioned:v12 relativeTo:v9];
      }
    }
  }
}

- (void)bringSubviewToFront:(id)a3
{
  v4 = a3;
  if (self)
  {
    subviewRouter = self->_subviewRouter;
  }

  else
  {
    subviewRouter = 0;
  }

  if ([(_UICollectionViewSubviewRouter *)subviewRouter shouldBringSubviewToFront:v4])
  {
    v6.receiver = self;
    v6.super_class = _UICollectionSectionContainerView;
    [(UIView *)&v6 bringSubviewToFront:v4];
  }
}

- (void)sendSubviewToBack:(id)a3
{
  v4 = a3;
  if (self)
  {
    subviewRouter = self->_subviewRouter;
    if (subviewRouter)
    {
      v7 = 0;
      if ([(_UICollectionViewSubviewRouter *)subviewRouter shouldAddSubview:v4 atPosition:&v7 relativeTo:0 creatingBookmarkIfNecessary:0])
      {
        v6.receiver = self;
        v6.super_class = _UICollectionSectionContainerView;
        [(UIView *)&v6 sendSubviewToBack:v4];
      }
    }
  }
}

- (void)exchangeSubviewAtIndex:(int64_t)a3 withSubviewAtIndex:(int64_t)a4
{
  v6 = self;
  if (self)
  {
    self = self->_subviewRouter;
  }

  if ([(_UICollectionViewSubviewRouter *)self shouldExchangeSubviewAtIndex:a3 withSubviewAtIndex:a4])
  {
    v7.receiver = v6;
    v7.super_class = _UICollectionSectionContainerView;
    [(UIView *)&v7 exchangeSubviewAtIndex:a3 withSubviewAtIndex:a4];
  }
}

- (void)_willRemoveSubview:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UICollectionSectionContainerView;
  v4 = a3;
  [(UIView *)&v6 _willRemoveSubview:v4];
  if (self)
  {
    subviewRouter = self->_subviewRouter;
  }

  else
  {
    subviewRouter = 0;
  }

  [(_UICollectionViewSubviewRouter *)subviewRouter willRemoveSubview:v4];
}

- (void)dealloc
{
  [(_UICollectionViewSubviewRouter *)self->_subviewRouter setContainer:?];
  v3.receiver = self;
  v3.super_class = _UICollectionSectionContainerView;
  [(UIView *)&v3 dealloc];
}

@end