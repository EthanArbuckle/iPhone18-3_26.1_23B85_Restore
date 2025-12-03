@interface PXSharedLibraryAssistantContext
+ (id)_reviewContextIdentifierForMode:(int64_t)mode hasPreview:(BOOL)preview;
+ (id)replyAssistantContextWithSharedLibraryStatusProvider:(id)provider sharedLibrary:(id)library legacyDevicesFallbackMonitor:(id)monitor;
+ (id)setupAssistantContextWithSharedLibraryStatusProvider:(id)provider sharedLibrary:(id)library sourceLibraryInfo:(id)info legacyDevicesFallbackMonitor:(id)monitor;
- (BOOL)shouldConfirmCancellationOfAssistantForStepContextWithIdentifier:(id)identifier;
- (PXSharedLibraryAssistantContext)init;
- (id)_cameraStepContextWithIdentifier:(id)identifier;
- (id)_dateSelectionStepContextWithIdentifier:(id)identifier;
- (id)_firstVisibleStepContextIdentifierIgnoringPreview:(BOOL)preview;
- (id)_howToStepContextWithIdentifier:(id)identifier;
- (id)_initWithSharedLibraryStatusProvider:(id)provider sharedLibrary:(id)library sourceLibraryInfo:(id)info legacyDevicesFallbackMonitor:(id)monitor legacyDevicesRemoteController:(id)controller mode:(int64_t)mode;
- (id)_legacyDeviceStepContextIdentifierOrNextContextIdentifier:(id)identifier;
- (id)_legacyDevicesFallbackStepContextWithIdentifier:(id)identifier;
- (id)_nextContextIdentifierForSelectedPolicy:(int64_t)policy;
- (id)_nextStepContextIdentifierFromStepContextIdentifier:(id)identifier;
- (id)_participantsStepContextWithIdentifier:(id)identifier;
- (id)_peopleSelectionStepContextWithIdentifier:(id)identifier;
- (id)_replyIntroStepContextWithIdentifier:(id)identifier;
- (id)_reviewParticipantsSetupDirectStepContextWithIdentifier:(id)identifier;
- (id)_reviewParticipantsSetupPreviewStepContextWithIdentifier:(id)identifier;
- (id)_reviewParticipantsSetupStepContextWithIdentifier:(id)identifier;
- (id)_reviewReplyDirectStepContextWithIdentifier:(id)identifier;
- (id)_reviewReplyPreviewStepContextWithIdentifier:(id)identifier;
- (id)_reviewReplyStepContextWithIdentifier:(id)identifier;
- (id)_rulesStepContextWithIdentifier:(id)identifier;
- (id)_setupIntroStepContextWithIdentifier:(id)identifier;
- (id)_summaryStepContextWithIdentifier:(id)identifier;
- (id)initialStepContextIdentifiers;
- (id)nextStepContextIdentifierFromStepContextIdentifier:(id)identifier;
- (id)sharedLibraryStepContextForStepContextIdentifier:(id)identifier;
- (id)stepContextForStepContextIdentifier:(id)identifier;
- (void)_updateCombinedImage;
- (void)_updateParticipantsInFaceTile;
- (void)configureParticipantListForStepContext:(id)context isReviewStep:(BOOL)step;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setAssistantTraitCollection:(id)collection;
- (void)stepContextWithIdentifier:(id)identifier confirmCancellationWithAlertProperties:(id)properties;
@end

@implementation PXSharedLibraryAssistantContext

- (id)_reviewParticipantsSetupPreviewStepContextWithIdentifier:(id)identifier
{
  v3 = [(PXSharedLibraryAssistantContext *)self _reviewParticipantsSetupStepContextWithIdentifier:identifier];
  [v3 performChanges:&__block_literal_global_303];

  return v3;
}

void __102__PXSharedLibraryAssistantContext_Internal___reviewParticipantsSetupPreviewStepContextWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setFirstButtonType:4];
  [v2 setSecondButtonType:0];
}

- (id)_reviewParticipantsSetupDirectStepContextWithIdentifier:(id)identifier
{
  v3 = [(PXSharedLibraryAssistantContext *)self _reviewParticipantsSetupStepContextWithIdentifier:identifier];
  [v3 performChanges:&__block_literal_global_301];

  return v3;
}

- (id)_reviewParticipantsSetupStepContextWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewModel = [(PXSharedLibraryAssistantContext *)self viewModel];
  v6 = objc_alloc_init(PXSharedLibraryAssistantParticipantViewModel);
  [(PXSharedLibraryAssistantParticipantViewModel *)v6 performChanges:&__block_literal_global_292];
  v7 = [PXSharedLibraryAssistantReviewParticipantsViewController alloc];
  statusProvider = [(PXSharedLibraryAssistantContext *)self statusProvider];
  v9 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)v7 initWithViewModel:viewModel participantViewModel:v6 sharedLibraryStatusProvider:statusProvider];

  v10 = [[PXAssistantStepContext alloc] initWithIdentifier:identifierCopy viewController:v9];
  [(PXSharedLibraryAssistantContext *)self configureParticipantListForStepContext:v10 isReviewStep:1];

  return v10;
}

void __95__PXSharedLibraryAssistantContext_Internal___reviewParticipantsSetupStepContextWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ReviewRecipients_Title");
  [v2 setTitle:v3];

  v4 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ReviewRecipients_Title_Table_Header");
  [v2 setSubtitle:v4];
}

- (id)_legacyDevicesFallbackStepContextWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  legacyDevicesFallbackMonitor = [(PXSharedLibraryAssistantContext *)self legacyDevicesFallbackMonitor];
  devices = [legacyDevicesFallbackMonitor devices];

  v7 = [[PXSharedLibraryLegacyDevicesFallbackViewController alloc] initWithDevices:devices];
  v8 = [[PXAssistantStepContext alloc] initWithIdentifier:identifierCopy viewController:v7];

  [(PXAssistantStepContext *)v8 performChanges:&__block_literal_global_290];

  return v8;
}

- (id)_howToStepContextWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [PXSharedLibraryAssistantHowToViewController alloc];
  libraryFilterState = [(PXSharedLibraryAssistantContext *)self libraryFilterState];
  v7 = [(PXSharedLibraryAssistantHowToViewController *)v5 initWithLibraryFilterState:libraryFilterState];

  v8 = [[PXAssistantStepContext alloc] initWithIdentifier:identifierCopy viewController:v7];
  [(PXAssistantStepContext *)v8 performChanges:&__block_literal_global_287];

  return v8;
}

- (id)_cameraStepContextWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(PXSharedLibraryAssistantCameraViewController);
  v5 = [[PXAssistantStepContext alloc] initWithIdentifier:identifierCopy viewController:v4];

  [(PXAssistantStepContext *)v5 performChanges:&__block_literal_global_284];

  return v5;
}

void __78__PXSharedLibraryAssistantContext_Internal___cameraStepContextWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setFirstButtonType:3];
  [v2 setSecondButtonType:2];
}

- (id)_reviewReplyPreviewStepContextWithIdentifier:(id)identifier
{
  v3 = [(PXSharedLibraryAssistantContext *)self _reviewReplyStepContextWithIdentifier:identifier];
  [v3 performChanges:&__block_literal_global_281];

  return v3;
}

- (id)_reviewReplyDirectStepContextWithIdentifier:(id)identifier
{
  v3 = [(PXSharedLibraryAssistantContext *)self _reviewReplyStepContextWithIdentifier:identifier];
  [v3 performChanges:&__block_literal_global_279];

  return v3;
}

- (id)_reviewReplyStepContextWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewModel = [(PXSharedLibraryAssistantContext *)self viewModel];
  v6 = [PXSharedLibraryReplyAssistantReviewViewController alloc];
  statusProvider = [(PXSharedLibraryAssistantContext *)self statusProvider];
  v8 = [(PXSharedLibraryReplyAssistantReviewViewController *)v6 initWithViewModel:viewModel sharedLibraryStatusProvider:statusProvider];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__PXSharedLibraryAssistantContext_Internal___reviewReplyStepContextWithIdentifier___block_invoke;
  v11[3] = &unk_1E7749B98;
  v11[4] = self;
  [viewModel performChanges:v11];
  v9 = [[PXAssistantStepContext alloc] initWithIdentifier:identifierCopy viewController:v8];

  return v9;
}

void __83__PXSharedLibraryAssistantContext_Internal___reviewReplyStepContextWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sharedLibrary];
  [v3 setSharedLibrary:v4];
}

- (id)_summaryStepContextWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewModel = [(PXSharedLibraryAssistantContext *)self viewModel];
  v6 = [PXSharedLibraryAssistantSummaryViewController alloc];
  statusProvider = [(PXSharedLibraryAssistantContext *)self statusProvider];
  libraryFilterState = [(PXSharedLibraryAssistantContext *)self libraryFilterState];
  v9 = [(PXSharedLibraryAssistantSummaryViewController *)v6 initWithViewModel:viewModel sharedLibraryStatusProvider:statusProvider libraryFilterState:libraryFilterState];

  v10 = [[PXAssistantStepContext alloc] initWithIdentifier:identifierCopy viewController:v9];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__PXSharedLibraryAssistantContext_Internal___summaryStepContextWithIdentifier___block_invoke;
  v12[3] = &unk_1E7749B98;
  v12[4] = self;
  [viewModel performChanges:v12];
  [(PXAssistantStepContext *)v10 performChanges:&__block_literal_global_276_54861];

  return v10;
}

void __79__PXSharedLibraryAssistantContext_Internal___summaryStepContextWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sharedLibrary];
  [v3 setSharedLibrary:v4];
}

- (id)_peopleSelectionStepContextWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewModel = [(PXSharedLibraryAssistantContext *)self viewModel];
  v6 = [[PXSharedLibraryAssistantPeopleViewController alloc] initWithViewModel:viewModel];
  v7 = [[PXAssistantStepContext alloc] initWithIdentifier:identifierCopy viewController:v6];

  [(PXAssistantStepContext *)v7 performChanges:&__block_literal_global_273];

  return v7;
}

- (id)_dateSelectionStepContextWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewModel = [(PXSharedLibraryAssistantContext *)self viewModel];
  v6 = [[PXSharedLibraryAssistantDatePickerViewController alloc] initWithViewModel:viewModel];
  v7 = [[PXAssistantStepContext alloc] initWithIdentifier:identifierCopy viewController:v6];

  [(PXAssistantStepContext *)v7 performChanges:&__block_literal_global_270];

  return v7;
}

- (id)_rulesStepContextWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewModel = [(PXSharedLibraryAssistantContext *)self viewModel];
  v6 = [[PXSharedLibraryAssistantRulesViewController alloc] initWithViewModel:viewModel];
  v7 = [[PXAssistantStepContext alloc] initWithIdentifier:identifierCopy viewController:v6];

  [(PXAssistantStepContext *)v7 performChanges:&__block_literal_global_267];

  return v7;
}

- (id)_participantsStepContextWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(PXSharedLibraryAssistantParticipantViewModel);
  [(PXSharedLibraryAssistantParticipantViewModel *)v5 performChanges:&__block_literal_global_255];
  v6 = [PXSharedLibraryAssistantParticipantViewController alloc];
  viewModel = [(PXSharedLibraryAssistantContext *)self viewModel];
  v8 = [(PXSharedLibraryAssistantParticipantViewController *)v6 initWithAssistantViewModel:viewModel participantViewModel:v5];

  v9 = [[PXAssistantStepContext alloc] initWithIdentifier:identifierCopy viewController:v8];
  [(PXSharedLibraryAssistantContext *)self configureParticipantListForStepContext:v9 isReviewStep:0];
  [(PXAssistantStepContext *)v9 performChanges:&__block_literal_global_264];

  return v9;
}

void __84__PXSharedLibraryAssistantContext_Internal___participantsStepContextWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySetupAssistant_Participants_Title");
  [v2 setTitle:v3];

  v4 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySetupAssistant_Participants_Subtitle");
  [v2 setSubtitle:v4];
}

- (id)_replyIntroStepContextWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewModel = [(PXSharedLibraryAssistantContext *)self viewModel];
  v6 = [PXSharedLibraryReplyAssistantViewController alloc];
  legacyDevicesFallbackMonitor = [(PXSharedLibraryAssistantContext *)self legacyDevicesFallbackMonitor];
  v8 = [(PXSharedLibraryReplyAssistantViewController *)v6 initWithViewModel:viewModel legacyDevicesFallbackMonitor:legacyDevicesFallbackMonitor];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__PXSharedLibraryAssistantContext_Internal___replyIntroStepContextWithIdentifier___block_invoke;
  v11[3] = &unk_1E7749B98;
  v11[4] = self;
  [viewModel performChanges:v11];
  v9 = [[PXAssistantStepContext alloc] initWithIdentifier:identifierCopy viewController:v8];

  [(PXAssistantStepContext *)v9 performChanges:&__block_literal_global_251];

  return v9;
}

void __82__PXSharedLibraryAssistantContext_Internal___replyIntroStepContextWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sharedLibrary];
  [v3 setSharedLibrary:v4];
}

void __82__PXSharedLibraryAssistantContext_Internal___replyIntroStepContextWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setFirstButtonType:4];
  [v2 setSecondButtonType:2];
}

- (id)_setupIntroStepContextWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [PXSharedLibraryAssistantWelcomeViewController alloc];
  legacyDevicesFallbackMonitor = [(PXSharedLibraryAssistantContext *)self legacyDevicesFallbackMonitor];
  legacyDevicesRemoteController = [(PXSharedLibraryAssistantContext *)self legacyDevicesRemoteController];
  v8 = [(PXSharedLibraryAssistantWelcomeViewController *)v5 initWithLegacyDevicesFallbackMonitor:legacyDevicesFallbackMonitor legacyDevicesRemoteController:legacyDevicesRemoteController];

  v9 = [[PXAssistantStepContext alloc] initWithIdentifier:identifierCopy viewController:v8];
  [(PXAssistantStepContext *)v9 performChanges:&__block_literal_global_54869];

  return v9;
}

void __82__PXSharedLibraryAssistantContext_Internal___setupIntroStepContextWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setFirstButtonType:3];
  [v2 setSecondButtonType:2];
}

- (id)sharedLibraryStepContextForStepContextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext+Internal.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"stepContextIdentifier"}];
  }

  stepContextIdentifiersToContexts = [(PXSharedLibraryAssistantContext *)self stepContextIdentifiersToContexts];
  v7 = [stepContextIdentifiersToContexts objectForKeyedSubscript:identifierCopy];
  if (!v7)
  {
    if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierIntroSetup"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _setupIntroStepContextWithIdentifier:identifierCopy];
    }

    else if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierIntroReply"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _replyIntroStepContextWithIdentifier:identifierCopy];
    }

    else if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierParticipants"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _participantsStepContextWithIdentifier:identifierCopy];
    }

    else if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierRules"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _rulesStepContextWithIdentifier:identifierCopy];
    }

    else if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierDateSelection"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _dateSelectionStepContextWithIdentifier:identifierCopy];
    }

    else if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierPeopleSelection"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _peopleSelectionStepContextWithIdentifier:identifierCopy];
    }

    else if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierPreview"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _summaryStepContextWithIdentifier:identifierCopy];
    }

    else if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierReviewReplyDirect"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _reviewReplyDirectStepContextWithIdentifier:identifierCopy];
    }

    else if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierReviewReplyPreview"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _reviewReplyPreviewStepContextWithIdentifier:identifierCopy];
    }

    else if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierFutureRules"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _cameraStepContextWithIdentifier:identifierCopy];
    }

    else if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierReviewParticipantsSetupDirect"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _reviewParticipantsSetupDirectStepContextWithIdentifier:identifierCopy];
    }

    else if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierReviewParticipantsSetupPreview"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _reviewParticipantsSetupPreviewStepContextWithIdentifier:identifierCopy];
    }

    else if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierHowTo"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _howToStepContextWithIdentifier:identifierCopy];
    }

    else
    {
      if (![identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierLegacyDevicesFallback"])
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXSharedLibraryAssistantContext(Internal) sharedLibraryStepContextForStepContextIdentifier:]"];
        [currentHandler2 handleFailureInFunction:v13 file:@"PXSharedLibraryAssistantContext+Internal.m" lineNumber:101 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v8 = [(PXSharedLibraryAssistantContext *)self _legacyDevicesFallbackStepContextWithIdentifier:identifierCopy];
    }

    v7 = v8;
    if (!v8)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext+Internal.m" lineNumber:104 description:{@"Didn't build step context for identifier %@", identifierCopy}];
    }

    [stepContextIdentifiersToContexts setObject:v7 forKeyedSubscript:identifierCopy];
  }

  return v7;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSharedLibraryFaceTileImageProviderObservationContext == context)
  {
    if ((changeCopy & 1) == 0)
    {
      goto LABEL_12;
    }

    v12 = observableCopy;
    [(PXSharedLibraryAssistantContext *)self _updateCombinedImage];
    goto LABEL_11;
  }

  if (PXSharedLibraryAssistantViewModelObservationContext_96931 != context && PXSharedLibraryAssistantReviewViewModelObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:455 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 0x20) != 0)
  {
    v12 = observableCopy;
    [(PXSharedLibraryAssistantContext *)self _updateParticipantsInFaceTile];
LABEL_11:
    observableCopy = v12;
  }

LABEL_12:
}

- (void)_updateParticipantsInFaceTile
{
  providerModel = [(PXSharedLibraryFaceTileImageProvider *)self->_faceTileImageProvider providerModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__PXSharedLibraryAssistantContext__updateParticipantsInFaceTile__block_invoke;
  v4[3] = &unk_1E7737FD8;
  v4[4] = self;
  [providerModel performChanges:v4];
}

void __64__PXSharedLibraryAssistantContext__updateParticipantsInFaceTile__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setIncludeMeContact:0];
  v5 = [*(*(a1 + 32) + 56) participantDataSource];
  v4 = [v5 participantImageCombinerItems];
  [v3 setFaceTileCombinerItems:v4];
}

- (void)_updateCombinedImage
{
  viewModel = self->_viewModel;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__PXSharedLibraryAssistantContext__updateCombinedImage__block_invoke;
  v3[3] = &unk_1E7749B98;
  v3[4] = self;
  [(PXSharedLibraryAssistantViewModel *)viewModel performChanges:v3];
}

void __55__PXSharedLibraryAssistantContext__updateCombinedImage__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = a2;
  v4 = [v2 combinedImage];
  [v3 setParticipantsImage:v4];
}

- (void)stepContextWithIdentifier:(id)identifier confirmCancellationWithAlertProperties:(id)properties
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:395 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (propertiesCopy)
    {
      goto LABEL_3;
    }

LABEL_17:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:396 description:{@"Invalid parameter not satisfying: %@", @"alertProperties"}];

    goto LABEL_3;
  }

  if (!propertiesCopy)
  {
    goto LABEL_17;
  }

LABEL_3:
  sharedLibrary = [(PXSharedLibraryAssistantViewModel *)self->_viewModel sharedLibrary];
  isInPreview = [sharedLibrary isInPreview];

  if (-[PXSharedLibraryAssistantViewModel mode](self->_viewModel, "mode") == 1 && (-[PXSharedLibraryAssistantViewModel sharedLibrary](self->_viewModel, "sharedLibrary"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isPublished], v10, (v11 & 1) != 0))
  {
    v12 = 0;
    v13 = 0;
    v14 = @"PXSharedLibrarySetupAssistant_CancelAfterPublish_ContinueButton";
    v15 = @"PXSharedLibrarySetupAssistant_CancelAfterPublish_ExitButton";
    v16 = @"PXSharedLibrarySetupAssistant_CancelAfterPublish_Description_iOS";
  }

  else
  {
    if (isInPreview)
    {
      v14 = @"PXSharedLibrarySetupAssistant_CancelAfterPreview_ContinueButton";
    }

    else
    {
      v14 = 0;
    }

    v13 = isInPreview ^ 1;
    v15 = @"PXSharedLibrarySetupAssistant_Cancel_ExitButton";
    v16 = @"PXSharedLibrarySetupAssistant_Cancel_Description_iOS";
    v12 = 1;
  }

  v17 = PXLocalizedSharedLibraryString(v16);
  v18 = PXLocalizedSharedLibraryString(v15);
  if (v13)
  {
    v19 = 0;
  }

  else
  {
    v19 = PXLocalizedSharedLibraryString(v14);
  }

  v20 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySetupAssistant_Cancel_CancelButton");
  propertiesCopy[2](propertiesCopy, &stru_1F1741150, v17, v18, v20, v19, v12);
}

- (BOOL)shouldConfirmCancellationOfAssistantForStepContextWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierFutureRules"])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierHowTo"] ^ 1;
  }

  hasChangedUserInputValues = [(PXSharedLibraryAssistantViewModel *)self->_viewModel hasChangedUserInputValues];

  return v6 & hasChangedUserInputValues;
}

- (void)setAssistantTraitCollection:(id)collection
{
  collectionCopy = collection;
  [collectionCopy displayScale];
  v6 = v5;
  isRTL = [collectionCopy isRTL];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  providerModel = [(PXSharedLibraryFaceTileImageProvider *)self->_faceTileImageProvider providerModel];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__PXSharedLibraryAssistantContext_setAssistantTraitCollection___block_invoke;
  v11[3] = &unk_1E7737FB0;
  v14 = v6;
  v15 = isRTL;
  v10 = clearColor;
  v12 = v10;
  v13 = v10;
  [providerModel performChanges:v11];
}

void __63__PXSharedLibraryAssistantContext_setAssistantTraitCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 setDisplayScale:v3];
  [v4 setIsRTL:*(a1 + 56)];
  [v4 setBackgroundColor:*(a1 + 32)];
  [v4 setBorderColor:*(a1 + 40)];
}

- (id)stepContextForStepContextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:350 description:{@"Invalid parameter not satisfying: %@", @"stepContextIdentifier"}];
  }

  v6 = [(PXSharedLibraryAssistantContext *)self sharedLibraryStepContextForStepContextIdentifier:identifierCopy];

  return v6;
}

- (id)_legacyDeviceStepContextIdentifierOrNextContextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  legacyDevicesFallbackMonitor = self->_legacyDevicesFallbackMonitor;
  if (legacyDevicesFallbackMonitor && [(PXSharedLibraryLegacyDevicesFallbackMonitor *)legacyDevicesFallbackMonitor state]!= 1)
  {
    legacyDevicesRemoteController = self->_legacyDevicesRemoteController;
    if (legacyDevicesRemoteController)
    {
      v6 = [(PXSharedLibraryLegacyDevicesRemoteController *)legacyDevicesRemoteController state]== 3;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  devices = [(PXSharedLibraryLegacyDevicesFallbackMonitor *)self->_legacyDevicesFallbackMonitor devices];
  v9 = [devices count];

  if (v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = identifierCopy;
  }

  else
  {
    v11 = @"PXSharedLibraryStepContextIdentifierLegacyDevicesFallback";
  }

  v12 = v11;

  return v11;
}

- (id)_nextContextIdentifierForSelectedPolicy:(int64_t)policy
{
  autoSharePolicy = [(PXSharedLibraryAssistantViewModel *)self->_viewModel autoSharePolicy];
  if (autoSharePolicy >= 2)
  {
    if (autoSharePolicy != 2)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if ([(PXSharedLibraryAssistantViewModel *)self->_viewModel shouldShowPeopleState]== 1)
    {
      v9 = @"PXSharedLibraryStepContextIdentifierPeopleSelection";
    }

    else
    {
      v9 = @"PXSharedLibraryStepContextIdentifierDateSelection";
    }

    goto LABEL_16;
  }

  viewModel = self->_viewModel;
  if (!viewModel)
  {
    v7 = 0;
    v8 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  [(PXSharedLibraryAssistantViewModel *)viewModel shareCounts];
  v6 = v12;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v13;
    v7 = v14;
LABEL_10:
    if (v8 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0x7FFFFFFFFFFFFFFFLL && !(v6 + v8 + v7))
    {
      v9 = [objc_opt_class() _reviewContextIdentifierForMode:-[PXSharedLibraryAssistantViewModel mode](self->_viewModel hasPreview:{"mode"), -[PXSharedLibrary isInPreview](self->_sharedLibrary, "isInPreview")}];
      goto LABEL_17;
    }
  }

  v9 = @"PXSharedLibraryStepContextIdentifierPreview";
LABEL_16:
  v10 = v9;
LABEL_17:

  return v9;
}

- (id)_nextStepContextIdentifierFromStepContextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"stepContextIdentifier"}];
  }

  if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierIntroSetup"])
  {
    v6 = @"PXSharedLibraryStepContextIdentifierParticipants";
LABEL_7:
    v7 = [(PXSharedLibraryAssistantContext *)self _legacyDeviceStepContextIdentifierOrNextContextIdentifier:v6];
LABEL_8:
    v8 = v7;
    goto LABEL_9;
  }

  if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierIntroReply"])
  {
    v6 = @"PXSharedLibraryStepContextIdentifierRules";
    goto LABEL_7;
  }

  if (![identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierParticipants"])
  {
    if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierRules"])
    {
      v7 = [(PXSharedLibraryAssistantContext *)self _nextContextIdentifierForSelectedPolicy:[(PXSharedLibraryAssistantViewModel *)self->_viewModel autoSharePolicy]];
      goto LABEL_8;
    }

    if (![identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierDateSelection"])
    {
      if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierPeopleSelection"])
      {
        v8 = @"PXSharedLibraryStepContextIdentifierDateSelection";
        goto LABEL_14;
      }

      if (![identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierPreview"])
      {
        if (([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierReviewParticipantsSetupDirect"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"PXSharedLibraryStepContextIdentifierReviewParticipantsSetupPreview") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"PXSharedLibraryStepContextIdentifierReviewReplyDirect") & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"PXSharedLibraryStepContextIdentifierReviewReplyPreview"))
        {
          v8 = @"PXSharedLibraryStepContextIdentifierFutureRules";
          goto LABEL_14;
        }

        if ([identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierFutureRules"])
        {
          v8 = @"PXSharedLibraryStepContextIdentifierHowTo";
          goto LABEL_14;
        }

        if (![identifierCopy isEqualToString:@"PXSharedLibraryStepContextIdentifierLegacyDevicesFallback"])
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:280 description:@"Code which should be unreachable has been reached"];

          abort();
        }

        if ([(PXSharedLibraryAssistantViewModel *)self->_viewModel mode]== 1)
        {
          v8 = @"PXSharedLibraryStepContextIdentifierParticipants";
          goto LABEL_14;
        }

        goto LABEL_13;
      }

LABEL_37:
      v7 = [objc_opt_class() _reviewContextIdentifierForMode:-[PXSharedLibraryAssistantViewModel mode](self->_viewModel hasPreview:{"mode"), -[PXSharedLibrary isInPreview](self->_sharedLibrary, "isInPreview")}];
      goto LABEL_8;
    }

    viewModel = [(PXSharedLibraryAssistantContext *)self viewModel];
    v12 = viewModel;
    if (viewModel)
    {
      [viewModel shareCounts];
      v13 = v19;
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = 0;
        goto LABEL_34;
      }

      v16 = v20;
      v15 = v21;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v13 = 0;
    }

    v14 = 0;
    if (v16 != 0x7FFFFFFFFFFFFFFFLL && v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v13 + v16 + v15 == 0;
    }

LABEL_34:

    if ([(PXSharedLibraryAssistantViewModel *)self->_viewModel autoSharePolicy]&& !v14)
    {
      v8 = @"PXSharedLibraryStepContextIdentifierPreview";
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_13:
  v8 = @"PXSharedLibraryStepContextIdentifierRules";
LABEL_14:
  v10 = v8;
LABEL_9:

  return v8;
}

- (id)_firstVisibleStepContextIdentifierIgnoringPreview:(BOOL)preview
{
  if (preview)
  {
    sharedLibrary = 0;
  }

  else
  {
    sharedLibrary = self->_sharedLibrary;
  }

  v6 = sharedLibrary;
  mode = [(PXSharedLibraryAssistantViewModel *)self->_viewModel mode];
  switch(mode)
  {
    case 1:
      v10 = @"PXSharedLibraryStepContextIdentifierReviewParticipantsSetupPreview";
      if (!v6)
      {
        v10 = @"PXSharedLibraryStepContextIdentifierIntroSetup";
      }

      goto LABEL_13;
    case 2:
      isInPreview = [(PXSharedLibrary *)v6 isInPreview];
      v10 = @"PXSharedLibraryStepContextIdentifierIntroReply";
      if (isInPreview)
      {
        v10 = @"PXSharedLibraryStepContextIdentifierReviewReplyPreview";
      }

LABEL_13:
      v8 = v10;
      goto LABEL_14;
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:216 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (id)nextStepContextIdentifierFromStepContextIdentifier:(id)identifier
{
  if (identifier)
  {
    [(PXSharedLibraryAssistantContext *)self _nextStepContextIdentifierFromStepContextIdentifier:?];
  }

  else
  {
    [(PXSharedLibraryAssistantContext *)self _firstVisibleStepContextIdentifierIgnoringPreview:?];
  }
  v3 = ;

  return v3;
}

- (id)initialStepContextIdentifiers
{
  v4 = [(PXSharedLibraryAssistantContext *)self _firstVisibleStepContextIdentifierIgnoringPreview:0];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = 0;
  do
  {
    if (v6)
    {
      v7 = [(PXSharedLibraryAssistantContext *)self _nextStepContextIdentifierFromStepContextIdentifier:v6];

      v6 = v7;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = [(PXSharedLibraryAssistantContext *)self _firstVisibleStepContextIdentifierIgnoringPreview:1];
      if (v6)
      {
        goto LABEL_4;
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"nextIdentifier"}];

LABEL_4:
    v8 = [v6 isEqualToString:v4];
    [v5 addObject:v6];
  }

  while (!v8);

  return v5;
}

- (void)configureParticipantListForStepContext:(id)context isReviewStep:(BOOL)step
{
  stepCopy = step;
  [(PXSharedLibraryAssistantContext *)self _updateParticipantsInFaceTile];
  viewModel = self->_viewModel;
  v7 = &PXSharedLibraryAssistantReviewViewModelObservationContext;
  if (!stepCopy)
  {
    v7 = &PXSharedLibraryAssistantViewModelObservationContext_96931;
  }

  v8 = *v7;

  [(PXSharedLibraryAssistantViewModel *)viewModel registerChangeObserver:self context:v8];
}

- (id)_initWithSharedLibraryStatusProvider:(id)provider sharedLibrary:(id)library sourceLibraryInfo:(id)info legacyDevicesFallbackMonitor:(id)monitor legacyDevicesRemoteController:(id)controller mode:(int64_t)mode
{
  providerCopy = provider;
  libraryCopy = library;
  infoCopy = info;
  monitorCopy = monitor;
  controllerCopy = controller;
  v59.receiver = self;
  v59.super_class = PXSharedLibraryAssistantContext;
  v19 = [(PXSharedLibraryAssistantContext *)&v59 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_statusProvider, provider);
    v21 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v20->_statusProvider];
    libraryFilterState = v20->_libraryFilterState;
    v20->_libraryFilterState = v21;

    objc_storeStrong(&v20->_sharedLibrary, library);
    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    stepContextIdentifiersToContexts = v20->_stepContextIdentifiersToContexts;
    v20->_stepContextIdentifiersToContexts = v23;

    objc_storeStrong(&v20->_legacyDevicesFallbackMonitor, monitor);
    objc_storeStrong(&v20->_legacyDevicesRemoteController, controller);
    if (libraryCopy)
    {
      PXSharedLibraryUIParticipantsForSharedLibrary(libraryCopy, 1u);
    }

    v42 = MEMORY[0x1E695E0F0];
    v40 = [PXSharedLibraryParticipantDataSourceManager aggregatedDataSourceWithParticipants:MEMORY[0x1E695E0F0]];
    v25 = objc_alloc_init(PXSharedLibraryFaceTileImageProvider);
    faceTileImageProvider = v20->_faceTileImageProvider;
    v20->_faceTileImageProvider = v25;

    providerModel = [(PXSharedLibraryFaceTileImageProvider *)v20->_faceTileImageProvider providerModel];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __168__PXSharedLibraryAssistantContext__initWithSharedLibraryStatusProvider_sharedLibrary_sourceLibraryInfo_legacyDevicesFallbackMonitor_legacyDevicesRemoteController_mode___block_invoke;
    v56[3] = &unk_1E7737EF0;
    modeCopy = mode;
    v57 = 0;
    v41 = providerModel;
    [providerModel performChanges:v56];
    [(PXSharedLibraryFaceTileImageProvider *)v20->_faceTileImageProvider registerChangeObserver:v20 context:PXSharedLibraryFaceTileImageProviderObservationContext];
    v43 = monitorCopy;
    v44 = providerCopy;
    v28 = MEMORY[0x1E695E0F0];
    v29 = MEMORY[0x1E695E0F0];
    createDataSourceManager = [infoCopy createDataSourceManager];
    if (createDataSourceManager)
    {
      v31 = [[off_1E77214A8 alloc] initWithAssetsDataSourceManager:createDataSourceManager];
      [v31 prepareCountsIfNeeded];
    }

    v32 = objc_alloc_init(PXSharedLibraryAssistantViewModel);
    viewModel = v20->_viewModel;
    v20->_viewModel = v32;

    v34 = v20->_viewModel;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __168__PXSharedLibraryAssistantContext__initWithSharedLibraryStatusProvider_sharedLibrary_sourceLibraryInfo_legacyDevicesFallbackMonitor_legacyDevicesRemoteController_mode___block_invoke_3;
    v46[3] = &unk_1E7737F18;
    modeCopy2 = mode;
    v54 = 0;
    v47 = 0;
    v48 = v28;
    v49 = v20;
    v50 = v40;
    v55 = 0;
    v51 = infoCopy;
    v52 = v29;
    v35 = v29;
    v36 = v40;
    v37 = v28;
    v38 = 0;
    [(PXSharedLibraryAssistantViewModel *)v34 performInitialChanges:v46];

    monitorCopy = v43;
    providerCopy = v44;
  }

  return v20;
}

void __168__PXSharedLibraryAssistantContext__initWithSharedLibraryStatusProvider_sharedLibrary_sourceLibraryInfo_legacyDevicesFallbackMonitor_legacyDevicesRemoteController_mode___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setIncludeMeContact:0];
  [v4 setImageDiameter:80.0];
  if (*(a1 + 40) == 2)
  {
    v3 = PXSharedLibraryRecipientsForSharedLibrary(*(a1 + 32));
    [v4 setFaceTileCombinerItems:v3];
  }
}

void __168__PXSharedLibraryAssistantContext__initWithSharedLibraryStatusProvider_sharedLibrary_sourceLibraryInfo_legacyDevicesFallbackMonitor_legacyDevicesRemoteController_mode___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[10];
  v5 = a2;
  [v5 setMode:v3];
  [v5 setAutoSharePolicy:a1[11]];
  [v5 setStartDate:a1[4]];
  [v5 setPersonUUIDs:a1[5]];
  v4 = [*(a1[6] + 8) combinedImage];
  [v5 setParticipantsImage:v4];

  [v5 setParticipantDataSource:a1[7]];
  [v5 setSourceLibraryInfo:a1[8]];
  [v5 setSharedLibrary:*(a1[6] + 48)];
  [v5 setSelectedRuleType:a1[12]];
  [v5 setAssetLocalIdentifiers:a1[9]];
}

- (PXSharedLibraryAssistantContext)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:48 description:{@"%s is not available as initializer", "-[PXSharedLibraryAssistantContext init]"}];

  abort();
}

+ (id)_reviewContextIdentifierForMode:(int64_t)mode hasPreview:(BOOL)preview
{
  switch(mode)
  {
    case 1:
      v5 = PXSharedLibraryStepContextIdentifierReviewParticipantsSetupDirect;
      v6 = PXSharedLibraryStepContextIdentifierReviewParticipantsSetupPreview;
      break;
    case 2:
      v5 = PXSharedLibraryStepContextIdentifierReviewReplyDirect;
      v6 = PXSharedLibraryStepContextIdentifierReviewReplyPreview;
      break;
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:289 description:@"Code which should be unreachable has been reached"];

      abort();
    default:
      v4 = 0;
      goto LABEL_10;
  }

  if (preview)
  {
    v5 = v6;
  }

  v4 = *v5;
LABEL_10:

  return v4;
}

+ (id)replyAssistantContextWithSharedLibraryStatusProvider:(id)provider sharedLibrary:(id)library legacyDevicesFallbackMonitor:(id)monitor
{
  providerCopy = provider;
  libraryCopy = library;
  monitorCopy = monitor;
  if (providerCopy)
  {
    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"sharedLibraryStatusProvider"}];

    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"sharedLibrary"}];

LABEL_3:
  isInPreview = [libraryCopy isInPreview];
  if (!monitorCopy)
  {
    monitorCopy = [PXSharedLibraryLegacyDevicesFallbackMonitor legacyDevicesFallbackMonitorIfEnabledWithSharedLibraryOrPreviewPresent:isInPreview];
  }

  v13 = [PXSharedLibraryLegacyDevicesRemoteController legacyDevicesRemoteControllerIfEnabledWithSharedLibraryOrPreviewPresent:isInPreview];
  sourceLibraryInfo = [libraryCopy sourceLibraryInfo];
  v15 = [[PXSharedLibraryAssistantContext alloc] _initWithSharedLibraryStatusProvider:providerCopy sharedLibrary:libraryCopy sourceLibraryInfo:sourceLibraryInfo legacyDevicesFallbackMonitor:monitorCopy legacyDevicesRemoteController:v13 mode:2];

  return v15;
}

+ (id)setupAssistantContextWithSharedLibraryStatusProvider:(id)provider sharedLibrary:(id)library sourceLibraryInfo:(id)info legacyDevicesFallbackMonitor:(id)monitor
{
  providerCopy = provider;
  libraryCopy = library;
  infoCopy = info;
  monitorCopy = monitor;
  v15 = monitorCopy;
  if (providerCopy)
  {
    if (monitorCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"sharedLibraryStatusProvider"}];

  if (!v15)
  {
LABEL_3:
    v15 = [PXSharedLibraryLegacyDevicesFallbackMonitor legacyDevicesFallbackMonitorIfEnabledWithSharedLibraryOrPreviewPresent:libraryCopy != 0];
  }

LABEL_4:
  v16 = [PXSharedLibraryLegacyDevicesRemoteController legacyDevicesRemoteControllerIfEnabledWithSharedLibraryOrPreviewPresent:libraryCopy != 0];
  v17 = [[PXSharedLibraryAssistantContext alloc] _initWithSharedLibraryStatusProvider:providerCopy sharedLibrary:libraryCopy sourceLibraryInfo:infoCopy legacyDevicesFallbackMonitor:v15 legacyDevicesRemoteController:v16 mode:1];

  return v17;
}

@end