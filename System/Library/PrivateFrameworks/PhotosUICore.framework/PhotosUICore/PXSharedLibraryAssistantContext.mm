@interface PXSharedLibraryAssistantContext
+ (id)_reviewContextIdentifierForMode:(int64_t)a3 hasPreview:(BOOL)a4;
+ (id)replyAssistantContextWithSharedLibraryStatusProvider:(id)a3 sharedLibrary:(id)a4 legacyDevicesFallbackMonitor:(id)a5;
+ (id)setupAssistantContextWithSharedLibraryStatusProvider:(id)a3 sharedLibrary:(id)a4 sourceLibraryInfo:(id)a5 legacyDevicesFallbackMonitor:(id)a6;
- (BOOL)shouldConfirmCancellationOfAssistantForStepContextWithIdentifier:(id)a3;
- (PXSharedLibraryAssistantContext)init;
- (id)_cameraStepContextWithIdentifier:(id)a3;
- (id)_dateSelectionStepContextWithIdentifier:(id)a3;
- (id)_firstVisibleStepContextIdentifierIgnoringPreview:(BOOL)a3;
- (id)_howToStepContextWithIdentifier:(id)a3;
- (id)_initWithSharedLibraryStatusProvider:(id)a3 sharedLibrary:(id)a4 sourceLibraryInfo:(id)a5 legacyDevicesFallbackMonitor:(id)a6 legacyDevicesRemoteController:(id)a7 mode:(int64_t)a8;
- (id)_legacyDeviceStepContextIdentifierOrNextContextIdentifier:(id)a3;
- (id)_legacyDevicesFallbackStepContextWithIdentifier:(id)a3;
- (id)_nextContextIdentifierForSelectedPolicy:(int64_t)a3;
- (id)_nextStepContextIdentifierFromStepContextIdentifier:(id)a3;
- (id)_participantsStepContextWithIdentifier:(id)a3;
- (id)_peopleSelectionStepContextWithIdentifier:(id)a3;
- (id)_replyIntroStepContextWithIdentifier:(id)a3;
- (id)_reviewParticipantsSetupDirectStepContextWithIdentifier:(id)a3;
- (id)_reviewParticipantsSetupPreviewStepContextWithIdentifier:(id)a3;
- (id)_reviewParticipantsSetupStepContextWithIdentifier:(id)a3;
- (id)_reviewReplyDirectStepContextWithIdentifier:(id)a3;
- (id)_reviewReplyPreviewStepContextWithIdentifier:(id)a3;
- (id)_reviewReplyStepContextWithIdentifier:(id)a3;
- (id)_rulesStepContextWithIdentifier:(id)a3;
- (id)_setupIntroStepContextWithIdentifier:(id)a3;
- (id)_summaryStepContextWithIdentifier:(id)a3;
- (id)initialStepContextIdentifiers;
- (id)nextStepContextIdentifierFromStepContextIdentifier:(id)a3;
- (id)sharedLibraryStepContextForStepContextIdentifier:(id)a3;
- (id)stepContextForStepContextIdentifier:(id)a3;
- (void)_updateCombinedImage;
- (void)_updateParticipantsInFaceTile;
- (void)configureParticipantListForStepContext:(id)a3 isReviewStep:(BOOL)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setAssistantTraitCollection:(id)a3;
- (void)stepContextWithIdentifier:(id)a3 confirmCancellationWithAlertProperties:(id)a4;
@end

@implementation PXSharedLibraryAssistantContext

- (id)_reviewParticipantsSetupPreviewStepContextWithIdentifier:(id)a3
{
  v3 = [(PXSharedLibraryAssistantContext *)self _reviewParticipantsSetupStepContextWithIdentifier:a3];
  [v3 performChanges:&__block_literal_global_303];

  return v3;
}

void __102__PXSharedLibraryAssistantContext_Internal___reviewParticipantsSetupPreviewStepContextWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setFirstButtonType:4];
  [v2 setSecondButtonType:0];
}

- (id)_reviewParticipantsSetupDirectStepContextWithIdentifier:(id)a3
{
  v3 = [(PXSharedLibraryAssistantContext *)self _reviewParticipantsSetupStepContextWithIdentifier:a3];
  [v3 performChanges:&__block_literal_global_301];

  return v3;
}

- (id)_reviewParticipantsSetupStepContextWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PXSharedLibraryAssistantContext *)self viewModel];
  v6 = objc_alloc_init(PXSharedLibraryAssistantParticipantViewModel);
  [(PXSharedLibraryAssistantParticipantViewModel *)v6 performChanges:&__block_literal_global_292];
  v7 = [PXSharedLibraryAssistantReviewParticipantsViewController alloc];
  v8 = [(PXSharedLibraryAssistantContext *)self statusProvider];
  v9 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)v7 initWithViewModel:v5 participantViewModel:v6 sharedLibraryStatusProvider:v8];

  v10 = [[PXAssistantStepContext alloc] initWithIdentifier:v4 viewController:v9];
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

- (id)_legacyDevicesFallbackStepContextWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PXSharedLibraryAssistantContext *)self legacyDevicesFallbackMonitor];
  v6 = [v5 devices];

  v7 = [[PXSharedLibraryLegacyDevicesFallbackViewController alloc] initWithDevices:v6];
  v8 = [[PXAssistantStepContext alloc] initWithIdentifier:v4 viewController:v7];

  [(PXAssistantStepContext *)v8 performChanges:&__block_literal_global_290];

  return v8;
}

- (id)_howToStepContextWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [PXSharedLibraryAssistantHowToViewController alloc];
  v6 = [(PXSharedLibraryAssistantContext *)self libraryFilterState];
  v7 = [(PXSharedLibraryAssistantHowToViewController *)v5 initWithLibraryFilterState:v6];

  v8 = [[PXAssistantStepContext alloc] initWithIdentifier:v4 viewController:v7];
  [(PXAssistantStepContext *)v8 performChanges:&__block_literal_global_287];

  return v8;
}

- (id)_cameraStepContextWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PXSharedLibraryAssistantCameraViewController);
  v5 = [[PXAssistantStepContext alloc] initWithIdentifier:v3 viewController:v4];

  [(PXAssistantStepContext *)v5 performChanges:&__block_literal_global_284];

  return v5;
}

void __78__PXSharedLibraryAssistantContext_Internal___cameraStepContextWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setFirstButtonType:3];
  [v2 setSecondButtonType:2];
}

- (id)_reviewReplyPreviewStepContextWithIdentifier:(id)a3
{
  v3 = [(PXSharedLibraryAssistantContext *)self _reviewReplyStepContextWithIdentifier:a3];
  [v3 performChanges:&__block_literal_global_281];

  return v3;
}

- (id)_reviewReplyDirectStepContextWithIdentifier:(id)a3
{
  v3 = [(PXSharedLibraryAssistantContext *)self _reviewReplyStepContextWithIdentifier:a3];
  [v3 performChanges:&__block_literal_global_279];

  return v3;
}

- (id)_reviewReplyStepContextWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PXSharedLibraryAssistantContext *)self viewModel];
  v6 = [PXSharedLibraryReplyAssistantReviewViewController alloc];
  v7 = [(PXSharedLibraryAssistantContext *)self statusProvider];
  v8 = [(PXSharedLibraryReplyAssistantReviewViewController *)v6 initWithViewModel:v5 sharedLibraryStatusProvider:v7];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__PXSharedLibraryAssistantContext_Internal___reviewReplyStepContextWithIdentifier___block_invoke;
  v11[3] = &unk_1E7749B98;
  v11[4] = self;
  [v5 performChanges:v11];
  v9 = [[PXAssistantStepContext alloc] initWithIdentifier:v4 viewController:v8];

  return v9;
}

void __83__PXSharedLibraryAssistantContext_Internal___reviewReplyStepContextWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sharedLibrary];
  [v3 setSharedLibrary:v4];
}

- (id)_summaryStepContextWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PXSharedLibraryAssistantContext *)self viewModel];
  v6 = [PXSharedLibraryAssistantSummaryViewController alloc];
  v7 = [(PXSharedLibraryAssistantContext *)self statusProvider];
  v8 = [(PXSharedLibraryAssistantContext *)self libraryFilterState];
  v9 = [(PXSharedLibraryAssistantSummaryViewController *)v6 initWithViewModel:v5 sharedLibraryStatusProvider:v7 libraryFilterState:v8];

  v10 = [[PXAssistantStepContext alloc] initWithIdentifier:v4 viewController:v9];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__PXSharedLibraryAssistantContext_Internal___summaryStepContextWithIdentifier___block_invoke;
  v12[3] = &unk_1E7749B98;
  v12[4] = self;
  [v5 performChanges:v12];
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

- (id)_peopleSelectionStepContextWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PXSharedLibraryAssistantContext *)self viewModel];
  v6 = [[PXSharedLibraryAssistantPeopleViewController alloc] initWithViewModel:v5];
  v7 = [[PXAssistantStepContext alloc] initWithIdentifier:v4 viewController:v6];

  [(PXAssistantStepContext *)v7 performChanges:&__block_literal_global_273];

  return v7;
}

- (id)_dateSelectionStepContextWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PXSharedLibraryAssistantContext *)self viewModel];
  v6 = [[PXSharedLibraryAssistantDatePickerViewController alloc] initWithViewModel:v5];
  v7 = [[PXAssistantStepContext alloc] initWithIdentifier:v4 viewController:v6];

  [(PXAssistantStepContext *)v7 performChanges:&__block_literal_global_270];

  return v7;
}

- (id)_rulesStepContextWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PXSharedLibraryAssistantContext *)self viewModel];
  v6 = [[PXSharedLibraryAssistantRulesViewController alloc] initWithViewModel:v5];
  v7 = [[PXAssistantStepContext alloc] initWithIdentifier:v4 viewController:v6];

  [(PXAssistantStepContext *)v7 performChanges:&__block_literal_global_267];

  return v7;
}

- (id)_participantsStepContextWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PXSharedLibraryAssistantParticipantViewModel);
  [(PXSharedLibraryAssistantParticipantViewModel *)v5 performChanges:&__block_literal_global_255];
  v6 = [PXSharedLibraryAssistantParticipantViewController alloc];
  v7 = [(PXSharedLibraryAssistantContext *)self viewModel];
  v8 = [(PXSharedLibraryAssistantParticipantViewController *)v6 initWithAssistantViewModel:v7 participantViewModel:v5];

  v9 = [[PXAssistantStepContext alloc] initWithIdentifier:v4 viewController:v8];
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

- (id)_replyIntroStepContextWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PXSharedLibraryAssistantContext *)self viewModel];
  v6 = [PXSharedLibraryReplyAssistantViewController alloc];
  v7 = [(PXSharedLibraryAssistantContext *)self legacyDevicesFallbackMonitor];
  v8 = [(PXSharedLibraryReplyAssistantViewController *)v6 initWithViewModel:v5 legacyDevicesFallbackMonitor:v7];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__PXSharedLibraryAssistantContext_Internal___replyIntroStepContextWithIdentifier___block_invoke;
  v11[3] = &unk_1E7749B98;
  v11[4] = self;
  [v5 performChanges:v11];
  v9 = [[PXAssistantStepContext alloc] initWithIdentifier:v4 viewController:v8];

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

- (id)_setupIntroStepContextWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [PXSharedLibraryAssistantWelcomeViewController alloc];
  v6 = [(PXSharedLibraryAssistantContext *)self legacyDevicesFallbackMonitor];
  v7 = [(PXSharedLibraryAssistantContext *)self legacyDevicesRemoteController];
  v8 = [(PXSharedLibraryAssistantWelcomeViewController *)v5 initWithLegacyDevicesFallbackMonitor:v6 legacyDevicesRemoteController:v7];

  v9 = [[PXAssistantStepContext alloc] initWithIdentifier:v4 viewController:v8];
  [(PXAssistantStepContext *)v9 performChanges:&__block_literal_global_54869];

  return v9;
}

void __82__PXSharedLibraryAssistantContext_Internal___setupIntroStepContextWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setFirstButtonType:3];
  [v2 setSecondButtonType:2];
}

- (id)sharedLibraryStepContextForStepContextIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext+Internal.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"stepContextIdentifier"}];
  }

  v6 = [(PXSharedLibraryAssistantContext *)self stepContextIdentifiersToContexts];
  v7 = [v6 objectForKeyedSubscript:v5];
  if (!v7)
  {
    if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierIntroSetup"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _setupIntroStepContextWithIdentifier:v5];
    }

    else if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierIntroReply"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _replyIntroStepContextWithIdentifier:v5];
    }

    else if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierParticipants"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _participantsStepContextWithIdentifier:v5];
    }

    else if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierRules"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _rulesStepContextWithIdentifier:v5];
    }

    else if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierDateSelection"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _dateSelectionStepContextWithIdentifier:v5];
    }

    else if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierPeopleSelection"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _peopleSelectionStepContextWithIdentifier:v5];
    }

    else if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierPreview"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _summaryStepContextWithIdentifier:v5];
    }

    else if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierReviewReplyDirect"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _reviewReplyDirectStepContextWithIdentifier:v5];
    }

    else if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierReviewReplyPreview"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _reviewReplyPreviewStepContextWithIdentifier:v5];
    }

    else if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierFutureRules"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _cameraStepContextWithIdentifier:v5];
    }

    else if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierReviewParticipantsSetupDirect"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _reviewParticipantsSetupDirectStepContextWithIdentifier:v5];
    }

    else if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierReviewParticipantsSetupPreview"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _reviewParticipantsSetupPreviewStepContextWithIdentifier:v5];
    }

    else if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierHowTo"])
    {
      v8 = [(PXSharedLibraryAssistantContext *)self _howToStepContextWithIdentifier:v5];
    }

    else
    {
      if (![v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierLegacyDevicesFallback"])
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXSharedLibraryAssistantContext(Internal) sharedLibraryStepContextForStepContextIdentifier:]"];
        [v12 handleFailureInFunction:v13 file:@"PXSharedLibraryAssistantContext+Internal.m" lineNumber:101 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v8 = [(PXSharedLibraryAssistantContext *)self _legacyDevicesFallbackStepContextWithIdentifier:v5];
    }

    v7 = v8;
    if (!v8)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext+Internal.m" lineNumber:104 description:{@"Didn't build step context for identifier %@", v5}];
    }

    [v6 setObject:v7 forKeyedSubscript:v5];
  }

  return v7;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXSharedLibraryFaceTileImageProviderObservationContext == a5)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }

    v12 = v9;
    [(PXSharedLibraryAssistantContext *)self _updateCombinedImage];
    goto LABEL_11;
  }

  if (PXSharedLibraryAssistantViewModelObservationContext_96931 != a5 && PXSharedLibraryAssistantReviewViewModelObservationContext != a5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:455 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 0x20) != 0)
  {
    v12 = v9;
    [(PXSharedLibraryAssistantContext *)self _updateParticipantsInFaceTile];
LABEL_11:
    v9 = v12;
  }

LABEL_12:
}

- (void)_updateParticipantsInFaceTile
{
  v3 = [(PXSharedLibraryFaceTileImageProvider *)self->_faceTileImageProvider providerModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__PXSharedLibraryAssistantContext__updateParticipantsInFaceTile__block_invoke;
  v4[3] = &unk_1E7737FD8;
  v4[4] = self;
  [v3 performChanges:v4];
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

- (void)stepContextWithIdentifier:(id)a3 confirmCancellationWithAlertProperties:(id)a4
{
  v23 = a3;
  v7 = a4;
  if (!v23)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:395 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_17:
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:396 description:{@"Invalid parameter not satisfying: %@", @"alertProperties"}];

    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_3:
  v8 = [(PXSharedLibraryAssistantViewModel *)self->_viewModel sharedLibrary];
  v9 = [v8 isInPreview];

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
    if (v9)
    {
      v14 = @"PXSharedLibrarySetupAssistant_CancelAfterPreview_ContinueButton";
    }

    else
    {
      v14 = 0;
    }

    v13 = v9 ^ 1;
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
  v7[2](v7, &stru_1F1741150, v17, v18, v20, v19, v12);
}

- (BOOL)shouldConfirmCancellationOfAssistantForStepContextWithIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierFutureRules"])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierHowTo"] ^ 1;
  }

  v7 = [(PXSharedLibraryAssistantViewModel *)self->_viewModel hasChangedUserInputValues];

  return v6 & v7;
}

- (void)setAssistantTraitCollection:(id)a3
{
  v4 = a3;
  [v4 displayScale];
  v6 = v5;
  v7 = [v4 isRTL];

  v8 = [MEMORY[0x1E69DC888] clearColor];
  v9 = [(PXSharedLibraryFaceTileImageProvider *)self->_faceTileImageProvider providerModel];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__PXSharedLibraryAssistantContext_setAssistantTraitCollection___block_invoke;
  v11[3] = &unk_1E7737FB0;
  v14 = v6;
  v15 = v7;
  v10 = v8;
  v12 = v10;
  v13 = v10;
  [v9 performChanges:v11];
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

- (id)stepContextForStepContextIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:350 description:{@"Invalid parameter not satisfying: %@", @"stepContextIdentifier"}];
  }

  v6 = [(PXSharedLibraryAssistantContext *)self sharedLibraryStepContextForStepContextIdentifier:v5];

  return v6;
}

- (id)_legacyDeviceStepContextIdentifierOrNextContextIdentifier:(id)a3
{
  v4 = a3;
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

  v8 = [(PXSharedLibraryLegacyDevicesFallbackMonitor *)self->_legacyDevicesFallbackMonitor devices];
  v9 = [v8 count];

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
    v11 = v4;
  }

  else
  {
    v11 = @"PXSharedLibraryStepContextIdentifierLegacyDevicesFallback";
  }

  v12 = v11;

  return v11;
}

- (id)_nextContextIdentifierForSelectedPolicy:(int64_t)a3
{
  v4 = [(PXSharedLibraryAssistantViewModel *)self->_viewModel autoSharePolicy];
  if (v4 >= 2)
  {
    if (v4 != 2)
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

- (id)_nextStepContextIdentifierFromStepContextIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"stepContextIdentifier"}];
  }

  if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierIntroSetup"])
  {
    v6 = @"PXSharedLibraryStepContextIdentifierParticipants";
LABEL_7:
    v7 = [(PXSharedLibraryAssistantContext *)self _legacyDeviceStepContextIdentifierOrNextContextIdentifier:v6];
LABEL_8:
    v8 = v7;
    goto LABEL_9;
  }

  if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierIntroReply"])
  {
    v6 = @"PXSharedLibraryStepContextIdentifierRules";
    goto LABEL_7;
  }

  if (![v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierParticipants"])
  {
    if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierRules"])
    {
      v7 = [(PXSharedLibraryAssistantContext *)self _nextContextIdentifierForSelectedPolicy:[(PXSharedLibraryAssistantViewModel *)self->_viewModel autoSharePolicy]];
      goto LABEL_8;
    }

    if (![v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierDateSelection"])
    {
      if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierPeopleSelection"])
      {
        v8 = @"PXSharedLibraryStepContextIdentifierDateSelection";
        goto LABEL_14;
      }

      if (![v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierPreview"])
      {
        if (([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierReviewParticipantsSetupDirect"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"PXSharedLibraryStepContextIdentifierReviewParticipantsSetupPreview") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"PXSharedLibraryStepContextIdentifierReviewReplyDirect") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"PXSharedLibraryStepContextIdentifierReviewReplyPreview"))
        {
          v8 = @"PXSharedLibraryStepContextIdentifierFutureRules";
          goto LABEL_14;
        }

        if ([v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierFutureRules"])
        {
          v8 = @"PXSharedLibraryStepContextIdentifierHowTo";
          goto LABEL_14;
        }

        if (![v5 isEqualToString:@"PXSharedLibraryStepContextIdentifierLegacyDevicesFallback"])
        {
          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          [v18 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:280 description:@"Code which should be unreachable has been reached"];

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

    v11 = [(PXSharedLibraryAssistantContext *)self viewModel];
    v12 = v11;
    if (v11)
    {
      [v11 shareCounts];
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

- (id)_firstVisibleStepContextIdentifierIgnoringPreview:(BOOL)a3
{
  if (a3)
  {
    sharedLibrary = 0;
  }

  else
  {
    sharedLibrary = self->_sharedLibrary;
  }

  v6 = sharedLibrary;
  v7 = [(PXSharedLibraryAssistantViewModel *)self->_viewModel mode];
  switch(v7)
  {
    case 1:
      v10 = @"PXSharedLibraryStepContextIdentifierReviewParticipantsSetupPreview";
      if (!v6)
      {
        v10 = @"PXSharedLibraryStepContextIdentifierIntroSetup";
      }

      goto LABEL_13;
    case 2:
      v9 = [(PXSharedLibrary *)v6 isInPreview];
      v10 = @"PXSharedLibraryStepContextIdentifierIntroReply";
      if (v9)
      {
        v10 = @"PXSharedLibraryStepContextIdentifierReviewReplyPreview";
      }

LABEL_13:
      v8 = v10;
      goto LABEL_14;
    case 0:
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:216 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (id)nextStepContextIdentifierFromStepContextIdentifier:(id)a3
{
  if (a3)
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

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"nextIdentifier"}];

LABEL_4:
    v8 = [v6 isEqualToString:v4];
    [v5 addObject:v6];
  }

  while (!v8);

  return v5;
}

- (void)configureParticipantListForStepContext:(id)a3 isReviewStep:(BOOL)a4
{
  v4 = a4;
  [(PXSharedLibraryAssistantContext *)self _updateParticipantsInFaceTile];
  viewModel = self->_viewModel;
  v7 = &PXSharedLibraryAssistantReviewViewModelObservationContext;
  if (!v4)
  {
    v7 = &PXSharedLibraryAssistantViewModelObservationContext_96931;
  }

  v8 = *v7;

  [(PXSharedLibraryAssistantViewModel *)viewModel registerChangeObserver:self context:v8];
}

- (id)_initWithSharedLibraryStatusProvider:(id)a3 sharedLibrary:(id)a4 sourceLibraryInfo:(id)a5 legacyDevicesFallbackMonitor:(id)a6 legacyDevicesRemoteController:(id)a7 mode:(int64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v59.receiver = self;
  v59.super_class = PXSharedLibraryAssistantContext;
  v19 = [(PXSharedLibraryAssistantContext *)&v59 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_statusProvider, a3);
    v21 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v20->_statusProvider];
    libraryFilterState = v20->_libraryFilterState;
    v20->_libraryFilterState = v21;

    objc_storeStrong(&v20->_sharedLibrary, a4);
    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    stepContextIdentifiersToContexts = v20->_stepContextIdentifiersToContexts;
    v20->_stepContextIdentifiersToContexts = v23;

    objc_storeStrong(&v20->_legacyDevicesFallbackMonitor, a6);
    objc_storeStrong(&v20->_legacyDevicesRemoteController, a7);
    if (v15)
    {
      PXSharedLibraryUIParticipantsForSharedLibrary(v15, 1u);
    }

    v42 = MEMORY[0x1E695E0F0];
    v40 = [PXSharedLibraryParticipantDataSourceManager aggregatedDataSourceWithParticipants:MEMORY[0x1E695E0F0]];
    v25 = objc_alloc_init(PXSharedLibraryFaceTileImageProvider);
    faceTileImageProvider = v20->_faceTileImageProvider;
    v20->_faceTileImageProvider = v25;

    v27 = [(PXSharedLibraryFaceTileImageProvider *)v20->_faceTileImageProvider providerModel];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __168__PXSharedLibraryAssistantContext__initWithSharedLibraryStatusProvider_sharedLibrary_sourceLibraryInfo_legacyDevicesFallbackMonitor_legacyDevicesRemoteController_mode___block_invoke;
    v56[3] = &unk_1E7737EF0;
    v58 = a8;
    v57 = 0;
    v41 = v27;
    [v27 performChanges:v56];
    [(PXSharedLibraryFaceTileImageProvider *)v20->_faceTileImageProvider registerChangeObserver:v20 context:PXSharedLibraryFaceTileImageProviderObservationContext];
    v43 = v17;
    v44 = v14;
    v28 = MEMORY[0x1E695E0F0];
    v29 = MEMORY[0x1E695E0F0];
    v30 = [v16 createDataSourceManager];
    if (v30)
    {
      v31 = [[off_1E77214A8 alloc] initWithAssetsDataSourceManager:v30];
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
    v53 = a8;
    v54 = 0;
    v47 = 0;
    v48 = v28;
    v49 = v20;
    v50 = v40;
    v55 = 0;
    v51 = v16;
    v52 = v29;
    v35 = v29;
    v36 = v40;
    v37 = v28;
    v38 = 0;
    [(PXSharedLibraryAssistantViewModel *)v34 performInitialChanges:v46];

    v17 = v43;
    v14 = v44;
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantContext.m" lineNumber:48 description:{@"%s is not available as initializer", "-[PXSharedLibraryAssistantContext init]"}];

  abort();
}

+ (id)_reviewContextIdentifierForMode:(int64_t)a3 hasPreview:(BOOL)a4
{
  switch(a3)
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
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:a1 file:@"PXSharedLibraryAssistantContext.m" lineNumber:289 description:@"Code which should be unreachable has been reached"];

      abort();
    default:
      v4 = 0;
      goto LABEL_10;
  }

  if (a4)
  {
    v5 = v6;
  }

  v4 = *v5;
LABEL_10:

  return v4;
}

+ (id)replyAssistantContextWithSharedLibraryStatusProvider:(id)a3 sharedLibrary:(id)a4 legacyDevicesFallbackMonitor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"PXSharedLibraryAssistantContext.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"sharedLibraryStatusProvider"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:a1 file:@"PXSharedLibraryAssistantContext.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"sharedLibrary"}];

LABEL_3:
  v12 = [v10 isInPreview];
  if (!v11)
  {
    v11 = [PXSharedLibraryLegacyDevicesFallbackMonitor legacyDevicesFallbackMonitorIfEnabledWithSharedLibraryOrPreviewPresent:v12];
  }

  v13 = [PXSharedLibraryLegacyDevicesRemoteController legacyDevicesRemoteControllerIfEnabledWithSharedLibraryOrPreviewPresent:v12];
  v14 = [v10 sourceLibraryInfo];
  v15 = [[PXSharedLibraryAssistantContext alloc] _initWithSharedLibraryStatusProvider:v9 sharedLibrary:v10 sourceLibraryInfo:v14 legacyDevicesFallbackMonitor:v11 legacyDevicesRemoteController:v13 mode:2];

  return v15;
}

+ (id)setupAssistantContextWithSharedLibraryStatusProvider:(id)a3 sharedLibrary:(id)a4 sourceLibraryInfo:(id)a5 legacyDevicesFallbackMonitor:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v11)
  {
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:a1 file:@"PXSharedLibraryAssistantContext.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"sharedLibraryStatusProvider"}];

  if (!v15)
  {
LABEL_3:
    v15 = [PXSharedLibraryLegacyDevicesFallbackMonitor legacyDevicesFallbackMonitorIfEnabledWithSharedLibraryOrPreviewPresent:v12 != 0];
  }

LABEL_4:
  v16 = [PXSharedLibraryLegacyDevicesRemoteController legacyDevicesRemoteControllerIfEnabledWithSharedLibraryOrPreviewPresent:v12 != 0];
  v17 = [[PXSharedLibraryAssistantContext alloc] _initWithSharedLibraryStatusProvider:v11 sharedLibrary:v12 sourceLibraryInfo:v13 legacyDevicesFallbackMonitor:v15 legacyDevicesRemoteController:v16 mode:1];

  return v17;
}

@end