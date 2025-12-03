@interface TPSPhoneNumberEditingPane
- ($1CC25822903029FAFB04A26BED58AE91)suggestionsForString:(id)string inputIndex:(unsigned int)index;
- (void)setPreferenceSpecifier:(id)specifier;
@end

@implementation TPSPhoneNumberEditingPane

- (void)setPreferenceSpecifier:(id)specifier
{
  v10[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = TPSPhoneNumberEditingPane;
  [(PSTextEditingPane *)&v8 setPreferenceSpecifier:specifier];
  v4 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FCF0]);
  [v4 setAutocorrectionType:1];
  [v4 setAutoresizesTextToFit:1];
  [v4 setClearButtonMode:0];
  v9 = *MEMORY[0x277D74200];
  v10[0] = &unk_282D5D690;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v4 setDefaultTextAttributes:v5];

  [v4 setEnabled:1];
  [v4 setKeyboardType:5];
  [v4 setReturnKeyType:9];
  textInputTraits = [v4 textInputTraits];
  [textInputTraits setContentsIsSingleValue:1];

  [v4 setTextSuggestionDelegate:self];
  v7 = *MEMORY[0x277D85DE8];
}

- ($1CC25822903029FAFB04A26BED58AE91)suggestionsForString:(id)string inputIndex:(unsigned int)index
{
  stringCopy = string;
  previousStringSuggestion = [(TPSPhoneNumberEditingPane *)self previousStringSuggestion];
  v7 = [previousStringSuggestion isEqualToString:stringCopy];

  if (v7)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    previousStringSuggestion2 = [(TPSPhoneNumberEditingPane *)self previousStringSuggestion];
    v9 = UIPhoneNumberSuggestionForString();
    v8 = v11;

    if ([v9 count])
    {
      firstObject = [v9 firstObject];
      [(TPSPhoneNumberEditingPane *)self setPreviousStringSuggestion:firstObject];
    }
  }

  v13 = v9;
  v14 = v8;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

@end