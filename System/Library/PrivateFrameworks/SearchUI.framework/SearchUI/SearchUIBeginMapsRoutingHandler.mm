@interface SearchUIBeginMapsRoutingHandler
- (id)defaultSymbolName;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUIBeginMapsRoutingHandler

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  v29[2] = *MEMORY[0x1E69E9840];
  commandCopy = command;
  mapsData = [commandCopy mapsData];

  if (mapsData)
  {
    v7 = MEMORY[0x1E696F270];
    mapsData2 = [commandCopy mapsData];
    v9 = [v7 mapItemWithSerializedPlaceData:mapsData2];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E6985C40]);
    location = [commandCopy location];
    [location lat];
    v13 = v12;
    location2 = [commandCopy location];
    [location2 lng];
    mapsData2 = [v10 initWithLatitude:v13 longitude:v15];

    v9 = [objc_alloc(MEMORY[0x1E696F270]) initWithCLLocation:mapsData2];
    name = [commandCopy name];
    [v9 setName:name];
  }

  v17 = [commandCopy directionsMode] - 1;
  if (v17 > 4)
  {
    v18 = MEMORY[0x1E696F078];
  }

  else
  {
    v18 = qword_1E85B3820[v17];
  }

  v19 = *v18;
  if ([commandCopy shouldSearchDirectionsAlongCurrentRoute])
  {
    v20 = *MEMORY[0x1E696F0C0];
    v28[0] = *MEMORY[0x1E696F4C8];
    v28[1] = v20;
    v29[0] = MEMORY[0x1E695E118];
    v29[1] = &unk_1F55DD448;
    v21 = MEMORY[0x1E695DF20];
    v22 = v29;
    v23 = v28;
    v24 = 2;
  }

  else
  {
    v26 = *MEMORY[0x1E696F080];
    v27 = v19;
    v21 = MEMORY[0x1E695DF20];
    v22 = &v27;
    v23 = &v26;
    v24 = 1;
  }

  v25 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:v24];
  [v9 openInMapsWithLaunchOptions:v25 completionHandler:0];
}

- (id)defaultSymbolName
{
  command = [(SearchUICommandHandler *)self command];
  if ([command shouldSearchDirectionsAlongCurrentRoute])
  {
    v3 = @"plus.circle";
  }

  else
  {
    v3 = @"arrow.triangle.turn.up.right.circle";
  }

  v4 = v3;

  return v3;
}

@end