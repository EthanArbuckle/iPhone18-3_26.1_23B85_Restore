@interface SUICProgressRingLayer
@end

@implementation SUICProgressRingLayer

uint64_t __38___SUICProgressRingLayer_setSpinning___block_invoke()
{
  v0 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.rotation.z"];
  v1 = setSpinning__sRotationAnimation;
  setSpinning__sRotationAnimation = v0;

  [setSpinning__sRotationAnimation setToValue:&unk_1F43C7590];
  [setSpinning__sRotationAnimation setDuration:0.75];
  [setSpinning__sRotationAnimation setCumulative:1];
  v2 = setSpinning__sRotationAnimation;
  LODWORD(v3) = 2139095040;

  return [v2 setRepeatCount:v3];
}

void __58___SUICProgressRingLayer_setProgress_animated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setStrokeEnd:*(a1 + 40)];
    WeakRetained = v3;
  }
}

@end