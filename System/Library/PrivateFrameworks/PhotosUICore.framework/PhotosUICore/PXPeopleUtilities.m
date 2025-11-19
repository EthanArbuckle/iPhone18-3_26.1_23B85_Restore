@interface PXPeopleUtilities
+ (BOOL)_hasRecentlyHandledBootstrapOrSuggestionForPerson:(id)a3;
+ (BOOL)_isPhotosProcess;
+ (BOOL)canSetPersonAsMagicItem:(id)a3;
+ (BOOL)isGreenTeaAndContactsAccessDenied;
+ (BOOL)isPersonHiddenFromPeopleHome:(id)a3;
+ (BOOL)mergePersons:(id)a3 withPerson:(id)a4;
+ (BOOL)shouldShowBootstrapForPerson:(id)a3 context:(id)a4;
+ (BOOL)showBootstrapIfNeededWithContext:(id)a3 fromParentVC:(id)a4 force:(BOOL)a5 flowDelegate:(id)a6 presentationDelegate:(id)a7;
+ (CGRect)faceRectForPeopleFaceTile:(id)a3;
+ (NSArray)reverseSortDescriptorsForManualSort;
+ (NSArray)sortDescriptorsForManualSort;
+ (id)_daysDictionary;
+ (id)_peopleHomeFetchOptionsForPhotoLibrary:(id)a3;
+ (id)_peopleHomeFetchResultForPersonType:(int64_t)a3 photoLibrary:(id)a4;
+ (id)_titleStringForPeople:(id)a3 singlePersonFallback:(id)a4 groupFallback:(id)a5;
+ (id)_untaggingLog;
+ (id)alertControllerForRevertingSuggestLess:(id)a3 undoManager:(id)a4 completion:(id)a5;
+ (id)alertControllerForUntaggingPerson:(id)a3 asset:(id)a4 completion:(id)a5;
+ (id)assetCollectionListFetchResultForPeople:(id)a3 assetCollectionFetchResults:(id *)a4;
+ (id)assetCollectionListFetchResultForPerson:(id)a3;
+ (id)bootstrapViewControllerForContext:(id)a3 delegate:(id)a4;
+ (id)comparatorByPeopleHomeSortingType:(unint64_t)a3;
+ (id)contactViewControllerForContact:(id)a3 target:(id)a4 selector:(SEL)a5;
+ (id)facesForPerson:(id)a3 inAssets:(id)a4;
+ (id)favoritingStringForPerson:(id)a3;
+ (id)fetchMeContact;
+ (id)fetchPeopleAndPetsInSocialGroup:(id)a3;
+ (id)fetchPeopleForPeopleHomeWithPhotoLibrary:(id)a3 fetchLimit:(int64_t)a4;
+ (id)fetchPeopleWithUUIDs:(id)a3 photoLibrary:(id)a4;
+ (id)generateNewFaceTileFromFaceTile:(id)a3;
+ (id)identifiersForPeople:(id)a3;
+ (id)keyAssetForPerson:(id)a3 face:(id)a4;
+ (id)keyFaceForPerson:(id)a3;
+ (id)lastManuallySortedPersonInSectionOfType:(int64_t)a3 photoLibrary:(id)a4;
+ (id)locKeyForHasHumans:(BOOL)a3 hasPets:(BOOL)a4 key:(id)a5;
+ (id)locKeyForPeople:(id)a3 key:(id)a4;
+ (id)locKeyForPersonOrPet:(id)a3 key:(id)a4;
+ (id)locKeyForPersonOrPet:(id)a3 withVisibility:(unint64_t)a4 key:(id)a5;
+ (id)memoryTitleStringFromPeople:(id)a3;
+ (id)peopleArrayFromFastEnumeration:(id)a3;
+ (id)peopleFetchResultFromFastEnumeration:(id)a3 photoLibrary:(id)a4;
+ (id)personFaceTileByPersonIdForPersons:(id)a3;
+ (id)personWithLocalIdentifier:(id)a3 propertySets:(id)a4 photoLibrary:(id)a5;
+ (id)personWithPersonUri:(id)a3;
+ (id)personWithPersonUri:(id)a3 photoLibrary:(id)a4;
+ (id)sharedContactStore;
+ (id)socialGroupFetchResultFromFastEnumeration:(id)a3 photoLibrary:(id)a4;
+ (id)sortDescriptorsWithPersonAssetSortOrder:(int64_t)a3;
+ (id)sortedPersons:(id)a3 byPersonMemoryFeatures:(id)a4;
+ (id)stringForAddingPerson:(id)a3;
+ (id)stringForHidingPerson:(id)a3;
+ (id)suggestLessOptionSelectionViewController:(id)a3 delegate:(id)a4 completionHandler:(id)a5;
+ (id)summaryTitleForLibrary:(id)a3 count:(int64_t)a4;
+ (id)titleStringForPeople:(id)a3;
+ (id)titleStringForPerson:(id)a3;
+ (int64_t)changeTypeForPeople:(id)a3;
+ (int64_t)countOfPeopleHomePeopleForPhotoLibrary:(id)a3;
+ (int64_t)manualOrderForInsertingAtEndOfSectionWithType:(int64_t)a3 photoLibrary:(id)a4;
+ (unint64_t)currentSortOrderFor:(id)a3;
+ (void)_alertStringsForPerson:(id)a3 alertTitle:(id *)a4 alertMessage:(id *)a5 alternativeLevelActionTitle:(id *)a6 resetActionTitle:(id *)a7;
+ (void)_peopleFaceTilesForFaces:(id)a3 asset:(id)a4 options:(id)a5 completion:(id)a6;
+ (void)_setDaysDictionary:(id)a3;
+ (void)_unlinkContactfromPerson:(id)a3 completion:(id)a4;
+ (void)handleUnlinkContact:(id)a3 person:(id)a4 presentationEnvironment:(id)a5 sourceItem:(id)a6 handleUnlinkageInternally:(BOOL)a7 completion:(id)a8;
+ (void)people:(id)a3 hasHumans:(BOOL *)a4 hasPets:(BOOL *)a5;
+ (void)peopleFaceTilesForAsset:(id)a3 options:(id)a4 completion:(id)a5;
+ (void)peopleFaceTilesForFaces:(id)a3 asset:(id)a4 options:(id)a5 completion:(id)a6;
+ (void)performSetSocialGroupKeyPhotoWithAsset:(id)a3 socialGroup:(id)a4 undoManager:(id)a5 completionHandler:(id)a6;
+ (void)resetTemporarilySuppressedBootstrapOrSuggestions;
+ (void)setSortOrder:(unint64_t)a3 toPhotoLibrary:(id)a4;
+ (void)temporarilySuppressBootstrapOrSuggestionForPerson:(id)a3;
+ (void)unblockPersonsInLibrary:(id)a3 completion:(id)a4;
+ (void)unlinkContactInfoForPerson:(id)a3 completion:(id)a4;
@end

@implementation PXPeopleUtilities

+ (id)contactViewControllerForContact:(id)a3 target:(id)a4 selector:(SEL)a5
{
  v7 = MEMORY[0x1E695D148];
  v8 = a4;
  v9 = [v7 viewControllerForContact:a3];
  v10 = [v9 contentViewController];
  v11 = [v10 cardFooterGroup];
  v12 = PXLocalizedStringFromTable(@"PXPeopleInfoUnlinkContactButton", @"PhotosUICore");
  [v10 addActionWithTitle:v12 target:v8 selector:a5 inGroup:v11 destructive:1];

  return v9;
}

+ (void)_unlinkContactfromPerson:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__PXPeopleUtilities_UI___unlinkContactfromPerson_completion___block_invoke;
  v9[3] = &unk_1E774BD88;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  [PXPeopleUtilities unlinkContactInfoForPerson:v8 completion:v9];
}

void __61__PXPeopleUtilities_UI___unlinkContactfromPerson_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLUIGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) localIdentifier];
      *buf = 138543362;
      v16 = v8;
      v9 = "Unlinked contact info for person %{public}@ from contact details";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v10, v11, v9, buf, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = [*(a1 + 32) localIdentifier];
    *buf = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v5;
    v9 = "Failed to unlink contact info for person %{public}@ from contact details with error %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PXPeopleUtilities_UI___unlinkContactfromPerson_completion___block_invoke_489;
  block[3] = &unk_1E774C250;
  v14 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __61__PXPeopleUtilities_UI___unlinkContactfromPerson_completion___block_invoke_489(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)handleUnlinkContact:(id)a3 person:(id)a4 presentationEnvironment:(id)a5 sourceItem:(id)a6 handleUnlinkageInternally:(BOOL)a7 completion:(id)a8
{
  v12 = a4;
  v13 = a8;
  v14 = a6;
  a5;
  v15 = a3;
  PXLocalizedStringFromTable(@"PXPeopleInfoUnlinkContactAlertTitle", @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  [MEMORY[0x1E6978980] fullNameFromContact:v15];
  objc_claimAutoreleasedReturnValue();

  PXLocalizedStringFromTable(@"PXPeopleInfoUnlinkContactAlertMessage", @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringWithValidatedFormat();
}

void __124__PXPeopleUtilities_UI__handleUnlinkContact_person_presentationEnvironment_sourceItem_handleUnlinkageInternally_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v5 = v3;
    [PXPeopleUtilities _unlinkContactfromPerson:*(a1 + 32) completion:*(a1 + 40)];
  }

  else
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = v3;
    (*(v4 + 16))();
  }

  v3 = v5;
LABEL_6:
}

+ (id)suggestLessOptionSelectionViewController:(id)a3 delegate:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[_TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController alloc] initWithPeople:v9 delegate:v8 completionHandler:v7];

  return v10;
}

+ (void)_alertStringsForPerson:(id)a3 alertTitle:(id *)a4 alertMessage:(id *)a5 alternativeLevelActionTitle:(id *)a6 resetActionTitle:(id *)a7
{
  v31[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [v10 px_localizedName];
  v12 = [v10 userFeedbackProperties];
  v13 = [v12 userFeedback];
  v14 = [v13 type];

  v31[0] = *MEMORY[0x1E695C1C0];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v16 = [v10 linkedContactWithKeysToFetch:v15];
  v17 = [v16 termsOfAddress];

  v30 = v11;
  if (v14 == 3)
  {
    if ([v11 length])
    {
      PXLocalizedStringForPersonOrPetAndVisibility(v10, 0, @"PXPeopleBlockPersonRevertAlertTitleNamed_FromNeverFeature");
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    v21 = PXLocalizedStringForPersonOrPetAndVisibility(v10, 0, @"PXPeopleBlockPersonRevertAlertTitleNoName_FromNeverFeature");
    v22 = @"PXPeopleBlockPersonRevertAlertInformativeText_FromNeverFeature";
    v23 = @"PXPeopleBlockPersonRevertAlertChangeLevelActionTitle_FromNeverFeature";
  }

  else
  {
    if (v14 != 2)
    {
      v18 = v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      goto LABEL_11;
    }

    if ([v11 length])
    {
      PXLocalizedStringForPersonOrPetAndVisibility(v10, 0, @"PXPeopleBlockPersonRevertAlertTitleNamed_FromFeatureLess");
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    v21 = PXLocalizedStringForPersonOrPetAndVisibility(v10, 0, @"PXPeopleBlockPersonRevertAlertTitleNoName_FromFeatureLess");
    v22 = @"PXPeopleBlockPersonRevertAlertInformativeText_FromFeatureLess";
    v23 = @"PXPeopleBlockPersonRevertAlertChangeLevelActionTitle_FromFeatureLess";
  }

  v20 = PXLocalizedStringForPersonOrPetAndVisibility(v10, 0, v23);
  v18 = v17;
  v19 = PXLocalizedAttributedStringForPersonOrPet(v10, 0, v17, v22);
LABEL_11:
  if ([v30 length])
  {
    PXLocalizedStringForPersonOrPetAndVisibility(v10, 0, @"PXPeopleBlockPersonRevertResetActionTitleNamed");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  v24 = PXLocalizedStringForPersonOrPetAndVisibility(v10, 0, @"PXPeopleBlockPersonRevertResetActionTitleNoName");
  if (a4)
  {
    v25 = v21;
    *a4 = v21;
  }

  if (a5)
  {
    v26 = v19;
    *a5 = v19;
  }

  if (a6)
  {
    v27 = v20;
    *a6 = v20;
  }

  if (a7)
  {
    v28 = v24;
    *a7 = v24;
  }
}

+ (id)alertControllerForRevertingSuggestLess:(id)a3 undoManager:(id)a4 completion:(id)a5
{
  v51[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v29 = a5;
  v31 = PXLocalizedStringFromTable(@"PXBlockConfirmationDialogButtonTitle_Cancel", @"PhotosUICore");
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  [a1 _alertStringsForPerson:v8 alertTitle:&v49 alertMessage:&v48 alternativeLevelActionTitle:&v47 resetActionTitle:&v46];
  v33 = v49;
  v32 = v48;
  v10 = v47;
  v30 = v46;
  v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v33 message:0 preferredStyle:0];
  v12 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v32];
  v50 = *MEMORY[0x1E69DB648];
  v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v51[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
  [v12 addAttributes:v14 range:{0, objc_msgSend(v12, "length")}];

  [v11 _setAttributedMessage:v12];
  v15 = MEMORY[0x1E69DC648];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __87__PXPeopleUtilities_UI__alertControllerForRevertingSuggestLess_undoManager_completion___block_invoke;
  v41[3] = &unk_1E772D298;
  v16 = v8;
  v42 = v16;
  v17 = v9;
  v43 = v17;
  v45 = a1;
  v18 = v29;
  v44 = v18;
  v19 = [v15 actionWithTitle:v10 style:2 handler:v41];
  [v11 addAction:v19];

  v20 = MEMORY[0x1E69DC648];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __87__PXPeopleUtilities_UI__alertControllerForRevertingSuggestLess_undoManager_completion___block_invoke_2;
  v36[3] = &unk_1E772D298;
  v37 = v16;
  v38 = v17;
  v40 = a1;
  v21 = v18;
  v39 = v21;
  v22 = v17;
  v23 = v16;
  v24 = [v20 actionWithTitle:v30 style:2 handler:v36];
  [v11 addAction:v24];

  v25 = MEMORY[0x1E69DC648];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __87__PXPeopleUtilities_UI__alertControllerForRevertingSuggestLess_undoManager_completion___block_invoke_4;
  v34[3] = &unk_1E7748000;
  v35 = v21;
  v26 = v21;
  v27 = [v25 actionWithTitle:v31 style:1 handler:v34];
  [v11 addAction:v27];

  return v11;
}

void __87__PXPeopleUtilities_UI__alertControllerForRevertingSuggestLess_undoManager_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userFeedbackProperties];
  v3 = [v2 userFeedback];
  v4 = [v3 type];

  if (v4 == 2)
  {
    v5 = PXAnalyticsEventUserFeedbackAvoidPerson;
    v6 = 3;
    goto LABEL_5;
  }

  if (v4 == 3)
  {
    v5 = PXAnalyticsEventUserFeedbackDislikePerson;
    v6 = 2;
LABEL_5:
    v7 = *v5;
    v8 = [PXPeopleUserFeedbackAction alloc];
    v19 = *(a1 + 32);
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    v10 = [(PXPeopleUserFeedbackAction *)v8 initWithPeople:v9 feedbackType:v6];

    v11 = *(a1 + 40);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__PXPeopleUtilities_UI__alertControllerForRevertingSuggestLess_undoManager_completion___block_invoke_440;
    v16[3] = &unk_1E7735F00;
    v17 = v7;
    v15 = *(a1 + 48);
    v12 = v15;
    v18 = v15;
    v13 = v7;
    [(PXAction *)v10 executeWithUndoManager:v11 completionHandler:v16];

    goto LABEL_6;
  }

  v13 = PLUIGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [*(a1 + 32) localIdentifier];
    *buf = 138412546;
    v21 = v14;
    v22 = 2048;
    v23 = v4;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Failed to get a new feedback type from person: %@ (current feedback type (%ld))", buf, 0x16u);
  }

LABEL_6:
}

void __87__PXPeopleUtilities_UI__alertControllerForRevertingSuggestLess_undoManager_completion___block_invoke_2(uint64_t a1)
{
  v2 = [[PXPeopleResetUserFeedbackAction alloc] initWithPerson:*(a1 + 32)];
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__PXPeopleUtilities_UI__alertControllerForRevertingSuggestLess_undoManager_completion___block_invoke_3;
  v6[3] = &unk_1E772D2C0;
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [(PXAction *)v2 executeWithUndoManager:v3 completionHandler:v6];
}

void __87__PXPeopleUtilities_UI__alertControllerForRevertingSuggestLess_undoManager_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"User cancelled confirmation alert"];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void __87__PXPeopleUtilities_UI__alertControllerForRevertingSuggestLess_undoManager_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x1E6991F28];
    v11 = *MEMORY[0x1E6991E20];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v6 sendEvent:@"com.apple.photos.CPAnalytics.userFeedback.reverted.suggestLess.person" withPayload:v9];
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }
}

void __87__PXPeopleUtilities_UI__alertControllerForRevertingSuggestLess_undoManager_completion___block_invoke_440(uint64_t a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x1E6991F28];
    v7 = *(a1 + 32);
    v12 = *MEMORY[0x1E6991E20];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v6 sendEvent:v7 withPayload:v10];
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v5);
  }
}

+ (id)_untaggingLog
{
  if (_untaggingLog_onceToken != -1)
  {
    dispatch_once(&_untaggingLog_onceToken, &__block_literal_global_430);
  }

  v3 = _untaggingLog_untaggingLog;

  return v3;
}

void __38__PXPeopleUtilities_UI___untaggingLog__block_invoke()
{
  v0 = os_log_create("com.apple.photos.people", "PXPeopleUtilitiesUntagging");
  v1 = _untaggingLog_untaggingLog;
  _untaggingLog_untaggingLog = v0;
}

+ (id)alertControllerForUntaggingPerson:(id)a3 asset:(id)a4 completion:(id)a5
{
  v85[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 px_localizedName];
  v11 = [v10 length];
  v12 = [v8 mediaType];
  v65 = v10;
  if (v11)
  {
    if (v12 == 2)
    {
      v13 = @"PXPeopleUntagPersonDescriptionNamedVideo";
    }

    else
    {
      v13 = @"PXPeopleUntagPersonDescriptionNamedPhoto";
    }

    PXLocalizedStringForPersonOrPetAndVisibility(v7, 0, v13);
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  if (v12 == 2)
  {
    v14 = @"PXPeopleUntagPersonDescriptionNoNameVideo";
  }

  else
  {
    v14 = @"PXPeopleUntagPersonDescriptionNoNamePhoto";
  }

  v15 = PXLocalizedStringForPersonOrPetAndVisibility(v7, 0, v14);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PXPeopleUtilities_UI__alertControllerForUntaggingPerson_asset_completion___block_invoke;
  aBlock[3] = &unk_1E772D1F8;
  v16 = v7;
  v81 = v16;
  v17 = v8;
  v82 = v17;
  v18 = _Block_copy(aBlock);
  v64 = v15;
  v67 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v15 preferredStyle:0];
  v19 = MEMORY[0x1E6978830];
  v20 = [v17 photoLibrary];
  v21 = [v19 fetchOptionsWithPhotoLibrary:v20 orObject:0];

  [v21 setIncludeTorsoAndFaceDetectionData:1];
  v22 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v21 setIncludedDetectionTypes:v22];

  v23 = MEMORY[0x1E696AE18];
  v24 = [v16 uuid];
  v25 = [v23 predicateWithFormat:@"%K = %@", @"personForFace.personUUID", v24];
  [v21 setInternalPredicate:v25];

  v26 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v85[0] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:1];
  [v21 setSortDescriptors:v27];

  v63 = v17;
  v28 = [MEMORY[0x1E69787C8] fetchFacesInAsset:v17 options:v21];
  v66 = v16;
  if ([v28 count] == 1)
  {
    v29 = [v28 firstObject];
    v30 = v67;
    if (v29)
    {
LABEL_11:
      v31 = [PXPeopleSwiftUtilities untaggingViewControllerForFace:v29];
      [v30 setContentViewController:v31];

LABEL_28:
      PXLocalizedStringForPersonOrPetAndVisibility(v66, 0, @"PXPeopleTagWithNewName");
      v48 = v47 = v9;
      v49 = MEMORY[0x1E69DC648];
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __76__PXPeopleUtilities_UI__alertControllerForUntaggingPerson_asset_completion___block_invoke_401;
      v74[3] = &unk_1E772D248;
      v50 = v29;
      v75 = v50;
      v78 = v18;
      v76 = v28;
      v77 = v66;
      v79 = v47;
      v51 = [v49 actionWithTitle:v48 style:0 handler:v74];
      v46 = v50;
      [v30 addAction:v51];

      v9 = v47;
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  if ([v28 count] != 2)
  {
    v38 = 0;
    v30 = v67;
    goto LABEL_25;
  }

  v32 = [v28 firstObject];
  [v32 centerX];
  if (v33 == 0.0)
  {
    v34 = [v28 lastObject];
    [v34 centerX];
    v36 = v35;

    v30 = v67;
    if (v36 != 0.0)
    {
      v37 = [v28 lastObject];
      goto LABEL_21;
    }
  }

  else
  {

    v30 = v67;
  }

  v39 = [v28 firstObject];
  [v39 centerX];
  if (v40 == 0.0)
  {
  }

  else
  {
    v41 = [v28 lastObject];
    [v41 centerX];
    v43 = v42;

    if (v43 == 0.0)
    {
      v37 = [v28 firstObject];
LABEL_21:
      v29 = v37;
      if (v37)
      {
        goto LABEL_11;
      }

LABEL_22:
      v38 = 1;
      goto LABEL_25;
    }
  }

  v38 = 0;
LABEL_25:
  v44 = PLUIGetLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v45 = [v16 localIdentifier];
    *buf = 138412290;
    v84 = v45;
    _os_log_impl(&dword_1A3C1C000, v44, OS_LOG_TYPE_ERROR, "Failed to get a face to show for person: %@", buf, 0xCu);
  }

  v29 = 0;
  v46 = 0;
  if (v38)
  {
    goto LABEL_28;
  }

LABEL_29:
  v52 = MEMORY[0x1E69DC648];
  v53 = PXLocalizedStringFromTable(@"PXPeopleUntagPerson", @"PhotosUICore");
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __76__PXPeopleUtilities_UI__alertControllerForUntaggingPerson_asset_completion___block_invoke_3;
  v70[3] = &unk_1E772D270;
  v71 = v28;
  v72 = v18;
  v54 = v9;
  v73 = v54;
  v55 = v28;
  v56 = v18;
  v57 = [v52 actionWithTitle:v53 style:2 handler:v70];

  [v67 addAction:v57];
  v58 = MEMORY[0x1E69DC648];
  v59 = PXLocalizedStringFromTable(@"PXPeopleUntagPersonCancel", @"PhotosUICore");
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __76__PXPeopleUtilities_UI__alertControllerForUntaggingPerson_asset_completion___block_invoke_6;
  v68[3] = &unk_1E7748000;
  v69 = v54;
  v60 = v54;
  v61 = [v58 actionWithTitle:v59 style:1 handler:v68];

  [v67 addAction:v61];

  return v67;
}

NSObject *__76__PXPeopleUtilities_UI__alertControllerForUntaggingPerson_asset_completion___block_invoke(uint64_t a1, void *a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[PXPeopleUtilities _untaggingLog];
  v5 = os_signpost_id_generate(v4);
  v6 = v4;
  v7 = v6;
  v8 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "untagPersonTotal", "", buf, 2u);
  }

  if ([v3 count])
  {
    v9 = v7;
    v10 = v9;
    if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v5, "untagPersonPerformChanges", "", buf, 2u);
    }

    v11 = [*(a1 + 32) photoLibrary];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __76__PXPeopleUtilities_UI__alertControllerForUntaggingPerson_asset_completion___block_invoke_379;
    v79[3] = &unk_1E774C620;
    v67 = a1;
    v80 = *(a1 + 32);
    v12 = v3;
    v81 = v12;
    v78 = 0;
    v13 = [v11 performChangesAndWait:v79 error:&v78];
    v14 = v78;

    v15 = v10;
    v16 = v15;
    if (v8 > 0xFFFFFFFFFFFFFFFDLL)
    {

      if (v14)
      {
        v24 = 0;
      }

      else
      {
        v24 = v13;
      }

      if (v24 == 1)
      {
        v62 = v7;
        v63 = v5 - 1;
        v65 = v3;
        v25 = v16;
        v19 = v67;
LABEL_25:
        v64 = v5;
        v61 = v16;

        v26 = MEMORY[0x1E6978830];
        v27 = [*(v19 + 32) photoLibrary];
        v28 = [v26 fetchOptionsWithPhotoLibrary:v27 orObject:0];

        v29 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
        [v28 setIncludedDetectionTypes:v29];

        v30 = v28;
        [v28 setMinimumVerifiedFaceCount:0];
        [v28 setMinimumUnverifiedFaceCount:0];
        [v28 setIncludeTorsoOnlyPerson:1];
        [v28 setFetchLimit:1];
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        obj = v12;
        v31 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
        if (v31)
        {
          v32 = v31;
          v23 = 0;
          v68 = 0;
          v69 = *v75;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v75 != v69)
              {
                objc_enumerationMutation(obj);
              }

              v34 = *(*(&v74 + 1) + 8 * i);
              v35 = [MEMORY[0x1E6978980] fetchPersonWithFace:v34 options:v30];
              v36 = [v35 fetchedObjects];
              v37 = [v36 count];

              if (v37)
              {
                v38 = v30;
                v39 = [v35 fetchedObjects];
                v40 = [v39 firstObject];

                v41 = [v40 localIdentifier];
                v42 = [*(v67 + 32) localIdentifier];
                v43 = [v42 isEqualToString:v41];

                if ((v43 & 1) == 0)
                {
                  v44 = [*(v67 + 32) photoLibrary];
                  v71[0] = MEMORY[0x1E69E9820];
                  v71[1] = 3221225472;
                  v71[2] = __76__PXPeopleUtilities_UI__alertControllerForUntaggingPerson_asset_completion___block_invoke_384;
                  v71[3] = &unk_1E774C620;
                  v40 = v40;
                  v72 = v40;
                  v73 = v34;
                  v70 = v68;
                  [v44 performChangesAndWait:v71 error:&v70];
                  v45 = v70;

                  if (v45)
                  {
                    v46 = PLUIGetLog();
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                    {
                      v47 = [v34 localIdentifier];
                      *buf = 138412802;
                      v85 = v41;
                      v86 = 2112;
                      v87 = v47;
                      v88 = 2112;
                      v89 = v45;
                      _os_log_impl(&dword_1A3C1C000, v46, OS_LOG_TYPE_ERROR, "Failed to set key face for person: %@ face: %@ error: %@", buf, 0x20u);
                    }
                  }

                  else
                  {
                    v48 = MEMORY[0x1E6978980];
                    v82 = v41;
                    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
                    v50 = [v48 fetchPersonsWithLocalIdentifiers:v49 options:v38];
                    v46 = [v50 firstObject];

                    if (v46)
                    {
                      v51 = v46;
                    }

                    else
                    {
                      v51 = v40;
                    }

                    v52 = v51;

                    v40 = v52;
                  }

                  v68 = v45;
                }

                v23 = v40;
                v30 = v38;
              }
            }

            v32 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
          }

          while (v32);
        }

        else
        {
          v68 = 0;
          v23 = 0;
        }

        v56 = v61;
        v57 = v56;
        v8 = v63;
        v5 = v64;
        if (v63 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v57, OS_SIGNPOST_INTERVAL_END, v64, "untagPersonDetermineNewPerson", "", buf, 2u);
        }

        v3 = v65;
        v7 = v62;
LABEL_52:

        v20 = v68;
        goto LABEL_53;
      }
    }

    else
    {
      if (os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_INTERVAL_END, v5, "untagPersonPerformChanges", "", buf, 2u);
      }

      if (v14)
      {
        v17 = 0;
      }

      else
      {
        v17 = v13;
      }

      if (v17)
      {
        v62 = v7;
        v63 = v5 - 1;
        v65 = v3;
        v18 = v16;
        v19 = v67;
        if (os_signpost_enabled(v18))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v5, "untagPersonDetermineNewPerson", "", buf, 2u);
        }

        goto LABEL_25;
      }
    }

    v68 = v14;
    v53 = PLUIGetLog();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = [*(v67 + 32) localIdentifier];
      v55 = [*(v67 + 40) localIdentifier];
      *buf = 138412802;
      v85 = v54;
      v86 = 2112;
      v87 = v55;
      v88 = 2112;
      v89 = v14;
      _os_log_impl(&dword_1A3C1C000, v53, OS_LOG_TYPE_ERROR, "Failed to untag person: %@ asset: %@ error: %@", buf, 0x20u);
    }

    v23 = 0;
    v30 = v53;
    goto LABEL_52;
  }

  v20 = PLUIGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = [*(a1 + 32) localIdentifier];
    v22 = [*(a1 + 40) localIdentifier];
    *buf = 138412546;
    v85 = v21;
    v86 = 2112;
    v87 = v22;
    _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, "Failed to link any asset's face to the person we're untagging (person: %@, asset: %@)", buf, 0x16u);
  }

  v23 = 0;
LABEL_53:

  v58 = v7;
  v59 = v58;
  if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v59, OS_SIGNPOST_INTERVAL_END, v5, "untagPersonTotal", "", buf, 2u);
  }

  return v23;
}

void __76__PXPeopleUtilities_UI__alertControllerForUntaggingPerson_asset_completion___block_invoke_401(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __76__PXPeopleUtilities_UI__alertControllerForUntaggingPerson_asset_completion___block_invoke_2;
  v13 = &unk_1E772D220;
  v15 = *(a1 + 56);
  v14 = *(a1 + 40);
  v3 = [PXPeopleBootstrapContext contextWithFace:v2 type:1 delayedPersonBlock:&v10];
  [v3 setWantsToBeAddedToPeopleAlbum:1];
  [v3 setSourcePerson:*(a1 + 48)];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AE30] processInfo];
  v6 = [v5 processName];
  v7 = [@"/Library/Caches/com.apple.xbs/Sources/Photos_UICore/workspaces/photosshared/PhotosUICore/PhotosUICore/People/Shared/PXPeopleUtilities+UI.m" lastPathComponent];
  v8 = [v4 stringWithFormat:@"%@:%@:%s:%d", v6, v7, "+[PXPeopleUtilities(UI) alertControllerForUntaggingPerson:asset:completion:]_block_invoke", 257, v10, v11, v12, v13];
  [v3 setCallerInfo:v8];

  v9 = [PXPeopleUtilities bootstrapViewControllerForContext:v3 delegate:0];
  (*(*(a1 + 64) + 16))();
  [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.untag.newTagTapped" withPayload:MEMORY[0x1E695E0F8]];
}

void __76__PXPeopleUtilities_UI__alertControllerForUntaggingPerson_asset_completion___block_invoke_3(id *a1)
{
  v2 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PXPeopleUtilities_UI__alertControllerForUntaggingPerson_asset_completion___block_invoke_4;
  block[3] = &unk_1E7744FE0;
  v5 = a1[5];
  v4 = a1[4];
  v6 = a1[6];
  dispatch_async(v2, block);
}

uint64_t __76__PXPeopleUtilities_UI__alertControllerForUntaggingPerson_asset_completion___block_invoke_6(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = MEMORY[0x1E6991F28];
  v2 = MEMORY[0x1E695E0F8];

  return [v1 sendEvent:@"com.apple.photos.CPAnalytics.people.untag.cancelTapped" withPayload:v2];
}

void __76__PXPeopleUtilities_UI__alertControllerForUntaggingPerson_asset_completion___block_invoke_4(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PXPeopleUtilities_UI__alertControllerForUntaggingPerson_asset_completion___block_invoke_5;
  block[3] = &unk_1E774C250;
  v4 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.untag.untagTapped" withPayload:MEMORY[0x1E695E0F8]];
}

void __76__PXPeopleUtilities_UI__alertControllerForUntaggingPerson_asset_completion___block_invoke_379(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978990] changeRequestForPerson:*(a1 + 32)];
  if (([*(a1 + 32) isVerified] & 1) == 0)
  {
    [v2 setVerified:1];
  }

  [v2 addRejectedFaces:*(a1 + 40) forCluster:0];
}

void __76__PXPeopleUtilities_UI__alertControllerForUntaggingPerson_asset_completion___block_invoke_384(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978990] changeRequestForPerson:*(a1 + 32)];
  [v2 setKeyFace:*(a1 + 40) forCluster:0];
}

+ (BOOL)showBootstrapIfNeededWithContext:(id)a3 fromParentVC:(id)a4 force:(BOOL)a5 flowDelegate:(id)a6 presentationDelegate:(id)a7
{
  v33[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v31 = a4;
  v13 = a6;
  v30 = a7;
  v14 = [v12 sourcePerson];
  v15 = [v14 localIdentifier];
  v33[0] = *MEMORY[0x1E6978F38];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v17 = [v14 photoLibrary];
  v18 = [PXPeopleUtilities personWithLocalIdentifier:v15 propertySets:v16 photoLibrary:v17];

  v19 = v13;
  if ((a5 || +[PXPeopleUtilities shouldShowBootstrapForPerson:](PXPeopleUtilities, "shouldShowBootstrapForPerson:", v18)) && ([v12 setSourcePerson:v18], objc_msgSend(a1, "bootstrapViewControllerForContext:delegate:", v12, v13), (v20 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v21 = v20;
    [(PXChangePeopleTypeAction *)v20 setModalPresentationStyle:2];
    v22 = [(PXChangePeopleTypeAction *)v21 presentationController];
    v23 = v30;
    [v22 setDelegate:v30];

    v24 = 1;
    v25 = v31;
    [v31 presentViewController:v21 animated:1 completion:0];
  }

  else
  {
    if (([v12 didCommitPreBootstrapAction] & 1) != 0 || objc_msgSend(v12, "bootstrapType"))
    {
      v21 = [(PXPeopleBootstrapFlowController *)[PXUIPeopleBootstrapFlowController alloc] initEmptyFlowWithContext:v12];
      v25 = v31;
      [(PXChangePeopleTypeAction *)v21 done:v31];
    }

    else
    {
      v27 = [PXChangePeopleTypeAction alloc];
      v32 = v18;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      v21 = [(PXChangePeopleTypeAction *)v27 initWithPeople:v28 type:1];

      v25 = v31;
      v29 = [v31 undoManager];
      [(PXAction *)v21 executeWithUndoManager:v29 completionHandler:&__block_literal_global_1957];
    }

    v24 = 0;
    v23 = v30;
  }

  return v24;
}

+ (id)bootstrapViewControllerForContext:(id)a3 delegate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(PXPeopleBootstrapFlowController *)[PXUIPeopleBootstrapFlowController alloc] initWithContext:v6];

  [(PXPeopleBootstrapFlowController *)v7 setBootstrapDelegate:v5];
  if (-[PXPeopleBootstrapFlowController hasNextViewController](v7, "hasNextViewController") || (+[PXPeopleUISettings sharedInstance](PXPeopleUISettings, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 alwaysShowBootstrap], v8, v9))
  {
    v10 = [[PXPeopleFlowNavigationController alloc] initWithFlowController:v7];
    [(PXPeopleFlowNavigationController *)v10 setModalPresentationStyle:2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)canSetPersonAsMagicItem:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v10 count:1];
  v6 = [v4 photoLibrary];
  v7 = [PXPeopleUtilities peopleFetchResultFromFastEnumeration:v5 photoLibrary:v6];

  v8 = [PXPeoplePromoteAsMagicInternalActionPerformer canPerformOn:v7];
  return v8;
}

+ (void)performSetSocialGroupKeyPhotoWithAsset:(id)a3 socialGroup:(id)a4 undoManager:(id)a5 completionHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[PXSocialGroupMakeKeyPhotoAction alloc] initWithSocialGroup:v11 newKeyAsset:v12];

  [(PXAction *)v13 executeWithUndoManager:v10 completionHandler:v9];
}

+ (int64_t)changeTypeForPeople:(id)a3
{
  v5 = a3;
  v6 = [v5 firstObject];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 photoLibrary];

  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXPeopleUtilities.m" lineNumber:1013 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v9 = [PXPeopleUtilities peopleFetchResultFromFastEnumeration:v5 photoLibrary:v8];
  v10 = [PXPeopleChangeTypeActionPerformer changeTypeFor:v9];

  return v10;
}

+ (id)locKeyForPersonOrPet:(id)a3 withVisibility:(unint64_t)a4 key:(id)a5
{
  v6 = [PXPeopleUtilities locKeyForPersonOrPet:a3 key:a5];
  v7 = v6;
  if (a4 == 1)
  {
    v8 = @"__People";
  }

  else
  {
    if (a4 != 2)
    {
      goto LABEL_6;
    }

    v8 = @"__Pets";
  }

  v9 = [v6 stringByAppendingString:v8];

  v7 = v9;
LABEL_6:

  return v7;
}

+ (id)locKeyForPersonOrPet:(id)a3 key:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && ![v5 px_isHuman])
  {
    v7 = [v6 stringByAppendingString:@"_Pet"];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

+ (id)locKeyForPeople:(id)a3 key:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PXPeopleUtilities.m" lineNumber:973 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  v12 = 0;
  [PXPeopleUtilities people:v7 hasHumans:&v12 + 1 hasPets:&v12];
  v9 = [PXPeopleUtilities locKeyForHasHumans:HIBYTE(v12) hasPets:v12 key:v8];

  return v9;
}

+ (id)locKeyForHasHumans:(BOOL)a3 hasPets:(BOOL)a4 key:(id)a5
{
  v5 = a4;
  v6 = a3;
  v7 = a5;
  v8 = v7;
  if (v6 && v5)
  {
    v9 = @"_PeoplePet";
LABEL_6:
    v10 = [v7 stringByAppendingString:v9];
    goto LABEL_8;
  }

  if (v5)
  {
    v9 = @"_Pet";
    goto LABEL_6;
  }

  v10 = v7;
LABEL_8:
  v11 = v10;

  return v11;
}

+ (void)people:(id)a3 hasHumans:(BOOL *)a4 hasPets:(BOOL *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (!a4 || !a5)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"PXPeopleUtilities.m" lineNumber:932 description:{@"Invalid parameter not satisfying: %@", @"outHasHumans != nil && outHasPets != nil"}];
  }

  *a4 = 0;
  *a5 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v17 = PLUIGetLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v27 = v15;
            v18 = v17;
            v19 = "PXPeopleUtilities: %@ does not respond to isHuman.";
            goto LABEL_18;
          }

LABEL_19:

          goto LABEL_20;
        }

        if (!*a4)
        {
          *a4 = [v15 px_isHuman];
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v17 = PLUIGetLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v27 = v15;
            v18 = v17;
            v19 = "PXPeopleUtilities: %@ does not respond to isPet.";
LABEL_18:
            _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEBUG, v19, buf, 0xCu);
          }

          goto LABEL_19;
        }

        if (*a5)
        {
          v16 = 1;
        }

        else
        {
          v16 = [v15 px_isPet];
          *a5 = v16;
        }

        if (*a4 && (v16 & 1) != 0)
        {
          goto LABEL_27;
        }

LABEL_20:
        ++v14;
      }

      while (v12 != v14);
      v20 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
      v12 = v20;
    }

    while (v20);
  }

LABEL_27:
}

+ (id)keyAssetForPerson:(id)a3 face:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:v8];
    [v9 setIncludeHiddenAssets:0];
    [v9 setFetchLimit:1];
    v10 = MEMORY[0x1E6978630];
    v17[0] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v12 = [v10 fetchAssetsForFaces:v11 options:v9];
  }

  else
  {
    if (!v7)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:a1 file:@"PXPeopleUtilities.m" lineNumber:918 description:{@"Invalid parameter not satisfying: %@", @"person"}];
    }

    v13 = [v7 photoLibrary];
    v14 = [v13 librarySpecificFetchOptions];

    v9 = v14;
    [v9 setIncludeHiddenAssets:0];
    [v9 setFetchLimit:1];

    v12 = [MEMORY[0x1E6978630] fetchKeyAssetForPerson:v7 options:v9];
  }

  return v12;
}

+ (id)keyFaceForPerson:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXPeopleUtilities.m" lineNumber:903 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v6 = [v5 photoLibrary];
  v7 = [v6 librarySpecificFetchOptions];

  [v7 setFetchLimit:1];
  v8 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v7 setIncludedDetectionTypes:v8];

  [v7 setIncludeTorsoAndFaceDetectionData:1];
  v9 = [MEMORY[0x1E69787C8] px_fetchKeyFaceForPerson:v5 options:v7];
  v10 = [v9 firstObject];

  return v10;
}

+ (id)fetchPeopleAndPetsInSocialGroup:(id)a3
{
  v3 = a3;
  v4 = [v3 photoLibrary];
  v5 = [v4 librarySpecificFetchOptions];

  v6 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v5 setIncludedDetectionTypes:v6];

  v7 = [MEMORY[0x1E6978980] fetchPersonsInSocialGroup:v3 option:v5];

  return v7;
}

+ (id)socialGroupFetchResultFromFastEnumeration:(id)a3 photoLibrary:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v5;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;

    if (v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v9 = v7;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_11:
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v10 addObject:{*(*(&v19 + 1) + 8 * i), v19}];
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    goto LABEL_19;
  }

  v10 = v9;

  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_19:
  v16 = objc_alloc(MEMORY[0x1E69788E0]);
  v17 = [MEMORY[0x1E6978AD8] fetchType];
  v8 = [v16 initWithObjects:v10 photoLibrary:v6 fetchType:v17 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

LABEL_20:

  return v8;
}

+ (id)peopleFetchResultFromFastEnumeration:(id)a3 photoLibrary:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v5;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;

    if (v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v9 = v7;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_11:
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v10 addObject:{*(*(&v19 + 1) + 8 * i), v19}];
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    goto LABEL_19;
  }

  v10 = v9;

  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_19:
  v16 = objc_alloc(MEMORY[0x1E69788E0]);
  v17 = [MEMORY[0x1E6978980] fetchType];
  v8 = [v16 initWithObjects:v10 photoLibrary:v6 fetchType:v17 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

LABEL_20:

  return v8;
}

+ (id)peopleArrayFromFastEnumeration:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;

    if (v4)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = v3;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_11;
  }

  v6 = v5;

  if (!v6)
  {
LABEL_11:
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 addObject:{*(*(&v14 + 1) + 8 * i), v14}];
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    v4 = [v7 copy];
    v6 = 0;
    goto LABEL_19;
  }

  v4 = [v6 fetchedObjects];
LABEL_19:

LABEL_20:

  return v4;
}

+ (id)sortedPersons:(id)a3 byPersonMemoryFeatures:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 type] == 1)
        {
          v14 = [v13 personLocalIdentifier];
          [v7 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__PXPeopleUtilities_sortedPersons_byPersonMemoryFeatures___block_invoke;
  v18[3] = &unk_1E773A638;
  v19 = v7;
  v15 = v7;
  v16 = [v5 sortedArrayUsingComparator:v18];

  return v16;
}

uint64_t __58__PXPeopleUtilities_sortedPersons_byPersonMemoryFeatures___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [a2 localIdentifier];
  v9 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "indexOfObject:", v8)}];
  v10 = MEMORY[0x1E696AD98];
  v11 = *(a1 + 32);
  v12 = [v7 localIdentifier];

  v13 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "indexOfObject:", v12)}];
  v14 = [v9 compare:v13];

  return v14;
}

+ (void)unblockPersonsInLibrary:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x1E69788F0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 memoriesWithBlockedPersonFeatureInPhotoLibrary:v7];
  v9 = MEMORY[0x1E6978980];
  v10 = [v7 librarySpecificFetchOptions];
  v11 = [v9 fetchPersonsWithUserFeedbackWithOptions:v10];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__PXPeopleUtilities_unblockPersonsInLibrary_completion___block_invoke;
  v14[3] = &unk_1E774C620;
  v15 = v8;
  v16 = v11;
  v12 = v11;
  v13 = v8;
  [v7 performChanges:v14 completionHandler:v6];
}

void __56__PXPeopleUtilities_unblockPersonsInLibrary_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6978900] unblockPersonsInMemoriesWithBlockedPersonFeature:*(a1 + 32)];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [MEMORY[0x1E6978990] changeRequestForPerson:{*(*(&v8 + 1) + 8 * v6), v8}];
        [v7 setUserFeedback:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

+ (id)summaryTitleForLibrary:(id)a3 count:(int64_t)a4
{
  v4 = [a1 locKeyForPersonOrPet:0 withVisibility:objc_msgSend(a3 key:{"px_peoplePetsHomeVisibility"), @"PXPeopleHomeSummaryQuantitySubtitle"}];
  PXLocalizedStringWithCount(v4);
}

+ (id)memoryTitleStringFromPeople:(id)a3
{
  v4 = a3;
  v5 = PXLocalizedStringFromTable(@"PXRelatedPeoplePortraitOf", @"PhotosUICore");
  v6 = PXLocalizedStringFromTable(@"PXRelatedPeopleTogether", @"PhotosUICore");
  v7 = [a1 _titleStringForPeople:v4 singlePersonFallback:v5 groupFallback:v6];

  return v7;
}

+ (id)_titleStringForPeople:(id)a3 singlePersonFallback:(id)a4 groupFallback:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 count];
  v12 = [a1 titleStringForPeople:v8];
  v25 = 0u;
  v26 = 0u;
  v13 = [v12 length] > 0x16;
  v27 = 0u;
  v28 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v25 + 1) + 8 * i) px_localizedName];
        v20 = v19;
        if (!v19 || ![v19 length])
        {

          v13 = 1;
          goto LABEL_12;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if (v11 == 1 && (v21 = v9, v13) || (v11 > 3 ? (v22 = 1) : (v22 = v13), v21 = v10, v22 == 1))
  {
    v23 = v21;

    v12 = v23;
  }

  return v12;
}

+ (id)titleStringForPeople:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 count];
  v5 = &stru_1F1741150;
  if (v4)
  {
    v6 = v4;
    if (v4 == 1)
    {
      v7 = [v3 firstObject];
      v8 = [v7 px_localizedName];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = &stru_1F1741150;
      }

      v5 = v10;
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v3;
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v20 + 1) + 8 * i) px_localizedName];
            v17 = v16;
            if (v16 && [v16 length])
            {
              [v7 addObject:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }

      v18 = [v7 count];
      if (v18)
      {
        if (v6 != v18)
        {
          PXLocalizedStringFromTable(@"PXSocialGroupTitleOthers", @"PhotosUICore");
          objc_claimAutoreleasedReturnValue();
          PXLocalizedStringWithValidatedFormat();
        }

        v5 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v7];
      }

      else
      {
        v5 = &stru_1F1741150;
      }
    }
  }

  return v5;
}

+ (id)titleStringForPerson:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v8 count:1];
  v6 = [PXPeopleUtilities titleStringForPeople:v5, v8, v9];

  return v6;
}

+ (BOOL)_isPhotosProcess
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if ([v3 isEqualToString:@"com.apple.Photos"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.mobileslideshow"];
  }

  return v4;
}

+ (void)_setDaysDictionary:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  [v5 setObject:v4 forKey:@"PXPeopleCandidateWidgetKey"];
}

+ (id)_daysDictionary
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"PXPeopleCandidateWidgetKey"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  return v4;
}

+ (BOOL)_hasRecentlyHandledBootstrapOrSuggestionForPerson:(id)a3
{
  v4 = a3;
  if (+[PXPeopleUtilities _isPhotosProcess])
  {
    v5 = [a1 _daysDictionary];
    v6 = [PXPeopleCandidateWidgetUtilities removeAllPreviousNotNowPersonsIfNeededForDaysDictionary:v5];
    if (([v5 isEqualToDictionary:v6] & 1) == 0)
    {
      [PXPeopleUtilities _setDaysDictionary:v6];
    }

    v7 = ![PXPeopleCandidateWidgetUtilities shouldFetchCandidatesForPerson:v4 forDaysDictionary:v6];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (void)resetTemporarilySuppressedBootstrapOrSuggestions
{
  if (+[PXPeopleUtilities _isPhotosProcess])
  {
    v2 = MEMORY[0x1E695E0F8];

    [PXPeopleUtilities _setDaysDictionary:v2];
  }
}

+ (void)temporarilySuppressBootstrapOrSuggestionForPerson:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[PXPeopleUtilities _isPhotosProcess])
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "People UI: temporarilySuppressBootstrapOrSuggestionForPerson: %@", &v9, 0xCu);
    }

    v6 = [a1 _daysDictionary];
    v7 = [PXPeopleCandidateWidgetUtilities insertPerson:v4 forDaysDictionary:v6];

    v8 = [PXPeopleCandidateWidgetUtilities removeAllPreviousNotNowPersonsIfNeededForDaysDictionary:v7];

    [PXPeopleUtilities _setDaysDictionary:v8];
  }
}

+ (BOOL)shouldShowBootstrapForPerson:(id)a3 context:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [PXPeopleUtilities _hasRecentlyHandledBootstrapOrSuggestionForPerson:v5];
  v8 = +[PXPeopleUISettings sharedInstance];
  v9 = [v8 alwaysShowBootstrap];

  if (v5)
  {
    v10 = !v7 | v9;
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_INFO, "People UI: Should not show bootstrap; bootstrap has been handled recently for person: %@ context: %@", &v16, 0x16u);
    }

    if (v5)
    {
LABEL_6:
      if (!v9)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if (v5)
  {
    goto LABEL_6;
  }

  v12 = PLUIGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v6;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_INFO, "People UI: Should not show bootstrap; person is nil for context: %@", &v16, 0xCu);
  }

  if (!v9)
  {
LABEL_7:
    if (v10)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_15:
  v13 = PLUIGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v16 = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_INFO, "People UI: Always show bootstrap flag is enabled for person: %@ context: %@", &v16, 0x16u);
  }

  if ((v10 & 1) == 0)
  {
LABEL_18:
    v14 = PLUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_INFO, "People UI: Should not show bootstrap; the resolved BOOL is NO for person: %@ context: %@", &v16, 0x16u);
    }
  }

LABEL_21:

  return v10 & 1;
}

+ (void)_peopleFaceTilesForFaces:(id)a3 asset:(id)a4 options:(id)a5 completion:(id)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v44 = a5;
  v11 = a6;
  v12 = v10;
  v42 = v11;
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v15 = v9;
  v16 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v51;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v51 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v50 + 1) + 8 * i);
        v21 = [[PXPeopleFaceTile alloc] initWithFace:v20 asset:v12 person:0];
        v22 = [v20 personLocalIdentifier];
        if (v22)
        {
          [v13 setObject:v21 forKey:v22];
        }

        v23 = [v20 localIdentifier];
        [v14 setObject:v21 forKey:v23];
      }

      v17 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v17);
  }

  v43 = v12;
  v41 = v15;

  v24 = MEMORY[0x1E6978980];
  v25 = [v13 allKeys];
  v26 = [v24 fetchPersonsWithLocalIdentifiers:v25 options:v44];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v26;
  v27 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v47;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v46 + 1) + 8 * j);
        v32 = [v31 localIdentifier];
        v33 = [v13 objectForKeyedSubscript:v32];

        v34 = [PXPeopleFaceTile alloc];
        v35 = [v33 face];
        v36 = [v33 asset];
        v37 = [(PXPeopleFaceTile *)v34 initWithFace:v35 asset:v36 person:v31];

        v38 = [(PXPeopleFaceTile *)v37 face];
        v39 = [v38 localIdentifier];
        [v14 setObject:v37 forKey:v39];
      }

      v28 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v28);
  }

  v40 = [v14 allValues];
  v42[2](v42, v40, obj);
}

+ (CGRect)faceRectForPeopleFaceTile:(id)a3
{
  v3 = a3;
  v4 = [v3 asset];
  v5 = [v3 face];

  [v5 px_cropRectWithCropFactor:1.5];
  [v4 pixelWidth];
  [v4 pixelHeight];
  PXRectDenormalize();
}

+ (id)personFaceTileByPersonIdForPersons:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 _pl_indexBy:&__block_literal_global_491];
    v5 = [MEMORY[0x1E69787C8] fetchKeyFaceByPersonLocalIdentifierForPersons:v3 options:0];
    v6 = MEMORY[0x1E6978630];
    v7 = [v5 allValues];
    v8 = [v6 fetchAssetsGroupedByFaceUUIDForFaces:v7];

    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__PXPeopleUtilities_personFaceTileByPersonIdForPersons___block_invoke_2;
    v15[3] = &unk_1E773A610;
    v16 = v4;
    v17 = v8;
    v18 = v9;
    v10 = v9;
    v11 = v8;
    v12 = v4;
    [v5 enumerateKeysAndObjectsUsingBlock:v15];
    v13 = [v10 copy];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F8];
  }

  return v13;
}

void __56__PXPeopleUtilities_personFaceTileByPersonIdForPersons___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v11];
  v7 = *(a1 + 40);
  v8 = [v5 uuid];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [[PXPeopleFaceTile alloc] initWithFace:v5 asset:v9 person:v6];
    [*(a1 + 48) setObject:v10 forKey:v11];
  }
}

+ (id)generateNewFaceTileFromFaceTile:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 face];
  v5 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:v4];
  v6 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v5 setIncludedDetectionTypes:v6];

  v7 = MEMORY[0x1E69787C8];
  v8 = [v4 localIdentifier];
  v23[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v10 = [v7 fetchFacesWithLocalIdentifiers:v9 options:v5];
  v11 = [v10 firstObject];

  v12 = [v11 personLocalIdentifier];
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x1E6978980];
    v22 = v12;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v16 = [v14 fetchPersonsWithLocalIdentifiers:v15 options:v5];
    v17 = [v16 firstObject];
  }

  else
  {
    v17 = 0;
  }

  v18 = [PXPeopleFaceTile alloc];
  v19 = [v3 asset];

  v20 = [(PXPeopleFaceTile *)v18 initWithFace:v11 asset:v19 person:v17];

  return v20;
}

+ (void)peopleFaceTilesForFaces:(id)a3 asset:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 count];
  if (v11 && v14)
  {
    if (!v12)
    {
      v12 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:v11];
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__PXPeopleUtilities_peopleFaceTilesForFaces_asset_options_completion___block_invoke;
    v15[3] = &unk_1E773A5E8;
    v16 = v13;
    [a1 _peopleFaceTilesForFaces:v10 asset:v11 options:v12 completion:v15];
  }

  else
  {
    (*(v13 + 2))(v13, MEMORY[0x1E695E0F0]);
  }
}

+ (void)peopleFaceTilesForAsset:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v9 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:v8];
    v11 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
    [v9 setIncludedDetectionTypes:v11];

    [v9 setIncludeTorsoAndFaceDetectionData:1];
  }

  v12 = [MEMORY[0x1E69787C8] fetchFacesInAsset:v8 options:v9];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__PXPeopleUtilities_peopleFaceTilesForAsset_options_completion___block_invoke;
  v15[3] = &unk_1E773A5C0;
  v16 = v12;
  v17 = v10;
  v13 = v12;
  v14 = v10;
  [a1 _peopleFaceTilesForFaces:v13 asset:v8 options:v9 completion:v15];
}

+ (id)lastManuallySortedPersonInSectionOfType:(int64_t)a3 photoLibrary:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (a3 < 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PXPeopleUtilities.m" lineNumber:495 description:{@"Invalid parameter not satisfying: %@", @"type >= PHPersonTypeOrdinary"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  else if (v7)
  {
    goto LABEL_3;
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:a1 file:@"PXPeopleUtilities.m" lineNumber:496 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

LABEL_3:
  v9 = [a1 _peopleHomeFetchResultForPersonType:a3 photoLibrary:v8];
  v10 = [v9 fetchedObjects];
  v11 = [a1 comparatorByPeopleHomeSortingType:0];
  v12 = [v10 sortedArrayUsingComparator:v11];

  v13 = [v12 lastObject];

  return v13;
}

+ (int64_t)manualOrderForInsertingAtEndOfSectionWithType:(int64_t)a3 photoLibrary:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXPeopleUtilities.m" lineNumber:484 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  if (a3 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = [PXPeopleUtilities lastManuallySortedPersonInSectionOfType:a3 photoLibrary:v7];
  v9 = [v8 manualOrder] + 1;

LABEL_6:
  return v9;
}

+ (void)setSortOrder:(unint64_t)a3 toPhotoLibrary:(id)a4
{
  v5 = a4;
  [PXPeopleSwiftUtilities setWithSortOrder:[PXPeopleSwiftUtilities sortOrderFor:a3] to:v5];
}

+ (unint64_t)currentSortOrderFor:(id)a3
{
  v3 = [PXPeopleSwiftUtilities currentSortOrderFor:a3];

  return [PXPeopleSwiftUtilities rawValueFor:v3];
}

+ (NSArray)reverseSortDescriptorsForManualSort
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"manualOrder" ascending:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

+ (NSArray)sortDescriptorsForManualSort
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"manualOrder" ascending:1];
  v6[0] = v2;
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)comparatorByPeopleHomeSortingType:(unint64_t)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PXPeopleUtilities_comparatorByPeopleHomeSortingType___block_invoke;
  aBlock[3] = &__block_descriptor_48_e18___PHPerson_16__0_8l;
  aBlock[4] = a2;
  aBlock[5] = a1;
  v4 = _Block_copy(aBlock);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __55__PXPeopleUtilities_comparatorByPeopleHomeSortingType___block_invoke_2;
  v27[3] = &unk_1E773A520;
  v5 = v4;
  v28 = v5;
  v6 = _Block_copy(v27);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __55__PXPeopleUtilities_comparatorByPeopleHomeSortingType___block_invoke_4;
  v25[3] = &unk_1E773A548;
  v26 = v5;
  v7 = v5;
  v8 = _Block_copy(v25);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __55__PXPeopleUtilities_comparatorByPeopleHomeSortingType___block_invoke_5;
  v20[3] = &unk_1E773A570;
  v21 = v6;
  v22 = &__block_literal_global_481_117482;
  v24 = a3;
  v9 = v8;
  v23 = v9;
  v10 = v6;
  v11 = _Block_copy(v20);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__PXPeopleUtilities_comparatorByPeopleHomeSortingType___block_invoke_6;
  v16[3] = &unk_1E773A598;
  v18 = v9;
  v19 = a3;
  v17 = v11;
  v12 = v9;
  v13 = v11;
  v14 = _Block_copy(v16);

  return v14;
}

id __55__PXPeopleUtilities_comparatorByPeopleHomeSortingType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PXPeopleUtilities.m" lineNumber:395 description:{@"Unexpected object type: %@", v3}];

      abort();
    }

    v4 = [v3 modelObject];
  }

  v5 = v4;

  return v5;
}

__CFString *__55__PXPeopleUtilities_comparatorByPeopleHomeSortingType___block_invoke_2(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 px_localizedName];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F1741150;
  }

  v5 = v4;

  return v4;
}

uint64_t __55__PXPeopleUtilities_comparatorByPeopleHomeSortingType___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (*(*(a1 + 32) + 16))();
  v8 = [v7 manualOrder];

  v9 = (*(*(a1 + 32) + 16))();
  v10 = [v9 manualOrder];

  if (v8 <= v10)
  {
    if (v8 >= v10)
    {
      v12 = (*(*(a1 + 32) + 16))();
      v13 = [v12 uuid];
      v14 = (*(*(a1 + 32) + 16))();
      v15 = [v14 uuid];
      v11 = [v13 compare:v15];
    }

    else
    {
      v11 = -1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

uint64_t __55__PXPeopleUtilities_comparatorByPeopleHomeSortingType___block_invoke_5(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (*(a1[4] + 16))();
  v8 = (*(a1[4] + 16))();
  v9 = (*(a1[5] + 16))();
  v10 = (*(a1[5] + 16))();
  v11 = v10 ^ 1;
  if ((v9 ^ 1) & 1) != 0 || (v11)
  {
    if ((v9 ^ 1 | v10))
    {
      if ((v9 | v11))
      {
        v13 = (*(a1[6] + 16))();
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = -1;
    }
  }

  else
  {
    v12 = [v7 localizedStandardCompare:v8];
    if (a1[7] == 1)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }
  }

  return v13;
}

uint64_t __55__PXPeopleUtilities_comparatorByPeopleHomeSortingType___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 48);
  if (v8 <= 2)
  {
    v3 = (*(*(a1 + qword_1A5381CB0[v8]) + 16))();
  }

  return v3;
}

+ (void)unlinkContactInfoForPerson:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 photoLibrary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PXPeopleUtilities_unlinkContactInfoForPerson_completion___block_invoke;
  v9[3] = &unk_1E774C648;
  v10 = v5;
  v8 = v5;
  [v7 performChanges:v9 completionHandler:v6];
}

void __59__PXPeopleUtilities_unlinkContactInfoForPerson_completion___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E6978990] changeRequestForPerson:*(a1 + 32)];
  [v1 setName:0];
  [v1 setDisplayName:0];
  [v1 setContactMatchingDictionary:MEMORY[0x1E695E0F8]];
  [v1 setPersonUri:&stru_1F1741150];
}

+ (id)fetchMeContact
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = +[PXPeopleUtilities sharedContactStore];
  v13[0] = *MEMORY[0x1E695C400];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v8 = 0;
  v4 = [v2 _crossPlatformUnifiedMeContactWithKeysToFetch:v3 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "+[PXPeopleUtilities fetchMeContact]";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "%s: Error fetching the me contact: %@", buf, 0x16u);
    }

    v4 = 0;
  }

  return v4;
}

+ (BOOL)isGreenTeaAndContactsAccessDenied
{
  if (isGreenTeaAndContactsAccessDenied_onceToken != -1)
  {
    dispatch_once(&isGreenTeaAndContactsAccessDenied_onceToken, &__block_literal_global_472);
  }

  return isGreenTeaAndContactsAccessDenied_isGreenTeaAndAccessDenied;
}

uint64_t __54__PXPeopleUtilities_isGreenTeaAndContactsAccessDenied__block_invoke()
{
  result = PLIsChinaSKU();
  if (result)
  {
    result = [MEMORY[0x1E695CE18] authorizationStatusForEntityType:0];
    isGreenTeaAndContactsAccessDenied_isGreenTeaAndAccessDenied = (result - 1) < 2;
  }

  return result;
}

+ (id)sharedContactStore
{
  if (sharedContactStore_onceToken != -1)
  {
    dispatch_once(&sharedContactStore_onceToken, &__block_literal_global_469_117493);
  }

  v3 = sharedContactStore_contactStore;

  return v3;
}

void __39__PXPeopleUtilities_sharedContactStore__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v1 = sharedContactStore_contactStore;
  sharedContactStore_contactStore = v0;
}

+ (id)stringForAddingPerson:(id)a3
{
  v3 = a3;
  v4 = [v3 px_localizedName];
  v5 = [v3 photoLibrary];
  v6 = [v5 px_peoplePetsHomeVisibility];

  if ([v3 px_isHuman])
  {
    v7 = v6 | 1;
  }

  else if ([v3 px_isPet])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  if ([v4 length])
  {
    PXLocalizedStringForPersonOrPetAndVisibility(v3, 0, @"PXPeopleAddToHomeTitleNamed");
  }

  else
  {
    PXLocalizedStringForPersonOrPetAndVisibility(v3, 0, @"PXPeopleAddToHomeTitleNoName");
  }

  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringForPeoplePetsHomeTitle(v7);
  objc_claimAutoreleasedReturnValue();
  PXStringWithValidatedFormat();
}

+ (id)stringForHidingPerson:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 px_localizedName];
  if ([v4 length])
  {
    v10[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

    PXLocalizedStringForPeople(v5, @"PXPeopleRemoveFromHomeTitleNamed");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  v9 = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];

  v7 = PXLocalizedStringForPeople(v6, @"PXPeopleRemoveFromHomeTitleNoName");

  return v7;
}

+ (id)favoritingStringForPerson:(id)a3
{
  v3 = a3;
  if ([v3 type] == 1)
  {
    v4 = @"PXPeopleUnfavoriteThisPerson";
  }

  else
  {
    v4 = @"PXPeopleFavoriteThisPerson";
  }

  v5 = PXLocalizedStringForPersonOrPetAndVisibility(v3, 0, v4);

  return v5;
}

+ (id)facesForPerson:(id)a3 inAssets:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 fetchedObjectIDs];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v26 + 1) + 8 * i) objectID];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
    }
  }

  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in (%@)", @"assetForFace", v7, v26];
  v15 = MEMORY[0x1E696AE18];
  v16 = [v5 objectID];
  v17 = [v15 predicateWithFormat:@"noindex:(%K) = %@", @"personForFace", v16];

  v18 = MEMORY[0x1E696AB28];
  v30[0] = v14;
  v30[1] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v20 = [v18 andPredicateWithSubpredicates:v19];

  v21 = [v5 photoLibrary];
  v22 = [v21 librarySpecificFetchOptions];

  [v22 setInternalPredicate:v20];
  [v22 setIncludeTorsoAndFaceDetectionData:1];
  v23 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v22 setIncludedDetectionTypes:v23];

  v24 = [MEMORY[0x1E69787C8] fetchFacesWithOptions:v22];

  return v24;
}

+ (BOOL)isPersonHiddenFromPeopleHome:(id)a3
{
  v3 = a3;
  v4 = [v3 type] == -1 || objc_msgSend(v3, "verifiedType") == 0;

  return v4;
}

+ (id)sortDescriptorsWithPersonAssetSortOrder:(int64_t)a3
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"dateCreated" ascending:a3 == 1];
  v7[0] = v3;
  v4 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"uuid" ascending:1];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

+ (id)assetCollectionListFetchResultForPeople:(id)a3 assetCollectionFetchResults:(id *)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v5 photoLibrary];
  v7 = [v6 librarySpecificFetchOptions];
  v40[0] = *MEMORY[0x1E6978C08];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  [v7 setFetchPropertySets:v8];

  [v7 setIncludeTorsoAndFaceDetectionData:1];
  v32 = v7;
  v33 = v6;
  v31 = v5;
  if ([v4 count] == 1)
  {
    v9 = [v5 px_isHuman];
    v10 = @"PXPetVirtualCollection";
    if (v9)
    {
      v10 = @"PXPersonVirtualCollection";
    }

    v11 = v10;
    v12 = [v5 localIdentifier];
    v13 = [MEMORY[0x1E6978630] fetchAssetsForPersons:v4 options:v7];
  }

  else
  {
    v14 = [PXPeopleUtilities identifiersForPeople:v4];
    v34 = 0;
    v15 = [v6 assetIdentifiersForPersonIdentifiers:v14 error:&v34];
    v16 = v34;
    if ([v15 count])
    {
      v13 = [MEMORY[0x1E6978630] fetchAssetsWithLocalIdentifiers:v15 options:v32];
    }

    else
    {
      if (v16)
      {
        v17 = PLUIGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [v16 localizedDescription];
          *buf = 138412290;
          v39 = v18;
          _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "Error while getting assets for social group: %@", buf, 0xCu);
        }
      }

      v13 = 0;
    }

    v11 = @"PXSocialGroupVirtualCollection";
    v19 = @"PXSocialGroupVirtualCollection";
    v20 = [MEMORY[0x1E696AFB0] UUID];
    v12 = [v20 UUIDString];

    v6 = v33;
  }

  v21 = [(__CFString *)v11 stringByAppendingFormat:@"-%@", v12];
  if ([v13 count])
  {
    v22 = [PXPeopleUtilities titleStringForPeople:v4];
    v23 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v13 title:v22 identifier:v21];
    v24 = MEMORY[0x1E6978760];
    v37 = v23;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    v26 = [v24 transientCollectionListWithCollections:v25 title:v22];

    v27 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:v6 orObject:0];
    v28 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v26 options:v27];
    if (a4)
    {
      v35 = v23;
      v36 = v13;
      *a4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (id)assetCollectionListFetchResultForPerson:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6978630];
  v15[0] = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v15 count:1];
  v7 = [v3 fetchAssetsForPersons:v6 options:0];

  v8 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v7 title:0];
  v9 = MEMORY[0x1E6978760];
  v14 = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v11 = [v9 transientCollectionListWithCollections:v10 title:0];

  v12 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v11 options:0];

  return v12;
}

+ (id)identifiersForPeople:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) localIdentifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (BOOL)mergePersons:(id)a3 withPerson:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E695DFA8] setWithArray:a3];
  [v6 addObject:v5];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        [v13 fetchPropertySetsIfNeeded];
        v14 = [v13 userFeedbackProperties];
        v15 = [v14 userFeedback];

        if (v13)
        {
          v16 = v15 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          v10 = [MEMORY[0x1E6978B00] mergeFeedbackType:objc_msgSend(v15 withOtherFeedbackType:{"type"), v10}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v17 = [v5 photoLibrary];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __45__PXPeopleUtilities_mergePersons_withPerson___block_invoke;
  v25[3] = &unk_1E7749FF8;
  v18 = v7;
  v26 = v18;
  v19 = v5;
  v27 = v19;
  v28 = v10;
  v24 = 0;
  v20 = [v17 performChangesAndWait:v25 error:&v24];
  v21 = v24;

  if ((v20 & 1) == 0)
  {
    v22 = PLUIGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v21;
      _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_ERROR, "People merging failed with error: %@", buf, 0xCu);
    }
  }

  return v20;
}

void __45__PXPeopleUtilities_mergePersons_withPerson___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6978990];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) localIdentifier];
  v10 = [v2 changeRequestForMergingPersons:v3 nominalTargetIdentifier:v4];

  v5 = [v10 targetPerson];
  v6 = [v5 userFeedbackProperties];
  v7 = [v6 userFeedback];
  v8 = [v7 type];

  if (*(a1 + 48) != v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E6978B00]) initWithType:*(a1 + 48) feature:0 context:0];
    [v10 setUserFeedback:v9];
  }
}

+ (int64_t)countOfPeopleHomePeopleForPhotoLibrary:(id)a3
{
  v3 = [PXPeopleUtilities _peopleHomeFetchOptionsForPhotoLibrary:a3];
  [v3 setShouldPrefetchCount:1];
  v4 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v3];
  v5 = [v4 count];

  return v5;
}

+ (id)fetchPeopleForPeopleHomeWithPhotoLibrary:(id)a3 fetchLimit:(int64_t)a4
{
  v5 = [PXPeopleUtilities _peopleHomeFetchOptionsForPhotoLibrary:a3];
  [v5 setFetchLimit:a4];
  v6 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v5];

  return v6;
}

+ (id)_peopleHomeFetchResultForPersonType:(int64_t)a3 photoLibrary:(id)a4
{
  v5 = [PXPeopleUtilities _peopleHomeFetchOptionsForPhotoLibrary:a4];
  v6 = [MEMORY[0x1E6978980] fetchPersonsWithType:a3 options:v5];

  return v6;
}

+ (id)_peopleHomeFetchOptionsForPhotoLibrary:(id)a3
{
  v3 = [a3 librarySpecificFetchOptions];
  [v3 setPersonContext:1];
  v4 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v3 setIncludedDetectionTypes:v4];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != -1", @"manualOrder"];
  [v3 setPredicate:v5];

  return v3;
}

+ (id)personWithLocalIdentifier:(id)a3 propertySets:(id)a4 photoLibrary:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PXPeopleUtilities.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v12 = [v11 librarySpecificFetchOptions];
  [v12 setFetchLimit:1];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"localIdentifier = %@", v9];
  [v12 setPredicate:v13];

  [v12 setMinimumUnverifiedFaceCount:1];
  v14 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v12 setIncludedDetectionTypes:v14];

  if (v10 && [v10 count])
  {
    [v12 setFetchPropertySets:v10];
  }

  v15 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v12];
  v16 = [v15 firstObject];

  return v16;
}

+ (id)fetchPeopleWithUUIDs:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = [a4 librarySpecificFetchOptions];
  [v6 setPersonContext:1];
  v7 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v6 setIncludedDetectionTypes:v7];

  PXMap();
}

+ (id)personWithPersonUri:(id)a3 photoLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PXPeopleUtilities.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"personUri"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:a1 file:@"PXPeopleUtilities.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

LABEL_3:
  v10 = [v9 librarySpecificFetchOptions];
  [v10 setPersonContext:1];
  [v10 setFetchLimit:1];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"personUri = %@", v7];
  [v10 setPredicate:v11];

  v12 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v10];
  v13 = [v12 firstObject];

  return v13;
}

+ (id)personWithPersonUri:(id)a3
{
  v4 = MEMORY[0x1E69789A8];
  v5 = a3;
  v6 = [v4 px_deprecated_appPhotoLibrary];
  v7 = [a1 personWithPersonUri:v5 photoLibrary:v6];

  return v7;
}

@end