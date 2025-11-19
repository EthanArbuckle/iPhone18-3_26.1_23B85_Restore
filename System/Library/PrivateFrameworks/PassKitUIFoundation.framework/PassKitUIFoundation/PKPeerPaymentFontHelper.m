@interface PKPeerPaymentFontHelper
+ (id)chiseledCashFontDescriptor;
@end

@implementation PKPeerPaymentFontHelper

+ (id)chiseledCashFontDescriptor
{
  if (chiseledCashFontDescriptor_onceToken != -1)
  {
    +[PKPeerPaymentFontHelper chiseledCashFontDescriptor];
  }

  v3 = chiseledCashFontDescriptor_descriptorWithPalette;

  return v3;
}

void __53__PKPeerPaymentFontHelper_chiseledCashFontDescriptor__block_invoke()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = PKPassKitUIFoundationBundle();
  v1 = [v0 URLForResource:@"SFCash-Chiseled" withExtension:@"otf"];

  if (v1)
  {
    FontDescriptorsFromURL = CTFontManagerCreateFontDescriptorsFromURL(v1);
    if (FontDescriptorsFromURL)
    {
      v3 = FontDescriptorsFromURL;
      if (CFArrayGetCount(FontDescriptorsFromURL) >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
        v9 = *MEMORY[0x277CC4928];
        v10[0] = &unk_286FD0EF0;
        v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
        v6 = CTFontDescriptorCreateCopyWithAttributes(ValueAtIndex, v5);
        v7 = chiseledCashFontDescriptor_descriptorWithPalette;
        chiseledCashFontDescriptor_descriptorWithPalette = v6;
      }

      CFRelease(v3);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end