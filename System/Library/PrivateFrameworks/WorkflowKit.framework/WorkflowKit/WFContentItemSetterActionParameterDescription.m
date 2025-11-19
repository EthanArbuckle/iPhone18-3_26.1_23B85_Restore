@interface WFContentItemSetterActionParameterDescription
- (WFContentItemSetterActionParameterDescription)initWithContentItemClass:(Class)a3 field:(unint64_t)a4;
- (id)localizedStringWithContext:(id)a3 pluralizationNumber:(id)a4;
@end

@implementation WFContentItemSetterActionParameterDescription

- (id)localizedStringWithContext:(id)a3 pluralizationNumber:(id)a4
{
  v6 = a3;
  v7 = [(objc_class *)[(WFContentItemSetterActionParameterDescription *)self contentItemClass] localizedTypeDescriptionWithContext:v6];
  if ([(objc_class *)[(WFContentItemSetterActionParameterDescription *)self contentItemClass] canLowercaseTypeDescription])
  {
    v4 = [v7 lowercaseString];

    v7 = v4;
  }

  v8 = [(WFContentItemSetterActionParameterDescription *)self field];
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = @"The operation to perform on the selected property of the %@.";
    }

    else
    {
      if (v8 != 3)
      {
        goto LABEL_16;
      }

      v9 = MEMORY[0x1E696AEC0];
      v10 = @"The value to remove from the selected property of the %@. If no value is provided, one will be requested when run.";
    }
  }

  else
  {
    if (!v8)
    {
      v11 = [(objc_class *)[(WFContentItemSetterActionParameterDescription *)self contentItemClass] localizedFilterDescriptionWithContext:v6];
      v12 = v11;
      v13 = &stru_1F4A1C408;
      if (v11)
      {
        v13 = v11;
      }

      v4 = v13;
      goto LABEL_15;
    }

    if (v8 != 1)
    {
      goto LABEL_16;
    }

    v9 = MEMORY[0x1E696AEC0];
    v10 = @"The property of the %@ to edit.";
  }

  v12 = WFLocalizedStringResourceWithKey(v10, v10);
  v14 = [v6 localize:v12];
  v4 = [v9 localizedStringWithFormat:v14, v7];

LABEL_15:
LABEL_16:

  return v4;
}

- (WFContentItemSetterActionParameterDescription)initWithContentItemClass:(Class)a3 field:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = WFContentItemSetterActionParameterDescription;
  v6 = [(WFContentItemSetterActionParameterDescription *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentItemClass, a3);
    v7->_field = a4;
    v8 = v7;
  }

  return v7;
}

@end