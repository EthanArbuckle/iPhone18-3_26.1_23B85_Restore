@interface PXPeopleUtilities
+ (BOOL)_hasRecentlyHandledBootstrapOrSuggestionForPerson:(id)person;
+ (BOOL)_isPhotosProcess;
+ (BOOL)canSetPersonAsMagicItem:(id)item;
+ (BOOL)isGreenTeaAndContactsAccessDenied;
+ (BOOL)isPersonHiddenFromPeopleHome:(id)home;
+ (BOOL)mergePersons:(id)persons withPerson:(id)person;
+ (BOOL)shouldShowBootstrapForPerson:(id)person context:(id)context;
+ (BOOL)showBootstrapIfNeededWithContext:(id)context fromParentVC:(id)c force:(BOOL)force flowDelegate:(id)delegate presentationDelegate:(id)presentationDelegate;
+ (CGRect)faceRectForPeopleFaceTile:(id)tile;
+ (NSArray)reverseSortDescriptorsForManualSort;
+ (NSArray)sortDescriptorsForManualSort;
+ (id)_daysDictionary;
+ (id)_peopleHomeFetchOptionsForPhotoLibrary:(id)library;
+ (id)_peopleHomeFetchResultForPersonType:(int64_t)type photoLibrary:(id)library;
+ (id)_titleStringForPeople:(id)people singlePersonFallback:(id)fallback groupFallback:(id)groupFallback;
+ (id)_untaggingLog;
+ (id)alertControllerForRevertingSuggestLess:(id)less undoManager:(id)manager completion:(id)completion;
+ (id)alertControllerForUntaggingPerson:(id)person asset:(id)asset completion:(id)completion;
+ (id)assetCollectionListFetchResultForPeople:(id)people assetCollectionFetchResults:(id *)results;
+ (id)assetCollectionListFetchResultForPerson:(id)person;
+ (id)bootstrapViewControllerForContext:(id)context delegate:(id)delegate;
+ (id)comparatorByPeopleHomeSortingType:(unint64_t)type;
+ (id)contactViewControllerForContact:(id)contact target:(id)target selector:(SEL)selector;
+ (id)facesForPerson:(id)person inAssets:(id)assets;
+ (id)favoritingStringForPerson:(id)person;
+ (id)fetchMeContact;
+ (id)fetchPeopleAndPetsInSocialGroup:(id)group;
+ (id)fetchPeopleForPeopleHomeWithPhotoLibrary:(id)library fetchLimit:(int64_t)limit;
+ (id)fetchPeopleWithUUIDs:(id)ds photoLibrary:(id)library;
+ (id)generateNewFaceTileFromFaceTile:(id)tile;
+ (id)identifiersForPeople:(id)people;
+ (id)keyAssetForPerson:(id)person face:(id)face;
+ (id)keyFaceForPerson:(id)person;
+ (id)lastManuallySortedPersonInSectionOfType:(int64_t)type photoLibrary:(id)library;
+ (id)locKeyForHasHumans:(BOOL)humans hasPets:(BOOL)pets key:(id)key;
+ (id)locKeyForPeople:(id)people key:(id)key;
+ (id)locKeyForPersonOrPet:(id)pet key:(id)key;
+ (id)locKeyForPersonOrPet:(id)pet withVisibility:(unint64_t)visibility key:(id)key;
+ (id)memoryTitleStringFromPeople:(id)people;
+ (id)peopleArrayFromFastEnumeration:(id)enumeration;
+ (id)peopleFetchResultFromFastEnumeration:(id)enumeration photoLibrary:(id)library;
+ (id)personFaceTileByPersonIdForPersons:(id)persons;
+ (id)personWithLocalIdentifier:(id)identifier propertySets:(id)sets photoLibrary:(id)library;
+ (id)personWithPersonUri:(id)uri;
+ (id)personWithPersonUri:(id)uri photoLibrary:(id)library;
+ (id)sharedContactStore;
+ (id)socialGroupFetchResultFromFastEnumeration:(id)enumeration photoLibrary:(id)library;
+ (id)sortDescriptorsWithPersonAssetSortOrder:(int64_t)order;
+ (id)sortedPersons:(id)persons byPersonMemoryFeatures:(id)features;
+ (id)stringForAddingPerson:(id)person;
+ (id)stringForHidingPerson:(id)person;
+ (id)suggestLessOptionSelectionViewController:(id)controller delegate:(id)delegate completionHandler:(id)handler;
+ (id)summaryTitleForLibrary:(id)library count:(int64_t)count;
+ (id)titleStringForPeople:(id)people;
+ (id)titleStringForPerson:(id)person;
+ (int64_t)changeTypeForPeople:(id)people;
+ (int64_t)countOfPeopleHomePeopleForPhotoLibrary:(id)library;
+ (int64_t)manualOrderForInsertingAtEndOfSectionWithType:(int64_t)type photoLibrary:(id)library;
+ (unint64_t)currentSortOrderFor:(id)for;
+ (void)_alertStringsForPerson:(id)person alertTitle:(id *)title alertMessage:(id *)message alternativeLevelActionTitle:(id *)actionTitle resetActionTitle:(id *)resetActionTitle;
+ (void)_peopleFaceTilesForFaces:(id)faces asset:(id)asset options:(id)options completion:(id)completion;
+ (void)_setDaysDictionary:(id)dictionary;
+ (void)_unlinkContactfromPerson:(id)person completion:(id)completion;
+ (void)handleUnlinkContact:(id)contact person:(id)person presentationEnvironment:(id)environment sourceItem:(id)item handleUnlinkageInternally:(BOOL)internally completion:(id)completion;
+ (void)people:(id)people hasHumans:(BOOL *)humans hasPets:(BOOL *)pets;
+ (void)peopleFaceTilesForAsset:(id)asset options:(id)options completion:(id)completion;
+ (void)peopleFaceTilesForFaces:(id)faces asset:(id)asset options:(id)options completion:(id)completion;
+ (void)performSetSocialGroupKeyPhotoWithAsset:(id)asset socialGroup:(id)group undoManager:(id)manager completionHandler:(id)handler;
+ (void)resetTemporarilySuppressedBootstrapOrSuggestions;
+ (void)setSortOrder:(unint64_t)order toPhotoLibrary:(id)library;
+ (void)temporarilySuppressBootstrapOrSuggestionForPerson:(id)person;
+ (void)unblockPersonsInLibrary:(id)library completion:(id)completion;
+ (void)unlinkContactInfoForPerson:(id)person completion:(id)completion;
@end

@implementation PXPeopleUtilities

+ (id)contactViewControllerForContact:(id)contact target:(id)target selector:(SEL)selector
{
  v7 = MEMORY[0x1E695D148];
  targetCopy = target;
  v9 = [v7 viewControllerForContact:contact];
  contentViewController = [v9 contentViewController];
  cardFooterGroup = [contentViewController cardFooterGroup];
  v12 = PXLocalizedStringFromTable(@"PXPeopleInfoUnlinkContactButton", @"PhotosUICore");
  [contentViewController addActionWithTitle:v12 target:targetCopy selector:selector inGroup:cardFooterGroup destructive:1];

  return v9;
}

+ (void)_unlinkContactfromPerson:(id)person completion:(id)completion
{
  personCopy = person;
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__PXPeopleUtilities_UI___unlinkContactfromPerson_completion___block_invoke;
  v9[3] = &unk_1E774BD88;
  v10 = personCopy;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = personCopy;
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

+ (void)handleUnlinkContact:(id)contact person:(id)person presentationEnvironment:(id)environment sourceItem:(id)item handleUnlinkageInternally:(BOOL)internally completion:(id)completion
{
  personCopy = person;
  completionCopy = completion;
  itemCopy = item;
  environment;
  contactCopy = contact;
  PXLocalizedStringFromTable(@"PXPeopleInfoUnlinkContactAlertTitle", @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  [MEMORY[0x1E6978980] fullNameFromContact:contactCopy];
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

+ (id)suggestLessOptionSelectionViewController:(id)controller delegate:(id)delegate completionHandler:(id)handler
{
  handlerCopy = handler;
  delegateCopy = delegate;
  controllerCopy = controller;
  v10 = [[_TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController alloc] initWithPeople:controllerCopy delegate:delegateCopy completionHandler:handlerCopy];

  return v10;
}

+ (void)_alertStringsForPerson:(id)person alertTitle:(id *)title alertMessage:(id *)message alternativeLevelActionTitle:(id *)actionTitle resetActionTitle:(id *)resetActionTitle
{
  v31[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  px_localizedName = [personCopy px_localizedName];
  userFeedbackProperties = [personCopy userFeedbackProperties];
  userFeedback = [userFeedbackProperties userFeedback];
  type = [userFeedback type];

  v31[0] = *MEMORY[0x1E695C1C0];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v16 = [personCopy linkedContactWithKeysToFetch:v15];
  termsOfAddress = [v16 termsOfAddress];

  v30 = px_localizedName;
  if (type == 3)
  {
    if ([px_localizedName length])
    {
      PXLocalizedStringForPersonOrPetAndVisibility(personCopy, 0, @"PXPeopleBlockPersonRevertAlertTitleNamed_FromNeverFeature");
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    v21 = PXLocalizedStringForPersonOrPetAndVisibility(personCopy, 0, @"PXPeopleBlockPersonRevertAlertTitleNoName_FromNeverFeature");
    v22 = @"PXPeopleBlockPersonRevertAlertInformativeText_FromNeverFeature";
    v23 = @"PXPeopleBlockPersonRevertAlertChangeLevelActionTitle_FromNeverFeature";
  }

  else
  {
    if (type != 2)
    {
      v18 = termsOfAddress;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      goto LABEL_11;
    }

    if ([px_localizedName length])
    {
      PXLocalizedStringForPersonOrPetAndVisibility(personCopy, 0, @"PXPeopleBlockPersonRevertAlertTitleNamed_FromFeatureLess");
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    v21 = PXLocalizedStringForPersonOrPetAndVisibility(personCopy, 0, @"PXPeopleBlockPersonRevertAlertTitleNoName_FromFeatureLess");
    v22 = @"PXPeopleBlockPersonRevertAlertInformativeText_FromFeatureLess";
    v23 = @"PXPeopleBlockPersonRevertAlertChangeLevelActionTitle_FromFeatureLess";
  }

  v20 = PXLocalizedStringForPersonOrPetAndVisibility(personCopy, 0, v23);
  v18 = termsOfAddress;
  v19 = PXLocalizedAttributedStringForPersonOrPet(personCopy, 0, termsOfAddress, v22);
LABEL_11:
  if ([v30 length])
  {
    PXLocalizedStringForPersonOrPetAndVisibility(personCopy, 0, @"PXPeopleBlockPersonRevertResetActionTitleNamed");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  v24 = PXLocalizedStringForPersonOrPetAndVisibility(personCopy, 0, @"PXPeopleBlockPersonRevertResetActionTitleNoName");
  if (title)
  {
    v25 = v21;
    *title = v21;
  }

  if (message)
  {
    v26 = v19;
    *message = v19;
  }

  if (actionTitle)
  {
    v27 = v20;
    *actionTitle = v20;
  }

  if (resetActionTitle)
  {
    v28 = v24;
    *resetActionTitle = v24;
  }
}

+ (id)alertControllerForRevertingSuggestLess:(id)less undoManager:(id)manager completion:(id)completion
{
  v51[1] = *MEMORY[0x1E69E9840];
  lessCopy = less;
  managerCopy = manager;
  completionCopy = completion;
  v31 = PXLocalizedStringFromTable(@"PXBlockConfirmationDialogButtonTitle_Cancel", @"PhotosUICore");
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  [self _alertStringsForPerson:lessCopy alertTitle:&v49 alertMessage:&v48 alternativeLevelActionTitle:&v47 resetActionTitle:&v46];
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
  v16 = lessCopy;
  v42 = v16;
  v17 = managerCopy;
  v43 = v17;
  selfCopy = self;
  v18 = completionCopy;
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
  selfCopy2 = self;
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

+ (id)alertControllerForUntaggingPerson:(id)person asset:(id)asset completion:(id)completion
{
  v85[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  assetCopy = asset;
  completionCopy = completion;
  px_localizedName = [personCopy px_localizedName];
  v11 = [px_localizedName length];
  mediaType = [assetCopy mediaType];
  v65 = px_localizedName;
  if (v11)
  {
    if (mediaType == 2)
    {
      v13 = @"PXPeopleUntagPersonDescriptionNamedVideo";
    }

    else
    {
      v13 = @"PXPeopleUntagPersonDescriptionNamedPhoto";
    }

    PXLocalizedStringForPersonOrPetAndVisibility(personCopy, 0, v13);
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  if (mediaType == 2)
  {
    v14 = @"PXPeopleUntagPersonDescriptionNoNameVideo";
  }

  else
  {
    v14 = @"PXPeopleUntagPersonDescriptionNoNamePhoto";
  }

  v15 = PXLocalizedStringForPersonOrPetAndVisibility(personCopy, 0, v14);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PXPeopleUtilities_UI__alertControllerForUntaggingPerson_asset_completion___block_invoke;
  aBlock[3] = &unk_1E772D1F8;
  v16 = personCopy;
  v81 = v16;
  v17 = assetCopy;
  v82 = v17;
  v18 = _Block_copy(aBlock);
  v64 = v15;
  v67 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v15 preferredStyle:0];
  v19 = MEMORY[0x1E6978830];
  photoLibrary = [v17 photoLibrary];
  v21 = [v19 fetchOptionsWithPhotoLibrary:photoLibrary orObject:0];

  [v21 setIncludeTorsoAndFaceDetectionData:1];
  px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v21 setIncludedDetectionTypes:px_defaultDetectionTypes];

  v23 = MEMORY[0x1E696AE18];
  uuid = [v16 uuid];
  v25 = [v23 predicateWithFormat:@"%K = %@", @"personForFace.personUUID", uuid];
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
    firstObject = [v28 firstObject];
    v30 = v67;
    if (firstObject)
    {
LABEL_11:
      v31 = [PXPeopleSwiftUtilities untaggingViewControllerForFace:firstObject];
      [v30 setContentViewController:v31];

LABEL_28:
      PXLocalizedStringForPersonOrPetAndVisibility(v66, 0, @"PXPeopleTagWithNewName");
      v48 = v47 = completionCopy;
      v49 = MEMORY[0x1E69DC648];
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __76__PXPeopleUtilities_UI__alertControllerForUntaggingPerson_asset_completion___block_invoke_401;
      v74[3] = &unk_1E772D248;
      v50 = firstObject;
      v75 = v50;
      v78 = v18;
      v76 = v28;
      v77 = v66;
      v79 = v47;
      v51 = [v49 actionWithTitle:v48 style:0 handler:v74];
      v46 = v50;
      [v30 addAction:v51];

      completionCopy = v47;
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

  firstObject2 = [v28 firstObject];
  [firstObject2 centerX];
  if (v33 == 0.0)
  {
    lastObject = [v28 lastObject];
    [lastObject centerX];
    v36 = v35;

    v30 = v67;
    if (v36 != 0.0)
    {
      lastObject2 = [v28 lastObject];
      goto LABEL_21;
    }
  }

  else
  {

    v30 = v67;
  }

  firstObject3 = [v28 firstObject];
  [firstObject3 centerX];
  if (v40 == 0.0)
  {
  }

  else
  {
    lastObject3 = [v28 lastObject];
    [lastObject3 centerX];
    v43 = v42;

    if (v43 == 0.0)
    {
      lastObject2 = [v28 firstObject];
LABEL_21:
      firstObject = lastObject2;
      if (lastObject2)
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
    localIdentifier = [v16 localIdentifier];
    *buf = 138412290;
    v84 = localIdentifier;
    _os_log_impl(&dword_1A3C1C000, v44, OS_LOG_TYPE_ERROR, "Failed to get a face to show for person: %@", buf, 0xCu);
  }

  firstObject = 0;
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
  v54 = completionCopy;
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

+ (BOOL)showBootstrapIfNeededWithContext:(id)context fromParentVC:(id)c force:(BOOL)force flowDelegate:(id)delegate presentationDelegate:(id)presentationDelegate
{
  v33[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  cCopy = c;
  delegateCopy = delegate;
  presentationDelegateCopy = presentationDelegate;
  sourcePerson = [contextCopy sourcePerson];
  localIdentifier = [sourcePerson localIdentifier];
  v33[0] = *MEMORY[0x1E6978F38];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  photoLibrary = [sourcePerson photoLibrary];
  v18 = [PXPeopleUtilities personWithLocalIdentifier:localIdentifier propertySets:v16 photoLibrary:photoLibrary];

  v19 = delegateCopy;
  if ((force || +[PXPeopleUtilities shouldShowBootstrapForPerson:](PXPeopleUtilities, "shouldShowBootstrapForPerson:", v18)) && ([contextCopy setSourcePerson:v18], objc_msgSend(self, "bootstrapViewControllerForContext:delegate:", contextCopy, delegateCopy), (v20 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v21 = v20;
    [(PXChangePeopleTypeAction *)v20 setModalPresentationStyle:2];
    presentationController = [(PXChangePeopleTypeAction *)v21 presentationController];
    v23 = presentationDelegateCopy;
    [presentationController setDelegate:presentationDelegateCopy];

    v24 = 1;
    v25 = cCopy;
    [cCopy presentViewController:v21 animated:1 completion:0];
  }

  else
  {
    if (([contextCopy didCommitPreBootstrapAction] & 1) != 0 || objc_msgSend(contextCopy, "bootstrapType"))
    {
      v21 = [(PXPeopleBootstrapFlowController *)[PXUIPeopleBootstrapFlowController alloc] initEmptyFlowWithContext:contextCopy];
      v25 = cCopy;
      [(PXChangePeopleTypeAction *)v21 done:cCopy];
    }

    else
    {
      v27 = [PXChangePeopleTypeAction alloc];
      v32 = v18;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      v21 = [(PXChangePeopleTypeAction *)v27 initWithPeople:v28 type:1];

      v25 = cCopy;
      undoManager = [cCopy undoManager];
      [(PXAction *)v21 executeWithUndoManager:undoManager completionHandler:&__block_literal_global_1957];
    }

    v24 = 0;
    v23 = presentationDelegateCopy;
  }

  return v24;
}

+ (id)bootstrapViewControllerForContext:(id)context delegate:(id)delegate
{
  delegateCopy = delegate;
  contextCopy = context;
  v7 = [(PXPeopleBootstrapFlowController *)[PXUIPeopleBootstrapFlowController alloc] initWithContext:contextCopy];

  [(PXPeopleBootstrapFlowController *)v7 setBootstrapDelegate:delegateCopy];
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

+ (BOOL)canSetPersonAsMagicItem:(id)item
{
  v11 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v3 = MEMORY[0x1E695DEC8];
  itemCopy2 = item;
  v5 = [v3 arrayWithObjects:&itemCopy count:1];
  photoLibrary = [itemCopy2 photoLibrary];
  v7 = [PXPeopleUtilities peopleFetchResultFromFastEnumeration:v5 photoLibrary:photoLibrary];

  v8 = [PXPeoplePromoteAsMagicInternalActionPerformer canPerformOn:v7];
  return v8;
}

+ (void)performSetSocialGroupKeyPhotoWithAsset:(id)asset socialGroup:(id)group undoManager:(id)manager completionHandler:(id)handler
{
  handlerCopy = handler;
  managerCopy = manager;
  groupCopy = group;
  assetCopy = asset;
  v13 = [[PXSocialGroupMakeKeyPhotoAction alloc] initWithSocialGroup:groupCopy newKeyAsset:assetCopy];

  [(PXAction *)v13 executeWithUndoManager:managerCopy completionHandler:handlerCopy];
}

+ (int64_t)changeTypeForPeople:(id)people
{
  peopleCopy = people;
  firstObject = [peopleCopy firstObject];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = firstObject;
  }

  else
  {
    v7 = 0;
  }

  photoLibrary = [v7 photoLibrary];

  if (!photoLibrary)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleUtilities.m" lineNumber:1013 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v9 = [PXPeopleUtilities peopleFetchResultFromFastEnumeration:peopleCopy photoLibrary:photoLibrary];
  v10 = [PXPeopleChangeTypeActionPerformer changeTypeFor:v9];

  return v10;
}

+ (id)locKeyForPersonOrPet:(id)pet withVisibility:(unint64_t)visibility key:(id)key
{
  v6 = [PXPeopleUtilities locKeyForPersonOrPet:pet key:key];
  v7 = v6;
  if (visibility == 1)
  {
    v8 = @"__People";
  }

  else
  {
    if (visibility != 2)
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

+ (id)locKeyForPersonOrPet:(id)pet key:(id)key
{
  petCopy = pet;
  keyCopy = key;
  if (petCopy && ![petCopy px_isHuman])
  {
    v7 = [keyCopy stringByAppendingString:@"_Pet"];
  }

  else
  {
    v7 = keyCopy;
  }

  v8 = v7;

  return v8;
}

+ (id)locKeyForPeople:(id)people key:(id)key
{
  peopleCopy = people;
  keyCopy = key;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleUtilities.m" lineNumber:973 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  v12 = 0;
  [PXPeopleUtilities people:peopleCopy hasHumans:&v12 + 1 hasPets:&v12];
  v9 = [PXPeopleUtilities locKeyForHasHumans:HIBYTE(v12) hasPets:v12 key:keyCopy];

  return v9;
}

+ (id)locKeyForHasHumans:(BOOL)humans hasPets:(BOOL)pets key:(id)key
{
  petsCopy = pets;
  humansCopy = humans;
  keyCopy = key;
  v8 = keyCopy;
  if (humansCopy && petsCopy)
  {
    v9 = @"_PeoplePet";
LABEL_6:
    v10 = [keyCopy stringByAppendingString:v9];
    goto LABEL_8;
  }

  if (petsCopy)
  {
    v9 = @"_Pet";
    goto LABEL_6;
  }

  v10 = keyCopy;
LABEL_8:
  v11 = v10;

  return v11;
}

+ (void)people:(id)people hasHumans:(BOOL *)humans hasPets:(BOOL *)pets
{
  v29 = *MEMORY[0x1E69E9840];
  peopleCopy = people;
  if (!humans || !pets)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleUtilities.m" lineNumber:932 description:{@"Invalid parameter not satisfying: %@", @"outHasHumans != nil && outHasPets != nil"}];
  }

  *humans = 0;
  *pets = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = peopleCopy;
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

        if (!*humans)
        {
          *humans = [v15 px_isHuman];
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

        if (*pets)
        {
          px_isPet = 1;
        }

        else
        {
          px_isPet = [v15 px_isPet];
          *pets = px_isPet;
        }

        if (*humans && (px_isPet & 1) != 0)
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

+ (id)keyAssetForPerson:(id)person face:(id)face
{
  v17[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  faceCopy = face;
  if (faceCopy)
  {
    v9 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:faceCopy];
    [v9 setIncludeHiddenAssets:0];
    [v9 setFetchLimit:1];
    v10 = MEMORY[0x1E6978630];
    v17[0] = faceCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v12 = [v10 fetchAssetsForFaces:v11 options:v9];
  }

  else
  {
    if (!personCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleUtilities.m" lineNumber:918 description:{@"Invalid parameter not satisfying: %@", @"person"}];
    }

    photoLibrary = [personCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v9 = librarySpecificFetchOptions;
    [v9 setIncludeHiddenAssets:0];
    [v9 setFetchLimit:1];

    v12 = [MEMORY[0x1E6978630] fetchKeyAssetForPerson:personCopy options:v9];
  }

  return v12;
}

+ (id)keyFaceForPerson:(id)person
{
  personCopy = person;
  if (!personCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleUtilities.m" lineNumber:903 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  photoLibrary = [personCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setFetchLimit:1];
  px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [librarySpecificFetchOptions setIncludedDetectionTypes:px_defaultDetectionTypes];

  [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  v9 = [MEMORY[0x1E69787C8] px_fetchKeyFaceForPerson:personCopy options:librarySpecificFetchOptions];
  firstObject = [v9 firstObject];

  return firstObject;
}

+ (id)fetchPeopleAndPetsInSocialGroup:(id)group
{
  groupCopy = group;
  photoLibrary = [groupCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [librarySpecificFetchOptions setIncludedDetectionTypes:px_defaultDetectionTypes];

  v7 = [MEMORY[0x1E6978980] fetchPersonsInSocialGroup:groupCopy option:librarySpecificFetchOptions];

  return v7;
}

+ (id)socialGroupFetchResultFromFastEnumeration:(id)enumeration photoLibrary:(id)library
{
  v24 = *MEMORY[0x1E69E9840];
  enumerationCopy = enumeration;
  libraryCopy = library;
  v7 = enumerationCopy;
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
  fetchType = [MEMORY[0x1E6978AD8] fetchType];
  v8 = [v16 initWithObjects:v10 photoLibrary:libraryCopy fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:0];

LABEL_20:

  return v8;
}

+ (id)peopleFetchResultFromFastEnumeration:(id)enumeration photoLibrary:(id)library
{
  v24 = *MEMORY[0x1E69E9840];
  enumerationCopy = enumeration;
  libraryCopy = library;
  v7 = enumerationCopy;
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
  fetchType = [MEMORY[0x1E6978980] fetchType];
  v8 = [v16 initWithObjects:v10 photoLibrary:libraryCopy fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:0];

LABEL_20:

  return v8;
}

+ (id)peopleArrayFromFastEnumeration:(id)enumeration
{
  v19 = *MEMORY[0x1E69E9840];
  enumerationCopy = enumeration;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    fetchedObjects = enumerationCopy;

    if (fetchedObjects)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = enumerationCopy;
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

    fetchedObjects = [v7 copy];
    v6 = 0;
    goto LABEL_19;
  }

  fetchedObjects = [v6 fetchedObjects];
LABEL_19:

LABEL_20:

  return fetchedObjects;
}

+ (id)sortedPersons:(id)persons byPersonMemoryFeatures:(id)features
{
  v25 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  featuresCopy = features;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = featuresCopy;
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
          personLocalIdentifier = [v13 personLocalIdentifier];
          [v7 addObject:personLocalIdentifier];
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
  v16 = [personsCopy sortedArrayUsingComparator:v18];

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

+ (void)unblockPersonsInLibrary:(id)library completion:(id)completion
{
  v5 = MEMORY[0x1E69788F0];
  completionCopy = completion;
  libraryCopy = library;
  v8 = [v5 memoriesWithBlockedPersonFeatureInPhotoLibrary:libraryCopy];
  v9 = MEMORY[0x1E6978980];
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v11 = [v9 fetchPersonsWithUserFeedbackWithOptions:librarySpecificFetchOptions];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__PXPeopleUtilities_unblockPersonsInLibrary_completion___block_invoke;
  v14[3] = &unk_1E774C620;
  v15 = v8;
  v16 = v11;
  v12 = v11;
  v13 = v8;
  [libraryCopy performChanges:v14 completionHandler:completionCopy];
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

+ (id)summaryTitleForLibrary:(id)library count:(int64_t)count
{
  v4 = [self locKeyForPersonOrPet:0 withVisibility:objc_msgSend(library key:{"px_peoplePetsHomeVisibility"), @"PXPeopleHomeSummaryQuantitySubtitle"}];
  PXLocalizedStringWithCount(v4);
}

+ (id)memoryTitleStringFromPeople:(id)people
{
  peopleCopy = people;
  v5 = PXLocalizedStringFromTable(@"PXRelatedPeoplePortraitOf", @"PhotosUICore");
  v6 = PXLocalizedStringFromTable(@"PXRelatedPeopleTogether", @"PhotosUICore");
  v7 = [self _titleStringForPeople:peopleCopy singlePersonFallback:v5 groupFallback:v6];

  return v7;
}

+ (id)_titleStringForPeople:(id)people singlePersonFallback:(id)fallback groupFallback:(id)groupFallback
{
  v30 = *MEMORY[0x1E69E9840];
  peopleCopy = people;
  fallbackCopy = fallback;
  groupFallbackCopy = groupFallback;
  v11 = [peopleCopy count];
  v12 = [self titleStringForPeople:peopleCopy];
  v25 = 0u;
  v26 = 0u;
  v13 = [v12 length] > 0x16;
  v27 = 0u;
  v28 = 0u;
  v14 = peopleCopy;
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

        px_localizedName = [*(*(&v25 + 1) + 8 * i) px_localizedName];
        v20 = px_localizedName;
        if (!px_localizedName || ![px_localizedName length])
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

  if (v11 == 1 && (v21 = fallbackCopy, v13) || (v11 > 3 ? (v22 = 1) : (v22 = v13), v21 = groupFallbackCopy, v22 == 1))
  {
    v23 = v21;

    v12 = v23;
  }

  return v12;
}

+ (id)titleStringForPeople:(id)people
{
  v25 = *MEMORY[0x1E69E9840];
  peopleCopy = people;
  v4 = [peopleCopy count];
  v5 = &stru_1F1741150;
  if (v4)
  {
    v6 = v4;
    if (v4 == 1)
    {
      firstObject = [peopleCopy firstObject];
      px_localizedName = [firstObject px_localizedName];
      v9 = px_localizedName;
      if (px_localizedName)
      {
        v10 = px_localizedName;
      }

      else
      {
        v10 = &stru_1F1741150;
      }

      v5 = v10;
    }

    else
    {
      firstObject = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = peopleCopy;
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

            px_localizedName2 = [*(*(&v20 + 1) + 8 * i) px_localizedName];
            v17 = px_localizedName2;
            if (px_localizedName2 && [px_localizedName2 length])
            {
              [firstObject addObject:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }

      v18 = [firstObject count];
      if (v18)
      {
        if (v6 != v18)
        {
          PXLocalizedStringFromTable(@"PXSocialGroupTitleOthers", @"PhotosUICore");
          objc_claimAutoreleasedReturnValue();
          PXLocalizedStringWithValidatedFormat();
        }

        v5 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:firstObject];
      }

      else
      {
        v5 = &stru_1F1741150;
      }
    }
  }

  return v5;
}

+ (id)titleStringForPerson:(id)person
{
  v9 = *MEMORY[0x1E69E9840];
  personCopy = person;
  v3 = MEMORY[0x1E695DEC8];
  personCopy2 = person;
  v5 = [v3 arrayWithObjects:&personCopy count:1];
  v6 = [PXPeopleUtilities titleStringForPeople:v5, personCopy, v9];

  return v6;
}

+ (BOOL)_isPhotosProcess
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([bundleIdentifier isEqualToString:@"com.apple.Photos"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [bundleIdentifier isEqualToString:@"com.apple.mobileslideshow"];
  }

  return v4;
}

+ (void)_setDaysDictionary:(id)dictionary
{
  v3 = MEMORY[0x1E695E000];
  dictionaryCopy = dictionary;
  standardUserDefaults = [v3 standardUserDefaults];
  [standardUserDefaults setObject:dictionaryCopy forKey:@"PXPeopleCandidateWidgetKey"];
}

+ (id)_daysDictionary
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PXPeopleCandidateWidgetKey"];

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

+ (BOOL)_hasRecentlyHandledBootstrapOrSuggestionForPerson:(id)person
{
  personCopy = person;
  if (+[PXPeopleUtilities _isPhotosProcess])
  {
    _daysDictionary = [self _daysDictionary];
    v6 = [PXPeopleCandidateWidgetUtilities removeAllPreviousNotNowPersonsIfNeededForDaysDictionary:_daysDictionary];
    if (([_daysDictionary isEqualToDictionary:v6] & 1) == 0)
    {
      [PXPeopleUtilities _setDaysDictionary:v6];
    }

    v7 = ![PXPeopleCandidateWidgetUtilities shouldFetchCandidatesForPerson:personCopy forDaysDictionary:v6];
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

+ (void)temporarilySuppressBootstrapOrSuggestionForPerson:(id)person
{
  v11 = *MEMORY[0x1E69E9840];
  personCopy = person;
  if (+[PXPeopleUtilities _isPhotosProcess])
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = personCopy;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "People UI: temporarilySuppressBootstrapOrSuggestionForPerson: %@", &v9, 0xCu);
    }

    _daysDictionary = [self _daysDictionary];
    v7 = [PXPeopleCandidateWidgetUtilities insertPerson:personCopy forDaysDictionary:_daysDictionary];

    v8 = [PXPeopleCandidateWidgetUtilities removeAllPreviousNotNowPersonsIfNeededForDaysDictionary:v7];

    [PXPeopleUtilities _setDaysDictionary:v8];
  }
}

+ (BOOL)shouldShowBootstrapForPerson:(id)person context:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  personCopy = person;
  contextCopy = context;
  v7 = [PXPeopleUtilities _hasRecentlyHandledBootstrapOrSuggestionForPerson:personCopy];
  v8 = +[PXPeopleUISettings sharedInstance];
  alwaysShowBootstrap = [v8 alwaysShowBootstrap];

  if (personCopy)
  {
    v10 = !v7 | alwaysShowBootstrap;
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
      v17 = personCopy;
      v18 = 2112;
      v19 = contextCopy;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_INFO, "People UI: Should not show bootstrap; bootstrap has been handled recently for person: %@ context: %@", &v16, 0x16u);
    }

    if (personCopy)
    {
LABEL_6:
      if (!alwaysShowBootstrap)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if (personCopy)
  {
    goto LABEL_6;
  }

  v12 = PLUIGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = contextCopy;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_INFO, "People UI: Should not show bootstrap; person is nil for context: %@", &v16, 0xCu);
  }

  if (!alwaysShowBootstrap)
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
    v17 = personCopy;
    v18 = 2112;
    v19 = contextCopy;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_INFO, "People UI: Always show bootstrap flag is enabled for person: %@ context: %@", &v16, 0x16u);
  }

  if ((v10 & 1) == 0)
  {
LABEL_18:
    v14 = PLUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = personCopy;
      v18 = 2112;
      v19 = contextCopy;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_INFO, "People UI: Should not show bootstrap; the resolved BOOL is NO for person: %@ context: %@", &v16, 0x16u);
    }
  }

LABEL_21:

  return v10 & 1;
}

+ (void)_peopleFaceTilesForFaces:(id)faces asset:(id)asset options:(id)options completion:(id)completion
{
  v56 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  assetCopy = asset;
  optionsCopy = options;
  completionCopy = completion;
  v12 = assetCopy;
  v42 = completionCopy;
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v15 = facesCopy;
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
        personLocalIdentifier = [v20 personLocalIdentifier];
        if (personLocalIdentifier)
        {
          [v13 setObject:v21 forKey:personLocalIdentifier];
        }

        localIdentifier = [v20 localIdentifier];
        [v14 setObject:v21 forKey:localIdentifier];
      }

      v17 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v17);
  }

  v43 = v12;
  v41 = v15;

  v24 = MEMORY[0x1E6978980];
  allKeys = [v13 allKeys];
  v26 = [v24 fetchPersonsWithLocalIdentifiers:allKeys options:optionsCopy];

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
        localIdentifier2 = [v31 localIdentifier];
        v33 = [v13 objectForKeyedSubscript:localIdentifier2];

        v34 = [PXPeopleFaceTile alloc];
        face = [v33 face];
        asset = [v33 asset];
        v37 = [(PXPeopleFaceTile *)v34 initWithFace:face asset:asset person:v31];

        face2 = [(PXPeopleFaceTile *)v37 face];
        localIdentifier3 = [face2 localIdentifier];
        [v14 setObject:v37 forKey:localIdentifier3];
      }

      v28 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v28);
  }

  allValues = [v14 allValues];
  v42[2](v42, allValues, obj);
}

+ (CGRect)faceRectForPeopleFaceTile:(id)tile
{
  tileCopy = tile;
  asset = [tileCopy asset];
  face = [tileCopy face];

  [face px_cropRectWithCropFactor:1.5];
  [asset pixelWidth];
  [asset pixelHeight];
  PXRectDenormalize();
}

+ (id)personFaceTileByPersonIdForPersons:(id)persons
{
  personsCopy = persons;
  if ([personsCopy count])
  {
    v4 = [personsCopy _pl_indexBy:&__block_literal_global_491];
    v5 = [MEMORY[0x1E69787C8] fetchKeyFaceByPersonLocalIdentifierForPersons:personsCopy options:0];
    v6 = MEMORY[0x1E6978630];
    allValues = [v5 allValues];
    v8 = [v6 fetchAssetsGroupedByFaceUUIDForFaces:allValues];

    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(personsCopy, "count")}];
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

+ (id)generateNewFaceTileFromFaceTile:(id)tile
{
  v23[1] = *MEMORY[0x1E69E9840];
  tileCopy = tile;
  face = [tileCopy face];
  v5 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:face];
  px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v5 setIncludedDetectionTypes:px_defaultDetectionTypes];

  v7 = MEMORY[0x1E69787C8];
  localIdentifier = [face localIdentifier];
  v23[0] = localIdentifier;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v10 = [v7 fetchFacesWithLocalIdentifiers:v9 options:v5];
  firstObject = [v10 firstObject];

  personLocalIdentifier = [firstObject personLocalIdentifier];
  v13 = personLocalIdentifier;
  if (personLocalIdentifier)
  {
    v14 = MEMORY[0x1E6978980];
    v22 = personLocalIdentifier;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v16 = [v14 fetchPersonsWithLocalIdentifiers:v15 options:v5];
    firstObject2 = [v16 firstObject];
  }

  else
  {
    firstObject2 = 0;
  }

  v18 = [PXPeopleFaceTile alloc];
  asset = [tileCopy asset];

  v20 = [(PXPeopleFaceTile *)v18 initWithFace:firstObject asset:asset person:firstObject2];

  return v20;
}

+ (void)peopleFaceTilesForFaces:(id)faces asset:(id)asset options:(id)options completion:(id)completion
{
  facesCopy = faces;
  assetCopy = asset;
  optionsCopy = options;
  completionCopy = completion;
  v14 = [facesCopy count];
  if (assetCopy && v14)
  {
    if (!optionsCopy)
    {
      optionsCopy = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:assetCopy];
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__PXPeopleUtilities_peopleFaceTilesForFaces_asset_options_completion___block_invoke;
    v15[3] = &unk_1E773A5E8;
    v16 = completionCopy;
    [self _peopleFaceTilesForFaces:facesCopy asset:assetCopy options:optionsCopy completion:v15];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0]);
  }
}

+ (void)peopleFaceTilesForAsset:(id)asset options:(id)options completion:(id)completion
{
  assetCopy = asset;
  optionsCopy = options;
  completionCopy = completion;
  if (!optionsCopy)
  {
    optionsCopy = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:assetCopy];
    px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
    [optionsCopy setIncludedDetectionTypes:px_defaultDetectionTypes];

    [optionsCopy setIncludeTorsoAndFaceDetectionData:1];
  }

  v12 = [MEMORY[0x1E69787C8] fetchFacesInAsset:assetCopy options:optionsCopy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__PXPeopleUtilities_peopleFaceTilesForAsset_options_completion___block_invoke;
  v15[3] = &unk_1E773A5C0;
  v16 = v12;
  v17 = completionCopy;
  v13 = v12;
  v14 = completionCopy;
  [self _peopleFaceTilesForFaces:v13 asset:assetCopy options:optionsCopy completion:v15];
}

+ (id)lastManuallySortedPersonInSectionOfType:(int64_t)type photoLibrary:(id)library
{
  libraryCopy = library;
  v8 = libraryCopy;
  if (type < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleUtilities.m" lineNumber:495 description:{@"Invalid parameter not satisfying: %@", @"type >= PHPersonTypeOrdinary"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  else if (libraryCopy)
  {
    goto LABEL_3;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPeopleUtilities.m" lineNumber:496 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

LABEL_3:
  v9 = [self _peopleHomeFetchResultForPersonType:type photoLibrary:v8];
  fetchedObjects = [v9 fetchedObjects];
  v11 = [self comparatorByPeopleHomeSortingType:0];
  v12 = [fetchedObjects sortedArrayUsingComparator:v11];

  lastObject = [v12 lastObject];

  return lastObject;
}

+ (int64_t)manualOrderForInsertingAtEndOfSectionWithType:(int64_t)type photoLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleUtilities.m" lineNumber:484 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

    if ((type & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  if (type < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = [PXPeopleUtilities lastManuallySortedPersonInSectionOfType:type photoLibrary:libraryCopy];
  v9 = [v8 manualOrder] + 1;

LABEL_6:
  return v9;
}

+ (void)setSortOrder:(unint64_t)order toPhotoLibrary:(id)library
{
  libraryCopy = library;
  [PXPeopleSwiftUtilities setWithSortOrder:[PXPeopleSwiftUtilities sortOrderFor:order] to:libraryCopy];
}

+ (unint64_t)currentSortOrderFor:(id)for
{
  v3 = [PXPeopleSwiftUtilities currentSortOrderFor:for];

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

+ (id)comparatorByPeopleHomeSortingType:(unint64_t)type
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PXPeopleUtilities_comparatorByPeopleHomeSortingType___block_invoke;
  aBlock[3] = &__block_descriptor_48_e18___PHPerson_16__0_8l;
  aBlock[4] = a2;
  aBlock[5] = self;
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
  typeCopy = type;
  v9 = v8;
  v23 = v9;
  v10 = v6;
  v11 = _Block_copy(v20);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__PXPeopleUtilities_comparatorByPeopleHomeSortingType___block_invoke_6;
  v16[3] = &unk_1E773A598;
  v18 = v9;
  typeCopy2 = type;
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

+ (void)unlinkContactInfoForPerson:(id)person completion:(id)completion
{
  personCopy = person;
  completionCopy = completion;
  photoLibrary = [personCopy photoLibrary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PXPeopleUtilities_unlinkContactInfoForPerson_completion___block_invoke;
  v9[3] = &unk_1E774C648;
  v10 = personCopy;
  v8 = personCopy;
  [photoLibrary performChanges:v9 completionHandler:completionCopy];
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

+ (id)stringForAddingPerson:(id)person
{
  personCopy = person;
  px_localizedName = [personCopy px_localizedName];
  photoLibrary = [personCopy photoLibrary];
  px_peoplePetsHomeVisibility = [photoLibrary px_peoplePetsHomeVisibility];

  if ([personCopy px_isHuman])
  {
    v7 = px_peoplePetsHomeVisibility | 1;
  }

  else if ([personCopy px_isPet])
  {
    v7 = px_peoplePetsHomeVisibility | 2;
  }

  else
  {
    v7 = px_peoplePetsHomeVisibility;
  }

  if ([px_localizedName length])
  {
    PXLocalizedStringForPersonOrPetAndVisibility(personCopy, 0, @"PXPeopleAddToHomeTitleNamed");
  }

  else
  {
    PXLocalizedStringForPersonOrPetAndVisibility(personCopy, 0, @"PXPeopleAddToHomeTitleNoName");
  }

  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringForPeoplePetsHomeTitle(v7);
  objc_claimAutoreleasedReturnValue();
  PXStringWithValidatedFormat();
}

+ (id)stringForHidingPerson:(id)person
{
  v10[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  px_localizedName = [personCopy px_localizedName];
  if ([px_localizedName length])
  {
    v10[0] = personCopy;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

    PXLocalizedStringForPeople(v5, @"PXPeopleRemoveFromHomeTitleNamed");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  v9 = personCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];

  v7 = PXLocalizedStringForPeople(v6, @"PXPeopleRemoveFromHomeTitleNoName");

  return v7;
}

+ (id)favoritingStringForPerson:(id)person
{
  personCopy = person;
  if ([personCopy type] == 1)
  {
    v4 = @"PXPeopleUnfavoriteThisPerson";
  }

  else
  {
    v4 = @"PXPeopleFavoriteThisPerson";
  }

  v5 = PXLocalizedStringForPersonOrPetAndVisibility(personCopy, 0, v4);

  return v5;
}

+ (id)facesForPerson:(id)person inAssets:(id)assets
{
  v32 = *MEMORY[0x1E69E9840];
  personCopy = person;
  assetsCopy = assets;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fetchedObjectIDs = [assetsCopy fetchedObjectIDs];
  }

  else
  {
    fetchedObjectIDs = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = assetsCopy;
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

          objectID = [*(*(&v26 + 1) + 8 * i) objectID];
          if (objectID)
          {
            [fetchedObjectIDs addObject:objectID];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
    }
  }

  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in (%@)", @"assetForFace", fetchedObjectIDs, v26];
  v15 = MEMORY[0x1E696AE18];
  objectID2 = [personCopy objectID];
  v17 = [v15 predicateWithFormat:@"noindex:(%K) = %@", @"personForFace", objectID2];

  v18 = MEMORY[0x1E696AB28];
  v30[0] = v14;
  v30[1] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v20 = [v18 andPredicateWithSubpredicates:v19];

  photoLibrary = [personCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setInternalPredicate:v20];
  [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [librarySpecificFetchOptions setIncludedDetectionTypes:px_defaultDetectionTypes];

  v24 = [MEMORY[0x1E69787C8] fetchFacesWithOptions:librarySpecificFetchOptions];

  return v24;
}

+ (BOOL)isPersonHiddenFromPeopleHome:(id)home
{
  homeCopy = home;
  v4 = [homeCopy type] == -1 || objc_msgSend(homeCopy, "verifiedType") == 0;

  return v4;
}

+ (id)sortDescriptorsWithPersonAssetSortOrder:(int64_t)order
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"dateCreated" ascending:order == 1];
  v7[0] = v3;
  v4 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"uuid" ascending:1];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

+ (id)assetCollectionListFetchResultForPeople:(id)people assetCollectionFetchResults:(id *)results
{
  v40[1] = *MEMORY[0x1E69E9840];
  peopleCopy = people;
  firstObject = [peopleCopy firstObject];
  photoLibrary = [firstObject photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v40[0] = *MEMORY[0x1E6978C08];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v8];

  [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  v32 = librarySpecificFetchOptions;
  v33 = photoLibrary;
  v31 = firstObject;
  if ([peopleCopy count] == 1)
  {
    px_isHuman = [firstObject px_isHuman];
    v10 = @"PXPetVirtualCollection";
    if (px_isHuman)
    {
      v10 = @"PXPersonVirtualCollection";
    }

    v11 = v10;
    localIdentifier = [firstObject localIdentifier];
    v13 = [MEMORY[0x1E6978630] fetchAssetsForPersons:peopleCopy options:librarySpecificFetchOptions];
  }

  else
  {
    v14 = [PXPeopleUtilities identifiersForPeople:peopleCopy];
    v34 = 0;
    v15 = [photoLibrary assetIdentifiersForPersonIdentifiers:v14 error:&v34];
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
          localizedDescription = [v16 localizedDescription];
          *buf = 138412290;
          v39 = localizedDescription;
          _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "Error while getting assets for social group: %@", buf, 0xCu);
        }
      }

      v13 = 0;
    }

    v11 = @"PXSocialGroupVirtualCollection";
    v19 = @"PXSocialGroupVirtualCollection";
    uUID = [MEMORY[0x1E696AFB0] UUID];
    localIdentifier = [uUID UUIDString];

    photoLibrary = v33;
  }

  v21 = [(__CFString *)v11 stringByAppendingFormat:@"-%@", localIdentifier];
  if ([v13 count])
  {
    v22 = [PXPeopleUtilities titleStringForPeople:peopleCopy];
    v23 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v13 title:v22 identifier:v21];
    v24 = MEMORY[0x1E6978760];
    v37 = v23;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    v26 = [v24 transientCollectionListWithCollections:v25 title:v22];

    v27 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:photoLibrary orObject:0];
    v28 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v26 options:v27];
    if (results)
    {
      v35 = v23;
      v36 = v13;
      *results = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (id)assetCollectionListFetchResultForPerson:(id)person
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6978630];
  v15[0] = person;
  v4 = MEMORY[0x1E695DEC8];
  personCopy = person;
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

+ (id)identifiersForPeople:(id)people
{
  v17 = *MEMORY[0x1E69E9840];
  peopleCopy = people;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = peopleCopy;
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

        localIdentifier = [*(*(&v12 + 1) + 8 * i) localIdentifier];
        [v4 addObject:localIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (BOOL)mergePersons:(id)persons withPerson:(id)person
{
  v36 = *MEMORY[0x1E69E9840];
  personCopy = person;
  v6 = [MEMORY[0x1E695DFA8] setWithArray:persons];
  [v6 addObject:personCopy];
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
        userFeedbackProperties = [v13 userFeedbackProperties];
        userFeedback = [userFeedbackProperties userFeedback];

        if (v13)
        {
          v16 = userFeedback == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          v10 = [MEMORY[0x1E6978B00] mergeFeedbackType:objc_msgSend(userFeedback withOtherFeedbackType:{"type"), v10}];
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

  photoLibrary = [personCopy photoLibrary];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __45__PXPeopleUtilities_mergePersons_withPerson___block_invoke;
  v25[3] = &unk_1E7749FF8;
  v18 = v7;
  v26 = v18;
  v19 = personCopy;
  v27 = v19;
  v28 = v10;
  v24 = 0;
  v20 = [photoLibrary performChangesAndWait:v25 error:&v24];
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

+ (int64_t)countOfPeopleHomePeopleForPhotoLibrary:(id)library
{
  v3 = [PXPeopleUtilities _peopleHomeFetchOptionsForPhotoLibrary:library];
  [v3 setShouldPrefetchCount:1];
  v4 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v3];
  v5 = [v4 count];

  return v5;
}

+ (id)fetchPeopleForPeopleHomeWithPhotoLibrary:(id)library fetchLimit:(int64_t)limit
{
  v5 = [PXPeopleUtilities _peopleHomeFetchOptionsForPhotoLibrary:library];
  [v5 setFetchLimit:limit];
  v6 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v5];

  return v6;
}

+ (id)_peopleHomeFetchResultForPersonType:(int64_t)type photoLibrary:(id)library
{
  v5 = [PXPeopleUtilities _peopleHomeFetchOptionsForPhotoLibrary:library];
  v6 = [MEMORY[0x1E6978980] fetchPersonsWithType:type options:v5];

  return v6;
}

+ (id)_peopleHomeFetchOptionsForPhotoLibrary:(id)library
{
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  [librarySpecificFetchOptions setPersonContext:1];
  px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [librarySpecificFetchOptions setIncludedDetectionTypes:px_defaultDetectionTypes];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != -1", @"manualOrder"];
  [librarySpecificFetchOptions setPredicate:v5];

  return librarySpecificFetchOptions;
}

+ (id)personWithLocalIdentifier:(id)identifier propertySets:(id)sets photoLibrary:(id)library
{
  identifierCopy = identifier;
  setsCopy = sets;
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleUtilities.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions setFetchLimit:1];
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"localIdentifier = %@", identifierCopy];
  [librarySpecificFetchOptions setPredicate:identifierCopy];

  [librarySpecificFetchOptions setMinimumUnverifiedFaceCount:1];
  px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [librarySpecificFetchOptions setIncludedDetectionTypes:px_defaultDetectionTypes];

  if (setsCopy && [setsCopy count])
  {
    [librarySpecificFetchOptions setFetchPropertySets:setsCopy];
  }

  v15 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:librarySpecificFetchOptions];
  firstObject = [v15 firstObject];

  return firstObject;
}

+ (id)fetchPeopleWithUUIDs:(id)ds photoLibrary:(id)library
{
  dsCopy = ds;
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  [librarySpecificFetchOptions setPersonContext:1];
  px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [librarySpecificFetchOptions setIncludedDetectionTypes:px_defaultDetectionTypes];

  PXMap();
}

+ (id)personWithPersonUri:(id)uri photoLibrary:(id)library
{
  uriCopy = uri;
  libraryCopy = library;
  v9 = libraryCopy;
  if (uriCopy)
  {
    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleUtilities.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"personUri"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPeopleUtilities.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

LABEL_3:
  librarySpecificFetchOptions = [v9 librarySpecificFetchOptions];
  [librarySpecificFetchOptions setPersonContext:1];
  [librarySpecificFetchOptions setFetchLimit:1];
  uriCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"personUri = %@", uriCopy];
  [librarySpecificFetchOptions setPredicate:uriCopy];

  v12 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:librarySpecificFetchOptions];
  firstObject = [v12 firstObject];

  return firstObject;
}

+ (id)personWithPersonUri:(id)uri
{
  v4 = MEMORY[0x1E69789A8];
  uriCopy = uri;
  px_deprecated_appPhotoLibrary = [v4 px_deprecated_appPhotoLibrary];
  v7 = [self personWithPersonUri:uriCopy photoLibrary:px_deprecated_appPhotoLibrary];

  return v7;
}

@end