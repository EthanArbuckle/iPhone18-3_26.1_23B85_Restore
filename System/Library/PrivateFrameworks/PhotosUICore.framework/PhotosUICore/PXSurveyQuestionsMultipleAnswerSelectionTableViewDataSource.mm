@interface PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource
- (BOOL)canSelectReason:(id)reason;
- (PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource)initWithReasons:(id)reasons currentlySelected:(id)selected;
- (id)selectedReasons;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)selectedReasonsCount;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)deselect:(id)deselect;
- (void)select:(id)select;
- (void)setupOtherReasons:(id)reasons;
- (void)setupPromotedReasons:(id)reasons;
@end

@implementation PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = objc_alloc_init(MEMORY[0x1E69DD028]);
  if ([pathCopy section])
  {
    if ([pathCopy section] != 1)
    {
      PXAssertGetLog();
    }

    otherReasons = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self otherReasons];
  }

  else
  {
    otherReasons = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self promotedReasons];
  }

  v10 = otherReasons;
  v11 = [otherReasons objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  textLabel = [v8 textLabel];
  [textLabel setText:v11];

  if ([v11 isEqualToString:@"None of These Options"])
  {
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    textLabel2 = [v8 textLabel];
    [textLabel2 setTextColor:systemRedColor];
  }

  indexPathsForSelectedRows = [viewCopy indexPathsForSelectedRows];
  if ([indexPathsForSelectedRows containsObject:pathCopy])
  {

LABEL_10:
    [viewCopy selectRowAtIndexPath:pathCopy animated:1 scrollPosition:0];
    v18 = 3;
    goto LABEL_13;
  }

  currentlySelectedReasons = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self currentlySelectedReasons];
  v17 = [currentlySelectedReasons containsObject:v11];

  if (v17)
  {
    goto LABEL_10;
  }

  v18 = 0;
LABEL_13:
  [v8 setAccessoryType:v18];
  v19 = v8;

  return v19;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    v6 = @"PXInternalPhotosChallengeAdditionalReasonExhaustiveMomentLabelingAllOptions";
  }

  else
  {
    if (section)
    {
      PXAssertGetLog();
    }

    v6 = @"PXInternalPhotosChallengeAdditionalReasonExhaustiveMomentLabelingTopHits";
  }

  v7 = PXLocalizedStringFromTable(v6, @"PhotosUICore");

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    otherReasons = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self otherReasons];
  }

  else
  {
    if (section)
    {
      PXAssertGetLog();
    }

    otherReasons = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self promotedReasons];
  }

  v8 = otherReasons;
  v9 = [otherReasons count];

  return v9;
}

- (void)deselect:(id)deselect
{
  deselectCopy = deselect;
  currentlySelectedReasons = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self currentlySelectedReasons];
  [currentlySelectedReasons removeObject:deselectCopy];
}

- (void)select:(id)select
{
  selectCopy = select;
  v5 = [selectCopy isEqualToString:@"None of These Options"];
  currentlySelectedReasons = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self currentlySelectedReasons];
  v7 = currentlySelectedReasons;
  if (v5)
  {
    [currentlySelectedReasons removeAllObjects];
  }

  else
  {
    [currentlySelectedReasons removeObject:@"None of These Options"];
  }

  currentlySelectedReasons2 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self currentlySelectedReasons];
  [currentlySelectedReasons2 addObject:selectCopy];
}

- (BOOL)canSelectReason:(id)reason
{
  v4 = [reason isEqualToString:@"None of These Options"];
  currentlySelectedReasons = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self currentlySelectedReasons];
  v6 = currentlySelectedReasons;
  if (v4)
  {
    LOBYTE(v7) = [currentlySelectedReasons count] == 0;
  }

  else
  {
    v7 = [currentlySelectedReasons containsObject:@"None of These Options"] ^ 1;
  }

  return v7;
}

- (int64_t)selectedReasonsCount
{
  currentlySelectedReasons = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self currentlySelectedReasons];
  v3 = [currentlySelectedReasons count];

  return v3;
}

- (id)selectedReasons
{
  currentlySelectedReasons = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self currentlySelectedReasons];
  allObjects = [currentlySelectedReasons allObjects];

  return allObjects;
}

- (void)setupOtherReasons:(id)reasons
{
  v4 = MEMORY[0x1E695DF70];
  reasonsCopy = reasons;
  v6 = [[v4 alloc] initWithArray:reasonsCopy];

  [v6 removeObject:@"None of These Options"];
  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  v8 = [v6 sortedArrayUsingSelector:sel_compare_];
  v9 = [v7 initWithArray:v8];

  [(NSArray *)v9 addObject:@"None of These Options"];
  otherReasons = self->_otherReasons;
  self->_otherReasons = v9;
}

- (void)setupPromotedReasons:(id)reasons
{
  reasonsCopy = reasons;
  if ([reasonsCopy count] < 5)
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = [reasonsCopy subarrayWithRange:{0, 4}];
  }

  promotedReasons = self->_promotedReasons;
  self->_promotedReasons = v4;
}

- (PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource)initWithReasons:(id)reasons currentlySelected:(id)selected
{
  reasonsCopy = reasons;
  selectedCopy = selected;
  v11.receiver = self;
  v11.super_class = PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource;
  v8 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)v8 setupPromotedReasons:reasonsCopy];
    [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)v9 setupOtherReasons:reasonsCopy];
    objc_storeStrong(&v9->_currentlySelectedReasons, selected);
  }

  return v9;
}

@end