@interface RERecentAction
+ (RERecentAction)actionWithBundleIdentifier:(id)identifier actionIdentifier:(unint64_t)actionIdentifier;
- (BOOL)isEqual:(id)equal;
@end

@implementation RERecentAction

+ (RERecentAction)actionWithBundleIdentifier:(id)identifier actionIdentifier:(unint64_t)actionIdentifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    v6 = objc_opt_new();
    v7 = [identifierCopy copy];

    v8 = v6[1];
    v6[1] = v7;

    v6[2] = actionIdentifier;
  }

  else
  {
    v6 = 0;
  }

  return v6;
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