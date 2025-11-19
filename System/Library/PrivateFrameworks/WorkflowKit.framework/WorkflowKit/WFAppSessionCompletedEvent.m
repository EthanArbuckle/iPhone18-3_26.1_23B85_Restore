@interface WFAppSessionCompletedEvent
+ (id)serializablePropertyTransformers;
@end

@implementation WFAppSessionCompletedEvent

+ (id)serializablePropertyTransformers
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"duration";
  v2 = objc_alloc_init(WFEventLogarithmicBinningValueTransformer);
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end