@interface UILabel(TVMLKitAdditions)
- (double)tv_alignmentInsetsForExpectedWidth:()TVMLKitAdditions;
- (double)tv_heightToFirstBaseline;
- (double)tv_scaledValueForValue:()TVMLKitAdditions;
- (double)tv_textSizeForSize:()TVMLKitAdditions;
@end

@implementation UILabel(TVMLKitAdditions)

- (double)tv_heightToFirstBaseline
{
  font = [self font];
  [font lineHeight];
  v3 = v2;
  [font descender];
  v5 = v3 + v4;

  return v5;
}

- (double)tv_scaledValueForValue:()TVMLKitAdditions
{
  font = [self font];
  [font _scaledValueForValue:a2];
  v5 = v4;

  return v5;
}

- (double)tv_textSizeForSize:()TVMLKitAdditions
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__UILabel_TVMLKitAdditions__tv_textSizeForSize___block_invoke;
  v13[3] = &unk_279D6E518;
  v13[4] = self;
  v6 = MEMORY[0x26D6AFBB0](v13);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__UILabel_TVMLKitAdditions__tv_textSizeForSize___block_invoke_2;
  v12[3] = &unk_279D6E518;
  v12[4] = self;
  v7 = MEMORY[0x26D6AFBB0](v12);
  if ([self tv_isPrototypeView])
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  [self tv_sizeThatFits:v8 withSizeCalculation:{a2, a3}];
  v10 = v9;

  return v10;
}

- (double)tv_alignmentInsetsForExpectedWidth:()TVMLKitAdditions
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x4010000000;
  v19 = &unk_26CE937F5;
  v2 = *(MEMORY[0x277D768C8] + 16);
  v20 = *MEMORY[0x277D768C8];
  v21 = v2;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__UILabel_TVMLKitAdditions__tv_alignmentInsetsForExpectedWidth___block_invoke;
  v14[3] = &unk_279D6E5B8;
  v14[4] = v15;
  v14[5] = &v16;
  v3 = MEMORY[0x26D6AFBB0](v14);
  attributedText = [self attributedText];
  if ([attributedText length])
  {
    v5 = [attributedText length];
    v6 = *MEMORY[0x277D740A8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__UILabel_TVMLKitAdditions__tv_alignmentInsetsForExpectedWidth___block_invoke_2;
    v12[3] = &unk_279D6E5E0;
    v13 = v3;
    [attributedText enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{0, v12}];
    _defaultAttributes = v13;
  }

  else
  {
    _defaultAttributes = [self _defaultAttributes];
    v8 = [_defaultAttributes objectForKeyedSubscript:*MEMORY[0x277D740A8]];
    (v3)[2](v3, v8);
  }

  v9 = v17;
  v10 = floor(v17[4]);
  v17[4] = v10;
  v9[6] = floor(v9[6]);

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v16, 8);
  return v10;
}

@end