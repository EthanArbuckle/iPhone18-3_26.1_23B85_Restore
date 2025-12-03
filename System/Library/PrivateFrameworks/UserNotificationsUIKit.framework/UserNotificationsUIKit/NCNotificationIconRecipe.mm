@interface NCNotificationIconRecipe
+ (id)iconRecipeForApplicationIdentifier:(id)identifier;
+ (id)iconRecipeForDate:(id)date;
+ (id)iconRecipeForDateIconIdentifier:(id)identifier;
+ (id)iconRecipeForImage:(id)image;
+ (id)iconRecipeForSectionIcon:(id)icon scale:(double)scale applicationIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (id)_initWithIconRecipeForApplicationIdentifier:(id)identifier;
- (id)_initWithIconRecipeForDate:(id)date;
- (id)_initWithIconRecipeForDateIconIdentifier:(id)identifier;
- (id)_initWithIconRecipeForImage:(id)image;
- (id)_initWithIconRecipeForSectionIcon:(id)icon scale:(double)scale applicationIdentifier:(id)identifier;
- (int64_t)_iconFormatForPointSize:(double)size;
- (unint64_t)hash;
- (void)imageForPointSize:(double)size interfaceStyle:(int64_t)style completionOnMain:(id)main;
@end

@implementation NCNotificationIconRecipe

+ (id)iconRecipeForImage:(id)image
{
  imageCopy = image;
  v5 = [[self alloc] _initWithIconRecipeForImage:imageCopy];

  return v5;
}

+ (id)iconRecipeForApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] _initWithIconRecipeForApplicationIdentifier:identifierCopy];

  return v5;
}

+ (id)iconRecipeForSectionIcon:(id)icon scale:(double)scale applicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  iconCopy = icon;
  v10 = [[self alloc] _initWithIconRecipeForSectionIcon:iconCopy scale:identifierCopy applicationIdentifier:scale];

  return v10;
}

+ (id)iconRecipeForDateIconIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] _initWithIconRecipeForDateIconIdentifier:identifierCopy];

  return v5;
}

+ (id)iconRecipeForDate:(id)date
{
  dateCopy = date;
  v5 = [[self alloc] _initWithIconRecipeForDate:dateCopy];

  return v5;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:self->_type];
  v5 = [builder appendString:self->_applicationIdentifier];
  v6 = [builder appendObject:self->_sectionIcon];
  v7 = [builder appendCGFloat:self->_scale];
  v8 = [builder appendString:self->_dateIconIdentifier];
  v9 = [builder appendObject:self->_date];
  v10 = [builder hash];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      if (self->_type == v5->_type && BSEqualStrings() && BSEqualObjects() && BSFloatEqualToFloat() && BSEqualStrings() && BSEqualObjects())
      {
        v6 = BSEqualObjects();
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_initWithIconRecipeForImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = NCNotificationIconRecipe;
  v6 = [(NCNotificationIconRecipe *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 4;
    objc_storeStrong(&v6->_image, image);
  }

  return v7;
}

- (id)_initWithIconRecipeForApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = NCNotificationIconRecipe;
  v6 = [(NCNotificationIconRecipe *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 0;
    objc_storeStrong(&v6->_applicationIdentifier, identifier);
  }

  return v7;
}

- (id)_initWithIconRecipeForSectionIcon:(id)icon scale:(double)scale applicationIdentifier:(id)identifier
{
  iconCopy = icon;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = NCNotificationIconRecipe;
  v11 = [(NCNotificationIconRecipe *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = 1;
    objc_storeStrong(&v11->_sectionIcon, icon);
    v12->_scale = scale;
    objc_storeStrong(&v12->_applicationIdentifier, identifier);
  }

  return v12;
}

- (id)_initWithIconRecipeForDateIconIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = NCNotificationIconRecipe;
  v6 = [(NCNotificationIconRecipe *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 2;
    objc_storeStrong(&v6->_dateIconIdentifier, identifier);
  }

  return v7;
}

- (id)_initWithIconRecipeForDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = NCNotificationIconRecipe;
  v6 = [(NCNotificationIconRecipe *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 3;
    objc_storeStrong(&v6->_date, date);
  }

  return v7;
}

- (void)imageForPointSize:(double)size interfaceStyle:(int64_t)style completionOnMain:(id)main
{
  mainCopy = main;
  v9 = [(NCNotificationIconRecipe *)self _iconFormatForPointSize:size];
  if (style <= 1)
  {
    style = 1;
  }

  type = self->_type;
  if (type > 1)
  {
    if (type == 2)
    {
      dateIconIdentifier = self->_dateIconIdentifier;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __78__NCNotificationIconRecipe_imageForPointSize_interfaceStyle_completionOnMain___block_invoke_2_3;
      v22[3] = &unk_278371880;
      v23 = mainCopy;
      NCDateIconImageForDateIconIdentifierWithFormat(v9, style, dateIconIdentifier, v22);
      v17 = v23;
    }

    else
    {
      if (type != 3)
      {
        if (type == 4)
        {
          (*(mainCopy + 2))(mainCopy, self->_image, 0);
        }

        goto LABEL_15;
      }

      date = self->_date;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __78__NCNotificationIconRecipe_imageForPointSize_interfaceStyle_completionOnMain___block_invoke_3;
      v20[3] = &unk_278371880;
      v21 = mainCopy;
      NCDateIconImageForDateWithFormat(v9, style, date, v20);
      v17 = v21;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!type)
  {
    applicationIdentifier = self->_applicationIdentifier;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __78__NCNotificationIconRecipe_imageForPointSize_interfaceStyle_completionOnMain___block_invoke;
    v30[3] = &unk_278371880;
    v31 = mainCopy;
    NCIconImageForApplicationIdentifierWithFormatAsync(applicationIdentifier, v9, style, v30);
    v17 = v31;
    goto LABEL_14;
  }

  if (type == 1)
  {
    v11 = self->_sectionIcon;
    v12 = self->_applicationIdentifier;
    scale = self->_scale;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __78__NCNotificationIconRecipe_imageForPointSize_interfaceStyle_completionOnMain___block_invoke_2;
    v24[3] = &unk_2783718A8;
    v25 = v12;
    v26 = v11;
    v28 = v9;
    styleCopy = style;
    v27 = mainCopy;
    v14 = v11;
    v15 = v12;
    [(BBSectionIcon *)v14 nc_imageForFormat:v9 scale:style userInterfaceStyle:v24 completionOnMain:scale];
  }

LABEL_15:
}

void __78__NCNotificationIconRecipe_imageForPointSize_interfaceStyle_completionOnMain___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = *MEMORY[0x277D77DC0];
    if (os_log_type_enabled(*MEMORY[0x277D77DC0], OS_LOG_TYPE_ERROR))
    {
      __78__NCNotificationIconRecipe_imageForPointSize_interfaceStyle_completionOnMain___block_invoke_2_cold_1(a1, v4);
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__NCNotificationIconRecipe_imageForPointSize_interfaceStyle_completionOnMain___block_invoke_1;
    v8[3] = &unk_278371880;
    v9 = *(a1 + 48);
    NCIconImageForApplicationIdentifierWithFormatAsync(v5, v6, v7, v8);
  }
}

- (int64_t)_iconFormatForPointSize:(double)size
{
  if (BSFloatLessThanOrEqualToFloat())
  {
    return 26;
  }

  if (BSFloatGreaterThanFloat() && (BSFloatLessThanOrEqualToFloat() & 1) != 0)
  {
    return 0;
  }

  if (BSFloatLessThanOrEqualToFloat())
  {
    return 14;
  }

  if (BSFloatLessThanOrEqualToFloat())
  {
    return 34;
  }

  return 33;
}

void __78__NCNotificationIconRecipe_imageForPointSize_interfaceStyle_completionOnMain___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138543618;
  v5 = v2;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_21E77E000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to load icon from BulletinBoard: %{public}@", &v4, 0x16u);
}

@end