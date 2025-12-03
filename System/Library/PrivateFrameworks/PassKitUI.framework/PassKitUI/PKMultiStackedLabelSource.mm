@interface PKMultiStackedLabelSource
- (BOOL)isEqual:(id)equal;
- (NSCopying)identifier;
- (PKMultiStackedLabelSource)initWithText:(id)text;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PKMultiStackedLabelSource

- (PKMultiStackedLabelSource)initWithText:(id)text
{
  textCopy = text;
  v9.receiver = self;
  v9.super_class = PKMultiStackedLabelSource;
  v6 = [(PKMultiStackedLabelSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_text, text);
  }

  return v7;
}

- (NSCopying)identifier
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendString:v5];

  if (self->_text)
  {
    [v3 appendString:?];
  }

  v6 = [v3 copy];

  return v6;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_text];
  [v3 safelyAddObject:self->_font];
  [v3 safelyAddObject:self->_icon];
  [v3 safelyAddObject:self->_textColor];
  v4 = PKCombinedHash();

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        text = v6->_text;
        v8 = self->_text;
        v9 = text;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {

            goto LABEL_16;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_16;
          }
        }

        if (PKEqualObjects() && PKEqualObjects())
        {
          v12 = PKEqualObjects();
LABEL_17:

          goto LABEL_18;
        }

LABEL_16:
        v12 = 0;
        goto LABEL_17;
      }
    }

    v12 = 0;
  }

LABEL_18:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [PKMultiStackedLabelSource allocWithZone:?];
  v6 = [(NSString *)self->_text copyWithZone:zone];
  text = v5->_text;
  v5->_text = v6;

  v8 = [(UIFont *)self->_font copyWithZone:zone];
  font = v5->_font;
  v5->_font = v8;

  v10 = [(UIImage *)self->_icon copy];
  icon = v5->_icon;
  v5->_icon = v10;

  v12 = [(UIColor *)self->_textColor copyWithZone:zone];
  textColor = v5->_textColor;
  v5->_textColor = v12;

  return v5;
}

@end