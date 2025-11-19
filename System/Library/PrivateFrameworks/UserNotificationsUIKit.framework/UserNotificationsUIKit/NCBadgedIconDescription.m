@interface NCBadgedIconDescription
- (BOOL)isEqual:(id)a3;
- (NCBadgedIconDescription)initWithBundleIdentifier:(id)a3 prominentIconDescription:(id)a4 subordinateIconRecipe:(id)a5 badgeText:(id)a6;
@end

@implementation NCBadgedIconDescription

- (NCBadgedIconDescription)initWithBundleIdentifier:(id)a3 prominentIconDescription:(id)a4 subordinateIconRecipe:(id)a5 badgeText:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = NCBadgedIconDescription;
  v15 = [(NCBadgedIconDescription *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bundleIdentifier, a3);
    objc_storeStrong(&v16->_prominentIconDescription, a4);
    objc_storeStrong(&v16->_subordinateIconRecipe, a5);
    objc_storeStrong(&v16->_badgeText, a6);
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
LABEL_9:
      v17 = 0;
      goto LABEL_10;
    }
  }

  v5 = v4;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [(NCBadgedIconDescription *)self bundleIdentifier];
  v7 = [v5 bundleIdentifier];
  v8 = NCIsEqual();

  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = [(NCBadgedIconDescription *)self prominentIconDescription];
  v10 = [v5 prominentIconDescription];
  v11 = NCIsEqual();

  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = [(NCBadgedIconDescription *)self subordinateIconRecipe];
  v13 = [v5 subordinateIconRecipe];
  v14 = NCIsEqual();

  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = [(NCBadgedIconDescription *)self badgeText];
  v16 = [v5 badgeText];
  v17 = NCIsEqual();

LABEL_10:
  return v17;
}

@end