@interface UIFont(UIFont_ContentSizeCategory)
+ (id)_normalizedContentSizeCategory:()UIFont_ContentSizeCategory default:;
+ (id)preferredContentSizeCategory;
@end

@implementation UIFont(UIFont_ContentSizeCategory)

+ (id)preferredContentSizeCategory
{
  v0 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  userInterfaceIdiom = [v0 userInterfaceIdiom];

  v2 = +[UIContentSizeCategoryPreference system];
  v3 = v2;
  if (userInterfaceIdiom == 3)
  {
    [v2 preferredContentSizeCategoryCarPlay];
  }

  else
  {
    [v2 preferredContentSizeCategory];
  }
  v4 = ;

  return v4;
}

+ (id)_normalizedContentSizeCategory:()UIFont_ContentSizeCategory default:
{
  v5 = a3;
  v6 = v5;
  if (!v5 || [v5 isEqualToString:@"_UICTContentSizeCategoryUnspecified"])
  {
    if (a4)
    {
      v7 = objc_opt_class();
    }

    else
    {
      v8 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
      userInterfaceIdiom = [v8 userInterfaceIdiom];

      v10 = +[UIContentSizeCategoryPreference system];
      v11 = v10;
      if (userInterfaceIdiom == 3)
      {
        [v10 preferredContentSizeCategoryCarPlay];
      }

      else
      {
        [v10 preferredContentSizeCategory];
      }
      _defaultContentSizeCategory = ;

      if (![_defaultContentSizeCategory isEqualToString:@"_UICTContentSizeCategoryUnspecified"])
      {
        goto LABEL_11;
      }

      v7 = objc_opt_class();
      v6 = _defaultContentSizeCategory;
    }

    _defaultContentSizeCategory = [v7 _defaultContentSizeCategory];

LABEL_11:
    v6 = _defaultContentSizeCategory;
  }

  return v6;
}

@end