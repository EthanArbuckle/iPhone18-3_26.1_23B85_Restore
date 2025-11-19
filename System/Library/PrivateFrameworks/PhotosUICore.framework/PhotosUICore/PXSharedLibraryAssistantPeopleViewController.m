@interface PXSharedLibraryAssistantPeopleViewController
+ (id)_fetchedPeople:(id)a3 sortedByLocalIdentifiers:(id)a4;
- (BOOL)_hasPeople;
- (NSString)textForFooter;
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryAssistantPeopleViewController)initWithViewModel:(id)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)peopleInfosToIdentifyInDataSource:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)_advanceToNextStep;
- (void)_fixupStalePersonForUUID:(id)a3 loneParticipantInfo:(id)a4;
- (void)_presentPickerForInfos:(id)a3;
- (void)_suggestedStartDateChanged;
- (void)_updateButtonCell;
- (void)_updateContinueButton;
- (void)_updateFooterText;
- (void)_updateHeaderDetailText;
- (void)addLaterButtonTapped:(id)a3;
- (void)completeRulesStep;
- (void)continueButtonTapped:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
- (void)setupLibraryChangeListening;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateWithPerson:(id)a3 loneParticipantInfo:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PXSharedLibraryAssistantPeopleViewController

- (void)_fixupStalePersonForUUID:(id)a3 loneParticipantInfo:(id)a4
{
  v46 = a3;
  v7 = a4;
  v8 = [(PXSharedLibraryAssistantPeopleViewController *)self viewModel];
  v9 = [(PXSharedLibraryAssistantPeopleViewController *)self dataSourceManager];
  v10 = [v8 sourceLibraryInfo];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    v35 = objc_opt_class();
    v34 = NSStringFromClass(v35);
    v36 = [v10 px_descriptionForAssertionMessage];
    [v32 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantPeopleViewController+Internal.m" lineNumber:109 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"viewModel.sourceLibraryInfo", v34, v36}];
  }

  else
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    [v32 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantPeopleViewController+Internal.m" lineNumber:109 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"viewModel.sourceLibraryInfo", v34}];
  }

LABEL_3:
  v40 = a2;
  v11 = [v10 photoLibrary];
  v12 = [v11 librarySpecificFetchOptions];

  v13 = [v9 dataSource];
  v14 = [v13 allPersonUUIDs];

  v15 = [MEMORY[0x1E6978980] fetchFinalMergeTargetPersonsForPersonWithUUID:v46 options:v12];
  v16 = [v15 firstObject];

  if (!v7)
  {
    v17 = [v9 dataSource];
    v18 = [v17 infosWithoutPeople];
    v7 = [v18 firstObject];
  }

  v45 = [v7 participant];
  v44 = v14;
  if (([v14 containsObject:v46] & 1) == 0)
  {
    v19 = [v16 uuid];
    v20 = [v14 containsObject:v19];

    if ((v20 & 1) == 0)
    {
      v21 = [[PXSharedLibraryIncludedPeopleInfo alloc] initWithParticipant:v45 person:v16];
      [v9 replaceInfo:v7 withInfo:v21];
      goto LABEL_25;
    }
  }

  v41 = v12;
  v21 = [v16 uuid];
  v22 = [v9 dataSource];
  v23 = [v22 infoForPersonUUID:v46];

  v24 = [v9 dataSource];
  v25 = [v24 infoForPersonUUID:v21];

  v42 = v10;
  v43 = v8;
  if (!(v23 | v25))
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:v40 object:self file:@"PXSharedLibraryAssistantPeopleViewController+Internal.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"stalePersonInfo || refreshedPersonInfo"}];

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
    if (v7)
    {
      v27 = v25;
      if ([v46 isEqualToString:v21])
      {
        v38 = 0;
      }

      else
      {
        v38 = v23;
      }

      v30 = v38;
      v31 = v7;
      v29 = [[PXSharedLibraryIncludedPeopleInfo alloc] initWithParticipant:v45 person:v16];
      if (v27)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if ([v46 isEqualToString:v21])
      {
        v39 = 0;
      }

      else
      {
        v39 = v23;
      }

      v30 = v39;
      v31 = v25;
      v29 = [[PXSharedLibraryIncludedPeopleInfo alloc] initWithPerson:v16];
      v27 = 0;
    }

LABEL_17:
    if (v30)
    {
      [v9 removeInfo:v30];
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
  if (v7)
  {
    v28 = v7;
    v29 = [[PXSharedLibraryIncludedPeopleInfo alloc] initWithParticipant:v45 person:v16];
    v30 = 0;
LABEL_16:
    [v9 removeInfo:v27];
    v31 = v7;
    goto LABEL_17;
  }

  v29 = [[PXSharedLibraryIncludedPeopleInfo alloc] initWithPerson:v16];
  v30 = 0;
  v31 = v27;
  v27 = 0;
LABEL_23:
  [v9 replaceInfo:v31 withInfo:v29];

LABEL_24:
  v10 = v42;
  v8 = v43;
  v12 = v41;
LABEL_25:
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(PXSharedLibraryAssistantPeopleViewController *)self dataSourceManager];
  v6 = [v5 dataSource];
  v7 = [v6 allInfos];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) person];
        if (v12)
        {
          v13 = [v4 changeDetailsForObject:v12];
          if (v13)
          {
            v14 = [v12 uuid];
            [(PXSharedLibraryAssistantPeopleViewController *)self _fixupStalePersonForUUID:v14 loneParticipantInfo:0];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)updateWithPerson:(id)a3 loneParticipantInfo:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [v14 uuid];
  v8 = [(PXSharedLibraryAssistantPeopleViewController *)self dataSourceManager];
  v9 = [v6 participant];
  v10 = [v8 dataSource];
  v11 = [v10 infoForPersonUUID:v7];

  if (v11)
  {
    v12 = [v11 participant];

    if (v12)
    {
      goto LABEL_6;
    }

    v13 = [v14 uuid];
    [(PXSharedLibraryAssistantPeopleViewController *)self _fixupStalePersonForUUID:v13 loneParticipantInfo:v6];
  }

  else
  {
    v13 = [[PXSharedLibraryIncludedPeopleInfo alloc] initWithParticipant:v9 person:v14];
    [v8 replaceInfo:v6 withInfo:v13];
  }

LABEL_6:
}

- (NSString)textForFooter
{
  v2 = [(PXSharedLibraryAssistantPeopleViewController *)self viewModel];
  v7 = 0;
  v3 = [v2 localizedSelectedPeopleWithAdditionalPeopleCount:&v7];
  v4 = [v3 count];
  v5 = v7;
  if (v2)
  {
    [v2 shareCounts];
  }

  if (v5 + v4 >= 1)
  {
    PXSharedLibraryAssistantPeopleSelectionFooterTitle(v3, v7);
  }

  return &stru_1F1741150;
}

- (id)peopleInfosToIdentifyInDataSource:(id)a3
{
  v3 = [a3 infosWithoutPeople];
  v4 = [v3 count];
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

    v6 = [v3 subarrayWithRange:{0, v5}];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (void)setupLibraryChangeListening
{
  v3 = [(PXSharedLibraryAssistantPeopleViewController *)self viewModel];
  v4 = [v3 sourceLibraryInfo];

  v7 = v4;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 photoLibrary];

  [v6 px_registerChangeObserver:self];
}

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)_presentPickerForInfos:(id)a3
{
  v5 = [(PXSharedLibraryAssistantPeopleViewController *)self viewModel];
  v6 = [v5 sourceLibraryInfo];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    v17 = [v6 px_descriptionForAssertionMessage];
    [v13 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantPeopleViewController+iOS.m" lineNumber:427 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.viewModel.sourceLibraryInfo", v15, v17}];
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v13 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantPeopleViewController+iOS.m" lineNumber:427 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.viewModel.sourceLibraryInfo", v15}];
  }

LABEL_3:
  v7 = objc_alloc(MEMORY[0x1E69790E0]);
  v8 = [v6 photoLibrary];
  v9 = [v7 initWithPhotoLibrary:v8];

  [v9 setSelectionLimit:0];
  [v9 _setSourceType:1];
  v10 = objc_alloc_init(MEMORY[0x1E6979160]);
  [v9 _setPeopleConfiguration:v10];

  v11 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v9];
  [v11 setDelegate:self];
  v12 = [(PXSharedLibraryAssistantPeopleViewController *)self assistantViewControllerDelegate];
  if (!v12)
  {
    PXAssertGetLog();
  }

  [v12 assistantViewController:self presentViewController:v11 animated:1];
}

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PXSharedLibraryAssistantPeopleViewController *)self assistantViewControllerDelegate];
  if (!v6)
  {
    PXAssertGetLog();
  }

  [v6 assistantViewController:self dismissViewControllerAnimated:1];
  PXMap();
}

- (void)_updateFooterText
{
  v9 = [MEMORY[0x1E69DCC28] footerConfiguration];
  v3 = [(PXSharedLibraryAssistantPeopleViewController *)self textForFooter];
  [v9 setText:v3];

  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v5 = [v9 textProperties];
  [v5 setFont:v4];

  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v7 = [v9 textProperties];
  [v7 setColor:v6];

  [v9 directionalLayoutMargins];
  [v9 setDirectionalLayoutMargins:7.0];
  v8 = [v9 textProperties];
  [v8 setAdjustsFontForContentSizeCategory:1];

  [(UITableViewHeaderFooterView *)self->_peopleSectionFooterView setContentConfiguration:v9];
}

- (void)_updateButtonCell
{
  v5 = [(UITableViewCell *)self->_buttonCell contentConfiguration];
  if ([(PXSharedLibraryAssistantPeopleViewController *)self _hasPeople])
  {
    v3 = @"PXSharedLibraryAssistant_PeopleSelection_ButtonTitle_AddOthers";
  }

  else
  {
    v3 = @"PXSharedLibraryAssistant_PeopleSelection_ButtonTitle_Add";
  }

  v4 = PXLocalizedSharedLibraryString(v3);
  [v5 setText:v4];

  [(UITableViewCell *)self->_buttonCell setContentConfiguration:v5];
}

- (void)_updateHeaderDetailText
{
  v4 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_PeopleSelection_Subtitle");
  v3 = [(PXSharedLibraryAssistantPeopleViewController *)self headerView];
  [v3 setDetailText:v4];
}

- (void)_updateContinueButton
{
  v3 = [(PXSharedLibraryAssistantPeopleViewController *)self _hasPeople];
  continueButton = self->_continueButton;

  [(OBBoldTrayButton *)continueButton setEnabled:v3];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXSharedLibraryAssistantViewModelObservationContext_236236 == a5)
  {
    if ((v6 & 8) != 0)
    {
      [(PXSharedLibraryAssistantPeopleViewController *)self _updateContinueButton];
      [(PXSharedLibraryAssistantPeopleViewController *)self _updateHeaderDetailText];
      if ((v6 & 0x800) == 0)
      {
LABEL_7:
        if ((v6 & 0x2000) == 0)
        {
          goto LABEL_9;
        }

LABEL_8:
        [(PXSharedLibraryAssistantPeopleViewController *)self _suggestedStartDateChanged];
        goto LABEL_9;
      }
    }

    else if ((v6 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    [(PXSharedLibraryAssistantPeopleViewController *)self _updateFooterText];
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (PXSharedLibraryIncludedPeopleDataSourceManagerObservationContext != a5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantPeopleViewController+iOS.m" lineNumber:334 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v10 = [(OBTableWelcomeController *)self tableView];
    [v10 reloadData];

    [(PXSharedLibraryAssistantPeopleViewController *)self _updateFooterText];
    [(PXSharedLibraryAssistantPeopleViewController *)self _updateButtonCell];
    v11 = [(PXSectionedDataSourceManager *)self->_dataSourceManager dataSource];
    v12 = [(PXSharedLibraryAssistantPeopleViewController *)self viewModel];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__PXSharedLibraryAssistantPeopleViewController_observable_didChange_context___block_invoke;
    v15[3] = &unk_1E7749B98;
    v16 = v11;
    v13 = v11;
    [v12 performChanges:v15];
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
  v3 = [(PXSharedLibraryAssistantPeopleViewController *)self assistantViewControllerDelegate];
  if (!v3)
  {
    PXAssertGetLog();
  }

  [v3 stepForwardInAssistantForAssistantViewController:self];
}

- (void)_suggestedStartDateChanged
{
  v3 = [(PXSharedLibraryAssistantViewModel *)self->_viewModel suggestedStartDate];

  if (v3 && self->_wantsToContinueToNextStep)
  {
    [(OBBoldTrayButton *)self->_continueButton hidesBusyIndicator];

    [(PXSharedLibraryAssistantPeopleViewController *)self _advanceToNextStep];
  }
}

- (void)completeRulesStep
{
  self->_wantsToContinueToNextStep = 1;
  v3 = [(PXSectionedDataSourceManager *)self->_dataSourceManager dataSource];
  v4 = [v3 allInfos];
  v5 = [v4 count];

  v6 = [(PXSharedLibraryAssistantViewModel *)self->_viewModel suggestedStartDate];

  if (v5)
  {
    v7 = v6 == 0;
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

- (void)addLaterButtonTapped:(id)a3
{
  [(PXSharedLibraryIncludedPeopleDataSourceManager *)self->_dataSourceManager setViewModelSyncingDisabled:1];

  [(PXSharedLibraryAssistantPeopleViewController *)self completeRulesStep];
}

- (void)continueButtonTapped:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_pickerWasPresentedFromContinueButton = 1;
  v5 = [(PXSectionedDataSourceManager *)self->_dataSourceManager dataSource];
  v6 = [(PXSharedLibraryAssistantPeopleViewController *)self peopleInfosToIdentifyInDataSource:v5];

  if (![v6 count])
  {
    self->_pickerWasPresentedFromContinueButton = 0;
    v9 = [(PXSectionedDataSourceManager *)self->_dataSourceManager dataSource];
    [v9 allInfos];
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
  [v7 setSourceItem:v4];
  v8 = [(PXSharedLibraryAssistantPeopleViewController *)self assistantViewControllerDelegate];
  if (!v8)
  {
    PXAssertGetLog();
  }

  [v8 assistantViewController:self presentAlertWithConfiguration:v7 animated:1];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __69__PXSharedLibraryAssistantPeopleViewController_continueButtonTapped___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _presentPickerForInfos:*(a1 + 32)];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  [a3 deselectRowAtIndexPath:a4 animated:1];
  v5 = [(PXSharedLibraryAssistantPeopleViewController *)self viewModel];
  v6 = [v5 sourceLibraryInfo];

  v7 = v6;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 photoLibrary];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E69790E0]) initWithPhotoLibrary:v9];
    [v10 setSelectionLimit:0];
    v11 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_Rules_AddPeople");
    [v10 setPrompt:v11];

    [v10 _setSourceType:1];
    v12 = objc_alloc_init(MEMORY[0x1E6979160]);
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = [(PXSharedLibraryAssistantViewModel *)self->_viewModel personUUIDs];
    if ([v14 count])
    {
      PXMap();
    }

    [v12 setDisabledIdentifiers:v13];
    [v10 _setPeopleConfiguration:v12];
    v15 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v10];
    [v15 setDelegate:self];
    self->_pickerWasPresentedFromContinueButton = 0;
    v16 = [(PXSharedLibraryAssistantPeopleViewController *)self assistantViewControllerDelegate];
    if (!v16)
    {
      PXAssertGetLog();
    }

    [v16 assistantViewController:self presentViewController:v15 animated:1];
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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  if (-[PXSharedLibraryAssistantPeopleViewController _isPeopleCellRepresentedAtSection:](self, "_isPeopleCellRepresentedAtSection:", [a4 section]))
  {
    v7 = [(PXSectionedDataSourceManager *)self->_dataSourceManager dataSource];
    v8 = [v7 totalNumberOfItems];

    [v6 layoutMargins];
    v10 = v9;
    v12 = v11;
    [v6 bounds];
    [PXSharedLibraryIncludedPeopleTableViewCell heightForWidth:v8 numberOfItems:v13 - (v10 + v12)];
    v15 = v14;
  }

  else
  {
    v15 = *MEMORY[0x1E69DE3D0];
  }

  return v15;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if ([(PXSharedLibraryAssistantPeopleViewController *)self _isPeopleCellRepresentedAtSection:a4])
  {
    peopleSectionFooterView = self->_peopleSectionFooterView;
  }

  else
  {
    peopleSectionFooterView = 0;
  }

  return peopleSectionFooterView;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    return 0;
  }

  else
  {
    return self->_peopleSectionHeaderView;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = -[PXSharedLibraryAssistantPeopleViewController _isPeopleCellRepresentedAtSection:](self, "_isPeopleCellRepresentedAtSection:", [a4 section]);
  v6 = &OBJC_IVAR___PXSharedLibraryAssistantPeopleViewController__buttonCell;
  if (v5)
  {
    v6 = &OBJC_IVAR___PXSharedLibraryAssistantPeopleViewController__peopleCell;
  }

  v7 = *(&self->super.super.super.super.super.super.isa + *v6);

  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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
  v2 = [(PXSectionedDataSourceManager *)self->_dataSourceManager dataSource];
  v3 = [v2 totalNumberOfItems] > 0;

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PXSharedLibraryAssistantPeopleViewController;
  [(OBTableWelcomeController *)&v4 viewWillAppear:a3];
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
  v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v6 setBackgroundColor:v7];

  [v6 setDelegate:self];
  [v6 setDataSource:self];
  [(OBTableWelcomeController *)self setTableView:v6];
  v8 = [MEMORY[0x1E69DCC28] headerConfiguration];
  v9 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_PeopleSelection_PickerDetail");
  [v8 setText:v9];

  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  v11 = [v8 textProperties];
  [v11 setFont:v10];

  v12 = [MEMORY[0x1E69DC888] labelColor];
  v13 = [v8 textProperties];
  [v13 setColor:v12];

  v14 = [v8 textProperties];
  [v14 setAdjustsFontForContentSizeCategory:1];

  v15 = objc_alloc_init(MEMORY[0x1E69DD050]);
  peopleSectionHeaderView = self->_peopleSectionHeaderView;
  self->_peopleSectionHeaderView = v15;

  [(UITableViewHeaderFooterView *)self->_peopleSectionHeaderView setContentConfiguration:v8];
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

  v23 = [(UITableViewCell *)self->_buttonCell defaultContentConfiguration];
  v24 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] withSymbolicTraits:0x8000 options:2];
  v25 = [v23 textProperties];
  [v25 setFont:v24];

  v26 = [(PXSharedLibraryAssistantPeopleViewController *)self view];
  v27 = [v26 tintColor];
  v28 = [v23 textProperties];
  [v28 setColor:v27];

  v29 = [v23 textProperties];
  [v29 setAdjustsFontForContentSizeCategory:1];

  v30 = PXSharedLibraryCellSystemImageNamed(@"plus");
  [v23 setImage:v30];

  [(UITableViewCell *)self->_buttonCell setContentConfiguration:v23];
  v31 = [MEMORY[0x1E69DC6E8] listPlainCellConfiguration];
  v32 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v31 setBackgroundColor:v32];

  [(UITableViewCell *)self->_buttonCell setBackgroundConfiguration:v31];
  [(PXSharedLibraryAssistantPeopleViewController *)self _updateButtonCell];
  v33 = [MEMORY[0x1E69B7D00] boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v33;

  v35 = self->_continueButton;
  v36 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_Continue");
  [(OBBoldTrayButton *)v35 setTitle:v36 forState:0];

  [(OBBoldTrayButton *)self->_continueButton addTarget:self action:sel_continueButtonTapped_ forControlEvents:0x2000];
  v37 = [(PXSharedLibraryAssistantPeopleViewController *)self buttonTray];
  [v37 addButton:self->_continueButton];

  v38 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_continueButtonTapped_];
  [(PXSharedLibraryAssistantPeopleViewController *)self addKeyCommand:v38];

  v39 = [MEMORY[0x1E69B7D38] linkButton];
  v40 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_Skip");
  [v39 setTitle:v40 forState:0];

  [v39 addTarget:self action:sel_addLaterButtonTapped_ forControlEvents:0x2000];
  v41 = [(PXSharedLibraryAssistantPeopleViewController *)self buttonTray];
  [v41 addButton:v39];

  v42 = [MEMORY[0x1E69DC888] tableCellBlueTextColor];
  v43 = [(PXSharedLibraryAssistantPeopleViewController *)self view];
  [v43 setTintColor:v42];
}

- (PXSharedLibraryAssistantPeopleViewController)initWithViewModel:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantPeopleViewController+iOS.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  v7 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_PeopleSelection_Title");
  v15.receiver = self;
  v15.super_class = PXSharedLibraryAssistantPeopleViewController;
  v8 = [(OBTableWelcomeController *)&v15 initWithTitle:v7 detailText:0 icon:0 adoptTableViewScrollView:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewModel, a3);
    [(PXSharedLibraryAssistantViewModel *)v9->_viewModel registerChangeObserver:v9 context:PXSharedLibraryAssistantViewModelObservationContext_236236];
    v10 = [v6 sourceLibraryInfo];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v11 photoLibrary];

    [v12 px_registerChangeObserver:v9];
  }

  return v9;
}

+ (id)_fetchedPeople:(id)a3 sortedByLocalIdentifiers:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
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
        v15 = [v13 localIdentifier];
        v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v6, "indexOfObject:", v15)}];
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