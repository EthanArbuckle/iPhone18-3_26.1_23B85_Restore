@interface CNVCardUnknownPropertyDescription
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation CNVCardUnknownPropertyDescription

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CNVCardUnknownPropertyDescription *)self propertyName];
  v6 = [(CNVCardUnknownPropertyDescription *)self originalLine];
  v7 = [v3 stringWithFormat:@"<%@: %p %@='%@'>", v4, self, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v6 = v5;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [(CNVCardUnknownPropertyDescription *)self propertyName];
    if (v9 || ([v8 propertyName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = [(CNVCardUnknownPropertyDescription *)self propertyName];
      v11 = [v8 propertyName];
      v12 = [v10 isEqual:v11];

      if (v9)
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
    v13 = [(CNVCardUnknownPropertyDescription *)self originalLine];
    if (v13 || ([v8 originalLine], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = [(CNVCardUnknownPropertyDescription *)self originalLine];
      v15 = [v8 originalLine];
      v16 = [v14 isEqual:v15];

      if (v13)
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