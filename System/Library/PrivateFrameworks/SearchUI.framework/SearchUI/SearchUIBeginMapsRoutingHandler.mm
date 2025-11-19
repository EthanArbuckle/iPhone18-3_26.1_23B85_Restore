@interface SearchUIBeginMapsRoutingHandler
- (id)defaultSymbolName;
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUIBeginMapsRoutingHandler

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v29[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 mapsData];

  if (v6)
  {
    v7 = MEMORY[0x1E696F270];
    v8 = [v5 mapsData];
    v9 = [v7 mapItemWithSerializedPlaceData:v8];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E6985C40]);
    v11 = [v5 location];
    [v11 lat];
    v13 = v12;
    v14 = [v5 location];
    [v14 lng];
    v8 = [v10 initWithLatitude:v13 longitude:v15];

    v9 = [objc_alloc(MEMORY[0x1E696F270]) initWithCLLocation:v8];
    v16 = [v5 name];
    [v9 setName:v16];
  }

  v17 = [v5 directionsMode] - 1;
  if (v17 > 4)
  {
    v18 = MEMORY[0x1E696F078];
  }

  else
  {
    v18 = qword_1E85B3820[v17];
  }

  v19 = *v18;
  if ([v5 shouldSearchDirectionsAlongCurrentRoute])
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
  v2 = [(SearchUICommandHandler *)self command];
  if ([v2 shouldSearchDirectionsAlongCurrentRoute])
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