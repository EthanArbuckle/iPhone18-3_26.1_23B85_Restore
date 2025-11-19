@interface PXPhotoStyleCollection
+ (id)macStyleCollections;
- (NSArray)elements;
- (PXPhotoStyleCollection)init;
- (void)setElements:(id)a3;
@end

@implementation PXPhotoStyleCollection

- (NSArray)elements
{
  swift_beginAccess();
  type metadata accessor for PhotoStyleElement(0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

- (void)setElements:(id)a3
{
  type metadata accessor for PhotoStyleElement(0);
  v4 = sub_1A524CA34();
  v5 = OBJC_IVAR___PXPhotoStyleCollection_elements;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (PXPhotoStyleCollection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)macStyleCollections
{
  swift_getObjCClassMetadata();
  sub_1A3C69C5C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1A52F9DE0;
  sub_1A470B49C();
}

@end