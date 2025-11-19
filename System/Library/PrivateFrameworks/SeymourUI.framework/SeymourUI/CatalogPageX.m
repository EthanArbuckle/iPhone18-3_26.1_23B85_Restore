@interface CatalogPageX
- (_TtC9SeymourUI12CatalogPageX)init;
- (void)_collectionView:(id)a3 orthogonalScrollViewDidScroll:(id)a4 section:(int64_t)a5;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
@end

@implementation CatalogPageX

- (_TtC9SeymourUI12CatalogPageX)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  sub_20C133244();
  v6 = sub_20C13CC74();
  v7 = a3;
  v8 = self;
  sub_20BC73F64(v6);
}

- (void)_collectionView:(id)a3 orthogonalScrollViewDidScroll:(id)a4 section:(int64_t)a5
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  if (a5 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((*(&self->super.isa + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_shelves))[2] <= a5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  swift_unknownObjectRetain();
  v8 = self;
  swift_unknownObjectRetain();
  sub_20BC68620(a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

@end