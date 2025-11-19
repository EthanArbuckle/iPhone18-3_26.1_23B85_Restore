@interface UIView(SBPIPAdditions)
+ (void)SBPIP_animateUsingDefaultTimingWithOptions:()SBPIPAdditions animations:completion:;
+ (void)SBPIP_performWithoutRetargetingAnimation:()SBPIPAdditions;
- (uint64_t)SBPIP_allowsEdgeAntialiasing;
- (uint64_t)SBPIP_allowsGroupBlending;
- (void)SBPIP_setAllowsEdgeAntialiasing:()SBPIPAdditions;
- (void)SBPIP_setAllowsGroupBlending:()SBPIPAdditions;
@end

@implementation UIView(SBPIPAdditions)

- (uint64_t)SBPIP_allowsEdgeAntialiasing
{
  v1 = [a1 layer];
  v2 = [v1 allowsEdgeAntialiasing];

  return v2;
}

- (void)SBPIP_setAllowsEdgeAntialiasing:()SBPIPAdditions
{
  v5 = [a1 layer];
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  [v5 setContentsScale:?];

  v7 = [a1 layer];
  [v7 setAllowsEdgeAntialiasing:a3];
}

- (uint64_t)SBPIP_allowsGroupBlending
{
  v1 = [a1 layer];
  v2 = [v1 allowsGroupBlending];

  return v2;
}

- (void)SBPIP_setAllowsGroupBlending:()SBPIPAdditions
{
  v4 = [a1 layer];
  [v4 setAllowsGroupBlending:a3];
}

+ (void)SBPIP_performWithoutRetargetingAnimation:()SBPIPAdditions
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__UIView_SBPIPAdditions__SBPIP_performWithoutRetargetingAnimation___block_invoke;
  v6[3] = &unk_2783A9348;
  v7 = v4;
  v5 = v4;
  [a1 _performWithoutRetargetingAnimations:v6];
}

+ (void)SBPIP_animateUsingDefaultTimingWithOptions:()SBPIPAdditions animations:completion:
{
  v8 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__UIView_SBPIPAdditions__SBPIP_animateUsingDefaultTimingWithOptions_animations_completion___block_invoke;
  v10[3] = &unk_2783B2E30;
  v11 = v8;
  v12 = a1;
  v9 = v8;
  [a1 _animateUsingDefaultTimingWithOptions:a3 animations:v10 completion:a5];
}

@end