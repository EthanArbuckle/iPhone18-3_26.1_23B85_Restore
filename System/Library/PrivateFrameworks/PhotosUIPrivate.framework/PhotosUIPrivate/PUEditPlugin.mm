@interface PUEditPlugin
+ (BOOL)pu_isMarkupExtensionIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)pu_isMarkupExtension;
- (NSString)title;
- (PUEditPlugin)initWithExtension:(id)extension pluginCategoryType:(unint64_t)type;
- (UIImage)icon;
- (UIImage)smallIcon;
- (unint64_t)hash;
@end

@implementation PUEditPlugin

- (BOOL)pu_isMarkupExtension
{
  extension = [(PUEditPlugin *)self extension];
  identifier = [extension identifier];
  v4 = [PUEditPlugin pu_isMarkupExtensionIdentifier:identifier];

  return v4;
}

- (UIImage)smallIcon
{
  applicationExtensionActivity = [(PUEditPlugin *)self applicationExtensionActivity];
  _activitySettingsImage = [applicationExtensionActivity _activitySettingsImage];

  return _activitySettingsImage;
}

- (UIImage)icon
{
  applicationExtensionActivity = [(PUEditPlugin *)self applicationExtensionActivity];
  _activityImage = [applicationExtensionActivity _activityImage];

  return _activityImage;
}

- (NSString)title
{
  extension = [(PUEditPlugin *)self extension];
  _plugIn = [extension _plugIn];

  localizedContainingName = [_plugIn localizedContainingName];
  if (![(__CFString *)localizedContainingName length])
  {
    localizedName = [_plugIn localizedName];

    localizedContainingName = localizedName;
  }

  if (![(__CFString *)localizedContainingName length])
  {
    localizedShortName = [_plugIn localizedShortName];

    localizedContainingName = localizedShortName;
  }

  if ([(__CFString *)localizedContainingName length])
  {
    v7 = localizedContainingName;
  }

  else
  {
    v7 = &stru_1F2AC6818;
  }

  v8 = v7;

  return &v7->isa;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    extension = [(PUEditPlugin *)self extension];
    extension2 = [equalCopy extension];
    v7 = [extension isEqual:extension2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  extension = [(PUEditPlugin *)self extension];
  v3 = [extension hash];

  return v3;
}

- (PUEditPlugin)initWithExtension:(id)extension pluginCategoryType:(unint64_t)type
{
  extensionCopy = extension;
  v14.receiver = self;
  v14.super_class = PUEditPlugin;
  v8 = [(PUEditPlugin *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_extension, extension);
    v9->_category = type;
    if (type == 1)
    {
      v10 = off_1E7B6E6E0;
      goto LABEL_6;
    }

    if (!type)
    {
      v10 = off_1E7B6E6D8;
LABEL_6:
      v11 = [objc_alloc(*v10) initWithApplicationExtension:extensionCopy];
      applicationExtensionActivity = v9->_applicationExtensionActivity;
      v9->_applicationExtensionActivity = v11;
    }
  }

  return v9;
}

+ (BOOL)pu_isMarkupExtensionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.PaperKit.MarkupPhotoEditingExtension"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [identifierCopy isEqualToString:@"com.apple.MarkupUI.MarkupPhotoExtension"];
  }

  return v4;
}

@end