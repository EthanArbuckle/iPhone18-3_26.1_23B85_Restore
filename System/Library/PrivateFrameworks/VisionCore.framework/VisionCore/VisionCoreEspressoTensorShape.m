@interface VisionCoreEspressoTensorShape
+ (id)shapeForBlobDimensions:(id *)a3;
@end

@implementation VisionCoreEspressoTensorShape

+ (id)shapeForBlobDimensions:(id *)a3
{
  v3 = [[a1 alloc] initWithBatchNumber:a3->var4 channels:a3->var3 height:a3->var2 width:a3->var1];

  return v3;
}

@end