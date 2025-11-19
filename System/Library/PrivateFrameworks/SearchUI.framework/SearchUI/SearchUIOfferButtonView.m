@interface SearchUIOfferButtonView
- (CGSize)intrinsicContentSize;
- (SearchUIOfferButtonView)init;
- (void)setSymbolImageName:(id)a3;
@end

@implementation SearchUIOfferButtonView

- (SearchUIOfferButtonView)init
{
  v6.receiver = self;
  v6.super_class = SearchUIOfferButtonView;
  v2 = [(TLKStoreButton *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(TLKStoreButton *)v2 setCornerRadius:7.0];
    v4 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD08] isShort:0 isBold:1];
    [(TLKStoreButton *)v3 setFont:v4];
  }

  return v3;
}

- (void)setSymbolImageName:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_symbolImageName, a3);
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [SearchUISymbolImage alloc];
  v8 = [(TLKStoreButton *)self font];
  v9 = [(SearchUISymbolImage *)v7 initWithSymbolName:v5 font:v8 scale:0];
  [v6 setGlyph:v9];

  v10 = objc_opt_new();
  v13[0] = v6;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v10 setFormattedTextPieces:v11];

  v12 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v10];

  [(TLKStoreButton *)self setRichTitle:v12];
}

- (CGSize)intrinsicContentSize
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69D91A8];
  v11 = *MEMORY[0x1E69DB648];
  v4 = [(TLKStoreButton *)self font];
  v12[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [@" " sizeWithAttributes:v5];
  [v3 deviceScaledRoundedValue:self forView:v6 + 11.5];
  v8 = v7;

  v9 = *MEMORY[0x1E69DE788];
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end