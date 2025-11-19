@interface SiriInferenceService
- (void)appSelectedForSearchTermWithRankEventId:(id)a3 selectedAppBundleId:(id)a4 numberOfAppsShown:(int64_t)a5;
- (void)logCoreAnalyticsMetricWithMetricsData:(id)a3;
- (void)rankAppsForSearchTermWithSearchTerm:(id)a3 maxResults:(int64_t)a4 excludeAppBundleIds:(id)a5 completionHandler:(id)a6;
- (void)waitForBackgroundJobsToFinishWithCompletionHandler:(id)a3;
@end

@implementation SiriInferenceService

- (void)logCoreAnalyticsMetricWithMetricsData:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000F214();
}

- (void)waitForBackgroundJobsToFinishWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_10000F550(v5, v4);
  _Block_release(v4);
}

- (void)rankAppsForSearchTermWithSearchTerm:(id)a3 maxResults:(int64_t)a4 excludeAppBundleIds:(id)a5 completionHandler:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  v14 = self;
  sub_10000F61C(v9, v11, a4, v12, sub_10001071C, v13);
}

- (void)appSelectedForSearchTermWithRankEventId:(id)a3 selectedAppBundleId:(id)a4 numberOfAppsShown:(int64_t)a5
{
  v7 = sub_1000045B0(&qword_100021768, &qword_1000145F8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v14 - v9;
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for UUID();
    v12 = 0;
  }

  else
  {
    v11 = type metadata accessor for UUID();
    v12 = 1;
  }

  sub_10000B148(v10, v12, 1, v11);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = self;
  sub_10000FEF8();

  sub_10000E9B8(v10, &qword_100021768, &qword_1000145F8);
}

@end