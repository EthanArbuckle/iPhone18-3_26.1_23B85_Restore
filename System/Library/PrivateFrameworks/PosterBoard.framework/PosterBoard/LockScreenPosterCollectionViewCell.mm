@interface LockScreenPosterCollectionViewCell
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)dealloc;
- (void)editingSceneViewControllerDidFinishShowingContent:(id)content;
- (void)extensionsDidChangeForExtensionProvider:(id)provider;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)presentFocusSelector;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setScrollView:(id)view;
@end

@implementation LockScreenPosterCollectionViewCell

- (void)dealloc
{
  selfCopy = self;
  sub_21B65F374(1);
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for LockScreenPosterCollectionViewCell();
  [(LockScreenPosterCollectionViewCell *)&v3 dealloc];
}

- (void)extensionsDidChangeForExtensionProvider:(id)provider
{
  providerCopy = provider;
  selfCopy = self;
  sub_21B668478(&unk_282CD1738, sub_21B6687D8, &block_descriptor_251);
}

- (void)editingSceneViewControllerDidFinishShowingContent:(id)content
{
  selfCopy = self;
  sub_21B666B28();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21B662AAC();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_21B662DD4();
}

- (void)setScrollView:(id)view
{
  v4 = *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView);
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView) = view;
  viewCopy = view;
}

- (void)presentFocusSelector
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_21B68F91C(selfCopy);
    swift_unknownObjectRelease();
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_21B667400(scrollCopy);
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  draggingCopy = dragging;
  selfCopy = self;
  sub_21B6677DC(draggingCopy, offset, v9, y);
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21B668478(&unk_282CD1210, sub_21B66886C, &block_descriptor_9);
  swift_unknownObjectRelease();
}

@end