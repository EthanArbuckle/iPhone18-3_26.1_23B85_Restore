@interface PIAutoLoopAdjustmentController
- (CGRect)stabilizedCropRect;
- (NSDictionary)recipe;
- (NSString)flavor;
- (void)setFlavor:(id)a3;
- (void)setRecipe:(id)a3;
@end

@implementation PIAutoLoopAdjustmentController

- (void)setFlavor:(id)a3
{
  v6 = [a3 copy];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIAutoLoopAdjustmentController flavorKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (void)setRecipe:(id)a3
{
  v6 = [a3 copy];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIAutoLoopAdjustmentController recipeKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (CGRect)stabilizedCropRect
{
  v2 = [(PIAutoLoopAdjustmentController *)self recipe];
  v3 = [v2 objectForKeyedSubscript:@"NormStabilizeInstructions"];
  v4 = [v3 objectForKeyedSubscript:@"stabCropRect"];
  v5 = [v4 objectForKeyedSubscript:@"X"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 objectForKeyedSubscript:@"Y"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v4 objectForKeyedSubscript:@"Width"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [v4 objectForKeyedSubscript:@"Height"];
  [v14 doubleValue];
  v16 = v15;

  v17 = v7;
  v18 = v10;
  v19 = v13;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (NSString)flavor
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIAutoLoopAdjustmentController flavorKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

- (NSDictionary)recipe
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIAutoLoopAdjustmentController recipeKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

@end