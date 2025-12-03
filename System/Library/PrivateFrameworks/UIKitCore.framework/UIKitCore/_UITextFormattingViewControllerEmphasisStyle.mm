@interface _UITextFormattingViewControllerEmphasisStyle
- (BOOL)isEqual:(id)equal;
- (_UITextFormattingViewControllerEmphasisStyle)initWithCoder:(id)coder;
- (_UITextFormattingViewControllerEmphasisStyle)initWithStyleKey:(id)key title:(id)title color:(id)color;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UITextFormattingViewControllerEmphasisStyle

- (_UITextFormattingViewControllerEmphasisStyle)initWithStyleKey:(id)key title:(id)title color:(id)color
{
  keyCopy = key;
  titleCopy = title;
  colorCopy = color;
  v19.receiver = self;
  v19.super_class = _UITextFormattingViewControllerEmphasisStyle;
  v11 = [(_UITextFormattingViewControllerEmphasisStyle *)&v19 init];
  if (v11)
  {
    v12 = [keyCopy copy];
    styleKey = v11->_styleKey;
    v11->_styleKey = v12;

    v14 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v14;

    v16 = [colorCopy copy];
    color = v11->_color;
    v11->_color = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  styleKey = [(_UITextFormattingViewControllerEmphasisStyle *)self styleKey];
  v6 = [styleKey copy];
  v7 = v4[1];
  v4[1] = v6;

  title = [(_UITextFormattingViewControllerEmphasisStyle *)self title];
  v9 = [title copy];
  v10 = v4[2];
  v4[2] = v9;

  color = [(_UITextFormattingViewControllerEmphasisStyle *)self color];
  v12 = [color copy];
  v13 = v4[3];
  v4[3] = v12;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      styleKey = [(_UITextFormattingViewControllerEmphasisStyle *)self styleKey];
      styleKey2 = [(_UITextFormattingViewControllerEmphasisStyle *)v5 styleKey];
      if ([styleKey isEqualToString:styleKey2])
      {
        title = [(_UITextFormattingViewControllerEmphasisStyle *)self title];
        title2 = [(_UITextFormattingViewControllerEmphasisStyle *)v5 title];
        v10 = [title isEqualToString:title2];
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
  styleKey = [(_UITextFormattingViewControllerEmphasisStyle *)self styleKey];
  v4 = [styleKey hash];
  title = [(_UITextFormattingViewControllerEmphasisStyle *)self title];
  v6 = [title hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  styleKey = [(_UITextFormattingViewControllerEmphasisStyle *)self styleKey];
  [coderCopy encodeObject:styleKey forKey:@"_StyleKey"];

  title = [(_UITextFormattingViewControllerEmphasisStyle *)self title];
  [coderCopy encodeObject:title forKey:@"_Title"];

  color = [(_UITextFormattingViewControllerEmphasisStyle *)self color];
  [coderCopy encodeObject:color forKey:@"_Color"];
}

- (_UITextFormattingViewControllerEmphasisStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UITextFormattingViewControllerEmphasisStyle *)self init];
  if (v5)
  {
    v6 = _UITextFormattingViewControllerEmphasisStyleClasses();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"_StyleKey"];
    styleKey = v5->_styleKey;
    v5->_styleKey = v7;

    v9 = _UITextFormattingViewControllerEmphasisStyleClasses();
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_Title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = _UITextFormattingViewControllerEmphasisStyleClasses();
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_Color"];
    color = v5->_color;
    v5->_color = v13;
  }

  return v5;
}

@end