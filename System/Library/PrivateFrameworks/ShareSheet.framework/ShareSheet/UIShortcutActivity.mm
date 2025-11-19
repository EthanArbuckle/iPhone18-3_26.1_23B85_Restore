@interface UIShortcutActivity
- (UIShortcutActivity)initWithApplicationExtension:(id)a3 partialShortcutWithName:(id)a4 identifier:(id)a5 image:(id)a6 sortValue:(id)a7;
- (UIShortcutActivity)initWithApplicationExtension:(id)a3 singleUseToken:(id)a4 photosAssetIdentifiers:(id)a5;
- (UIShortcutActivity)initWithPartial:(id)a3;
- (id)_actionImage;
- (id)activityType;
- (void)prepareWithActivityExtensionItemData:(id)a3;
@end

@implementation UIShortcutActivity

- (UIShortcutActivity)initWithPartial:(id)a3
{
  v4 = a3;
  v5 = [v4 applicationExtension];
  v12.receiver = self;
  v12.super_class = UIShortcutActivity;
  v6 = [(UIApplicationExtensionActivity *)&v12 initWithApplicationExtension:v5];

  if (v6)
  {
    v7 = [v4 name];
    [(UIShortcutActivity *)v6 setName:v7];

    v8 = [v4 identifier];
    [(UIShortcutActivity *)v6 setIdentifier:v8];

    v9 = [v4 iconImage];
    [(UIShortcutActivity *)v6 setIconImage:v9];

    v10 = [v4 sortValue];
    [(UIShortcutActivity *)v6 setSortValue:v10];
  }

  return v6;
}

- (UIShortcutActivity)initWithApplicationExtension:(id)a3 partialShortcutWithName:(id)a4 identifier:(id)a5 image:(id)a6 sortValue:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = UIShortcutActivity;
  v16 = [(UIApplicationExtensionActivity *)&v19 initWithApplicationExtension:a3];
  v17 = v16;
  if (v16)
  {
    [(UIShortcutActivity *)v16 setName:v12];
    [(UIShortcutActivity *)v17 setIdentifier:v13];
    [(UIShortcutActivity *)v17 setIconImage:v14];
    [(UIShortcutActivity *)v17 setSortValue:v15];
  }

  return v17;
}

- (UIShortcutActivity)initWithApplicationExtension:(id)a3 singleUseToken:(id)a4 photosAssetIdentifiers:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(UIApplicationExtensionActivity *)self initWithApplicationExtension:a3];
  v11 = v10;
  if (v10)
  {
    [(UIShortcutActivity *)v10 setSingleUseToken:v8];
    [(UIShortcutActivity *)v11 setPhotosAssetIdentifiers:v9];
    v12 = v11;
  }

  return v11;
}

- (id)_actionImage
{
  v3 = objc_opt_class();
  v4 = [(UIShortcutActivity *)self iconImage];
  v5 = [(UIActivity *)self contentSizeCategory];
  v6 = [v3 _actionImageForActionRepresentationImage:v4 contentSizeCategory:v5];

  return v6;
}

- (id)activityType
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(UIApplicationExtensionActivity *)self applicationExtension];
  v5 = [v4 identifier];
  v6 = [(UIShortcutActivity *)self identifier];
  v7 = [v3 stringWithFormat:@"%@.%@", v5, v6];

  return v7;
}

- (void)prepareWithActivityExtensionItemData:(id)a3
{
  v4 = a3;
  v5 = [v4 extensionItems];
  v6 = [v5 firstObject];
  v7 = [v6 userInfo];
  v8 = [v7 mutableCopy];

  v9 = [(UIShortcutActivity *)self singleUseToken];
  [v8 setObject:v9 forKeyedSubscript:@"ActionExtensionWorkflowToken"];

  v10 = [(UIShortcutActivity *)self photosAssetIdentifiers];

  if (v10)
  {
    v11 = [(UIShortcutActivity *)self photosAssetIdentifiers];
    [v8 setObject:v11 forKeyedSubscript:@"WFPhotosAssetIdentifiers"];
  }

  v12 = [v5 firstObject];
  [v12 setUserInfo:v8];

  [v4 setExtensionItems:v5];
  v13.receiver = self;
  v13.super_class = UIShortcutActivity;
  [(UIApplicationExtensionActivity *)&v13 prepareWithActivityExtensionItemData:v4];
}

@end