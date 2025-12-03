@interface SBSUserNotificationImageDefinition
+ (id)definitionWithImageCatalogPath:(id)path catalogImageKey:(id)key;
+ (id)definitionWithImagePath:(id)path;
+ (id)definitionWithSystemImageName:(id)name;
+ (id)definitionWithSystemImageName:(id)name tintColor:(id)color;
+ (id)definitionWithSystemImageName:(id)name tintColorDefinition:(id)definition;
+ (id)definitionWithSystemImageName:(id)name tintColorName:(id)colorName;
@end

@implementation SBSUserNotificationImageDefinition

+ (id)definitionWithImagePath:(id)path
{
  pathCopy = path;
  v4 = [[SBSUserNotificationImageAssetDefinition alloc] initWithImagePath:pathCopy];

  return v4;
}

+ (id)definitionWithImageCatalogPath:(id)path catalogImageKey:(id)key
{
  keyCopy = key;
  pathCopy = path;
  v7 = [[SBSUserNotificationImageAssetDefinition alloc] initWithImageCatalogPath:pathCopy catalogImageKey:keyCopy];

  return v7;
}

+ (id)definitionWithSystemImageName:(id)name
{
  nameCopy = name;
  v4 = [[SBSUserNotificationSystemImageDefinition alloc] initWithSystemImageName:nameCopy];

  return v4;
}

+ (id)definitionWithSystemImageName:(id)name tintColorDefinition:(id)definition
{
  definitionCopy = definition;
  nameCopy = name;
  v7 = [[SBSUserNotificationSystemImageDefinition alloc] initWithSystemImageName:nameCopy tintColor:definitionCopy];

  return v7;
}

+ (id)definitionWithSystemImageName:(id)name tintColor:(id)color
{
  nameCopy = name;
  v7 = [SBSUserNotificationColorDefinition definitionWithColor:color];
  v8 = [self definitionWithSystemImageName:nameCopy tintColorDefinition:v7];

  return v8;
}

+ (id)definitionWithSystemImageName:(id)name tintColorName:(id)colorName
{
  nameCopy = name;
  v7 = [SBSUserNotificationColorDefinition definitionWithColorName:colorName];
  v8 = [self definitionWithSystemImageName:nameCopy tintColorDefinition:v7];

  return v8;
}

@end