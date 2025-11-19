@interface PUEditPlugin
+ (BOOL)pu_isMarkupExtensionIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)pu_isMarkupExtension;
- (NSString)title;
- (PUEditPlugin)initWithExtension:(id)a3 pluginCategoryType:(unint64_t)a4;
- (UIImage)icon;
- (UIImage)smallIcon;
- (unint64_t)hash;
@end

@implementation PUEditPlugin

- (BOOL)pu_isMarkupExtension
{
  v2 = [(PUEditPlugin *)self extension];
  v3 = [v2 identifier];
  v4 = [PUEditPlugin pu_isMarkupExtensionIdentifier:v3];

  return v4;
}

- (UIImage)smallIcon
{
  v2 = [(PUEditPlugin *)self applicationExtensionActivity];
  v3 = [v2 _activitySettingsImage];

  return v3;
}

- (UIImage)icon
{
  v2 = [(PUEditPlugin *)self applicationExtensionActivity];
  v3 = [v2 _activityImage];

  return v3;
}

- (NSString)title
{
  v2 = [(PUEditPlugin *)self extension];
  v3 = [v2 _plugIn];

  v4 = [v3 localizedContainingName];
  if (![(__CFString *)v4 length])
  {
    v5 = [v3 localizedName];

    v4 = v5;
  }

  if (![(__CFString *)v4 length])
  {
    v6 = [v3 localizedShortName];

    v4 = v6;
  }

  if ([(__CFString *)v4 length])
  {
    v7 = v4;
  }

  else
  {
    v7 = &stru_1F2AC6818;
  }

  v8 = v7;

  return &v7->isa;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PUEditPlugin *)self extension];
    v6 = [v4 extension];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(PUEditPlugin *)self extension];
  v3 = [v2 hash];

  return v3;
}

- (PUEditPlugin)initWithExtension:(id)a3 pluginCategoryType:(unint64_t)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = PUEditPlugin;
  v8 = [(PUEditPlugin *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_extension, a3);
    v9->_category = a4;
    if (a4 == 1)
    {
      v10 = off_1E7B6E6E0;
      goto LABEL_6;
    }

    if (!a4)
    {
      v10 = off_1E7B6E6D8;
LABEL_6:
      v11 = [objc_alloc(*v10) initWithApplicationExtension:v7];
      applicationExtensionActivity = v9->_applicationExtensionActivity;
      v9->_applicationExtensionActivity = v11;
    }
  }

  return v9;
}

+ (BOOL)pu_isMarkupExtensionIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.PaperKit.MarkupPhotoEditingExtension"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.MarkupUI.MarkupPhotoExtension"];
  }

  return v4;
}

@end