@interface WFConfiguredSystemAction(WidgetConversion)
+ (id)systemActionWithLegacyEntity:()WidgetConversion;
+ (id)systemActionWithValue:()WidgetConversion;
@end

@implementation WFConfiguredSystemAction(WidgetConversion)

+ (id)systemActionWithLegacyEntity:()WidgetConversion
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  identifier = [v3 identifier];
  typeIdentifier = [identifier typeIdentifier];
  if (typeIdentifier == @"ConfiguredShortcut")
  {
  }

  else
  {
    v6 = typeIdentifier;
    if (!typeIdentifier)
    {

LABEL_10:
      instanceIdentifier = getWFGeneralLogObject();
      if (os_log_type_enabled(instanceIdentifier, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [v3 identifier];
        typeIdentifier2 = [identifier2 typeIdentifier];
        v17 = 136315394;
        v18 = "+[WFConfiguredSystemAction(WidgetConversion) systemActionWithLegacyEntity:]";
        v19 = 2114;
        v20 = typeIdentifier2;
        _os_log_impl(&dword_1C830A000, instanceIdentifier, OS_LOG_TYPE_ERROR, "%s Could not create system action from entity because the type identifier is of %{public}@ and not ConfiguredShortcut", &v17, 0x16u);
      }

      v12 = 0;
      goto LABEL_21;
    }

    v7 = [@"ConfiguredShortcut" isEqualToString:typeIdentifier];

    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  identifier3 = [v3 identifier];
  instanceIdentifier = [identifier3 instanceIdentifier];

  if (instanceIdentifier)
  {
    v10 = +[WFWidgetCache sharedCache];
    v11 = [v10 widgetWorkflowWithIdentifier:instanceIdentifier];
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x1E69E0A10]) initWithWorkflow:v11 shortcutsMetadata:0];
    }

    else
    {
      v15 = getWFGeneralLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315394;
        v18 = "+[WFConfiguredSystemAction(WidgetConversion) systemActionWithLegacyEntity:]";
        v19 = 2112;
        v20 = instanceIdentifier;
        _os_log_impl(&dword_1C830A000, v15, OS_LOG_TYPE_ERROR, "%s Could not create reference for workflowID: %@", &v17, 0x16u);
      }

      v12 = 0;
    }
  }

  else
  {
    v10 = getWFGeneralLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "+[WFConfiguredSystemAction(WidgetConversion) systemActionWithLegacyEntity:]";
      _os_log_impl(&dword_1C830A000, v10, OS_LOG_TYPE_ERROR, "%s Could not create reference due to missing workflow identifier", &v17, 0xCu);
    }

    v12 = 0;
  }

LABEL_21:

  return v12;
}

+ (id)systemActionWithValue:()WidgetConversion
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  value = [v4 value];
  if (value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    properties = [value properties];
    v7 = [properties if_firstObjectPassingTest:&__block_literal_global_3621];

    if (v7)
    {
      value2 = [v7 value];
      v8Value = [value2 value];

      if (v8Value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8Value options:0];
        v16 = 0;
        v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v16];
        v12 = v16;
        if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {

          v13 = getWFGeneralLogObject();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v18 = "+[WFConfiguredSystemAction(WidgetConversion) systemActionWithValue:]";
            v19 = 2114;
            v20 = v12;
            _os_log_impl(&dword_1C830A000, v13, OS_LOG_TYPE_ERROR, "%s Could not get system action from data: %{public}@", buf, 0x16u);
          }

          v11 = 0;
        }
      }

      else
      {

        v8Value = getWFGeneralLogObject();
        if (os_log_type_enabled(v8Value, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v18 = "+[WFConfiguredSystemAction(WidgetConversion) systemActionWithValue:]";
          v19 = 2112;
          v20 = v7;
          _os_log_impl(&dword_1C830A000, v8Value, OS_LOG_TYPE_ERROR, "%s Could not create system action from property: %@", buf, 0x16u);
        }

        v11 = 0;
      }
    }

    else
    {
      v14 = getWFGeneralLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "+[WFConfiguredSystemAction(WidgetConversion) systemActionWithValue:]";
        v19 = 2112;
        v20 = value;
        _os_log_impl(&dword_1C830A000, v14, OS_LOG_TYPE_DEFAULT, "%s Could not create system action from LNEntity: %@, attempting legacy deserialization", buf, 0x16u);
      }

      v11 = [self systemActionWithLegacyEntity:value];
    }
  }

  else
  {

    value = getWFGeneralLogObject();
    if (os_log_type_enabled(value, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "+[WFConfiguredSystemAction(WidgetConversion) systemActionWithValue:]";
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_1C830A000, value, OS_LOG_TYPE_ERROR, "%s Could not create system action from value: %@", buf, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

@end