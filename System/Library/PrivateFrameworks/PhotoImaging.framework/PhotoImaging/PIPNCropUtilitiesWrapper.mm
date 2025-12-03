@interface PIPNCropUtilitiesWrapper
+ (double)bestCropVariantFromSignalsWithAspectRatio:(uint64_t)ratio sourcePixelWidth:(uint64_t)width sourcePixelHeight:(uint64_t)height acceptableCropRect:(uint64_t)rect preferredCropRect:(uint64_t)cropRect normalizedFaceAreaRect:(uint64_t)areaRect gazeAreaRect:(__int128)gazeAreaRect;
+ (id)cropVariantsFromSignalsWithCropTypes:(double)types aspectRatio:(double)ratio sourcePixelWidth:(double)width sourcePixelHeight:(uint64_t)height acceptableCropRect:(uint64_t)rect preferredCropRect:(void *)cropRect faceAreaRect:(uint64_t)areaRect objectSaliencyRects:(uint64_t)self0 gazeAreaRect:(void *)self1 isDenormalized:(uint64_t)self2;
@end

@implementation PIPNCropUtilitiesWrapper

+ (id)cropVariantsFromSignalsWithCropTypes:(double)types aspectRatio:(double)ratio sourcePixelWidth:(double)width sourcePixelHeight:(uint64_t)height acceptableCropRect:(uint64_t)rect preferredCropRect:(void *)cropRect faceAreaRect:(uint64_t)areaRect objectSaliencyRects:(uint64_t)self0 gazeAreaRect:(void *)self1 isDenormalized:(uint64_t)self2
{
  cropRectCopy = cropRect;
  gazeAreaRectCopy = gazeAreaRect;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v31 = getPNCropUtilitiesWrapperClass_softClass;
  v44 = getPNCropUtilitiesWrapperClass_softClass;
  if (!getPNCropUtilitiesWrapperClass_softClass)
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __getPNCropUtilitiesWrapperClass_block_invoke;
    v40[3] = &unk_1E82AC930;
    v40[4] = &v41;
    __getPNCropUtilitiesWrapperClass_block_invoke(v40);
    v31 = v42[3];
  }

  v32 = v31;
  _Block_object_dispose(&v41, 8);
  v33 = [v31 cropVariantsFromSignalsWithCropTypes:cropRectCopy aspectRatio:areaRect sourcePixelWidth:rects sourcePixelHeight:gazeAreaRectCopy acceptableCropRect:denormalized preferredCropRect:self faceAreaRect:a2 objectSaliencyRects:types gazeAreaRect:ratio isDenormalized:{width, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25}];

  return v33;
}

+ (double)bestCropVariantFromSignalsWithAspectRatio:(uint64_t)ratio sourcePixelWidth:(uint64_t)width sourcePixelHeight:(uint64_t)height acceptableCropRect:(uint64_t)rect preferredCropRect:(uint64_t)cropRect normalizedFaceAreaRect:(uint64_t)areaRect gazeAreaRect:(__int128)gazeAreaRect
{
  v17 = [self cropVariantsFromSignalsWithCropTypes:&unk_1F471FD70 aspectRatio:ratio sourcePixelWidth:width sourcePixelHeight:MEMORY[0x1E695E0F0] acceptableCropRect:0 preferredCropRect:gazeAreaRect faceAreaRect:a10 objectSaliencyRects:a11 gazeAreaRect:a12 isDenormalized:{a13, a14, a15, a16, a17}];
  firstObject = [v17 firstObject];
  [firstObject cropRect];
  v20 = v19;

  return v20;
}

@end