@interface UISTouchAuthenticationVerifier
@end

@implementation UISTouchAuthenticationVerifier

UISTransform3DGrader *__89___UISTouchAuthenticationVerifier_initWithBuildOverrideThresholds_runOverrideThresholds___block_invoke(uint64_t a1, int a2, double a3, double a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(UISTransform3DGrader);
  v9 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"mayHaveCatalystPadIdiom"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v12[0] = xmmword_1960190C0;
    [(UISTransform3DGrader *)v8 allowScales:v12 count:2 lowerMultiplier:a3 lowerConstant:0.0 upperMultiplier:a4 upperConstant:0.0];
    v13 = xmmword_1960190D0;
    [(UISTransform3DGrader *)v8 allowRotations:&v13 count:2];
    [(UISTransform3DGrader *)v8 allowHorizontalFlip:1];
  }

  else
  {
    *&v13 = 0x3FF0000000000000;
    [(UISTransform3DGrader *)v8 allowScales:&v13 count:1 lowerMultiplier:a3 lowerConstant:0.0 upperMultiplier:a4 upperConstant:0.0];
    if (a2)
    {
      v12[0] = xmmword_1960190E0;
      v12[1] = unk_1960190F0;
      [(UISTransform3DGrader *)v8 allowRotations:v12 count:4];
    }
  }

  return v8;
}

@end