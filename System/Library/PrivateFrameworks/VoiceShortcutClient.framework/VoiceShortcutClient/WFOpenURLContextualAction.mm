@interface WFOpenURLContextualAction
- (BOOL)isEqual:(id)equal;
- (WFOpenURLContextualAction)initWithCoder:(id)coder;
- (WFOpenURLContextualAction)initWithURL:(id)l bundleIdentifier:(id)identifier actionTitle:(id)title;
- (id)_staticDisplayStringForDecoding;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFOpenURLContextualAction

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFOpenURLContextualAction;
  coderCopy = coder;
  [(WFContextualAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_url forKey:{@"url", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
}

- (WFOpenURLContextualAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFOpenURLContextualAction;
  v5 = [(WFContextualAction *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v18.receiver = self;
  v18.super_class = WFOpenURLContextualAction;
  if ([(WFContextualAction *)&v18 isEqual:equalCopy])
  {
    v5 = equalCopy;
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

    bundleIdentifier = [v5 bundleIdentifier];
    bundleIdentifier2 = [(WFOpenURLContextualAction *)self bundleIdentifier];
    v13 = bundleIdentifier;
    v16 = bundleIdentifier2;
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

  bundleIdentifier = [(WFOpenURLContextualAction *)self bundleIdentifier];
  v8 = [v3 combineContentsOfPropertyListObject:bundleIdentifier];

  v9 = [v3 finalize];
  return v9;
}

- (id)uniqueIdentifier
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69AA8A0]);
  v4 = [(WFOpenURLContextualAction *)self url];
  v5 = [v3 combine:v4];

  bundleIdentifier = [(WFOpenURLContextualAction *)self bundleIdentifier];
  v7 = [v3 combineContentsOfPropertyListObject:bundleIdentifier];

  displayString = [(WFContextualAction *)self displayString];
  v9 = [v3 combineContentsOfPropertyListObject:displayString];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "finalize")}];
  stringValue = [v10 stringValue];

  identifier = [(WFContextualAction *)self identifier];
  v17[0] = identifier;
  v17[1] = stringValue;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

  v14 = [v13 componentsJoinedByString:@"."];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (WFOpenURLContextualAction)initWithURL:(id)l bundleIdentifier:(id)identifier actionTitle:(id)title
{
  v44 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  titleCopy = title;
  if (lCopy)
  {
    if (identifierCopy)
    {
LABEL_6:
      obj = l;
      v37 = titleCopy;
      if (titleCopy)
      {
        lCopy = titleCopy;
        v18 = 0;
        v19 = lCopy;
      }

      else
      {
        v20 = MEMORY[0x1E696AEC0];
        v21 = WFLocalizedStringWithKey(@"Open URL (Contextual Action)", @"Open URL %@");
        lCopy = [v20 localizedStringWithFormat:v21, lCopy];

        v19 = WFLocalizedStringWithKey(@"Open URL (Contextual Action, Title)", @"Open URL");
        v18 = @"%@";
      }

      v22 = [WFContextualActionParameter alloc];
      absoluteString = [lCopy absoluteString];
      v24 = [(WFContextualActionParameter *)v22 initWithType:@"WFURLContentItem" displayString:0 wfParameterKey:@"WFInput" wfSerializedRepresentation:absoluteString];
      v39 = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
      v26 = [WFContextualActionIcon iconWithApplicationBundleIdentifier:identifierCopy];
      self = [(WFContextualAction *)self initWithIdentifier:@"is.workflow.actions.openurl" wfActionIdentifier:@"is.workflow.actions.openurl" associatedAppBundleIdentifier:identifierCopy parameters:v25 displayString:lCopy title:v19 subtitle:v18 icon:v26];

      if (self)
      {
        objc_storeStrong(&self->_url, obj);
        v27 = [identifierCopy copy];
        bundleIdentifier = self->_bundleIdentifier;
        self->_bundleIdentifier = v27;

        selfCopy = self;
      }

      selfCopy2 = self;
      titleCopy = v37;
      goto LABEL_12;
    }

    v38 = 0;
    v13 = lCopy;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFOpenURLContextualAction.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"url"}];

    if (identifierCopy)
    {
      goto LABEL_6;
    }

    v38 = 0;
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nullable WFBundleIdentifierForHandlingURL(NSURL * _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
    [currentHandler2 handleFailureInFunction:v35 file:@"WFOpenURLContextualAction.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v14 = [objc_alloc(MEMORY[0x1E69AA860]) initWithURL:lCopy error:&v38];
  bundleIdentifier = [v14 bundleIdentifier];

  v16 = v38;
  identifierCopy = v16;
  if (bundleIdentifier)
  {

    identifierCopy = bundleIdentifier;
    goto LABEL_6;
  }

  lCopy = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(lCopy, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v41 = "[WFOpenURLContextualAction initWithURL:bundleIdentifier:actionTitle:]";
    v42 = 2112;
    v43 = lCopy;
    _os_log_impl(&dword_1B1DE3000, lCopy, OS_LOG_TYPE_ERROR, "%s Can't determine what bundle identifier can open %@", buf, 0x16u);
  }

  selfCopy2 = 0;
LABEL_12:

  v31 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

@end