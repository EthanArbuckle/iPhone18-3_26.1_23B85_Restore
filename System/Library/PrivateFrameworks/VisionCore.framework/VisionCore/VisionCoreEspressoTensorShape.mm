@interface VisionCoreEspressoTensorShape
+ (id)shapeForBlobDimensions:(id *)dimensions;
@end

@implementation VisionCoreEspressoTensorShape

+ (id)shapeForBlobDimensions:(id *)dimensions
{
  v3 = [[self alloc] initWithBatchNumber:dimensions->var4 channels:dimensions->var3 height:dimensions->var2 width:dimensions->var1];

  return v3;
}

@end