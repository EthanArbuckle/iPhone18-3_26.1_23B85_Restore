@interface PXSurveyQuestionsHorizontalGadgetProviderConfiguration
+ (PXSurveyQuestionsHorizontalGadgetProviderConfiguration)generalConfiguration;
- (NSString)hideDateDefaultsKey;
- (NSString)hideForeverAlertMessage;
- (NSString)identifier;
- (NSString)infoAlertMessage;
- (NSString)infoAlertTitle;
- (NSString)radarPromptAnsweredQuestionCountDefaultsKey;
- (NSString)radarPromptDateDefaultsKey;
- (NSString)sectionTitle;
- (PXRadarConfiguration)radarConfiguration;
- (PXSurveyQuestionsHorizontalGadgetProviderConfiguration)init;
- (id)_initWithCategory:(int64_t)category gadgetProvider:(id)provider;
@end

@implementation PXSurveyQuestionsHorizontalGadgetProviderConfiguration

- (PXRadarConfiguration)radarConfiguration
{
  if (self->_category)
  {
    v3 = 0;
  }

  else
  {
    v3 = PXSurveyQuestionRadarConfiguration(@"Photos Challenge Submission", MEMORY[0x1E695E0F0]);
  }

  return v3;
}

- (NSString)sectionTitle
{
  if (self->_category)
  {
    v3 = 0;
  }

  else
  {
    v3 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeSectionTitle_General", @"PhotosUICore");
  }

  return v3;
}

- (NSString)hideDateDefaultsKey
{
  if (self->_category)
  {
    v3 = 0;
  }

  else
  {
    v3 = NSStringFromSelector(sel_surveyQuestionsHideDate);
  }

  return v3;
}

- (NSString)radarPromptDateDefaultsKey
{
  if (self->_category)
  {
    v3 = 0;
  }

  else
  {
    v3 = NSStringFromSelector(sel_lastSurveyQuestionsRadarPromptDate);
  }

  return v3;
}

- (NSString)radarPromptAnsweredQuestionCountDefaultsKey
{
  if (self->_category)
  {
    v3 = 0;
  }

  else
  {
    v3 = NSStringFromSelector(sel_lastRadarPromptAnsweredQuestionCount);
  }

  return v3;
}

- (NSString)hideForeverAlertMessage
{
  if (self->_category)
  {
    v3 = 0;
  }

  else
  {
    v3 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeHideForeverActionMessage_General", @"PhotosUICore");
  }

  return v3;
}

- (NSString)infoAlertMessage
{
  if (self->_category)
  {
    v3 = 0;
  }

  else
  {
    v3 = PXLocalizedStringFromTable(@"SURVEY_QUESTIONS_PHOTOS_WELCOME_BODY_GENERAL", @"PhotosUICore");
  }

  return v3;
}

- (NSString)infoAlertTitle
{
  if (self->_category)
  {
    v3 = 0;
  }

  else
  {
    v3 = PXLocalizedStringFromTable(@"SURVEY_QUESTIONS_PHOTOS_WELCOME_TITLE_GENERAL", @"PhotosUICore");
  }

  return v3;
}

- (NSString)identifier
{
  if (self->_category)
  {
    return 0;
  }

  else
  {
    return @"PXSurveyQuestionsHorizontalGadgetProviderConfiguration:General";
  }
}

- (id)_initWithCategory:(int64_t)category gadgetProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionsHorizontalGadgetProviderConfiguration.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"gadgetProvider"}];
  }

  v13.receiver = self;
  v13.super_class = PXSurveyQuestionsHorizontalGadgetProviderConfiguration;
  v9 = [(PXSurveyQuestionsHorizontalGadgetProviderConfiguration *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_category = category;
    objc_storeStrong(&v9->_gadgetProvider, provider);
  }

  return v10;
}

- (PXSurveyQuestionsHorizontalGadgetProviderConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionsHorizontalGadgetProviderConfiguration.m" lineNumber:68 description:{@"%s is not available as initializer", "-[PXSurveyQuestionsHorizontalGadgetProviderConfiguration init]"}];

  abort();
}

+ (PXSurveyQuestionsHorizontalGadgetProviderConfiguration)generalConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"type == %d", 9];
  v5 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v4];
  [v3 addObject:v5];

  v6 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3];

  v7 = v6;
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  if (px_deprecated_appPhotoLibrary)
  {
    v9 = [[PXSurveyQuestionsDataSource alloc] initWithPhotoLibrary:px_deprecated_appPhotoLibrary predicate:v7];
    v10 = [[PXSurveyQuestionsGadgetProvider alloc] initWithDataSource:v9 gadgetType:1];
  }

  else
  {
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Failed to open the app photo library", buf, 2u);
    }

    v10 = 0;
  }

  if (v10)
  {
    v12 = [[self alloc] _initWithCategory:0 gadgetProvider:v10];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end