@interface PIPortraitNode
+ (id)vectorWithFloats:(id)floats;
- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)data;
- (NURenderNode)blurMap;
- (NURenderNode)input;
- (id)_evaluateImageProperties:(id *)properties;
@end

@implementation PIPortraitNode

+ (id)vectorWithFloats:(id)floats
{
  v22 = *MEMORY[0x1E69E9840];
  floatsCopy = floats;
  v4 = [floatsCopy count];
  if (v4 >= 0x20)
  {
    v5 = 32;
  }

  else
  {
    v5 = v4;
  }

  v6 = [floatsCopy subarrayWithRange:{0, v5}];

  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    v11 = v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v16 + 1) + 8 * i) doubleValue];
        *v11++ = v13;
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = [MEMORY[0x1E695F688] vectorWithValues:v21 count:{objc_msgSend(v7, "count")}];

  return v14;
}

- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)data
{
  input = [(PIPortraitNode *)self input];
  v6 = [input canPropagateOriginalAuxiliaryData:data];

  if (data == 7 && v6)
  {
    return ![(PIPortraitNode *)self shouldDisableGainMap];
  }

  return v6;
}

- (id)_evaluateImageProperties:(id *)properties
{
  input = [(PIPortraitNode *)self input];
  v6 = [input imageProperties:properties];

  if (v6 && [(PIPortraitNode *)self shouldDisableGainMap])
  {
    v7 = [objc_alloc(MEMORY[0x1E69B3D60]) initWithProperties:v6];
    [v7 setAuxiliaryImageProperties:0 forType:7];

    v6 = v7;
  }

  return v6;
}

- (NURenderNode)blurMap
{
  inputs = [(NURenderNode *)self inputs];
  v3 = [inputs objectForKeyedSubscript:@"inputBlurMap"];

  return v3;
}

- (NURenderNode)input
{
  inputs = [(NURenderNode *)self inputs];
  v3 = [inputs objectForKeyedSubscript:@"inputImage"];

  return v3;
}

@end