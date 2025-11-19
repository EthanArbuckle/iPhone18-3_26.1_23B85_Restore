@interface PosterRackCollectionView
- (_TtC11PosterBoard24PosterRackCollectionView)initWithCoder:(id)a3;
- (_TtC11PosterBoard24PosterRackCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation PosterRackCollectionView

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_21B668D30();
  sub_21B668D7C();
  v6 = sub_21B6C8F94();
  v7 = a4;
  v8 = self;
  sub_21B66887C(v6, a4);
}

- (_TtC11PosterBoard24PosterRackCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC11PosterBoard24PosterRackCollectionView_posterRackDelegate) = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = type metadata accessor for PosterRackCollectionView();
  return [(PosterRackCollectionView *)&v11 initWithFrame:a4 collectionViewLayout:x, y, width, height];
}

- (_TtC11PosterBoard24PosterRackCollectionView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC11PosterBoard24PosterRackCollectionView_posterRackDelegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for PosterRackCollectionView();
  v5 = a3;
  v6 = [(PosterRackCollectionView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end