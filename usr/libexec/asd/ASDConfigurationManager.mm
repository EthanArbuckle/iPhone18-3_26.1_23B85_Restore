@interface ASDConfigurationManager
+ (_TtC3asd23ASDConfigurationManager)shared;
- (NSDictionary)configDictionaryForCoreODI;
- (NSDictionary)payloadWorkflowTTLs;
- (double)cacheV2MaxAge;
- (void)pushInitialCoreODIConfig;
@end

@implementation ASDConfigurationManager

- (NSDictionary)configDictionaryForCoreODI
{
  v2 = self;
  v3 = ASDConfigurationManager.configDictionaryForCoreODI.getter();

  return v3;
}

- (double)cacheV2MaxAge
{
  v2 = self;
  ASDConfigurationManager.cacheV2MaxAge.getter();
  v4 = v3;

  return v4;
}

- (NSDictionary)payloadWorkflowTTLs
{
  v2 = self;
  ASDConfigurationManager.payloadWorkflowTTLs.getter();

  sub_1000591B0(0, &qword_1006CA338, NSNumber_ptr);
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)pushInitialCoreODIConfig
{
  v2 = self;
  ASDConfigurationManager.pushInitialCoreODIConfig()();
}

+ (_TtC3asd23ASDConfigurationManager)shared
{
  v2 = static ASDConfigurationManager.shared.getter();

  return v2;
}

@end