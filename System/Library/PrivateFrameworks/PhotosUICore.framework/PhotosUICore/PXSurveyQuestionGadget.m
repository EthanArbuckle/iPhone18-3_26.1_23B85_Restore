@interface PXSurveyQuestionGadget
+ (id)sharedWorkQueue;
+ (unsigned)confirmYesSoundID;
+ (void)preloadResources;
- (BOOL)_presentAssetCollectionByLemonadeUI:(id)a3;
- (BOOL)_presentOneUpByLemonadeUI:(id)a3;
- (BOOL)_presentViewControllerByLemonadeUI:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXGadgetDelegate)delegate;
- (PXRegionOfInterest)regionOfInterestForOneUpTransition;
- (PXSurveyQuestionConfiguration)configuration;
- (PXSurveyQuestionConfigurationHandlers)handlers;
- (PXSurveyQuestionGadget)init;
- (PXSurveyQuestionGadget)initWithSurveyQuestion:(id)a3 gadgetType:(unint64_t)a4;
- (PXSurveyQuestionGadgetLemonadeUIDelegate)lemonadeUIDelegate;
- (UIImage)currentImage;
- (id)additionalReasonsForWallpaperQuestionsForAnswer:(unint64_t)a3;
- (id)gadgetContentView:(id)a3 additionalReasonMessageForAnswer:(unint64_t)a4;
- (id)gadgetContentView:(id)a3 additionalReasonTitleForAnswer:(unint64_t)a4;
- (id)gadgetContentView:(id)a3 additionalReasonsForAnswer:(unint64_t)a4;
- (unsigned)questionType;
- (void)_didFinishUpdatingSurveyQuestionStateFromAnswer;
- (void)_playConfirmYesSound;
- (void)_updateContentViewConfiguration;
- (void)_updateSurveyQuestionStateFromAnswer:(unint64_t)a3 andReason:(id)a4;
- (void)prepareCollectionViewItem:(id)a3;
- (void)refreshQuestionContentView;
- (void)removeCollectionViewItem:(id)a3;
- (void)setContentHidden:(BOOL)a3;
@end

@implementation PXSurveyQuestionGadget

- (PXSurveyQuestionGadgetLemonadeUIDelegate)lemonadeUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lemonadeUIDelegate);

  return WeakRetained;
}

- (PXGadgetDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_playConfirmYesSound
{
  v2 = [objc_opt_class() confirmYesSoundID];
  if (v2)
  {

    AudioServicesPlaySystemSound(v2);
  }
}

- (unsigned)questionType
{
  v2 = [(PXSurveyQuestionGadget *)self question];
  v3 = [v2 type];

  return v3;
}

- (id)gadgetContentView:(id)a3 additionalReasonMessageForAnswer:(unint64_t)a4
{
  if ([(PHQuestion *)self->_question type:a3]== 25)
  {
    v5 = @"PXInternalPhotosChallengeAdditionalReasonExhaustiveMomentLabelingMessage";
  }

  else if ([(PHQuestion *)self->_question type]== 8)
  {
    v5 = @"PXInternalPhotosChallengeAdditionalReasonFrequentLocationMessage";
  }

  else if ([(PHQuestion *)self->_question type]== 13 && [(PHQuestion *)self->_question entityType]== 1)
  {
    v5 = @"PXInternalPhotosChallengeAdditionalReasonPetMessage";
  }

  else if (-[PHQuestion type](self->_question, "type") == 5 && -[PHQuestion entityType](self->_question, "entityType") == 1 && (-[PHQuestion additionalInfo](self->_question, "additionalInfo"), v6 = objc_claimAutoreleasedReturnValue(), [v6 objectForKeyedSubscript:*MEMORY[0x1E69C1688]], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"CHILD"), v7, v6, (v8 & 1) != 0))
  {
    v5 = @"PXInternalPhotosChallengeAdditionalReasonChildMessage";
  }

  else
  {
    v5 = @"PXInternalPhotosChallengeAdditionalReasonMessage";
  }

  v9 = PXLocalizedStringFromTable(v5, @"PhotosUICore");

  return v9;
}

- (id)gadgetContentView:(id)a3 additionalReasonTitleForAnswer:(unint64_t)a4
{
  if ([(PHQuestion *)self->_question type:a3]== 24)
  {
    v5 = @"PXInternalPhotosChallengeAlbumClassificationAdditionalReasonTitle";
LABEL_7:
    v6 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
    goto LABEL_8;
  }

  if ([(PHQuestion *)self->_question type]== 25)
  {
    v5 = @"PXInternalPhotosChallengeAdditionalReasonExhaustiveMomentLabelingTitle";
    goto LABEL_7;
  }

  if ([(PHQuestion *)self->_question type]== 8)
  {
    v5 = @"PXInternalPhotosChallengeAdditionalReasonFrequentLocationTitle";
    goto LABEL_7;
  }

  if ([(PHQuestion *)self->_question type]== 26)
  {
    v8 = [(PHQuestion *)self->_question additionalInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69C16E0]];
    v10 = [v9 isEqual:MEMORY[0x1E695E110]];

    if (v10)
    {
      v11 = [(PHQuestion *)self->_question additionalInfo];
      [v11 objectForKeyedSubscript:*MEMORY[0x1E69C16F0]];
      objc_claimAutoreleasedReturnValue();

      v12 = @"PXInternalPhotosChallengeTripTitlingAdditionalReasonTitle";
      goto LABEL_17;
    }
  }

  if ([(PHQuestion *)self->_question type]== 28)
  {
    v13 = [(PHQuestion *)self->_question additionalInfo];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69C16E0]];
    v15 = [v14 isEqual:MEMORY[0x1E695E110]];

    if (v15)
    {
      v16 = [(PHQuestion *)self->_question additionalInfo];
      [v16 objectForKeyedSubscript:*MEMORY[0x1E69C16E8]];
      objc_claimAutoreleasedReturnValue();

      v12 = @"PXInternalPhotosChallengeDayHighlightTitlingAdditionalReasonTitle";
LABEL_17:
      PXLocalizedStringFromTable(v12, @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }
  }

  if ([(PHQuestion *)self->_question type]== 13 && [(PHQuestion *)self->_question entityType]== 1)
  {
    v5 = @"PXInternalPhotosChallengeAdditionalReasonPetTitle";
    goto LABEL_7;
  }

  if ([(PHQuestion *)self->_question type]== 5 && [(PHQuestion *)self->_question entityType]== 1)
  {
    v17 = [(PHQuestion *)self->_question additionalInfo];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69C1688]];
    v19 = [v18 isEqualToString:@"CHILD"];

    if (v19)
    {
      v5 = @"PXInternalPhotosChallengeAdditionalReasonChildTitle";
      goto LABEL_7;
    }
  }

  if ([(PHQuestion *)self->_question type]!= 30)
  {
    v5 = @"PXInternalPhotosChallengeAdditionalReasonTitle";
    goto LABEL_7;
  }

  v6 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonTitle");
LABEL_8:

  return v6;
}

- (id)additionalReasonsForWallpaperQuestionsForAnswer:(unint64_t)a3
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (a3 == 2)
  {
    v3 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeWallpaperAnswerNoReasonSomewhatPoor", @"PhotosUICore");
    v7[0] = v3;
    v4 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeWallpaperAnswerNoReasonEmbarrassinglyBad", @"PhotosUICore");
    v7[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)gadgetContentView:(id)a3 additionalReasonsForAnswer:(unint64_t)a4
{
  v74[5] = *MEMORY[0x1E69E9840];
  if ([(PHQuestion *)self->_question type]== 18)
  {
    if (a4 == 1)
    {
      v6 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeContentSyndicationAnswerYesReasonInPhoto", @"PhotosUICore");
      v73[0] = v6;
      v7 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeContentSyndicationAnswerYesReasonPresent", @"PhotosUICore");
      v73[1] = v7;
      v8 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeContentSyndicationAnswerYesReasonFamilyOrPet", @"PhotosUICore");
      v73[2] = v8;
      v9 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeContentSyndicationAnswerYesReasonNotPresentButWant", @"PhotosUICore");
      v73[3] = v9;
      v10 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeContentSyndicationAnswerReasonOther", @"PhotosUICore");
      v73[4] = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = v73;
      goto LABEL_15;
    }

    if (a4 == 2)
    {
      v6 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeContentSyndicationAnswerNoReasonNotPresent", @"PhotosUICore");
      v74[0] = v6;
      v7 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeContentSyndicationAnswerNoReasonPresentButNoLike", @"PhotosUICore");
      v74[1] = v7;
      v8 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeContentSyndicationAnswerNoReasonMemeOrScreenshot", @"PhotosUICore");
      v74[2] = v8;
      v9 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeContentSyndicationAnswerNoReasonUninterestingOrBad", @"PhotosUICore");
      v74[3] = v9;
      v10 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeContentSyndicationAnswerReasonOther", @"PhotosUICore");
      v74[4] = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = v74;
LABEL_15:
      v17 = [v11 arrayWithObjects:v12 count:5];
LABEL_29:

      goto LABEL_30;
    }

    goto LABEL_62;
  }

  if ([(PHQuestion *)self->_question type]== 20)
  {
    if (a4 != 1)
    {
      if (a4 == 2)
      {
        v6 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerNoReasonNotCriticalText");
        v72[0] = v6;
        v7 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerNoReasonSensitiveText");
        v72[1] = v7;
        v8 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerNoReasonNotPresentText");
        v72[2] = v8;
        v9 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerNoReasonUninterestingText");
        v72[3] = v9;
        v10 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerNoReasonLocationText");
        v72[4] = v10;
        v13 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerNoReasonEventText");
        v72[5] = v13;
        v14 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerNoReasonOtherText");
        v72[6] = v14;
        v15 = MEMORY[0x1E695DEC8];
        v16 = v72;
LABEL_13:
        v17 = [v15 arrayWithObjects:v16 count:7];

LABEL_28:
        goto LABEL_29;
      }

      goto LABEL_62;
    }

    v6 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerYesReasonParticipantsInPhotoText");
    v71[0] = v6;
    v7 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerYesReasonParticipantsPresentText");
    v71[1] = v7;
    v8 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerYesReasonFamilyText");
    v71[2] = v8;
    v9 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerYesReasonLocationText");
    v71[3] = v9;
    v10 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerYesReasonEventText");
    v71[4] = v10;
    v13 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerYesReasonOtherText");
    v71[5] = v13;
    v18 = MEMORY[0x1E695DEC8];
    v19 = v71;
    goto LABEL_27;
  }

  if ([(PHQuestion *)self->_question type]== 23)
  {
    if (a4 != 1)
    {
      if (a4 == 2)
      {
        v6 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerNoReasonNotCriticalText");
        v70[0] = v6;
        v7 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerNoReasonSensitiveText");
        v70[1] = v7;
        v8 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerNoReasonNotPresentText");
        v70[2] = v8;
        v9 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerNoReasonUninterestingText");
        v70[3] = v9;
        v10 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerNoReasonLocationText");
        v70[4] = v10;
        v13 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerNoReasonEventText");
        v70[5] = v13;
        v14 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerNoReasonOtherText");
        v70[6] = v14;
        v15 = MEMORY[0x1E695DEC8];
        v16 = v70;
        goto LABEL_13;
      }

LABEL_62:
      v17 = MEMORY[0x1E695E0F0];
      goto LABEL_63;
    }

    v6 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerYesReasonParticipantsInPhotoText");
    v69[0] = v6;
    v7 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerYesReasonParticipantsPresentText");
    v69[1] = v7;
    v8 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerYesReasonFamilyText");
    v69[2] = v8;
    v9 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerYesReasonLocationText");
    v69[3] = v9;
    v10 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerYesReasonEventText");
    v69[4] = v10;
    v13 = PXLocalizedSharedLibraryString(@"PXInternalPhotosChallengeSharedLibraryAnswerYesReasonOtherText");
    v69[5] = v13;
    v18 = MEMORY[0x1E695DEC8];
    v19 = v69;
LABEL_27:
    v17 = [v18 arrayWithObjects:v19 count:6];
    goto LABEL_28;
  }

  if ([(PHQuestion *)self->_question type]== 24)
  {
    if (a4 != 1)
    {
      if (a4 == 2)
      {
        v6 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerNoReasonAppleWork", @"PhotosUICore");
        v68[0] = v6;
        v7 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerNoReasonNonAppleWork", @"PhotosUICore");
        v68[1] = v7;
        v8 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerNoReasonThirdPartyApp", @"PhotosUICore");
        v68[2] = v8;
        v9 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerNoReasonOther", @"PhotosUICore");
        v68[3] = v9;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:4];
LABEL_30:

LABEL_31:
LABEL_32:

        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v59 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerYesReasonTrips", @"PhotosUICore");
    v67[0] = v59;
    v58 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerYesReasonCelebrations", @"PhotosUICore");
    v67[1] = v58;
    v57 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerYesReasonFriends", @"PhotosUICore");
    v67[2] = v57;
    v56 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerYesReasonFamily", @"PhotosUICore");
    v67[3] = v56;
    v55 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerYesReasonPartner", @"PhotosUICore");
    v67[4] = v55;
    v54 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerYesReasonPets", @"PhotosUICore");
    v67[5] = v54;
    v53 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerYesReasonMyself", @"PhotosUICore");
    v67[6] = v53;
    v52 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerYesReasonHobbies", @"PhotosUICore");
    v67[7] = v52;
    v51 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerYesReasonArtistic", @"PhotosUICore");
    v67[8] = v51;
    v26 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerYesReasonNature", @"PhotosUICore");
    v67[9] = v26;
    v27 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerYesReasonFood", @"PhotosUICore");
    v67[10] = v27;
    v28 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerYesReasonUtility", @"PhotosUICore");
    v67[11] = v28;
    v29 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerYesReasonScratch", @"PhotosUICore");
    v67[12] = v29;
    v30 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerYesReasonAppleWork", @"PhotosUICore");
    v67[13] = v30;
    v31 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerYesReasonNonAppleWork", @"PhotosUICore");
    v67[14] = v31;
    v32 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAlbumClassificationAnswerYesReasonOther", @"PhotosUICore");
    v67[15] = v32;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:16];

LABEL_38:
    goto LABEL_63;
  }

  if ([(PHQuestion *)self->_question type]== 25)
  {
    if (a4 != 1)
    {
      goto LABEL_62;
    }

    v20 = [(PXSurveyQuestionGadget *)self question];
    v21 = [v20 additionalInfo];
    v6 = [v21 objectForKeyedSubscript:*MEMORY[0x1E69C1610]];

    if (v6)
    {
      v22 = [v6 componentsSeparatedByString:{@", "}];
      v7 = v22;
      if (!v22)
      {
        v17 = MEMORY[0x1E695E0F0];
        goto LABEL_31;
      }

      v23 = v22;
LABEL_70:
      v17 = v23;
      goto LABEL_31;
    }

LABEL_48:
    v17 = MEMORY[0x1E695E0F0];
    goto LABEL_32;
  }

  if ([(PHQuestion *)self->_question type]== 8)
  {
    if (a4 != 1)
    {
      goto LABEL_62;
    }

    v24 = [(PXSurveyQuestionGadget *)self question];
    v25 = [v24 additionalInfo];
    v6 = [v25 objectForKeyedSubscript:*MEMORY[0x1E69C1630]];

    if (v6)
    {
      v17 = v6;
      goto LABEL_32;
    }

    goto LABEL_48;
  }

  if ([(PHQuestion *)self->_question type]== 26 || [(PHQuestion *)self->_question type]== 28)
  {
    v33 = [(PHQuestion *)self->_question additionalInfo];
    v34 = [v33 objectForKeyedSubscript:*MEMORY[0x1E69C16E0]];
    v35 = [v34 isEqual:MEMORY[0x1E695E110]];

    if (v35)
    {
      if (a4 == 2)
      {
        v6 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeYes", @"PhotosUICore");
        v65[0] = v6;
        v7 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeTitlingAnswerNeither", @"PhotosUICore");
        v65[1] = v7;
        v36 = MEMORY[0x1E695DEC8];
        v37 = v65;
      }

      else
      {
        if (a4 != 1)
        {
          goto LABEL_62;
        }

        v6 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeYes", @"PhotosUICore");
        v66[0] = v6;
        v7 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeNo", @"PhotosUICore");
        v66[1] = v7;
        v36 = MEMORY[0x1E695DEC8];
        v37 = v66;
      }

      goto LABEL_69;
    }
  }

  if ([(PHQuestion *)self->_question type]== 27)
  {
    if (a4 != 2)
    {
      goto LABEL_62;
    }

    v6 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeLocationRepresentativeAssetAnswerNoBadChoice", @"PhotosUICore");
    v64[0] = v6;
    v7 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeLocationRepresentativeAssetAnswerNoWithBetterChoice", @"PhotosUICore");
    v64[1] = v7;
    v36 = MEMORY[0x1E695DEC8];
    v37 = v64;
    goto LABEL_69;
  }

  if ([(PHQuestion *)self->_question type]== 13 && [(PHQuestion *)self->_question entityType]== 1)
  {
    if (a4 != 1)
    {
      goto LABEL_62;
    }

    v6 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAdditionalReasonCurrentPet", @"PhotosUICore");
    v63[0] = v6;
    v7 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAdditionalReasonPreviousPet", @"PhotosUICore");
    v63[1] = v7;
    v36 = MEMORY[0x1E695DEC8];
    v37 = v63;
LABEL_69:
    v23 = [v36 arrayWithObjects:v37 count:2];
    goto LABEL_70;
  }

  if ([(PHQuestion *)self->_question type]== 5 && [(PHQuestion *)self->_question entityType]== 1)
  {
    v38 = [(PHQuestion *)self->_question additionalInfo];
    v39 = [v38 objectForKeyedSubscript:*MEMORY[0x1E69C1688]];
    v40 = [v39 isEqualToString:@"CHILD"];

    if (v40)
    {
      if (a4 == 1)
      {
        v6 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAdditionalReasonBaby", @"PhotosUICore");
        v62[0] = v6;
        v7 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAdditionalReasonChild", @"PhotosUICore");
        v62[1] = v7;
        v8 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAdditionalReasonYoungAdult", @"PhotosUICore");
        v62[2] = v8;
        v9 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAdditionalReasonAdult", @"PhotosUICore");
        v62[3] = v9;
        v10 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAdditionalReasonSenior", @"PhotosUICore");
        v62[4] = v10;
        v11 = MEMORY[0x1E695DEC8];
        v12 = v62;
        goto LABEL_15;
      }

      goto LABEL_62;
    }
  }

  if ([(PHQuestion *)self->_question type]== 15)
  {
    if (a4 == 2)
    {
      v6 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeMemoryMusicQualityAnswerNoReasonPlaysTooOften", @"PhotosUICore");
      v61[0] = v6;
      v7 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeMemoryMusicQualityAnswerNoReasonDontLikeSong", @"PhotosUICore");
      v61[1] = v7;
      v8 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeMemoryMusicQualityAnswerNoReasonMismatchEnergy", @"PhotosUICore");
      v61[2] = v8;
      v9 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeMemoryMusicQualityAnswerNoReasonMismatchLyrics", @"PhotosUICore");
      v61[3] = v9;
      v10 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeMemoryMusicQualityAnswerNoReasonOther", @"PhotosUICore");
      v61[4] = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = v61;
      goto LABEL_15;
    }

    goto LABEL_62;
  }

  v43 = [(PHQuestion *)self->_question type];
  v17 = MEMORY[0x1E695E0F0];
  if (a4 == 2 && v43 == 30)
  {
    v59 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonUnsafe");
    v60[0] = v59;
    v58 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonConfusing");
    v60[1] = v58;
    v44 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonNotSpecific");
    v60[2] = v44;
    v45 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonTooSpecific");
    v60[3] = v45;
    v46 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonNotAccurate");
    v60[4] = v46;
    v47 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonNotApplicable");
    v60[5] = v47;
    v48 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonCheesy");
    v60[6] = v48;
    v49 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonUnexpectedWording");
    v60[7] = v49;
    v50 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonNotMyStyle");
    v60[8] = v50;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:9];

    goto LABEL_38;
  }

LABEL_63:
  if ([(PHQuestion *)self->_question type]== 22)
  {
    v41 = [(PXSurveyQuestionGadget *)self additionalReasonsForWallpaperQuestionsForAnswer:a4];

    v17 = v41;
  }

  return v17;
}

- (void)_didFinishUpdatingSurveyQuestionStateFromAnswer
{
  [(PXSurveyQuestionGadget *)self _playConfirmYesSound];
  v3 = [(PXSurveyQuestionGadget *)self delegate];
  [v3 didAnswerQuestionForGadget:self];
}

- (void)_updateSurveyQuestionStateFromAnswer:(unint64_t)a3 andReason:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PXSurveyQuestionGadget__updateSurveyQuestionStateFromAnswer_andReason___block_invoke;
  aBlock[3] = &unk_1E774C318;
  objc_copyWeak(&v17, &location);
  v7 = _Block_copy(aBlock);
  if (a3 <= 1)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    if (a3 == 1)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    switch(a3)
    {
      case 2uLL:
        v8 = 3;
        break;
      case 3uLL:
        v8 = 1;
        break;
      case 4uLL:
        v8 = 4;
        break;
      default:
        v8 = 0;
        break;
    }
  }

  if ([(PHQuestion *)self->_question type]!= 25 || [(PHQuestion *)self->_question state]!= v8)
  {
    v9 = [(PHQuestion *)self->_question photoLibrary];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __73__PXSurveyQuestionGadget__updateSurveyQuestionStateFromAnswer_andReason___block_invoke_2;
    v13[3] = &unk_1E773A980;
    v13[4] = self;
    v15 = v8;
    v14 = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__PXSurveyQuestionGadget__updateSurveyQuestionStateFromAnswer_andReason___block_invoke_3;
    v10[3] = &unk_1E773CEE8;
    objc_copyWeak(v12, &location);
    v12[1] = a3;
    v11 = v7;
    [v9 performChanges:v13 completionHandler:v10];

    objc_destroyWeak(v12);
    goto LABEL_17;
  }

LABEL_15:
  v7[2](v7);
LABEL_17:

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __73__PXSurveyQuestionGadget__updateSurveyQuestionStateFromAnswer_andReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didFinishUpdatingSurveyQuestionStateFromAnswer];
}

void __73__PXSurveyQuestionGadget__updateSurveyQuestionStateFromAnswer_andReason___block_invoke_2(uint64_t a1)
{
  v68 = [MEMORY[0x1E6978A18] changeRequestForQuestion:*(*(a1 + 32) + 56)];
  [v68 setState:*(a1 + 48)];
  v2 = MEMORY[0x1E695DF90];
  v3 = [*(*(a1 + 32) + 56) additionalInfo];
  v4 = [v2 dictionaryWithDictionary:v3];

  v5 = [*(a1 + 40) length];
  v6 = v5 != 0;
  v7 = MEMORY[0x1E69C15F0];
  if (v5)
  {
    objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
    [v4 setObject:*(a1 + 40) forKeyedSubscript:*v7];
  }

  if ([*(a1 + 32) questionType] == 25)
  {
    v8 = [*(a1 + 32) configuration];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [*(a1 + 32) configuration];
      v11 = [v10 contentView];

      v12 = [v11 presentedAssetIds];
      v13 = [v12 allObjects];

      v14 = [v13 componentsJoinedByString:{@", "}];
      [v4 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69C1618]];

      v6 = 1;
    }
  }

  if ([*(*(a1 + 32) + 56) type] == 14)
  {
    v15 = [MEMORY[0x1E695DF00] date];
    [v4 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69C1628]];

    v6 = 1;
  }

  if ([*(*(a1 + 32) + 56) type] == 26 || objc_msgSend(*(*(a1 + 32) + 56), "type") == 28)
  {
    v16 = *v7;
    v17 = [v4 objectForKeyedSubscript:*v7];

    if (v17)
    {
      v18 = *(a1 + 40);
      v19 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeYes", @"PhotosUICore");
      LODWORD(v18) = [v18 isEqualToString:v19];

      if (v18)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      [v4 setObject:v20 forKeyedSubscript:v16];
      v6 = 1;
    }
  }

  if ([*(*(a1 + 32) + 56) type] == 13)
  {
    v21 = *v7;
    v22 = [v4 objectForKeyedSubscript:*v7];

    if (v22)
    {
      v23 = *(a1 + 40);
      v24 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAdditionalReasonCurrentPet", @"PhotosUICore");
      LODWORD(v23) = [v23 isEqualToString:v24];

      v25 = MEMORY[0x1E69C1678];
      if (!v23)
      {
        v25 = MEMORY[0x1E69C1680];
      }

      [v4 setObject:*v25 forKeyedSubscript:v21];
    }
  }

  if ([*(*(a1 + 32) + 56) type] == 5)
  {
    v26 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C1688]];
    if ([v26 isEqualToString:@"CHILD"])
    {
      v27 = *v7;
      v28 = [v4 objectForKeyedSubscript:*v7];

      if (v28)
      {
        v29 = *(a1 + 40);
        v30 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAdditionalReasonBaby", @"PhotosUICore");
        if ([v29 isEqualToString:v30])
        {
        }

        else
        {
          v31 = *(a1 + 40);
          v32 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeAdditionalReasonChild", @"PhotosUICore");
          LODWORD(v31) = [v31 isEqualToString:v32];

          if (!v31)
          {
            v33 = MEMORY[0x1E69C15F8];
            goto LABEL_29;
          }
        }

        v33 = MEMORY[0x1E69C1600];
LABEL_29:
        [v4 setObject:*v33 forKeyedSubscript:v27];
      }
    }

    else
    {
    }
  }

  if ([*(*(a1 + 32) + 56) type] == 15)
  {
    v34 = *v7;
    v35 = [v4 objectForKeyedSubscript:*v7];

    if (v35)
    {
      v36 = *(a1 + 40);
      v37 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeMemoryMusicQualityAnswerNoReasonPlaysTooOften", @"PhotosUICore");
      LOBYTE(v36) = [v36 isEqualToString:v37];

      if (v36)
      {
        v38 = MEMORY[0x1E69C1660];
      }

      else
      {
        v39 = *(a1 + 40);
        v40 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeMemoryMusicQualityAnswerNoReasonDontLikeSong", @"PhotosUICore");
        LOBYTE(v39) = [v39 isEqualToString:v40];

        if (v39)
        {
          v38 = MEMORY[0x1E69C1640];
        }

        else
        {
          v41 = *(a1 + 40);
          v42 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeMemoryMusicQualityAnswerNoReasonMismatchEnergy", @"PhotosUICore");
          LOBYTE(v41) = [v41 isEqualToString:v42];

          if (v41)
          {
            v38 = MEMORY[0x1E69C1648];
          }

          else
          {
            v43 = *(a1 + 40);
            v44 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeMemoryMusicQualityAnswerNoReasonMismatchLyrics", @"PhotosUICore");
            LOBYTE(v43) = [v43 isEqualToString:v44];

            if (v43)
            {
              v38 = MEMORY[0x1E69C1650];
            }

            else
            {
              v45 = *(a1 + 40);
              v46 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeMemoryMusicQualityAnswerNoReasonOther", @"PhotosUICore");
              LODWORD(v45) = [v45 isEqualToString:v46];

              v38 = MEMORY[0x1E69C1668];
              if (v45)
              {
                v38 = MEMORY[0x1E69C1658];
              }
            }
          }
        }
      }

      [v4 setObject:*v38 forKeyedSubscript:v34];
    }
  }

  if ([*(*(a1 + 32) + 56) type] == 30)
  {
    v47 = *v7;
    v48 = [v4 objectForKeyedSubscript:*v7];

    if (v48)
    {
      v49 = *(a1 + 40);
      v50 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonUnsafe");
      LOBYTE(v49) = [v49 isEqualToString:v50];

      if (v49)
      {
        v51 = MEMORY[0x1E69C16D8];
      }

      else
      {
        v52 = *(a1 + 40);
        v53 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonConfusing");
        LOBYTE(v52) = [v52 isEqualToString:v53];

        if (v52)
        {
          v51 = MEMORY[0x1E69C1698];
        }

        else
        {
          v54 = *(a1 + 40);
          v55 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonNotSpecific");
          LOBYTE(v54) = [v54 isEqualToString:v55];

          if (v54)
          {
            v51 = MEMORY[0x1E69C16B8];
          }

          else
          {
            v56 = *(a1 + 40);
            v57 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonTooSpecific");
            LOBYTE(v56) = [v56 isEqualToString:v57];

            if (v56)
            {
              v51 = MEMORY[0x1E69C16C0];
            }

            else
            {
              v58 = *(a1 + 40);
              v59 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonNotAccurate");
              LOBYTE(v58) = [v58 isEqualToString:v59];

              if (v58)
              {
                v51 = MEMORY[0x1E69C16A0];
              }

              else
              {
                v60 = *(a1 + 40);
                v61 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonNotApplicable");
                LOBYTE(v60) = [v60 isEqualToString:v61];

                if (v60)
                {
                  v51 = MEMORY[0x1E69C16A8];
                }

                else
                {
                  v62 = *(a1 + 40);
                  v63 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonCheesy");
                  LOBYTE(v62) = [v62 isEqualToString:v63];

                  if (v62)
                  {
                    v51 = MEMORY[0x1E69C1690];
                  }

                  else
                  {
                    v64 = *(a1 + 40);
                    v65 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonUnexpectedWording");
                    LOBYTE(v64) = [v64 isEqualToString:v65];

                    if (v64)
                    {
                      v51 = MEMORY[0x1E69C16C8];
                    }

                    else
                    {
                      v66 = *(a1 + 40);
                      v67 = PXLocalizedStoryPromptSuggestionsString(@"PXInternalPhotosChallengeStoryPromptSuggestionsAnswerNoReasonNotMyStyle");
                      LODWORD(v66) = [v66 isEqualToString:v67];

                      v51 = MEMORY[0x1E69C16D0];
                      if (v66)
                      {
                        v51 = MEMORY[0x1E69C16B0];
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      [v4 setObject:*v51 forKeyedSubscript:v47];
    }
  }

  if (v6)
  {
    [v68 setAdditionalInfo:v4];
  }
}

void __73__PXSurveyQuestionGadget__updateSurveyQuestionStateFromAnswer_andReason___block_invoke_3(id *a1, char a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  objc_copyWeak(v6, a1 + 5);
  v6[1] = a1[6];
  v5;
  a1[4];
  px_dispatch_on_main_queue();
}

uint64_t __73__PXSurveyQuestionGadget__updateSurveyQuestionStateFromAnswer_andReason___block_invoke_4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 56);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setAnswer:v2];
  }

  else
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Error updating survey question state from answer (error: %@)", &v7, 0xCu);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)setContentHidden:(BOOL)a3
{
  if (self->_contentHidden != a3)
  {
    v4 = a3;
    self->_contentHidden = a3;
    v5 = [(PXSurveyQuestionGadget *)self contentView];
    [v5 setContentHidden:v4];
  }
}

- (void)_updateContentViewConfiguration
{
  objc_initWeak(&location, self);
  objc_initWeak(&from, self->_contentView);
  question = self->_question;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__PXSurveyQuestionGadget__updateContentViewConfiguration__block_invoke;
  v4[3] = &unk_1E773A958;
  v4[4] = self;
  objc_copyWeak(&v5, &location);
  objc_copyWeak(&v6, &from);
  self->_configurationRequestId = [(PHQuestion *)question px_requestConfigurationWithResultHandler:v4];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __57__PXSurveyQuestionGadget__updateContentViewConfiguration__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(*(a1 + 32) + 8) == a2)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained handlers];
    [v5 setHandlers:v7];

    v8 = objc_loadWeakRetained((a1 + 48));
    [v8 setConfiguration:v5];
  }
}

- (void)refreshQuestionContentView
{
  if (self->_contentView)
  {
    [(PXSurveyQuestionGadget *)self _updateContentViewConfiguration];
  }
}

- (void)removeCollectionViewItem:(id)a3
{
  v13 = a3;
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    v12 = [v13 px_descriptionForAssertionMessage];
    [v8 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionGadget.m" lineNumber:227 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collectionViewItem", v10, v12}];
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionGadget.m" lineNumber:227 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collectionViewItem", v10}];
  }

LABEL_3:
  [v13 updateButtonsWithAnswerState:0 reason:0];
  v5 = [v13 configuration];
  [v5 setHandlers:0];

  v6 = objc_alloc_init(PXSurveyQuestionDefaultConfiguration);
  [v13 setConfiguration:v6];

  [(PXSurveyQuestionsGadgetContentView *)self->_contentView setDelegate:0];
  contentView = self->_contentView;
  self->_contentView = 0;

  self->_configurationRequestId = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)prepareCollectionViewItem:(id)a3
{
  v14 = a3;
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v13 = [(PXSurveyQuestionsGadgetContentView *)v14 px_descriptionForAssertionMessage];
    [v9 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionGadget.m" lineNumber:218 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collectionViewItem", v11, v13}];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionGadget.m" lineNumber:218 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collectionViewItem", v11}];
  }

LABEL_3:
  contentView = self->_contentView;
  self->_contentView = v14;

  v6 = [PXSurveyQuestionDefaultConfiguration alloc];
  v7 = [(PHQuestion *)self->_question px_displayTitle];
  v8 = [(PXSurveyQuestionDefaultConfiguration *)v6 initWithTitle:v7];
  [(PXSurveyQuestionsGadgetContentView *)self->_contentView setConfiguration:v8];

  [(PXSurveyQuestionsGadgetContentView *)self->_contentView updateButtonsWithAnswerState:[(PXSurveyQuestionGadget *)self answer] reason:self->_currentAnswerReason];
  [(PXSurveyQuestionsGadgetContentView *)self->_contentView setDelegate:self];
  [(PXSurveyQuestionGadget *)self _updateContentViewConfiguration];
}

- (BOOL)_presentViewControllerByLemonadeUI:(id)a3
{
  v4 = a3;
  v5 = [(PXSurveyQuestionGadget *)self lemonadeUIDelegate];
  if (v5)
  {
    v6 = [(PXSurveyQuestionGadget *)self regionOfInterestForOneUpTransition];
    [v5 surveyQuestionGadget:self presentViewController:v4 regionOfInterest:v6];
  }

  return v5 != 0;
}

- (BOOL)_presentAssetCollectionByLemonadeUI:(id)a3
{
  v4 = a3;
  v5 = [(PXSurveyQuestionGadget *)self lemonadeUIDelegate];
  if (v5)
  {
    v6 = [(PXSurveyQuestionGadget *)self regionOfInterestForOneUpTransition];
    [v5 surveyQuestionGadget:self presentAssetCollection:v4 regionOfInterest:v6];
  }

  return v5 != 0;
}

- (BOOL)_presentOneUpByLemonadeUI:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PXSurveyQuestionGadget *)self lemonadeUIDelegate];
  if (!v6)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v7 = [(PXSurveyQuestionGadget *)self question];
  v8 = v5;
  if (!v8)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v16 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionGadget.m" lineNumber:165 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v18}];
LABEL_13:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    v20 = [v8 px_descriptionForAssertionMessage];
    [v16 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionGadget.m" lineNumber:165 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v18, v20}];

    goto LABEL_13;
  }

LABEL_4:
  v21 = 0;
  v22 = 0;
  v9 = [v7 px_assetCollectionAndAssetFetchResultForAsset:v8 assetCollection:&v22 assetFetchResult:&v21];
  v10 = v22;
  v11 = v21;
  if (v9)
  {
    v12 = [(PXSurveyQuestionGadget *)self regionOfInterestForOneUpTransition];
    [v6 surveyQuestionGadgetPresentOneUp:self keyAsset:v8 assetCollection:v10 regionOfInterest:v12];
  }

  else
  {
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v8 uuid];
      v14 = [v7 uuid];
      *buf = 138543618;
      v24 = v13;
      v25 = 2114;
      v26 = v14;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "Failed to prepare for one up: No collection or fetch result for asset: %{public}@ for question: %{public}@", buf, 0x16u);
    }
  }

LABEL_10:
  return v9;
}

- (PXRegionOfInterest)regionOfInterestForOneUpTransition
{
  v4 = [(PXSurveyQuestionGadget *)self contentView];
  if (!v4)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = NSStringFromSelector(a2);
    [v13 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionGadget.m" lineNumber:153 description:{@"%@ asked for ROI for 1-Up transition, but our view is not loaded!", v14}];

    abort();
  }

  v5 = v4;
  [v4 contentBoundsInCoordinateSpace:v4];
  v10 = [[off_1E7721860 alloc] initWithRect:v5 inCoordinateSpace:{v6, v7, v8, v9}];
  v11 = [v5 configuration];
  [v11 contentRectForOneUp];
  [v10 setImageContentsRect:?];

  return v10;
}

- (UIImage)currentImage
{
  v2 = [(PXSurveyQuestionGadget *)self contentView];
  v3 = [v2 configuration];
  v4 = [v3 contentImageForOneUp];

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [PXSurveyQuestionsGadgetContentView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (PXSurveyQuestionConfiguration)configuration
{
  v2 = [(PXSurveyQuestionGadget *)self contentView];
  v3 = [v2 configuration];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(PXSurveyQuestionDefaultConfiguration);
  }

  v6 = v5;

  return v6;
}

- (PXSurveyQuestionConfigurationHandlers)handlers
{
  handlers = self->_handlers;
  if (!handlers)
  {
    v4 = objc_alloc_init(PXSurveyQuestionConfigurationHandlers);
    v5 = self->_handlers;
    self->_handlers = v4;

    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __34__PXSurveyQuestionGadget_handlers__block_invoke;
    v11[3] = &unk_1E773A8E0;
    objc_copyWeak(&v12, &location);
    [(PXSurveyQuestionConfigurationHandlers *)self->_handlers setDidSelectAssetHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __34__PXSurveyQuestionGadget_handlers__block_invoke_2;
    v9[3] = &unk_1E773A908;
    objc_copyWeak(&v10, &location);
    [(PXSurveyQuestionConfigurationHandlers *)self->_handlers setPushViewControllerHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__PXSurveyQuestionGadget_handlers__block_invoke_3;
    v7[3] = &unk_1E773A930;
    objc_copyWeak(&v8, &location);
    [(PXSurveyQuestionConfigurationHandlers *)self->_handlers setPresentViewControllerHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    handlers = self->_handlers;
  }

  return handlers;
}

void __34__PXSurveyQuestionGadget_handlers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentOneUpByLemonadeUI:v3];
}

void __34__PXSurveyQuestionGadget_handlers__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained _presentAssetCollectionByLemonadeUI:v5];

  if ((v7 & 1) == 0)
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 delegate];
    v10 = objc_loadWeakRetained((a1 + 32));
    [v9 gadget:v10 transitionToViewController:v11 animated:1 completion:0];
  }
}

void __34__PXSurveyQuestionGadget_handlers__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _presentViewControllerByLemonadeUI:v7];

  if ((v4 & 1) == 0)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 delegate];
    [v6 presentGadgetViewController:v7 animated:1 completion:0];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      question = self->_question;
      v6 = v4;
      v7 = [(PHQuestion *)question uuid];
      v8 = [(PXSurveyQuestionGadget *)v6 question];

      v9 = [v8 uuid];
      v10 = [v7 isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (PXSurveyQuestionGadget)initWithSurveyQuestion:(id)a3 gadgetType:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PXSurveyQuestionGadget;
  v8 = [(PXSurveyQuestionGadget *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_question, a3);
    v9->_gadgetType = a4;
    v9->_configurationRequestId = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (PXSurveyQuestionGadget)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionGadget.m" lineNumber:81 description:{@"%s is not available as initializer", "-[PXSurveyQuestionGadget init]"}];

  abort();
}

+ (void)preloadResources
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PXSurveyQuestionGadget_preloadResources__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (preloadResources_onceToken_120267 != -1)
  {
    dispatch_once(&preloadResources_onceToken_120267, block);
  }
}

void __42__PXSurveyQuestionGadget_preloadResources__block_invoke(uint64_t a1)
{
  v2 = [off_1E7721858 sharedScheduler];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__PXSurveyQuestionGadget_preloadResources__block_invoke_2;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = *(a1 + 32);
  [v2 scheduleTaskWithQoS:1 block:v3];
}

+ (unsigned)confirmYesSoundID
{
  if (confirmYesSoundID_onceToken != -1)
  {
    dispatch_once(&confirmYesSoundID_onceToken, &__block_literal_global_193_120269);
  }

  return confirmYesSoundID_soundID;
}

void __43__PXSurveyQuestionGadget_confirmYesSoundID__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] px_bundle];
  v2 = [v0 pathForResource:@"PXPeopleConfirmYes" ofType:@"caf"];

  if ([v2 length])
  {
    v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
    AudioServicesCreateSystemSoundID(v1, &confirmYesSoundID_soundID);
  }
}

+ (id)sharedWorkQueue
{
  if (sharedWorkQueue_onceToken_120279 != -1)
  {
    dispatch_once(&sharedWorkQueue_onceToken_120279, &__block_literal_global_120280);
  }

  v3 = sharedWorkQueue_sharedWorkQueue_120281;

  return v3;
}

void __41__PXSurveyQuestionGadget_sharedWorkQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.photos.surveyWorkQueue", attr);
  v2 = sharedWorkQueue_sharedWorkQueue_120281;
  sharedWorkQueue_sharedWorkQueue_120281 = v1;
}

@end