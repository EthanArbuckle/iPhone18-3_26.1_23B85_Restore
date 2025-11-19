@interface UIPhysicalButtonAndBehaviorMap
@end

@implementation UIPhysicalButtonAndBehaviorMap

void ___UIPhysicalButtonAndBehaviorMap_block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1EFE2F368;
  v2[1] = &unk_1EFE2F2C0;
  v3[0] = &unk_1EFE2B410;
  v3[1] = &unk_1EFE2B428;
  v2[2] = &unk_1EFE2F2D8;
  v3[2] = &unk_1EFE2B440;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = qword_1ED49C6F0;
  qword_1ED49C6F0 = v0;
}

@end