@interface SiriSuggestionsXPCService
- (void)disconnectForAppWithAppBundleId:(id)a3 placementId:(id)a4 completionHandler:(id)a5;
- (void)getSuggestionsForAppWithAppBundleId:(id)a3 placementId:(id)a4 entities:(id)a5 intentsToSuggest:(id)a6 bridge:(id)a7 completionHandler:(id)a8;
- (void)getSuggestionsForIntentsWithIntentQueries:(id)a3 completionHandler:(id)a4;
- (void)logWithSuggestions:(id)a3 deliveryVehicle:(id)a4 generationId:(id)a5 completion:(id)a6;
- (void)refreshServiceWithCompletion:(id)a3;
- (void)submitFor:(id)a3 propertyKey:(id)a4 propertyValue:(id)a5 completion:(id)a6;
- (void)warmupWithCompletion:(id)a3;
@end

@implementation SiriSuggestionsXPCService

- (void)getSuggestionsForAppWithAppBundleId:(id)a3 placementId:(id)a4 entities:(id)a5 intentsToSuggest:(id)a6 bridge:(id)a7 completionHandler:(id)a8
{
  v26 = _Block_copy(a8);
  v27 = sub_231606798();
  v13 = v12;
  if (a4)
  {
    v14 = sub_231606798();
    a4 = v15;
  }

  else
  {
    v14 = 0;
  }

  v16 = a5;
  swift_unknownObjectRetain();

  v17 = a6;
  v18 = sub_231605038();
  v20 = v19;

  if (v17)
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
  sub_2315F6540(v27, v13, v14, a4, v18, v20, v21, v23, a7, sub_2315FCA98, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);

  sub_2315C95D0(v21, v23);
  sub_2315B300C(v18, v20);
  swift_unknownObjectRelease();
}

- (void)disconnectForAppWithAppBundleId:(id)a3 placementId:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  sub_231606798();
  if (a4)
  {
    sub_231606798();
  }

  *(swift_allocObject() + 16) = v6;

  sub_2315F8314();
}

- (void)getSuggestionsForIntentsWithIntentQueries:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = a3;

  v7 = sub_231605038();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  sub_2315F8898(v7, v9, sub_2315FC4AC, v10);

  sub_2315B300C(v7, v9);
}

- (void)refreshServiceWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_2315F9324(sub_2315FCA98, v4);
}

- (void)submitFor:(id)a3 propertyKey:(id)a4 propertyValue:(id)a5 completion:(id)a6
{
  v7 = _Block_copy(a6);
  sub_231606798();
  sub_231606798();
  v8 = a5;

  v9 = sub_231605038();
  v11 = v10;

  *(swift_allocObject() + 16) = v7;
  sub_2315FA55C();

  sub_2315B300C(v9, v11);
}

- (void)warmupWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  _Block_copy(v3);

  sub_2315FAA9C(v4, v3);
  _Block_release(v3);
}

- (void)logWithSuggestions:(id)a3 deliveryVehicle:(id)a4 generationId:(id)a5 completion:(id)a6
{
  v25 = sub_231605098();
  v10 = *(v25 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v25);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a6);
  v15 = a3;
  v16 = a4;
  v17 = a5;

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