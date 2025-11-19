@interface UIIntelligenceLightSourceDescriptor
@end

@implementation UIIntelligenceLightSourceDescriptor

void __72___UIIntelligenceLightSourceDescriptor__createLightSourceViewWithFrame___block_invoke(uint64_t a1)
{
  v2 = (*(*(*(a1 + 32) + 8) + 16))(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 40) + 8) + 40) setUserInteractionEnabled:0];
  v5 = [*(*(*(a1 + 40) + 8) + 40) layer];
  [v5 setAllowsHitTesting:0];
}

id __78___UIIntelligenceLightSourceDescriptor_descriptorWithModificationID_modifier___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = (*(*(a1 + 40) + 16))();

  return v3;
}

@end