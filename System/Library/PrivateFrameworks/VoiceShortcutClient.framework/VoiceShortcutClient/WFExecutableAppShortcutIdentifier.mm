@interface WFExecutableAppShortcutIdentifier
- (BOOL)isEqual:(id)a3;
- (WFExecutableAppShortcutIdentifier)initWithBundleIdentifier:(id)a3 basePhraseTemplate:(id)a4 actionIdentifier:(id)a5 parameterIdentifier:(id)a6;
- (WFExecutableAppShortcutIdentifier)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFExecutableAppShortcutIdentifier

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFExecutableAppShortcutIdentifier *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [(WFExecutableAppShortcutIdentifier *)self basePhraseTemplate];
  [v4 encodeObject:v6 forKey:@"basePhraseTemplate"];

  v7 = [(WFExecutableAppShortcutIdentifier *)self actionIdentifier];
  [v4 encodeObject:v7 forKey:@"actionIdentifier"];

  v8 = [(WFExecutableAppShortcutIdentifier *)self parameterIdentifier];
  [v4 encodeObject:v8 forKey:@"parameterIdentifier"];
}

- (WFExecutableAppShortcutIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"bundleIdentifier"];

  v7 = objc_opt_self();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"basePhraseTemplate"];

  v9 = objc_opt_self();
  v10 = [v4 decodeObjectOfClass:v9 forKey:@"actionIdentifier"];

  v11 = objc_opt_self();
  v12 = [v4 decodeObjectOfClass:v11 forKey:@"parameterIdentifier"];

  v13 = [(WFExecutableAppShortcutIdentifier *)self initWithBundleIdentifier:v6 basePhraseTemplate:v8 actionIdentifier:v10 parameterIdentifier:v12];
  return v13;
}

- (unint64_t)hash
{
  v3 = [(WFExecutableAppShortcutIdentifier *)self bundleIdentifier];
  v4 = [v3 hash];
  v5 = [(WFExecutableAppShortcutIdentifier *)self basePhraseTemplate];
  v6 = [v5 hash] ^ v4;
  v7 = [(WFExecutableAppShortcutIdentifier *)self actionIdentifier];
  v8 = [v7 hash];
  v9 = [(WFExecutableAppShortcutIdentifier *)self parameterIdentifier];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_36:

      goto LABEL_37;
    }

    v7 = [(WFExecutableAppShortcutIdentifier *)self bundleIdentifier];
    v8 = [(WFExecutableAppShortcutIdentifier *)v6 bundleIdentifier];
    v9 = v7;
    v10 = v8;
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

    v16 = [(WFExecutableAppShortcutIdentifier *)self basePhraseTemplate];
    v17 = [(WFExecutableAppShortcutIdentifier *)v6 basePhraseTemplate];
    v14 = v16;
    v18 = v17;
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

    v22 = [(WFExecutableAppShortcutIdentifier *)self actionIdentifier];
    v23 = [(WFExecutableAppShortcutIdentifier *)v6 actionIdentifier];
    v24 = v22;
    v25 = v23;
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
    v28 = [(WFExecutableAppShortcutIdentifier *)self parameterIdentifier];
    v29 = [(WFExecutableAppShortcutIdentifier *)v6 parameterIdentifier];
    v26 = v28;
    v30 = v29;
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

- (WFExecutableAppShortcutIdentifier)initWithBundleIdentifier:(id)a3 basePhraseTemplate:(id)a4 actionIdentifier:(id)a5 parameterIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = WFExecutableAppShortcutIdentifier;
  v15 = [(WFExecutableAppShortcutIdentifier *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bundleIdentifier, a3);
    objc_storeStrong(&v16->_basePhraseTemplate, a4);
    objc_storeStrong(&v16->_actionIdentifier, a5);
    objc_storeStrong(&v16->_parameterIdentifier, a6);
    v17 = v16;
  }

  return v16;
}

@end