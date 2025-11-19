@interface WFOpenURLContextualAction
- (BOOL)isEqual:(id)a3;
- (WFOpenURLContextualAction)initWithCoder:(id)a3;
- (WFOpenURLContextualAction)initWithURL:(id)a3 bundleIdentifier:(id)a4 actionTitle:(id)a5;
- (id)_staticDisplayStringForDecoding;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFOpenURLContextualAction

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFOpenURLContextualAction;
  v4 = a3;
  [(WFContextualAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_url forKey:{@"url", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
}

- (WFOpenURLContextualAction)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFOpenURLContextualAction;
  v5 = [(WFContextualAction *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    v8 = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      objc_storeStrong(&v5->_url, v6);
      objc_storeStrong(&v5->_bundleIdentifier, v8);
      v10 = v5;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_staticDisplayStringForDecoding
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedStringWithKey(@"Open URL (Contextual Action)", @"Open URL %@");
  v5 = [(WFOpenURLContextualAction *)self url];
  v6 = [v3 localizedStringWithFormat:v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = WFOpenURLContextualAction;
  if ([(WFContextualAction *)&v18 isEqual:v4])
  {
    v5 = v4;
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v11) = 0;
LABEL_20:

      goto LABEL_21;
    }

    v6 = [v5 url];
    v7 = [(WFOpenURLContextualAction *)self url];
    v8 = v6;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      LOBYTE(v11) = 0;
      v12 = v9;
      v13 = v8;
      if (!v8 || !v9)
      {
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v11 = [v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_19;
      }
    }

    v14 = [v5 bundleIdentifier];
    v15 = [(WFOpenURLContextualAction *)self bundleIdentifier];
    v13 = v14;
    v16 = v15;
    v12 = v16;
    if (v13 == v16)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      LOBYTE(v11) = 0;
      if (v13 && v16)
      {
        LOBYTE(v11) = [v13 isEqualToString:v16];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v11) = 0;
LABEL_21:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v11.receiver = self;
  v11.super_class = WFOpenURLContextualAction;
  v4 = [v3 combineInteger:{-[WFContextualAction hash](&v11, sel_hash)}];
  v5 = [(WFOpenURLContextualAction *)self url];
  v6 = [v3 combine:v5];

  v7 = [(WFOpenURLContextualAction *)self bundleIdentifier];
  v8 = [v3 combineContentsOfPropertyListObject:v7];

  v9 = [v3 finalize];
  return v9;
}

- (id)uniqueIdentifier
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69AA8A0]);
  v4 = [(WFOpenURLContextualAction *)self url];
  v5 = [v3 combine:v4];

  v6 = [(WFOpenURLContextualAction *)self bundleIdentifier];
  v7 = [v3 combineContentsOfPropertyListObject:v6];

  v8 = [(WFContextualAction *)self displayString];
  v9 = [v3 combineContentsOfPropertyListObject:v8];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "finalize")}];
  v11 = [v10 stringValue];

  v12 = [(WFContextualAction *)self identifier];
  v17[0] = v12;
  v17[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

  v14 = [v13 componentsJoinedByString:@"."];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (WFOpenURLContextualAction)initWithURL:(id)a3 bundleIdentifier:(id)a4 actionTitle:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
LABEL_6:
      obj = a3;
      v37 = v12;
      if (v12)
      {
        v17 = v12;
        v18 = 0;
        v19 = v17;
      }

      else
      {
        v20 = MEMORY[0x1E696AEC0];
        v21 = WFLocalizedStringWithKey(@"Open URL (Contextual Action)", @"Open URL %@");
        v17 = [v20 localizedStringWithFormat:v21, v10];

        v19 = WFLocalizedStringWithKey(@"Open URL (Contextual Action, Title)", @"Open URL");
        v18 = @"%@";
      }

      v22 = [WFContextualActionParameter alloc];
      v23 = [v10 absoluteString];
      v24 = [(WFContextualActionParameter *)v22 initWithType:@"WFURLContentItem" displayString:0 wfParameterKey:@"WFInput" wfSerializedRepresentation:v23];
      v39 = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
      v26 = [WFContextualActionIcon iconWithApplicationBundleIdentifier:v11];
      self = [(WFContextualAction *)self initWithIdentifier:@"is.workflow.actions.openurl" wfActionIdentifier:@"is.workflow.actions.openurl" associatedAppBundleIdentifier:v11 parameters:v25 displayString:v17 title:v19 subtitle:v18 icon:v26];

      if (self)
      {
        objc_storeStrong(&self->_url, obj);
        v27 = [v11 copy];
        bundleIdentifier = self->_bundleIdentifier;
        self->_bundleIdentifier = v27;

        v29 = self;
      }

      v30 = self;
      v12 = v37;
      goto LABEL_12;
    }

    v38 = 0;
    v13 = v10;
  }

  else
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"WFOpenURLContextualAction.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"url"}];

    if (v11)
    {
      goto LABEL_6;
    }

    v38 = 0;
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nullable WFBundleIdentifierForHandlingURL(NSURL * _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
    [v34 handleFailureInFunction:v35 file:@"WFOpenURLContextualAction.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v14 = [objc_alloc(MEMORY[0x1E69AA860]) initWithURL:v10 error:&v38];
  v15 = [v14 bundleIdentifier];

  v16 = v38;
  v11 = v16;
  if (v15)
  {

    v11 = v15;
    goto LABEL_6;
  }

  v17 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v41 = "[WFOpenURLContextualAction initWithURL:bundleIdentifier:actionTitle:]";
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&dword_1B1DE3000, v17, OS_LOG_TYPE_ERROR, "%s Can't determine what bundle identifier can open %@", buf, 0x16u);
  }

  v30 = 0;
LABEL_12:

  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

@end