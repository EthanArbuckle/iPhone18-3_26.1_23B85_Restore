@interface PXFeedbackCollector
- (PXFeedbackCollector)init;
- (id)_appVersion;
- (id)_uniqueSystemIdentifier;
- (id)addFeedbackFromDictionary:(id)dictionary;
- (id)feedbackEntryFromDictionary:(id)dictionary;
- (void)addFeedbackEntry:(id)entry;
- (void)removeFeedbackEntry:(id)entry;
@end

@implementation PXFeedbackCollector

- (id)_appVersion
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v4 = [infoDictionary objectForKey:@"CFBundleShortVersionString"];

  mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary2 = [mainBundle2 infoDictionary];
  v7 = [infoDictionary2 objectForKey:*MEMORY[0x1E695E500]];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)", v4, v7];

  return v8;
}

- (id)_uniqueSystemIdentifier
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  identifierForVendor = [currentDevice identifierForVendor];
  uUIDString = [identifierForVendor UUIDString];

  return uUIDString;
}

- (void)removeFeedbackEntry:(id)entry
{
  if (entry)
  {
    entryCopy = entry;
    feedbackStore = [(PXFeedbackCollector *)self feedbackStore];
    [feedbackStore removeFeedbackEntry:entryCopy];
  }
}

- (id)addFeedbackFromDictionary:(id)dictionary
{
  v4 = [(PXFeedbackCollector *)self feedbackEntryFromDictionary:dictionary];
  if (v4)
  {
    feedbackStore = [(PXFeedbackCollector *)self feedbackStore];
    [feedbackStore addFeedbackEntry:v4];
  }

  return v4;
}

- (void)addFeedbackEntry:(id)entry
{
  if (entry)
  {
    entryCopy = entry;
    feedbackStore = [(PXFeedbackCollector *)self feedbackStore];
    [feedbackStore addFeedbackEntry:entryCopy];
  }
}

- (id)feedbackEntryFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_opt_new();
  v6 = [dictionaryCopy objectForKey:kPXFeedbackUserLikedCollectionKey];
  if (v6)
  {

LABEL_4:
    v8 = 1;
    goto LABEL_5;
  }

  v7 = [dictionaryCopy objectForKey:kPXFeedbackUserLikedMemoriesKey];

  if (v7)
  {
    goto LABEL_4;
  }

  v14 = [dictionaryCopy objectForKey:kPXFeedbackUserDislikedCollectionKey];
  if (v14)
  {

LABEL_17:
    v8 = 2;
    goto LABEL_5;
  }

  v15 = [dictionaryCopy objectForKey:kPXFeedbackUserDislikedMemoriesKey];

  if (v15)
  {
    goto LABEL_17;
  }

  v8 = 3;
LABEL_5:
  _uniqueSystemIdentifier = [dictionaryCopy objectForKey:kPXFeedbackEntrySystemIDKey];
  if (!_uniqueSystemIdentifier)
  {
    _uniqueSystemIdentifier = [(PXFeedbackCollector *)self _uniqueSystemIdentifier];
  }

  [v5 setSystemID:_uniqueSystemIdentifier];
  date = [dictionaryCopy objectForKey:kPXFeedbackEntryTimestampKey];
  if (!date)
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  [v5 setTimestamp:date];
  _appVersion = [dictionaryCopy objectForKey:kPXFeedbackEntryAppVersionKey];
  if (!_appVersion)
  {
    _appVersion = [(PXFeedbackCollector *)self _appVersion];
  }

  [v5 setAppVersion:_appVersion];
  [v5 setAlreadyCollected:0];
  [v5 setGeneralFeedback:v8];
  feedbackItemsDict = [v5 feedbackItemsDict];
  [feedbackItemsDict addEntriesFromDictionary:dictionaryCopy];

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