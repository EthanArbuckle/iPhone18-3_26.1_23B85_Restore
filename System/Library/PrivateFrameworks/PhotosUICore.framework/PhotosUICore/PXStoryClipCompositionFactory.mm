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
+ (id)oneUpCompositionWithAspectRatioNumerator:(int64_t)numerator denominator:(int64_t)denominator;
+ (id)oneUpCompositionsWithAspectRatioPassingTest:(id)test;
@end

@implementation PXStoryClipCompositionFactory

+ (NSArray)allSupportedCompositions
{
  supportedOneUpCompositions = [self supportedOneUpCompositions];
  supportedNUpCompositions = [self supportedNUpCompositions];
  v5 = [supportedOneUpCompositions arrayByAddingObjectsFromArray:supportedNUpCompositions];

  return v5;
}

+ (NSArray)allDefaultCompositions
{
  defaultOneUpCompositions = [self defaultOneUpCompositions];
  defaultNUpCompositions = [self defaultNUpCompositions];
  v5 = [defaultOneUpCompositions arrayByAddingObjectsFromArray:defaultNUpCompositions];

  return v5;
}

+ (NSArray)supportedNUpCompositions
{
  supportedTwoUpCompositions = [self supportedTwoUpCompositions];
  supportedThreeUpCompositions = [self supportedThreeUpCompositions];
  v5 = [supportedTwoUpCompositions arrayByAddingObjectsFromArray:supportedThreeUpCompositions];

  return v5;
}

+ (NSArray)defaultNUpCompositions
{
  defaultTwoUpCompositions = [self defaultTwoUpCompositions];
  defaultThreeUpCompositions = [self defaultThreeUpCompositions];
  v5 = [defaultTwoUpCompositions arrayByAddingObjectsFromArray:defaultThreeUpCompositions];

  return v5;
}

+ (NSArray)defaultThreeUpCompositions
{
  v11[6] = *MEMORY[0x1E69E9840];
  threeUpVerticalThirdsComposition = [self threeUpVerticalThirdsComposition];
  v11[0] = threeUpVerticalThirdsComposition;
  threeUpHorizontalThirdsComposition = [self threeUpHorizontalThirdsComposition];
  v11[1] = threeUpHorizontalThirdsComposition;
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
  defaultTwoUpCompositions = [self defaultTwoUpCompositions];
  supportedTwoUpAssetSplitCompositions = [self supportedTwoUpAssetSplitCompositions];
  v5 = [defaultTwoUpCompositions arrayByAddingObjectsFromArray:supportedTwoUpAssetSplitCompositions];

  return v5;
}

+ (NSArray)supportedTwoUpAssetSplitCompositions
{
  v9[4] = *MEMORY[0x1E69E9840];
  twoUpOneThirdLeadingTwoThirdsTrailingAssetSplitComposition = [self twoUpOneThirdLeadingTwoThirdsTrailingAssetSplitComposition];
  v9[0] = twoUpOneThirdLeadingTwoThirdsTrailingAssetSplitComposition;
  twoUpTwoThirdsLeadingOneThirdTrailingAssetSplitComposition = [self twoUpTwoThirdsLeadingOneThirdTrailingAssetSplitComposition];
  v9[1] = twoUpTwoThirdsLeadingOneThirdTrailingAssetSplitComposition;
  twoUpOneThirdTopTwoThirdsBottomAssetSplitComposition = [self twoUpOneThirdTopTwoThirdsBottomAssetSplitComposition];
  v9[2] = twoUpOneThirdTopTwoThirdsBottomAssetSplitComposition;
  twoUpTwoThirdsTopOneThirdBottomAssetSplitComposition = [self twoUpTwoThirdsTopOneThirdBottomAssetSplitComposition];
  v9[3] = twoUpTwoThirdsTopOneThirdBottomAssetSplitComposition;
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
  twoUpHalfLeadingHalfTrailingComposition = [self twoUpHalfLeadingHalfTrailingComposition];
  v11[0] = twoUpHalfLeadingHalfTrailingComposition;
  twoUpHalfTopHalfBottomComposition = [self twoUpHalfTopHalfBottomComposition];
  v11[1] = twoUpHalfTopHalfBottomComposition;
  twoUpOneThirdLeadingTwoThirdsTrailingComposition = [self twoUpOneThirdLeadingTwoThirdsTrailingComposition];
  v11[2] = twoUpOneThirdLeadingTwoThirdsTrailingComposition;
  twoUpTwoThirdsLeadingOneThirdTrailingComposition = [self twoUpTwoThirdsLeadingOneThirdTrailingComposition];
  v11[3] = twoUpTwoThirdsLeadingOneThirdTrailingComposition;
  twoUpOneThirdTopTwoThirdsBottomComposition = [self twoUpOneThirdTopTwoThirdsBottomComposition];
  v11[4] = twoUpOneThirdTopTwoThirdsBottomComposition;
  twoUpTwoThirdsTopOneThirdBottomComposition = [self twoUpTwoThirdsTopOneThirdBottomComposition];
  v11[5] = twoUpTwoThirdsTopOneThirdBottomComposition;
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

+ (id)oneUpCompositionsWithAspectRatioPassingTest:(id)test
{
  v19 = *MEMORY[0x1E69E9840];
  testCopy = test;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  defaultOneUpCompositions = [self defaultOneUpCompositions];
  v7 = [defaultOneUpCompositions countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(defaultOneUpCompositions);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 aspectRatio];
          if (testCopy[2](testCopy))
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [defaultOneUpCompositions countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

+ (NSArray)defaultOneUpCompositions
{
  v14[9] = *MEMORY[0x1E69E9840];
  oneUpComposition = [self oneUpComposition];
  aspectFitOneUpComposition = [self aspectFitOneUpComposition];
  v14[1] = aspectFitOneUpComposition;
  v5 = [self oneUpCompositionWithAspectRatioNumerator:16 denominator:9];
  v14[2] = v5;
  v6 = [self oneUpCompositionWithAspectRatioNumerator:3 denominator:2];
  v14[3] = v6;
  v7 = [self oneUpCompositionWithAspectRatioNumerator:4 denominator:3];
  v14[4] = v7;
  v8 = [self oneUpCompositionWithAspectRatioNumerator:1 denominator:1];
  v14[5] = v8;
  v9 = [self oneUpCompositionWithAspectRatioNumerator:3 denominator:4];
  v14[6] = v9;
  v10 = [self oneUpCompositionWithAspectRatioNumerator:2 denominator:3];
  v14[7] = v10;
  v11 = [self oneUpCompositionWithAspectRatioNumerator:9 denominator:16];
  v14[8] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  return v12;
}

+ (id)oneUpCompositionWithAspectRatioNumerator:(int64_t)numerator denominator:(int64_t)denominator
{
  v4 = [[_PXStoryConcreteFixedAspectOneUpClipComposition alloc] initWithAspectRatioNumerator:numerator denominator:denominator];

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