@interface RTHint
@end

@implementation RTHint

void __52__RTHint_RTCoreDataTransformable__createWithHintMO___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D01120]);
  v3 = objc_alloc(MEMORY[0x277D01160]);
  [*(a1 + 32) latitude];
  v5 = v4;
  [*(a1 + 32) longitude];
  v7 = v6;
  [*(a1 + 32) horizontalUncertainty];
  v9 = v8;
  v16 = [*(a1 + 32) date];
  v10 = [v3 initWithLatitude:v16 longitude:v5 horizontalUncertainty:v7 date:v9];
  v11 = [*(a1 + 32) source];
  v12 = [*(a1 + 32) date];
  v13 = [v2 initWithLocation:v10 source:v11 date:v12];
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

@end