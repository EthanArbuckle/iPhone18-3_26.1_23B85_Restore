@interface SGMaterialConfiguration
- (BOOL)isEqual:(id)a3;
- (SGMaterialConfiguration)init;
@end

@implementation SGMaterialConfiguration

- (SGMaterialConfiguration)init
{
  v2 = MEMORY[0x277D84F90];
  *(self + OBJC_IVAR___SGMaterialConfiguration_customGeometryProperties) = MEMORY[0x277D84F90];
  *(self + OBJC_IVAR___SGMaterialConfiguration_functionConstantInputs) = v2;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SGMaterialConfiguration();
  return [(SGMaterialConfiguration *)&v4 init];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = SGMaterialConfiguration.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

@end