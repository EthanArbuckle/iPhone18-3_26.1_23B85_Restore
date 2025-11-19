@interface WFTriggeredAutomationEvent
+ (id)serializablePropertyTransformers;
@end

@implementation WFTriggeredAutomationEvent

+ (id)serializablePropertyTransformers
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"batchCount";
  v2 = objc_alloc_init(WFEventSignificantFigureValueTransformer);
  v7[1] = @"batchDroppedCount";
  v8[0] = v2;
  v3 = objc_alloc_init(WFEventSignificantFigureValueTransformer);
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end