@interface SectionedDataSource
- (PXSimpleIndexPath)indexPathForObjectID:(SEL)d;
- (_TtC12PhotosUICore19SectionedDataSource)init;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (id)objectsInIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
@end

@implementation SectionedDataSource

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  __swift_project_boxed_opaque_existential_1((&self->super.super.isa + OBJC_IVAR____TtC12PhotosUICore19SectionedDataSource_itemList), *(&self->super._totalNumberOfItemsCache + OBJC_IVAR____TtC12PhotosUICore19SectionedDataSource_itemList));
  selfCopy = self;
  sub_1A5246344();
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  item = path->item;
  v5 = (&self->super.super.isa + OBJC_IVAR____TtC12PhotosUICore19SectionedDataSource_itemList);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v11);
  selfCopy = self;
  MEMORY[0x1A59016D0](item, v6, v7);
  __swift_project_boxed_opaque_existential_1(v11, AssociatedTypeWitness);
  v10[3] = swift_getAssociatedTypeWitness();
  v10[4] = swift_getAssociatedConformanceWitness();
  v10[5] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_1A5246224();
}

- (id)objectsInIndexPath:(PXSimpleIndexPath *)path
{
  item = path->item;
  selfCopy = self;
  SectionedDataSource.objects(in:)(selfCopy, v5, item);
}

- (PXSimpleIndexPath)indexPathForObjectID:(SEL)d
{
  __swift_project_boxed_opaque_existential_1((&self->super.super.isa + OBJC_IVAR____TtC12PhotosUICore19SectionedDataSource_itemList), *(&self->super._totalNumberOfItemsCache + OBJC_IVAR____TtC12PhotosUICore19SectionedDataSource_itemList));
  swift_getObjectType();
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_1A5246384();
}

- (_TtC12PhotosUICore19SectionedDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end