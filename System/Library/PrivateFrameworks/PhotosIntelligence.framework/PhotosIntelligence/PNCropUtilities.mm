@interface PNCropUtilities
+ (id)cropVariantsForAsset:(id)asset faces:(id)faces;
+ (id)cropVariantsForAsset:(id)asset targetSize:(CGSize)size faces:(id)faces;
+ (id)cropVariantsFromSignalsWithCropTypes:(double)types aspectRatio:(double)ratio sourcePixelWidth:(double)width sourcePixelHeight:(uint64_t)height acceptableCropRect:(uint64_t)rect preferredCropRect:(uint64_t)cropRect faceAreaRect:(unint64_t)areaRect objectSaliencyRects:(uint64_t)self0 gazeAreaRect:(uint64_t)self1 isDenormalized:(char)self2;
+ (id)stringForCropVariantType:(int64_t)type;
@end

@implementation PNCropUtilities

+ (id)stringForCropVariantType:(int64_t)type
{
  static CropUtilities.stringForCropVariantType(_:)();
  v3 = sub_1C755065C();

  return v3;
}

+ (id)cropVariantsForAsset:(id)asset targetSize:(CGSize)size faces:(id)faces
{
  height = size.height;
  width = size.width;
  swift_getObjCClassMetadata();
  assetCopy = asset;
  facesCopy = faces;
  static CropUtilities.cropVariants(forAsset:targetSize:faces:)(assetCopy, faces, width, height);

  sub_1C6F65BE8(0, &qword_1EDD0CE98);
  v11 = sub_1C7550B3C();

  return v11;
}

+ (id)cropVariantsForAsset:(id)asset faces:(id)faces
{
  swift_getObjCClassMetadata();
  assetCopy = asset;
  facesCopy = faces;
  static CropUtilities.cropVariants(forAsset:faces:)(assetCopy, faces);

  sub_1C6F65BE8(0, &qword_1EDD0CE98);
  v8 = sub_1C7550B3C();

  return v8;
}

+ (id)cropVariantsFromSignalsWithCropTypes:(double)types aspectRatio:(double)ratio sourcePixelWidth:(double)width sourcePixelHeight:(uint64_t)height acceptableCropRect:(uint64_t)rect preferredCropRect:(uint64_t)cropRect faceAreaRect:(unint64_t)areaRect objectSaliencyRects:(uint64_t)self0 gazeAreaRect:(uint64_t)self1 isDenormalized:(char)self2
{
  v29 = sub_1C7550B5C();
  sub_1C6F65BE8(0, &unk_1EDD0CD10);
  v30 = sub_1C7550B5C();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  static CropUtilities.cropVariantsFromSignals(requestedCropTypes:aspectRatio:sourcePixelWidth:sourcePixelHeight:acceptableCropRect:preferredCropRect:normalizedFaceAreaRect:objectSaliencyRects:gazeAreaRect:isDenormalized:)(v29, areaRect, rects, v30, denormalized, self, a2, types, ratio, width, a17, a18, a19, ObjCClassMetadata, v32, v33, a20, a21, a22, a23, a24, a25, a26, a27, a28);

  sub_1C6F65BE8(0, &qword_1EDD0CE98);
  v34 = sub_1C7550B3C();

  return v34;
}

@end