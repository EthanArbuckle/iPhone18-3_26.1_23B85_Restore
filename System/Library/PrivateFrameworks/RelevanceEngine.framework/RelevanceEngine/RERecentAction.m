@interface RERecentAction
+ (RERecentAction)actionWithBundleIdentifier:(id)a3 actionIdentifier:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
@end

@implementation RERecentAction

+ (RERecentAction)actionWithBundleIdentifier:(id)a3 actionIdentifier:(unint64_t)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = objc_opt_new();
    v7 = [v5 copy];

    v8 = v6[1];
    v6[1] = v7;

    v6[2] = a4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
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
      bundleIdentifier = v5->_bundleIdentifier;
      v7 = self->_bundleIdentifier;
      v8 = v7;
      if (v7 == bundleIdentifier)
      {
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:bundleIdentifier];

        if (!v9)
        {
          v10 = 0;
LABEL_10:

          goto LABEL_11;
        }
      }

      v10 = self->_actionIdentifier == v5->_actionIdentifier;
      goto LABEL_10;
    }

    v10 = 0;
  }

LABEL_11:

  return v10;
}

@end