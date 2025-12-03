@interface WFContentItemFilterActionParameterDescription
- (WFContentItemFilterActionParameterDescription)initWithContentItemClass:(Class)class field:(unint64_t)field;
- (id)localizedStringWithContext:(id)context pluralizationNumber:(id)number;
@end

@implementation WFContentItemFilterActionParameterDescription

- (id)localizedStringWithContext:(id)context pluralizationNumber:(id)number
{
  contextCopy = context;
  v6 = [(objc_class *)[(WFContentItemFilterActionParameterDescription *)self contentItemClass] localizedPluralFilterDescriptionWithContext:contextCopy];
  if ([(objc_class *)[(WFContentItemFilterActionParameterDescription *)self contentItemClass] canLowercaseTypeDescription])
  {
    localizedLowercaseString = [v6 localizedLowercaseString];

    v6 = localizedLowercaseString;
  }

  field = [(WFContentItemFilterActionParameterDescription *)self field];
  if (field <= 1)
  {
    if (!field)
    {
      if ([(objc_class *)[(WFContentItemFilterActionParameterDescription *)self contentItemClass] hasLibrary])
      {
        v13 = @"Whether or not to limit the number of %@ retrieved.";
      }

      else
      {
        v13 = @"Whether or not to limit the number of %@ that are passed as output.";
      }

      v14 = WFLocalizedStringResourceWithKey(v13, v13);
      v11 = [contextCopy localize:v14];

      self = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v11, v6];
      goto LABEL_18;
    }

    if (field != 1)
    {
      goto LABEL_19;
    }

    v9 = MEMORY[0x1E696AEC0];
    v10 = @"The maximum number of %@.";
LABEL_13:
    v11 = WFLocalizedStringResourceWithKey(v10, v10);
    v12 = [contextCopy localize:v11];
    self = [v9 localizedStringWithFormat:v12, v6];

LABEL_18:
    goto LABEL_19;
  }

  switch(field)
  {
    case 2:
      v9 = MEMORY[0x1E696AEC0];
      v10 = @"Optionally, what to sort the %@ by.";
      goto LABEL_13;
    case 3:
      v9 = MEMORY[0x1E696AEC0];
      v10 = @"The order to sort the %@ in.";
      goto LABEL_13;
    case 4:
      self = v6;
      break;
  }

LABEL_19:

  return self;
}

- (WFContentItemFilterActionParameterDescription)initWithContentItemClass:(Class)class field:(unint64_t)field
{
  v10.receiver = self;
  v10.super_class = WFContentItemFilterActionParameterDescription;
  v6 = [(WFContentItemFilterActionParameterDescription *)&v10 init];
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