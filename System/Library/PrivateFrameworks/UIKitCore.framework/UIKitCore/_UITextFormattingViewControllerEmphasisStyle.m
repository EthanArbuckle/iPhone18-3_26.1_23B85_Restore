@interface _UITextFormattingViewControllerEmphasisStyle
- (BOOL)isEqual:(id)a3;
- (_UITextFormattingViewControllerEmphasisStyle)initWithCoder:(id)a3;
- (_UITextFormattingViewControllerEmphasisStyle)initWithStyleKey:(id)a3 title:(id)a4 color:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UITextFormattingViewControllerEmphasisStyle

- (_UITextFormattingViewControllerEmphasisStyle)initWithStyleKey:(id)a3 title:(id)a4 color:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _UITextFormattingViewControllerEmphasisStyle;
  v11 = [(_UITextFormattingViewControllerEmphasisStyle *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    styleKey = v11->_styleKey;
    v11->_styleKey = v12;

    v14 = [v9 copy];
    title = v11->_title;
    v11->_title = v14;

    v16 = [v10 copy];
    color = v11->_color;
    v11->_color = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(_UITextFormattingViewControllerEmphasisStyle *)self styleKey];
  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  v8 = [(_UITextFormattingViewControllerEmphasisStyle *)self title];
  v9 = [v8 copy];
  v10 = v4[2];
  v4[2] = v9;

  v11 = [(_UITextFormattingViewControllerEmphasisStyle *)self color];
  v12 = [v11 copy];
  v13 = v4[3];
  v4[3] = v12;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(_UITextFormattingViewControllerEmphasisStyle *)self styleKey];
      v7 = [(_UITextFormattingViewControllerEmphasisStyle *)v5 styleKey];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(_UITextFormattingViewControllerEmphasisStyle *)self title];
        v9 = [(_UITextFormattingViewControllerEmphasisStyle *)v5 title];
        v10 = [v8 isEqualToString:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(_UITextFormattingViewControllerEmphasisStyle *)self styleKey];
  v4 = [v3 hash];
  v5 = [(_UITextFormattingViewControllerEmphasisStyle *)self title];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UITextFormattingViewControllerEmphasisStyle *)self styleKey];
  [v4 encodeObject:v5 forKey:@"_StyleKey"];

  v6 = [(_UITextFormattingViewControllerEmphasisStyle *)self title];
  [v4 encodeObject:v6 forKey:@"_Title"];

  v7 = [(_UITextFormattingViewControllerEmphasisStyle *)self color];
  [v4 encodeObject:v7 forKey:@"_Color"];
}

- (_UITextFormattingViewControllerEmphasisStyle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UITextFormattingViewControllerEmphasisStyle *)self init];
  if (v5)
  {
    v6 = _UITextFormattingViewControllerEmphasisStyleClasses();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"_StyleKey"];
    styleKey = v5->_styleKey;
    v5->_styleKey = v7;

    v9 = _UITextFormattingViewControllerEmphasisStyleClasses();
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"_Title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = _UITextFormattingViewControllerEmphasisStyleClasses();
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_Color"];
    color = v5->_color;
    v5->_color = v13;
  }

  return v5;
}

@end