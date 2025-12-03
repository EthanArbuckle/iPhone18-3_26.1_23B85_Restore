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
- (WFExecutableAppShortcut)initWithAutoShortcut:(id)shortcut phrase:(id)phrase alternatePhrases:(id)phrases entityInfo:(id)info;
- (WFExecutableAppShortcut)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFExecutableAppShortcut

- (BOOL)isDeprecatedStyle
{
  underlyingAutoShortcut = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
  localizedShortTitle = [underlyingAutoShortcut localizedShortTitle];
  if ([localizedShortTitle length])
  {
    underlyingAutoShortcut2 = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
    systemImageName = [underlyingAutoShortcut2 systemImageName];
    v7 = [systemImageName length];

    if (!v7)
    {
      return 1;
    }

    phrase = [(WFExecutableAppShortcut *)self phrase];
    parameterIdentifier = [phrase parameterIdentifier];

    if (!parameterIdentifier)
    {
      return 0;
    }

    underlyingAutoShortcut = [(WFExecutableAppShortcut *)self entityInfo];
    v10 = underlyingAutoShortcut == 0;
  }

  else
  {

    v10 = 1;
  }

  return v10;
}

- (NSString)id
{
  phrase = [(WFExecutableAppShortcut *)self phrase];
  signature = [phrase signature];

  return signature;
}

- (WFExecutableAppShortcut)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"underlyingAutoShortcut"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phrase"];
  v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"alternatePhrases"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityInfo"];

  v9 = [(WFExecutableAppShortcut *)self initWithAutoShortcut:v5 phrase:v6 alternatePhrases:v7 entityInfo:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  underlyingAutoShortcut = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
  [coderCopy encodeObject:underlyingAutoShortcut forKey:@"underlyingAutoShortcut"];

  phrase = [(WFExecutableAppShortcut *)self phrase];
  [coderCopy encodeObject:phrase forKey:@"phrase"];

  alternatePhrases = [(WFExecutableAppShortcut *)self alternatePhrases];
  [coderCopy encodeObject:alternatePhrases forKey:@"alternatePhrases"];

  entityInfo = [(WFExecutableAppShortcut *)self entityInfo];
  [coderCopy encodeObject:entityInfo forKey:@"entityInfo"];
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
  phrase = [(WFExecutableAppShortcut *)self phrase];
  optionsCollectionTitle = [phrase optionsCollectionTitle];
  if (!optionsCollectionTitle)
  {
    v12 = 0;
    goto LABEL_5;
  }

  v5 = optionsCollectionTitle;
  phrase2 = [(WFExecutableAppShortcut *)self phrase];
  optionsCollectionSystemImageName = [phrase2 optionsCollectionSystemImageName];

  if (optionsCollectionSystemImageName)
  {
    v8 = [WFAppShortcutNamedQueryInfo alloc];
    phrase = [(WFExecutableAppShortcut *)self phrase];
    optionsCollectionTitle2 = [phrase optionsCollectionTitle];
    phrase3 = [(WFExecutableAppShortcut *)self phrase];
    optionsCollectionSystemImageName2 = [phrase3 optionsCollectionSystemImageName];
    v12 = [(WFAppShortcutNamedQueryInfo *)v8 initWithName:optionsCollectionTitle2 symbolName:optionsCollectionSystemImageName2];

LABEL_5:
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (NSString)shortcutDescription
{
  underlyingAutoShortcut = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
  localizedAutoShortcutDescription = [underlyingAutoShortcut localizedAutoShortcutDescription];
  if (localizedAutoShortcutDescription)
  {
    underlyingAutoShortcut2 = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
    bundleIdentifier = [underlyingAutoShortcut2 bundleIdentifier];
  }

  else
  {
    bundleIdentifier = &stru_1F28FBBB8;
  }

  return bundleIdentifier;
}

- (LNFullyQualifiedActionIdentifier)fullyQualifiedIdentifier
{
  v3 = objc_alloc(MEMORY[0x1E69AC858]);
  underlyingAutoShortcut = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
  actionIdentifier = [underlyingAutoShortcut actionIdentifier];
  underlyingAutoShortcut2 = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
  bundleIdentifier = [underlyingAutoShortcut2 bundleIdentifier];
  v8 = [v3 initWithActionIdentifier:actionIdentifier bundleIdentifier:bundleIdentifier];

  return v8;
}

- (NSString)shortTitle
{
  entityInfo = [(WFExecutableAppShortcut *)self entityInfo];

  if (entityInfo)
  {
    entityInfo2 = [(WFExecutableAppShortcut *)self entityInfo];
    name = [entityInfo2 name];
  }

  else
  {
    entityInfo2 = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
    localizedShortTitle = [entityInfo2 localizedShortTitle];
    v7 = localizedShortTitle;
    if (localizedShortTitle)
    {
      triggerPhrase = localizedShortTitle;
    }

    else
    {
      triggerPhrase = [(WFExecutableAppShortcut *)self triggerPhrase];
    }

    name = triggerPhrase;
  }

  return name;
}

- (NSString)triggerPhrase
{
  phrase = [(WFExecutableAppShortcut *)self phrase];
  localizedPhrase = [phrase localizedPhrase];

  return localizedPhrase;
}

- (NSString)attributionBundleIdentifier
{
  underlyingAutoShortcut = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
  attributionBundleIdentifier = [underlyingAutoShortcut attributionBundleIdentifier];
  v5 = attributionBundleIdentifier;
  if (attributionBundleIdentifier)
  {
    bundleIdentifier = attributionBundleIdentifier;
  }

  else
  {
    underlyingAutoShortcut2 = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
    bundleIdentifier = [underlyingAutoShortcut2 bundleIdentifier];
  }

  return bundleIdentifier;
}

- (NSString)bundleIdentifier
{
  underlyingAutoShortcut = [(WFExecutableAppShortcut *)self underlyingAutoShortcut];
  bundleIdentifier = [underlyingAutoShortcut bundleIdentifier];

  return bundleIdentifier;
}

- (WFExecutableAppShortcut)initWithAutoShortcut:(id)shortcut phrase:(id)phrase alternatePhrases:(id)phrases entityInfo:(id)info
{
  shortcutCopy = shortcut;
  phraseCopy = phrase;
  phrasesCopy = phrases;
  infoCopy = info;
  v21.receiver = self;
  v21.super_class = WFExecutableAppShortcut;
  v15 = [(WFExecutableAppShortcut *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_underlyingAutoShortcut, shortcut);
    objc_storeStrong(&v16->_phrase, phrase);
    objc_storeStrong(&v16->_alternatePhrases, phrases);
    objc_storeStrong(&v16->_entityInfo, info);
    shortcutTileColor = [shortcutCopy shortcutTileColor];
    if ((shortcutTileColor - 1) >= 0xE)
    {
      v18 = 0;
    }

    else
    {
      v18 = shortcutTileColor;
    }

    v16->_chicletColor = v18;
    v19 = v16;
  }

  return v16;
}

@end