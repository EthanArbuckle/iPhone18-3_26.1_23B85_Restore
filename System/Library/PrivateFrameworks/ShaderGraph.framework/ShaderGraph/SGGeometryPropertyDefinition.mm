@interface SGGeometryPropertyDefinition
+ (id)geometryPropertyWithName:(id)name mappingTo:(id)to;
- (NSString)description;
- (NSString)name;
- (SGGeometryPropertyDefinition)init;
@end

@implementation SGGeometryPropertyDefinition

- (NSString)name
{
  v2 = *(self + OBJC_IVAR___SGGeometryPropertyDefinition_name);
  v3 = *(self + OBJC_IVAR___SGGeometryPropertyDefinition_name + 8);

  v4 = MEMORY[0x266771450](v2, v3);

  return v4;
}

+ (id)geometryPropertyWithName:(id)name mappingTo:(id)to
{
  toCopy = to;
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (toCopy)
    {
LABEL_3:
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      toCopy = v9;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
    if (to)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  swift_getObjCClassMetadata();
  v10 = static SGGeometryPropertyDefinition.create(name:mappingTo:)(v5, v7, v8, toCopy);

  return v10;
}

- (SGGeometryPropertyDefinition)init
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  v3 = SGGeometryPropertyDefinition.description.getter();
  v5 = v4;

  v6 = MEMORY[0x266771450](v3, v5);

  return v6;
}

@end