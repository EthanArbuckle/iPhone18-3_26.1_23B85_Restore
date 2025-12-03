@interface TFFeedbackFormPresenter
- (TFFeedbackFormPresenter)initWithForm:(id)form dataContainer:(id)container session:(id)session;
- (TFFeedbackFormPresenterView)presenterView;
- (id)_indexPathsOfVisibleEntriesWithIdentifiers:(id)identifiers;
- (id)_indicesOfGroupsWithIdentifiers:(id)identifiers;
- (id)footerTextForGroupAtIndex:(int64_t)index;
- (id)footerTextLinkMapForGroupAtIndex:(int64_t)index;
- (id)headerTextForGroupAtIndex:(int64_t)index;
- (id)headerTextLinkMapForGroupAtIndex:(int64_t)index;
- (id)visibleEntryAtGroupIndex:(int64_t)index entryIndex:(int64_t)entryIndex;
- (unint64_t)numberOfEntryGroupsInForm;
- (unint64_t)numberOfVisibleItemsInGroupAtIndex:(int64_t)index;
- (void)didUpdateEntry:(id)entry toGroupInclusionBool:(BOOL)bool;
- (void)didUpdateEntry:(id)entry toString:(id)string editInProgress:(BOOL)progress;
- (void)feedbackDataContainer:(id)container didUpdateValuesForGroupIdentifiers:(id)identifiers entryIdentifiers:(id)entryIdentifiers;
- (void)prepareViewForForm;
- (void)presenterViewDidCancelFeedbackSubmission:(id)submission;
- (void)presenterViewDidInitiateFeedbackSubmission:(id)submission;
- (void)showSubmissionFailureWithMessage:(id)message;
@end

@implementation TFFeedbackFormPresenter

- (TFFeedbackFormPresenter)initWithForm:(id)form dataContainer:(id)container session:(id)session
{
  formCopy = form;
  containerCopy = container;
  sessionCopy = session;
  v15.receiver = self;
  v15.super_class = TFFeedbackFormPresenter;
  v12 = [(TFFeedbackFormPresenter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_form, form);
    objc_storeStrong(&v13->_dataContainer, container);
    [(TFFeedbackDataContainer *)v13->_dataContainer setObserver:v13];
    objc_storeStrong(&v13->_session, session);
  }

  return v13;
}

- (void)prepareViewForForm
{
  v48 = *MEMORY[0x277D85DE8];
  presenterView = [(TFFeedbackFormPresenter *)self presenterView];
  form = [(TFFeedbackFormPresenter *)self form];
  title = [form title];
  [presenterView setNavigationItemTitle:title];

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  selfCopy = self;
  form2 = [(TFFeedbackFormPresenter *)self form];
  entryGroups = [form2 entryGroups];

  obj = entryGroups;
  v9 = [entryGroups countByEnumeratingWithState:&v41 objects:v47 count:16];
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
        entries = [v12 entries];
        v14 = [entries countByEnumeratingWithState:&v37 objects:v46 count:16];
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
                objc_enumerationMutation(entries);
              }

              v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v37 + 1) + 8 * j), "type")}];
              [v6 addObject:v18];
            }

            v15 = [entries countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v15);
        }

        if ([v12 isToggleable])
        {
          groupToggleEntry = [v12 groupToggleEntry];

          if (groupToggleEntry)
          {
            v20 = MEMORY[0x277CCABB0];
            groupToggleEntry2 = [v12 groupToggleEntry];
            v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(groupToggleEntry2, "type")}];
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

        unsignedIntegerValue = [*(*(&v33 + 1) + 8 * k) unsignedIntegerValue];
        presenterView2 = [(TFFeedbackFormPresenter *)selfCopy presenterView];
        [presenterView2 prepareForEntryType:unsignedIntegerValue];
      }

      v25 = [v23 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v25);
  }
}

- (unint64_t)numberOfEntryGroupsInForm
{
  form = [(TFFeedbackFormPresenter *)self form];
  entryGroups = [form entryGroups];
  v4 = [entryGroups count];

  return v4;
}

- (unint64_t)numberOfVisibleItemsInGroupAtIndex:(int64_t)index
{
  form = [(TFFeedbackFormPresenter *)self form];
  entryGroups = [form entryGroups];
  v7 = [entryGroups objectAtIndexedSubscript:index];

  dataContainer = [(TFFeedbackFormPresenter *)self dataContainer];
  identifier = [v7 identifier];
  v10 = [dataContainer isGroupWithIdentifierIncluded:identifier];

  v11 = [v7 numberOfVisibleItemsForIncludeState:v10];
  return v11;
}

- (id)visibleEntryAtGroupIndex:(int64_t)index entryIndex:(int64_t)entryIndex
{
  form = [(TFFeedbackFormPresenter *)self form];
  entryGroups = [form entryGroups];
  v8 = [entryGroups objectAtIndexedSubscript:index];

  v9 = [v8 visibleEntryForIndex:entryIndex];

  return v9;
}

- (id)headerTextForGroupAtIndex:(int64_t)index
{
  form = [(TFFeedbackFormPresenter *)self form];
  entryGroups = [form entryGroups];
  v6 = [entryGroups objectAtIndexedSubscript:index];

  headerText = [v6 headerText];

  return headerText;
}

- (id)headerTextLinkMapForGroupAtIndex:(int64_t)index
{
  form = [(TFFeedbackFormPresenter *)self form];
  entryGroups = [form entryGroups];
  v6 = [entryGroups objectAtIndexedSubscript:index];

  headerTextLinkMap = [v6 headerTextLinkMap];

  return headerTextLinkMap;
}

- (id)footerTextForGroupAtIndex:(int64_t)index
{
  form = [(TFFeedbackFormPresenter *)self form];
  entryGroups = [form entryGroups];
  v6 = [entryGroups objectAtIndexedSubscript:index];

  footerText = [v6 footerText];

  return footerText;
}

- (id)footerTextLinkMapForGroupAtIndex:(int64_t)index
{
  form = [(TFFeedbackFormPresenter *)self form];
  entryGroups = [form entryGroups];
  v6 = [entryGroups objectAtIndexedSubscript:index];

  footerTextLinkMap = [v6 footerTextLinkMap];

  return footerTextLinkMap;
}

- (id)_indicesOfGroupsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  form = [(TFFeedbackFormPresenter *)self form];
  entryGroups = [form entryGroups];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__TFFeedbackFormPresenter__indicesOfGroupsWithIdentifiers___block_invoke;
  v10[3] = &unk_279D98308;
  v11 = identifiersCopy;
  v7 = identifiersCopy;
  v8 = [entryGroups indexesOfObjectsPassingTest:v10];

  return v8;
}

uint64_t __59__TFFeedbackFormPresenter__indicesOfGroupsWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_indexPathsOfVisibleEntriesWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  form = [(TFFeedbackFormPresenter *)self form];
  entryGroups = [form entryGroups];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__TFFeedbackFormPresenter__indexPathsOfVisibleEntriesWithIdentifiers___block_invoke;
  v13[3] = &unk_279D98330;
  v13[4] = self;
  v14 = identifiersCopy;
  v8 = v5;
  v15 = v8;
  v9 = identifiersCopy;
  [entryGroups enumerateObjectsUsingBlock:v13];

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

- (void)feedbackDataContainer:(id)container didUpdateValuesForGroupIdentifiers:(id)identifiers entryIdentifiers:(id)entryIdentifiers
{
  identifiersCopy = identifiers;
  v11 = [(TFFeedbackFormPresenter *)self _indexPathsOfVisibleEntriesWithIdentifiers:entryIdentifiers];
  presenterView = [(TFFeedbackFormPresenter *)self presenterView];
  [presenterView reloadEntriesAtIndexPaths:v11];

  v9 = [(TFFeedbackFormPresenter *)self _indicesOfGroupsWithIdentifiers:identifiersCopy];

  presenterView2 = [(TFFeedbackFormPresenter *)self presenterView];
  [presenterView2 reloadEntryGroupsAtIndices:v9];
}

- (void)didUpdateEntry:(id)entry toGroupInclusionBool:(BOOL)bool
{
  entryCopy = entry;
  dataContainer = [(TFFeedbackFormPresenter *)self dataContainer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__TFFeedbackFormPresenter_didUpdateEntry_toGroupInclusionBool___block_invoke;
  v9[3] = &unk_279D98358;
  v10 = entryCopy;
  boolCopy = bool;
  v8 = entryCopy;
  [dataContainer performBatchUpdates:v9];
}

void __63__TFFeedbackFormPresenter_didUpdateEntry_toGroupInclusionBool___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setGroupInclusionForIdentifier:v5 toValue:*(a1 + 40)];
}

- (void)didUpdateEntry:(id)entry toString:(id)string editInProgress:(BOOL)progress
{
  progressCopy = progress;
  entryCopy = entry;
  stringCopy = string;
  dataContainer = [(TFFeedbackFormPresenter *)self dataContainer];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__TFFeedbackFormPresenter_didUpdateEntry_toString_editInProgress___block_invoke;
  v13[3] = &unk_279D98158;
  v14 = entryCopy;
  v15 = stringCopy;
  v11 = stringCopy;
  v12 = entryCopy;
  [dataContainer performBatchUpdates:v13 suppressingNotifications:progressCopy];
}

void __66__TFFeedbackFormPresenter_didUpdateEntry_toString_editInProgress___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setStringForIdentifier:v5 toValue:*(a1 + 40)];
}

- (void)presenterViewDidInitiateFeedbackSubmission:(id)submission
{
  presenterView = [(TFFeedbackFormPresenter *)self presenterView];
  [presenterView showSubmitButtonForSubmissionPendingState:1];

  session = [(TFFeedbackFormPresenter *)self session];
  [session submitFeedbackForActiveFormViewController];
}

- (void)presenterViewDidCancelFeedbackSubmission:(id)submission
{
  session = [(TFFeedbackFormPresenter *)self session];
  [session cancelFeedbackForActiveFormViewController];
}

- (void)showSubmissionFailureWithMessage:(id)message
{
  messageCopy = message;
  presenterView = [(TFFeedbackFormPresenter *)self presenterView];
  [presenterView showSubmitButtonForSubmissionPendingState:0];

  presenterView2 = [(TFFeedbackFormPresenter *)self presenterView];
  v6 = TFLocalizedString(@"ALERT_SUBMIT_FAILURE_TITLE");
  [presenterView2 showErrorAlertWithTitle:v6 message:messageCopy];
}

- (TFFeedbackFormPresenterView)presenterView
{
  WeakRetained = objc_loadWeakRetained(&self->_presenterView);

  return WeakRetained;
}

@end