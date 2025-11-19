@interface WOAutoBugCaptureReporter
- (WOAutoBugCaptureReporter)init;
- (void)reportSnapshotWithType:(id)a3 subtype:(id)a4 context:(id)a5 thresholdValues:(id)a6;
@end

@implementation WOAutoBugCaptureReporter

- (void)reportSnapshotWithType:(id)a3 subtype:(id)a4 context:(id)a5 thresholdValues:(id)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (a5)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v16;
    if (a6)
    {
LABEL_3:
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a6 = v18;
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  v19 = self;
  specialized AutoBugCaptureReporter.reportSnapshot(type:subtype:context:thresholdValues:)(v9, v11, v12, v14, v15, a5, v17, a6);
}

- (WOAutoBugCaptureReporter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AutoBugCaptureReporter();
  return [(WOAutoBugCaptureReporter *)&v3 init];
}

@end