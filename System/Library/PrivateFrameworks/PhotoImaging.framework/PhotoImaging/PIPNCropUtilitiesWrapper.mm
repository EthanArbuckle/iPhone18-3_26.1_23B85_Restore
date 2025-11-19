@interface PIPNCropUtilitiesWrapper
+ (double)bestCropVariantFromSignalsWithAspectRatio:(uint64_t)a3 sourcePixelWidth:(uint64_t)a4 sourcePixelHeight:(uint64_t)a5 acceptableCropRect:(uint64_t)a6 preferredCropRect:(uint64_t)a7 normalizedFaceAreaRect:(uint64_t)a8 gazeAreaRect:(__int128)a9;
+ (id)cropVariantsFromSignalsWithCropTypes:(double)a3 aspectRatio:(double)a4 sourcePixelWidth:(double)a5 sourcePixelHeight:(uint64_t)a6 acceptableCropRect:(uint64_t)a7 preferredCropRect:(void *)a8 faceAreaRect:(uint64_t)a9 objectSaliencyRects:(uint64_t)a10 gazeAreaRect:(void *)a11 isDenormalized:(uint64_t)a12;
@end

@implementation PIPNCropUtilitiesWrapper

+ (id)cropVariantsFromSignalsWithCropTypes:(double)a3 aspectRatio:(double)a4 sourcePixelWidth:(double)a5 sourcePixelHeight:(uint64_t)a6 acceptableCropRect:(uint64_t)a7 preferredCropRect:(void *)a8 faceAreaRect:(uint64_t)a9 objectSaliencyRects:(uint64_t)a10 gazeAreaRect:(void *)a11 isDenormalized:(uint64_t)a12
{
  v29 = a8;
  v30 = a11;
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
  v33 = [v31 cropVariantsFromSignalsWithCropTypes:v29 aspectRatio:a9 sourcePixelWidth:a10 sourcePixelHeight:v30 acceptableCropRect:a12 preferredCropRect:a1 faceAreaRect:a2 objectSaliencyRects:a3 gazeAreaRect:a4 isDenormalized:{a5, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25}];

  return v33;
}

+ (double)bestCropVariantFromSignalsWithAspectRatio:(uint64_t)a3 sourcePixelWidth:(uint64_t)a4 sourcePixelHeight:(uint64_t)a5 acceptableCropRect:(uint64_t)a6 preferredCropRect:(uint64_t)a7 normalizedFaceAreaRect:(uint64_t)a8 gazeAreaRect:(__int128)a9
{
  v17 = [a1 cropVariantsFromSignalsWithCropTypes:&unk_1F471FD70 aspectRatio:a3 sourcePixelWidth:a4 sourcePixelHeight:MEMORY[0x1E695E0F0] acceptableCropRect:0 preferredCropRect:a9 faceAreaRect:a10 objectSaliencyRects:a11 gazeAreaRect:a12 isDenormalized:{a13, a14, a15, a16, a17}];
  v18 = [v17 firstObject];
  [v18 cropRect];
  v20 = v19;

  return v20;
}

@end