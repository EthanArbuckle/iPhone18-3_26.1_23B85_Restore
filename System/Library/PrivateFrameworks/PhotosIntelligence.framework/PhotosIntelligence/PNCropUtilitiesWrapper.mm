@interface PNCropUtilitiesWrapper
+ (CGSize)widgetSizeForFamily:(int64_t)family;
+ (id)cropVariantsFromSignalsPrefersFaceCrops:(int)crops aspectRatio:(int)ratio sourcePixelWidth:(int)width sourcePixelHeight:acceptableCropRect:preferredCropRect:faceAreaRect:objectSaliencyRects:gazeAreaRect:isDenormalized:;
@end

@implementation PNCropUtilitiesWrapper

+ (CGSize)widgetSizeForFamily:(int64_t)family
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v4 = getSBSWidgetMetricsServiceClass_softClass;
  v22 = getSBSWidgetMetricsServiceClass_softClass;
  if (!getSBSWidgetMetricsServiceClass_softClass)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __getSBSWidgetMetricsServiceClass_block_invoke;
    v18[3] = &unk_1E82A2920;
    v18[4] = &v19;
    __getSBSWidgetMetricsServiceClass_block_invoke(v18);
    v4 = v20[3];
  }

  v5 = v4;
  _Block_object_dispose(&v19, 8);
  v6 = objc_alloc_init(v4);
  v7 = [v6 previewMetricsSpecificationForBundleIdentifier:@"com.apple.mobileslideshow"];
  if (!v7)
  {
    _PFAssertFailHandler();
LABEL_7:
    v17 = _PFAssertFailHandler();
    _Block_object_dispose(&v19, 8);
    _Unwind_Resume(v17);
  }

  v8 = v7;
  v9 = [v7 metricsForFamily:family];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9;
  [v9 size];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

+ (id)cropVariantsFromSignalsPrefersFaceCrops:(int)crops aspectRatio:(int)ratio sourcePixelWidth:(int)width sourcePixelHeight:acceptableCropRect:preferredCropRect:faceAreaRect:objectSaliencyRects:gazeAreaRect:isDenormalized:
{
  if (crops)
  {
    v5 = &unk_1F46E56F0;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return [PNCropUtilities cropVariantsFromSignalsWithCropTypes:"cropVariantsFromSignalsWithCropTypes:aspectRatio:sourcePixelWidth:sourcePixelHeight:acceptableCropRect:preferredCropRect:faceAreaRect:objectSaliencyRects:gazeAreaRect:isDenormalized:" aspectRatio:v5 sourcePixelWidth:ratio sourcePixelHeight:width acceptableCropRect:? preferredCropRect:? faceAreaRect:? objectSaliencyRects:? gazeAreaRect:? isDenormalized:?];
}

@end