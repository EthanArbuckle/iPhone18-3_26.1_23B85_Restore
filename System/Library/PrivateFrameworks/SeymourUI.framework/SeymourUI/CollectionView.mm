@interface CollectionView
- (BOOL)_scrollToTopIfPossible:(BOOL)a3;
- (_TtC9SeymourUI14CollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (void)layoutSubviews;
@end

@implementation CollectionView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CollectionView();
  v2 = v4.receiver;
  [(CollectionView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC9SeymourUI14CollectionView_onLayoutUpdate];
  if (v3)
  {

    v3(v2);

    sub_20B583ECC(v3);
  }

  else
  {
  }
}

- (BOOL)_scrollToTopIfPossible:(BOOL)a3
{
  v4 = self;
  v5 = sub_20BD12948(a3);

  return v5 & 1;
}

- (_TtC9SeymourUI14CollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI14CollectionView_contentInsetBehaviorProvider);
  *v9 = 0;
  v9[1] = 0;
  v10 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI14CollectionView_onLayoutUpdate);
  *v10 = 0;
  v10[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI14CollectionView____lazy_storage___smoothDecelerationAnimation) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for CollectionView();
  return [(CollectionView *)&v12 initWithFrame:a4 collectionViewLayout:x, y, width, height];
}

@end