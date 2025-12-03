@interface UIShortcutActivity
- (UIShortcutActivity)initWithApplicationExtension:(id)extension partialShortcutWithName:(id)name identifier:(id)identifier image:(id)image sortValue:(id)value;
- (UIShortcutActivity)initWithApplicationExtension:(id)extension singleUseToken:(id)token photosAssetIdentifiers:(id)identifiers;
- (UIShortcutActivity)initWithPartial:(id)partial;
- (id)_actionImage;
- (id)activityType;
- (void)prepareWithActivityExtensionItemData:(id)data;
@end

@implementation UIShortcutActivity

- (UIShortcutActivity)initWithPartial:(id)partial
{
  partialCopy = partial;
  applicationExtension = [partialCopy applicationExtension];
  v12.receiver = self;
  v12.super_class = UIShortcutActivity;
  v6 = [(UIApplicationExtensionActivity *)&v12 initWithApplicationExtension:applicationExtension];

  if (v6)
  {
    name = [partialCopy name];
    [(UIShortcutActivity *)v6 setName:name];

    identifier = [partialCopy identifier];
    [(UIShortcutActivity *)v6 setIdentifier:identifier];

    iconImage = [partialCopy iconImage];
    [(UIShortcutActivity *)v6 setIconImage:iconImage];

    sortValue = [partialCopy sortValue];
    [(UIShortcutActivity *)v6 setSortValue:sortValue];
  }

  return v6;
}

- (UIShortcutActivity)initWithApplicationExtension:(id)extension partialShortcutWithName:(id)name identifier:(id)identifier image:(id)image sortValue:(id)value
{
  nameCopy = name;
  identifierCopy = identifier;
  imageCopy = image;
  valueCopy = value;
  v19.receiver = self;
  v19.super_class = UIShortcutActivity;
  v16 = [(UIApplicationExtensionActivity *)&v19 initWithApplicationExtension:extension];
  v17 = v16;
  if (v16)
  {
    [(UIShortcutActivity *)v16 setName:nameCopy];
    [(UIShortcutActivity *)v17 setIdentifier:identifierCopy];
    [(UIShortcutActivity *)v17 setIconImage:imageCopy];
    [(UIShortcutActivity *)v17 setSortValue:valueCopy];
  }

  return v17;
}

- (UIShortcutActivity)initWithApplicationExtension:(id)extension singleUseToken:(id)token photosAssetIdentifiers:(id)identifiers
{
  tokenCopy = token;
  identifiersCopy = identifiers;
  v10 = [(UIApplicationExtensionActivity *)self initWithApplicationExtension:extension];
  v11 = v10;
  if (v10)
  {
    [(UIShortcutActivity *)v10 setSingleUseToken:tokenCopy];
    [(UIShortcutActivity *)v11 setPhotosAssetIdentifiers:identifiersCopy];
    v12 = v11;
  }

  return v11;
}

- (id)_actionImage
{
  v3 = objc_opt_class();
  iconImage = [(UIShortcutActivity *)self iconImage];
  contentSizeCategory = [(UIActivity *)self contentSizeCategory];
  v6 = [v3 _actionImageForActionRepresentationImage:iconImage contentSizeCategory:contentSizeCategory];

  return v6;
}

- (id)activityType
{
  v3 = MEMORY[0x1E696AEC0];
  applicationExtension = [(UIApplicationExtensionActivity *)self applicationExtension];
  identifier = [applicationExtension identifier];
  identifier2 = [(UIShortcutActivity *)self identifier];
  v7 = [v3 stringWithFormat:@"%@.%@", identifier, identifier2];

  return v7;
}

- (void)prepareWithActivityExtensionItemData:(id)data
{
  dataCopy = data;
  extensionItems = [dataCopy extensionItems];
  firstObject = [extensionItems firstObject];
  userInfo = [firstObject userInfo];
  v8 = [userInfo mutableCopy];

  singleUseToken = [(UIShortcutActivity *)self singleUseToken];
  [v8 setObject:singleUseToken forKeyedSubscript:@"ActionExtensionWorkflowToken"];

  photosAssetIdentifiers = [(UIShortcutActivity *)self photosAssetIdentifiers];

  if (photosAssetIdentifiers)
  {
    photosAssetIdentifiers2 = [(UIShortcutActivity *)self photosAssetIdentifiers];
    [v8 setObject:photosAssetIdentifiers2 forKeyedSubscript:@"WFPhotosAssetIdentifiers"];
  }

  firstObject2 = [extensionItems firstObject];
  [firstObject2 setUserInfo:v8];

  [dataCopy setExtensionItems:extensionItems];
  v13.receiver = self;
  v13.super_class = UIShortcutActivity;
  [(UIApplicationExtensionActivity *)&v13 prepareWithActivityExtensionItemData:dataCopy];
}

@end