@interface FeatureStoreUtils
+ (id)retrieveFeatureDataWithStreamId:(id)a3 interactionId:(id)a4;
- (_TtC19SiriTasksEvaluation17FeatureStoreUtils)init;
@end

@implementation FeatureStoreUtils

+ (id)retrieveFeatureDataWithStreamId:(id)a3 interactionId:(id)a4
{
  v4 = sub_26926B230();
  v6 = v5;
  v7 = sub_26926B230();
  _s19SiriTasksEvaluation17FeatureStoreUtilsC08retrieveD4Data8streamId011interactionJ0Say10Foundation0H0VGSS_SStFZ_0(v4, v6, v7, v8);

  v9 = sub_26926B300();

  return v9;
}

- (_TtC19SiriTasksEvaluation17FeatureStoreUtils)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FeatureStoreUtils();
  return [(FeatureStoreUtils *)&v3 init];
}

@end