@interface PIAutoLoopAdjustmentController
- (CGRect)stabilizedCropRect;
- (NSDictionary)recipe;
- (NSString)flavor;
- (void)setFlavor:(id)flavor;
- (void)setRecipe:(id)recipe;
@end

@implementation PIAutoLoopAdjustmentController

- (void)setFlavor:(id)flavor
{
  v6 = [flavor copy];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIAutoLoopAdjustmentController flavorKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (void)setRecipe:(id)recipe
{
  v6 = [recipe copy];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIAutoLoopAdjustmentController recipeKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (CGRect)stabilizedCropRect
{
  recipe = [(PIAutoLoopAdjustmentController *)self recipe];
  v3 = [recipe objectForKeyedSubscript:@"NormStabilizeInstructions"];
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
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIAutoLoopAdjustmentController flavorKey];
  v4 = [adjustment objectForKeyedSubscript:v3];

  return v4;
}

- (NSDictionary)recipe
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIAutoLoopAdjustmentController recipeKey];
  v4 = [adjustment objectForKeyedSubscript:v3];

  return v4;
}

@end