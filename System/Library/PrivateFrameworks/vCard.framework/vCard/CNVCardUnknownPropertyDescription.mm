@interface CNVCardUnknownPropertyDescription
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation CNVCardUnknownPropertyDescription

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  propertyName = [(CNVCardUnknownPropertyDescription *)self propertyName];
  originalLine = [(CNVCardUnknownPropertyDescription *)self originalLine];
  v7 = [v3 stringWithFormat:@"<%@: %p %@='%@'>", v4, self, propertyName, originalLine];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v6 = equalCopy;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    propertyName = [(CNVCardUnknownPropertyDescription *)self propertyName];
    if (propertyName || ([v8 propertyName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      propertyName2 = [(CNVCardUnknownPropertyDescription *)self propertyName];
      propertyName3 = [v8 propertyName];
      v12 = [propertyName2 isEqual:propertyName3];

      if (propertyName)
      {

        if (v12)
        {
          goto LABEL_9;
        }
      }

      else
      {

        if (v12)
        {
          goto LABEL_9;
        }
      }

      v16 = 0;
LABEL_19:

      goto LABEL_20;
    }

LABEL_9:
    originalLine = [(CNVCardUnknownPropertyDescription *)self originalLine];
    if (originalLine || ([v8 originalLine], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      originalLine2 = [(CNVCardUnknownPropertyDescription *)self originalLine];
      originalLine3 = [v8 originalLine];
      v16 = [originalLine2 isEqual:originalLine3];

      if (originalLine)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v16 = 1;
    }

    goto LABEL_18;
  }

  v16 = 0;
LABEL_20:

  return v16;
}

@end