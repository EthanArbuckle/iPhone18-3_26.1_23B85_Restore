@interface WOAutoBugCaptureReporter
- (WOAutoBugCaptureReporter)init;
- (void)reportSnapshotWithType:(id)type subtype:(id)subtype context:(id)context thresholdValues:(id)values;
@end

@implementation WOAutoBugCaptureReporter

- (void)reportSnapshotWithType:(id)type subtype:(id)subtype context:(id)context thresholdValues:(id)values
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (context)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    context = v16;
    if (values)
    {
LABEL_3:
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      values = v18;
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    if (values)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  selfCopy = self;
  specialized AutoBugCaptureReporter.reportSnapshot(type:subtype:context:thresholdValues:)(v9, v11, v12, v14, v15, context, v17, values);
}

- (WOAutoBugCaptureReporter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AutoBugCaptureReporter();
  return [(WOAutoBugCaptureReporter *)&v3 init];
}

@end