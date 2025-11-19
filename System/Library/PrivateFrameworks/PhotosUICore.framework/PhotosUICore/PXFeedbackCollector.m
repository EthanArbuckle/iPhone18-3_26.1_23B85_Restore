@interface PXFeedbackCollector
- (PXFeedbackCollector)init;
- (id)_appVersion;
- (id)_uniqueSystemIdentifier;
- (id)addFeedbackFromDictionary:(id)a3;
- (id)feedbackEntryFromDictionary:(id)a3;
- (void)addFeedbackEntry:(id)a3;
- (void)removeFeedbackEntry:(id)a3;
@end

@implementation PXFeedbackCollector

- (id)_appVersion
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 infoDictionary];
  v4 = [v3 objectForKey:@"CFBundleShortVersionString"];

  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 infoDictionary];
  v7 = [v6 objectForKey:*MEMORY[0x1E695E500]];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)", v4, v7];

  return v8;
}

- (id)_uniqueSystemIdentifier
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 identifierForVendor];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)removeFeedbackEntry:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PXFeedbackCollector *)self feedbackStore];
    [v5 removeFeedbackEntry:v4];
  }
}

- (id)addFeedbackFromDictionary:(id)a3
{
  v4 = [(PXFeedbackCollector *)self feedbackEntryFromDictionary:a3];
  if (v4)
  {
    v5 = [(PXFeedbackCollector *)self feedbackStore];
    [v5 addFeedbackEntry:v4];
  }

  return v4;
}

- (void)addFeedbackEntry:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PXFeedbackCollector *)self feedbackStore];
    [v5 addFeedbackEntry:v4];
  }
}

- (id)feedbackEntryFromDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 objectForKey:kPXFeedbackUserLikedCollectionKey];
  if (v6)
  {

LABEL_4:
    v8 = 1;
    goto LABEL_5;
  }

  v7 = [v4 objectForKey:kPXFeedbackUserLikedMemoriesKey];

  if (v7)
  {
    goto LABEL_4;
  }

  v14 = [v4 objectForKey:kPXFeedbackUserDislikedCollectionKey];
  if (v14)
  {

LABEL_17:
    v8 = 2;
    goto LABEL_5;
  }

  v15 = [v4 objectForKey:kPXFeedbackUserDislikedMemoriesKey];

  if (v15)
  {
    goto LABEL_17;
  }

  v8 = 3;
LABEL_5:
  v9 = [v4 objectForKey:kPXFeedbackEntrySystemIDKey];
  if (!v9)
  {
    v9 = [(PXFeedbackCollector *)self _uniqueSystemIdentifier];
  }

  [v5 setSystemID:v9];
  v10 = [v4 objectForKey:kPXFeedbackEntryTimestampKey];
  if (!v10)
  {
    v10 = [MEMORY[0x1E695DF00] date];
  }

  [v5 setTimestamp:v10];
  v11 = [v4 objectForKey:kPXFeedbackEntryAppVersionKey];
  if (!v11)
  {
    v11 = [(PXFeedbackCollector *)self _appVersion];
  }

  [v5 setAppVersion:v11];
  [v5 setAlreadyCollected:0];
  [v5 setGeneralFeedback:v8];
  v12 = [v5 feedbackItemsDict];
  [v12 addEntriesFromDictionary:v4];

  return v5;
}

- (PXFeedbackCollector)init
{
  v6.receiver = self;
  v6.super_class = PXFeedbackCollector;
  v2 = [(PXFeedbackCollector *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    feedbackStore = v2->_feedbackStore;
    v2->_feedbackStore = v3;
  }

  return v2;
}

@end