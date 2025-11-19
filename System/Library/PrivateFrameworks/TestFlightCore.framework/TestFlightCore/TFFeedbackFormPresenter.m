@interface TFFeedbackFormPresenter
- (TFFeedbackFormPresenter)initWithForm:(id)a3 dataContainer:(id)a4 session:(id)a5;
- (TFFeedbackFormPresenterView)presenterView;
- (id)_indexPathsOfVisibleEntriesWithIdentifiers:(id)a3;
- (id)_indicesOfGroupsWithIdentifiers:(id)a3;
- (id)footerTextForGroupAtIndex:(int64_t)a3;
- (id)footerTextLinkMapForGroupAtIndex:(int64_t)a3;
- (id)headerTextForGroupAtIndex:(int64_t)a3;
- (id)headerTextLinkMapForGroupAtIndex:(int64_t)a3;
- (id)visibleEntryAtGroupIndex:(int64_t)a3 entryIndex:(int64_t)a4;
- (unint64_t)numberOfEntryGroupsInForm;
- (unint64_t)numberOfVisibleItemsInGroupAtIndex:(int64_t)a3;
- (void)didUpdateEntry:(id)a3 toGroupInclusionBool:(BOOL)a4;
- (void)didUpdateEntry:(id)a3 toString:(id)a4 editInProgress:(BOOL)a5;
- (void)feedbackDataContainer:(id)a3 didUpdateValuesForGroupIdentifiers:(id)a4 entryIdentifiers:(id)a5;
- (void)prepareViewForForm;
- (void)presenterViewDidCancelFeedbackSubmission:(id)a3;
- (void)presenterViewDidInitiateFeedbackSubmission:(id)a3;
- (void)showSubmissionFailureWithMessage:(id)a3;
@end

@implementation TFFeedbackFormPresenter

- (TFFeedbackFormPresenter)initWithForm:(id)a3 dataContainer:(id)a4 session:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TFFeedbackFormPresenter;
  v12 = [(TFFeedbackFormPresenter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_form, a3);
    objc_storeStrong(&v13->_dataContainer, a4);
    [(TFFeedbackDataContainer *)v13->_dataContainer setObserver:v13];
    objc_storeStrong(&v13->_session, a5);
  }

  return v13;
}

- (void)prepareViewForForm
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [(TFFeedbackFormPresenter *)self presenterView];
  v4 = [(TFFeedbackFormPresenter *)self form];
  v5 = [v4 title];
  [v3 setNavigationItemTitle:v5];

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v30 = self;
  v7 = [(TFFeedbackFormPresenter *)self form];
  v8 = [v7 entryGroups];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v32 = *v42;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v13 = [v12 entries];
        v14 = [v13 countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v38;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v38 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v37 + 1) + 8 * j), "type")}];
              [v6 addObject:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v15);
        }

        if ([v12 isToggleable])
        {
          v19 = [v12 groupToggleEntry];

          if (v19)
          {
            v20 = MEMORY[0x277CCABB0];
            v21 = [v12 groupToggleEntry];
            v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(v21, "type")}];
            [v6 addObject:v22];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v10);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = v6;
  v24 = [v23 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v34;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v33 + 1) + 8 * k) unsignedIntegerValue];
        v29 = [(TFFeedbackFormPresenter *)v30 presenterView];
        [v29 prepareForEntryType:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v25);
  }
}

- (unint64_t)numberOfEntryGroupsInForm
{
  v2 = [(TFFeedbackFormPresenter *)self form];
  v3 = [v2 entryGroups];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)numberOfVisibleItemsInGroupAtIndex:(int64_t)a3
{
  v5 = [(TFFeedbackFormPresenter *)self form];
  v6 = [v5 entryGroups];
  v7 = [v6 objectAtIndexedSubscript:a3];

  v8 = [(TFFeedbackFormPresenter *)self dataContainer];
  v9 = [v7 identifier];
  v10 = [v8 isGroupWithIdentifierIncluded:v9];

  v11 = [v7 numberOfVisibleItemsForIncludeState:v10];
  return v11;
}

- (id)visibleEntryAtGroupIndex:(int64_t)a3 entryIndex:(int64_t)a4
{
  v6 = [(TFFeedbackFormPresenter *)self form];
  v7 = [v6 entryGroups];
  v8 = [v7 objectAtIndexedSubscript:a3];

  v9 = [v8 visibleEntryForIndex:a4];

  return v9;
}

- (id)headerTextForGroupAtIndex:(int64_t)a3
{
  v4 = [(TFFeedbackFormPresenter *)self form];
  v5 = [v4 entryGroups];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [v6 headerText];

  return v7;
}

- (id)headerTextLinkMapForGroupAtIndex:(int64_t)a3
{
  v4 = [(TFFeedbackFormPresenter *)self form];
  v5 = [v4 entryGroups];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [v6 headerTextLinkMap];

  return v7;
}

- (id)footerTextForGroupAtIndex:(int64_t)a3
{
  v4 = [(TFFeedbackFormPresenter *)self form];
  v5 = [v4 entryGroups];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [v6 footerText];

  return v7;
}

- (id)footerTextLinkMapForGroupAtIndex:(int64_t)a3
{
  v4 = [(TFFeedbackFormPresenter *)self form];
  v5 = [v4 entryGroups];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [v6 footerTextLinkMap];

  return v7;
}

- (id)_indicesOfGroupsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(TFFeedbackFormPresenter *)self form];
  v6 = [v5 entryGroups];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__TFFeedbackFormPresenter__indicesOfGroupsWithIdentifiers___block_invoke;
  v10[3] = &unk_279D98308;
  v11 = v4;
  v7 = v4;
  v8 = [v6 indexesOfObjectsPassingTest:v10];

  return v8;
}

uint64_t __59__TFFeedbackFormPresenter__indicesOfGroupsWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_indexPathsOfVisibleEntriesWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(TFFeedbackFormPresenter *)self form];
  v7 = [v6 entryGroups];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__TFFeedbackFormPresenter__indexPathsOfVisibleEntriesWithIdentifiers___block_invoke;
  v13[3] = &unk_279D98330;
  v13[4] = self;
  v14 = v4;
  v8 = v5;
  v15 = v8;
  v9 = v4;
  [v7 enumerateObjectsUsingBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

void __70__TFFeedbackFormPresenter__indexPathsOfVisibleEntriesWithIdentifiers___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) numberOfVisibleItemsInGroupAtIndex:a3];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [v5 visibleEntryForIndex:i];
      v10 = *(a1 + 40);
      v11 = [v9 identifier];
      LODWORD(v10) = [v10 containsObject:v11];

      if (v10)
      {
        v14[0] = a3;
        v14[1] = i;
        v12 = *(a1 + 48);
        v13 = [MEMORY[0x277CCAA70] indexPathWithIndexes:v14 length:2];
        [v12 addObject:v13];
      }
    }
  }
}

- (void)feedbackDataContainer:(id)a3 didUpdateValuesForGroupIdentifiers:(id)a4 entryIdentifiers:(id)a5
{
  v7 = a4;
  v11 = [(TFFeedbackFormPresenter *)self _indexPathsOfVisibleEntriesWithIdentifiers:a5];
  v8 = [(TFFeedbackFormPresenter *)self presenterView];
  [v8 reloadEntriesAtIndexPaths:v11];

  v9 = [(TFFeedbackFormPresenter *)self _indicesOfGroupsWithIdentifiers:v7];

  v10 = [(TFFeedbackFormPresenter *)self presenterView];
  [v10 reloadEntryGroupsAtIndices:v9];
}

- (void)didUpdateEntry:(id)a3 toGroupInclusionBool:(BOOL)a4
{
  v6 = a3;
  v7 = [(TFFeedbackFormPresenter *)self dataContainer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__TFFeedbackFormPresenter_didUpdateEntry_toGroupInclusionBool___block_invoke;
  v9[3] = &unk_279D98358;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [v7 performBatchUpdates:v9];
}

void __63__TFFeedbackFormPresenter_didUpdateEntry_toGroupInclusionBool___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setGroupInclusionForIdentifier:v5 toValue:*(a1 + 40)];
}

- (void)didUpdateEntry:(id)a3 toString:(id)a4 editInProgress:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(TFFeedbackFormPresenter *)self dataContainer];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__TFFeedbackFormPresenter_didUpdateEntry_toString_editInProgress___block_invoke;
  v13[3] = &unk_279D98158;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [v10 performBatchUpdates:v13 suppressingNotifications:v5];
}

void __66__TFFeedbackFormPresenter_didUpdateEntry_toString_editInProgress___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setStringForIdentifier:v5 toValue:*(a1 + 40)];
}

- (void)presenterViewDidInitiateFeedbackSubmission:(id)a3
{
  v4 = [(TFFeedbackFormPresenter *)self presenterView];
  [v4 showSubmitButtonForSubmissionPendingState:1];

  v5 = [(TFFeedbackFormPresenter *)self session];
  [v5 submitFeedbackForActiveFormViewController];
}

- (void)presenterViewDidCancelFeedbackSubmission:(id)a3
{
  v3 = [(TFFeedbackFormPresenter *)self session];
  [v3 cancelFeedbackForActiveFormViewController];
}

- (void)showSubmissionFailureWithMessage:(id)a3
{
  v4 = a3;
  v5 = [(TFFeedbackFormPresenter *)self presenterView];
  [v5 showSubmitButtonForSubmissionPendingState:0];

  v7 = [(TFFeedbackFormPresenter *)self presenterView];
  v6 = TFLocalizedString(@"ALERT_SUBMIT_FAILURE_TITLE");
  [v7 showErrorAlertWithTitle:v6 message:v4];
}

- (TFFeedbackFormPresenterView)presenterView
{
  WeakRetained = objc_loadWeakRetained(&self->_presenterView);

  return WeakRetained;
}

@end