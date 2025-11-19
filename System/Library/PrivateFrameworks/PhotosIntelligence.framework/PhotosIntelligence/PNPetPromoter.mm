@interface PNPetPromoter
+ (id)statusWithPhotoLibrary:(id)a3 delegate:(id)a4;
+ (void)promoteUnverifiedPetsInPhotoLibrary:(id)a3 withUpdateBlock:(id)a4;
- (NSDictionary)metrics;
- (PHPhotoLibrary)photoLibrary;
- (PNPersonPromoterDelegate)delegate;
- (PNPetPromoter)initWithPhotoLibrary:(id)a3 andDelegate:(id)a4;
- (void)incrementMetricForKey:(id)a3 withValue:(unint64_t)a4;
- (void)promoteUnverifiedPetsWithUpdateBlock:(id)a3;
- (void)setMetrics:(id)a3;
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

- (void)setMetrics:(id)a3
{
  sub_1C6F65BE8(0, &qword_1EDD108E0);
  v4 = sub_1C75504AC();
  v5 = self;
  sub_1C72275B8(v4);
}

- (PNPetPromoter)initWithPhotoLibrary:(id)a3 andDelegate:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  return PetPromoter.init(with:delegate:)(v5, a4);
}

- (void)promoteUnverifiedPetsWithUpdateBlock:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  sub_1C7227714();
}

- (void)incrementMetricForKey:(id)a3 withValue:(unint64_t)a4
{
  v6 = sub_1C755068C();
  v8 = v7;
  v9 = self;
  sub_1C722FE48(v6, v8, a4);
}

+ (id)statusWithPhotoLibrary:(id)a3 delegate:(id)a4
{
  swift_getObjCClassMetadata();
  v5 = a3;
  swift_unknownObjectRetain();
  static PetPromoter.status(with:delegate:)();

  swift_unknownObjectRelease();
  v6 = sub_1C755065C();

  return v6;
}

+ (void)promoteUnverifiedPetsInPhotoLibrary:(id)a3 withUpdateBlock:(id)a4
{
  v5 = _Block_copy(a4);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v5);
  v7 = a3;
  sub_1C7232664(v7, ObjCClassMetadata, v5);
  _Block_release(v5);
}

@end