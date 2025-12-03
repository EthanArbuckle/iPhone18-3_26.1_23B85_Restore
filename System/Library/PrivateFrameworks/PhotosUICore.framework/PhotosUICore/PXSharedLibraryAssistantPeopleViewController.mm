@interface PXSharedLibraryAssistantPeopleViewController
+ (id)_fetchedPeople:(id)people sortedByLocalIdentifiers:(id)identifiers;
- (BOOL)_hasPeople;
- (NSString)textForFooter;
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryAssistantPeopleViewController)initWithViewModel:(id)model;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)peopleInfosToIdentifyInDataSource:(id)source;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)_advanceToNextStep;
- (void)_fixupStalePersonForUUID:(id)d loneParticipantInfo:(id)info;
- (void)_presentPickerForInfos:(id)infos;
- (void)_suggestedStartDateChanged;
- (void)_updateButtonCell;
- (void)_updateContinueButton;
- (void)_updateFooterText;
- (void)_updateHeaderDetailText;
- (void)addLaterButtonTapped:(id)tapped;
- (void)completeRulesStep;
- (void)continueButtonTapped:(id)tapped;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
- (void)picker:(id)picker didFinishPicking:(id)picking;
- (void)setupLibraryChangeListening;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateWithPerson:(id)person loneParticipantInfo:(id)info;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PXSharedLibraryAssistantPeopleViewController

- (void)_fixupStalePersonForUUID:(id)d loneParticipantInfo:(id)info
{
  dCopy = d;
  infoCopy = info;
  viewModel = [(PXSharedLibraryAssistantPeopleViewController *)self viewModel];
  dataSourceManager = [(PXSharedLibraryAssistantPeopleViewController *)self dataSourceManager];
  sourceLibraryInfo = [viewModel sourceLibraryInfo];
  if (sourceLibraryInfo)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v35 = objc_opt_class();
    v34 = NSStringFromClass(v35);
    px_descriptionForAssertionMessage = [sourceLibraryInfo px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantPeopleViewController+Internal.m" lineNumber:109 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"viewModel.sourceLibraryInfo", v34, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantPeopleViewController+Internal.m" lineNumber:109 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"viewModel.sourceLibraryInfo", v34}];
  }

LABEL_3:
  v40 = a2;
  photoLibrary = [sourceLibraryInfo photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  dataSource = [dataSourceManager dataSource];
  allPersonUUIDs = [dataSource allPersonUUIDs];

  v15 = [MEMORY[0x1E6978980] fetchFinalMergeTargetPersonsForPersonWithUUID:dCopy options:librarySpecificFetchOptions];
  firstObject = [v15 firstObject];

  if (!infoCopy)
  {
    dataSource2 = [dataSourceManager dataSource];
    infosWithoutPeople = [dataSource2 infosWithoutPeople];
    infoCopy = [infosWithoutPeople firstObject];
  }

  participant = [infoCopy participant];
  v44 = allPersonUUIDs;
  if (([allPersonUUIDs containsObject:dCopy] & 1) == 0)
  {
    uuid = [firstObject uuid];
    v20 = [allPersonUUIDs containsObject:uuid];

    if ((v20 & 1) == 0)
    {
      uuid2 = [[PXSharedLibraryIncludedPeopleInfo alloc] initWithParticipant:participant person:firstObject];
      [dataSourceManager replaceInfo:infoCopy withInfo:uuid2];
      goto LABEL_25;
    }
  }

  v41 = librarySpecificFetchOptions;
  uuid2 = [firstObject uuid];
  dataSource3 = [dataSourceManager dataSource];
  v23 = [dataSource3 infoForPersonUUID:dCopy];

  dataSource4 = [dataSourceManager dataSource];
  v25 = [dataSource4 infoForPersonUUID:uuid2];

  v42 = sourceLibraryInfo;
  v43 = viewModel;
  if (!(v23 | v25))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:v40 object:self file:@"PXSharedLibraryAssistantPeopleViewController+Internal.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"stalePersonInfo || refreshedPersonInfo"}];

    goto LABEL_32;
  }

  if (v23 && !v25)
  {
    v26 = v23;
    goto LABEL_14;
  }

  if (v23 || !v25)
  {
LABEL_32:
    if (infoCopy)
    {
      v27 = v25;
      if ([dCopy isEqualToString:uuid2])
      {
        v38 = 0;
      }

      else
      {
        v38 = v23;
      }

      v30 = v38;
      v31 = infoCopy;
      v29 = [[PXSharedLibraryIncludedPeopleInfo alloc] initWithParticipant:participant person:firstObject];
      if (v27)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if ([dCopy isEqualToString:uuid2])
      {
        v39 = 0;
      }

      else
      {
        v39 = v23;
      }

      v30 = v39;
      v31 = v25;
      v29 = [[PXSharedLibraryIncludedPeopleInfo alloc] initWithPerson:firstObject];
      v27 = 0;
    }

LABEL_17:
    if (v30)
    {
      [dataSourceManager removeInfo:v30];
    }

    if (!v31)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v26 = v25;
LABEL_14:
  v27 = v26;
  if (infoCopy)
  {
    v28 = infoCopy;
    v29 = [[PXSharedLibraryIncludedPeopleInfo alloc] initWithParticipant:participant person:firstObject];
    v30 = 0;
LABEL_16:
    [dataSourceManager removeInfo:v27];
    v31 = infoCopy;
    goto LABEL_17;
  }

  v29 = [[PXSharedLibraryIncludedPeopleInfo alloc] initWithPerson:firstObject];
  v30 = 0;
  v31 = v27;
  v27 = 0;
LABEL_23:
  [dataSourceManager replaceInfo:v31 withInfo:v29];

LABEL_24:
  sourceLibraryInfo = v42;
  viewModel = v43;
  librarySpecificFetchOptions = v41;
LABEL_25:
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  v20 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  dataSourceManager = [(PXSharedLibraryAssistantPeopleViewController *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  allInfos = [dataSource allInfos];

  v8 = [allInfos countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(allInfos);
        }

        person = [*(*(&v15 + 1) + 8 * v11) person];
        if (person)
        {
          v13 = [queueCopy changeDetailsForObject:person];
          if (v13)
          {
            uuid = [person uuid];
            [(PXSharedLibraryAssistantPeopleViewController *)self _fixupStalePersonForUUID:uuid loneParticipantInfo:0];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [allInfos countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)updateWithPerson:(id)person loneParticipantInfo:(id)info
{
  personCopy = person;
  infoCopy = info;
  uuid = [personCopy uuid];
  dataSourceManager = [(PXSharedLibraryAssistantPeopleViewController *)self dataSourceManager];
  participant = [infoCopy participant];
  dataSource = [dataSourceManager dataSource];
  v11 = [dataSource infoForPersonUUID:uuid];

  if (v11)
  {
    participant2 = [v11 participant];

    if (participant2)
    {
      goto LABEL_6;
    }

    uuid2 = [personCopy uuid];
    [(PXSharedLibraryAssistantPeopleViewController *)self _fixupStalePersonForUUID:uuid2 loneParticipantInfo:infoCopy];
  }

  else
  {
    uuid2 = [[PXSharedLibraryIncludedPeopleInfo alloc] initWithParticipant:participant person:personCopy];
    [dataSourceManager replaceInfo:infoCopy withInfo:uuid2];
  }

LABEL_6:
}

- (NSString)textForFooter
{
  viewModel = [(PXSharedLibraryAssistantPeopleViewController *)self viewModel];
  v7 = 0;
  v3 = [viewModel localizedSelectedPeopleWithAdditionalPeopleCount:&v7];
  v4 = [v3 count];
  v5 = v7;
  if (viewModel)
  {
    [viewModel shareCounts];
  }

  if (v5 + v4 >= 1)
  {
    PXSharedLibraryAssistantPeopleSelectionFooterTitle(v3, v7);
  }

  return &stru_1F1741150;
}

- (id)peopleInfosToIdentifyInDataSource:(id)source
{
  infosWithoutPeople = [source infosWithoutPeople];
  v4 = [infosWithoutPeople count];
  if (v4)
  {
    if (v4 >= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = v4;
    }

    v6 = [infosWithoutPeople subarrayWithRange:{0, v5}];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (void)setupLibraryChangeListening
{
  viewModel = [(PXSharedLibraryAssistantPeopleViewController *)self viewModel];
  sourceLibraryInfo = [viewModel sourceLibraryInfo];

  v7 = sourceLibraryInfo;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  photoLibrary = [v5 photoLibrary];

  [photoLibrary px_registerChangeObserver:self];
}

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)_presentPickerForInfos:(id)infos
{
  viewModel = [(PXSharedLibraryAssistantPeopleViewController *)self viewModel];
  sourceLibraryInfo = [viewModel sourceLibraryInfo];

  if (sourceLibraryInfo)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    px_descriptionForAssertionMessage = [sourceLibraryInfo px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantPeopleViewController+iOS.m" lineNumber:427 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.viewModel.sourceLibraryInfo", v15, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantPeopleViewController+iOS.m" lineNumber:427 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.viewModel.sourceLibraryInfo", v15}];
  }

LABEL_3:
  v7 = objc_alloc(MEMORY[0x1E69790E0]);
  photoLibrary = [sourceLibraryInfo photoLibrary];
  v9 = [v7 initWithPhotoLibrary:photoLibrary];

  [v9 setSelectionLimit:0];
  [v9 _setSourceType:1];
  v10 = objc_alloc_init(MEMORY[0x1E6979160]);
  [v9 _setPeopleConfiguration:v10];

  v11 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v9];
  [v11 setDelegate:self];
  assistantViewControllerDelegate = [(PXSharedLibraryAssistantPeopleViewController *)self assistantViewControllerDelegate];
  if (!assistantViewControllerDelegate)
  {
    PXAssertGetLog();
  }

  [assistantViewControllerDelegate assistantViewController:self presentViewController:v11 animated:1];
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  v7 = *MEMORY[0x1E69E9840];
  pickingCopy = picking;
  assistantViewControllerDelegate = [(PXSharedLibraryAssistantPeopleViewController *)self assistantViewControllerDelegate];
  if (!assistantViewControllerDelegate)
  {
    PXAssertGetLog();
  }

  [assistantViewControllerDelegate assistantViewController:self dismissViewControllerAnimated:1];
  PXMap();
}

- (void)_updateFooterText
{
  footerConfiguration = [MEMORY[0x1E69DCC28] footerConfiguration];
  textForFooter = [(PXSharedLibraryAssistantPeopleViewController *)self textForFooter];
  [footerConfiguration setText:textForFooter];

  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  textProperties = [footerConfiguration textProperties];
  [textProperties setFont:v4];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  textProperties2 = [footerConfiguration textProperties];
  [textProperties2 setColor:secondaryLabelColor];

  [footerConfiguration directionalLayoutMargins];
  [footerConfiguration setDirectionalLayoutMargins:7.0];
  textProperties3 = [footerConfiguration textProperties];
  [textProperties3 setAdjustsFontForContentSizeCategory:1];

  [(UITableViewHeaderFooterView *)self->_peopleSectionFooterView setContentConfiguration:footerConfiguration];
}

- (void)_updateButtonCell
{
  contentConfiguration = [(UITableViewCell *)self->_buttonCell contentConfiguration];
  if ([(PXSharedLibraryAssistantPeopleViewController *)self _hasPeople])
  {
    v3 = @"PXSharedLibraryAssistant_PeopleSelection_ButtonTitle_AddOthers";
  }

  else
  {
    v3 = @"PXSharedLibraryAssistant_PeopleSelection_ButtonTitle_Add";
  }

  v4 = PXLocalizedSharedLibraryString(v3);
  [contentConfiguration setText:v4];

  [(UITableViewCell *)self->_buttonCell setContentConfiguration:contentConfiguration];
}

- (void)_updateHeaderDetailText
{
  v4 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_PeopleSelection_Subtitle");
  headerView = [(PXSharedLibraryAssistantPeopleViewController *)self headerView];
  [headerView setDetailText:v4];
}

- (void)_updateContinueButton
{
  _hasPeople = [(PXSharedLibraryAssistantPeopleViewController *)self _hasPeople];
  continueButton = self->_continueButton;

  [(OBBoldTrayButton *)continueButton setEnabled:_hasPeople];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSharedLibraryAssistantViewModelObservationContext_236236 == context)
  {
    if ((changeCopy & 8) != 0)
    {
      [(PXSharedLibraryAssistantPeopleViewController *)self _updateContinueButton];
      [(PXSharedLibraryAssistantPeopleViewController *)self _updateHeaderDetailText];
      if ((changeCopy & 0x800) == 0)
      {
LABEL_7:
        if ((changeCopy & 0x2000) == 0)
        {
          goto LABEL_9;
        }

LABEL_8:
        [(PXSharedLibraryAssistantPeopleViewController *)self _suggestedStartDateChanged];
        goto LABEL_9;
      }
    }

    else if ((changeCopy & 0x800) == 0)
    {
      goto LABEL_7;
    }

    [(PXSharedLibraryAssistantPeopleViewController *)self _updateFooterText];
    if ((changeCopy & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (PXSharedLibraryIncludedPeopleDataSourceManagerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantPeopleViewController+iOS.m" lineNumber:334 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    tableView = [(OBTableWelcomeController *)self tableView];
    [tableView reloadData];

    [(PXSharedLibraryAssistantPeopleViewController *)self _updateFooterText];
    [(PXSharedLibraryAssistantPeopleViewController *)self _updateButtonCell];
    dataSource = [(PXSectionedDataSourceManager *)self->_dataSourceManager dataSource];
    viewModel = [(PXSharedLibraryAssistantPeopleViewController *)self viewModel];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__PXSharedLibraryAssistantPeopleViewController_observable_didChange_context___block_invoke;
    v15[3] = &unk_1E7749B98;
    v16 = dataSource;
    v13 = dataSource;
    [viewModel performChanges:v15];
  }

LABEL_9:
}

void __77__PXSharedLibraryAssistantPeopleViewController_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 infosWithBothPeopleAndParticipants];
  [v4 setInfosWithBothPeopleAndParticipants:v5];

  v6 = [*(a1 + 32) allPersonUUIDs];
  [v4 setPersonUUIDs:v6];
}

- (void)_advanceToNextStep
{
  v4 = *MEMORY[0x1E69E9840];
  self->_wantsToContinueToNextStep = 0;
  assistantViewControllerDelegate = [(PXSharedLibraryAssistantPeopleViewController *)self assistantViewControllerDelegate];
  if (!assistantViewControllerDelegate)
  {
    PXAssertGetLog();
  }

  [assistantViewControllerDelegate stepForwardInAssistantForAssistantViewController:self];
}

- (void)_suggestedStartDateChanged
{
  suggestedStartDate = [(PXSharedLibraryAssistantViewModel *)self->_viewModel suggestedStartDate];

  if (suggestedStartDate && self->_wantsToContinueToNextStep)
  {
    [(OBBoldTrayButton *)self->_continueButton hidesBusyIndicator];

    [(PXSharedLibraryAssistantPeopleViewController *)self _advanceToNextStep];
  }
}

- (void)completeRulesStep
{
  self->_wantsToContinueToNextStep = 1;
  dataSource = [(PXSectionedDataSourceManager *)self->_dataSourceManager dataSource];
  allInfos = [dataSource allInfos];
  v5 = [allInfos count];

  suggestedStartDate = [(PXSharedLibraryAssistantViewModel *)self->_viewModel suggestedStartDate];

  if (v5)
  {
    v7 = suggestedStartDate == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    continueButton = self->_continueButton;

    [(OBBoldTrayButton *)continueButton showsBusyIndicator];
  }

  else
  {

    [(PXSharedLibraryAssistantPeopleViewController *)self _advanceToNextStep];
  }
}

- (void)addLaterButtonTapped:(id)tapped
{
  [(PXSharedLibraryIncludedPeopleDataSourceManager *)self->_dataSourceManager setViewModelSyncingDisabled:1];

  [(PXSharedLibraryAssistantPeopleViewController *)self completeRulesStep];
}

- (void)continueButtonTapped:(id)tapped
{
  v14 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  self->_pickerWasPresentedFromContinueButton = 1;
  dataSource = [(PXSectionedDataSourceManager *)self->_dataSourceManager dataSource];
  v6 = [(PXSharedLibraryAssistantPeopleViewController *)self peopleInfosToIdentifyInDataSource:dataSource];

  if (![v6 count])
  {
    self->_pickerWasPresentedFromContinueButton = 0;
    dataSource2 = [(PXSectionedDataSourceManager *)self->_dataSourceManager dataSource];
    [dataSource2 allInfos];
    objc_claimAutoreleasedReturnValue();

    PXMap();
  }

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__PXSharedLibraryAssistantPeopleViewController_continueButtonTapped___block_invoke;
  v10[3] = &unk_1E774B248;
  objc_copyWeak(&v12, &location);
  v11 = v6;
  v7 = [(PXSharedLibraryAssistantPeopleViewController *)self alertConfigurationForIdentifyingPeopleInfos:v11 action:v10];
  [v7 setStyle:0];
  [v7 setSourceItem:tappedCopy];
  assistantViewControllerDelegate = [(PXSharedLibraryAssistantPeopleViewController *)self assistantViewControllerDelegate];
  if (!assistantViewControllerDelegate)
  {
    PXAssertGetLog();
  }

  [assistantViewControllerDelegate assistantViewController:self presentAlertWithConfiguration:v7 animated:1];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __69__PXSharedLibraryAssistantPeopleViewController_continueButtonTapped___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _presentPickerForInfos:*(a1 + 32)];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v19 = *MEMORY[0x1E69E9840];
  [view deselectRowAtIndexPath:path animated:1];
  viewModel = [(PXSharedLibraryAssistantPeopleViewController *)self viewModel];
  sourceLibraryInfo = [viewModel sourceLibraryInfo];

  v7 = sourceLibraryInfo;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  photoLibrary = [v8 photoLibrary];

  if (photoLibrary)
  {
    v10 = [objc_alloc(MEMORY[0x1E69790E0]) initWithPhotoLibrary:photoLibrary];
    [v10 setSelectionLimit:0];
    v11 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_Rules_AddPeople");
    [v10 setPrompt:v11];

    [v10 _setSourceType:1];
    v12 = objc_alloc_init(MEMORY[0x1E6979160]);
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    personUUIDs = [(PXSharedLibraryAssistantViewModel *)self->_viewModel personUUIDs];
    if ([personUUIDs count])
    {
      PXMap();
    }

    [v12 setDisabledIdentifiers:v13];
    [v10 _setPeopleConfiguration:v12];
    v15 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v10];
    [v15 setDelegate:self];
    self->_pickerWasPresentedFromContinueButton = 0;
    assistantViewControllerDelegate = [(PXSharedLibraryAssistantPeopleViewController *)self assistantViewControllerDelegate];
    if (!assistantViewControllerDelegate)
    {
      PXAssertGetLog();
    }

    [assistantViewControllerDelegate assistantViewController:self presentViewController:v15 animated:1];
  }

  else
  {
    v10 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Unable to present PHPickerViewController since %@ does not provide a PHPhotoLibrary.", &v17, 0xCu);
    }
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  if (-[PXSharedLibraryAssistantPeopleViewController _isPeopleCellRepresentedAtSection:](self, "_isPeopleCellRepresentedAtSection:", [path section]))
  {
    dataSource = [(PXSectionedDataSourceManager *)self->_dataSourceManager dataSource];
    totalNumberOfItems = [dataSource totalNumberOfItems];

    [viewCopy layoutMargins];
    v10 = v9;
    v12 = v11;
    [viewCopy bounds];
    [PXSharedLibraryIncludedPeopleTableViewCell heightForWidth:totalNumberOfItems numberOfItems:v13 - (v10 + v12)];
    v15 = v14;
  }

  else
  {
    v15 = *MEMORY[0x1E69DE3D0];
  }

  return v15;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if ([(PXSharedLibraryAssistantPeopleViewController *)self _isPeopleCellRepresentedAtSection:section])
  {
    peopleSectionFooterView = self->_peopleSectionFooterView;
  }

  else
  {
    peopleSectionFooterView = 0;
  }

  return peopleSectionFooterView;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (section)
  {
    return 0;
  }

  else
  {
    return self->_peopleSectionHeaderView;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = -[PXSharedLibraryAssistantPeopleViewController _isPeopleCellRepresentedAtSection:](self, "_isPeopleCellRepresentedAtSection:", [path section]);
  v6 = &OBJC_IVAR___PXSharedLibraryAssistantPeopleViewController__buttonCell;
  if (v5)
  {
    v6 = &OBJC_IVAR___PXSharedLibraryAssistantPeopleViewController__peopleCell;
  }

  v7 = *(&self->super.super.super.super.super.super.isa + *v6);

  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if ([(PXSharedLibraryAssistantPeopleViewController *)self _hasPeople])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)_hasPeople
{
  dataSource = [(PXSectionedDataSourceManager *)self->_dataSourceManager dataSource];
  v3 = [dataSource totalNumberOfItems] > 0;

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PXSharedLibraryAssistantPeopleViewController;
  [(OBTableWelcomeController *)&v4 viewWillAppear:appear];
  [(PXSharedLibraryAssistantPeopleViewController *)self _updateContinueButton];
  [(PXSharedLibraryIncludedPeopleDataSourceManager *)self->_dataSourceManager setViewModelSyncingDisabled:0];
}

- (void)viewDidLoad
{
  v44.receiver = self;
  v44.super_class = PXSharedLibraryAssistantPeopleViewController;
  [(OBTableWelcomeController *)&v44 viewDidLoad];
  [(PXSharedLibraryAssistantPeopleViewController *)self _updateHeaderDetailText];
  v3 = [[PXSharedLibraryIncludedPeopleDataSourceManager alloc] initWithViewModel:self->_viewModel];
  dataSourceManager = self->_dataSourceManager;
  self->_dataSourceManager = v3;

  [(PXSectionedDataSourceManager *)self->_dataSourceManager registerChangeObserver:self context:PXSharedLibraryIncludedPeopleDataSourceManagerObservationContext];
  v5 = objc_alloc(MEMORY[0x1E69DD020]);
  v6 = [v5 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v6 setBackgroundColor:systemBackgroundColor];

  [v6 setDelegate:self];
  [v6 setDataSource:self];
  [(OBTableWelcomeController *)self setTableView:v6];
  headerConfiguration = [MEMORY[0x1E69DCC28] headerConfiguration];
  v9 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_PeopleSelection_PickerDetail");
  [headerConfiguration setText:v9];

  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  textProperties = [headerConfiguration textProperties];
  [textProperties setFont:v10];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  textProperties2 = [headerConfiguration textProperties];
  [textProperties2 setColor:labelColor];

  textProperties3 = [headerConfiguration textProperties];
  [textProperties3 setAdjustsFontForContentSizeCategory:1];

  v15 = objc_alloc_init(MEMORY[0x1E69DD050]);
  peopleSectionHeaderView = self->_peopleSectionHeaderView;
  self->_peopleSectionHeaderView = v15;

  [(UITableViewHeaderFooterView *)self->_peopleSectionHeaderView setContentConfiguration:headerConfiguration];
  [(UITableViewHeaderFooterView *)self->_peopleSectionHeaderView setAutomaticallyUpdatesContentConfiguration:1];
  v17 = [[PXSharedLibraryIncludedPeopleTableViewCell alloc] initWithDataSourceManager:self->_dataSourceManager];
  peopleCell = self->_peopleCell;
  self->_peopleCell = v17;

  v19 = objc_alloc_init(MEMORY[0x1E69DD050]);
  peopleSectionFooterView = self->_peopleSectionFooterView;
  self->_peopleSectionFooterView = v19;

  v21 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
  buttonCell = self->_buttonCell;
  self->_buttonCell = v21;

  defaultContentConfiguration = [(UITableViewCell *)self->_buttonCell defaultContentConfiguration];
  v24 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] withSymbolicTraits:0x8000 options:2];
  textProperties4 = [defaultContentConfiguration textProperties];
  [textProperties4 setFont:v24];

  view = [(PXSharedLibraryAssistantPeopleViewController *)self view];
  tintColor = [view tintColor];
  textProperties5 = [defaultContentConfiguration textProperties];
  [textProperties5 setColor:tintColor];

  textProperties6 = [defaultContentConfiguration textProperties];
  [textProperties6 setAdjustsFontForContentSizeCategory:1];

  v30 = PXSharedLibraryCellSystemImageNamed(@"plus");
  [defaultContentConfiguration setImage:v30];

  [(UITableViewCell *)self->_buttonCell setContentConfiguration:defaultContentConfiguration];
  listPlainCellConfiguration = [MEMORY[0x1E69DC6E8] listPlainCellConfiguration];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [listPlainCellConfiguration setBackgroundColor:secondarySystemBackgroundColor];

  [(UITableViewCell *)self->_buttonCell setBackgroundConfiguration:listPlainCellConfiguration];
  [(PXSharedLibraryAssistantPeopleViewController *)self _updateButtonCell];
  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = boldButton;

  v35 = self->_continueButton;
  v36 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_Continue");
  [(OBBoldTrayButton *)v35 setTitle:v36 forState:0];

  [(OBBoldTrayButton *)self->_continueButton addTarget:self action:sel_continueButtonTapped_ forControlEvents:0x2000];
  buttonTray = [(PXSharedLibraryAssistantPeopleViewController *)self buttonTray];
  [buttonTray addButton:self->_continueButton];

  v38 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_continueButtonTapped_];
  [(PXSharedLibraryAssistantPeopleViewController *)self addKeyCommand:v38];

  linkButton = [MEMORY[0x1E69B7D38] linkButton];
  v40 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_Skip");
  [linkButton setTitle:v40 forState:0];

  [linkButton addTarget:self action:sel_addLaterButtonTapped_ forControlEvents:0x2000];
  buttonTray2 = [(PXSharedLibraryAssistantPeopleViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];

  tableCellBlueTextColor = [MEMORY[0x1E69DC888] tableCellBlueTextColor];
  view2 = [(PXSharedLibraryAssistantPeopleViewController *)self view];
  [view2 setTintColor:tableCellBlueTextColor];
}

- (PXSharedLibraryAssistantPeopleViewController)initWithViewModel:(id)model
{
  modelCopy = model;
  if (!modelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantPeopleViewController+iOS.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  v7 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_PeopleSelection_Title");
  v15.receiver = self;
  v15.super_class = PXSharedLibraryAssistantPeopleViewController;
  v8 = [(OBTableWelcomeController *)&v15 initWithTitle:v7 detailText:0 icon:0 adoptTableViewScrollView:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewModel, model);
    [(PXSharedLibraryAssistantViewModel *)v9->_viewModel registerChangeObserver:v9 context:PXSharedLibraryAssistantViewModelObservationContext_236236];
    sourceLibraryInfo = [modelCopy sourceLibraryInfo];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v11 = sourceLibraryInfo;
    }

    else
    {
      v11 = 0;
    }

    photoLibrary = [v11 photoLibrary];

    [photoLibrary px_registerChangeObserver:v9];
  }

  return v9;
}

+ (id)_fetchedPeople:(id)people sortedByLocalIdentifiers:(id)identifiers
{
  v24 = *MEMORY[0x1E69E9840];
  peopleCopy = people;
  identifiersCopy = identifiers;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = peopleCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = MEMORY[0x1E696AD98];
        localIdentifier = [v13 localIdentifier];
        v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(identifiersCopy, "indexOfObject:", localIdentifier)}];
        [v7 setObject:v16 forKeyedSubscript:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = [v7 keysSortedByValueUsingComparator:&__block_literal_global_278];

  return v17;
}

@end