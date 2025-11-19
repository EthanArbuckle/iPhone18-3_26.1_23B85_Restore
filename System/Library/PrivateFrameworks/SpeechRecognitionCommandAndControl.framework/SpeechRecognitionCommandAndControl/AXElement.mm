@interface AXElement
@end

@implementation AXElement

void __54__AXElement_AXElementTextEditing__cacPerformTextPaste__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 uiElement];
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];

  [v5 performAXAction:2065 withValue:v4];
}

uint64_t __45__AXElement_CACElement__englishFunctionWords__block_invoke()
{
  englishFunctionWords___wordSet = [MEMORY[0x277CBEB98] setWithArray:&unk_287BEFFD8];

  return MEMORY[0x2821F96F8]();
}

@end