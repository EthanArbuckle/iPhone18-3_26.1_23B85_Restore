@interface PXStoryClipCompositionFactory
+ (NSArray)allDefaultCompositions;
+ (NSArray)allSupportedCompositions;
+ (NSArray)defaultNUpCompositions;
+ (NSArray)defaultOneUpCompositions;
+ (NSArray)defaultThreeUpCompositions;
+ (NSArray)defaultTwoUpCompositions;
+ (NSArray)supportedNUpCompositions;
+ (NSArray)supportedTwoUpAssetSplitCompositions;
+ (NSArray)supportedTwoUpCompositions;
+ (PXStoryClipComposition)aspectFitOneUpComposition;
+ (PXStoryClipComposition)oneUpComposition;
+ (PXStoryClipComposition)threeUpHorizontalThirdsComposition;
+ (PXStoryClipComposition)threeUpVerticalThirdsComposition;
+ (PXStoryClipComposition)twoUpHalfLeadingHalfTrailingComposition;
+ (PXStoryClipComposition)twoUpHalfTopHalfBottomComposition;
+ (PXStoryClipComposition)twoUpOneThirdLeadingTwoThirdsTrailingAssetSplitComposition;
+ (PXStoryClipComposition)twoUpOneThirdLeadingTwoThirdsTrailingComposition;
+ (PXStoryClipComposition)twoUpOneThirdTopTwoThirdsBottomAssetSplitComposition;
+ (PXStoryClipComposition)twoUpOneThirdTopTwoThirdsBottomComposition;
+ (PXStoryClipComposition)twoUpTwoThirdsLeadingOneThirdTrailingAssetSplitComposition;
+ (PXStoryClipComposition)twoUpTwoThirdsLeadingOneThirdTrailingComposition;
+ (PXStoryClipComposition)twoUpTwoThirdsTopOneThirdBottomAssetSplitComposition;
+ (PXStoryClipComposition)twoUpTwoThirdsTopOneThirdBottomComposition;
+ (id)oneUpCompositionWithAspectRatioNumerator:(int64_t)a3 denominator:(int64_t)a4;
+ (id)oneUpCompositionsWithAspectRatioPassingTest:(id)a3;
@end

@implementation PXStoryClipCompositionFactory

+ (NSArray)allSupportedCompositions
{
  v3 = [a1 supportedOneUpCompositions];
  v4 = [a1 supportedNUpCompositions];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

+ (NSArray)allDefaultCompositions
{
  v3 = [a1 defaultOneUpCompositions];
  v4 = [a1 defaultNUpCompositions];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

+ (NSArray)supportedNUpCompositions
{
  v3 = [a1 supportedTwoUpCompositions];
  v4 = [a1 supportedThreeUpCompositions];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

+ (NSArray)defaultNUpCompositions
{
  v3 = [a1 defaultTwoUpCompositions];
  v4 = [a1 defaultThreeUpCompositions];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

+ (NSArray)defaultThreeUpCompositions
{
  v11[6] = *MEMORY[0x1E69E9840];
  v3 = [a1 threeUpVerticalThirdsComposition];
  v11[0] = v3;
  v4 = [a1 threeUpHorizontalThirdsComposition];
  v11[1] = v4;
  v5 = [[_PXStoryConcreteClipComposition alloc] initWithNumberOfClips:3 primaryEdge:0 splitRatio:1 secondaryEdge:@"3-Up [|-]" splitRatio:0.5 label:0.5];
  v11[2] = v5;
  v6 = [[_PXStoryConcreteClipComposition alloc] initWithNumberOfClips:3 primaryEdge:2 splitRatio:1 secondaryEdge:@"3-Up [-|]" splitRatio:0.5 label:0.5];
  v11[3] = v6;
  v7 = [[_PXStoryConcreteClipComposition alloc] initWithNumberOfClips:3 primaryEdge:1 splitRatio:0 secondaryEdge:@"3-Up [/-]" splitRatio:0.5 label:0.5];
  v11[4] = v7;
  v8 = [[_PXStoryConcreteClipComposition alloc] initWithNumberOfClips:3 primaryEdge:3 splitRatio:0 secondaryEdge:@"3-Up [-/]" splitRatio:0.5 label:0.5];
  v11[5] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  return v9;
}

+ (PXStoryClipComposition)threeUpHorizontalThirdsComposition
{
  v2 = [[_PXStoryConcreteClipComposition alloc] initWithNumberOfClips:3 primaryEdge:1 splitRatio:1 secondaryEdge:@"3-Up [//]" splitRatio:0.333333333 label:0.5];

  return v2;
}

+ (PXStoryClipComposition)threeUpVerticalThirdsComposition
{
  v2 = [[_PXStoryConcreteClipComposition alloc] initWithNumberOfClips:3 primaryEdge:0 splitRatio:0 secondaryEdge:@"3-Up [||]" splitRatio:0.333333333 label:0.5];

  return v2;
}

+ (NSArray)supportedTwoUpCompositions
{
  v3 = [a1 defaultTwoUpCompositions];
  v4 = [a1 supportedTwoUpAssetSplitCompositions];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

+ (NSArray)supportedTwoUpAssetSplitCompositions
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = [a1 twoUpOneThirdLeadingTwoThirdsTrailingAssetSplitComposition];
  v9[0] = v3;
  v4 = [a1 twoUpTwoThirdsLeadingOneThirdTrailingAssetSplitComposition];
  v9[1] = v4;
  v5 = [a1 twoUpOneThirdTopTwoThirdsBottomAssetSplitComposition];
  v9[2] = v5;
  v6 = [a1 twoUpTwoThirdsTopOneThirdBottomAssetSplitComposition];
  v9[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  return v7;
}

+ (PXStoryClipComposition)twoUpTwoThirdsTopOneThirdBottomAssetSplitComposition
{
  v2 = [[_PXStoryConcreteClipComposition alloc] initWithSingleAssetSplitAxis:2 splitRatio:@"Single Asset Split [ /]" label:0.666666667];

  return v2;
}

+ (PXStoryClipComposition)twoUpOneThirdTopTwoThirdsBottomAssetSplitComposition
{
  v2 = [[_PXStoryConcreteClipComposition alloc] initWithSingleAssetSplitAxis:2 splitRatio:@"Single Asset Split [/ ]" label:0.333333333];

  return v2;
}

+ (PXStoryClipComposition)twoUpTwoThirdsLeadingOneThirdTrailingAssetSplitComposition
{
  v2 = [[_PXStoryConcreteClipComposition alloc] initWithSingleAssetSplitAxis:1 splitRatio:@"Single Asset Split [ |]" label:0.666666667];

  return v2;
}

+ (PXStoryClipComposition)twoUpOneThirdLeadingTwoThirdsTrailingAssetSplitComposition
{
  v2 = [[_PXStoryConcreteClipComposition alloc] initWithSingleAssetSplitAxis:1 splitRatio:@"Single Asset Split [| ]" label:0.333333333];

  return v2;
}

+ (NSArray)defaultTwoUpCompositions
{
  v11[6] = *MEMORY[0x1E69E9840];
  v3 = [a1 twoUpHalfLeadingHalfTrailingComposition];
  v11[0] = v3;
  v4 = [a1 twoUpHalfTopHalfBottomComposition];
  v11[1] = v4;
  v5 = [a1 twoUpOneThirdLeadingTwoThirdsTrailingComposition];
  v11[2] = v5;
  v6 = [a1 twoUpTwoThirdsLeadingOneThirdTrailingComposition];
  v11[3] = v6;
  v7 = [a1 twoUpOneThirdTopTwoThirdsBottomComposition];
  v11[4] = v7;
  v8 = [a1 twoUpTwoThirdsTopOneThirdBottomComposition];
  v11[5] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  return v9;
}

+ (PXStoryClipComposition)twoUpTwoThirdsTopOneThirdBottomComposition
{
  v2 = [[_PXStoryConcreteClipComposition alloc] initWithTwoUpEdge:1 splitRatio:@"2-Up [ /]" label:0.666666667];

  return v2;
}

+ (PXStoryClipComposition)twoUpOneThirdTopTwoThirdsBottomComposition
{
  v2 = [[_PXStoryConcreteClipComposition alloc] initWithTwoUpEdge:1 splitRatio:@"2-Up [/ ]" label:0.333333333];

  return v2;
}

+ (PXStoryClipComposition)twoUpTwoThirdsLeadingOneThirdTrailingComposition
{
  v2 = [[_PXStoryConcreteClipComposition alloc] initWithTwoUpEdge:0 splitRatio:@"2-Up [ |]" label:0.666666667];

  return v2;
}

+ (PXStoryClipComposition)twoUpOneThirdLeadingTwoThirdsTrailingComposition
{
  v2 = [[_PXStoryConcreteClipComposition alloc] initWithTwoUpEdge:0 splitRatio:@"2-Up [| ]" label:0.333333333];

  return v2;
}

+ (PXStoryClipComposition)twoUpHalfTopHalfBottomComposition
{
  v2 = [[_PXStoryConcreteClipComposition alloc] initWithTwoUpEdge:1 splitRatio:@"2-Up [ / ]" label:0.5];

  return v2;
}

+ (PXStoryClipComposition)twoUpHalfLeadingHalfTrailingComposition
{
  v2 = [[_PXStoryConcreteClipComposition alloc] initWithTwoUpEdge:0 splitRatio:@"2-Up [ | ]" label:0.5];

  return v2;
}

+ (id)oneUpCompositionsWithAspectRatioPassingTest:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a1 defaultOneUpCompositions];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 aspectRatio];
          if (v4[2](v4))
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

+ (NSArray)defaultOneUpCompositions
{
  v14[9] = *MEMORY[0x1E69E9840];
  v3 = [a1 oneUpComposition];
  v4 = [a1 aspectFitOneUpComposition];
  v14[1] = v4;
  v5 = [a1 oneUpCompositionWithAspectRatioNumerator:16 denominator:9];
  v14[2] = v5;
  v6 = [a1 oneUpCompositionWithAspectRatioNumerator:3 denominator:2];
  v14[3] = v6;
  v7 = [a1 oneUpCompositionWithAspectRatioNumerator:4 denominator:3];
  v14[4] = v7;
  v8 = [a1 oneUpCompositionWithAspectRatioNumerator:1 denominator:1];
  v14[5] = v8;
  v9 = [a1 oneUpCompositionWithAspectRatioNumerator:3 denominator:4];
  v14[6] = v9;
  v10 = [a1 oneUpCompositionWithAspectRatioNumerator:2 denominator:3];
  v14[7] = v10;
  v11 = [a1 oneUpCompositionWithAspectRatioNumerator:9 denominator:16];
  v14[8] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  return v12;
}

+ (id)oneUpCompositionWithAspectRatioNumerator:(int64_t)a3 denominator:(int64_t)a4
{
  v4 = [[_PXStoryConcreteFixedAspectOneUpClipComposition alloc] initWithAspectRatioNumerator:a3 denominator:a4];

  return v4;
}

+ (PXStoryClipComposition)aspectFitOneUpComposition
{
  v2 = objc_alloc_init(_PXStoryConcreteAspectFitOneUpClipComposition);

  return v2;
}

+ (PXStoryClipComposition)oneUpComposition
{
  if (oneUpComposition_onceToken != -1)
  {
    dispatch_once(&oneUpComposition_onceToken, &__block_literal_global_46407);
  }

  v3 = oneUpComposition_oneUpComposition;

  return v3;
}

void __49__PXStoryClipCompositionFactory_oneUpComposition__block_invoke()
{
  v0 = [[_PXStoryConcreteClipComposition alloc] initWithOneUp];
  v1 = oneUpComposition_oneUpComposition;
  oneUpComposition_oneUpComposition = v0;
}

@end