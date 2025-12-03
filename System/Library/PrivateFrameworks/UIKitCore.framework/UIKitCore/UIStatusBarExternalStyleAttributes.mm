@interface UIStatusBarExternalStyleAttributes
- (BOOL)shouldShowInternalItemType:(int)type withScreenCapabilities:(id)capabilities;
- (Class)foregroundStyleClass;
- (int64_t)tapButtonType;
@end

@implementation UIStatusBarExternalStyleAttributes

- (Class)foregroundStyleClass
{
  if ([(UIStatusBarStyleAttributes *)self style]!= 401 && [(UIStatusBarStyleAttributes *)self style]!= 402)
  {
    [(UIStatusBarStyleAttributes *)self style];
  }

  v3 = objc_opt_class();

  return v3;
}

- (BOOL)shouldShowInternalItemType:(int)type withScreenCapabilities:(id)capabilities
{
  v4 = *&type;
  capabilitiesCopy = capabilities;
  if (v4 == 46)
  {
    goto LABEL_7;
  }

  if (v4 != 48)
  {
    if (v4 != 47 || [(UIStatusBarStyleAttributes *)self style]!= 402)
    {
      goto LABEL_5;
    }

LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  if ([(UIStatusBarStyleAttributes *)self style]== 403)
  {
    goto LABEL_7;
  }

LABEL_5:
  v9.receiver = self;
  v9.super_class = UIStatusBarExternalStyleAttributes;
  v7 = [(UIStatusBarStyleAttributes *)&v9 shouldShowInternalItemType:v4 withScreenCapabilities:capabilitiesCopy];
LABEL_8:

  return v7;
}

- (int64_t)tapButtonType
{
  if ([(UIStatusBarStyleAttributes *)self style]== 402)
  {
    return 2;
  }

  if ([(UIStatusBarStyleAttributes *)self style]== 403)
  {
    return 3;
  }

  v4.receiver = self;
  v4.super_class = UIStatusBarExternalStyleAttributes;
  return [(UIStatusBarStyleAttributes *)&v4 tapButtonType];
}

@end