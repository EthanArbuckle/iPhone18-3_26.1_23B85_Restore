@interface SnippetSceneSpecification
- (Class)clientSettingsClass;
- (Class)settingsClass;
- (Class)uiSceneMinimumClass;
- (NSString)uiSceneSessionRole;
@end

@implementation SnippetSceneSpecification

- (Class)settingsClass
{
  sub_267532AA4();

  return swift_getObjCClassFromMetadata();
}

- (Class)clientSettingsClass
{
  sub_267532AD4();

  return swift_getObjCClassFromMetadata();
}

- (NSString)uiSceneSessionRole
{
  selfCopy = self;
  v3 = sub_267523B14();

  return v3;
}

- (Class)uiSceneMinimumClass
{
  result = sub_267532B54();
  if (result)
  {

    return swift_getObjCClassFromMetadata();
  }

  return result;
}

@end