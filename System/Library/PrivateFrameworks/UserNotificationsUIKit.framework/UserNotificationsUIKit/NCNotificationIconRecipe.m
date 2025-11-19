@interface NCNotificationIconRecipe
+ (id)iconRecipeForApplicationIdentifier:(id)a3;
+ (id)iconRecipeForDate:(id)a3;
+ (id)iconRecipeForDateIconIdentifier:(id)a3;
+ (id)iconRecipeForImage:(id)a3;
+ (id)iconRecipeForSectionIcon:(id)a3 scale:(double)a4 applicationIdentifier:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)_initWithIconRecipeForApplicationIdentifier:(id)a3;
- (id)_initWithIconRecipeForDate:(id)a3;
- (id)_initWithIconRecipeForDateIconIdentifier:(id)a3;
- (id)_initWithIconRecipeForImage:(id)a3;
- (id)_initWithIconRecipeForSectionIcon:(id)a3 scale:(double)a4 applicationIdentifier:(id)a5;
- (int64_t)_iconFormatForPointSize:(double)a3;
- (unint64_t)hash;
- (void)imageForPointSize:(double)a3 interfaceStyle:(int64_t)a4 completionOnMain:(id)a5;
@end

@implementation NCNotificationIconRecipe

+ (id)iconRecipeForImage:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithIconRecipeForImage:v4];

  return v5;
}

+ (id)iconRecipeForApplicationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithIconRecipeForApplicationIdentifier:v4];

  return v5;
}

+ (id)iconRecipeForSectionIcon:(id)a3 scale:(double)a4 applicationIdentifier:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] _initWithIconRecipeForSectionIcon:v9 scale:v8 applicationIdentifier:a4];

  return v10;
}

+ (id)iconRecipeForDateIconIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithIconRecipeForDateIconIdentifier:v4];

  return v5;
}

+ (id)iconRecipeForDate:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithIconRecipeForDate:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendInteger:self->_type];
  v5 = [v3 appendString:self->_applicationIdentifier];
  v6 = [v3 appendObject:self->_sectionIcon];
  v7 = [v3 appendCGFloat:self->_scale];
  v8 = [v3 appendString:self->_dateIconIdentifier];
  v9 = [v3 appendObject:self->_date];
  v10 = [v3 hash];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
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

- (id)_initWithIconRecipeForImage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NCNotificationIconRecipe;
  v6 = [(NCNotificationIconRecipe *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 4;
    objc_storeStrong(&v6->_image, a3);
  }

  return v7;
}

- (id)_initWithIconRecipeForApplicationIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NCNotificationIconRecipe;
  v6 = [(NCNotificationIconRecipe *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 0;
    objc_storeStrong(&v6->_applicationIdentifier, a3);
  }

  return v7;
}

- (id)_initWithIconRecipeForSectionIcon:(id)a3 scale:(double)a4 applicationIdentifier:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = NCNotificationIconRecipe;
  v11 = [(NCNotificationIconRecipe *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = 1;
    objc_storeStrong(&v11->_sectionIcon, a3);
    v12->_scale = a4;
    objc_storeStrong(&v12->_applicationIdentifier, a5);
  }

  return v12;
}

- (id)_initWithIconRecipeForDateIconIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NCNotificationIconRecipe;
  v6 = [(NCNotificationIconRecipe *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 2;
    objc_storeStrong(&v6->_dateIconIdentifier, a3);
  }

  return v7;
}

- (id)_initWithIconRecipeForDate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NCNotificationIconRecipe;
  v6 = [(NCNotificationIconRecipe *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 3;
    objc_storeStrong(&v6->_date, a3);
  }

  return v7;
}

- (void)imageForPointSize:(double)a3 interfaceStyle:(int64_t)a4 completionOnMain:(id)a5
{
  v8 = a5;
  v9 = [(NCNotificationIconRecipe *)self _iconFormatForPointSize:a3];
  if (a4 <= 1)
  {
    a4 = 1;
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
      v23 = v8;
      NCDateIconImageForDateIconIdentifierWithFormat(v9, a4, dateIconIdentifier, v22);
      v17 = v23;
    }

    else
    {
      if (type != 3)
      {
        if (type == 4)
        {
          (*(v8 + 2))(v8, self->_image, 0);
        }

        goto LABEL_15;
      }

      date = self->_date;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __78__NCNotificationIconRecipe_imageForPointSize_interfaceStyle_completionOnMain___block_invoke_3;
      v20[3] = &unk_278371880;
      v21 = v8;
      NCDateIconImageForDateWithFormat(v9, a4, date, v20);
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
    v31 = v8;
    NCIconImageForApplicationIdentifierWithFormatAsync(applicationIdentifier, v9, a4, v30);
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
    v29 = a4;
    v27 = v8;
    v14 = v11;
    v15 = v12;
    [(BBSectionIcon *)v14 nc_imageForFormat:v9 scale:a4 userInterfaceStyle:v24 completionOnMain:scale];
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

- (int64_t)_iconFormatForPointSize:(double)a3
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