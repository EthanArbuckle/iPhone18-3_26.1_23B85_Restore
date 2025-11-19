@interface PXUserDefaults
+ (PXUserDefaults)standardUserDefaults;
- (NSNumber)includeFromMyMac;
- (NSNumber)includeScreenshots;
- (NSNumber)includeSharedWithYou;
- (PXUserDefaults)init;
- (PXUserDefaults)initWithDataSource:(id)a3;
- (PXUserDefaultsDataSource)dataSource;
- (void)setAllPhotosAspectFit:(id)a3;
- (void)setAllPhotosColumns:(id)a3;
- (void)setAllPhotosLibraryPreferredIndividualItemsColumns:(id)a3;
- (void)setCuratedLibraryZoomLevel:(id)a3;
- (void)setDaysMarginScale:(id)a3;
- (void)setDidShowCompletedCurationFooterAnimation:(id)a3;
- (void)setDidShowCurationFooter:(id)a3;
- (void)setIncludeFromMyMac:(id)a3;
- (void)setIncludeScreenshots:(id)a3;
- (void)setIncludeSharedWithYou:(id)a3;
- (void)setInfoPanelLastSnappedPosition:(id)a3;
- (void)setInfoPanelLastSnappedWidgetIdentifier:(id)a3;
- (void)setInternalUIDisabled:(BOOL)a3;
- (void)setLastRadarPromptAnsweredQuestionCount:(id)a3;
- (void)setLastSurveyQuestionsRadarPromptDate:(id)a3;
- (void)setPhotosGridAspectFit:(id)a3;
- (void)setPhotosGridAspectFitInCompact:(id)a3;
- (void)setPhotosGridColumns:(id)a3;
- (void)setPhotosGridPreferredIndividualItemsColumns:(id)a3;
- (void)setSearchPreferredIndividualItemsColumns:(id)a3;
- (void)setSurveyQuestionsHideDate:(id)a3;
- (void)setallPhotosAspectFitInCompact:(id)a3;
@end

@implementation PXUserDefaults

+ (PXUserDefaults)standardUserDefaults
{
  if (standardUserDefaults_onceToken != -1)
  {
    dispatch_once(&standardUserDefaults_onceToken, &__block_literal_global_13664);
  }

  v3 = standardUserDefaults_standardUserDefaults;

  return v3;
}

uint64_t __38__PXUserDefaults_standardUserDefaults__block_invoke()
{
  v0 = +[PXUserDefaultsStandardDataSource sharedInstance];
  v1 = standardUserDefaults_dataSource;
  standardUserDefaults_dataSource = v0;

  v2 = [PXUserDefaults alloc];
  standardUserDefaults_standardUserDefaults = [(PXUserDefaults *)v2 initWithDataSource:standardUserDefaults_dataSource];

  return MEMORY[0x1EEE66BB8]();
}

- (NSNumber)includeSharedWithYou
{
  if (self->_includeSharedWithYou)
  {
    return self->_includeSharedWithYou;
  }

  else
  {
    return MEMORY[0x1E695E118];
  }
}

- (NSNumber)includeScreenshots
{
  if (self->_includeScreenshots)
  {
    return self->_includeScreenshots;
  }

  else
  {
    return MEMORY[0x1E695E118];
  }
}

- (NSNumber)includeFromMyMac
{
  if (self->_includeFromMyMac)
  {
    return self->_includeFromMyMac;
  }

  else
  {
    return MEMORY[0x1E695E118];
  }
}

- (PXUserDefaultsDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)setInfoPanelLastSnappedPosition:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_infoPanelLastSnappedPosition != v5)
  {
    v8 = v5;
    v5 = [(NSNumber *)v5 isEqual:?];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_infoPanelLastSnappedPosition, a3);
      v7 = [(PXUserDefaults *)self dataSource];
      [v7 setPersistedValue:self->_infoPanelLastSnappedPosition forKey:@"infoPanelLastSnappedPosition"];

      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setInfoPanelLastSnappedWidgetIdentifier:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_infoPanelLastSnappedWidgetIdentifier != v5)
  {
    v8 = v5;
    v5 = [v5 isEqual:?];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_infoPanelLastSnappedWidgetIdentifier, a3);
      v7 = [(PXUserDefaults *)self dataSource];
      [v7 setPersistedValue:self->_infoPanelLastSnappedWidgetIdentifier forKey:@"infoPanelLastSnappedWidgetIdentifier"];

      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setSurveyQuestionsHideDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_surveyQuestionsHideDate != v4)
  {
    v9 = v4;
    v4 = [(NSDate *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSDate *)v9 copy];
      surveyQuestionsHideDate = self->_surveyQuestionsHideDate;
      self->_surveyQuestionsHideDate = v6;

      v8 = [(PXUserDefaults *)self dataSource];
      [v8 setPersistedValue:self->_surveyQuestionsHideDate forKey:@"surveyQuestionsHideDate"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setLastSurveyQuestionsRadarPromptDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_lastSurveyQuestionsRadarPromptDate != v4)
  {
    v9 = v4;
    v4 = [(NSDate *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSDate *)v9 copy];
      lastSurveyQuestionsRadarPromptDate = self->_lastSurveyQuestionsRadarPromptDate;
      self->_lastSurveyQuestionsRadarPromptDate = v6;

      v8 = [(PXUserDefaults *)self dataSource];
      [v8 setPersistedValue:self->_lastSurveyQuestionsRadarPromptDate forKey:@"lastSurveyQuestionsRadarPromptDate"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setLastRadarPromptAnsweredQuestionCount:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_lastRadarPromptAnsweredQuestionCount != v4)
  {
    v9 = v4;
    v4 = [(NSNumber *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      lastRadarPromptAnsweredQuestionCount = self->_lastRadarPromptAnsweredQuestionCount;
      self->_lastRadarPromptAnsweredQuestionCount = v6;

      v8 = [(PXUserDefaults *)self dataSource];
      [v8 setPersistedValue:self->_lastRadarPromptAnsweredQuestionCount forKey:@"lastRadarPromptAnsweredQuestionCount"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setIncludeFromMyMac:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_includeFromMyMac != v4)
  {
    v9 = v4;
    v4 = [(NSNumber *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      includeFromMyMac = self->_includeFromMyMac;
      self->_includeFromMyMac = v6;

      v8 = [(PXUserDefaults *)self dataSource];
      [v8 setPersistedValue:v9 forKey:@"IncludeFromMyMac"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setIncludeSharedWithYou:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_includeSharedWithYou != v4)
  {
    v9 = v4;
    v4 = [(NSNumber *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      includeSharedWithYou = self->_includeSharedWithYou;
      self->_includeSharedWithYou = v6;

      v8 = [(PXUserDefaults *)self dataSource];
      [v8 setPersistedValue:v9 forKey:@"IncludeSharedWithYou"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setIncludeScreenshots:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_includeScreenshots != v4)
  {
    v9 = v4;
    v4 = [(NSNumber *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      includeScreenshots = self->_includeScreenshots;
      self->_includeScreenshots = v6;

      v8 = [(PXUserDefaults *)self dataSource];
      [v8 setPersistedValue:v9 forKey:@"IncludeScreenshots"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setDidShowCompletedCurationFooterAnimation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_didShowCompletedCurationFooterAnimation != v4)
  {
    v9 = v4;
    v4 = [(NSNumber *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      didShowCompletedCurationFooterAnimation = self->_didShowCompletedCurationFooterAnimation;
      self->_didShowCompletedCurationFooterAnimation = v6;

      v8 = [(PXUserDefaults *)self dataSource];
      [v8 setPersistedValue:self->_didShowCompletedCurationFooterAnimation forKey:@"didShowCompletedCurationFooterAnimation"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setDidShowCurationFooter:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_didShowCurationFooter != v4)
  {
    v9 = v4;
    v4 = [(NSNumber *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      didShowCurationFooter = self->_didShowCurationFooter;
      self->_didShowCurationFooter = v6;

      v8 = [(PXUserDefaults *)self dataSource];
      [v8 setPersistedValue:self->_didShowCurationFooter forKey:@"didShowCurationFooter"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setSearchPreferredIndividualItemsColumns:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_searchPreferredIndividualItemsColumns != v4)
  {
    v9 = v4;
    v4 = [(NSNumber *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      searchPreferredIndividualItemsColumns = self->_searchPreferredIndividualItemsColumns;
      self->_searchPreferredIndividualItemsColumns = v6;

      v8 = [(PXUserDefaults *)self dataSource];
      [v8 setPersistedValue:self->_searchPreferredIndividualItemsColumns forKey:@"searchPreferredIndividualItemsColumns"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setPhotosGridAspectFitInCompact:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_photosGridAspectFitInCompact != v4)
  {
    v9 = v4;
    v4 = [(NSNumber *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      photosGridAspectFitInCompact = self->_photosGridAspectFitInCompact;
      self->_photosGridAspectFitInCompact = v6;

      v8 = [(PXUserDefaults *)self dataSource];
      [v8 setPersistedValue:self->_photosGridAspectFitInCompact forKey:@"photosGridAspectFitInCompact"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setPhotosGridAspectFit:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_photosGridAspectFit != v4)
  {
    v9 = v4;
    v4 = [(NSNumber *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      photosGridAspectFit = self->_photosGridAspectFit;
      self->_photosGridAspectFit = v6;

      v8 = [(PXUserDefaults *)self dataSource];
      [v8 setPersistedValue:self->_photosGridAspectFit forKey:@"photosGridAspectFit"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setPhotosGridPreferredIndividualItemsColumns:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_photosGridPreferredIndividualItemsColumns != v4)
  {
    v9 = v4;
    v4 = [(NSNumber *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      photosGridPreferredIndividualItemsColumns = self->_photosGridPreferredIndividualItemsColumns;
      self->_photosGridPreferredIndividualItemsColumns = v6;

      v8 = [(PXUserDefaults *)self dataSource];
      [v8 setPersistedValue:self->_photosGridPreferredIndividualItemsColumns forKey:@"photosGridPreferredIndividualItemsColumns"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setPhotosGridColumns:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_photosGridColumns != v4)
  {
    v9 = v4;
    v4 = [(NSNumber *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(PXUserDefaults *)self dataSource];
      v7 = [(NSNumber *)v9 copy];
      photosGridColumns = self->_photosGridColumns;
      self->_photosGridColumns = v7;

      [v6 setPersistedValue:self->_photosGridColumns forKey:@"photosGridColumns"];
      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setallPhotosAspectFitInCompact:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_allPhotosAspectFitInCompact != v4)
  {
    v9 = v4;
    v4 = [(NSNumber *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      allPhotosAspectFitInCompact = self->_allPhotosAspectFitInCompact;
      self->_allPhotosAspectFitInCompact = v6;

      v8 = [(PXUserDefaults *)self dataSource];
      [v8 setPersistedValue:self->_allPhotosAspectFitInCompact forKey:@"allPhotosAspectFitInCompact"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setAllPhotosAspectFit:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_allPhotosAspectFit != v4)
  {
    v9 = v4;
    v4 = [(NSNumber *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      allPhotosAspectFit = self->_allPhotosAspectFit;
      self->_allPhotosAspectFit = v6;

      v8 = [(PXUserDefaults *)self dataSource];
      [v8 setPersistedValue:self->_allPhotosAspectFit forKey:@"allPhotosAspectFit"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setAllPhotosLibraryPreferredIndividualItemsColumns:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_allPhotosLibraryPreferredIndividualItemsColumns != v4)
  {
    v9 = v4;
    v4 = [(NSNumber *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      allPhotosLibraryPreferredIndividualItemsColumns = self->_allPhotosLibraryPreferredIndividualItemsColumns;
      self->_allPhotosLibraryPreferredIndividualItemsColumns = v6;

      v8 = [(PXUserDefaults *)self dataSource];
      [v8 setPersistedValue:self->_allPhotosLibraryPreferredIndividualItemsColumns forKey:@"allPhotosLibraryPreferredIndividualItemsColumns"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setAllPhotosColumns:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_allPhotosColumns != v4)
  {
    v9 = v4;
    v4 = [(NSNumber *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(PXUserDefaults *)self dataSource];
      v7 = [(NSNumber *)v9 copy];
      allPhotosColumns = self->_allPhotosColumns;
      self->_allPhotosColumns = v7;

      [v6 setPersistedValue:self->_allPhotosColumns forKey:@"allPhotosColumns"];
      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setDaysMarginScale:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_daysMarginScale != v4)
  {
    v9 = v4;
    v4 = [(NSNumber *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      daysMarginScale = self->_daysMarginScale;
      self->_daysMarginScale = v6;

      v8 = [(PXUserDefaults *)self dataSource];
      [v8 setPersistedValue:self->_daysMarginScale forKey:@"daysMarginScale"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setCuratedLibraryZoomLevel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_curatedLibraryZoomLevel != v4)
  {
    v9 = v4;
    v4 = [(NSNumber *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      curatedLibraryZoomLevel = self->_curatedLibraryZoomLevel;
      self->_curatedLibraryZoomLevel = v6;

      v8 = [(PXUserDefaults *)self dataSource];
      [v8 setPersistedValue:self->_curatedLibraryZoomLevel forKey:@"curatedLibraryZoomLevel"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setInternalUIDisabled:(BOOL)a3
{
  if (self->_internalUIDisabled != a3)
  {
    v4 = a3;
    self->_internalUIDisabled = a3;
    v5 = [(PXUserDefaults *)self dataSource];
    v7 = v5;
    if (v4)
    {
      v6 = MEMORY[0x1E695E118];
    }

    else
    {
      v6 = 0;
    }

    [v5 setPersistedValue:v6 forKey:@"PXInternalUIDisabled"];
  }
}

- (PXUserDefaults)initWithDataSource:(id)a3
{
  v4 = a3;
  v57.receiver = self;
  v57.super_class = PXUserDefaults;
  v5 = [(PXUserDefaults *)&v57 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
    v7 = [v4 persistedValueForKey:@"curatedLibraryInitialNavigationVersion"];
    v8 = [v7 integerValue];

    if (v8 != 2)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:2];
      [v4 setPersistedValue:v9 forKey:@"curatedLibraryInitialNavigationVersion"];

      [v4 setPersistedValue:0 forKey:@"curatedLibraryZoomLevel"];
      [v4 setPersistedValue:0 forKey:@"daysMarginScale"];
      [v4 setPersistedValue:0 forKey:@"allPhotosColumns"];
      [v4 setPersistedValue:0 forKey:@"allPhotosColumnsDate"];
      [v4 setPersistedValue:0 forKey:@"allPhotosLibraryPreferredIndividualItemsColumns"];
      [v4 setPersistedValue:0 forKey:@"allPhotosGridAspectFitInCompact"];
    }

    v10 = [v4 persistedValueForKey:@"userDefaultsPhotosGridVersion"];
    v11 = [v10 integerValue];

    if (v11 != 3)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:3];
      [v4 setPersistedValue:v12 forKey:@"userDefaultsPhotosGridVersion"];

      [v4 setPersistedValue:0 forKey:@"allPhotosAspectFit"];
      [v4 setPersistedValue:0 forKey:@"photosGridColumns"];
      [v4 setPersistedValue:0 forKey:@"photosGridPreferredIndividualItemsColumns"];
      [v4 setPersistedValue:0 forKey:@"photosGridAspectFit"];
      [v4 setPersistedValue:0 forKey:@"photosGridAspectFitInCompact"];
    }

    v13 = [v4 persistedValueForKey:@"userDefaultsSearchVersion"];
    v14 = [v13 integerValue];

    if (v14 != 1)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:1];
      [v4 setPersistedValue:v15 forKey:@"userDefaultsSearchVersion"];

      [v4 setPersistedValue:0 forKey:@"searchPreferredIndividualItemsColumns"];
    }

    v16 = [v4 persistedValueForKey:@"PXInternalUIDisabled"];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v6->_internalUIDisabled = [v17 BOOLValue];
    v18 = [v4 persistedValueForKey:@"curatedLibraryZoomLevel"];
    curatedLibraryZoomLevel = v6->_curatedLibraryZoomLevel;
    v6->_curatedLibraryZoomLevel = v18;

    v20 = [v4 persistedValueForKey:@"daysMarginScale"];
    daysMarginScale = v6->_daysMarginScale;
    v6->_daysMarginScale = v20;

    v22 = [v4 persistedValueForKey:@"allPhotosColumns"];
    allPhotosColumns = v6->_allPhotosColumns;
    v6->_allPhotosColumns = v22;

    v24 = [v4 persistedValueForKey:@"allPhotosLibraryPreferredIndividualItemsColumns"];
    allPhotosLibraryPreferredIndividualItemsColumns = v6->_allPhotosLibraryPreferredIndividualItemsColumns;
    v6->_allPhotosLibraryPreferredIndividualItemsColumns = v24;

    v26 = [v4 persistedValueForKey:@"allPhotosAspectFit"];
    allPhotosAspectFit = v6->_allPhotosAspectFit;
    v6->_allPhotosAspectFit = v26;

    v28 = [v4 persistedValueForKey:@"allPhotosAspectFitInCompact"];
    allPhotosAspectFitInCompact = v6->_allPhotosAspectFitInCompact;
    v6->_allPhotosAspectFitInCompact = v28;

    v30 = [v4 persistedValueForKey:@"photosGridColumns"];
    photosGridColumns = v6->_photosGridColumns;
    v6->_photosGridColumns = v30;

    v32 = [v4 persistedValueForKey:@"photosGridPreferredIndividualItemsColumns"];
    photosGridPreferredIndividualItemsColumns = v6->_photosGridPreferredIndividualItemsColumns;
    v6->_photosGridPreferredIndividualItemsColumns = v32;

    v34 = [v4 persistedValueForKey:@"photosGridAspectFit"];
    photosGridAspectFit = v6->_photosGridAspectFit;
    v6->_photosGridAspectFit = v34;

    v36 = [v4 persistedValueForKey:@"photosGridAspectFitInCompact"];
    photosGridAspectFitInCompact = v6->_photosGridAspectFitInCompact;
    v6->_photosGridAspectFitInCompact = v36;

    v38 = [v4 persistedValueForKey:@"searchPreferredIndividualItemsColumns"];
    searchPreferredIndividualItemsColumns = v6->_searchPreferredIndividualItemsColumns;
    v6->_searchPreferredIndividualItemsColumns = v38;

    v40 = [v4 persistedValueForKey:@"didShowCurationFooter"];
    didShowCurationFooter = v6->_didShowCurationFooter;
    v6->_didShowCurationFooter = v40;

    v42 = [v4 persistedValueForKey:@"didShowCompletedCurationFooterAnimation"];
    didShowCompletedCurationFooterAnimation = v6->_didShowCompletedCurationFooterAnimation;
    v6->_didShowCompletedCurationFooterAnimation = v42;

    v44 = [v4 persistedValueForKey:@"IncludeScreenshots"];
    includeScreenshots = v6->_includeScreenshots;
    v6->_includeScreenshots = v44;

    v46 = [v4 persistedValueForKey:@"IncludeSharedWithYou"];
    includeSharedWithYou = v6->_includeSharedWithYou;
    v6->_includeSharedWithYou = v46;

    v48 = [v4 persistedValueForKey:@"IncludeFromMyMac"];
    includeFromMyMac = v6->_includeFromMyMac;
    v6->_includeFromMyMac = v48;

    v50 = [v4 persistedValueForKey:@"lastRadarPromptAnsweredQuestionCount"];
    lastRadarPromptAnsweredQuestionCount = v6->_lastRadarPromptAnsweredQuestionCount;
    v6->_lastRadarPromptAnsweredQuestionCount = v50;

    v52 = [v4 persistedValueForKey:@"lastSurveyQuestionsRadarPromptDate"];
    lastSurveyQuestionsRadarPromptDate = v6->_lastSurveyQuestionsRadarPromptDate;
    v6->_lastSurveyQuestionsRadarPromptDate = v52;

    v54 = [v4 persistedValueForKey:@"surveyQuestionsHideDate"];
    surveyQuestionsHideDate = v6->_surveyQuestionsHideDate;
    v6->_surveyQuestionsHideDate = v54;
  }

  return v6;
}

- (PXUserDefaults)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXUserDefaults.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PXUserDefaults init]"}];

  abort();
}

@end