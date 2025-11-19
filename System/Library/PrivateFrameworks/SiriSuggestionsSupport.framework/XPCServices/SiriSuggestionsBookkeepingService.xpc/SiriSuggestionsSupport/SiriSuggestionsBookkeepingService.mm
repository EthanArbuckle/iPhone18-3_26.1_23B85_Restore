@interface SiriSuggestionsBookkeepingService
- (void)buildAutoCompleteIndexOnStartUpEvent:(BOOL)a3 with:(id)a4;
- (void)getAccountDetailsWith:(id)a3;
- (void)logEngagementFor:(id)a3 with:(id)a4 invocationType:(id)a5 featureRequirements:(id)a6 with:(id)a7;
- (void)logFrom:(id)a3 deliveryVehicle:(id)a4 generationId:(id)a5 featureRequirements:(id)a6 with:(id)a7;
@end

@implementation SiriSuggestionsBookkeepingService

- (void)buildAutoCompleteIndexOnStartUpEvent:(BOOL)a3 with:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  sub_100003374(a3, sub_10000AFCC, v7);
}

- (void)logFrom:(id)a3 deliveryVehicle:(id)a4 generationId:(id)a5 featureRequirements:(id)a6 with:(id)a7
{
  v13 = sub_10000BCDC();
  v32 = *(v13 - 8);
  v33 = v13;
  v14 = *(v32 + 64);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a7);
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = self;
  v23 = sub_10000BCBC();
  v25 = v24;

  v26 = sub_10000BCBC();
  v28 = v27;

  sub_10000BCCC();
  v29 = sub_10000BCBC();
  v31 = v30;

  _Block_copy(v17);
  sub_100006204(v23, v25, v26, v28, v16, v29, v31, v22, v17);
  _Block_release(v17);
  sub_10000A0D4(v29, v31);
  sub_10000A0D4(v26, v28);
  sub_10000A0D4(v23, v25);

  (*(v32 + 8))(v16, v33);
}

- (void)logEngagementFor:(id)a3 with:(id)a4 invocationType:(id)a5 featureRequirements:(id)a6 with:(id)a7
{
  v13 = sub_10000BCDC();
  v32 = *(v13 - 8);
  v33 = v13;
  v14 = *(v32 + 64);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a7);
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = self;
  v23 = sub_10000BCBC();
  v25 = v24;

  sub_10000BCCC();
  v26 = sub_10000BCBC();
  v28 = v27;

  v29 = sub_10000BCBC();
  v31 = v30;

  _Block_copy(v17);
  sub_1000075B4(v23, v25, v16, v26, v28, v29, v31, v22, v17);
  _Block_release(v17);
  sub_10000A0D4(v29, v31);
  sub_10000A0D4(v26, v28);
  sub_10000A0D4(v23, v25);

  (*(v32 + 8))(v16, v33);
}

- (void)getAccountDetailsWith:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_100008630(sub_10000A604, v5);
}

@end