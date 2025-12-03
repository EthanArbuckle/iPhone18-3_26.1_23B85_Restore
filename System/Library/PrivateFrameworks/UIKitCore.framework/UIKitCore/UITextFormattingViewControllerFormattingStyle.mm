@interface UITextFormattingViewControllerFormattingStyle
- (BOOL)isEqual:(id)equal;
- (UITextFormattingViewControllerFormattingStyle)initWithCoder:(id)coder;
- (UITextFormattingViewControllerFormattingStyle)initWithStyleKey:(id)key title:(id)title attributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UITextFormattingViewControllerFormattingStyle

- (UITextFormattingViewControllerFormattingStyle)initWithStyleKey:(id)key title:(id)title attributes:(id)attributes
{
  keyCopy = key;
  titleCopy = title;
  attributesCopy = attributes;
  v19.receiver = self;
  v19.super_class = UITextFormattingViewControllerFormattingStyle;
  v11 = [(UITextFormattingViewControllerFormattingStyle *)&v19 init];
  if (v11)
  {
    v12 = [keyCopy copy];
    styleKey = v11->_styleKey;
    v11->_styleKey = v12;

    v14 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v14;

    v16 = [attributesCopy copy];
    attributes = v11->_attributes;
    v11->_attributes = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  styleKey = [(UITextFormattingViewControllerFormattingStyle *)self styleKey];
  v6 = [styleKey copy];
  v7 = v4[1];
  v4[1] = v6;

  title = [(UITextFormattingViewControllerFormattingStyle *)self title];
  v9 = [title copy];
  v10 = v4[2];
  v4[2] = v9;

  attributes = [(UITextFormattingViewControllerFormattingStyle *)self attributes];
  v12 = [attributes copy];
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
      styleKey = [(UITextFormattingViewControllerFormattingStyle *)self styleKey];
      styleKey2 = [(UITextFormattingViewControllerFormattingStyle *)v5 styleKey];
      if ([styleKey isEqualToString:styleKey2])
      {
        title = [(UITextFormattingViewControllerFormattingStyle *)self title];
        title2 = [(UITextFormattingViewControllerFormattingStyle *)v5 title];
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
  styleKey = [(UITextFormattingViewControllerFormattingStyle *)self styleKey];
  v4 = [styleKey hash];
  title = [(UITextFormattingViewControllerFormattingStyle *)self title];
  v6 = [title hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  styleKey = [(UITextFormattingViewControllerFormattingStyle *)self styleKey];
  [coderCopy encodeObject:styleKey forKey:@"_StyleKey"];

  title = [(UITextFormattingViewControllerFormattingStyle *)self title];
  [coderCopy encodeObject:title forKey:@"_Title"];

  v7 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  attributes = [(UITextFormattingViewControllerFormattingStyle *)self attributes];
  [v7 encodeObject:attributes forKey:@"_AttributesData"];

  [v7 finishEncoding];
  encodedData = [v7 encodedData];
  if (!encodedData)
  {
    encodedData = objc_opt_new();
  }

  [coderCopy encodeObject:encodedData forKey:@"_AttributesData"];
}

- (UITextFormattingViewControllerFormattingStyle)initWithCoder:(id)coder
{
  v27 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(UITextFormattingViewControllerFormattingStyle *)self init];
  if (v5)
  {
    v6 = _UITextFormattingViewControllerFormattingStyleClasses();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"_StyleKey"];
    styleKey = v5->_styleKey;
    v5->_styleKey = v7;

    v9 = _UITextFormattingViewControllerFormattingStyleClasses();
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_Title"];
    title = v5->_title;
    v5->_title = v10;

    attributes = v5->_attributes;
    v13 = MEMORY[0x1E695E0F8];
    v5->_attributes = MEMORY[0x1E695E0F8];

    v14 = _UITextFormattingViewControllerFormattingStyleClasses();
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"_AttributesData"];

    v24 = 0;
    v16 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v15 error:&v24];
    v17 = v24;
    v18 = v17;
    if (v16)
    {
      v19 = [v16 decodeObjectOfClass:objc_opt_class() forKey:@"_AttributesData"];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v13;
      }

      objc_storeStrong(&v5->_attributes, v21);
      if (!v18)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v20 = 0;
      if (!v17)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    v22 = *(__UILogGetCategoryCachedImpl("TextFormattingUI", &initWithCoder____s_category_0) + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v18;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Failed to create unarchiver for formatting style attributes: %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_12:

  return v5;
}

@end