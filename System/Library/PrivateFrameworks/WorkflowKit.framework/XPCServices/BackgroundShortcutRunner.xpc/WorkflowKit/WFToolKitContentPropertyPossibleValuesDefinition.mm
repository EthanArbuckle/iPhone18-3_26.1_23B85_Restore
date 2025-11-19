@interface WFToolKitContentPropertyPossibleValuesDefinition
- (Class)contentItemClass;
- (NSString)propertyName;
- (void)setContentItemClass:(Class)a3;
- (void)setPropertyName:(id)a3;
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

- (void)setContentItemClass:(Class)a3
{
  if (a3)
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

- (void)setPropertyName:(id)a3
{
  sub_10008A268();
  v4 = self;
  ToolKitHelper.ContentPropertyPossibleValuesDefinition.propertyName.setter();
}

@end