@interface TUICompactVariantCell
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)backgroundInsets;
- (id)fontForSymbolStyle:(id)style;
@end

@implementation TUICompactVariantCell

- (CGSize)intrinsicContentSize
{
  +[TUICompactVariantSelectorView minCellDimension];
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)backgroundInsets
{
  v2 = 5.0;
  v3 = 0.0;
  v4 = 5.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)fontForSymbolStyle:(id)style
{
  styleCopy = style;
  fontName = [styleCopy fontName];
  [styleCopy fontWeight];
  v6 = v5;
  [styleCopy fontSize];
  v7 = [fontName isEqualToString:*MEMORY[0x1E69DDE80]];
  v8 = [fontName isEqualToString:*MEMORY[0x1E69DDE78]];
  if (v7)
  {
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0 weight:v6];
  }

  else
  {
    if (v8)
    {
      [styleCopy fontWidth];
      v11 = v10;
      keycapsFallback = [styleCopy keycapsFallback];
      v13 = UIKBCreateCTFont(fontName, keycapsFallback, 14.0, v6, v11);

      goto LABEL_7;
    }

    v9 = [MEMORY[0x1E69DB878] fontWithName:fontName size:4096 traits:14.0];
  }

  v13 = v9;
LABEL_7:

  return v13;
}

@end