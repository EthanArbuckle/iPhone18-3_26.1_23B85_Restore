@interface NLSessionActivityFactory
+ (id)makeWithConfiguration:(id)a3 uuid:(id)a4 formattingManager:(id)a5 elevationUnit:(id)a6 healthStore:(id)a7 builder:(id)a8 experienceType:(int64_t)a9;
- (NLSessionActivityFactory)init;
@end

@implementation NLSessionActivityFactory

+ (id)makeWithConfiguration:(id)a3 uuid:(id)a4 formattingManager:(id)a5 elevationUnit:(id)a6 healthStore:(id)a7 builder:(id)a8 experienceType:(int64_t)a9
{
  v29 = a9;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = objc_allocWithZone(NLSessionActivity);
  v20 = a3;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v26 = [v19 initWithConfiguration:v20 UUID:isa formattingManager:v21 elevationUnit:v22 healthStore:v23 builder:v24 experienceType:v29];

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