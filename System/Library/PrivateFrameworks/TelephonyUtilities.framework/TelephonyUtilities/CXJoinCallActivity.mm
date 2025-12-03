@interface CXJoinCallActivity
+ (CXJoinCallActivity)activityWithTUConversationActivity:(id)activity;
- (TUConversationActivity)tuActivity;
@end

@implementation CXJoinCallActivity

+ (CXJoinCallActivity)activityWithTUConversationActivity:(id)activity
{
  activityCopy = activity;
  v4 = [CXJoinCallActivity alloc];
  bundleIdentifier = [activityCopy bundleIdentifier];
  metadata = [activityCopy metadata];
  serializedData = [metadata serializedData];
  applicationContext = [activityCopy applicationContext];
  activityIdentifier = [activityCopy activityIdentifier];
  v10 = [v4 initWithBundleIdentifier:bundleIdentifier metadata:serializedData applicationContext:applicationContext activityIdentifier:activityIdentifier];

  uUID = [activityCopy UUID];
  [v10 setUUID:uUID];

  startWhenStaged = [activityCopy startWhenStaged];
  [v10 setStartWhenStaged:startWhenStaged];

  return v10;
}

- (TUConversationActivity)tuActivity
{
  v3 = [TUConversationActivity alloc];
  metadata = [(CXJoinCallActivity *)self metadata];
  v5 = [TUConversationActivityMetadata activityMetadataWithDataBlob:metadata];
  applicationContext = [(CXJoinCallActivity *)self applicationContext];
  uUID = [(CXJoinCallActivity *)self UUID];
  activityIdentifier = [(CXJoinCallActivity *)self activityIdentifier];
  v9 = [v3 initWithMetadata:v5 applicationContext:applicationContext uuid:uUID activityIdentifier:activityIdentifier];

  bundleIdentifier = [(CXJoinCallActivity *)self bundleIdentifier];
  [v9 setBundleIdentifier:bundleIdentifier];

  [v9 setStartWhenStaged:{-[CXJoinCallActivity startWhenStaged](self, "startWhenStaged")}];

  return v9;
}

@end