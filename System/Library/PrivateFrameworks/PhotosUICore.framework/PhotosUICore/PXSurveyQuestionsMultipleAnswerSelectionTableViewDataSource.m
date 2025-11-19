@interface PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource
- (BOOL)canSelectReason:(id)a3;
- (PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource)initWithReasons:(id)a3 currentlySelected:(id)a4;
- (id)selectedReasons;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)selectedReasonsCount;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)deselect:(id)a3;
- (void)select:(id)a3;
- (void)setupOtherReasons:(id)a3;
- (void)setupPromotedReasons:(id)a3;
@end

@implementation PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E69DD028]);
  if ([v7 section])
  {
    if ([v7 section] != 1)
    {
      PXAssertGetLog();
    }

    v9 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self otherReasons];
  }

  else
  {
    v9 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self promotedReasons];
  }

  v10 = v9;
  v11 = [v9 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  v12 = [v8 textLabel];
  [v12 setText:v11];

  if ([v11 isEqualToString:@"None of These Options"])
  {
    v13 = [MEMORY[0x1E69DC888] systemRedColor];
    v14 = [v8 textLabel];
    [v14 setTextColor:v13];
  }

  v15 = [v6 indexPathsForSelectedRows];
  if ([v15 containsObject:v7])
  {

LABEL_10:
    [v6 selectRowAtIndexPath:v7 animated:1 scrollPosition:0];
    v18 = 3;
    goto LABEL_13;
  }

  v16 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self currentlySelectedReasons];
  v17 = [v16 containsObject:v11];

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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  if (a4 == 1)
  {
    v6 = @"PXInternalPhotosChallengeAdditionalReasonExhaustiveMomentLabelingAllOptions";
  }

  else
  {
    if (a4)
    {
      PXAssertGetLog();
    }

    v6 = @"PXInternalPhotosChallengeAdditionalReasonExhaustiveMomentLabelingTopHits";
  }

  v7 = PXLocalizedStringFromTable(v6, @"PhotosUICore");

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self otherReasons];
  }

  else
  {
    if (a4)
    {
      PXAssertGetLog();
    }

    v7 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self promotedReasons];
  }

  v8 = v7;
  v9 = [v7 count];

  return v9;
}

- (void)deselect:(id)a3
{
  v4 = a3;
  v5 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self currentlySelectedReasons];
  [v5 removeObject:v4];
}

- (void)select:(id)a3
{
  v4 = a3;
  v5 = [v4 isEqualToString:@"None of These Options"];
  v6 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self currentlySelectedReasons];
  v7 = v6;
  if (v5)
  {
    [v6 removeAllObjects];
  }

  else
  {
    [v6 removeObject:@"None of These Options"];
  }

  v8 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self currentlySelectedReasons];
  [v8 addObject:v4];
}

- (BOOL)canSelectReason:(id)a3
{
  v4 = [a3 isEqualToString:@"None of These Options"];
  v5 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self currentlySelectedReasons];
  v6 = v5;
  if (v4)
  {
    LOBYTE(v7) = [v5 count] == 0;
  }

  else
  {
    v7 = [v5 containsObject:@"None of These Options"] ^ 1;
  }

  return v7;
}

- (int64_t)selectedReasonsCount
{
  v2 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self currentlySelectedReasons];
  v3 = [v2 count];

  return v3;
}

- (id)selectedReasons
{
  v2 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)self currentlySelectedReasons];
  v3 = [v2 allObjects];

  return v3;
}

- (void)setupOtherReasons:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [[v4 alloc] initWithArray:v5];

  [v6 removeObject:@"None of These Options"];
  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  v8 = [v6 sortedArrayUsingSelector:sel_compare_];
  v9 = [v7 initWithArray:v8];

  [(NSArray *)v9 addObject:@"None of These Options"];
  otherReasons = self->_otherReasons;
  self->_otherReasons = v9;
}

- (void)setupPromotedReasons:(id)a3
{
  v6 = a3;
  if ([v6 count] < 5)
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = [v6 subarrayWithRange:{0, 4}];
  }

  promotedReasons = self->_promotedReasons;
  self->_promotedReasons = v4;
}

- (PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource)initWithReasons:(id)a3 currentlySelected:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource;
  v8 = [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)v8 setupPromotedReasons:v6];
    [(PXSurveyQuestionsMultipleAnswerSelectionTableViewDataSource *)v9 setupOtherReasons:v6];
    objc_storeStrong(&v9->_currentlySelectedReasons, a4);
  }

  return v9;
}

@end