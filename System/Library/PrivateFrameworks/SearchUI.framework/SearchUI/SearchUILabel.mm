@interface SearchUILabel
- (void)setSfText:(id)text;
@end

@implementation SearchUILabel

- (void)setSfText:(id)text
{
  v10[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  objc_storeStrong(&self->_sfText, text);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:textCopy];
    [(TLKLabel *)self setRichText:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_opt_new();
      v7 = [SearchUITLKMultilineTextConverter formattedTextForSearchUIText:textCopy];
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
      v6 = [SearchUITLKMultilineTextConverter textForSearchUIText:textCopy];
      [(TLKLabel *)self setMultilineText:v6];
    }
  }
}

@end