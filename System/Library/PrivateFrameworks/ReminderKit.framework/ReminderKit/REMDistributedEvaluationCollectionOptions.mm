@interface REMDistributedEvaluationCollectionOptions
+ (id)_attachmentURLFromFilenameWithKey:(id)key inJSONRepresentation:(id)representation attachmentURLs:(id)ls error:(id *)error;
+ (id)optionsFromJSONRepresentation:(id)representation attachmentURLs:(id)ls error:(id *)error;
+ (id)optionsWithDefaultValues;
+ (id)optionsWithEverythingOff;
- (REMDistributedEvaluationCollectionOptions)initWithCoder:(id)coder;
- (id)_init;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMDistributedEvaluationCollectionOptions

+ (id)optionsWithDefaultValues
{
  _init = [[self alloc] _init];
  [_init setIncludeListNames:0];
  [_init setIncludeReminderTitles:0];
  [_init setIncludeListNameFuzzedEmbeddings:0];
  [_init setIncludeReminderTitleFuzzedEmbeddings:0];
  [_init setIncludeSystemLanguage:0];
  [_init setIncludeSystemTimezone:0];
  [_init setIncludeAccountType:0];
  [_init setIncludeListGroupInfo:0];
  [_init setIncludeReminderTitleSaltedHash:0];
  [_init setIncludeDayOfWeek:0];
  [_init setIncludeDates:0];
  [_init setIncludeRecurrenceInfo:0];
  [_init setIncludeLocationInfo:0];
  [_init setIncludeAttachmentUTIs:0];
  [_init setIncludeRemindMeWhenMessagingInfo:0];
  [_init setIncludeAlarmDates:0];
  [_init setIncludeSubtaskInfo:0];
  [_init setIncludeUserActivityInfo:0];
  [_init setIncludeIsFlagged:0];
  [_init setIncludePriority:0];
  [_init setRelevantWordTagsIncludeOtherWord:0];
  [_init setDateResolutionInSeconds:10];
  [_init setCreationDateWithinDays:0];
  [_init setReminderTitleCategoryEmbeddingURL:0];
  [_init setIncludeReminderTitleCategorySentence2Vec:0];
  [_init setIncludeReminderTitleCategoryUniversalGrammar:0];
  [_init setIncludeReminderTitleCategoryFilteredStopWords:0];
  [_init setReminderTitleCategoryDistanceTolerance:1.0];

  return _init;
}

+ (id)optionsWithEverythingOff
{
  _init = [[self alloc] _init];

  return _init;
}

+ (id)optionsFromJSONRepresentation:(id)representation attachmentURLs:(id)ls error:(id *)error
{
  representationCopy = representation;
  lsCopy = ls;
  v10 = [representationCopy objectForKey:@"reminderTitleCategoryEmbeddingFilename"];

  if (v10)
  {
    v11 = [self _attachmentURLFromFilenameWithKey:@"reminderTitleCategoryEmbeddingFilename" inJSONRepresentation:representationCopy attachmentURLs:lsCopy error:error];
    if (!v11)
    {
      optionsWithDefaultValues = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
  }

  optionsWithDefaultValues = [self optionsWithDefaultValues];
  [optionsWithDefaultValues setIncludeListNames:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeListNames", objc_msgSend(optionsWithDefaultValues, "includeListNames"))}];
  [optionsWithDefaultValues setIncludeListNameFuzzedEmbeddings:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeListNameFuzzedEmbeddings", objc_msgSend(optionsWithDefaultValues, "includeListNameFuzzedEmbeddings"))}];
  [optionsWithDefaultValues setIncludeReminderTitles:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeReminderTitles", objc_msgSend(optionsWithDefaultValues, "includeReminderTitles"))}];
  [optionsWithDefaultValues setIncludeReminderTitleFuzzedEmbeddings:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeReminderTitleFuzzedEmbeddings", objc_msgSend(optionsWithDefaultValues, "includeReminderTitleFuzzedEmbeddings"))}];
  [optionsWithDefaultValues setIncludeSystemLanguage:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeSystemLanguage", objc_msgSend(optionsWithDefaultValues, "includeSystemLanguage"))}];
  [optionsWithDefaultValues setIncludeSystemTimezone:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeSystemTimezone", objc_msgSend(optionsWithDefaultValues, "includeSystemTimezone"))}];
  [optionsWithDefaultValues setIncludeAccountType:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeAccountType", objc_msgSend(optionsWithDefaultValues, "includeAccountType"))}];
  [optionsWithDefaultValues setIncludeListGroupInfo:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeListGroupInfo", objc_msgSend(optionsWithDefaultValues, "includeListGroupInfo"))}];
  [optionsWithDefaultValues setIncludeReminderTitleSaltedHash:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeReminderTitleSaltedHash", objc_msgSend(optionsWithDefaultValues, "includeReminderTitleSaltedHash"))}];
  [optionsWithDefaultValues setIncludeDates:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeDates", objc_msgSend(optionsWithDefaultValues, "includeDates"))}];
  [optionsWithDefaultValues setIncludeRecurrenceInfo:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeRecurrenceInfo", objc_msgSend(optionsWithDefaultValues, "includeRecurrenceInfo"))}];
  [optionsWithDefaultValues setIncludeLocationInfo:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeLocationInfo", objc_msgSend(optionsWithDefaultValues, "includeLocationInfo"))}];
  [optionsWithDefaultValues setIncludeAttachmentUTIs:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeAttachmentUTIs", objc_msgSend(optionsWithDefaultValues, "includeAttachmentUTIs"))}];
  [optionsWithDefaultValues setIncludeRemindMeWhenMessagingInfo:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeRemindMeWhenMessagingInfo", objc_msgSend(optionsWithDefaultValues, "includeRemindMeWhenMessagingInfo"))}];
  [optionsWithDefaultValues setIncludeAlarmDates:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeAlarmDates", objc_msgSend(optionsWithDefaultValues, "includeAlarmDates"))}];
  [optionsWithDefaultValues setIncludeSubtaskInfo:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeSubtaskInfo", objc_msgSend(optionsWithDefaultValues, "includeSubtaskInfo"))}];
  [optionsWithDefaultValues setIncludeUserActivityInfo:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeUserActivityInfo", objc_msgSend(optionsWithDefaultValues, "includeUserActivityInfo"))}];
  [optionsWithDefaultValues setIncludeIsFlagged:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeIsFlagged", objc_msgSend(optionsWithDefaultValues, "includeIsFlagged"))}];
  [optionsWithDefaultValues setIncludePriority:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includePriority", objc_msgSend(optionsWithDefaultValues, "includePriority"))}];
  [optionsWithDefaultValues setRelevantWordTagsIncludeOtherWord:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"relevantWordTagsIncludeOtherWord", objc_msgSend(optionsWithDefaultValues, "relevantWordTagsIncludeOtherWord"))}];
  [optionsWithDefaultValues setDateResolutionInSeconds:{objc_msgSend(representationCopy, "remdes_nsuintegerForKey:defaultValue:", @"dateResolutionInSeconds", 10)}];
  [optionsWithDefaultValues setIncludeReminderTitleCategoryFilteredStopWords:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeReminderTitleCategoryFilteredStopWords", objc_msgSend(optionsWithDefaultValues, "includeReminderTitleCategoryFilteredStopWords"))}];
  [optionsWithDefaultValues setIncludeReminderTitleCategoryUniversalGrammar:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeReminderTitleCategoryUniversalGrammar", objc_msgSend(optionsWithDefaultValues, "includeReminderTitleCategoryUniversalGrammar"))}];
  [optionsWithDefaultValues setIncludeReminderTitleCategorySentence2Vec:{objc_msgSend(representationCopy, "remdes_BOOLForKey:defaultValue:", @"includeReminderTitleCategorySentence2Vec", objc_msgSend(optionsWithDefaultValues, "includeReminderTitleCategorySentence2Vec"))}];
  [representationCopy remdes_doubleForKey:@"reminderTitleCategoryDistanceTolerance" defaultValue:1.0];
  [optionsWithDefaultValues setReminderTitleCategoryDistanceTolerance:?];
  [optionsWithDefaultValues setReminderTitleCategoryEmbeddingURL:v11];

LABEL_6:

  return optionsWithDefaultValues;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = REMDistributedEvaluationCollectionOptions;
  result = [(REMDistributedEvaluationCollectionOptions *)&v3 init];
  if (result)
  {
    *(result + 4) = 0x3FF0000000000000;
  }

  return result;
}

- (REMDistributedEvaluationCollectionOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(REMDistributedEvaluationCollectionOptions *)self _init];
  if (_init)
  {
    -[REMDistributedEvaluationCollectionOptions setIncludeListNames:](_init, "setIncludeListNames:", [coderCopy decodeBoolForKey:@"includeListNames"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeListNameFuzzedEmbeddings:](_init, "setIncludeListNameFuzzedEmbeddings:", [coderCopy decodeBoolForKey:@"includeListNameFuzzedEmbeddings"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeReminderTitles:](_init, "setIncludeReminderTitles:", [coderCopy decodeBoolForKey:@"includeReminderTitles"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeReminderTitleFuzzedEmbeddings:](_init, "setIncludeReminderTitleFuzzedEmbeddings:", [coderCopy decodeBoolForKey:@"includeReminderTitleFuzzedEmbeddings"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeSystemLanguage:](_init, "setIncludeSystemLanguage:", [coderCopy decodeBoolForKey:@"includeSystemLanguage"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeSystemTimezone:](_init, "setIncludeSystemTimezone:", [coderCopy decodeBoolForKey:@"includeSystemTimezone"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeAccountType:](_init, "setIncludeAccountType:", [coderCopy decodeBoolForKey:@"includeAccountType"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeListGroupInfo:](_init, "setIncludeListGroupInfo:", [coderCopy decodeBoolForKey:@"includeListGroupInfo"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeReminderTitleSaltedHash:](_init, "setIncludeReminderTitleSaltedHash:", [coderCopy decodeBoolForKey:@"includeReminderTitleSaltedHash"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeDates:](_init, "setIncludeDates:", [coderCopy decodeBoolForKey:@"includeDates"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeRecurrenceInfo:](_init, "setIncludeRecurrenceInfo:", [coderCopy decodeBoolForKey:@"includeRecurrenceInfo"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeLocationInfo:](_init, "setIncludeLocationInfo:", [coderCopy decodeBoolForKey:@"includeLocationInfo"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeAttachmentUTIs:](_init, "setIncludeAttachmentUTIs:", [coderCopy decodeBoolForKey:@"includeAttachmentUTIs"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeRemindMeWhenMessagingInfo:](_init, "setIncludeRemindMeWhenMessagingInfo:", [coderCopy decodeBoolForKey:@"includeRemindMeWhenMessagingInfo"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeAlarmDates:](_init, "setIncludeAlarmDates:", [coderCopy decodeBoolForKey:@"includeAlarmDates"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeSubtaskInfo:](_init, "setIncludeSubtaskInfo:", [coderCopy decodeBoolForKey:@"includeSubtaskInfo"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeUserActivityInfo:](_init, "setIncludeUserActivityInfo:", [coderCopy decodeBoolForKey:@"includeUserActivityInfo"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeIsFlagged:](_init, "setIncludeIsFlagged:", [coderCopy decodeBoolForKey:@"includeIsFlagged"]);
    -[REMDistributedEvaluationCollectionOptions setIncludePriority:](_init, "setIncludePriority:", [coderCopy decodeBoolForKey:@"includePriority"]);
    -[REMDistributedEvaluationCollectionOptions setRelevantWordTagsIncludeOtherWord:](_init, "setRelevantWordTagsIncludeOtherWord:", [coderCopy decodeBoolForKey:@"relevantWordTagsIncludeOtherWord"]);
    -[REMDistributedEvaluationCollectionOptions setDateResolutionInSeconds:](_init, "setDateResolutionInSeconds:", [coderCopy decodeIntegerForKey:@"dateResolutionInSeconds"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeReminderTitleCategoryFilteredStopWords:](_init, "setIncludeReminderTitleCategoryFilteredStopWords:", [coderCopy decodeBoolForKey:@"includeReminderTitleCategoryFilteredStopWords"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeReminderTitleCategoryUniversalGrammar:](_init, "setIncludeReminderTitleCategoryUniversalGrammar:", [coderCopy decodeBoolForKey:@"includeReminderTitleCategoryUniversalGrammar"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeReminderTitleCategorySentence2Vec:](_init, "setIncludeReminderTitleCategorySentence2Vec:", [coderCopy decodeBoolForKey:@"includeReminderTitleCategorySentence2Vec"]);
    [coderCopy decodeDoubleForKey:@"reminderTitleCategoryDistanceTolerance"];
    [(REMDistributedEvaluationCollectionOptions *)_init setReminderTitleCategoryDistanceTolerance:?];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reminderTitleCategoryEmbeddingURL"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 url];
      [(REMDistributedEvaluationCollectionOptions *)_init setReminderTitleCategoryEmbeddingURL:v8];
    }
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeListNames](self forKey:{"includeListNames"), @"includeListNames"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeListNameFuzzedEmbeddings](self forKey:{"includeListNameFuzzedEmbeddings"), @"includeListNameFuzzedEmbeddings"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeReminderTitles](self forKey:{"includeReminderTitles"), @"includeReminderTitles"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeReminderTitleFuzzedEmbeddings](self forKey:{"includeReminderTitleFuzzedEmbeddings"), @"includeReminderTitleFuzzedEmbeddings"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeSystemLanguage](self forKey:{"includeSystemLanguage"), @"includeSystemLanguage"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeSystemTimezone](self forKey:{"includeSystemTimezone"), @"includeSystemTimezone"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeAccountType](self forKey:{"includeAccountType"), @"includeAccountType"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeListGroupInfo](self forKey:{"includeListGroupInfo"), @"includeListGroupInfo"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeReminderTitleSaltedHash](self forKey:{"includeReminderTitleSaltedHash"), @"includeReminderTitleSaltedHash"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeDates](self forKey:{"includeDates"), @"includeDates"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeRecurrenceInfo](self forKey:{"includeRecurrenceInfo"), @"includeRecurrenceInfo"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeLocationInfo](self forKey:{"includeLocationInfo"), @"includeLocationInfo"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeAttachmentUTIs](self forKey:{"includeAttachmentUTIs"), @"includeAttachmentUTIs"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeRemindMeWhenMessagingInfo](self forKey:{"includeRemindMeWhenMessagingInfo"), @"includeRemindMeWhenMessagingInfo"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeAlarmDates](self forKey:{"includeAlarmDates"), @"includeAlarmDates"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeSubtaskInfo](self forKey:{"includeSubtaskInfo"), @"includeSubtaskInfo"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeUserActivityInfo](self forKey:{"includeUserActivityInfo"), @"includeUserActivityInfo"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeIsFlagged](self forKey:{"includeIsFlagged"), @"includeIsFlagged"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includePriority](self forKey:{"includePriority"), @"includePriority"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions relevantWordTagsIncludeOtherWord](self forKey:{"relevantWordTagsIncludeOtherWord"), @"relevantWordTagsIncludeOtherWord"}];
  [coderCopy encodeInteger:-[REMDistributedEvaluationCollectionOptions dateResolutionInSeconds](self forKey:{"dateResolutionInSeconds"), @"dateResolutionInSeconds"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeReminderTitleCategoryFilteredStopWords](self forKey:{"includeReminderTitleCategoryFilteredStopWords"), @"includeReminderTitleCategoryFilteredStopWords"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeReminderTitleCategoryUniversalGrammar](self forKey:{"includeReminderTitleCategoryUniversalGrammar"), @"includeReminderTitleCategoryUniversalGrammar"}];
  [coderCopy encodeBool:-[REMDistributedEvaluationCollectionOptions includeReminderTitleCategorySentence2Vec](self forKey:{"includeReminderTitleCategorySentence2Vec"), @"includeReminderTitleCategorySentence2Vec"}];
  reminderTitleCategoryEmbeddingURL = [(REMDistributedEvaluationCollectionOptions *)self reminderTitleCategoryEmbeddingURL];

  if (reminderTitleCategoryEmbeddingURL)
  {
    v5 = objc_alloc(MEMORY[0x1E696AE98]);
    reminderTitleCategoryEmbeddingURL2 = [(REMDistributedEvaluationCollectionOptions *)self reminderTitleCategoryEmbeddingURL];
    v7 = [v5 initWithURL:reminderTitleCategoryEmbeddingURL2 readonly:1];

    [coderCopy encodeObject:v7 forKey:@"reminderTitleCategoryEmbeddingURL"];
  }

  [(REMDistributedEvaluationCollectionOptions *)self reminderTitleCategoryDistanceTolerance];
  [coderCopy encodeDouble:@"reminderTitleCategoryDistanceTolerance" forKey:?];
}

- (id)description
{
  v3 = +[REMDistributedEvaluationCollectionOptions optionsWithDefaultValues];
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p ", objc_opt_class(), self];
  includeListNames = [(REMDistributedEvaluationCollectionOptions *)self includeListNames];
  if (includeListNames != [v3 includeListNames])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeListNames", -[REMDistributedEvaluationCollectionOptions includeListNames](self, "includeListNames")];
  }

  includeReminderTitles = [(REMDistributedEvaluationCollectionOptions *)self includeReminderTitles];
  if (includeReminderTitles != [v3 includeReminderTitles])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeReminderTitles", -[REMDistributedEvaluationCollectionOptions includeReminderTitles](self, "includeReminderTitles")];
  }

  includeSystemLanguage = [(REMDistributedEvaluationCollectionOptions *)self includeSystemLanguage];
  if (includeSystemLanguage != [v3 includeSystemLanguage])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeSystemLanguage", -[REMDistributedEvaluationCollectionOptions includeSystemLanguage](self, "includeSystemLanguage")];
  }

  includeSystemTimezone = [(REMDistributedEvaluationCollectionOptions *)self includeSystemTimezone];
  if (includeSystemTimezone != [v3 includeSystemTimezone])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeSystemTimezone", -[REMDistributedEvaluationCollectionOptions includeSystemTimezone](self, "includeSystemTimezone")];
  }

  includeAccountType = [(REMDistributedEvaluationCollectionOptions *)self includeAccountType];
  if (includeAccountType != [v3 includeAccountType])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeAccountType", -[REMDistributedEvaluationCollectionOptions includeAccountType](self, "includeAccountType")];
  }

  includeListGroupInfo = [(REMDistributedEvaluationCollectionOptions *)self includeListGroupInfo];
  if (includeListGroupInfo != [v3 includeListGroupInfo])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeListGroupInfo", -[REMDistributedEvaluationCollectionOptions includeListGroupInfo](self, "includeListGroupInfo")];
  }

  includeListNameFuzzedEmbeddings = [(REMDistributedEvaluationCollectionOptions *)self includeListNameFuzzedEmbeddings];
  if (includeListNameFuzzedEmbeddings != [v3 includeListNameFuzzedEmbeddings])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeListNameFuzzedEmbeddings", -[REMDistributedEvaluationCollectionOptions includeListNameFuzzedEmbeddings](self, "includeListNameFuzzedEmbeddings")];
  }

  includeReminderTitleFuzzedEmbeddings = [(REMDistributedEvaluationCollectionOptions *)self includeReminderTitleFuzzedEmbeddings];
  if (includeReminderTitleFuzzedEmbeddings != [v3 includeReminderTitleFuzzedEmbeddings])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeReminderTitleFuzzedEmbeddings", -[REMDistributedEvaluationCollectionOptions includeReminderTitleFuzzedEmbeddings](self, "includeReminderTitleFuzzedEmbeddings")];
  }

  includeReminderTitleSaltedHash = [(REMDistributedEvaluationCollectionOptions *)self includeReminderTitleSaltedHash];
  if (includeReminderTitleSaltedHash != [v3 includeReminderTitleSaltedHash])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeReminderTitleSaltedHash", -[REMDistributedEvaluationCollectionOptions includeReminderTitleSaltedHash](self, "includeReminderTitleSaltedHash")];
  }

  includeDates = [(REMDistributedEvaluationCollectionOptions *)self includeDates];
  if (includeDates != [v3 includeDates])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeDates", -[REMDistributedEvaluationCollectionOptions includeDates](self, "includeDates")];
  }

  includeRecurrenceInfo = [(REMDistributedEvaluationCollectionOptions *)self includeRecurrenceInfo];
  if (includeRecurrenceInfo != [v3 includeRecurrenceInfo])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeRecurrenceInfo", -[REMDistributedEvaluationCollectionOptions includeRecurrenceInfo](self, "includeRecurrenceInfo")];
  }

  includeLocationInfo = [(REMDistributedEvaluationCollectionOptions *)self includeLocationInfo];
  if (includeLocationInfo != [v3 includeLocationInfo])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeLocationInfo", -[REMDistributedEvaluationCollectionOptions includeLocationInfo](self, "includeLocationInfo")];
  }

  includeAttachmentUTIs = [(REMDistributedEvaluationCollectionOptions *)self includeAttachmentUTIs];
  if (includeAttachmentUTIs != [v3 includeAttachmentUTIs])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeAttachmentUTIs", -[REMDistributedEvaluationCollectionOptions includeAttachmentUTIs](self, "includeAttachmentUTIs")];
  }

  includeRemindMeWhenMessagingInfo = [(REMDistributedEvaluationCollectionOptions *)self includeRemindMeWhenMessagingInfo];
  if (includeRemindMeWhenMessagingInfo != [v3 includeRemindMeWhenMessagingInfo])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeRemindMeWhenMessagingInfo", -[REMDistributedEvaluationCollectionOptions includeRemindMeWhenMessagingInfo](self, "includeRemindMeWhenMessagingInfo")];
  }

  includeAlarmDates = [(REMDistributedEvaluationCollectionOptions *)self includeAlarmDates];
  if (includeAlarmDates != [v3 includeAlarmDates])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeAlarmDates", -[REMDistributedEvaluationCollectionOptions includeAlarmDates](self, "includeAlarmDates")];
  }

  includeSubtaskInfo = [(REMDistributedEvaluationCollectionOptions *)self includeSubtaskInfo];
  if (includeSubtaskInfo != [v3 includeSubtaskInfo])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeSubtaskInfo", -[REMDistributedEvaluationCollectionOptions includeSubtaskInfo](self, "includeSubtaskInfo")];
  }

  includeUserActivityInfo = [(REMDistributedEvaluationCollectionOptions *)self includeUserActivityInfo];
  if (includeUserActivityInfo != [v3 includeUserActivityInfo])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeUserActivityInfo", -[REMDistributedEvaluationCollectionOptions includeUserActivityInfo](self, "includeUserActivityInfo")];
  }

  includeIsFlagged = [(REMDistributedEvaluationCollectionOptions *)self includeIsFlagged];
  if (includeIsFlagged != [v3 includeIsFlagged])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeIsFlagged", -[REMDistributedEvaluationCollectionOptions includeIsFlagged](self, "includeIsFlagged")];
  }

  includePriority = [(REMDistributedEvaluationCollectionOptions *)self includePriority];
  if (includePriority != [v3 includePriority])
  {
    [v4 appendFormat:@"%@:%ld ", @"includePriority", -[REMDistributedEvaluationCollectionOptions includePriority](self, "includePriority")];
  }

  relevantWordTagsIncludeOtherWord = [(REMDistributedEvaluationCollectionOptions *)self relevantWordTagsIncludeOtherWord];
  if (relevantWordTagsIncludeOtherWord != [v3 relevantWordTagsIncludeOtherWord])
  {
    [v4 appendFormat:@"%@:%ld ", @"relevantWordTagsIncludeOtherWord", -[REMDistributedEvaluationCollectionOptions relevantWordTagsIncludeOtherWord](self, "relevantWordTagsIncludeOtherWord")];
  }

  dateResolutionInSeconds = [(REMDistributedEvaluationCollectionOptions *)self dateResolutionInSeconds];
  if (dateResolutionInSeconds != [v3 dateResolutionInSeconds])
  {
    [v4 appendFormat:@"%@:%ld ", @"dateResolutionInSeconds", -[REMDistributedEvaluationCollectionOptions dateResolutionInSeconds](self, "dateResolutionInSeconds")];
  }

  includeReminderTitleCategoryFilteredStopWords = [(REMDistributedEvaluationCollectionOptions *)self includeReminderTitleCategoryFilteredStopWords];
  if (includeReminderTitleCategoryFilteredStopWords != [v3 includeReminderTitleCategoryFilteredStopWords])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeReminderTitleCategoryFilteredStopWords", -[REMDistributedEvaluationCollectionOptions includeReminderTitleCategoryFilteredStopWords](self, "includeReminderTitleCategoryFilteredStopWords")];
  }

  includeReminderTitleCategoryUniversalGrammar = [(REMDistributedEvaluationCollectionOptions *)self includeReminderTitleCategoryUniversalGrammar];
  if (includeReminderTitleCategoryUniversalGrammar != [v3 includeReminderTitleCategoryUniversalGrammar])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeReminderTitleCategoryUniversalGrammar", -[REMDistributedEvaluationCollectionOptions includeReminderTitleCategoryUniversalGrammar](self, "includeReminderTitleCategoryUniversalGrammar")];
  }

  includeReminderTitleCategorySentence2Vec = [(REMDistributedEvaluationCollectionOptions *)self includeReminderTitleCategorySentence2Vec];
  if (includeReminderTitleCategorySentence2Vec != [v3 includeReminderTitleCategorySentence2Vec])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeReminderTitleCategorySentence2Vec", -[REMDistributedEvaluationCollectionOptions includeReminderTitleCategorySentence2Vec](self, "includeReminderTitleCategorySentence2Vec")];
  }

  [(REMDistributedEvaluationCollectionOptions *)self reminderTitleCategoryDistanceTolerance];
  v30 = v29;
  [v3 reminderTitleCategoryDistanceTolerance];
  v32 = v30 - v31;
  if (v32 < 0.0)
  {
    v32 = -v32;
  }

  if (v32 > 0.0001)
  {
    [(REMDistributedEvaluationCollectionOptions *)self reminderTitleCategoryDistanceTolerance];
    [v4 appendFormat:@"%@:%.3f ", @"reminderTitleCategoryDistanceTolerance", v33];
  }

  reminderTitleCategoryEmbeddingURL = [(REMDistributedEvaluationCollectionOptions *)self reminderTitleCategoryEmbeddingURL];

  if (reminderTitleCategoryEmbeddingURL)
  {
    reminderTitleCategoryEmbeddingURL2 = [(REMDistributedEvaluationCollectionOptions *)self reminderTitleCategoryEmbeddingURL];
    [v4 appendFormat:@"%@:%@ ", @"reminderTitleCategoryEmbeddingURL", reminderTitleCategoryEmbeddingURL2];
  }

  [v4 appendString:@">"];

  return v4;
}

+ (id)_attachmentURLFromFilenameWithKey:(id)key inJSONRepresentation:(id)representation attachmentURLs:(id)ls error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  representationCopy = representation;
  lsCopy = ls;
  v12 = [representationCopy objectForKey:keyCopy];
  if (!v12)
  {
    v16 = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_22;
    }

    keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected type for fileame {filename: %@, key: %@}", v12, keyCopy];
    *error = [REMError internalErrorWithDebugDescription:keyCopy];

    goto LABEL_21;
  }

  errorCopy = error;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = lsCopy;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v27 = lsCopy;
    v28 = representationCopy;
    v16 = 0;
    v17 = *v31;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        lastPathComponent = [v19 lastPathComponent];
        v21 = [lastPathComponent isEqualToString:v12];

        if (v21)
        {
          v22 = v19;

          v16 = v22;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);

    lsCopy = v27;
    representationCopy = v28;
    if (!v16)
    {
      goto LABEL_19;
    }

LABEL_15:
    error = v16;
    goto LABEL_22;
  }

LABEL_19:
  error = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_22;
  }

  v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not find url {filename: %@, key: %@, urls: %@}", v12, keyCopy, v13];
  *errorCopy = [REMError internalErrorWithDebugDescription:v24];

LABEL_21:
  error = 0;
LABEL_22:

  v25 = *MEMORY[0x1E69E9840];

  return error;
}

@end