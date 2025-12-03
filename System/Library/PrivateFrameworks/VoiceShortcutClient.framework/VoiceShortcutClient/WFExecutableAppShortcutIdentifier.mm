@interface WFExecutableAppShortcutIdentifier
- (BOOL)isEqual:(id)equal;
- (WFExecutableAppShortcutIdentifier)initWithBundleIdentifier:(id)identifier basePhraseTemplate:(id)template actionIdentifier:(id)actionIdentifier parameterIdentifier:(id)parameterIdentifier;
- (WFExecutableAppShortcutIdentifier)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFExecutableAppShortcutIdentifier

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(WFExecutableAppShortcutIdentifier *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  basePhraseTemplate = [(WFExecutableAppShortcutIdentifier *)self basePhraseTemplate];
  [coderCopy encodeObject:basePhraseTemplate forKey:@"basePhraseTemplate"];

  actionIdentifier = [(WFExecutableAppShortcutIdentifier *)self actionIdentifier];
  [coderCopy encodeObject:actionIdentifier forKey:@"actionIdentifier"];

  parameterIdentifier = [(WFExecutableAppShortcutIdentifier *)self parameterIdentifier];
  [coderCopy encodeObject:parameterIdentifier forKey:@"parameterIdentifier"];
}

- (WFExecutableAppShortcutIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"bundleIdentifier"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"basePhraseTemplate"];

  v9 = objc_opt_self();
  v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"actionIdentifier"];

  v11 = objc_opt_self();
  v12 = [coderCopy decodeObjectOfClass:v11 forKey:@"parameterIdentifier"];

  v13 = [(WFExecutableAppShortcutIdentifier *)self initWithBundleIdentifier:v6 basePhraseTemplate:v8 actionIdentifier:v10 parameterIdentifier:v12];
  return v13;
}

- (unint64_t)hash
{
  bundleIdentifier = [(WFExecutableAppShortcutIdentifier *)self bundleIdentifier];
  v4 = [bundleIdentifier hash];
  basePhraseTemplate = [(WFExecutableAppShortcutIdentifier *)self basePhraseTemplate];
  v6 = [basePhraseTemplate hash] ^ v4;
  actionIdentifier = [(WFExecutableAppShortcutIdentifier *)self actionIdentifier];
  v8 = [actionIdentifier hash];
  parameterIdentifier = [(WFExecutableAppShortcutIdentifier *)self parameterIdentifier];
  v10 = v8 ^ [parameterIdentifier hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_36:

      goto LABEL_37;
    }

    bundleIdentifier = [(WFExecutableAppShortcutIdentifier *)self bundleIdentifier];
    bundleIdentifier2 = [(WFExecutableAppShortcutIdentifier *)v6 bundleIdentifier];
    v9 = bundleIdentifier;
    v10 = bundleIdentifier2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_34;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    basePhraseTemplate = [(WFExecutableAppShortcutIdentifier *)self basePhraseTemplate];
    basePhraseTemplate2 = [(WFExecutableAppShortcutIdentifier *)v6 basePhraseTemplate];
    v14 = basePhraseTemplate;
    v18 = basePhraseTemplate2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_33;
      }

      v21 = [v14 isEqualToString:v18];

      if (!v21)
      {
        LOBYTE(v12) = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    actionIdentifier = [(WFExecutableAppShortcutIdentifier *)self actionIdentifier];
    actionIdentifier2 = [(WFExecutableAppShortcutIdentifier *)v6 actionIdentifier];
    v24 = actionIdentifier;
    v25 = actionIdentifier2;
    v32 = v24;
    v33 = v25;
    if (v24 != v25)
    {
      LOBYTE(v12) = 0;
      v26 = v24;
      if (v24)
      {
        v27 = v25;
        if (v25)
        {
          v20 = v32;
          v12 = [v32 isEqualToString:v25];

          if (!v12)
          {
            goto LABEL_32;
          }

          goto LABEL_24;
        }
      }

      else
      {
        v27 = v25;
      }

LABEL_31:

      v20 = v32;
LABEL_32:
      v19 = v33;
LABEL_33:

      goto LABEL_34;
    }

LABEL_24:
    parameterIdentifier = [(WFExecutableAppShortcutIdentifier *)self parameterIdentifier];
    parameterIdentifier2 = [(WFExecutableAppShortcutIdentifier *)v6 parameterIdentifier];
    v26 = parameterIdentifier;
    v30 = parameterIdentifier2;
    v27 = v30;
    if (v26 == v30)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v26 && v30)
      {
        LOBYTE(v12) = [v26 isEqual:v30];
      }
    }

    goto LABEL_31;
  }

  LOBYTE(v12) = 1;
LABEL_37:

  return v12;
}

- (WFExecutableAppShortcutIdentifier)initWithBundleIdentifier:(id)identifier basePhraseTemplate:(id)template actionIdentifier:(id)actionIdentifier parameterIdentifier:(id)parameterIdentifier
{
  identifierCopy = identifier;
  templateCopy = template;
  actionIdentifierCopy = actionIdentifier;
  parameterIdentifierCopy = parameterIdentifier;
  v19.receiver = self;
  v19.super_class = WFExecutableAppShortcutIdentifier;
  v15 = [(WFExecutableAppShortcutIdentifier *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bundleIdentifier, identifier);
    objc_storeStrong(&v16->_basePhraseTemplate, template);
    objc_storeStrong(&v16->_actionIdentifier, actionIdentifier);
    objc_storeStrong(&v16->_parameterIdentifier, parameterIdentifier);
    v17 = v16;
  }

  return v16;
}

@end