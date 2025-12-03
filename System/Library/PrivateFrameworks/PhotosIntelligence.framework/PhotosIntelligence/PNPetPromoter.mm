@interface PNPetPromoter
+ (id)statusWithPhotoLibrary:(id)library delegate:(id)delegate;
+ (void)promoteUnverifiedPetsInPhotoLibrary:(id)library withUpdateBlock:(id)block;
- (NSDictionary)metrics;
- (PHPhotoLibrary)photoLibrary;
- (PNPersonPromoterDelegate)delegate;
- (PNPetPromoter)initWithPhotoLibrary:(id)library andDelegate:(id)delegate;
- (void)incrementMetricForKey:(id)key withValue:(unint64_t)value;
- (void)promoteUnverifiedPetsWithUpdateBlock:(id)block;
- (void)setMetrics:(id)metrics;
@end

@implementation PNPetPromoter

- (PHPhotoLibrary)photoLibrary
{
  v2 = sub_1C7227410();

  return v2;
}

- (PNPersonPromoterDelegate)delegate
{
  v2 = sub_1C7227454();

  return v2;
}

- (NSDictionary)metrics
{
  sub_1C72274E0();
  sub_1C6F65BE8(0, &qword_1EDD108E0);
  v2 = sub_1C755048C();

  return v2;
}

- (void)setMetrics:(id)metrics
{
  sub_1C6F65BE8(0, &qword_1EDD108E0);
  v4 = sub_1C75504AC();
  selfCopy = self;
  sub_1C72275B8(v4);
}

- (PNPetPromoter)initWithPhotoLibrary:(id)library andDelegate:(id)delegate
{
  libraryCopy = library;
  swift_unknownObjectRetain();
  return PetPromoter.init(with:delegate:)(libraryCopy, delegate);
}

- (void)promoteUnverifiedPetsWithUpdateBlock:(id)block
{
  v4 = _Block_copy(block);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  sub_1C7227714();
}

- (void)incrementMetricForKey:(id)key withValue:(unint64_t)value
{
  v6 = sub_1C755068C();
  v8 = v7;
  selfCopy = self;
  sub_1C722FE48(v6, v8, value);
}

+ (id)statusWithPhotoLibrary:(id)library delegate:(id)delegate
{
  swift_getObjCClassMetadata();
  libraryCopy = library;
  swift_unknownObjectRetain();
  static PetPromoter.status(with:delegate:)();

  swift_unknownObjectRelease();
  v6 = sub_1C755065C();

  return v6;
}

+ (void)promoteUnverifiedPetsInPhotoLibrary:(id)library withUpdateBlock:(id)block
{
  v5 = _Block_copy(block);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v5);
  libraryCopy = library;
  sub_1C7232664(libraryCopy, ObjCClassMetadata, v5);
  _Block_release(v5);
}

@end