@interface CRTrackingFilter
+ (BOOL)shouldEdgeIntersectionFilterQuad:(id)quad originalQuad:(id)originalQuad imageSize:(CGSize)size;
+ (BOOL)shouldFilterHomographyWithResultQuad:(id)quad originalQuad:(id)originalQuad imageSize:(CGSize)size;
+ (BOOL)shouldStartTrackingGroup:(id)group;
+ (void)filterLowQualityTranscriptRegions:(id)regions;
@end

@implementation CRTrackingFilter

+ (BOOL)shouldStartTrackingGroup:(id)group
{
  groupCopy = group;
  averageLineHeight = [groupCopy averageLineHeight];
  if (averageLineHeight)
  {
    averageLineHeight2 = [groupCopy averageLineHeight];
    [averageLineHeight2 doubleValue];
    v7 = v6 >= 5.0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (void)filterLowQualityTranscriptRegions:(id)regions
{
  v20 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  if (qword_1ED9600A0 != -1)
  {
    dispatch_once(&qword_1ED9600A0, &__block_literal_global_15);
  }

  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = regionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        text = [v10 text];
        v12 = [text length];

        if (v12 != 1)
        {
          text2 = [v10 text];
          v14 = [text2 rangeOfCharacterFromSet:_MergedGlobals_20 options:2];

          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            continue;
          }
        }

        [array addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [v5 removeObjectsInArray:array];
}

void __54__CRTrackingFilter_filterLowQualityTranscriptRegions___block_invoke()
{
  v5 = [MEMORY[0x1E696AD48] characterSetWithCharactersInString:@"º"];
  v0 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  [v5 formUnionWithCharacterSet:v0];

  v1 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  [v5 formUnionWithCharacterSet:v1];

  v2 = [MEMORY[0x1E696AB08] symbolCharacterSet];
  [v5 formUnionWithCharacterSet:v2];

  v3 = [v5 invertedSet];
  v4 = _MergedGlobals_20;
  _MergedGlobals_20 = v3;
}

+ (BOOL)shouldFilterHomographyWithResultQuad:(id)quad originalQuad:(id)originalQuad imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  quadCopy = quad;
  [quadCopy squaredDistanceFromCorrespondingCornersOfQuad:originalQuad];
  if (v9 > 40000.0 || ([quadCopy hasIntersectingEdges] & 1) != 0 || (objc_msgSend(quadCopy, "boundingBox"), v10 > width * 1.20000005) || (objc_msgSend(quadCopy, "boundingBox"), v11 > height * 1.20000005))
  {
    v12 = 1;
  }

  else
  {
    cornerAngles = [quadCopy cornerAngles];
    v15 = [cornerAngles sortedArrayUsingSelector:sel_compare_];
    v16 = [v15 objectAtIndexedSubscript:0];
    [v16 doubleValue];
    v18 = v17;
    v19 = [v15 objectAtIndexedSubscript:1];
    [v19 doubleValue];
    v21 = v18 / v20;

    v12 = v21 < 0.600000024;
  }

  return v12;
}

+ (BOOL)shouldEdgeIntersectionFilterQuad:(id)quad originalQuad:(id)originalQuad imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  quadCopy = quad;
  v9 = fmin(width, height);
  v10 = [originalQuad intersectsImageMargin:v9 * 0.0399999991 imageSize:{width, height}] && !objc_msgSend(quadCopy, "intersectsImageMargin:imageSize:", v9 * 0.119999997, width, height);

  return v10;
}

@end