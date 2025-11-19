@interface WFExecutableAppShortcut
- (BOOL)isDeprecatedStyle;
- (LNFullyQualifiedActionIdentifier)fullyQualifiedIdentifier;
- (NSString)attributionBundleIdentifier;
- (NSString)base64ArchivedData;
- (NSString)bundleIdentifier;
- (NSString)id;
- (NSString)shortTitle;
- (NSString)shortcutDescription;
- (NSString)triggerPhrase;
- (WFAppShortcutNamedQueryInfo)namedQueryInfo;
- (WFExecutableAppShortcut)initWithAutoShortcut:(id)a3 phrase:(id)a4 alternatePhrases:(id)a5 entityInfo:(id)a6;
- (WFExecutableAppShortcut)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFExecutableAppShortcut

- (BOOL)isDeprecatedStyle
{
  v3 = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
  v4 = [v3 localizedShortTitle];
  if ([v4 length])
  {
    v5 = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
    v6 = [v5 systemImageName];
    v7 = [v6 length];

    if (!v7)
    {
      return 1;
    }

    v8 = [(WFExecutableAppShortcut *)self phrase];
    v9 = [v8 parameterIdentifier];

    if (!v9)
    {
      return 0;
    }

    v3 = [(WFExecutableAppShortcut *)self entityInfo];
    v10 = v3 == 0;
  }

  else
  {

    v10 = 1;
  }

  return v10;
}

- (NSString)id
{
  v2 = [(WFExecutableAppShortcut *)self phrase];
  v3 = [v2 signature];

  return v3;
}

- (WFExecutableAppShortcut)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"underlyingAutoShortcut"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phrase"];
  v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"alternatePhrases"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entityInfo"];

  v9 = [(WFExecutableAppShortcut *)self initWithAutoShortcut:v5 phrase:v6 alternatePhrases:v7 entityInfo:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
  [v4 encodeObject:v5 forKey:@"underlyingAutoShortcut"];

  v6 = [(WFExecutableAppShortcut *)self phrase];
  [v4 encodeObject:v6 forKey:@"phrase"];

  v7 = [(WFExecutableAppShortcut *)self alternatePhrases];
  [v4 encodeObject:v7 forKey:@"alternatePhrases"];

  v8 = [(WFExecutableAppShortcut *)self entityInfo];
  [v4 encodeObject:v8 forKey:@"entityInfo"];
}

- (NSString)base64ArchivedData
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v8];
  v3 = v8;
  if (v2)
  {
    v4 = [v2 base64EncodedStringWithOptions:0];
  }

  else
  {
    v5 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[WFExecutableAppShortcut base64ArchivedData]";
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_ERROR, "%s Failed to archive auto shortcut into data with error: %@", buf, 0x16u);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (WFAppShortcutNamedQueryInfo)namedQueryInfo
{
  v3 = [(WFExecutableAppShortcut *)self phrase];
  v4 = [v3 optionsCollectionTitle];
  if (!v4)
  {
    v12 = 0;
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [(WFExecutableAppShortcut *)self phrase];
  v7 = [v6 optionsCollectionSystemImageName];

  if (v7)
  {
    v8 = [WFAppShortcutNamedQueryInfo alloc];
    v3 = [(WFExecutableAppShortcut *)self phrase];
    v9 = [v3 optionsCollectionTitle];
    v10 = [(WFExecutableAppShortcut *)self phrase];
    v11 = [v10 optionsCollectionSystemImageName];
    v12 = [(WFAppShortcutNamedQueryInfo *)v8 initWithName:v9 symbolName:v11];

LABEL_5:
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (NSString)shortcutDescription
{
  v3 = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
  v4 = [v3 localizedAutoShortcutDescription];
  if (v4)
  {
    v5 = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
    v6 = [v5 bundleIdentifier];
  }

  else
  {
    v6 = &stru_1F28FBBB8;
  }

  return v6;
}

- (LNFullyQualifiedActionIdentifier)fullyQualifiedIdentifier
{
  v3 = objc_alloc(MEMORY[0x1E69AC858]);
  v4 = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
  v5 = [v4 actionIdentifier];
  v6 = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
  v7 = [v6 bundleIdentifier];
  v8 = [v3 initWithActionIdentifier:v5 bundleIdentifier:v7];

  return v8;
}

- (NSString)shortTitle
{
  v3 = [(WFExecutableAppShortcut *)self entityInfo];

  if (v3)
  {
    v4 = [(WFExecutableAppShortcut *)self entityInfo];
    v5 = [v4 name];
  }

  else
  {
    v4 = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
    v6 = [v4 localizedShortTitle];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(WFExecutableAppShortcut *)self triggerPhrase];
    }

    v5 = v8;
  }

  return v5;
}

- (NSString)triggerPhrase
{
  v2 = [(WFExecutableAppShortcut *)self phrase];
  v3 = [v2 localizedPhrase];

  return v3;
}

- (NSString)attributionBundleIdentifier
{
  v3 = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
  v4 = [v3 attributionBundleIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
    v6 = [v7 bundleIdentifier];
  }

  return v6;
}

- (NSString)bundleIdentifier
{
  v2 = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (WFExecutableAppShortcut)initWithAutoShortcut:(id)a3 phrase:(id)a4 alternatePhrases:(id)a5 entityInfo:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = WFExecutableAppShortcut;
  v15 = [(WFExecutableAppShortcut *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_underlyingAutoShortcut, a3);
    objc_storeStrong(&v16->_phrase, a4);
    objc_storeStrong(&v16->_alternatePhrases, a5);
    objc_storeStrong(&v16->_entityInfo, a6);
    v17 = [v11 shortcutTileColor];
    if ((v17 - 1) >= 0xE)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    v16->_chicletColor = v18;
    v19 = v16;
  }

  return v16;
}

@end