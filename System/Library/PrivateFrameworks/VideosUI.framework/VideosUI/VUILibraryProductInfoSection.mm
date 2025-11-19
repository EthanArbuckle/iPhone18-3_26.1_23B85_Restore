@interface VUILibraryProductInfoSection
+ (id)dataViewWithString:(id)a3;
+ (id)headerViewWithString:(id)a3;
- (UIEdgeInsets)headerMargin;
- (UIEdgeInsets)headerPadding;
@end

@implementation VUILibraryProductInfoSection

+ (id)headerViewWithString:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v4 setTextStyle:15];
  v5 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
  [(VUITextLayout *)v4 setColor:v5];

  [(VUITextLayout *)v4 setFontWeight:10];
  [(VUITextLayout *)v4 setTextTransform:2];
  [(VUITextLayout *)v4 setNumberOfLinesAXSmall:1];
  [(VUITextLayout *)v4 setNumberOfLinesAXLarge:1];
  v6 = [VUILabel labelWithString:v3 textLayout:v4 existingLabel:0];

  return v6;
}

+ (id)dataViewWithString:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v4 setTextStyle:14];
  v5 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
  [(VUITextLayout *)v4 setColor:v5];

  [(VUITextLayout *)v4 setNumberOfLinesAXSmall:1];
  [(VUITextLayout *)v4 setNumberOfLinesAXLarge:1];
  [(VUITextLayout *)v4 setMinimumScaleFactor:0.7];
  v6 = [VUILabel labelWithString:v3 textLayout:v4 existingLabel:0];

  return v6;
}

- (UIEdgeInsets)headerMargin
{
  v2 = 19.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)headerPadding
{
  top = self->_headerPadding.top;
  left = self->_headerPadding.left;
  bottom = self->_headerPadding.bottom;
  right = self->_headerPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end