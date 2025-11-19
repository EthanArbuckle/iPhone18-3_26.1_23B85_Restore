@interface PRValidRenderingEventTypes
@end

@implementation PRValidRenderingEventTypes

void ____PRValidRenderingEventTypes_block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFA8];
  v6[0] = @"PRRenderingEventTypeObscurableContentAppearance";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = __PRValidRenderingEventTypes_validEventTypes;
  __PRValidRenderingEventTypes_validEventTypes = v2;

  v4 = __PRValidRenderingEventTypes_validEventTypes;
  v5 = __PRGrandfatheredRenderingEventTypes();
  [v4 unionSet:v5];
}

@end