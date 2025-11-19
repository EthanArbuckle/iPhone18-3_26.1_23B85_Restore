@interface CatalogPage
- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4;
- (_TtC9SeymourUI11CatalogPage)init;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)rebuildLocations;
- (void)scrollViewDidChangeAdjustedContentInset:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
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
  v2 = self;
  sub_20C0C264C();
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  v10 = a3;
  v11 = self;
  CatalogPage.collectionView(_:didSelectItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6
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
  v20 = a3;
  if (sub_20C133234() || sub_20C133224())
  {

    v21 = *(v8 + 8);
    v21(v13, v7);
    v21(v16, v7);
    (*(v8 + 32))(v19, v10, v7);
  }

  else
  {
    result = [v20 numberOfSections];
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

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v8 = sub_20C133244();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  v12 = a3;
  v13 = a4;
  sub_20BDF3A00(a4);

  (*(v9 + 8))(v11, v8);
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)a3
{
  v4 = a3;
  v5 = self;
  CatalogPage.scrollViewDidChangeAdjustedContentInset(_:)(v4);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  CatalogPage.scrollViewDidScroll(_:)(v4);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v8 = self + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    swift_getObjectType();
    v10 = *(v9 + 144);
    v11 = self;
    v10(x, y);
    swift_unknownObjectRelease();
  }
}

- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = self + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    swift_getObjectType();
    v9 = *(v8 + 152);
    v10 = self;
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

- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = self;
  sub_20BDF2864(v9, v10);
  v11 = v14 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 1);
    ObjectType = swift_getObjectType();
    (*(v12 + 208))(v14, v9, v10, ObjectType, v12);
    swift_unknownObjectRelease();
  }
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  sub_20C133244();
  v7 = sub_20C13CC74();
  v8 = a3;
  v9 = self;
  v10 = _s9SeymourUI11CatalogPageC14collectionView_34contextMenuConfigurationForItemsAt5pointSo09UIContexthI0CSgSo012UICollectionF0C_Say10Foundation9IndexPathVGSo7CGPointVtF_0(v8, v7);

  return v10;
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = self + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    swift_getObjectType();
    v9 = *(v8 + 328);
    v10 = a4;
    v11 = self;
    v9();
    swift_unknownObjectRelease();
  }
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3
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
    v10 = self;
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

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  sub_20C133244();
  v6 = sub_20C13CC74();
  v7 = a3;
  v8 = self;
  sub_20C0CC1C0(v6);
}

@end