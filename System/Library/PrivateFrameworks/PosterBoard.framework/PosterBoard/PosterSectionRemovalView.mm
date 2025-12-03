@interface PosterSectionRemovalView
- (_TtC11PosterBoard24PosterSectionRemovalView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDeleteButton:(id)button;
@end

@implementation PosterSectionRemovalView

- (void)setDeleteButton:(id)button
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_deleteButton);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_deleteButton) = button;
  buttonCopy = button;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PosterSectionRemovalView();
  v2 = v4.receiver;
  [(PosterSectionRemovalView *)&v4 prepareForReuse];
  v3 = &v2[OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_posterID];
  *v3 = 0;
  *(v3 + 1) = 0;
}

- (_TtC11PosterBoard24PosterSectionRemovalView)initWithCoder:(id)coder
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_delegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_posterID);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_deleteButton) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_deleteButtonDimension) = 0x4051000000000000;
  result = sub_21B6C95D4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21B62D254();
}

@end