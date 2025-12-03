@interface UIMutableApplicationShortcutItem
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIMutableApplicationShortcutItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UIApplicationShortcutItem alloc];
  type = [(UIApplicationShortcutItem *)self type];
  localizedTitle = [(UIApplicationShortcutItem *)self localizedTitle];
  localizedSubtitle = [(UIApplicationShortcutItem *)self localizedSubtitle];
  icon = [(UIApplicationShortcutItem *)self icon];
  userInfoData = [(UIApplicationShortcutItem *)self userInfoData];
  activationMode = [(UIApplicationShortcutItem *)self activationMode];
  targetContentIdentifier = [(UIApplicationShortcutItem *)self targetContentIdentifier];
  v12 = [(UIApplicationShortcutItem *)v4 _initWithType:type localizedTitle:localizedTitle localizedSubtitle:localizedSubtitle icon:icon userInfoData:userInfoData activationMode:activationMode targetContentIdentifier:targetContentIdentifier];

  return v12;
}

@end