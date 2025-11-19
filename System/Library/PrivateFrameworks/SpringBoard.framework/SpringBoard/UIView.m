@interface UIView
@end

@implementation UIView

void __99__UIView_SBSAGeometricTypeAnimationDecomposing___independentlyAnimatableMemberKeyPathsForProperty___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"x", @"y", 0}];
  v1 = _independentlyAnimatableMemberKeyPathsForProperty____centerMembers;
  _independentlyAnimatableMemberKeyPathsForProperty____centerMembers = v0;

  v2 = [MEMORY[0x277CBEB98] setWithObjects:{@"origin.x", @"origin.y", @"size.width", @"size.height", 0}];
  v3 = _independentlyAnimatableMemberKeyPathsForProperty____boundsMembers;
  _independentlyAnimatableMemberKeyPathsForProperty____boundsMembers = v2;
}

uint64_t __80__UIView_SBSAC2PropertyAnimating__sbsa_isPropertyActivelyC2AnimatingForKeyPath___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 keyPath];
  v5 = BSEqualStrings();

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [*(a1 + 40) _independentlyAnimatableMemberKeyPathsForProperty:{*(a1 + 48), 0}];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(a1 + 32) stringByAppendingPathExtension:*(*(&v16 + 1) + 8 * v11)];
          v13 = [v3 keyPath];
          v14 = BSEqualStrings();

          if (v14)
          {
            v6 = 1;
            goto LABEL_13;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_13:
  }

  return v6;
}

uint64_t __76__UIView_SBSAC2PropertyAnimating__sbsa_presentationModifierValueForKeyPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 keyPath];
  v3 = BSEqualStrings();

  return v3;
}

uint64_t __76__UIView_SBSAC2PropertyAnimating__sbsa_presentationModifierValueForKeyPath___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 stringByAppendingPathExtension:v3];
  v6 = [v4 keyPath];

  v7 = BSEqualStrings();
  return v7;
}

uint64_t __66__UIView_SBSystemActionPreviewPresentable___setInflated_deflated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

uint64_t __66__UIView_SBSystemActionPreviewPresentable___setInflated_deflated___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  CGAffineTransformMakeScale(&v3, *(a1 + 40), *(a1 + 48));
  return [v1 setTransform:&v3];
}

uint64_t __58__UIView_SBSystemActionPreviewPresentable___popWithBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, *(a1 + 48), *(a1 + 48));
  [v2 setTransform:&v4];
  return (*(*(a1 + 40) + 16))();
}

void __58__UIView_SBSystemActionPreviewPresentable___popWithBlock___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3 = objc_alloc_init(MEMORY[0x277D65E60]);
  [v3 setBehaviorType:1];
  [v3 setDampingRatio:1.0];
  [v3 setDampingRatioSmoothing:0.0];
  [v3 setResponse:0.5];
  [v3 setResponseSmoothing:0.0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__UIView_SBSystemActionPreviewPresentable___popWithBlock___block_invoke_3;
  v4[3] = &unk_2783A8C18;
  v4[4] = *(a1 + 32);
  [v2 sb_animateWithSettings:v3 mode:4 animations:v4 completion:0];
}

uint64_t __58__UIView_SBSystemActionPreviewPresentable___popWithBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __60__UIView_SBSystemActionPreviewPresentable___shakeWithBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  CGAffineTransformMakeTranslation(&v4, 7.0, 0.0);
  [v2 setTransform:&v4];
  return (*(*(a1 + 40) + 16))();
}

void __60__UIView_SBSystemActionPreviewPresentable___shakeWithBlock___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3 = objc_alloc_init(MEMORY[0x277D65E60]);
  [v3 setBehaviorType:1];
  [v3 setDampingRatio:1.0];
  [v3 setDampingRatioSmoothing:0.0];
  [v3 setResponse:0.45];
  [v3 setResponseSmoothing:0.0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__UIView_SBSystemActionPreviewPresentable___shakeWithBlock___block_invoke_3;
  v4[3] = &unk_2783A8C18;
  v4[4] = *(a1 + 32);
  [v2 sb_animateWithSettings:v3 mode:4 animations:v4 completion:0];
}

uint64_t __60__UIView_SBSystemActionPreviewPresentable___shakeWithBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

void __59__UIView_SBSystemApertureIDCornerCurve__setIDCornerRadius___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sb_cornerCurveFloatAnimatableProperty];
  [v2 setValue:*(a1 + 40)];
}

void __78__UIView_SBSystemApertureIDCornerCurve__sb_cornerCurveFloatAnimatableProperty__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [v2 layer];
  [WeakRetained value];
  v5 = v4;
  v6 = SBCALayerCornerCurveForRadius(v4);
  [v3 setCornerCurve:v6];

  [v3 setCornerRadius:v5];
}

void __78__UIView_SBSystemApertureIDCornerCurve__sb_cornerCurveFloatAnimatableProperty__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presentationValue];
  v4 = v3;
  if ([v2 sbsa_isPropertyActivelyC2AnimatingForKeyPath:@"bounds"])
  {
    [WeakRetained value];
    [WeakRetained presentationValue];
    if ((BSFloatApproximatelyEqualToFloat() & 1) == 0)
    {
      [v2 bounds];
      v6 = v5;
      v8 = v7;
      v9 = [v2 sbsa_presentationModifierValueForKeyPath:@"bounds"];
      v10 = v9;
      if (v9)
      {
        [v9 CGRectValue];
        v6 = v11;
        v8 = v12;
      }

      v13 = v8 * 0.5;
      if (v8 * 0.5 >= v4)
      {
        v13 = v4;
      }

      if (v6 * 0.5 >= v13)
      {
        v4 = v13;
      }

      else
      {
        v4 = v6 * 0.5;
      }
    }
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v15 = MEMORY[0x277CCABB0];
  [WeakRetained velocity];
  v16 = [v15 numberWithDouble:?];
  [v2 _setPresentationValue:v14 velocity:v16 preferredFrameRateRangeMaximum:120 forKey:@"cornerRadius"];
}

uint64_t __67__UIView_SBPIPAdditions__SBPIP_performWithoutRetargetingAnimation___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] activate];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  (*(*(a1 + 32) + 16))();
  v2 = MEMORY[0x277CD9FF0];

  return [v2 commit];
}

uint64_t __91__UIView_SBPIPAdditions__SBPIP_animateUsingDefaultTimingWithOptions_animations_completion___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] activate];
  [MEMORY[0x277CD9FF0] begin];
  v2 = MEMORY[0x277CD9FF0];
  [*(a1 + 40) _currentAnimationDuration];
  [v2 setAnimationDuration:?];
  (*(*(a1 + 32) + 16))();
  v3 = MEMORY[0x277CD9FF0];

  return [v3 commit];
}

void __68__UIView_SBSnapshoting___generateSnapshotOnQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) createImageSlot:1 hasAlpha:{*(a1 + 56), *(a1 + 64)}];
  CGRectGetMinX(*(a1 + 72));
  CGRectGetMinY(*(a1 + 72));
  CARenderServerCaptureLayerWithTransform();
  object = [MEMORY[0x277CD9E38] objectForSlot:v2];
  if (object)
  {
    v3 = [[SBSnapshotSlotIdWrapper alloc] initWithContext:*(a1 + 32) slotId:v2];
    objc_setAssociatedObject(object, "com.apple.SpringBoard.SBAppViewSnapshotSlotIdWrapper", v3, 0x301);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, object, *(a1 + 104));
  }
}

@end