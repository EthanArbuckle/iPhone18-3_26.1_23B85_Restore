@interface WFINCodableAttributeParameterName
- (WFINCodableAttributeParameterName)initWithAttribute:(id)attribute;
- (id)localizedStringWithContext:(id)context pluralizationNumber:(id)number;
@end

@implementation WFINCodableAttributeParameterName

- (id)localizedStringWithContext:(id)context pluralizationNumber:(id)number
{
  v23 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  attribute = [(WFINCodableAttributeParameterName *)self attribute];
  stringLocalizer = [contextCopy stringLocalizer];

  v8 = [attribute localizedDisplayNameWithLocalizer:stringLocalizer];

  if (!v8)
  {
    attribute2 = [(WFINCodableAttributeParameterName *)self attribute];
    displayName = [attribute2 displayName];

    v11 = &stru_1F4A1C408;
    if (displayName)
    {
      v11 = displayName;
    }

    v8 = v11;
    v12 = getWFActionsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      attribute3 = [(WFINCodableAttributeParameterName *)self attribute];
      propertyName = [attribute3 propertyName];
      v17 = 136315650;
      v18 = "[WFINCodableAttributeParameterName localizedStringWithContext:pluralizationNumber:]";
      v19 = 2112;
      v20 = propertyName;
      v21 = 2112;
      v22 = displayName;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s no localized name propertyName=%@, displayName=%@", &v17, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

- (WFINCodableAttributeParameterName)initWithAttribute:(id)attribute
{
  attributeCopy = attribute;
  v10.receiver = self;
  v10.super_class = WFINCodableAttributeParameterName;
  v6 = [(WFINCodableAttributeParameterName *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attribute, attribute);
    v8 = v7;
  }

  return v7;
}

@end