@interface PRGrandfatheredRenderingEventTypes
@end

@implementation PRGrandfatheredRenderingEventTypes

void ____PRGrandfatheredRenderingEventTypes_block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"PRRenderingEventTypeTap";
  v4[1] = @"PRRenderingEventTypeSwipeRight";
  v4[2] = @"PRRenderingEventTypeSwipeLeft";
  v4[3] = @"PRRenderingEventTypeHostWillDisappear";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = __PRGrandfatheredRenderingEventTypes_grandfatheredEventTypes;
  __PRGrandfatheredRenderingEventTypes_grandfatheredEventTypes = v2;
}

@end