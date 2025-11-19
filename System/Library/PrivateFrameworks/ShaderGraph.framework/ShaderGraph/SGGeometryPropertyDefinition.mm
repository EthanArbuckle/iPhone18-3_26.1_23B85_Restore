@interface SGGeometryPropertyDefinition
+ (id)geometryPropertyWithName:(id)a3 mappingTo:(id)a4;
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

+ (id)geometryPropertyWithName:(id)a3 mappingTo:(id)a4
{
  v4 = a4;
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v4)
    {
LABEL_3:
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v9;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  swift_getObjCClassMetadata();
  v10 = static SGGeometryPropertyDefinition.create(name:mappingTo:)(v5, v7, v8, v4);

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
  v2 = self;
  v3 = SGGeometryPropertyDefinition.description.getter();
  v5 = v4;

  v6 = MEMORY[0x266771450](v3, v5);

  return v6;
}

@end