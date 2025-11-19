@interface LockScreenPosterCollectionViewCell
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)dealloc;
- (void)editingSceneViewControllerDidFinishShowingContent:(id)a3;
- (void)extensionsDidChangeForExtensionProvider:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)presentFocusSelector;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setScrollView:(id)a3;
@end

@implementation LockScreenPosterCollectionViewCell

- (void)dealloc
{
  v2 = self;
  sub_21B65F374(1);
  v3.receiver = v2;
  v3.super_class = type metadata accessor for LockScreenPosterCollectionViewCell();
  [(LockScreenPosterCollectionViewCell *)&v3 dealloc];
}

- (void)extensionsDidChangeForExtensionProvider:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21B668478(&unk_282CD1738, sub_21B6687D8, &block_descriptor_251);
}

- (void)editingSceneViewControllerDidFinishShowingContent:(id)a3
{
  v3 = self;
  sub_21B666B28();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_21B662AAC();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_21B662DD4();
}

- (void)setScrollView:(id)a3
{
  v4 = *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView);
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView) = a3;
  v3 = a3;
}

- (void)presentFocusSelector
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = self;
    sub_21B68F91C(v3);
    swift_unknownObjectRelease();
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21B667400(v4);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  v8 = a3;
  v10 = self;
  sub_21B6677DC(v8, a5, v9, y);
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_21B668478(&unk_282CD1210, sub_21B66886C, &block_descriptor_9);
  swift_unknownObjectRelease();
}

@end