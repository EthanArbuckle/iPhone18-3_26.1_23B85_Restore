@interface SGREMaterialFunctionConstantValues
- (NSMutableDictionary)scalarFunctionConstants;
- (NSMutableDictionary)vectorFunctionConstants;
- (SGREMaterialFunctionConstantValues)init;
- (SGREMaterialFunctionConstantValues)initWithScalarFunctionConstants:(id)a3 vectorFunctionConstants:(id)a4;
- (void)setScalarFunctionConstants:(id)a3;
- (void)setVectorFunctionConstants:(id)a3;
@end

@implementation SGREMaterialFunctionConstantValues

- (NSMutableDictionary)scalarFunctionConstants
{
  v3 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setScalarFunctionConstants:(id)a3
{
  v5 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (NSMutableDictionary)vectorFunctionConstants
{
  v3 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setVectorFunctionConstants:(id)a3
{
  v5 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (SGREMaterialFunctionConstantValues)initWithScalarFunctionConstants:(id)a3 vectorFunctionConstants:(id)a4
{
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  return SGREMaterialFunctionConstantValues.init(scalarFunctionConstants:vectorFunctionConstants:)(v4, v5);
}

- (SGREMaterialFunctionConstantValues)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSMutableDictionary, 0x277CBEB38);
  *(&self->super.isa + v4) = NSDictionary.init(dictionaryLiteral:)();
  v5 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
  *(&self->super.isa + v5) = NSDictionary.init(dictionaryLiteral:)();
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(SGREMaterialFunctionConstantValues *)&v7 init];
}

@end