@interface SAAudioAppPredictor
+ (void)unsafeReleaseModelWithCompletion:(id)a3;
- (SAAudioAppPredictor)init;
- (void)disambiguationSelectedWithBundleIdentifier:(id)a3 requestId:(id)a4;
- (void)predictWithSearch:(id)a3 options:(id)a4 completion:(id)a5;
- (void)warmWithCompletion:(id)a3;
@end

@implementation SAAudioAppPredictor

- (SAAudioAppPredictor)init
{
  result = sub_2664E0C48();
  __break(1u);
  return result;
}

- (void)warmWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_2662D57FC(sub_2662DBE10, v5);
}

- (void)disambiguationSelectedWithBundleIdentifier:(id)a3 requestId:(id)a4
{
  v5 = sub_2664E02C8();
  v7 = v6;
  v8 = sub_2664E02C8();
  v10 = v9;
  v11 = self;
  sub_2662DAF0C(v5, v7, v8, v10);
}

- (void)predictWithSearch:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_2662D9470(v10, v11, sub_2662DBDFC, v9);
}

+ (void)unsafeReleaseModelWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  _s16SiriAudioSupport0aB12AppPredictorC18unsafeReleaseModel10completionyySbc_tFZ_0(sub_2662DC130, v4);
}

@end