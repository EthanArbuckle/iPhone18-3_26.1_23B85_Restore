@interface NLSessionActivityFactory
+ (id)makeWithConfiguration:(id)configuration uuid:(id)uuid formattingManager:(id)manager elevationUnit:(id)unit healthStore:(id)store builder:(id)builder experienceType:(int64_t)type;
- (NLSessionActivityFactory)init;
@end

@implementation NLSessionActivityFactory

+ (id)makeWithConfiguration:(id)configuration uuid:(id)uuid formattingManager:(id)manager elevationUnit:(id)unit healthStore:(id)store builder:(id)builder experienceType:(int64_t)type
{
  typeCopy = type;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = objc_allocWithZone(NLSessionActivity);
  configurationCopy = configuration;
  managerCopy = manager;
  unitCopy = unit;
  storeCopy = store;
  builderCopy = builder;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v26 = [v19 initWithConfiguration:configurationCopy UUID:isa formattingManager:managerCopy elevationUnit:unitCopy healthStore:storeCopy builder:builderCopy experienceType:typeCopy];

  (*(v15 + 8))(v18, v14);

  return v26;
}

- (NLSessionActivityFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NLSessionActivityFactory();
  return [(NLSessionActivityFactory *)&v3 init];
}

@end