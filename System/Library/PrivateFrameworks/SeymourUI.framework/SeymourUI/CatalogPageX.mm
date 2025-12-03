@interface CatalogPageX
- (_TtC9SeymourUI12CatalogPageX)init;
- (void)_collectionView:(id)view orthogonalScrollViewDidScroll:(id)scroll section:(int64_t)section;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
@end

@implementation CatalogPageX

- (_TtC9SeymourUI12CatalogPageX)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  sub_20C133244();
  v6 = sub_20C13CC74();
  viewCopy = view;
  selfCopy = self;
  sub_20BC73F64(v6);
}

- (void)_collectionView:(id)view orthogonalScrollViewDidScroll:(id)scroll section:(int64_t)section
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  if (section < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((*(&self->super.isa + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_shelves))[2] <= section)
  {
LABEL_9:
    __break(1u);
    return;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  swift_unknownObjectRetain();
  sub_20BC68620(scroll);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

@end