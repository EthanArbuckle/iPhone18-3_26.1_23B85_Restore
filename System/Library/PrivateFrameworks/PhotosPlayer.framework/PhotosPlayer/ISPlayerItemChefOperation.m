@interface ISPlayerItemChefOperation
@end

@implementation ISPlayerItemChefOperation

void __48___ISPlayerItemChefOperation__preparePlayerItem__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v7 = v6;
  if (v6)
  {
    [v6 preferredTransform];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
  }

  v8[0] = v9;
  v8[1] = v10;
  v8[2] = v11;
  [v5 setPreferredTransform:v8];
}

void __48___ISPlayerItemChefOperation__preparePlayerItem__block_invoke_59()
{
  v0 = _preparePlayerItem_InterpolationCurveControlPoints;
  _preparePlayerItem_InterpolationCurveControlPoints = &unk_28705CEF8;
}

void __34___ISPlayerItemChefOperation_main__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleValuesDidLoad];
}

@end