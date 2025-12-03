@interface PXPhotosDynamicHeaderLayout
- (CGSize)singleViewLayout:(id)layout desiredSizeForReferenceSize:(CGSize)size;
- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (NSIndexSet)axSpriteIndexes;
- (PXPhotosDynamicHeaderLayout)init;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (void)entityManagerDidChange;
@end

@implementation PXPhotosDynamicHeaderLayout

- (void)entityManagerDidChange
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for PhotosDynamicHeaderLayout();
  v2.receiver;
  [(PXPhotosDynamicHeaderLayout *)&v2 entityManagerDidChange];
  swift_beginAccess();
  sub_1A41FCE94();
  PXGLayout.invalidate<A>(updateFlags:with:)();
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  result = sub_1A41FE778(index);
  if (result)
  {

    return swift_getObjCClassFromMetadata();
  }

  return result;
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  v8 = sub_1A41FE85C(index);

  return v8;
}

- (NSIndexSet)axSpriteIndexes
{
  v2 = sub_1A52414C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = MEMORY[0x1E69E7CC0];
  sub_1A41FF3A0(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
  v6 = MEMORY[0x1E69E6530];
  sub_1A41FFB64(0, &qword_1EB126E90, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  sub_1A41FEB14(&qword_1EB126E80, &qword_1EB126E90, v6);
  sub_1A524E224();
  v7 = sub_1A5241414();
  (*(v3 + 8))(v5, v2);

  return v7;
}

- (PXPhotosDynamicHeaderLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGSize)singleViewLayout:(id)layout desiredSizeForReferenceSize:(CGSize)size
{
  width = size.width;
  [(PXPhotosDynamicHeaderLayout *)self contentSize:layout];
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

@end