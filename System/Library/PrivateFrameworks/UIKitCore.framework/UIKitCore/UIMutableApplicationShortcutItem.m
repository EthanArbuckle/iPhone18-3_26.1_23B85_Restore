@interface UIMutableApplicationShortcutItem
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIMutableApplicationShortcutItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UIApplicationShortcutItem alloc];
  v5 = [(UIApplicationShortcutItem *)self type];
  v6 = [(UIApplicationShortcutItem *)self localizedTitle];
  v7 = [(UIApplicationShortcutItem *)self localizedSubtitle];
  v8 = [(UIApplicationShortcutItem *)self icon];
  v9 = [(UIApplicationShortcutItem *)self userInfoData];
  v10 = [(UIApplicationShortcutItem *)self activationMode];
  v11 = [(UIApplicationShortcutItem *)self targetContentIdentifier];
  v12 = [(UIApplicationShortcutItem *)v4 _initWithType:v5 localizedTitle:v6 localizedSubtitle:v7 icon:v8 userInfoData:v9 activationMode:v10 targetContentIdentifier:v11];

  return v12;
}

@end