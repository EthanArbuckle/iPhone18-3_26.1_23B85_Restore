@interface WFContentItemSetterActionParameterDescription
- (WFContentItemSetterActionParameterDescription)initWithContentItemClass:(Class)class field:(unint64_t)field;
- (id)localizedStringWithContext:(id)context pluralizationNumber:(id)number;
@end

@implementation WFContentItemSetterActionParameterDescription

- (id)localizedStringWithContext:(id)context pluralizationNumber:(id)number
{
  contextCopy = context;
  v7 = [(objc_class *)[(WFContentItemSetterActionParameterDescription *)self contentItemClass] localizedTypeDescriptionWithContext:contextCopy];
  if ([(objc_class *)[(WFContentItemSetterActionParameterDescription *)self contentItemClass] canLowercaseTypeDescription])
  {
    lowercaseString = [v7 lowercaseString];

    v7 = lowercaseString;
  }

  field = [(WFContentItemSetterActionParameterDescription *)self field];
  if (field > 1)
  {
    if (field == 2)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = @"The operation to perform on the selected property of the %@.";
    }

    else
    {
      if (field != 3)
      {
        goto LABEL_16;
      }

      v9 = MEMORY[0x1E696AEC0];
      v10 = @"The value to remove from the selected property of the %@. If no value is provided, one will be requested when run.";
    }
  }

  else
  {
    if (!field)
    {
      v11 = [(objc_class *)[(WFContentItemSetterActionParameterDescription *)self contentItemClass] localizedFilterDescriptionWithContext:contextCopy];
      v12 = v11;
      v13 = &stru_1F4A1C408;
      if (v11)
      {
        v13 = v11;
      }

      lowercaseString = v13;
      goto LABEL_15;
    }

    if (field != 1)
    {
      goto LABEL_16;
    }

    v9 = MEMORY[0x1E696AEC0];
    v10 = @"The property of the %@ to edit.";
  }

  v12 = WFLocalizedStringResourceWithKey(v10, v10);
  v14 = [contextCopy localize:v12];
  lowercaseString = [v9 localizedStringWithFormat:v14, v7];

LABEL_15:
LABEL_16:

  return lowercaseString;
}

- (WFContentItemSetterActionParameterDescription)initWithContentItemClass:(Class)class field:(unint64_t)field
{
  v10.receiver = self;
  v10.super_class = WFContentItemSetterActionParameterDescription;
  v6 = [(WFContentItemSetterActionParameterDescription *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentItemClass, class);
    v7->_field = field;
    v8 = v7;
  }

  return v7;
}

@end