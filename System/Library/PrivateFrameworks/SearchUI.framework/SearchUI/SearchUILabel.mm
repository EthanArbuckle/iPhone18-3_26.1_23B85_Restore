@interface SearchUILabel
- (void)setSfText:(id)a3;
@end

@implementation SearchUILabel

- (void)setSfText:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_sfText, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v5];
    [(TLKLabel *)self setRichText:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_opt_new();
      v7 = [SearchUITLKMultilineTextConverter formattedTextForSearchUIText:v5];
      v8 = v7;
      if (v7)
      {
        v10[0] = v7;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
        [v6 setFormattedTextItems:v9];
      }

      else
      {
        [v6 setFormattedTextItems:0];
      }

      [(TLKLabel *)self setRichText:v6];
    }

    else
    {
      v6 = [SearchUITLKMultilineTextConverter textForSearchUIText:v5];
      [(TLKLabel *)self setMultilineText:v6];
    }
  }
}

@end