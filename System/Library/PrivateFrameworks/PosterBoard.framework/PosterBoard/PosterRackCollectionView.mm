@interface PosterRackCollectionView
- (_TtC11PosterBoard24PosterRackCollectionView)initWithCoder:(id)coder;
- (_TtC11PosterBoard24PosterRackCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation PosterRackCollectionView

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_21B668D30();
  sub_21B668D7C();
  v6 = sub_21B6C8F94();
  eventCopy = event;
  selfCopy = self;
  sub_21B66887C(v6, event);
}

- (_TtC11PosterBoard24PosterRackCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC11PosterBoard24PosterRackCollectionView_posterRackDelegate) = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = type metadata accessor for PosterRackCollectionView();
  return [(PosterRackCollectionView *)&v11 initWithFrame:layout collectionViewLayout:x, y, width, height];
}

- (_TtC11PosterBoard24PosterRackCollectionView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC11PosterBoard24PosterRackCollectionView_posterRackDelegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for PosterRackCollectionView();
  coderCopy = coder;
  v6 = [(PosterRackCollectionView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end