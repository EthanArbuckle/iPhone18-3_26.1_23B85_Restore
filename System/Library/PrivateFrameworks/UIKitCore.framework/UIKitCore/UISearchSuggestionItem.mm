@interface UISearchSuggestionItem
+ (UISearchSuggestionItem)suggestionWithLocalizedAttributedSuggestion:(NSAttributedString *)suggestion descriptionString:(NSString *)description iconImage:(UIImage *)iconImage;
+ (UISearchSuggestionItem)suggestionWithLocalizedSuggestion:(NSString *)suggestion descriptionString:(NSString *)description iconImage:(UIImage *)iconImage;
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (UISearchSuggestionItem)initWithLocalizedAttributedSuggestion:(NSAttributedString *)suggestion localizedDescription:(NSString *)description iconImage:(UIImage *)iconImage;
- (UISearchSuggestionItem)initWithLocalizedSuggestion:(NSString *)suggestion localizedDescription:(NSString *)description iconImage:(UIImage *)iconImage;
- (void)setRepresentedObject:(id)representedObject;
@end

@implementation UISearchSuggestionItem

+ (UISearchSuggestionItem)suggestionWithLocalizedAttributedSuggestion:(NSAttributedString *)suggestion descriptionString:(NSString *)description iconImage:(UIImage *)iconImage
{
  v7 = iconImage;
  v8 = description;
  v9 = suggestion;
  v10 = [[UISearchSuggestionItem alloc] initWithLocalizedAttributedSuggestion:v9 localizedDescription:v8 iconImage:v7];

  return v10;
}

+ (UISearchSuggestionItem)suggestionWithLocalizedSuggestion:(NSString *)suggestion descriptionString:(NSString *)description iconImage:(UIImage *)iconImage
{
  v7 = iconImage;
  v8 = description;
  v9 = suggestion;
  v10 = [[UISearchSuggestionItem alloc] initWithLocalizedSuggestion:v9 localizedDescription:v8 iconImage:v7];

  return v10;
}

- (UISearchSuggestionItem)initWithLocalizedAttributedSuggestion:(NSAttributedString *)suggestion localizedDescription:(NSString *)description iconImage:(UIImage *)iconImage
{
  v8 = suggestion;
  v9 = description;
  v10 = iconImage;
  v19.receiver = self;
  v19.super_class = UISearchSuggestionItem;
  v11 = [(UISearchSuggestionItem *)&v19 init];
  if (v11)
  {
    v12 = [(NSAttributedString *)v8 copy];
    localizedAttributedSuggestion = v11->_localizedAttributedSuggestion;
    v11->_localizedAttributedSuggestion = v12;

    v14 = [(NSAttributedString *)v8 string];
    localizedSuggestion = v11->_localizedSuggestion;
    v11->_localizedSuggestion = v14;

    v16 = [(NSString *)v9 copy];
    localizedDescription = v11->_localizedDescription;
    v11->_localizedDescription = v16;

    objc_storeStrong(&v11->_iconImage, iconImage);
  }

  return v11;
}

- (UISearchSuggestionItem)initWithLocalizedSuggestion:(NSString *)suggestion localizedDescription:(NSString *)description iconImage:(UIImage *)iconImage
{
  v8 = suggestion;
  v9 = description;
  v10 = iconImage;
  v17.receiver = self;
  v17.super_class = UISearchSuggestionItem;
  v11 = [(UISearchSuggestionItem *)&v17 init];
  if (v11)
  {
    v12 = [(NSString *)v8 copy];
    localizedSuggestion = v11->_localizedSuggestion;
    v11->_localizedSuggestion = v12;

    v14 = [(NSString *)v9 copy];
    localizedDescription = v11->_localizedDescription;
    v11->_localizedDescription = v14;

    objc_storeStrong(&v11->_iconImage, iconImage);
  }

  return v11;
}

- (void)setRepresentedObject:(id)representedObject
{
  v5 = representedObject;
  if (v5 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UISearchSuggestion.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"representedObject == nil || [representedObject respondsToSelector:@selector(isEqual:)]"}];
  }

  v6 = self->_representedObject;
  self->_representedObject = v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      localizedAttributedSuggestion = v5->_localizedAttributedSuggestion;
      v7 = self->_localizedAttributedSuggestion;
      v8 = localizedAttributedSuggestion;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        if (!v7 || !v8)
        {
          goto LABEL_34;
        }

        v10 = [(NSAttributedString *)v7 isEqual:v8];

        if (!v10)
        {
          goto LABEL_35;
        }
      }

      localizedSuggestion = v5->_localizedSuggestion;
      v7 = self->_localizedSuggestion;
      v12 = localizedSuggestion;
      v9 = v12;
      if (v7 == v12)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        if (!v7 || !v12)
        {
          goto LABEL_34;
        }

        v10 = [(NSAttributedString *)v7 isEqual:v12];

        if (!v10)
        {
          goto LABEL_35;
        }
      }

      localizedDescription = v5->_localizedDescription;
      v7 = self->_localizedDescription;
      v14 = localizedDescription;
      v9 = v14;
      if (v7 == v14)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        if (!v7 || !v14)
        {
          goto LABEL_34;
        }

        v10 = [(NSAttributedString *)v7 isEqual:v14];

        if (!v10)
        {
          goto LABEL_35;
        }
      }

      iconImage = v5->_iconImage;
      v7 = self->_iconImage;
      v16 = iconImage;
      v9 = v16;
      if (v7 == v16)
      {

LABEL_29:
        representedObject = self->_representedObject;
        v18 = v5->_representedObject;
        v7 = representedObject;
        v19 = v18;
        v9 = v19;
        if (v7 == v19)
        {
          LOBYTE(v10) = 1;
        }

        else
        {
          LOBYTE(v10) = 0;
          if (v7 && v19)
          {
            LOBYTE(v10) = [(NSAttributedString *)v7 isEqual:v19];
          }
        }

        goto LABEL_34;
      }

      LOBYTE(v10) = 0;
      if (v7 && v16)
      {
        v10 = [(NSAttributedString *)v7 isEqual:v16];

        if (!v10)
        {
          goto LABEL_35;
        }

        goto LABEL_29;
      }

LABEL_34:

LABEL_35:
      goto LABEL_36;
    }

    LOBYTE(v10) = 0;
  }

LABEL_36:

  return v10;
}

- (NSString)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@", self];
  localizedAttributedSuggestion = self->_localizedAttributedSuggestion;
  if (localizedAttributedSuggestion)
  {
    v5 = [(NSAttributedString *)localizedAttributedSuggestion string];
    [v3 appendFormat:@" '%@'", v5];
  }

  else
  {
    [v3 appendFormat:@" '%@'", self->_localizedSuggestion];
  }

  if (self->_localizedAttributedSuggestion)
  {
    [v3 appendFormat:@" attributedSuggestion=%p", self->_localizedAttributedSuggestion];
  }

  if (self->_localizedDescription)
  {
    [v3 appendFormat:@" description='%@'", self->_localizedDescription];
  }

  iconImage = self->_iconImage;
  if (iconImage)
  {
    v7 = _UIImageName(self->_iconImage);
    if ([v7 length])
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = _UIImageName(self->_iconImage);
      v10 = [v8 stringWithFormat:@" '%@'", v9];
      [v3 appendFormat:@" image=%p%@", iconImage, v10];
    }

    else
    {
      [v3 appendFormat:@" image=%p%@", iconImage, &stru_1EFB14550];
    }
  }

  if (self->_representedObject)
  {
    [v3 appendFormat:@" representedObject=%p", self->_representedObject];
  }

  return v3;
}

@end