@interface PosterRackStackedLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGSize)collectionViewContentSize;
- (_TtC11PosterBoard23PosterRackStackedLayout)init;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (void)finalizeCollectionViewUpdates;
- (void)finalizeLayoutTransition;
- (void)prepareForCollectionViewUpdates:(id)updates;
- (void)prepareForTransitionFromLayout:(id)layout;
- (void)prepareForTransitionToLayout:(id)layout;
- (void)prepareLayout;
@end

@implementation PosterRackStackedLayout

- (void)prepareForCollectionViewUpdates:(id)updates
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PosterRackStackedLayout();
  [(PosterRackStackedLayout *)&v4 prepareForCollectionViewUpdates:updates];
}

- (void)finalizeCollectionViewUpdates
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PosterRackStackedLayout();
  v2 = v3.receiver;
  [(PosterRackStackedLayout *)&v3 finalizeCollectionViewUpdates];
  *&v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionIndexPathsToDelete] = MEMORY[0x277D84F90];
}

- (void)prepareForTransitionToLayout:(id)layout
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for PosterRackStackedLayout();
  layoutCopy = layout;
  v5 = v9.receiver;
  [(PosterRackStackedLayout *)&v9 prepareForTransitionToLayout:layoutCopy];
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutMode);

    v8 = &v5[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutModeTransitioningTo];
    *v8 = v7;
    v8[8] = 0;
  }

  else
  {
  }
}

- (void)prepareForTransitionFromLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  sub_21B62E05C(layoutCopy);
}

- (void)finalizeLayoutTransition
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for PosterRackStackedLayout();
  v12.receiver = self;
  v12.super_class = v6;
  selfCopy = self;
  [(PosterRackStackedLayout *)&v12 finalizeLayoutTransition];
  v8 = sub_21B6C8A04();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_indexPathToMaintainForTransition;
  swift_beginAccess();
  sub_21B633628(v5, selfCopy + v9);
  swift_endAccess();
  v10 = selfCopy + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutModeTransitioningTo;
  *v10 = 0;
  v10[8] = 1;
}

- (void)prepareLayout
{
  selfCopy = self;
  sub_21B62E630();
}

- (CGSize)collectionViewContentSize
{
  v2 = *(&self->super._collectionViewBoundsSize.width + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_contentBounds);
  v3 = *(&self->super._collectionViewBoundsSize.height + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_contentBounds);
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v8 = sub_21B631EF0(x, y, width, height);

  if (v8)
  {
    sub_21B6335DC();
    v9 = sub_21B6C8E74();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  x = offset.x;
  selfCopy = self;
  sub_21B632BC4(x);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (_TtC11PosterBoard23PosterRackStackedLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end