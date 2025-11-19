@interface REMDistributedEvaluationCollectionOptions
+ (id)_attachmentURLFromFilenameWithKey:(id)a3 inJSONRepresentation:(id)a4 attachmentURLs:(id)a5 error:(id *)a6;
+ (id)optionsFromJSONRepresentation:(id)a3 attachmentURLs:(id)a4 error:(id *)a5;
+ (id)optionsWithDefaultValues;
+ (id)optionsWithEverythingOff;
- (REMDistributedEvaluationCollectionOptions)initWithCoder:(id)a3;
- (id)_init;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMDistributedEvaluationCollectionOptions

+ (id)optionsWithDefaultValues
{
  v2 = [[a1 alloc] _init];
  [v2 setIncludeListNames:0];
  [v2 setIncludeReminderTitles:0];
  [v2 setIncludeListNameFuzzedEmbeddings:0];
  [v2 setIncludeReminderTitleFuzzedEmbeddings:0];
  [v2 setIncludeSystemLanguage:0];
  [v2 setIncludeSystemTimezone:0];
  [v2 setIncludeAccountType:0];
  [v2 setIncludeListGroupInfo:0];
  [v2 setIncludeReminderTitleSaltedHash:0];
  [v2 setIncludeDayOfWeek:0];
  [v2 setIncludeDates:0];
  [v2 setIncludeRecurrenceInfo:0];
  [v2 setIncludeLocationInfo:0];
  [v2 setIncludeAttachmentUTIs:0];
  [v2 setIncludeRemindMeWhenMessagingInfo:0];
  [v2 setIncludeAlarmDates:0];
  [v2 setIncludeSubtaskInfo:0];
  [v2 setIncludeUserActivityInfo:0];
  [v2 setIncludeIsFlagged:0];
  [v2 setIncludePriority:0];
  [v2 setRelevantWordTagsIncludeOtherWord:0];
  [v2 setDateResolutionInSeconds:10];
  [v2 setCreationDateWithinDays:0];
  [v2 setReminderTitleCategoryEmbeddingURL:0];
  [v2 setIncludeReminderTitleCategorySentence2Vec:0];
  [v2 setIncludeReminderTitleCategoryUniversalGrammar:0];
  [v2 setIncludeReminderTitleCategoryFilteredStopWords:0];
  [v2 setReminderTitleCategoryDistanceTolerance:1.0];

  return v2;
}

+ (id)optionsWithEverythingOff
{
  v2 = [[a1 alloc] _init];

  return v2;
}

+ (id)optionsFromJSONRepresentation:(id)a3 attachmentURLs:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 objectForKey:@"reminderTitleCategoryEmbeddingFilename"];

  if (v10)
  {
    v11 = [a1 _attachmentURLFromFilenameWithKey:@"reminderTitleCategoryEmbeddingFilename" inJSONRepresentation:v8 attachmentURLs:v9 error:a5];
    if (!v11)
    {
      v12 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 optionsWithDefaultValues];
  [v12 setIncludeListNames:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeListNames", objc_msgSend(v12, "includeListNames"))}];
  [v12 setIncludeListNameFuzzedEmbeddings:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeListNameFuzzedEmbeddings", objc_msgSend(v12, "includeListNameFuzzedEmbeddings"))}];
  [v12 setIncludeReminderTitles:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeReminderTitles", objc_msgSend(v12, "includeReminderTitles"))}];
  [v12 setIncludeReminderTitleFuzzedEmbeddings:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeReminderTitleFuzzedEmbeddings", objc_msgSend(v12, "includeReminderTitleFuzzedEmbeddings"))}];
  [v12 setIncludeSystemLanguage:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeSystemLanguage", objc_msgSend(v12, "includeSystemLanguage"))}];
  [v12 setIncludeSystemTimezone:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeSystemTimezone", objc_msgSend(v12, "includeSystemTimezone"))}];
  [v12 setIncludeAccountType:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeAccountType", objc_msgSend(v12, "includeAccountType"))}];
  [v12 setIncludeListGroupInfo:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeListGroupInfo", objc_msgSend(v12, "includeListGroupInfo"))}];
  [v12 setIncludeReminderTitleSaltedHash:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeReminderTitleSaltedHash", objc_msgSend(v12, "includeReminderTitleSaltedHash"))}];
  [v12 setIncludeDates:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeDates", objc_msgSend(v12, "includeDates"))}];
  [v12 setIncludeRecurrenceInfo:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeRecurrenceInfo", objc_msgSend(v12, "includeRecurrenceInfo"))}];
  [v12 setIncludeLocationInfo:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeLocationInfo", objc_msgSend(v12, "includeLocationInfo"))}];
  [v12 setIncludeAttachmentUTIs:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeAttachmentUTIs", objc_msgSend(v12, "includeAttachmentUTIs"))}];
  [v12 setIncludeRemindMeWhenMessagingInfo:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeRemindMeWhenMessagingInfo", objc_msgSend(v12, "includeRemindMeWhenMessagingInfo"))}];
  [v12 setIncludeAlarmDates:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeAlarmDates", objc_msgSend(v12, "includeAlarmDates"))}];
  [v12 setIncludeSubtaskInfo:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeSubtaskInfo", objc_msgSend(v12, "includeSubtaskInfo"))}];
  [v12 setIncludeUserActivityInfo:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeUserActivityInfo", objc_msgSend(v12, "includeUserActivityInfo"))}];
  [v12 setIncludeIsFlagged:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeIsFlagged", objc_msgSend(v12, "includeIsFlagged"))}];
  [v12 setIncludePriority:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includePriority", objc_msgSend(v12, "includePriority"))}];
  [v12 setRelevantWordTagsIncludeOtherWord:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"relevantWordTagsIncludeOtherWord", objc_msgSend(v12, "relevantWordTagsIncludeOtherWord"))}];
  [v12 setDateResolutionInSeconds:{objc_msgSend(v8, "remdes_nsuintegerForKey:defaultValue:", @"dateResolutionInSeconds", 10)}];
  [v12 setIncludeReminderTitleCategoryFilteredStopWords:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeReminderTitleCategoryFilteredStopWords", objc_msgSend(v12, "includeReminderTitleCategoryFilteredStopWords"))}];
  [v12 setIncludeReminderTitleCategoryUniversalGrammar:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeReminderTitleCategoryUniversalGrammar", objc_msgSend(v12, "includeReminderTitleCategoryUniversalGrammar"))}];
  [v12 setIncludeReminderTitleCategorySentence2Vec:{objc_msgSend(v8, "remdes_BOOLForKey:defaultValue:", @"includeReminderTitleCategorySentence2Vec", objc_msgSend(v12, "includeReminderTitleCategorySentence2Vec"))}];
  [v8 remdes_doubleForKey:@"reminderTitleCategoryDistanceTolerance" defaultValue:1.0];
  [v12 setReminderTitleCategoryDistanceTolerance:?];
  [v12 setReminderTitleCategoryEmbeddingURL:v11];

LABEL_6:

  return v12;
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

- (REMDistributedEvaluationCollectionOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMDistributedEvaluationCollectionOptions *)self _init];
  if (v5)
  {
    -[REMDistributedEvaluationCollectionOptions setIncludeListNames:](v5, "setIncludeListNames:", [v4 decodeBoolForKey:@"includeListNames"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeListNameFuzzedEmbeddings:](v5, "setIncludeListNameFuzzedEmbeddings:", [v4 decodeBoolForKey:@"includeListNameFuzzedEmbeddings"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeReminderTitles:](v5, "setIncludeReminderTitles:", [v4 decodeBoolForKey:@"includeReminderTitles"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeReminderTitleFuzzedEmbeddings:](v5, "setIncludeReminderTitleFuzzedEmbeddings:", [v4 decodeBoolForKey:@"includeReminderTitleFuzzedEmbeddings"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeSystemLanguage:](v5, "setIncludeSystemLanguage:", [v4 decodeBoolForKey:@"includeSystemLanguage"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeSystemTimezone:](v5, "setIncludeSystemTimezone:", [v4 decodeBoolForKey:@"includeSystemTimezone"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeAccountType:](v5, "setIncludeAccountType:", [v4 decodeBoolForKey:@"includeAccountType"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeListGroupInfo:](v5, "setIncludeListGroupInfo:", [v4 decodeBoolForKey:@"includeListGroupInfo"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeReminderTitleSaltedHash:](v5, "setIncludeReminderTitleSaltedHash:", [v4 decodeBoolForKey:@"includeReminderTitleSaltedHash"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeDates:](v5, "setIncludeDates:", [v4 decodeBoolForKey:@"includeDates"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeRecurrenceInfo:](v5, "setIncludeRecurrenceInfo:", [v4 decodeBoolForKey:@"includeRecurrenceInfo"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeLocationInfo:](v5, "setIncludeLocationInfo:", [v4 decodeBoolForKey:@"includeLocationInfo"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeAttachmentUTIs:](v5, "setIncludeAttachmentUTIs:", [v4 decodeBoolForKey:@"includeAttachmentUTIs"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeRemindMeWhenMessagingInfo:](v5, "setIncludeRemindMeWhenMessagingInfo:", [v4 decodeBoolForKey:@"includeRemindMeWhenMessagingInfo"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeAlarmDates:](v5, "setIncludeAlarmDates:", [v4 decodeBoolForKey:@"includeAlarmDates"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeSubtaskInfo:](v5, "setIncludeSubtaskInfo:", [v4 decodeBoolForKey:@"includeSubtaskInfo"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeUserActivityInfo:](v5, "setIncludeUserActivityInfo:", [v4 decodeBoolForKey:@"includeUserActivityInfo"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeIsFlagged:](v5, "setIncludeIsFlagged:", [v4 decodeBoolForKey:@"includeIsFlagged"]);
    -[REMDistributedEvaluationCollectionOptions setIncludePriority:](v5, "setIncludePriority:", [v4 decodeBoolForKey:@"includePriority"]);
    -[REMDistributedEvaluationCollectionOptions setRelevantWordTagsIncludeOtherWord:](v5, "setRelevantWordTagsIncludeOtherWord:", [v4 decodeBoolForKey:@"relevantWordTagsIncludeOtherWord"]);
    -[REMDistributedEvaluationCollectionOptions setDateResolutionInSeconds:](v5, "setDateResolutionInSeconds:", [v4 decodeIntegerForKey:@"dateResolutionInSeconds"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeReminderTitleCategoryFilteredStopWords:](v5, "setIncludeReminderTitleCategoryFilteredStopWords:", [v4 decodeBoolForKey:@"includeReminderTitleCategoryFilteredStopWords"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeReminderTitleCategoryUniversalGrammar:](v5, "setIncludeReminderTitleCategoryUniversalGrammar:", [v4 decodeBoolForKey:@"includeReminderTitleCategoryUniversalGrammar"]);
    -[REMDistributedEvaluationCollectionOptions setIncludeReminderTitleCategorySentence2Vec:](v5, "setIncludeReminderTitleCategorySentence2Vec:", [v4 decodeBoolForKey:@"includeReminderTitleCategorySentence2Vec"]);
    [v4 decodeDoubleForKey:@"reminderTitleCategoryDistanceTolerance"];
    [(REMDistributedEvaluationCollectionOptions *)v5 setReminderTitleCategoryDistanceTolerance:?];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reminderTitleCategoryEmbeddingURL"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 url];
      [(REMDistributedEvaluationCollectionOptions *)v5 setReminderTitleCategoryEmbeddingURL:v8];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeListNames](self forKey:{"includeListNames"), @"includeListNames"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeListNameFuzzedEmbeddings](self forKey:{"includeListNameFuzzedEmbeddings"), @"includeListNameFuzzedEmbeddings"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeReminderTitles](self forKey:{"includeReminderTitles"), @"includeReminderTitles"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeReminderTitleFuzzedEmbeddings](self forKey:{"includeReminderTitleFuzzedEmbeddings"), @"includeReminderTitleFuzzedEmbeddings"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeSystemLanguage](self forKey:{"includeSystemLanguage"), @"includeSystemLanguage"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeSystemTimezone](self forKey:{"includeSystemTimezone"), @"includeSystemTimezone"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeAccountType](self forKey:{"includeAccountType"), @"includeAccountType"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeListGroupInfo](self forKey:{"includeListGroupInfo"), @"includeListGroupInfo"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeReminderTitleSaltedHash](self forKey:{"includeReminderTitleSaltedHash"), @"includeReminderTitleSaltedHash"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeDates](self forKey:{"includeDates"), @"includeDates"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeRecurrenceInfo](self forKey:{"includeRecurrenceInfo"), @"includeRecurrenceInfo"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeLocationInfo](self forKey:{"includeLocationInfo"), @"includeLocationInfo"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeAttachmentUTIs](self forKey:{"includeAttachmentUTIs"), @"includeAttachmentUTIs"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeRemindMeWhenMessagingInfo](self forKey:{"includeRemindMeWhenMessagingInfo"), @"includeRemindMeWhenMessagingInfo"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeAlarmDates](self forKey:{"includeAlarmDates"), @"includeAlarmDates"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeSubtaskInfo](self forKey:{"includeSubtaskInfo"), @"includeSubtaskInfo"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeUserActivityInfo](self forKey:{"includeUserActivityInfo"), @"includeUserActivityInfo"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeIsFlagged](self forKey:{"includeIsFlagged"), @"includeIsFlagged"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includePriority](self forKey:{"includePriority"), @"includePriority"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions relevantWordTagsIncludeOtherWord](self forKey:{"relevantWordTagsIncludeOtherWord"), @"relevantWordTagsIncludeOtherWord"}];
  [v8 encodeInteger:-[REMDistributedEvaluationCollectionOptions dateResolutionInSeconds](self forKey:{"dateResolutionInSeconds"), @"dateResolutionInSeconds"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeReminderTitleCategoryFilteredStopWords](self forKey:{"includeReminderTitleCategoryFilteredStopWords"), @"includeReminderTitleCategoryFilteredStopWords"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeReminderTitleCategoryUniversalGrammar](self forKey:{"includeReminderTitleCategoryUniversalGrammar"), @"includeReminderTitleCategoryUniversalGrammar"}];
  [v8 encodeBool:-[REMDistributedEvaluationCollectionOptions includeReminderTitleCategorySentence2Vec](self forKey:{"includeReminderTitleCategorySentence2Vec"), @"includeReminderTitleCategorySentence2Vec"}];
  v4 = [(REMDistributedEvaluationCollectionOptions *)self reminderTitleCategoryEmbeddingURL];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AE98]);
    v6 = [(REMDistributedEvaluationCollectionOptions *)self reminderTitleCategoryEmbeddingURL];
    v7 = [v5 initWithURL:v6 readonly:1];

    [v8 encodeObject:v7 forKey:@"reminderTitleCategoryEmbeddingURL"];
  }

  [(REMDistributedEvaluationCollectionOptions *)self reminderTitleCategoryDistanceTolerance];
  [v8 encodeDouble:@"reminderTitleCategoryDistanceTolerance" forKey:?];
}

- (id)description
{
  v3 = +[REMDistributedEvaluationCollectionOptions optionsWithDefaultValues];
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p ", objc_opt_class(), self];
  v5 = [(REMDistributedEvaluationCollectionOptions *)self includeListNames];
  if (v5 != [v3 includeListNames])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeListNames", -[REMDistributedEvaluationCollectionOptions includeListNames](self, "includeListNames")];
  }

  v6 = [(REMDistributedEvaluationCollectionOptions *)self includeReminderTitles];
  if (v6 != [v3 includeReminderTitles])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeReminderTitles", -[REMDistributedEvaluationCollectionOptions includeReminderTitles](self, "includeReminderTitles")];
  }

  v7 = [(REMDistributedEvaluationCollectionOptions *)self includeSystemLanguage];
  if (v7 != [v3 includeSystemLanguage])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeSystemLanguage", -[REMDistributedEvaluationCollectionOptions includeSystemLanguage](self, "includeSystemLanguage")];
  }

  v8 = [(REMDistributedEvaluationCollectionOptions *)self includeSystemTimezone];
  if (v8 != [v3 includeSystemTimezone])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeSystemTimezone", -[REMDistributedEvaluationCollectionOptions includeSystemTimezone](self, "includeSystemTimezone")];
  }

  v9 = [(REMDistributedEvaluationCollectionOptions *)self includeAccountType];
  if (v9 != [v3 includeAccountType])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeAccountType", -[REMDistributedEvaluationCollectionOptions includeAccountType](self, "includeAccountType")];
  }

  v10 = [(REMDistributedEvaluationCollectionOptions *)self includeListGroupInfo];
  if (v10 != [v3 includeListGroupInfo])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeListGroupInfo", -[REMDistributedEvaluationCollectionOptions includeListGroupInfo](self, "includeListGroupInfo")];
  }

  v11 = [(REMDistributedEvaluationCollectionOptions *)self includeListNameFuzzedEmbeddings];
  if (v11 != [v3 includeListNameFuzzedEmbeddings])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeListNameFuzzedEmbeddings", -[REMDistributedEvaluationCollectionOptions includeListNameFuzzedEmbeddings](self, "includeListNameFuzzedEmbeddings")];
  }

  v12 = [(REMDistributedEvaluationCollectionOptions *)self includeReminderTitleFuzzedEmbeddings];
  if (v12 != [v3 includeReminderTitleFuzzedEmbeddings])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeReminderTitleFuzzedEmbeddings", -[REMDistributedEvaluationCollectionOptions includeReminderTitleFuzzedEmbeddings](self, "includeReminderTitleFuzzedEmbeddings")];
  }

  v13 = [(REMDistributedEvaluationCollectionOptions *)self includeReminderTitleSaltedHash];
  if (v13 != [v3 includeReminderTitleSaltedHash])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeReminderTitleSaltedHash", -[REMDistributedEvaluationCollectionOptions includeReminderTitleSaltedHash](self, "includeReminderTitleSaltedHash")];
  }

  v14 = [(REMDistributedEvaluationCollectionOptions *)self includeDates];
  if (v14 != [v3 includeDates])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeDates", -[REMDistributedEvaluationCollectionOptions includeDates](self, "includeDates")];
  }

  v15 = [(REMDistributedEvaluationCollectionOptions *)self includeRecurrenceInfo];
  if (v15 != [v3 includeRecurrenceInfo])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeRecurrenceInfo", -[REMDistributedEvaluationCollectionOptions includeRecurrenceInfo](self, "includeRecurrenceInfo")];
  }

  v16 = [(REMDistributedEvaluationCollectionOptions *)self includeLocationInfo];
  if (v16 != [v3 includeLocationInfo])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeLocationInfo", -[REMDistributedEvaluationCollectionOptions includeLocationInfo](self, "includeLocationInfo")];
  }

  v17 = [(REMDistributedEvaluationCollectionOptions *)self includeAttachmentUTIs];
  if (v17 != [v3 includeAttachmentUTIs])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeAttachmentUTIs", -[REMDistributedEvaluationCollectionOptions includeAttachmentUTIs](self, "includeAttachmentUTIs")];
  }

  v18 = [(REMDistributedEvaluationCollectionOptions *)self includeRemindMeWhenMessagingInfo];
  if (v18 != [v3 includeRemindMeWhenMessagingInfo])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeRemindMeWhenMessagingInfo", -[REMDistributedEvaluationCollectionOptions includeRemindMeWhenMessagingInfo](self, "includeRemindMeWhenMessagingInfo")];
  }

  v19 = [(REMDistributedEvaluationCollectionOptions *)self includeAlarmDates];
  if (v19 != [v3 includeAlarmDates])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeAlarmDates", -[REMDistributedEvaluationCollectionOptions includeAlarmDates](self, "includeAlarmDates")];
  }

  v20 = [(REMDistributedEvaluationCollectionOptions *)self includeSubtaskInfo];
  if (v20 != [v3 includeSubtaskInfo])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeSubtaskInfo", -[REMDistributedEvaluationCollectionOptions includeSubtaskInfo](self, "includeSubtaskInfo")];
  }

  v21 = [(REMDistributedEvaluationCollectionOptions *)self includeUserActivityInfo];
  if (v21 != [v3 includeUserActivityInfo])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeUserActivityInfo", -[REMDistributedEvaluationCollectionOptions includeUserActivityInfo](self, "includeUserActivityInfo")];
  }

  v22 = [(REMDistributedEvaluationCollectionOptions *)self includeIsFlagged];
  if (v22 != [v3 includeIsFlagged])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeIsFlagged", -[REMDistributedEvaluationCollectionOptions includeIsFlagged](self, "includeIsFlagged")];
  }

  v23 = [(REMDistributedEvaluationCollectionOptions *)self includePriority];
  if (v23 != [v3 includePriority])
  {
    [v4 appendFormat:@"%@:%ld ", @"includePriority", -[REMDistributedEvaluationCollectionOptions includePriority](self, "includePriority")];
  }

  v24 = [(REMDistributedEvaluationCollectionOptions *)self relevantWordTagsIncludeOtherWord];
  if (v24 != [v3 relevantWordTagsIncludeOtherWord])
  {
    [v4 appendFormat:@"%@:%ld ", @"relevantWordTagsIncludeOtherWord", -[REMDistributedEvaluationCollectionOptions relevantWordTagsIncludeOtherWord](self, "relevantWordTagsIncludeOtherWord")];
  }

  v25 = [(REMDistributedEvaluationCollectionOptions *)self dateResolutionInSeconds];
  if (v25 != [v3 dateResolutionInSeconds])
  {
    [v4 appendFormat:@"%@:%ld ", @"dateResolutionInSeconds", -[REMDistributedEvaluationCollectionOptions dateResolutionInSeconds](self, "dateResolutionInSeconds")];
  }

  v26 = [(REMDistributedEvaluationCollectionOptions *)self includeReminderTitleCategoryFilteredStopWords];
  if (v26 != [v3 includeReminderTitleCategoryFilteredStopWords])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeReminderTitleCategoryFilteredStopWords", -[REMDistributedEvaluationCollectionOptions includeReminderTitleCategoryFilteredStopWords](self, "includeReminderTitleCategoryFilteredStopWords")];
  }

  v27 = [(REMDistributedEvaluationCollectionOptions *)self includeReminderTitleCategoryUniversalGrammar];
  if (v27 != [v3 includeReminderTitleCategoryUniversalGrammar])
  {
    [v4 appendFormat:@"%@:%ld ", @"includeReminderTitleCategoryUniversalGrammar", -[REMDistributedEvaluationCollectionOptions includeReminderTitleCategoryUniversalGrammar](self, "includeReminderTitleCategoryUniversalGrammar")];
  }

  v28 = [(REMDistributedEvaluationCollectionOptions *)self includeReminderTitleCategorySentence2Vec];
  if (v28 != [v3 includeReminderTitleCategorySentence2Vec])
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

  v34 = [(REMDistributedEvaluationCollectionOptions *)self reminderTitleCategoryEmbeddingURL];

  if (v34)
  {
    v35 = [(REMDistributedEvaluationCollectionOptions *)self reminderTitleCategoryEmbeddingURL];
    [v4 appendFormat:@"%@:%@ ", @"reminderTitleCategoryEmbeddingURL", v35];
  }

  [v4 appendString:@">"];

  return v4;
}

+ (id)_attachmentURLFromFilenameWithKey:(id)a3 inJSONRepresentation:(id)a4 attachmentURLs:(id)a5 error:(id *)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 objectForKey:v9];
  if (!v12)
  {
    v16 = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a6)
    {
      goto LABEL_22;
    }

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected type for fileame {filename: %@, key: %@}", v12, v9];
    *a6 = [REMError internalErrorWithDebugDescription:v23];

    goto LABEL_21;
  }

  v29 = a6;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v27 = v11;
    v28 = v10;
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
        v20 = [v19 lastPathComponent];
        v21 = [v20 isEqualToString:v12];

        if (v21)
        {
          v22 = v19;

          v16 = v22;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);

    v11 = v27;
    v10 = v28;
    if (!v16)
    {
      goto LABEL_19;
    }

LABEL_15:
    a6 = v16;
    goto LABEL_22;
  }

LABEL_19:
  a6 = v29;
  if (!v29)
  {
    goto LABEL_22;
  }

  v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not find url {filename: %@, key: %@, urls: %@}", v12, v9, v13];
  *v29 = [REMError internalErrorWithDebugDescription:v24];

LABEL_21:
  a6 = 0;
LABEL_22:

  v25 = *MEMORY[0x1E69E9840];

  return a6;
}

@end