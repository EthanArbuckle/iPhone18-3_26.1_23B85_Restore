@interface OneUpSharePlayDataSource
- (PXSimpleIndexPath)indexPathForAssetReference:(SEL)reference;
- (_TtC12PhotosUICore24OneUpSharePlayDataSource)init;
- (id)assetAtItemIndexPath:(PXSimpleIndexPath *)path;
- (id)assetReferenceAtItemIndexPath:(PXSimpleIndexPath *)path;
- (id)assetsInSectionIndexPath:(PXSimpleIndexPath *)path;
- (id)indexPathForDisplayAsset:(id)asset hintIndexPath:(id)path;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
@end

@implementation OneUpSharePlayDataSource

- (id)assetAtItemIndexPath:(PXSimpleIndexPath *)path
{
  objectAtIndexedSubscript_ = [*(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_assets) objectAtIndexedSubscript_];

  return objectAtIndexedSubscript_;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  section = path->section;
  item = path->item;
  selfCopy = self;
  v7 = OneUpSharePlayDataSource.object(at:)(dataSourceIdentifier, section, item);

  return v7;
}

- (id)assetReferenceAtItemIndexPath:(PXSimpleIndexPath *)path
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_assets);
  selfCopy = self;
  v9 = *&path->item;
  v10 = *&path->dataSourceIdentifier;
  objectAtIndexedSubscript_ = [v4 objectAtIndexedSubscript_];
  v11[0] = v10;
  v11[1] = v9;
  v7 = [objc_allocWithZone(off_1E7721490) initWithSectionObject:0 itemObject:objectAtIndexedSubscript_ subitemObject:0 indexPath:v11];

  swift_unknownObjectRelease();

  return v7;
}

- (id)assetsInSectionIndexPath:(PXSimpleIndexPath *)path
{
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (id)indexPathForDisplayAsset:(id)asset hintIndexPath:(id)path
{
  sub_1A4859428(0, &qword_1EB12AF30, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  if (path)
  {
    sub_1A5241554();
    v13 = sub_1A5241574();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
    v14 = sub_1A5241574();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  v15 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_assets);
  if ([v15 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    selfCopy = self;
    indexOfObject_ = [v15 indexOfObject_];
    if (indexOfObject_ == sub_1A52403B4())
    {
      v18 = sub_1A5241574();
      (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    }

    else
    {
      MEMORY[0x1A58FC8D0](indexOfObject_, 0);
      v18 = sub_1A5241574();
      (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v18 = sub_1A5241574();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  }

  sub_1A48593CC(v9, &qword_1EB12AF30, MEMORY[0x1E6969C28]);
  sub_1A5241574();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v12, 1, v18);
  v21 = 0;
  if (v20 != 1)
  {
    v22 = sub_1A5241544();
    (*(v19 + 8))(v12, v18);
    v21 = v22;
  }

  return v21;
}

- (PXSimpleIndexPath)indexPathForAssetReference:(SEL)reference
{
  v6 = a4;
  selfCopy = self;
  v8 = OneUpSharePlayDataSource.indexPath(for:)(v6);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  retstr->dataSourceIdentifier = v8;
  retstr->section = v10;
  retstr->item = v12;
  retstr->subitem = v14;
  return result;
}

- (_TtC12PhotosUICore24OneUpSharePlayDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end