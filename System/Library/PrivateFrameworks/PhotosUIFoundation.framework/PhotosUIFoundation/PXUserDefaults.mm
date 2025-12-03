@interface PXUserDefaults
+ (PXUserDefaults)standardUserDefaults;
- (NSNumber)includeFromMyMac;
- (NSNumber)includeScreenshots;
- (NSNumber)includeSharedWithYou;
- (PXUserDefaults)init;
- (PXUserDefaults)initWithDataSource:(id)source;
- (PXUserDefaultsDataSource)dataSource;
- (void)setAllPhotosAspectFit:(id)fit;
- (void)setAllPhotosColumns:(id)columns;
- (void)setAllPhotosLibraryPreferredIndividualItemsColumns:(id)columns;
- (void)setCuratedLibraryZoomLevel:(id)level;
- (void)setDaysMarginScale:(id)scale;
- (void)setDidShowCompletedCurationFooterAnimation:(id)animation;
- (void)setDidShowCurationFooter:(id)footer;
- (void)setIncludeFromMyMac:(id)mac;
- (void)setIncludeScreenshots:(id)screenshots;
- (void)setIncludeSharedWithYou:(id)you;
- (void)setInfoPanelLastSnappedPosition:(id)position;
- (void)setInfoPanelLastSnappedWidgetIdentifier:(id)identifier;
- (void)setInternalUIDisabled:(BOOL)disabled;
- (void)setLastRadarPromptAnsweredQuestionCount:(id)count;
- (void)setLastSurveyQuestionsRadarPromptDate:(id)date;
- (void)setPhotosGridAspectFit:(id)fit;
- (void)setPhotosGridAspectFitInCompact:(id)compact;
- (void)setPhotosGridColumns:(id)columns;
- (void)setPhotosGridPreferredIndividualItemsColumns:(id)columns;
- (void)setSearchPreferredIndividualItemsColumns:(id)columns;
- (void)setSurveyQuestionsHideDate:(id)date;
- (void)setallPhotosAspectFitInCompact:(id)compact;
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

- (void)setInfoPanelLastSnappedPosition:(id)position
{
  positionCopy = position;
  v6 = positionCopy;
  if (self->_infoPanelLastSnappedPosition != positionCopy)
  {
    v8 = positionCopy;
    positionCopy = [(NSNumber *)positionCopy isEqual:?];
    v6 = v8;
    if ((positionCopy & 1) == 0)
    {
      objc_storeStrong(&self->_infoPanelLastSnappedPosition, position);
      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:self->_infoPanelLastSnappedPosition forKey:@"infoPanelLastSnappedPosition"];

      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](positionCopy, v6);
}

- (void)setInfoPanelLastSnappedWidgetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (self->_infoPanelLastSnappedWidgetIdentifier != identifierCopy)
  {
    v8 = identifierCopy;
    identifierCopy = [identifierCopy isEqual:?];
    v6 = v8;
    if ((identifierCopy & 1) == 0)
    {
      objc_storeStrong(&self->_infoPanelLastSnappedWidgetIdentifier, identifier);
      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:self->_infoPanelLastSnappedWidgetIdentifier forKey:@"infoPanelLastSnappedWidgetIdentifier"];

      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](identifierCopy, v6);
}

- (void)setSurveyQuestionsHideDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (self->_surveyQuestionsHideDate != dateCopy)
  {
    v9 = dateCopy;
    dateCopy = [(NSDate *)dateCopy isEqual:?];
    v5 = v9;
    if ((dateCopy & 1) == 0)
    {
      v6 = [(NSDate *)v9 copy];
      surveyQuestionsHideDate = self->_surveyQuestionsHideDate;
      self->_surveyQuestionsHideDate = v6;

      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:self->_surveyQuestionsHideDate forKey:@"surveyQuestionsHideDate"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](dateCopy, v5);
}

- (void)setLastSurveyQuestionsRadarPromptDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (self->_lastSurveyQuestionsRadarPromptDate != dateCopy)
  {
    v9 = dateCopy;
    dateCopy = [(NSDate *)dateCopy isEqual:?];
    v5 = v9;
    if ((dateCopy & 1) == 0)
    {
      v6 = [(NSDate *)v9 copy];
      lastSurveyQuestionsRadarPromptDate = self->_lastSurveyQuestionsRadarPromptDate;
      self->_lastSurveyQuestionsRadarPromptDate = v6;

      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:self->_lastSurveyQuestionsRadarPromptDate forKey:@"lastSurveyQuestionsRadarPromptDate"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](dateCopy, v5);
}

- (void)setLastRadarPromptAnsweredQuestionCount:(id)count
{
  countCopy = count;
  v5 = countCopy;
  if (self->_lastRadarPromptAnsweredQuestionCount != countCopy)
  {
    v9 = countCopy;
    countCopy = [(NSNumber *)countCopy isEqual:?];
    v5 = v9;
    if ((countCopy & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      lastRadarPromptAnsweredQuestionCount = self->_lastRadarPromptAnsweredQuestionCount;
      self->_lastRadarPromptAnsweredQuestionCount = v6;

      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:self->_lastRadarPromptAnsweredQuestionCount forKey:@"lastRadarPromptAnsweredQuestionCount"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](countCopy, v5);
}

- (void)setIncludeFromMyMac:(id)mac
{
  macCopy = mac;
  v5 = macCopy;
  if (self->_includeFromMyMac != macCopy)
  {
    v9 = macCopy;
    macCopy = [(NSNumber *)macCopy isEqual:?];
    v5 = v9;
    if ((macCopy & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      includeFromMyMac = self->_includeFromMyMac;
      self->_includeFromMyMac = v6;

      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:v9 forKey:@"IncludeFromMyMac"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](macCopy, v5);
}

- (void)setIncludeSharedWithYou:(id)you
{
  youCopy = you;
  v5 = youCopy;
  if (self->_includeSharedWithYou != youCopy)
  {
    v9 = youCopy;
    youCopy = [(NSNumber *)youCopy isEqual:?];
    v5 = v9;
    if ((youCopy & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      includeSharedWithYou = self->_includeSharedWithYou;
      self->_includeSharedWithYou = v6;

      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:v9 forKey:@"IncludeSharedWithYou"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](youCopy, v5);
}

- (void)setIncludeScreenshots:(id)screenshots
{
  screenshotsCopy = screenshots;
  v5 = screenshotsCopy;
  if (self->_includeScreenshots != screenshotsCopy)
  {
    v9 = screenshotsCopy;
    screenshotsCopy = [(NSNumber *)screenshotsCopy isEqual:?];
    v5 = v9;
    if ((screenshotsCopy & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      includeScreenshots = self->_includeScreenshots;
      self->_includeScreenshots = v6;

      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:v9 forKey:@"IncludeScreenshots"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](screenshotsCopy, v5);
}

- (void)setDidShowCompletedCurationFooterAnimation:(id)animation
{
  animationCopy = animation;
  v5 = animationCopy;
  if (self->_didShowCompletedCurationFooterAnimation != animationCopy)
  {
    v9 = animationCopy;
    animationCopy = [(NSNumber *)animationCopy isEqual:?];
    v5 = v9;
    if ((animationCopy & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      didShowCompletedCurationFooterAnimation = self->_didShowCompletedCurationFooterAnimation;
      self->_didShowCompletedCurationFooterAnimation = v6;

      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:self->_didShowCompletedCurationFooterAnimation forKey:@"didShowCompletedCurationFooterAnimation"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](animationCopy, v5);
}

- (void)setDidShowCurationFooter:(id)footer
{
  footerCopy = footer;
  v5 = footerCopy;
  if (self->_didShowCurationFooter != footerCopy)
  {
    v9 = footerCopy;
    footerCopy = [(NSNumber *)footerCopy isEqual:?];
    v5 = v9;
    if ((footerCopy & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      didShowCurationFooter = self->_didShowCurationFooter;
      self->_didShowCurationFooter = v6;

      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:self->_didShowCurationFooter forKey:@"didShowCurationFooter"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](footerCopy, v5);
}

- (void)setSearchPreferredIndividualItemsColumns:(id)columns
{
  columnsCopy = columns;
  v5 = columnsCopy;
  if (self->_searchPreferredIndividualItemsColumns != columnsCopy)
  {
    v9 = columnsCopy;
    columnsCopy = [(NSNumber *)columnsCopy isEqual:?];
    v5 = v9;
    if ((columnsCopy & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      searchPreferredIndividualItemsColumns = self->_searchPreferredIndividualItemsColumns;
      self->_searchPreferredIndividualItemsColumns = v6;

      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:self->_searchPreferredIndividualItemsColumns forKey:@"searchPreferredIndividualItemsColumns"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](columnsCopy, v5);
}

- (void)setPhotosGridAspectFitInCompact:(id)compact
{
  compactCopy = compact;
  v5 = compactCopy;
  if (self->_photosGridAspectFitInCompact != compactCopy)
  {
    v9 = compactCopy;
    compactCopy = [(NSNumber *)compactCopy isEqual:?];
    v5 = v9;
    if ((compactCopy & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      photosGridAspectFitInCompact = self->_photosGridAspectFitInCompact;
      self->_photosGridAspectFitInCompact = v6;

      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:self->_photosGridAspectFitInCompact forKey:@"photosGridAspectFitInCompact"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](compactCopy, v5);
}

- (void)setPhotosGridAspectFit:(id)fit
{
  fitCopy = fit;
  v5 = fitCopy;
  if (self->_photosGridAspectFit != fitCopy)
  {
    v9 = fitCopy;
    fitCopy = [(NSNumber *)fitCopy isEqual:?];
    v5 = v9;
    if ((fitCopy & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      photosGridAspectFit = self->_photosGridAspectFit;
      self->_photosGridAspectFit = v6;

      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:self->_photosGridAspectFit forKey:@"photosGridAspectFit"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](fitCopy, v5);
}

- (void)setPhotosGridPreferredIndividualItemsColumns:(id)columns
{
  columnsCopy = columns;
  v5 = columnsCopy;
  if (self->_photosGridPreferredIndividualItemsColumns != columnsCopy)
  {
    v9 = columnsCopy;
    columnsCopy = [(NSNumber *)columnsCopy isEqual:?];
    v5 = v9;
    if ((columnsCopy & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      photosGridPreferredIndividualItemsColumns = self->_photosGridPreferredIndividualItemsColumns;
      self->_photosGridPreferredIndividualItemsColumns = v6;

      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:self->_photosGridPreferredIndividualItemsColumns forKey:@"photosGridPreferredIndividualItemsColumns"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](columnsCopy, v5);
}

- (void)setPhotosGridColumns:(id)columns
{
  columnsCopy = columns;
  v5 = columnsCopy;
  if (self->_photosGridColumns != columnsCopy)
  {
    v9 = columnsCopy;
    columnsCopy = [(NSNumber *)columnsCopy isEqual:?];
    v5 = v9;
    if ((columnsCopy & 1) == 0)
    {
      dataSource = [(PXUserDefaults *)self dataSource];
      v7 = [(NSNumber *)v9 copy];
      photosGridColumns = self->_photosGridColumns;
      self->_photosGridColumns = v7;

      [dataSource setPersistedValue:self->_photosGridColumns forKey:@"photosGridColumns"];
      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](columnsCopy, v5);
}

- (void)setallPhotosAspectFitInCompact:(id)compact
{
  compactCopy = compact;
  v5 = compactCopy;
  if (self->_allPhotosAspectFitInCompact != compactCopy)
  {
    v9 = compactCopy;
    compactCopy = [(NSNumber *)compactCopy isEqual:?];
    v5 = v9;
    if ((compactCopy & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      allPhotosAspectFitInCompact = self->_allPhotosAspectFitInCompact;
      self->_allPhotosAspectFitInCompact = v6;

      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:self->_allPhotosAspectFitInCompact forKey:@"allPhotosAspectFitInCompact"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](compactCopy, v5);
}

- (void)setAllPhotosAspectFit:(id)fit
{
  fitCopy = fit;
  v5 = fitCopy;
  if (self->_allPhotosAspectFit != fitCopy)
  {
    v9 = fitCopy;
    fitCopy = [(NSNumber *)fitCopy isEqual:?];
    v5 = v9;
    if ((fitCopy & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      allPhotosAspectFit = self->_allPhotosAspectFit;
      self->_allPhotosAspectFit = v6;

      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:self->_allPhotosAspectFit forKey:@"allPhotosAspectFit"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](fitCopy, v5);
}

- (void)setAllPhotosLibraryPreferredIndividualItemsColumns:(id)columns
{
  columnsCopy = columns;
  v5 = columnsCopy;
  if (self->_allPhotosLibraryPreferredIndividualItemsColumns != columnsCopy)
  {
    v9 = columnsCopy;
    columnsCopy = [(NSNumber *)columnsCopy isEqual:?];
    v5 = v9;
    if ((columnsCopy & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      allPhotosLibraryPreferredIndividualItemsColumns = self->_allPhotosLibraryPreferredIndividualItemsColumns;
      self->_allPhotosLibraryPreferredIndividualItemsColumns = v6;

      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:self->_allPhotosLibraryPreferredIndividualItemsColumns forKey:@"allPhotosLibraryPreferredIndividualItemsColumns"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](columnsCopy, v5);
}

- (void)setAllPhotosColumns:(id)columns
{
  columnsCopy = columns;
  v5 = columnsCopy;
  if (self->_allPhotosColumns != columnsCopy)
  {
    v9 = columnsCopy;
    columnsCopy = [(NSNumber *)columnsCopy isEqual:?];
    v5 = v9;
    if ((columnsCopy & 1) == 0)
    {
      dataSource = [(PXUserDefaults *)self dataSource];
      v7 = [(NSNumber *)v9 copy];
      allPhotosColumns = self->_allPhotosColumns;
      self->_allPhotosColumns = v7;

      [dataSource setPersistedValue:self->_allPhotosColumns forKey:@"allPhotosColumns"];
      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](columnsCopy, v5);
}

- (void)setDaysMarginScale:(id)scale
{
  scaleCopy = scale;
  v5 = scaleCopy;
  if (self->_daysMarginScale != scaleCopy)
  {
    v9 = scaleCopy;
    scaleCopy = [(NSNumber *)scaleCopy isEqual:?];
    v5 = v9;
    if ((scaleCopy & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      daysMarginScale = self->_daysMarginScale;
      self->_daysMarginScale = v6;

      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:self->_daysMarginScale forKey:@"daysMarginScale"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](scaleCopy, v5);
}

- (void)setCuratedLibraryZoomLevel:(id)level
{
  levelCopy = level;
  v5 = levelCopy;
  if (self->_curatedLibraryZoomLevel != levelCopy)
  {
    v9 = levelCopy;
    levelCopy = [(NSNumber *)levelCopy isEqual:?];
    v5 = v9;
    if ((levelCopy & 1) == 0)
    {
      v6 = [(NSNumber *)v9 copy];
      curatedLibraryZoomLevel = self->_curatedLibraryZoomLevel;
      self->_curatedLibraryZoomLevel = v6;

      dataSource = [(PXUserDefaults *)self dataSource];
      [dataSource setPersistedValue:self->_curatedLibraryZoomLevel forKey:@"curatedLibraryZoomLevel"];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](levelCopy, v5);
}

- (void)setInternalUIDisabled:(BOOL)disabled
{
  if (self->_internalUIDisabled != disabled)
  {
    disabledCopy = disabled;
    self->_internalUIDisabled = disabled;
    dataSource = [(PXUserDefaults *)self dataSource];
    v7 = dataSource;
    if (disabledCopy)
    {
      v6 = MEMORY[0x1E695E118];
    }

    else
    {
      v6 = 0;
    }

    [dataSource setPersistedValue:v6 forKey:@"PXInternalUIDisabled"];
  }
}

- (PXUserDefaults)initWithDataSource:(id)source
{
  sourceCopy = source;
  v57.receiver = self;
  v57.super_class = PXUserDefaults;
  v5 = [(PXUserDefaults *)&v57 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
    v7 = [sourceCopy persistedValueForKey:@"curatedLibraryInitialNavigationVersion"];
    integerValue = [v7 integerValue];

    if (integerValue != 2)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:2];
      [sourceCopy setPersistedValue:v9 forKey:@"curatedLibraryInitialNavigationVersion"];

      [sourceCopy setPersistedValue:0 forKey:@"curatedLibraryZoomLevel"];
      [sourceCopy setPersistedValue:0 forKey:@"daysMarginScale"];
      [sourceCopy setPersistedValue:0 forKey:@"allPhotosColumns"];
      [sourceCopy setPersistedValue:0 forKey:@"allPhotosColumnsDate"];
      [sourceCopy setPersistedValue:0 forKey:@"allPhotosLibraryPreferredIndividualItemsColumns"];
      [sourceCopy setPersistedValue:0 forKey:@"allPhotosGridAspectFitInCompact"];
    }

    v10 = [sourceCopy persistedValueForKey:@"userDefaultsPhotosGridVersion"];
    integerValue2 = [v10 integerValue];

    if (integerValue2 != 3)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:3];
      [sourceCopy setPersistedValue:v12 forKey:@"userDefaultsPhotosGridVersion"];

      [sourceCopy setPersistedValue:0 forKey:@"allPhotosAspectFit"];
      [sourceCopy setPersistedValue:0 forKey:@"photosGridColumns"];
      [sourceCopy setPersistedValue:0 forKey:@"photosGridPreferredIndividualItemsColumns"];
      [sourceCopy setPersistedValue:0 forKey:@"photosGridAspectFit"];
      [sourceCopy setPersistedValue:0 forKey:@"photosGridAspectFitInCompact"];
    }

    v13 = [sourceCopy persistedValueForKey:@"userDefaultsSearchVersion"];
    integerValue3 = [v13 integerValue];

    if (integerValue3 != 1)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:1];
      [sourceCopy setPersistedValue:v15 forKey:@"userDefaultsSearchVersion"];

      [sourceCopy setPersistedValue:0 forKey:@"searchPreferredIndividualItemsColumns"];
    }

    v16 = [sourceCopy persistedValueForKey:@"PXInternalUIDisabled"];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v6->_internalUIDisabled = [v17 BOOLValue];
    v18 = [sourceCopy persistedValueForKey:@"curatedLibraryZoomLevel"];
    curatedLibraryZoomLevel = v6->_curatedLibraryZoomLevel;
    v6->_curatedLibraryZoomLevel = v18;

    v20 = [sourceCopy persistedValueForKey:@"daysMarginScale"];
    daysMarginScale = v6->_daysMarginScale;
    v6->_daysMarginScale = v20;

    v22 = [sourceCopy persistedValueForKey:@"allPhotosColumns"];
    allPhotosColumns = v6->_allPhotosColumns;
    v6->_allPhotosColumns = v22;

    v24 = [sourceCopy persistedValueForKey:@"allPhotosLibraryPreferredIndividualItemsColumns"];
    allPhotosLibraryPreferredIndividualItemsColumns = v6->_allPhotosLibraryPreferredIndividualItemsColumns;
    v6->_allPhotosLibraryPreferredIndividualItemsColumns = v24;

    v26 = [sourceCopy persistedValueForKey:@"allPhotosAspectFit"];
    allPhotosAspectFit = v6->_allPhotosAspectFit;
    v6->_allPhotosAspectFit = v26;

    v28 = [sourceCopy persistedValueForKey:@"allPhotosAspectFitInCompact"];
    allPhotosAspectFitInCompact = v6->_allPhotosAspectFitInCompact;
    v6->_allPhotosAspectFitInCompact = v28;

    v30 = [sourceCopy persistedValueForKey:@"photosGridColumns"];
    photosGridColumns = v6->_photosGridColumns;
    v6->_photosGridColumns = v30;

    v32 = [sourceCopy persistedValueForKey:@"photosGridPreferredIndividualItemsColumns"];
    photosGridPreferredIndividualItemsColumns = v6->_photosGridPreferredIndividualItemsColumns;
    v6->_photosGridPreferredIndividualItemsColumns = v32;

    v34 = [sourceCopy persistedValueForKey:@"photosGridAspectFit"];
    photosGridAspectFit = v6->_photosGridAspectFit;
    v6->_photosGridAspectFit = v34;

    v36 = [sourceCopy persistedValueForKey:@"photosGridAspectFitInCompact"];
    photosGridAspectFitInCompact = v6->_photosGridAspectFitInCompact;
    v6->_photosGridAspectFitInCompact = v36;

    v38 = [sourceCopy persistedValueForKey:@"searchPreferredIndividualItemsColumns"];
    searchPreferredIndividualItemsColumns = v6->_searchPreferredIndividualItemsColumns;
    v6->_searchPreferredIndividualItemsColumns = v38;

    v40 = [sourceCopy persistedValueForKey:@"didShowCurationFooter"];
    didShowCurationFooter = v6->_didShowCurationFooter;
    v6->_didShowCurationFooter = v40;

    v42 = [sourceCopy persistedValueForKey:@"didShowCompletedCurationFooterAnimation"];
    didShowCompletedCurationFooterAnimation = v6->_didShowCompletedCurationFooterAnimation;
    v6->_didShowCompletedCurationFooterAnimation = v42;

    v44 = [sourceCopy persistedValueForKey:@"IncludeScreenshots"];
    includeScreenshots = v6->_includeScreenshots;
    v6->_includeScreenshots = v44;

    v46 = [sourceCopy persistedValueForKey:@"IncludeSharedWithYou"];
    includeSharedWithYou = v6->_includeSharedWithYou;
    v6->_includeSharedWithYou = v46;

    v48 = [sourceCopy persistedValueForKey:@"IncludeFromMyMac"];
    includeFromMyMac = v6->_includeFromMyMac;
    v6->_includeFromMyMac = v48;

    v50 = [sourceCopy persistedValueForKey:@"lastRadarPromptAnsweredQuestionCount"];
    lastRadarPromptAnsweredQuestionCount = v6->_lastRadarPromptAnsweredQuestionCount;
    v6->_lastRadarPromptAnsweredQuestionCount = v50;

    v52 = [sourceCopy persistedValueForKey:@"lastSurveyQuestionsRadarPromptDate"];
    lastSurveyQuestionsRadarPromptDate = v6->_lastSurveyQuestionsRadarPromptDate;
    v6->_lastSurveyQuestionsRadarPromptDate = v52;

    v54 = [sourceCopy persistedValueForKey:@"surveyQuestionsHideDate"];
    surveyQuestionsHideDate = v6->_surveyQuestionsHideDate;
    v6->_surveyQuestionsHideDate = v54;
  }

  return v6;
}

- (PXUserDefaults)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXUserDefaults.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PXUserDefaults init]"}];

  abort();
}

@end