@interface PXSelectCountAttributedString
@end

@implementation PXSelectCountAttributedString

void ___PXSelectCountAttributedString_block_invoke()
{
  v8[3] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v1 = [v0 mutableCopy];
  v2 = _PXSelectCountAttributedString_paragraphStyle;
  _PXSelectCountAttributedString_paragraphStyle = v1;

  v7[0] = *MEMORY[0x277D740A8];
  v3 = [MEMORY[0x277D74300] boldSystemFontOfSize:13.0];
  v8[0] = v3;
  v7[1] = *MEMORY[0x277D740C0];
  v4 = [MEMORY[0x277D75348] whiteColor];
  v7[2] = *MEMORY[0x277D74118];
  v8[1] = v4;
  v8[2] = _PXSelectCountAttributedString_paragraphStyle;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v6 = _PXSelectCountAttributedString_attributes;
  _PXSelectCountAttributedString_attributes = v5;
}

@end