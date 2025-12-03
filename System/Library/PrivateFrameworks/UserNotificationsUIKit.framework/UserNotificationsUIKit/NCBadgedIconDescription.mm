@interface NCBadgedIconDescription
- (BOOL)isEqual:(id)equal;
- (NCBadgedIconDescription)initWithBundleIdentifier:(id)identifier prominentIconDescription:(id)description subordinateIconRecipe:(id)recipe badgeText:(id)text;
@end

@implementation NCBadgedIconDescription

- (NCBadgedIconDescription)initWithBundleIdentifier:(id)identifier prominentIconDescription:(id)description subordinateIconRecipe:(id)recipe badgeText:(id)text
{
  identifierCopy = identifier;
  descriptionCopy = description;
  recipeCopy = recipe;
  textCopy = text;
  v18.receiver = self;
  v18.super_class = NCBadgedIconDescription;
  v15 = [(NCBadgedIconDescription *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bundleIdentifier, identifier);
    objc_storeStrong(&v16->_prominentIconDescription, description);
    objc_storeStrong(&v16->_subordinateIconRecipe, recipe);
    objc_storeStrong(&v16->_badgeText, text);
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

  v5 = equalCopy;
  if (!v5)
  {
    goto LABEL_9;
  }

  bundleIdentifier = [(NCBadgedIconDescription *)self bundleIdentifier];
  bundleIdentifier2 = [v5 bundleIdentifier];
  v8 = NCIsEqual();

  if (!v8)
  {
    goto LABEL_9;
  }

  prominentIconDescription = [(NCBadgedIconDescription *)self prominentIconDescription];
  prominentIconDescription2 = [v5 prominentIconDescription];
  v11 = NCIsEqual();

  if (!v11)
  {
    goto LABEL_9;
  }

  subordinateIconRecipe = [(NCBadgedIconDescription *)self subordinateIconRecipe];
  subordinateIconRecipe2 = [v5 subordinateIconRecipe];
  v14 = NCIsEqual();

  if (!v14)
  {
    goto LABEL_9;
  }

  badgeText = [(NCBadgedIconDescription *)self badgeText];
  badgeText2 = [v5 badgeText];
  v17 = NCIsEqual();

LABEL_10:
  return v17;
}

@end