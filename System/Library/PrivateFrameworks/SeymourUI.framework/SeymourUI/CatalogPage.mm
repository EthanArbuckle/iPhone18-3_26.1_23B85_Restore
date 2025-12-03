@interface CatalogPage
- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (_TtC9SeymourUI11CatalogPage)init;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)rebuildLocations;
- (void)scrollViewDidChangeAdjustedContentInset:(id)inset;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation CatalogPage

- (_TtC9SeymourUI11CatalogPage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)rebuildLocations
{
  selfCopy = self;
  sub_20C0C264C();
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  viewCopy = view;
  selfCopy = self;
  CatalogPage.collectionView(_:didSelectItemAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  v7 = sub_20C133244();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v24 - v18;
  sub_20C1331E4();
  sub_20C1331E4();
  sub_20C1331E4();
  viewCopy = view;
  if (sub_20C133234() || sub_20C133224())
  {

    v21 = *(v8 + 8);
    v21(v13, v7);
    v21(v16, v7);
    (*(v8 + 32))(v19, v10, v7);
  }

  else
  {
    result = [viewCopy numberOfSections];
    if (__OFSUB__(result, 1))
    {
      __break(1u);
      return result;
    }

    MEMORY[0x20F2EA980](0, result - 1);

    v21 = *(v8 + 8);
    v21(v10, v7);
    v21(v13, v7);
    v21(v16, v7);
  }

  v22 = sub_20C1331B4();
  v21(v19, v7);

  return v22;
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  v8 = sub_20C133244();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  sub_20BDF3A00(supplementaryView);

  (*(v9 + 8))(v11, v8);
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)inset
{
  insetCopy = inset;
  selfCopy = self;
  CatalogPage.scrollViewDidChangeAdjustedContentInset(_:)(insetCopy);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  CatalogPage.scrollViewDidScroll(_:)(scrollCopy);
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  v8 = self + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    swift_getObjectType();
    v10 = *(v9 + 144);
    selfCopy = self;
    v10(x, y);
    swift_unknownObjectRelease();
  }
}

- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v7 = self + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    swift_getObjectType();
    v9 = *(v8 + 152);
    selfCopy = self;
    x = v9(x, y);
    y = v11;
    swift_unknownObjectRelease();
  }

  v12 = x;
  v13 = y;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  viewCopy = view;
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_20BDF2864(contextCopy, coordinatorCopy);
  v11 = selfCopy + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 1);
    ObjectType = swift_getObjectType();
    (*(v12 + 208))(selfCopy, contextCopy, coordinatorCopy, ObjectType, v12);
    swift_unknownObjectRelease();
  }
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  sub_20C133244();
  v7 = sub_20C13CC74();
  viewCopy = view;
  selfCopy = self;
  v10 = _s9SeymourUI11CatalogPageC14collectionView_34contextMenuConfigurationForItemsAt5pointSo09UIContexthI0CSgSo012UICollectionF0C_Say10Foundation9IndexPathVGSo7CGPointVtF_0(viewCopy, v7);

  return v10;
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  v7 = self + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    swift_getObjectType();
    v9 = *(v8 + 328);
    configurationCopy = configuration;
    selfCopy = self;
    v9();
    swift_unknownObjectRelease();
  }
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = self + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    swift_getObjectType();
    v9 = *(v8 + 200);
    selfCopy = self;
    v9();
    swift_unknownObjectRelease();

    v11 = sub_20C133244();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v6, 1, v11);
    v14 = 0;
    if (v13 != 1)
    {
      v15 = sub_20C1331B4();
      (*(v12 + 8))(v6, v11);
      v14 = v15;
    }
  }

  else
  {
    v16 = sub_20C133244();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    v14 = 0;
  }

  return v14;
}

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  sub_20C133244();
  v6 = sub_20C13CC74();
  viewCopy = view;
  selfCopy = self;
  sub_20C0CC1C0(v6);
}

@end