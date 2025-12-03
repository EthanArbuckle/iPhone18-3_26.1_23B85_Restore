@interface LNStaticDeferredLocalizedString(Workflow)
- (__CFString)wf_localizedString;
- (id)initWithSerializedRepresentation:()Workflow variableProvider:parameter:;
- (id)serializedRepresentation;
- (void)wf_getLocalizedStringWithCompletionHandler:()Workflow;
@end

@implementation LNStaticDeferredLocalizedString(Workflow)

- (__CFString)wf_localizedString
{
  v1 = [self localizedStringWithPluralizationNumber:&unk_1F4A9A360 forLocaleIdentifier:0];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = &stru_1F4A1C408;
  }

  v4 = v3;

  return v3;
}

- (id)initWithSerializedRepresentation:()Workflow variableProvider:parameter:
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (!v6)
  {
LABEL_10:
    selfCopy = 0;
    goto LABEL_13;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = getWFGeneralLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v16 = 136315906;
      v17 = "WFEnforceClass";
      v18 = 2114;
      v19 = v6;
      v20 = 2114;
      v21 = objc_opt_class();
      v22 = 2114;
      v23 = v5;
      v10 = v21;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v16, 0x2Au);
    }

    goto LABEL_10;
  }

  v7 = [v6 objectForKey:@"key"];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = v8;

  v13 = [self initWithKey:v12 table:0 bundleURL:0];
  self = v13;

  selfCopy = self;
LABEL_13:

  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serializedRepresentation
{
  v2 = objc_opt_new();
  v3 = [self localizedStringWithPluralizationNumber:&unk_1F4A9A360 forLocaleIdentifier:0];
  [v2 if_setObjectIfNonNil:v3 forKey:@"key"];

  return v2;
}

- (void)wf_getLocalizedStringWithCompletionHandler:()Workflow
{
  v5 = a3;
  wf_localizedString = [self wf_localizedString];
  (a3)[2](v5, wf_localizedString, 0);
}

@end