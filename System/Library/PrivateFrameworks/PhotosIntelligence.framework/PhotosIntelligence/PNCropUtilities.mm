@interface PNCropUtilities
+ (id)cropVariantsForAsset:(id)a3 faces:(id)a4;
+ (id)cropVariantsForAsset:(id)a3 targetSize:(CGSize)a4 faces:(id)a5;
+ (id)cropVariantsFromSignalsWithCropTypes:(double)a3 aspectRatio:(double)a4 sourcePixelWidth:(double)a5 sourcePixelHeight:(uint64_t)a6 acceptableCropRect:(uint64_t)a7 preferredCropRect:(uint64_t)a8 faceAreaRect:(unint64_t)a9 objectSaliencyRects:(uint64_t)a10 gazeAreaRect:(uint64_t)a11 isDenormalized:(char)a12;
+ (id)stringForCropVariantType:(int64_t)a3;
@end

@implementation PNCropUtilities

+ (id)stringForCropVariantType:(int64_t)a3
{
  static CropUtilities.stringForCropVariantType(_:)();
  v3 = sub_1C755065C();

  return v3;
}

+ (id)cropVariantsForAsset:(id)a3 targetSize:(CGSize)a4 faces:(id)a5
{
  height = a4.height;
  width = a4.width;
  swift_getObjCClassMetadata();
  v9 = a3;
  v10 = a5;
  static CropUtilities.cropVariants(forAsset:targetSize:faces:)(v9, a5, width, height);

  sub_1C6F65BE8(0, &qword_1EDD0CE98);
  v11 = sub_1C7550B3C();

  return v11;
}

+ (id)cropVariantsForAsset:(id)a3 faces:(id)a4
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = a4;
  static CropUtilities.cropVariants(forAsset:faces:)(v6, a4);

  sub_1C6F65BE8(0, &qword_1EDD0CE98);
  v8 = sub_1C7550B3C();

  return v8;
}

+ (id)cropVariantsFromSignalsWithCropTypes:(double)a3 aspectRatio:(double)a4 sourcePixelWidth:(double)a5 sourcePixelHeight:(uint64_t)a6 acceptableCropRect:(uint64_t)a7 preferredCropRect:(uint64_t)a8 faceAreaRect:(unint64_t)a9 objectSaliencyRects:(uint64_t)a10 gazeAreaRect:(uint64_t)a11 isDenormalized:(char)a12
{
  v29 = sub_1C7550B5C();
  sub_1C6F65BE8(0, &unk_1EDD0CD10);
  v30 = sub_1C7550B5C();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  static CropUtilities.cropVariantsFromSignals(requestedCropTypes:aspectRatio:sourcePixelWidth:sourcePixelHeight:acceptableCropRect:preferredCropRect:normalizedFaceAreaRect:objectSaliencyRects:gazeAreaRect:isDenormalized:)(v29, a9, a10, v30, a12, a1, a2, a3, a4, a5, a17, a18, a19, ObjCClassMetadata, v32, v33, a20, a21, a22, a23, a24, a25, a26, a27, a28);

  sub_1C6F65BE8(0, &qword_1EDD0CE98);
  v34 = sub_1C7550B3C();

  return v34;
}

@end