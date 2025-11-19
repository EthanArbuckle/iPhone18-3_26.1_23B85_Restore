@interface WFRemoteWidgetConfigurationLocalizedIntentResponse
- (INIntent)localizedIntent;
- (WFRemoteWidgetConfigurationLocalizedIntentResponse)initWithCoder:(id)a3;
- (WFRemoteWidgetConfigurationLocalizedIntentResponse)initWithLocalizedIntentRepresentation:(id)a3 languageCode:(id)a4 error:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFRemoteWidgetConfigurationLocalizedIntentResponse

- (WFRemoteWidgetConfigurationLocalizedIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFRemoteWidgetConfigurationLocalizedIntentResponse;
  v5 = [(WFRemoteWidgetConfigurationResponse *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedIntentData"];
    localizedIntentData = v5->_localizedIntentData;
    v5->_localizedIntentData = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"languageCode"];
    languageCode = v5->_languageCode;
    v5->_languageCode = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  localizedIntentData = self->_localizedIntentData;
  v5 = a3;
  [v5 encodeObject:localizedIntentData forKey:@"localizedIntentData"];
  [v5 encodeObject:self->_languageCode forKey:@"languageCode"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(WFRemoteWidgetConfigurationLocalizedIntentResponse *)self localizedIntent];
  v5 = [(WFRemoteWidgetConfigurationResponse *)self error];
  v6 = [v3 stringWithFormat:@"localizedIntent: %@, error: %@", v4, v5];

  return v6;
}

- (INIntent)localizedIntent
{
  v23 = *MEMORY[0x1E69E9840];
  localizedIntent = self->_localizedIntent;
  if (localizedIntent)
  {
LABEL_12:
    v13 = localizedIntent;
    goto LABEL_13;
  }

  v4 = [(WFRemoteWidgetConfigurationLocalizedIntentResponse *)self localizedIntentData];

  if (v4)
  {
    v18 = 0;
    v5 = [(WFRemoteWidgetConfigurationLocalizedIntentResponse *)self localizedIntentData];
    v6 = OPACKDecodeData();

    v17 = 0;
    v7 = [MEMORY[0x1E696E880] makeFromWidgetPlistableRepresentation:v6 error:&v17];
    v8 = v17;
    v9 = self->_localizedIntent;
    self->_localizedIntent = v7;

    if (v18)
    {
      v10 = getWFWidgetConfigurationLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [MEMORY[0x1E696AD98] numberWithInt:v18];
        *buf = 136315394;
        v20 = "[WFRemoteWidgetConfigurationLocalizedIntentResponse localizedIntent]";
        v21 = 2114;
        v22 = v11;
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Error making localized intent from intent data. Status: %{public}@", buf, 0x16u);
      }
    }

    if (v8)
    {
      v12 = getWFWidgetConfigurationLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[WFRemoteWidgetConfigurationLocalizedIntentResponse localizedIntent]";
        v21 = 2114;
        v22 = v8;
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Error making localized intent from intent data. Error: %{public}@", buf, 0x16u);
      }
    }

    localizedIntent = self->_localizedIntent;
    goto LABEL_12;
  }

  v16 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v20 = "[WFRemoteWidgetConfigurationLocalizedIntentResponse localizedIntent]";
    _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Error making localized intent from intent data: intent data is nil", buf, 0xCu);
  }

  v13 = 0;
LABEL_13:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (WFRemoteWidgetConfigurationLocalizedIntentResponse)initWithLocalizedIntentRepresentation:(id)a3 languageCode:(id)a4 error:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v21.receiver = self;
  v21.super_class = WFRemoteWidgetConfigurationLocalizedIntentResponse;
  v10 = [(WFRemoteWidgetConfigurationResponse *)&v21 initWithError:a5];
  if (v10)
  {
    if (v8)
    {
      v20 = 0;
      v11 = MEMORY[0x1CCAA2D90](v8, 0, &v20);
      localizedIntentData = v10->_localizedIntentData;
      v10->_localizedIntentData = v11;

      if (v20)
      {
        v13 = getWFWidgetConfigurationLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [MEMORY[0x1E696AD98] numberWithInt:v20];
          *buf = 136315394;
          v23 = "[WFRemoteWidgetConfigurationLocalizedIntentResponse initWithLocalizedIntentRepresentation:languageCode:error:]";
          v24 = 2114;
          v25 = v14;
          _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Error encoding localized intent representation: %{public}@", buf, 0x16u);
        }

        goto LABEL_7;
      }
    }

    else
    {
      v16 = getWFWidgetConfigurationLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v23 = "[WFRemoteWidgetConfigurationLocalizedIntentResponse initWithLocalizedIntentRepresentation:languageCode:error:]";
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Error encoding localized intent representation: localized intent representation is nil", buf, 0xCu);
      }

      v17 = v10->_localizedIntentData;
      v10->_localizedIntentData = 0;
    }

    objc_storeStrong(&v10->_languageCode, a4);
    v15 = v10;
    goto LABEL_12;
  }

LABEL_7:
  v15 = 0;
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

@end