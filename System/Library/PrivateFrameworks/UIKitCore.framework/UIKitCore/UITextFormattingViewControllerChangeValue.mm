@interface UITextFormattingViewControllerChangeValue
- (UITextFormattingViewControllerChangeValue)initWithChangeType:(id)a3;
- (UITextFormattingViewControllerChangeValue)initWithChangeType:(id)a3 customComponentKey:(id)a4;
- (UITextFormattingViewControllerChangeValue)initWithChangeType:(id)a3 numberValue:(id)a4;
- (UITextFormattingViewControllerChangeValue)initWithCoder:(id)a3;
- (UITextFormattingViewControllerChangeValue)initWithEmphasisStyleKey:(id)a3;
- (UITextFormattingViewControllerChangeValue)initWithFont:(id)a3;
- (UITextFormattingViewControllerChangeValue)initWithFormattingStyleKey:(id)a3;
- (UITextFormattingViewControllerChangeValue)initWithHighlight:(id)a3;
- (UITextFormattingViewControllerChangeValue)initWithTextAlignment:(int64_t)a3;
- (UITextFormattingViewControllerChangeValue)initWithTextColor:(id)a3;
- (UITextFormattingViewControllerChangeValue)initWithTextList:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UITextFormattingViewControllerChangeValue

- (UITextFormattingViewControllerChangeValue)initWithChangeType:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = UITextFormattingViewControllerChangeValue;
  v6 = [(UITextFormattingViewControllerChangeValue *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_changeType, a3);
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

- (UITextFormattingViewControllerChangeValue)initWithChangeType:(id)a3 customComponentKey:(id)a4
{
  v7 = a4;
  v8 = [(UITextFormattingViewControllerChangeValue *)self initWithChangeType:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->__customComponentKey, a4);
  }

  return v9;
}

- (UITextFormattingViewControllerChangeValue)initWithChangeType:(id)a3 numberValue:(id)a4
{
  v7 = a4;
  v8 = [(UITextFormattingViewControllerChangeValue *)self initWithChangeType:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_numberValue, a4);
  }

  return v9;
}

- (UITextFormattingViewControllerChangeValue)initWithFormattingStyleKey:(id)a3
{
  v5 = a3;
  v6 = [(UITextFormattingViewControllerChangeValue *)self initWithChangeType:@"UITextFormattingViewControllerFormattingStyleChange"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_formattingStyleKey, a3);
  }

  return v7;
}

- (UITextFormattingViewControllerChangeValue)initWithEmphasisStyleKey:(id)a3
{
  v5 = a3;
  v6 = [(UITextFormattingViewControllerChangeValue *)self initWithChangeType:@"UITextFormattingViewControllerEmphasisStyleChange"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__emphasisStyleKey, a3);
  }

  return v7;
}

- (UITextFormattingViewControllerChangeValue)initWithTextColor:(id)a3
{
  v5 = a3;
  v6 = [(UITextFormattingViewControllerChangeValue *)self initWithChangeType:@"UITextFormattingViewControllerTextColorChange"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, a3);
  }

  return v7;
}

- (UITextFormattingViewControllerChangeValue)initWithFont:(id)a3
{
  v5 = a3;
  v6 = [(UITextFormattingViewControllerChangeValue *)self initWithChangeType:@"UITextFormattingViewControllerFontChange"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_font, a3);
  }

  return v7;
}

- (UITextFormattingViewControllerChangeValue)initWithTextList:(id)a3
{
  v5 = a3;
  v6 = [(UITextFormattingViewControllerChangeValue *)self initWithChangeType:@"UITextFormattingViewControllerTextListChange"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textList, a3);
  }

  return v7;
}

- (UITextFormattingViewControllerChangeValue)initWithTextAlignment:(int64_t)a3
{
  result = [(UITextFormattingViewControllerChangeValue *)self initWithChangeType:@"UITextFormattingViewControllerTextAlignmentChange"];
  if (result)
  {
    result->_textAlignment = a3;
  }

  return result;
}

- (UITextFormattingViewControllerChangeValue)initWithHighlight:(id)a3
{
  v5 = a3;
  v6 = [(UITextFormattingViewControllerChangeValue *)self initWithChangeType:@"UITextFormattingViewControllerHighlightChange"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_highlight, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(UITextFormattingViewControllerChangeValue *)self changeType];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(UITextFormattingViewControllerChangeValue *)self formattingStyleKey];
  v8 = [v7 copy];
  v9 = v4[2];
  v4[2] = v8;

  v10 = [(UITextFormattingViewControllerChangeValue *)self font];
  v11 = [v10 copy];
  v12 = v4[3];
  v4[3] = v11;

  v13 = [(UITextFormattingViewControllerChangeValue *)self color];
  v14 = [v13 copy];
  v15 = v4[4];
  v4[4] = v14;

  v16 = [(UITextFormattingViewControllerChangeValue *)self numberValue];
  v17 = [v16 copy];
  v18 = v4[5];
  v4[5] = v17;

  v19 = [(UITextFormattingViewControllerChangeValue *)self textList];
  v20 = [v19 copy];
  v21 = v4[6];
  v4[6] = v20;

  v4[7] = [(UITextFormattingViewControllerChangeValue *)self textAlignment];
  v22 = [(UITextFormattingViewControllerChangeValue *)self highlight];
  v23 = [v22 copy];
  v24 = v4[8];
  v4[8] = v23;

  v25 = [(UITextFormattingViewControllerChangeValue *)self _emphasisStyleKey];
  v26 = [v25 copy];
  v27 = v4[10];
  v4[10] = v26;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UITextFormattingViewControllerChangeValue *)self changeType];
  [v4 encodeObject:v5 forKey:@"_ChangeType"];

  v6 = [(UITextFormattingViewControllerChangeValue *)self formattingStyleKey];
  [v4 encodeObject:v6 forKey:@"_FormattingStyleKey"];

  v7 = [(UITextFormattingViewControllerChangeValue *)self font];
  [v4 encodeObject:v7 forKey:@"_Font"];

  v8 = [(UITextFormattingViewControllerChangeValue *)self color];
  [v4 encodeObject:v8 forKey:@"_Color"];

  v9 = [(UITextFormattingViewControllerChangeValue *)self numberValue];
  [v4 encodeObject:v9 forKey:@"_NumberValue"];

  v10 = [(UITextFormattingViewControllerChangeValue *)self textList];
  [v4 encodeObject:v10 forKey:@"_TextList"];

  [v4 encodeInteger:-[UITextFormattingViewControllerChangeValue textAlignment](self forKey:{"textAlignment"), @"_TextAlignment"}];
  v11 = [(UITextFormattingViewControllerChangeValue *)self highlight];
  [v4 encodeObject:v11 forKey:@"_Highlight"];

  v12 = [(UITextFormattingViewControllerChangeValue *)self _emphasisStyleKey];
  [v4 encodeObject:v12 forKey:@"_EmphasisStyleKey"];
}

- (UITextFormattingViewControllerChangeValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UITextFormattingViewControllerChangeValue *)self init];
  if (v5)
  {
    v6 = _UITextFormattingViewControllerChangeValueClasses();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"_ChangeType"];
    changeType = v5->_changeType;
    v5->_changeType = v7;

    v9 = _UITextFormattingViewControllerChangeValueClasses();
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"_FormattingStyleKey"];
    formattingStyleKey = v5->_formattingStyleKey;
    v5->_formattingStyleKey = v10;

    v12 = _UITextFormattingViewControllerChangeValueClasses();
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_Font"];
    font = v5->_font;
    v5->_font = v13;

    v15 = _UITextFormattingViewControllerChangeValueClasses();
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"_Color"];
    color = v5->_color;
    v5->_color = v16;

    v18 = _UITextFormattingViewControllerChangeValueClasses();
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"_NumberValue"];
    numberValue = v5->_numberValue;
    v5->_numberValue = v19;

    v21 = _UITextFormattingViewControllerChangeValueClasses();
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"_TextList"];
    textList = v5->_textList;
    v5->_textList = v22;

    v5->_textAlignment = [v4 decodeIntegerForKey:@"_TextAlignment"];
    v24 = _UITextFormattingViewControllerChangeValueClasses();
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"_Highlight"];
    highlight = v5->_highlight;
    v5->_highlight = v25;

    v27 = _UITextFormattingViewControllerChangeValueClasses();
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"_EmphasisStyleKey"];
    emphasisStyleKey = v5->__emphasisStyleKey;
    v5->__emphasisStyleKey = v28;
  }

  return v5;
}

@end