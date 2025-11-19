@interface SBSUserNotificationImageDefinition
+ (id)definitionWithImageCatalogPath:(id)a3 catalogImageKey:(id)a4;
+ (id)definitionWithImagePath:(id)a3;
+ (id)definitionWithSystemImageName:(id)a3;
+ (id)definitionWithSystemImageName:(id)a3 tintColor:(id)a4;
+ (id)definitionWithSystemImageName:(id)a3 tintColorDefinition:(id)a4;
+ (id)definitionWithSystemImageName:(id)a3 tintColorName:(id)a4;
@end

@implementation SBSUserNotificationImageDefinition

+ (id)definitionWithImagePath:(id)a3
{
  v3 = a3;
  v4 = [[SBSUserNotificationImageAssetDefinition alloc] initWithImagePath:v3];

  return v4;
}

+ (id)definitionWithImageCatalogPath:(id)a3 catalogImageKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SBSUserNotificationImageAssetDefinition alloc] initWithImageCatalogPath:v6 catalogImageKey:v5];

  return v7;
}

+ (id)definitionWithSystemImageName:(id)a3
{
  v3 = a3;
  v4 = [[SBSUserNotificationSystemImageDefinition alloc] initWithSystemImageName:v3];

  return v4;
}

+ (id)definitionWithSystemImageName:(id)a3 tintColorDefinition:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SBSUserNotificationSystemImageDefinition alloc] initWithSystemImageName:v6 tintColor:v5];

  return v7;
}

+ (id)definitionWithSystemImageName:(id)a3 tintColor:(id)a4
{
  v6 = a3;
  v7 = [SBSUserNotificationColorDefinition definitionWithColor:a4];
  v8 = [a1 definitionWithSystemImageName:v6 tintColorDefinition:v7];

  return v8;
}

+ (id)definitionWithSystemImageName:(id)a3 tintColorName:(id)a4
{
  v6 = a3;
  v7 = [SBSUserNotificationColorDefinition definitionWithColorName:a4];
  v8 = [a1 definitionWithSystemImageName:v6 tintColorDefinition:v7];

  return v8;
}

@end