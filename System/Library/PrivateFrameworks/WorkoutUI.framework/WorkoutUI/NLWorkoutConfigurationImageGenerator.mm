@interface NLWorkoutConfigurationImageGenerator
+ (id)createBlastDoorDataSourceFromData:(id)data;
+ (id)createImageFromBlastDoorDataSource:(id)source scale:(double)scale;
+ (id)createImageFromData:(id)data;
- (NLWorkoutConfigurationImageGenerator)init;
@end

@implementation NLWorkoutConfigurationImageGenerator

+ (id)createBlastDoorDataSourceFromData:(id)data
{
  dataCopy = data;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = specialized static WorkoutConfigurationImageGenerator.createBlastDoorDataSource(from:)();
  outlined consume of Data._Representation(v4, v6);

  return v7;
}

+ (id)createImageFromData:(id)data
{
  dataCopy = data;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = specialized static WorkoutConfigurationImageGenerator.createImage(from:)();
  v9 = v8;
  outlined consume of Data._Representation(v4, v6);
  if (v9 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v7, v9);
    v10 = isa;
  }

  return v10;
}

+ (id)createImageFromBlastDoorDataSource:(id)source scale:(double)scale
{
  sourceCopy = source;
  v5 = specialized static WorkoutConfigurationImageGenerator.createImage(from:scale:)(sourceCopy);
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v5, v7);
    v8 = isa;
  }

  return v8;
}

- (NLWorkoutConfigurationImageGenerator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WorkoutConfigurationImageGenerator();
  return [(NLWorkoutConfigurationImageGenerator *)&v3 init];
}

@end