@interface PKMultiKeyValueCellKeyValueSource
- (BOOL)isEqual:(id)a3;
- (NSCopying)identifier;
- (PKMultiKeyValueCellKeyValueSource)initWithTitle:(id)a3 subtitle:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PKMultiKeyValueCellKeyValueSource

- (PKMultiKeyValueCellKeyValueSource)initWithTitle:(id)a3 subtitle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKMultiKeyValueCellKeyValueSource;
  v9 = [(PKMultiKeyValueCellKeyValueSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_subtitle, a4);
  }

  return v10;
}

- (NSCopying)identifier
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendString:v5];

  if (self->_title)
  {
    [v3 appendString:?];
  }

  if (self->_subtitle)
  {
    [v3 appendString:?];
  }

  v6 = [v3 copy];

  return v6;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_title];
  [v3 safelyAddObject:self->_subtitle];
  PKCombinedHash();
  v4 = PKIntegerHash();

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        title = v6->_title;
        v8 = self->_title;
        v9 = title;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {
            goto LABEL_17;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_18;
          }
        }

        subtitle = v6->_subtitle;
        v8 = self->_subtitle;
        v14 = subtitle;
        v10 = v14;
        if (v8 == v14)
        {

LABEL_20:
          v12 = self->_bold == v6->_bold;
          goto LABEL_21;
        }

        if (v8 && v14)
        {
          v15 = [(NSString *)v8 isEqualToString:v14];

          if (v15)
          {
            goto LABEL_20;
          }

LABEL_18:
          v12 = 0;
LABEL_21:

          goto LABEL_22;
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    v12 = 0;
  }

LABEL_22:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [PKMultiKeyValueCellKeyValueSource allocWithZone:?];
  v6 = [(NSString *)self->_title copyWithZone:a3];
  title = v5->_title;
  v5->_title = v6;

  v8 = [(NSString *)self->_subtitle copyWithZone:a3];
  subtitle = v5->_subtitle;
  v5->_subtitle = v8;

  v5->_bold = self->_bold;
  return v5;
}

@end