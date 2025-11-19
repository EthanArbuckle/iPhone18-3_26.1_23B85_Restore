@interface SiriAnalyticsDataCollectionPolicyClockObserver
- (SiriAnalyticsDataCollectionPolicyClockObserver)initWithSiriConfiguration:(id)a3 metastore:(id)a4 metastoreQueue:(id)a5;
- (void)rootClockCreatedWithClockIdentifier:(id)a3 completion:(id)a4;
@end

@implementation SiriAnalyticsDataCollectionPolicyClockObserver

- (SiriAnalyticsDataCollectionPolicyClockObserver)initWithSiriConfiguration:(id)a3 metastore:(id)a4 metastoreQueue:(id)a5
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = a5;
  return DataCollectionPolicyClockObserver.init(siriConfiguration:metastore:metastoreQueue:)();
}

- (void)rootClockCreatedWithClockIdentifier:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1D992AE84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AE64();
  *(swift_allocObject() + 16) = v5;
  v11 = self;
  sub_1D98DF30C();

  (*(v7 + 8))(v10, v6);
}

@end