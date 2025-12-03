@interface UITextFormattingViewControllerChangeValue
- (UITextFormattingViewControllerChangeValue)initWithChangeType:(id)type;
- (UITextFormattingViewControllerChangeValue)initWithChangeType:(id)type customComponentKey:(id)key;
- (UITextFormattingViewControllerChangeValue)initWithChangeType:(id)type numberValue:(id)value;
- (UITextFormattingViewControllerChangeValue)initWithCoder:(id)coder;
- (UITextFormattingViewControllerChangeValue)initWithEmphasisStyleKey:(id)key;
- (UITextFormattingViewControllerChangeValue)initWithFont:(id)font;
- (UITextFormattingViewControllerChangeValue)initWithFormattingStyleKey:(id)key;
- (UITextFormattingViewControllerChangeValue)initWithHighlight:(id)highlight;
- (UITextFormattingViewControllerChangeValue)initWithTextAlignment:(int64_t)alignment;
- (UITextFormattingViewControllerChangeValue)initWithTextColor:(id)color;
- (UITextFormattingViewControllerChangeValue)initWithTextList:(id)list;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UITextFormattingViewControllerChangeValue

- (UITextFormattingViewControllerChangeValue)initWithChangeType:(id)type
{
  typeCopy = type;
  v17.receiver = self;
  v17.super_class = UITextFormattingViewControllerChangeValue;
  v6 = [(UITextFormattingViewControllerChangeValue *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_changeType, type);
    formattingStyleKey = v7->_formattingStyleKey;
    v7->_formattingStyleKey = 0;

    font = v7->_font;
    v7->_font = 0;

    color = v7->_color;
    v7->_color = 0;

    numberValue = v7->_numberValue;
    v7->_numberValue = 0;

    textList = v7->_textList;
    v7->_textList = 0;

    highlight = v7->_highlight;
    v7->_textAlignment = 0;
    v7->_highlight = 0;

    customComponentKey = v7->__customComponentKey;
    v7->__customComponentKey = 0;

    emphasisStyleKey = v7->__emphasisStyleKey;
    v7->__emphasisStyleKey = 0;
  }

  return v7;
}

- (UITextFormattingViewControllerChangeValue)initWithChangeType:(id)type customComponentKey:(id)key
{
  keyCopy = key;
  v8 = [(UITextFormattingViewControllerChangeValue *)self initWithChangeType:type];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->__customComponentKey, key);
  }

  return v9;
}

- (UITextFormattingViewControllerChangeValue)initWithChangeType:(id)type numberValue:(id)value
{
  valueCopy = value;
  v8 = [(UITextFormattingViewControllerChangeValue *)self initWithChangeType:type];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_numberValue, value);
  }

  return v9;
}

- (UITextFormattingViewControllerChangeValue)initWithFormattingStyleKey:(id)key
{
  keyCopy = key;
  v6 = [(UITextFormattingViewControllerChangeValue *)self initWithChangeType:@"UITextFormattingViewControllerFormattingStyleChange"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_formattingStyleKey, key);
  }

  return v7;
}

- (UITextFormattingViewControllerChangeValue)initWithEmphasisStyleKey:(id)key
{
  keyCopy = key;
  v6 = [(UITextFormattingViewControllerChangeValue *)self initWithChangeType:@"UITextFormattingViewControllerEmphasisStyleChange"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__emphasisStyleKey, key);
  }

  return v7;
}

- (UITextFormattingViewControllerChangeValue)initWithTextColor:(id)color
{
  colorCopy = color;
  v6 = [(UITextFormattingViewControllerChangeValue *)self initWithChangeType:@"UITextFormattingViewControllerTextColorChange"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, color);
  }

  return v7;
}

- (UITextFormattingViewControllerChangeValue)initWithFont:(id)font
{
  fontCopy = font;
  v6 = [(UITextFormattingViewControllerChangeValue *)self initWithChangeType:@"UITextFormattingViewControllerFontChange"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_font, font);
  }

  return v7;
}

- (UITextFormattingViewControllerChangeValue)initWithTextList:(id)list
{
  listCopy = list;
  v6 = [(UITextFormattingViewControllerChangeValue *)self initWithChangeType:@"UITextFormattingViewControllerTextListChange"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textList, list);
  }

  return v7;
}

- (UITextFormattingViewControllerChangeValue)initWithTextAlignment:(int64_t)alignment
{
  result = [(UITextFormattingViewControllerChangeValue *)self initWithChangeType:@"UITextFormattingViewControllerTextAlignmentChange"];
  if (result)
  {
    result->_textAlignment = alignment;
  }

  return result;
}

- (UITextFormattingViewControllerChangeValue)initWithHighlight:(id)highlight
{
  highlightCopy = highlight;
  v6 = [(UITextFormattingViewControllerChangeValue *)self initWithChangeType:@"UITextFormattingViewControllerHighlightChange"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_highlight, highlight);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  changeType = [(UITextFormattingViewControllerChangeValue *)self changeType];
  v6 = v4[1];
  v4[1] = changeType;

  formattingStyleKey = [(UITextFormattingViewControllerChangeValue *)self formattingStyleKey];
  v8 = [formattingStyleKey copy];
  v9 = v4[2];
  v4[2] = v8;

  font = [(UITextFormattingViewControllerChangeValue *)self font];
  v11 = [font copy];
  v12 = v4[3];
  v4[3] = v11;

  color = [(UITextFormattingViewControllerChangeValue *)self color];
  v14 = [color copy];
  v15 = v4[4];
  v4[4] = v14;

  numberValue = [(UITextFormattingViewControllerChangeValue *)self numberValue];
  v17 = [numberValue copy];
  v18 = v4[5];
  v4[5] = v17;

  textList = [(UITextFormattingViewControllerChangeValue *)self textList];
  v20 = [textList copy];
  v21 = v4[6];
  v4[6] = v20;

  v4[7] = [(UITextFormattingViewControllerChangeValue *)self textAlignment];
  highlight = [(UITextFormattingViewControllerChangeValue *)self highlight];
  v23 = [highlight copy];
  v24 = v4[8];
  v4[8] = v23;

  _emphasisStyleKey = [(UITextFormattingViewControllerChangeValue *)self _emphasisStyleKey];
  v26 = [_emphasisStyleKey copy];
  v27 = v4[10];
  v4[10] = v26;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  changeType = [(UITextFormattingViewControllerChangeValue *)self changeType];
  [coderCopy encodeObject:changeType forKey:@"_ChangeType"];

  formattingStyleKey = [(UITextFormattingViewControllerChangeValue *)self formattingStyleKey];
  [coderCopy encodeObject:formattingStyleKey forKey:@"_FormattingStyleKey"];

  font = [(UITextFormattingViewControllerChangeValue *)self font];
  [coderCopy encodeObject:font forKey:@"_Font"];

  color = [(UITextFormattingViewControllerChangeValue *)self color];
  [coderCopy encodeObject:color forKey:@"_Color"];

  numberValue = [(UITextFormattingViewControllerChangeValue *)self numberValue];
  [coderCopy encodeObject:numberValue forKey:@"_NumberValue"];

  textList = [(UITextFormattingViewControllerChangeValue *)self textList];
  [coderCopy encodeObject:textList forKey:@"_TextList"];

  [coderCopy encodeInteger:-[UITextFormattingViewControllerChangeValue textAlignment](self forKey:{"textAlignment"), @"_TextAlignment"}];
  highlight = [(UITextFormattingViewControllerChangeValue *)self highlight];
  [coderCopy encodeObject:highlight forKey:@"_Highlight"];

  _emphasisStyleKey = [(UITextFormattingViewControllerChangeValue *)self _emphasisStyleKey];
  [coderCopy encodeObject:_emphasisStyleKey forKey:@"_EmphasisStyleKey"];
}

- (UITextFormattingViewControllerChangeValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UITextFormattingViewControllerChangeValue *)self init];
  if (v5)
  {
    v6 = _UITextFormattingViewControllerChangeValueClasses();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"_ChangeType"];
    changeType = v5->_changeType;
    v5->_changeType = v7;

    v9 = _UITextFormattingViewControllerChangeValueClasses();
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_FormattingStyleKey"];
    formattingStyleKey = v5->_formattingStyleKey;
    v5->_formattingStyleKey = v10;

    v12 = _UITextFormattingViewControllerChangeValueClasses();
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_Font"];
    font = v5->_font;
    v5->_font = v13;

    v15 = _UITextFormattingViewControllerChangeValueClasses();
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"_Color"];
    color = v5->_color;
    v5->_color = v16;

    v18 = _UITextFormattingViewControllerChangeValueClasses();
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"_NumberValue"];
    numberValue = v5->_numberValue;
    v5->_numberValue = v19;

    v21 = _UITextFormattingViewControllerChangeValueClasses();
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"_TextList"];
    textList = v5->_textList;
    v5->_textList = v22;

    v5->_textAlignment = [coderCopy decodeIntegerForKey:@"_TextAlignment"];
    v24 = _UITextFormattingViewControllerChangeValueClasses();
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"_Highlight"];
    highlight = v5->_highlight;
    v5->_highlight = v25;

    v27 = _UITextFormattingViewControllerChangeValueClasses();
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"_EmphasisStyleKey"];
    emphasisStyleKey = v5->__emphasisStyleKey;
    v5->__emphasisStyleKey = v28;
  }

  return v5;
}

@end