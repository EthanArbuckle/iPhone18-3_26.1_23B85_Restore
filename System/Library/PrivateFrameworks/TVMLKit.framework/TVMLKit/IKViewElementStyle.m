@interface IKViewElementStyle
@end

@implementation IKViewElementStyle

uint64_t __56__IKViewElementStyle_TVMLKitAdditions__tv_textAlignment__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = tv_textAlignment_sAlignmentKeysMap;
  tv_textAlignment_sAlignmentKeysMap = v0;

  [tv_textAlignment_sAlignmentKeysMap setObject:&unk_287E484C8 forKeyedSubscript:@"left"];
  [tv_textAlignment_sAlignmentKeysMap setObject:&unk_287E484E0 forKeyedSubscript:@"center"];
  [tv_textAlignment_sAlignmentKeysMap setObject:&unk_287E484F8 forKeyedSubscript:@"right"];
  [tv_textAlignment_sAlignmentKeysMap setObject:&unk_287E48510 forKeyedSubscript:@"justified"];
  v2 = tv_textAlignment_sAlignmentKeysMap;

  return [v2 setObject:&unk_287E48528 forKeyedSubscript:@"natural"];
}

uint64_t __52__IKViewElementStyle_TVMLKitAdditions__tv_alignment__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = tv_alignment_sAlignmentKeysMap;
  tv_alignment_sAlignmentKeysMap = v0;

  [tv_alignment_sAlignmentKeysMap setObject:&unk_287E484E0 forKeyedSubscript:@"left"];
  [tv_alignment_sAlignmentKeysMap setObject:&unk_287E484F8 forKeyedSubscript:@"center"];
  [tv_alignment_sAlignmentKeysMap setObject:&unk_287E48510 forKeyedSubscript:@"right"];
  [tv_alignment_sAlignmentKeysMap setObject:&unk_287E48528 forKeyedSubscript:@"leading"];
  v2 = tv_alignment_sAlignmentKeysMap;

  return [v2 setObject:&unk_287E48540 forKeyedSubscript:@"trailing"];
}

uint64_t __51__IKViewElementStyle_TVMLKitAdditions__tv_position__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = tv_position_sPositionKeysMap;
  tv_position_sPositionKeysMap = v0;

  [tv_position_sPositionKeysMap setObject:&unk_287E484E0 forKeyedSubscript:@"center"];
  [tv_position_sPositionKeysMap setObject:&unk_287E484F8 forKeyedSubscript:@"top"];
  [tv_position_sPositionKeysMap setObject:&unk_287E48510 forKeyedSubscript:@"bottom"];
  [tv_position_sPositionKeysMap setObject:&unk_287E48528 forKeyedSubscript:@"left"];
  [tv_position_sPositionKeysMap setObject:&unk_287E48540 forKeyedSubscript:@"right"];
  [tv_position_sPositionKeysMap setObject:&unk_287E48558 forKeyedSubscript:@"top-left"];
  [tv_position_sPositionKeysMap setObject:&unk_287E48570 forKeyedSubscript:@"top-right"];
  [tv_position_sPositionKeysMap setObject:&unk_287E48588 forKeyedSubscript:@"bottom-left"];
  [tv_position_sPositionKeysMap setObject:&unk_287E485A0 forKeyedSubscript:@"bottom-right"];
  [tv_position_sPositionKeysMap setObject:&unk_287E485B8 forKeyedSubscript:@"header"];
  [tv_position_sPositionKeysMap setObject:&unk_287E485D0 forKeyedSubscript:@"footer"];
  [tv_position_sPositionKeysMap setObject:&unk_287E485E8 forKeyedSubscript:@"leading"];
  [tv_position_sPositionKeysMap setObject:&unk_287E48600 forKeyedSubscript:@"trailing"];
  [tv_position_sPositionKeysMap setObject:&unk_287E48618 forKeyedSubscript:@"top-leading"];
  [tv_position_sPositionKeysMap setObject:&unk_287E48630 forKeyedSubscript:@"top-trailing"];
  [tv_position_sPositionKeysMap setObject:&unk_287E48648 forKeyedSubscript:@"bottom-leading"];
  v2 = tv_position_sPositionKeysMap;

  return [v2 setObject:&unk_287E48660 forKeyedSubscript:@"bottom-trailing"];
}

uint64_t __59__IKViewElementStyle_TVMLKitAdditions__tv_contentAlignment__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = tv_contentAlignment_sAlignmentKeysMap;
  tv_contentAlignment_sAlignmentKeysMap = v0;

  [tv_contentAlignment_sAlignmentKeysMap setObject:&unk_287E484E0 forKeyedSubscript:@"top"];
  [tv_contentAlignment_sAlignmentKeysMap setObject:&unk_287E484F8 forKeyedSubscript:@"center"];
  v2 = tv_contentAlignment_sAlignmentKeysMap;

  return [v2 setObject:&unk_287E48510 forKeyedSubscript:@"bottom"];
}

uint64_t __55__IKViewElementStyle_TVMLKitAdditions__tv_symbolWeight__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = tv_symbolWeight_sSymbolWeightMap;
  tv_symbolWeight_sSymbolWeightMap = v0;

  [tv_symbolWeight_sSymbolWeightMap setObject:&unk_287E484E0 forKeyedSubscript:@"ultralight"];
  [tv_symbolWeight_sSymbolWeightMap setObject:&unk_287E484F8 forKeyedSubscript:@"thin"];
  [tv_symbolWeight_sSymbolWeightMap setObject:&unk_287E48510 forKeyedSubscript:@"light"];
  [tv_symbolWeight_sSymbolWeightMap setObject:&unk_287E48528 forKeyedSubscript:@"regular"];
  [tv_symbolWeight_sSymbolWeightMap setObject:&unk_287E48540 forKeyedSubscript:@"medium"];
  [tv_symbolWeight_sSymbolWeightMap setObject:&unk_287E48558 forKeyedSubscript:@"semibold"];
  [tv_symbolWeight_sSymbolWeightMap setObject:&unk_287E48570 forKeyedSubscript:@"bold"];
  [tv_symbolWeight_sSymbolWeightMap setObject:&unk_287E48588 forKeyedSubscript:@"heavy"];
  v2 = tv_symbolWeight_sSymbolWeightMap;

  return [v2 setObject:&unk_287E485A0 forKeyedSubscript:@"black"];
}

uint64_t __54__IKViewElementStyle_TVMLKitAdditions__tv_symbolScale__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = tv_symbolScale_sSymbolScaleMap;
  tv_symbolScale_sSymbolScaleMap = v0;

  [tv_symbolScale_sSymbolScaleMap setObject:&unk_287E48678 forKeyedSubscript:@"default"];
  [tv_symbolScale_sSymbolScaleMap setObject:&unk_287E484C8 forKeyedSubscript:@"unspecified"];
  [tv_symbolScale_sSymbolScaleMap setObject:&unk_287E484E0 forKeyedSubscript:@"small"];
  [tv_symbolScale_sSymbolScaleMap setObject:&unk_287E484F8 forKeyedSubscript:@"medium"];
  v2 = tv_symbolScale_sSymbolScaleMap;

  return [v2 setObject:&unk_287E48510 forKeyedSubscript:@"large"];
}

uint64_t __58__IKViewElementStyle_TVMLKitAdditions__tv_symbolTextStyle__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = tv_symbolTextStyle_sSymbolTextStyleMap;
  tv_symbolTextStyle_sSymbolTextStyleMap = v0;

  [tv_symbolTextStyle_sSymbolTextStyleMap setObject:*MEMORY[0x277D769A8] forKeyedSubscript:@"largetitle"];
  [tv_symbolTextStyle_sSymbolTextStyleMap setObject:*MEMORY[0x277D76A08] forKeyedSubscript:@"title1"];
  [tv_symbolTextStyle_sSymbolTextStyleMap setObject:*MEMORY[0x277D76A20] forKeyedSubscript:@"title2"];
  [tv_symbolTextStyle_sSymbolTextStyleMap setObject:*MEMORY[0x277D76A28] forKeyedSubscript:@"title3"];
  [tv_symbolTextStyle_sSymbolTextStyleMap setObject:*MEMORY[0x277D76988] forKeyedSubscript:@"headline"];
  [tv_symbolTextStyle_sSymbolTextStyleMap setObject:*MEMORY[0x277D769D0] forKeyedSubscript:@"subheadline"];
  [tv_symbolTextStyle_sSymbolTextStyleMap setObject:*MEMORY[0x277D76918] forKeyedSubscript:@"body"];
  [tv_symbolTextStyle_sSymbolTextStyleMap setObject:*MEMORY[0x277D76920] forKeyedSubscript:@"callout"];
  [tv_symbolTextStyle_sSymbolTextStyleMap setObject:*MEMORY[0x277D76968] forKeyedSubscript:@"footnote"];
  [tv_symbolTextStyle_sSymbolTextStyleMap setObject:*MEMORY[0x277D76938] forKeyedSubscript:@"caption1"];
  v2 = *MEMORY[0x277D76940];
  v3 = tv_symbolTextStyle_sSymbolTextStyleMap;

  return [v3 setObject:v2 forKeyedSubscript:@"caption2"];
}

@end