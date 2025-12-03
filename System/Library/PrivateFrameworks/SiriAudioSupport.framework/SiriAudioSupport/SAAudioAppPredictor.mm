@interface SAAudioAppPredictor
+ (void)unsafeReleaseModelWithCompletion:(id)completion;
- (SAAudioAppPredictor)init;
- (void)disambiguationSelectedWithBundleIdentifier:(id)identifier requestId:(id)id;
- (void)predictWithSearch:(id)search options:(id)options completion:(id)completion;
- (void)warmWithCompletion:(id)completion;
@end

@implementation SAAudioAppPredictor

- (SAAudioAppPredictor)init
{
  result = sub_2664E0C48();
  __break(1u);
  return result;
}

- (void)warmWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_2662D57FC(sub_2662DBE10, v5);
}

- (void)disambiguationSelectedWithBundleIdentifier:(id)identifier requestId:(id)id
{
  v5 = sub_2664E02C8();
  v7 = v6;
  v8 = sub_2664E02C8();
  v10 = v9;
  selfCopy = self;
  sub_2662DAF0C(v5, v7, v8, v10);
}

- (void)predictWithSearch:(id)search options:(id)options completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  searchCopy = search;
  optionsCopy = options;
  selfCopy = self;
  sub_2662D9470(searchCopy, optionsCopy, sub_2662DBDFC, v9);
}

+ (void)unsafeReleaseModelWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  _s16SiriAudioSupport0aB12AppPredictorC18unsafeReleaseModel10completionyySbc_tFZ_0(sub_2662DC130, v4);
}

@end