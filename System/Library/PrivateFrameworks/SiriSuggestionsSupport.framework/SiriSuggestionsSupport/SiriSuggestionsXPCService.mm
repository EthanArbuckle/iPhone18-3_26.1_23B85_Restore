@interface SiriSuggestionsXPCService
- (void)disconnectForAppWithAppBundleId:(id)id placementId:(id)placementId completionHandler:(id)handler;
- (void)getSuggestionsForAppWithAppBundleId:(id)id placementId:(id)placementId entities:(id)entities intentsToSuggest:(id)suggest bridge:(id)bridge completionHandler:(id)handler;
- (void)getSuggestionsForIntentsWithIntentQueries:(id)queries completionHandler:(id)handler;
- (void)logWithSuggestions:(id)suggestions deliveryVehicle:(id)vehicle generationId:(id)id completion:(id)completion;
- (void)refreshServiceWithCompletion:(id)completion;
- (void)submitFor:(id)for propertyKey:(id)key propertyValue:(id)value completion:(id)completion;
- (void)warmupWithCompletion:(id)completion;
@end

@implementation SiriSuggestionsXPCService

- (void)getSuggestionsForAppWithAppBundleId:(id)id placementId:(id)placementId entities:(id)entities intentsToSuggest:(id)suggest bridge:(id)bridge completionHandler:(id)handler
{
  v26 = _Block_copy(handler);
  v27 = sub_231606798();
  v13 = v12;
  if (placementId)
  {
    v14 = sub_231606798();
    placementId = v15;
  }

  else
  {
    v14 = 0;
  }

  entitiesCopy = entities;
  swift_unknownObjectRetain();

  suggestCopy = suggest;
  v18 = sub_231605038();
  v20 = v19;

  if (suggestCopy)
  {
    v21 = sub_231605038();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v26;
  sub_2315F6540(v27, v13, v14, placementId, v18, v20, v21, v23, bridge, sub_2315FCA98, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);

  sub_2315C95D0(v21, v23);
  sub_2315B300C(v18, v20);
  swift_unknownObjectRelease();
}

- (void)disconnectForAppWithAppBundleId:(id)id placementId:(id)placementId completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  sub_231606798();
  if (placementId)
  {
    sub_231606798();
  }

  *(swift_allocObject() + 16) = v6;

  sub_2315F8314();
}

- (void)getSuggestionsForIntentsWithIntentQueries:(id)queries completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  queriesCopy = queries;

  v7 = sub_231605038();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  sub_2315F8898(v7, v9, sub_2315FC4AC, v10);

  sub_2315B300C(v7, v9);
}

- (void)refreshServiceWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_2315F9324(sub_2315FCA98, v4);
}

- (void)submitFor:(id)for propertyKey:(id)key propertyValue:(id)value completion:(id)completion
{
  v7 = _Block_copy(completion);
  sub_231606798();
  sub_231606798();
  valueCopy = value;

  v9 = sub_231605038();
  v11 = v10;

  *(swift_allocObject() + 16) = v7;
  sub_2315FA55C();

  sub_2315B300C(v9, v11);
}

- (void)warmupWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  _Block_copy(v3);

  sub_2315FAA9C(v4, v3);
  _Block_release(v3);
}

- (void)logWithSuggestions:(id)suggestions deliveryVehicle:(id)vehicle generationId:(id)id completion:(id)completion
{
  v25 = sub_231605098();
  v10 = *(v25 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v25);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(completion);
  suggestionsCopy = suggestions;
  vehicleCopy = vehicle;
  idCopy = id;

  v18 = sub_231605038();
  v20 = v19;

  v21 = sub_231605038();
  v23 = v22;

  sub_231605078();
  *(swift_allocObject() + 16) = v14;
  sub_2315FABFC();

  sub_2315B300C(v21, v23);
  sub_2315B300C(v18, v20);

  (*(v10 + 8))(v13, v25);
}

@end