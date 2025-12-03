@interface WFToolKitContentPropertyPossibleValuesDefinition
- (Class)contentItemClass;
- (NSString)propertyName;
- (void)setContentItemClass:(Class)class;
- (void)setPropertyName:(id)name;
@end

@implementation WFToolKitContentPropertyPossibleValuesDefinition

- (Class)contentItemClass
{
  result = ToolKitHelper.ContentPropertyPossibleValuesDefinition.contentItemClass.getter();
  if (result)
  {

    return swift_getObjCClassFromMetadata();
  }

  return result;
}

- (void)setContentItemClass:(Class)class
{
  if (class)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = 0;
  }

  ToolKitHelper.ContentPropertyPossibleValuesDefinition.contentItemClass.setter(ObjCClassMetadata);
}

- (NSString)propertyName
{
  ToolKitHelper.ContentPropertyPossibleValuesDefinition.propertyName.getter();
  v2 = sub_10008A238();

  return v2;
}

- (void)setPropertyName:(id)name
{
  sub_10008A268();
  selfCopy = self;
  ToolKitHelper.ContentPropertyPossibleValuesDefinition.propertyName.setter();
}

@end