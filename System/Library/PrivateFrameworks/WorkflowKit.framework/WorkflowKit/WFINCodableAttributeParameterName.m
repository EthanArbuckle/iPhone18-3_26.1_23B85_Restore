@interface WFINCodableAttributeParameterName
- (WFINCodableAttributeParameterName)initWithAttribute:(id)a3;
- (id)localizedStringWithContext:(id)a3 pluralizationNumber:(id)a4;
@end

@implementation WFINCodableAttributeParameterName

- (id)localizedStringWithContext:(id)a3 pluralizationNumber:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(WFINCodableAttributeParameterName *)self attribute];
  v7 = [v5 stringLocalizer];

  v8 = [v6 localizedDisplayNameWithLocalizer:v7];

  if (!v8)
  {
    v9 = [(WFINCodableAttributeParameterName *)self attribute];
    v10 = [v9 displayName];

    v11 = &stru_1F4A1C408;
    if (v10)
    {
      v11 = v10;
    }

    v8 = v11;
    v12 = getWFActionsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = [(WFINCodableAttributeParameterName *)self attribute];
      v14 = [v13 propertyName];
      v17 = 136315650;
      v18 = "[WFINCodableAttributeParameterName localizedStringWithContext:pluralizationNumber:]";
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s no localized name propertyName=%@, displayName=%@", &v17, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

- (WFINCodableAttributeParameterName)initWithAttribute:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFINCodableAttributeParameterName;
  v6 = [(WFINCodableAttributeParameterName *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attribute, a3);
    v8 = v7;
  }

  return v7;
}

@end