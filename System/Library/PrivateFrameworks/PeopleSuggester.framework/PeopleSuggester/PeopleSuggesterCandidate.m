@interface PeopleSuggesterCandidate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFeedbackDeprecated:(id)a3;
- (int)feedbackDeprecated;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDeprecatedField1:(BOOL)a3;
- (void)setHasDeprecatedField2:(BOOL)a3;
- (void)setHasDeprecatedField3:(BOOL)a3;
- (void)setHasFeedbackDeprecated:(BOOL)a3;
- (void)setHasFoundInChunk:(BOOL)a3;
- (void)setHasIsFirstPartyApp:(BOOL)a3;
- (void)setHasIsInPhoneCallWithConversation:(BOOL)a3;
- (void)setHasSuggestedRank:(BOOL)a3;
- (void)setHasUpdatedInChunk:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PeopleSuggesterCandidate

- (int)feedbackDeprecated
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_feedbackDeprecated;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFeedbackDeprecated:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (int)StringAsFeedbackDeprecated:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ABANDONED"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SUGGESTION_SELECTED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"INTERACTED_WITH_AFTER_SHARE_DEPRECATED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"HANDLE_SELECTED_IN_APP_EXTENSION"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HANDLE_SELECTED_IN_APP"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDeprecatedField1:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasDeprecatedField2:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasDeprecatedField3:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasSuggestedRank:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasFoundInChunk:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasUpdatedInChunk:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsInPhoneCallWithConversation:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIsFirstPartyApp:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PeopleSuggesterCandidate;
  v4 = [(PeopleSuggesterCandidate *)&v8 description];
  v5 = [(PeopleSuggesterCandidate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  privatizedIdentifier = self->_privatizedIdentifier;
  if (privatizedIdentifier)
  {
    [v3 setObject:privatizedIdentifier forKey:@"privatizedIdentifier"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    feedbackDeprecated = self->_feedbackDeprecated;
    if (feedbackDeprecated >= 5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_feedbackDeprecated];
    }

    else
    {
      v7 = off_1E7C24F58[feedbackDeprecated];
    }

    [v4 setObject:v7 forKey:@"feedback_deprecated"];
  }

  privatizedTransportBundleId = self->_privatizedTransportBundleId;
  if (privatizedTransportBundleId)
  {
    [v4 setObject:privatizedTransportBundleId forKey:@"privatizedTransportBundleId"];
  }

  timeSinceLastOutgoingInteraction = self->_timeSinceLastOutgoingInteraction;
  if (timeSinceLastOutgoingInteraction)
  {
    v10 = [(PeopleSuggesterFeatureDouble *)timeSinceLastOutgoingInteraction dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"timeSinceLastOutgoingInteraction"];
  }

  timeSinceOutgoingInteractionNumber10 = self->_timeSinceOutgoingInteractionNumber10;
  if (timeSinceOutgoingInteractionNumber10)
  {
    v12 = [(PeopleSuggesterFeatureDouble *)timeSinceOutgoingInteractionNumber10 dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"timeSinceOutgoingInteractionNumber10"];
  }

  timeSinceLastIncomingInteraction = self->_timeSinceLastIncomingInteraction;
  if (timeSinceLastIncomingInteraction)
  {
    v14 = [(PeopleSuggesterFeatureDouble *)timeSinceLastIncomingInteraction dictionaryRepresentation];
    [v4 setObject:v14 forKey:@"timeSinceLastIncomingInteraction"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v81 = [MEMORY[0x1E696AD98] numberWithDouble:self->_deprecatedField1];
    [v4 setObject:v81 forKey:@"deprecated_field_1"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_18:
      if ((has & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_18;
  }

  v82 = [MEMORY[0x1E696AD98] numberWithDouble:self->_deprecatedField2];
  [v4 setObject:v82 forKey:@"deprecated_field_2"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_19:
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:self->_deprecatedField3];
    [v4 setObject:v16 forKey:@"deprecated_field_3"];
  }

LABEL_20:
  numberOfSharesWithConversation = self->_numberOfSharesWithConversation;
  if (numberOfSharesWithConversation)
  {
    v18 = [(PeopleSuggesterFeatureDouble *)numberOfSharesWithConversation dictionaryRepresentation];
    [v4 setObject:v18 forKey:@"numberOfSharesWithConversation"];
  }

  numberOfSharesFromCurrentAppWithConversation = self->_numberOfSharesFromCurrentAppWithConversation;
  if (numberOfSharesFromCurrentAppWithConversation)
  {
    v20 = [(PeopleSuggesterFeatureDouble *)numberOfSharesFromCurrentAppWithConversation dictionaryRepresentation];
    [v4 setObject:v20 forKey:@"numberOfSharesFromCurrentAppWithConversation"];
  }

  numberOfSharesOfTopDomainURLWithConversation = self->_numberOfSharesOfTopDomainURLWithConversation;
  if (numberOfSharesOfTopDomainURLWithConversation)
  {
    v22 = [(PeopleSuggesterFeatureDouble *)numberOfSharesOfTopDomainURLWithConversation dictionaryRepresentation];
    [v4 setObject:v22 forKey:@"numberOfSharesOfTopDomainURLWithConversation"];
  }

  numberOfSharesOfDetectedPeopleWithConversation = self->_numberOfSharesOfDetectedPeopleWithConversation;
  if (numberOfSharesOfDetectedPeopleWithConversation)
  {
    v24 = [(PeopleSuggesterFeatureDouble *)numberOfSharesOfDetectedPeopleWithConversation dictionaryRepresentation];
    [v4 setObject:v24 forKey:@"numberOfSharesOfDetectedPeopleWithConversation"];
  }

  numberOfSharesOfPeopleInPhotoWithConversation = self->_numberOfSharesOfPeopleInPhotoWithConversation;
  if (numberOfSharesOfPeopleInPhotoWithConversation)
  {
    v26 = [(PeopleSuggesterFeatureDouble *)numberOfSharesOfPeopleInPhotoWithConversation dictionaryRepresentation];
    [v4 setObject:v26 forKey:@"numberOfSharesOfPeopleInPhotoWithConversation"];
  }

  numberOfOutgoingInteractionsWithConversation = self->_numberOfOutgoingInteractionsWithConversation;
  if (numberOfOutgoingInteractionsWithConversation)
  {
    v28 = [(PeopleSuggesterFeatureDouble *)numberOfOutgoingInteractionsWithConversation dictionaryRepresentation];
    [v4 setObject:v28 forKey:@"numberOfOutgoingInteractionsWithConversation"];
  }

  numberOfIncomingInteractionsWithConversation = self->_numberOfIncomingInteractionsWithConversation;
  if (numberOfIncomingInteractionsWithConversation)
  {
    v30 = [(PeopleSuggesterFeatureDouble *)numberOfIncomingInteractionsWithConversation dictionaryRepresentation];
    [v4 setObject:v30 forKey:@"numberOfIncomingInteractionsWithConversation"];
  }

  numberOfInteractionsDuringTimePeriodWithConversation = self->_numberOfInteractionsDuringTimePeriodWithConversation;
  if (numberOfInteractionsDuringTimePeriodWithConversation)
  {
    v32 = [(PeopleSuggesterFeatureDouble *)numberOfInteractionsDuringTimePeriodWithConversation dictionaryRepresentation];
    [v4 setObject:v32 forKey:@"numberOfInteractionsDuringTimePeriodWithConversation"];
  }

  numberOfEngagedSuggestionsWithConversation = self->_numberOfEngagedSuggestionsWithConversation;
  if (numberOfEngagedSuggestionsWithConversation)
  {
    v34 = [(PeopleSuggesterFeatureDouble *)numberOfEngagedSuggestionsWithConversation dictionaryRepresentation];
    [v4 setObject:v34 forKey:@"numberOfEngagedSuggestionsWithConversation"];
  }

  numberOfEngagedSuggestionsFromCurrentAppWithConversation = self->_numberOfEngagedSuggestionsFromCurrentAppWithConversation;
  if (numberOfEngagedSuggestionsFromCurrentAppWithConversation)
  {
    v36 = [(PeopleSuggesterFeatureDouble *)numberOfEngagedSuggestionsFromCurrentAppWithConversation dictionaryRepresentation];
    [v4 setObject:v36 forKey:@"numberOfEngagedSuggestionsFromCurrentAppWithConversation"];
  }

  numberOfEngagedSuggestionsOfTopDomainURLWithConversation = self->_numberOfEngagedSuggestionsOfTopDomainURLWithConversation;
  if (numberOfEngagedSuggestionsOfTopDomainURLWithConversation)
  {
    v38 = [(PeopleSuggesterFeatureDouble *)numberOfEngagedSuggestionsOfTopDomainURLWithConversation dictionaryRepresentation];
    [v4 setObject:v38 forKey:@"numberOfEngagedSuggestionsOfTopDomainURLWithConversation"];
  }

  numberOfEngagedSuggestionsOfDetectedPeopleWithConversation = self->_numberOfEngagedSuggestionsOfDetectedPeopleWithConversation;
  if (numberOfEngagedSuggestionsOfDetectedPeopleWithConversation)
  {
    v40 = [(PeopleSuggesterFeatureDouble *)numberOfEngagedSuggestionsOfDetectedPeopleWithConversation dictionaryRepresentation];
    [v4 setObject:v40 forKey:@"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation"];
  }

  numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation = self->_numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation;
  if (numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation)
  {
    v42 = [(PeopleSuggesterFeatureDouble *)numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation dictionaryRepresentation];
    [v4 setObject:v42 forKey:@"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation"];
  }

  hasEverSharePlayedWithConversation = self->_hasEverSharePlayedWithConversation;
  if (hasEverSharePlayedWithConversation)
  {
    v44 = [(PeopleSuggesterFeatureDouble *)hasEverSharePlayedWithConversation dictionaryRepresentation];
    [v4 setObject:v44 forKey:@"hasEverSharePlayedWithConversation"];
  }

  v45 = self->_has;
  if ((v45 & 0x40) != 0)
  {
    v83 = [MEMORY[0x1E696AD98] numberWithInt:self->_suggestedRank];
    [v4 setObject:v83 forKey:@"suggestedRank"];

    v45 = self->_has;
    if ((v45 & 1) == 0)
    {
LABEL_50:
      if ((v45 & 0x20) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_93;
    }
  }

  else if ((v45 & 1) == 0)
  {
    goto LABEL_50;
  }

  v84 = [MEMORY[0x1E696AD98] numberWithDouble:self->_coreMLModelScore];
  [v4 setObject:v84 forKey:@"coreMLModelScore"];

  v45 = self->_has;
  if ((v45 & 0x20) == 0)
  {
LABEL_51:
    if ((v45 & 0x80) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_93:
  v85 = [MEMORY[0x1E696AD98] numberWithInt:self->_foundInChunk];
  [v4 setObject:v85 forKey:@"foundInChunk"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_52:
    v46 = [MEMORY[0x1E696AD98] numberWithInt:self->_updatedInChunk];
    [v4 setObject:v46 forKey:@"updatedInChunk"];
  }

LABEL_53:
  numberOfSharesOfPeopleInPhotoIoUWithConversation = self->_numberOfSharesOfPeopleInPhotoIoUWithConversation;
  if (numberOfSharesOfPeopleInPhotoIoUWithConversation)
  {
    v48 = [(PeopleSuggesterFeatureDouble *)numberOfSharesOfPeopleInPhotoIoUWithConversation dictionaryRepresentation];
    [v4 setObject:v48 forKey:@"numberOfSharesOfPeopleInPhotoIoUWithConversation"];
  }

  numberOfSharesOfPetsWithConversation = self->_numberOfSharesOfPetsWithConversation;
  if (numberOfSharesOfPetsWithConversation)
  {
    v50 = [(PeopleSuggesterFeatureDouble *)numberOfSharesOfPetsWithConversation dictionaryRepresentation];
    [v4 setObject:v50 forKey:@"numberOfSharesOfPetsWithConversation"];
  }

  numberOfSharesOfPetsInCurrentPhotoWithConversation = self->_numberOfSharesOfPetsInCurrentPhotoWithConversation;
  if (numberOfSharesOfPetsInCurrentPhotoWithConversation)
  {
    v52 = [(PeopleSuggesterFeatureDouble *)numberOfSharesOfPetsInCurrentPhotoWithConversation dictionaryRepresentation];
    [v4 setObject:v52 forKey:@"numberOfSharesOfPetsInCurrentPhotoWithConversation"];
  }

  numberOfSharesOfScenesInPhotoWithConversation = self->_numberOfSharesOfScenesInPhotoWithConversation;
  if (numberOfSharesOfScenesInPhotoWithConversation)
  {
    v54 = [(PeopleSuggesterFeatureDouble *)numberOfSharesOfScenesInPhotoWithConversation dictionaryRepresentation];
    [v4 setObject:v54 forKey:@"numberOfSharesOfScenesInPhotoWithConversation"];
  }

  numberOfSharesOfDetectedScenesInPhotoWithConversation = self->_numberOfSharesOfDetectedScenesInPhotoWithConversation;
  if (numberOfSharesOfDetectedScenesInPhotoWithConversation)
  {
    v56 = [(PeopleSuggesterFeatureDouble *)numberOfSharesOfDetectedScenesInPhotoWithConversation dictionaryRepresentation];
    [v4 setObject:v56 forKey:@"numberOfSharesOfDetectedScenesInPhotoWithConversation"];
  }

  numberOfTopicsSharedWithConversation = self->_numberOfTopicsSharedWithConversation;
  if (numberOfTopicsSharedWithConversation)
  {
    v58 = [(PeopleSuggesterFeatureDouble *)numberOfTopicsSharedWithConversation dictionaryRepresentation];
    [v4 setObject:v58 forKey:@"numberOfTopicsSharedWithConversation"];
  }

  numberOfAppsSharedFromWithConversation = self->_numberOfAppsSharedFromWithConversation;
  if (numberOfAppsSharedFromWithConversation)
  {
    v60 = [(PeopleSuggesterFeatureDouble *)numberOfAppsSharedFromWithConversation dictionaryRepresentation];
    [v4 setObject:v60 forKey:@"numberOfAppsSharedFromWithConversation"];
  }

  timeSinceLastPhotoShareWithConversation = self->_timeSinceLastPhotoShareWithConversation;
  if (timeSinceLastPhotoShareWithConversation)
  {
    v62 = [(PeopleSuggesterFeatureDouble *)timeSinceLastPhotoShareWithConversation dictionaryRepresentation];
    [v4 setObject:v62 forKey:@"timeSinceLastPhotoShareWithConversation"];
  }

  hasSharedSensitiveContentWIthConversation = self->_hasSharedSensitiveContentWIthConversation;
  if (hasSharedSensitiveContentWIthConversation)
  {
    v64 = [(PeopleSuggesterFeatureDouble *)hasSharedSensitiveContentWIthConversation dictionaryRepresentation];
    [v4 setObject:v64 forKey:@"hasSharedSensitiveContentWIthConversation"];
  }

  if ((*&self->_has & 0x200) != 0)
  {
    v65 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInPhoneCallWithConversation];
    [v4 setObject:v65 forKey:@"isInPhoneCallWithConversation"];
  }

  numberOfSharesFromAlbumPhotoBelongsToWithConversation = self->_numberOfSharesFromAlbumPhotoBelongsToWithConversation;
  if (numberOfSharesFromAlbumPhotoBelongsToWithConversation)
  {
    v67 = [(PeopleSuggesterFeatureDouble *)numberOfSharesFromAlbumPhotoBelongsToWithConversation dictionaryRepresentation];
    [v4 setObject:v67 forKey:@"numberOfSharesFromAlbumPhotoBelongsToWithConversation"];
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v68 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFirstPartyApp];
    [v4 setObject:v68 forKey:@"isFirstPartyApp"];
  }

  numberOfTimesSharedToTargetAppWithConversation = self->_numberOfTimesSharedToTargetAppWithConversation;
  if (numberOfTimesSharedToTargetAppWithConversation)
  {
    v70 = [(PeopleSuggesterFeatureDouble *)numberOfTimesSharedToTargetAppWithConversation dictionaryRepresentation];
    [v4 setObject:v70 forKey:@"numberOfTimesSharedToTargetAppWithConversation"];
  }

  timeSinceLastShareWithConversation = self->_timeSinceLastShareWithConversation;
  if (timeSinceLastShareWithConversation)
  {
    v72 = [(PeopleSuggesterFeatureDouble *)timeSinceLastShareWithConversation dictionaryRepresentation];
    [v4 setObject:v72 forKey:@"timeSinceLastShareWithConversation"];
  }

  timeSinceLastPhoneCallWithConversation = self->_timeSinceLastPhoneCallWithConversation;
  if (timeSinceLastPhoneCallWithConversation)
  {
    v74 = [(PeopleSuggesterFeatureDouble *)timeSinceLastPhoneCallWithConversation dictionaryRepresentation];
    [v4 setObject:v74 forKey:@"timeSinceLastPhoneCallWithConversation"];
  }

  numberOfDifferentFacesSharedWithConversation = self->_numberOfDifferentFacesSharedWithConversation;
  if (numberOfDifferentFacesSharedWithConversation)
  {
    v76 = [(PeopleSuggesterFeatureDouble *)numberOfDifferentFacesSharedWithConversation dictionaryRepresentation];
    [v4 setObject:v76 forKey:@"numberOfDifferentFacesSharedWithConversation"];
  }

  numberOfTotalSharesToTargetApp = self->_numberOfTotalSharesToTargetApp;
  if (numberOfTotalSharesToTargetApp)
  {
    v78 = [(PeopleSuggesterFeatureDouble *)numberOfTotalSharesToTargetApp dictionaryRepresentation];
    [v4 setObject:v78 forKey:@"numberOfTotalSharesToTargetApp"];
  }

  v79 = v4;

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v17 = v4;
  if (self->_privatizedIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    feedbackDeprecated = self->_feedbackDeprecated;
    PBDataWriterWriteInt32Field();
    v4 = v17;
  }

  if (self->_privatizedTransportBundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_timeSinceLastOutgoingInteraction)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_timeSinceOutgoingInteractionNumber10)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_timeSinceLastIncomingInteraction)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    deprecatedField1 = self->_deprecatedField1;
    PBDataWriterWriteDoubleField();
    v4 = v17;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_15:
      if ((has & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_15;
  }

  deprecatedField2 = self->_deprecatedField2;
  PBDataWriterWriteDoubleField();
  v4 = v17;
  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    deprecatedField3 = self->_deprecatedField3;
    PBDataWriterWriteDoubleField();
    v4 = v17;
  }

LABEL_17:
  if (self->_numberOfSharesWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfSharesFromCurrentAppWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfSharesOfTopDomainURLWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfSharesOfDetectedPeopleWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfSharesOfPeopleInPhotoWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfOutgoingInteractionsWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfIncomingInteractionsWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfInteractionsDuringTimePeriodWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfEngagedSuggestionsWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfEngagedSuggestionsFromCurrentAppWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfEngagedSuggestionsOfTopDomainURLWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfEngagedSuggestionsOfDetectedPeopleWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_hasEverSharePlayedWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  v8 = self->_has;
  if ((v8 & 0x40) != 0)
  {
    suggestedRank = self->_suggestedRank;
    PBDataWriterWriteInt32Field();
    v4 = v17;
    v8 = self->_has;
    if ((v8 & 1) == 0)
    {
LABEL_47:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_92;
    }
  }

  else if ((v8 & 1) == 0)
  {
    goto LABEL_47;
  }

  coreMLModelScore = self->_coreMLModelScore;
  PBDataWriterWriteDoubleField();
  v4 = v17;
  v8 = self->_has;
  if ((v8 & 0x20) == 0)
  {
LABEL_48:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_92:
  foundInChunk = self->_foundInChunk;
  PBDataWriterWriteInt32Field();
  v4 = v17;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_49:
    updatedInChunk = self->_updatedInChunk;
    PBDataWriterWriteInt32Field();
    v4 = v17;
  }

LABEL_50:
  if (self->_numberOfSharesOfPeopleInPhotoIoUWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfSharesOfPetsWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfSharesOfPetsInCurrentPhotoWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfSharesOfScenesInPhotoWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfSharesOfDetectedScenesInPhotoWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfTopicsSharedWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfAppsSharedFromWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_timeSinceLastPhotoShareWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_hasSharedSensitiveContentWIthConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    isInPhoneCallWithConversation = self->_isInPhoneCallWithConversation;
    PBDataWriterWriteBOOLField();
    v4 = v17;
  }

  if (self->_numberOfSharesFromAlbumPhotoBelongsToWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    isFirstPartyApp = self->_isFirstPartyApp;
    PBDataWriterWriteBOOLField();
    v4 = v17;
  }

  if (self->_numberOfTimesSharedToTargetAppWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_timeSinceLastShareWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_timeSinceLastPhoneCallWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfDifferentFacesSharedWithConversation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_numberOfTotalSharesToTargetApp)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_privatizedIdentifier)
  {
    [v4 setPrivatizedIdentifier:?];
    v4 = v7;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v4 + 10) = self->_feedbackDeprecated;
    *(v4 + 168) |= 0x10u;
  }

  if (self->_privatizedTransportBundleId)
  {
    [v7 setPrivatizedTransportBundleId:?];
    v4 = v7;
  }

  if (self->_timeSinceLastOutgoingInteraction)
  {
    [v7 setTimeSinceLastOutgoingInteraction:?];
    v4 = v7;
  }

  if (self->_timeSinceOutgoingInteractionNumber10)
  {
    [v7 setTimeSinceOutgoingInteractionNumber10:?];
    v4 = v7;
  }

  if (self->_timeSinceLastIncomingInteraction)
  {
    [v7 setTimeSinceLastIncomingInteraction:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = *&self->_deprecatedField1;
    *(v4 + 168) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_15:
      if ((has & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_15;
  }

  *(v4 + 3) = *&self->_deprecatedField2;
  *(v4 + 168) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    *(v4 + 4) = *&self->_deprecatedField3;
    *(v4 + 168) |= 8u;
  }

LABEL_17:
  if (self->_numberOfSharesWithConversation)
  {
    [v7 setNumberOfSharesWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfSharesFromCurrentAppWithConversation)
  {
    [v7 setNumberOfSharesFromCurrentAppWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfSharesOfTopDomainURLWithConversation)
  {
    [v7 setNumberOfSharesOfTopDomainURLWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfSharesOfDetectedPeopleWithConversation)
  {
    [v7 setNumberOfSharesOfDetectedPeopleWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfSharesOfPeopleInPhotoWithConversation)
  {
    [v7 setNumberOfSharesOfPeopleInPhotoWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfOutgoingInteractionsWithConversation)
  {
    [v7 setNumberOfOutgoingInteractionsWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfIncomingInteractionsWithConversation)
  {
    [v7 setNumberOfIncomingInteractionsWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfInteractionsDuringTimePeriodWithConversation)
  {
    [v7 setNumberOfInteractionsDuringTimePeriodWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfEngagedSuggestionsWithConversation)
  {
    [v7 setNumberOfEngagedSuggestionsWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfEngagedSuggestionsFromCurrentAppWithConversation)
  {
    [v7 setNumberOfEngagedSuggestionsFromCurrentAppWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfEngagedSuggestionsOfTopDomainURLWithConversation)
  {
    [v7 setNumberOfEngagedSuggestionsOfTopDomainURLWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfEngagedSuggestionsOfDetectedPeopleWithConversation)
  {
    [v7 setNumberOfEngagedSuggestionsOfDetectedPeopleWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation)
  {
    [v7 setNumberOfEngagedSuggestionsOfPeopleInPhotoWithConversation:?];
    v4 = v7;
  }

  if (self->_hasEverSharePlayedWithConversation)
  {
    [v7 setHasEverSharePlayedWithConversation:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    *(v4 + 68) = self->_suggestedRank;
    *(v4 + 168) |= 0x40u;
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_47:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_92;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_47;
  }

  *(v4 + 1) = *&self->_coreMLModelScore;
  *(v4 + 168) |= 1u;
  v6 = self->_has;
  if ((v6 & 0x20) == 0)
  {
LABEL_48:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_92:
  *(v4 + 11) = self->_foundInChunk;
  *(v4 + 168) |= 0x20u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_49:
    *(v4 + 82) = self->_updatedInChunk;
    *(v4 + 168) |= 0x80u;
  }

LABEL_50:
  if (self->_numberOfSharesOfPeopleInPhotoIoUWithConversation)
  {
    [v7 setNumberOfSharesOfPeopleInPhotoIoUWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfSharesOfPetsWithConversation)
  {
    [v7 setNumberOfSharesOfPetsWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfSharesOfPetsInCurrentPhotoWithConversation)
  {
    [v7 setNumberOfSharesOfPetsInCurrentPhotoWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfSharesOfScenesInPhotoWithConversation)
  {
    [v7 setNumberOfSharesOfScenesInPhotoWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfSharesOfDetectedScenesInPhotoWithConversation)
  {
    [v7 setNumberOfSharesOfDetectedScenesInPhotoWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfTopicsSharedWithConversation)
  {
    [v7 setNumberOfTopicsSharedWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfAppsSharedFromWithConversation)
  {
    [v7 setNumberOfAppsSharedFromWithConversation:?];
    v4 = v7;
  }

  if (self->_timeSinceLastPhotoShareWithConversation)
  {
    [v7 setTimeSinceLastPhotoShareWithConversation:?];
    v4 = v7;
  }

  if (self->_hasSharedSensitiveContentWIthConversation)
  {
    [v7 setHasSharedSensitiveContentWIthConversation:?];
    v4 = v7;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    *(v4 + 333) = self->_isInPhoneCallWithConversation;
    *(v4 + 168) |= 0x200u;
  }

  if (self->_numberOfSharesFromAlbumPhotoBelongsToWithConversation)
  {
    [v7 setNumberOfSharesFromAlbumPhotoBelongsToWithConversation:?];
    v4 = v7;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    *(v4 + 332) = self->_isFirstPartyApp;
    *(v4 + 168) |= 0x100u;
  }

  if (self->_numberOfTimesSharedToTargetAppWithConversation)
  {
    [v7 setNumberOfTimesSharedToTargetAppWithConversation:?];
    v4 = v7;
  }

  if (self->_timeSinceLastShareWithConversation)
  {
    [v7 setTimeSinceLastShareWithConversation:?];
    v4 = v7;
  }

  if (self->_timeSinceLastPhoneCallWithConversation)
  {
    [v7 setTimeSinceLastPhoneCallWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfDifferentFacesSharedWithConversation)
  {
    [v7 setNumberOfDifferentFacesSharedWithConversation:?];
    v4 = v7;
  }

  if (self->_numberOfTotalSharesToTargetApp)
  {
    [v7 setNumberOfTotalSharesToTargetApp:?];
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_privatizedIdentifier copyWithZone:a3];
  v7 = *(v5 + 256);
  *(v5 + 256) = v6;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 40) = self->_feedbackDeprecated;
    *(v5 + 336) |= 0x10u;
  }

  v8 = [(NSString *)self->_privatizedTransportBundleId copyWithZone:a3];
  v9 = *(v5 + 264);
  *(v5 + 264) = v8;

  v10 = [(PeopleSuggesterFeatureDouble *)self->_timeSinceLastOutgoingInteraction copyWithZone:a3];
  v11 = *(v5 + 288);
  *(v5 + 288) = v10;

  v12 = [(PeopleSuggesterFeatureDouble *)self->_timeSinceOutgoingInteractionNumber10 copyWithZone:a3];
  v13 = *(v5 + 320);
  *(v5 + 320) = v12;

  v14 = [(PeopleSuggesterFeatureDouble *)self->_timeSinceLastIncomingInteraction copyWithZone:a3];
  v15 = *(v5 + 280);
  *(v5 + 280) = v14;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_deprecatedField1;
    *(v5 + 336) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 24) = self->_deprecatedField2;
  *(v5 + 336) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    *(v5 + 32) = self->_deprecatedField3;
    *(v5 + 336) |= 8u;
  }

LABEL_7:
  v17 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesWithConversation copyWithZone:a3];
  v18 = *(v5 + 224);
  *(v5 + 224) = v17;

  v19 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesFromCurrentAppWithConversation copyWithZone:a3];
  v20 = *(v5 + 152);
  *(v5 + 152) = v19;

  v21 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesOfTopDomainURLWithConversation copyWithZone:a3];
  v22 = *(v5 + 216);
  *(v5 + 216) = v21;

  v23 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesOfDetectedPeopleWithConversation copyWithZone:a3];
  v24 = *(v5 + 160);
  *(v5 + 160) = v23;

  v25 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesOfPeopleInPhotoWithConversation copyWithZone:a3];
  v26 = *(v5 + 184);
  *(v5 + 184) = v25;

  v27 = [(PeopleSuggesterFeatureDouble *)self->_numberOfOutgoingInteractionsWithConversation copyWithZone:a3];
  v28 = *(v5 + 136);
  *(v5 + 136) = v27;

  v29 = [(PeopleSuggesterFeatureDouble *)self->_numberOfIncomingInteractionsWithConversation copyWithZone:a3];
  v30 = *(v5 + 120);
  *(v5 + 120) = v29;

  v31 = [(PeopleSuggesterFeatureDouble *)self->_numberOfInteractionsDuringTimePeriodWithConversation copyWithZone:a3];
  v32 = *(v5 + 128);
  *(v5 + 128) = v31;

  v33 = [(PeopleSuggesterFeatureDouble *)self->_numberOfEngagedSuggestionsWithConversation copyWithZone:a3];
  v34 = *(v5 + 112);
  *(v5 + 112) = v33;

  v35 = [(PeopleSuggesterFeatureDouble *)self->_numberOfEngagedSuggestionsFromCurrentAppWithConversation copyWithZone:a3];
  v36 = *(v5 + 80);
  *(v5 + 80) = v35;

  v37 = [(PeopleSuggesterFeatureDouble *)self->_numberOfEngagedSuggestionsOfTopDomainURLWithConversation copyWithZone:a3];
  v38 = *(v5 + 104);
  *(v5 + 104) = v37;

  v39 = [(PeopleSuggesterFeatureDouble *)self->_numberOfEngagedSuggestionsOfDetectedPeopleWithConversation copyWithZone:a3];
  v40 = *(v5 + 88);
  *(v5 + 88) = v39;

  v41 = [(PeopleSuggesterFeatureDouble *)self->_numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation copyWithZone:a3];
  v42 = *(v5 + 96);
  *(v5 + 96) = v41;

  v43 = [(PeopleSuggesterFeatureDouble *)self->_hasEverSharePlayedWithConversation copyWithZone:a3];
  v44 = *(v5 + 48);
  *(v5 + 48) = v43;

  v45 = self->_has;
  if ((v45 & 0x40) != 0)
  {
    *(v5 + 272) = self->_suggestedRank;
    *(v5 + 336) |= 0x40u;
    v45 = self->_has;
    if ((v45 & 1) == 0)
    {
LABEL_9:
      if ((v45 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v45 & 1) == 0)
  {
    goto LABEL_9;
  }

  *(v5 + 8) = self->_coreMLModelScore;
  *(v5 + 336) |= 1u;
  v45 = self->_has;
  if ((v45 & 0x20) == 0)
  {
LABEL_10:
    if ((v45 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_22:
  *(v5 + 44) = self->_foundInChunk;
  *(v5 + 336) |= 0x20u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_11:
    *(v5 + 328) = self->_updatedInChunk;
    *(v5 + 336) |= 0x80u;
  }

LABEL_12:
  v46 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesOfPeopleInPhotoIoUWithConversation copyWithZone:a3];
  v47 = *(v5 + 176);
  *(v5 + 176) = v46;

  v48 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesOfPetsWithConversation copyWithZone:a3];
  v49 = *(v5 + 200);
  *(v5 + 200) = v48;

  v50 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesOfPetsInCurrentPhotoWithConversation copyWithZone:a3];
  v51 = *(v5 + 192);
  *(v5 + 192) = v50;

  v52 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesOfScenesInPhotoWithConversation copyWithZone:a3];
  v53 = *(v5 + 208);
  *(v5 + 208) = v52;

  v54 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesOfDetectedScenesInPhotoWithConversation copyWithZone:a3];
  v55 = *(v5 + 168);
  *(v5 + 168) = v54;

  v56 = [(PeopleSuggesterFeatureDouble *)self->_numberOfTopicsSharedWithConversation copyWithZone:a3];
  v57 = *(v5 + 240);
  *(v5 + 240) = v56;

  v58 = [(PeopleSuggesterFeatureDouble *)self->_numberOfAppsSharedFromWithConversation copyWithZone:a3];
  v59 = *(v5 + 64);
  *(v5 + 64) = v58;

  v60 = [(PeopleSuggesterFeatureDouble *)self->_timeSinceLastPhotoShareWithConversation copyWithZone:a3];
  v61 = *(v5 + 304);
  *(v5 + 304) = v60;

  v62 = [(PeopleSuggesterFeatureDouble *)self->_hasSharedSensitiveContentWIthConversation copyWithZone:a3];
  v63 = *(v5 + 56);
  *(v5 + 56) = v62;

  if ((*&self->_has & 0x200) != 0)
  {
    *(v5 + 333) = self->_isInPhoneCallWithConversation;
    *(v5 + 336) |= 0x200u;
  }

  v64 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesFromAlbumPhotoBelongsToWithConversation copyWithZone:a3];
  v65 = *(v5 + 144);
  *(v5 + 144) = v64;

  if ((*&self->_has & 0x100) != 0)
  {
    *(v5 + 332) = self->_isFirstPartyApp;
    *(v5 + 336) |= 0x100u;
  }

  v66 = [(PeopleSuggesterFeatureDouble *)self->_numberOfTimesSharedToTargetAppWithConversation copyWithZone:a3];
  v67 = *(v5 + 232);
  *(v5 + 232) = v66;

  v68 = [(PeopleSuggesterFeatureDouble *)self->_timeSinceLastShareWithConversation copyWithZone:a3];
  v69 = *(v5 + 312);
  *(v5 + 312) = v68;

  v70 = [(PeopleSuggesterFeatureDouble *)self->_timeSinceLastPhoneCallWithConversation copyWithZone:a3];
  v71 = *(v5 + 296);
  *(v5 + 296) = v70;

  v72 = [(PeopleSuggesterFeatureDouble *)self->_numberOfDifferentFacesSharedWithConversation copyWithZone:a3];
  v73 = *(v5 + 72);
  *(v5 + 72) = v72;

  v74 = [(PeopleSuggesterFeatureDouble *)self->_numberOfTotalSharesToTargetApp copyWithZone:a3];
  v75 = *(v5 + 248);
  *(v5 + 248) = v74;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_122;
  }

  privatizedIdentifier = self->_privatizedIdentifier;
  if (privatizedIdentifier | *(v4 + 32))
  {
    if (![(NSString *)privatizedIdentifier isEqual:?])
    {
      goto LABEL_122;
    }
  }

  v6 = *(v4 + 168);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_feedbackDeprecated != *(v4 + 10))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_122;
  }

  privatizedTransportBundleId = self->_privatizedTransportBundleId;
  if (privatizedTransportBundleId | *(v4 + 33) && ![(NSString *)privatizedTransportBundleId isEqual:?])
  {
    goto LABEL_122;
  }

  timeSinceLastOutgoingInteraction = self->_timeSinceLastOutgoingInteraction;
  if (timeSinceLastOutgoingInteraction | *(v4 + 36))
  {
    if (![(PeopleSuggesterFeatureDouble *)timeSinceLastOutgoingInteraction isEqual:?])
    {
      goto LABEL_122;
    }
  }

  timeSinceOutgoingInteractionNumber10 = self->_timeSinceOutgoingInteractionNumber10;
  if (timeSinceOutgoingInteractionNumber10 | *(v4 + 40))
  {
    if (![(PeopleSuggesterFeatureDouble *)timeSinceOutgoingInteractionNumber10 isEqual:?])
    {
      goto LABEL_122;
    }
  }

  timeSinceLastIncomingInteraction = self->_timeSinceLastIncomingInteraction;
  if (timeSinceLastIncomingInteraction | *(v4 + 35))
  {
    if (![(PeopleSuggesterFeatureDouble *)timeSinceLastIncomingInteraction isEqual:?])
    {
      goto LABEL_122;
    }
  }

  has = self->_has;
  v12 = *(v4 + 168);
  if ((has & 2) != 0)
  {
    if ((v12 & 2) == 0 || self->_deprecatedField1 != *(v4 + 2))
    {
      goto LABEL_122;
    }
  }

  else if ((v12 & 2) != 0)
  {
    goto LABEL_122;
  }

  if ((has & 4) != 0)
  {
    if ((v12 & 4) == 0 || self->_deprecatedField2 != *(v4 + 3))
    {
      goto LABEL_122;
    }
  }

  else if ((v12 & 4) != 0)
  {
    goto LABEL_122;
  }

  if ((has & 8) != 0)
  {
    if ((v12 & 8) == 0 || self->_deprecatedField3 != *(v4 + 4))
    {
      goto LABEL_122;
    }
  }

  else if ((v12 & 8) != 0)
  {
    goto LABEL_122;
  }

  numberOfSharesWithConversation = self->_numberOfSharesWithConversation;
  if (numberOfSharesWithConversation | *(v4 + 28) && ![(PeopleSuggesterFeatureDouble *)numberOfSharesWithConversation isEqual:?])
  {
    goto LABEL_122;
  }

  numberOfSharesFromCurrentAppWithConversation = self->_numberOfSharesFromCurrentAppWithConversation;
  if (numberOfSharesFromCurrentAppWithConversation | *(v4 + 19))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfSharesFromCurrentAppWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  numberOfSharesOfTopDomainURLWithConversation = self->_numberOfSharesOfTopDomainURLWithConversation;
  if (numberOfSharesOfTopDomainURLWithConversation | *(v4 + 27))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfSharesOfTopDomainURLWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  numberOfSharesOfDetectedPeopleWithConversation = self->_numberOfSharesOfDetectedPeopleWithConversation;
  if (numberOfSharesOfDetectedPeopleWithConversation | *(v4 + 20))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfSharesOfDetectedPeopleWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  numberOfSharesOfPeopleInPhotoWithConversation = self->_numberOfSharesOfPeopleInPhotoWithConversation;
  if (numberOfSharesOfPeopleInPhotoWithConversation | *(v4 + 23))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfSharesOfPeopleInPhotoWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  numberOfOutgoingInteractionsWithConversation = self->_numberOfOutgoingInteractionsWithConversation;
  if (numberOfOutgoingInteractionsWithConversation | *(v4 + 17))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfOutgoingInteractionsWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  numberOfIncomingInteractionsWithConversation = self->_numberOfIncomingInteractionsWithConversation;
  if (numberOfIncomingInteractionsWithConversation | *(v4 + 15))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfIncomingInteractionsWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  numberOfInteractionsDuringTimePeriodWithConversation = self->_numberOfInteractionsDuringTimePeriodWithConversation;
  if (numberOfInteractionsDuringTimePeriodWithConversation | *(v4 + 16))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfInteractionsDuringTimePeriodWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  numberOfEngagedSuggestionsWithConversation = self->_numberOfEngagedSuggestionsWithConversation;
  if (numberOfEngagedSuggestionsWithConversation | *(v4 + 14))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfEngagedSuggestionsWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  numberOfEngagedSuggestionsFromCurrentAppWithConversation = self->_numberOfEngagedSuggestionsFromCurrentAppWithConversation;
  if (numberOfEngagedSuggestionsFromCurrentAppWithConversation | *(v4 + 10))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfEngagedSuggestionsFromCurrentAppWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  numberOfEngagedSuggestionsOfTopDomainURLWithConversation = self->_numberOfEngagedSuggestionsOfTopDomainURLWithConversation;
  if (numberOfEngagedSuggestionsOfTopDomainURLWithConversation | *(v4 + 13))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfEngagedSuggestionsOfTopDomainURLWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  numberOfEngagedSuggestionsOfDetectedPeopleWithConversation = self->_numberOfEngagedSuggestionsOfDetectedPeopleWithConversation;
  if (numberOfEngagedSuggestionsOfDetectedPeopleWithConversation | *(v4 + 11))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfEngagedSuggestionsOfDetectedPeopleWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation = self->_numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation;
  if (numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation | *(v4 + 12))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  hasEverSharePlayedWithConversation = self->_hasEverSharePlayedWithConversation;
  if (hasEverSharePlayedWithConversation | *(v4 + 6))
  {
    if (![(PeopleSuggesterFeatureDouble *)hasEverSharePlayedWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  v27 = self->_has;
  v28 = *(v4 + 168);
  if ((v27 & 0x40) != 0)
  {
    if ((v28 & 0x40) == 0 || self->_suggestedRank != *(v4 + 68))
    {
      goto LABEL_122;
    }
  }

  else if ((v28 & 0x40) != 0)
  {
    goto LABEL_122;
  }

  if (v27)
  {
    if ((v28 & 1) == 0 || self->_coreMLModelScore != *(v4 + 1))
    {
      goto LABEL_122;
    }
  }

  else if (v28)
  {
    goto LABEL_122;
  }

  if ((v27 & 0x20) != 0)
  {
    if ((v28 & 0x20) == 0 || self->_foundInChunk != *(v4 + 11))
    {
      goto LABEL_122;
    }
  }

  else if ((v28 & 0x20) != 0)
  {
    goto LABEL_122;
  }

  if ((v27 & 0x80) != 0)
  {
    if ((v28 & 0x80) == 0 || self->_updatedInChunk != *(v4 + 82))
    {
      goto LABEL_122;
    }
  }

  else if ((v28 & 0x80) != 0)
  {
    goto LABEL_122;
  }

  numberOfSharesOfPeopleInPhotoIoUWithConversation = self->_numberOfSharesOfPeopleInPhotoIoUWithConversation;
  if (numberOfSharesOfPeopleInPhotoIoUWithConversation | *(v4 + 22) && ![(PeopleSuggesterFeatureDouble *)numberOfSharesOfPeopleInPhotoIoUWithConversation isEqual:?])
  {
    goto LABEL_122;
  }

  numberOfSharesOfPetsWithConversation = self->_numberOfSharesOfPetsWithConversation;
  if (numberOfSharesOfPetsWithConversation | *(v4 + 25))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfSharesOfPetsWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  numberOfSharesOfPetsInCurrentPhotoWithConversation = self->_numberOfSharesOfPetsInCurrentPhotoWithConversation;
  if (numberOfSharesOfPetsInCurrentPhotoWithConversation | *(v4 + 24))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfSharesOfPetsInCurrentPhotoWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  numberOfSharesOfScenesInPhotoWithConversation = self->_numberOfSharesOfScenesInPhotoWithConversation;
  if (numberOfSharesOfScenesInPhotoWithConversation | *(v4 + 26))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfSharesOfScenesInPhotoWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  numberOfSharesOfDetectedScenesInPhotoWithConversation = self->_numberOfSharesOfDetectedScenesInPhotoWithConversation;
  if (numberOfSharesOfDetectedScenesInPhotoWithConversation | *(v4 + 21))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfSharesOfDetectedScenesInPhotoWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  numberOfTopicsSharedWithConversation = self->_numberOfTopicsSharedWithConversation;
  if (numberOfTopicsSharedWithConversation | *(v4 + 30))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfTopicsSharedWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  numberOfAppsSharedFromWithConversation = self->_numberOfAppsSharedFromWithConversation;
  if (numberOfAppsSharedFromWithConversation | *(v4 + 8))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfAppsSharedFromWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  timeSinceLastPhotoShareWithConversation = self->_timeSinceLastPhotoShareWithConversation;
  if (timeSinceLastPhotoShareWithConversation | *(v4 + 38))
  {
    if (![(PeopleSuggesterFeatureDouble *)timeSinceLastPhotoShareWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  hasSharedSensitiveContentWIthConversation = self->_hasSharedSensitiveContentWIthConversation;
  if (hasSharedSensitiveContentWIthConversation | *(v4 + 7))
  {
    if (![(PeopleSuggesterFeatureDouble *)hasSharedSensitiveContentWIthConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  v38 = self->_has;
  v39 = *(v4 + 168);
  if ((v38 & 0x200) != 0)
  {
    if ((*(v4 + 168) & 0x200) == 0)
    {
      goto LABEL_122;
    }

    v40 = *(v4 + 333);
    if (self->_isInPhoneCallWithConversation)
    {
      if ((*(v4 + 333) & 1) == 0)
      {
        goto LABEL_122;
      }
    }

    else if (*(v4 + 333))
    {
      goto LABEL_122;
    }
  }

  else if ((*(v4 + 168) & 0x200) != 0)
  {
    goto LABEL_122;
  }

  numberOfSharesFromAlbumPhotoBelongsToWithConversation = self->_numberOfSharesFromAlbumPhotoBelongsToWithConversation;
  if (numberOfSharesFromAlbumPhotoBelongsToWithConversation | *(v4 + 18))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfSharesFromAlbumPhotoBelongsToWithConversation isEqual:?])
    {
      goto LABEL_122;
    }

    v38 = self->_has;
  }

  v42 = *(v4 + 168);
  if ((v38 & 0x100) == 0)
  {
    if ((*(v4 + 168) & 0x100) == 0)
    {
      goto LABEL_111;
    }

LABEL_122:
    v48 = 0;
    goto LABEL_123;
  }

  if ((*(v4 + 168) & 0x100) == 0)
  {
    goto LABEL_122;
  }

  v50 = *(v4 + 332);
  if (self->_isFirstPartyApp)
  {
    if ((*(v4 + 332) & 1) == 0)
    {
      goto LABEL_122;
    }
  }

  else if (*(v4 + 332))
  {
    goto LABEL_122;
  }

LABEL_111:
  numberOfTimesSharedToTargetAppWithConversation = self->_numberOfTimesSharedToTargetAppWithConversation;
  if (numberOfTimesSharedToTargetAppWithConversation | *(v4 + 29) && ![(PeopleSuggesterFeatureDouble *)numberOfTimesSharedToTargetAppWithConversation isEqual:?])
  {
    goto LABEL_122;
  }

  timeSinceLastShareWithConversation = self->_timeSinceLastShareWithConversation;
  if (timeSinceLastShareWithConversation | *(v4 + 39))
  {
    if (![(PeopleSuggesterFeatureDouble *)timeSinceLastShareWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  timeSinceLastPhoneCallWithConversation = self->_timeSinceLastPhoneCallWithConversation;
  if (timeSinceLastPhoneCallWithConversation | *(v4 + 37))
  {
    if (![(PeopleSuggesterFeatureDouble *)timeSinceLastPhoneCallWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  numberOfDifferentFacesSharedWithConversation = self->_numberOfDifferentFacesSharedWithConversation;
  if (numberOfDifferentFacesSharedWithConversation | *(v4 + 9))
  {
    if (![(PeopleSuggesterFeatureDouble *)numberOfDifferentFacesSharedWithConversation isEqual:?])
    {
      goto LABEL_122;
    }
  }

  numberOfTotalSharesToTargetApp = self->_numberOfTotalSharesToTargetApp;
  if (numberOfTotalSharesToTargetApp | *(v4 + 31))
  {
    v48 = [(PeopleSuggesterFeatureDouble *)numberOfTotalSharesToTargetApp isEqual:?];
  }

  else
  {
    v48 = 1;
  }

LABEL_123:

  return v48;
}

- (unint64_t)hash
{
  v70 = [(NSString *)self->_privatizedIdentifier hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v69 = 2654435761 * self->_feedbackDeprecated;
  }

  else
  {
    v69 = 0;
  }

  v68 = [(NSString *)self->_privatizedTransportBundleId hash];
  v67 = [(PeopleSuggesterFeatureDouble *)self->_timeSinceLastOutgoingInteraction hash];
  v66 = [(PeopleSuggesterFeatureDouble *)self->_timeSinceOutgoingInteractionNumber10 hash];
  v65 = [(PeopleSuggesterFeatureDouble *)self->_timeSinceLastIncomingInteraction hash];
  has = self->_has;
  if ((has & 2) != 0)
  {
    deprecatedField1 = self->_deprecatedField1;
    if (deprecatedField1 < 0.0)
    {
      deprecatedField1 = -deprecatedField1;
    }

    *v3.i64 = floor(deprecatedField1 + 0.5);
    v8 = (deprecatedField1 - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v9), v4, v3);
    v6 = 2654435761u * *v3.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((has & 4) != 0)
  {
    deprecatedField2 = self->_deprecatedField2;
    if (deprecatedField2 < 0.0)
    {
      deprecatedField2 = -deprecatedField2;
    }

    *v3.i64 = floor(deprecatedField2 + 0.5);
    v11 = (deprecatedField2 - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v12), v4, v3);
    v13 = 2654435761u * *v3.i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v13 += v11;
      }
    }

    else
    {
      v13 -= fabs(v11);
    }

    v63 = v13;
  }

  else
  {
    v63 = 0;
  }

  v64 = v6;
  if ((has & 8) != 0)
  {
    deprecatedField3 = self->_deprecatedField3;
    if (deprecatedField3 < 0.0)
    {
      deprecatedField3 = -deprecatedField3;
    }

    *v3.i64 = floor(deprecatedField3 + 0.5);
    v15 = (deprecatedField3 - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v3.i64[0] = vbslq_s8(vnegq_f64(v16), v4, v3).i64[0];
    v17 = 2654435761u * *v3.i64;
    v18 = v17 + v15;
    if (v15 <= 0.0)
    {
      v18 = 2654435761u * *v3.i64;
    }

    v19 = v17 - fabs(v15);
    if (v15 >= 0.0)
    {
      v19 = v18;
    }

    v62 = v19;
  }

  else
  {
    v62 = 0;
  }

  v61 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesWithConversation hash];
  v60 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesFromCurrentAppWithConversation hash];
  v59 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesOfTopDomainURLWithConversation hash];
  v58 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesOfDetectedPeopleWithConversation hash];
  v57 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesOfPeopleInPhotoWithConversation hash];
  v56 = [(PeopleSuggesterFeatureDouble *)self->_numberOfOutgoingInteractionsWithConversation hash];
  v55 = [(PeopleSuggesterFeatureDouble *)self->_numberOfIncomingInteractionsWithConversation hash];
  v54 = [(PeopleSuggesterFeatureDouble *)self->_numberOfInteractionsDuringTimePeriodWithConversation hash];
  v53 = [(PeopleSuggesterFeatureDouble *)self->_numberOfEngagedSuggestionsWithConversation hash];
  v52 = [(PeopleSuggesterFeatureDouble *)self->_numberOfEngagedSuggestionsFromCurrentAppWithConversation hash];
  v51 = [(PeopleSuggesterFeatureDouble *)self->_numberOfEngagedSuggestionsOfTopDomainURLWithConversation hash];
  v50 = [(PeopleSuggesterFeatureDouble *)self->_numberOfEngagedSuggestionsOfDetectedPeopleWithConversation hash];
  v49 = [(PeopleSuggesterFeatureDouble *)self->_numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation hash];
  v48 = [(PeopleSuggesterFeatureDouble *)self->_hasEverSharePlayedWithConversation hash];
  v22 = self->_has;
  if ((v22 & 0x40) != 0)
  {
    v47 = 2654435761 * self->_suggestedRank;
    if (v22)
    {
      goto LABEL_32;
    }

LABEL_37:
    v26 = 0;
    goto LABEL_38;
  }

  v47 = 0;
  if ((v22 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_32:
  coreMLModelScore = self->_coreMLModelScore;
  if (coreMLModelScore < 0.0)
  {
    coreMLModelScore = -coreMLModelScore;
  }

  *v20.i64 = floor(coreMLModelScore + 0.5);
  v24 = (coreMLModelScore - *v20.i64) * 1.84467441e19;
  *v21.i64 = *v20.i64 - trunc(*v20.i64 * 5.42101086e-20) * 1.84467441e19;
  v25.f64[0] = NAN;
  v25.f64[1] = NAN;
  v26 = 2654435761u * *vbslq_s8(vnegq_f64(v25), v21, v20).i64;
  if (v24 >= 0.0)
  {
    if (v24 > 0.0)
    {
      v26 += v24;
    }
  }

  else
  {
    v26 -= fabs(v24);
  }

LABEL_38:
  if ((v22 & 0x20) != 0)
  {
    v45 = 2654435761 * self->_foundInChunk;
  }

  else
  {
    v45 = 0;
  }

  v46 = v26;
  if ((v22 & 0x80) != 0)
  {
    v44 = 2654435761 * self->_updatedInChunk;
  }

  else
  {
    v44 = 0;
  }

  v43 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesOfPeopleInPhotoIoUWithConversation hash];
  v42 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesOfPetsWithConversation hash];
  v41 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesOfPetsInCurrentPhotoWithConversation hash];
  v27 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesOfScenesInPhotoWithConversation hash];
  v28 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesOfDetectedScenesInPhotoWithConversation hash];
  v29 = [(PeopleSuggesterFeatureDouble *)self->_numberOfTopicsSharedWithConversation hash];
  v30 = [(PeopleSuggesterFeatureDouble *)self->_numberOfAppsSharedFromWithConversation hash];
  v31 = [(PeopleSuggesterFeatureDouble *)self->_timeSinceLastPhotoShareWithConversation hash];
  v32 = [(PeopleSuggesterFeatureDouble *)self->_hasSharedSensitiveContentWIthConversation hash];
  if ((*&self->_has & 0x200) != 0)
  {
    v33 = 2654435761 * self->_isInPhoneCallWithConversation;
  }

  else
  {
    v33 = 0;
  }

  v34 = [(PeopleSuggesterFeatureDouble *)self->_numberOfSharesFromAlbumPhotoBelongsToWithConversation hash];
  if ((*&self->_has & 0x100) != 0)
  {
    v35 = 2654435761 * self->_isFirstPartyApp;
  }

  else
  {
    v35 = 0;
  }

  v36 = v30 ^ v31 ^ v32 ^ v33 ^ v34 ^ v35 ^ [(PeopleSuggesterFeatureDouble *)self->_numberOfTimesSharedToTargetAppWithConversation hash];
  v37 = v69 ^ v70 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v27 ^ v28 ^ v29 ^ v36 ^ [(PeopleSuggesterFeatureDouble *)self->_timeSinceLastShareWithConversation hash];
  v38 = [(PeopleSuggesterFeatureDouble *)self->_timeSinceLastPhoneCallWithConversation hash];
  v39 = v38 ^ [(PeopleSuggesterFeatureDouble *)self->_numberOfDifferentFacesSharedWithConversation hash];
  return v37 ^ v39 ^ [(PeopleSuggesterFeatureDouble *)self->_numberOfTotalSharesToTargetApp hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v71 = v4;
  if (*(v4 + 32))
  {
    [(PeopleSuggesterCandidate *)self setPrivatizedIdentifier:?];
    v4 = v71;
  }

  if ((*(v4 + 168) & 0x10) != 0)
  {
    self->_feedbackDeprecated = *(v4 + 10);
    *&self->_has |= 0x10u;
  }

  if (*(v4 + 33))
  {
    [(PeopleSuggesterCandidate *)self setPrivatizedTransportBundleId:?];
    v4 = v71;
  }

  timeSinceLastOutgoingInteraction = self->_timeSinceLastOutgoingInteraction;
  v6 = *(v4 + 36);
  if (timeSinceLastOutgoingInteraction)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    [(PeopleSuggesterFeatureDouble *)timeSinceLastOutgoingInteraction mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    [(PeopleSuggesterCandidate *)self setTimeSinceLastOutgoingInteraction:?];
  }

  v4 = v71;
LABEL_13:
  timeSinceOutgoingInteractionNumber10 = self->_timeSinceOutgoingInteractionNumber10;
  v8 = *(v4 + 40);
  if (timeSinceOutgoingInteractionNumber10)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    [(PeopleSuggesterFeatureDouble *)timeSinceOutgoingInteractionNumber10 mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    [(PeopleSuggesterCandidate *)self setTimeSinceOutgoingInteractionNumber10:?];
  }

  v4 = v71;
LABEL_19:
  timeSinceLastIncomingInteraction = self->_timeSinceLastIncomingInteraction;
  v10 = *(v4 + 35);
  if (timeSinceLastIncomingInteraction)
  {
    if (!v10)
    {
      goto LABEL_25;
    }

    [(PeopleSuggesterFeatureDouble *)timeSinceLastIncomingInteraction mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_25;
    }

    [(PeopleSuggesterCandidate *)self setTimeSinceLastIncomingInteraction:?];
  }

  v4 = v71;
LABEL_25:
  v11 = *(v4 + 168);
  if ((v11 & 2) != 0)
  {
    self->_deprecatedField1 = *(v4 + 2);
    *&self->_has |= 2u;
    v11 = *(v4 + 168);
    if ((v11 & 4) == 0)
    {
LABEL_27:
      if ((v11 & 8) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((v11 & 4) == 0)
  {
    goto LABEL_27;
  }

  self->_deprecatedField2 = *(v4 + 3);
  *&self->_has |= 4u;
  if ((*(v4 + 168) & 8) != 0)
  {
LABEL_28:
    self->_deprecatedField3 = *(v4 + 4);
    *&self->_has |= 8u;
  }

LABEL_29:
  numberOfSharesWithConversation = self->_numberOfSharesWithConversation;
  v13 = *(v4 + 28);
  if (numberOfSharesWithConversation)
  {
    if (!v13)
    {
      goto LABEL_38;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfSharesWithConversation mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_38;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfSharesWithConversation:?];
  }

  v4 = v71;
LABEL_38:
  numberOfSharesFromCurrentAppWithConversation = self->_numberOfSharesFromCurrentAppWithConversation;
  v15 = *(v4 + 19);
  if (numberOfSharesFromCurrentAppWithConversation)
  {
    if (!v15)
    {
      goto LABEL_44;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfSharesFromCurrentAppWithConversation mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_44;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfSharesFromCurrentAppWithConversation:?];
  }

  v4 = v71;
LABEL_44:
  numberOfSharesOfTopDomainURLWithConversation = self->_numberOfSharesOfTopDomainURLWithConversation;
  v17 = *(v4 + 27);
  if (numberOfSharesOfTopDomainURLWithConversation)
  {
    if (!v17)
    {
      goto LABEL_50;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfSharesOfTopDomainURLWithConversation mergeFrom:?];
  }

  else
  {
    if (!v17)
    {
      goto LABEL_50;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfSharesOfTopDomainURLWithConversation:?];
  }

  v4 = v71;
LABEL_50:
  numberOfSharesOfDetectedPeopleWithConversation = self->_numberOfSharesOfDetectedPeopleWithConversation;
  v19 = *(v4 + 20);
  if (numberOfSharesOfDetectedPeopleWithConversation)
  {
    if (!v19)
    {
      goto LABEL_56;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfSharesOfDetectedPeopleWithConversation mergeFrom:?];
  }

  else
  {
    if (!v19)
    {
      goto LABEL_56;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfSharesOfDetectedPeopleWithConversation:?];
  }

  v4 = v71;
LABEL_56:
  numberOfSharesOfPeopleInPhotoWithConversation = self->_numberOfSharesOfPeopleInPhotoWithConversation;
  v21 = *(v4 + 23);
  if (numberOfSharesOfPeopleInPhotoWithConversation)
  {
    if (!v21)
    {
      goto LABEL_62;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfSharesOfPeopleInPhotoWithConversation mergeFrom:?];
  }

  else
  {
    if (!v21)
    {
      goto LABEL_62;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfSharesOfPeopleInPhotoWithConversation:?];
  }

  v4 = v71;
LABEL_62:
  numberOfOutgoingInteractionsWithConversation = self->_numberOfOutgoingInteractionsWithConversation;
  v23 = *(v4 + 17);
  if (numberOfOutgoingInteractionsWithConversation)
  {
    if (!v23)
    {
      goto LABEL_68;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfOutgoingInteractionsWithConversation mergeFrom:?];
  }

  else
  {
    if (!v23)
    {
      goto LABEL_68;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfOutgoingInteractionsWithConversation:?];
  }

  v4 = v71;
LABEL_68:
  numberOfIncomingInteractionsWithConversation = self->_numberOfIncomingInteractionsWithConversation;
  v25 = *(v4 + 15);
  if (numberOfIncomingInteractionsWithConversation)
  {
    if (!v25)
    {
      goto LABEL_74;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfIncomingInteractionsWithConversation mergeFrom:?];
  }

  else
  {
    if (!v25)
    {
      goto LABEL_74;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfIncomingInteractionsWithConversation:?];
  }

  v4 = v71;
LABEL_74:
  numberOfInteractionsDuringTimePeriodWithConversation = self->_numberOfInteractionsDuringTimePeriodWithConversation;
  v27 = *(v4 + 16);
  if (numberOfInteractionsDuringTimePeriodWithConversation)
  {
    if (!v27)
    {
      goto LABEL_80;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfInteractionsDuringTimePeriodWithConversation mergeFrom:?];
  }

  else
  {
    if (!v27)
    {
      goto LABEL_80;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfInteractionsDuringTimePeriodWithConversation:?];
  }

  v4 = v71;
LABEL_80:
  numberOfEngagedSuggestionsWithConversation = self->_numberOfEngagedSuggestionsWithConversation;
  v29 = *(v4 + 14);
  if (numberOfEngagedSuggestionsWithConversation)
  {
    if (!v29)
    {
      goto LABEL_86;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfEngagedSuggestionsWithConversation mergeFrom:?];
  }

  else
  {
    if (!v29)
    {
      goto LABEL_86;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfEngagedSuggestionsWithConversation:?];
  }

  v4 = v71;
LABEL_86:
  numberOfEngagedSuggestionsFromCurrentAppWithConversation = self->_numberOfEngagedSuggestionsFromCurrentAppWithConversation;
  v31 = *(v4 + 10);
  if (numberOfEngagedSuggestionsFromCurrentAppWithConversation)
  {
    if (!v31)
    {
      goto LABEL_92;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfEngagedSuggestionsFromCurrentAppWithConversation mergeFrom:?];
  }

  else
  {
    if (!v31)
    {
      goto LABEL_92;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfEngagedSuggestionsFromCurrentAppWithConversation:?];
  }

  v4 = v71;
LABEL_92:
  numberOfEngagedSuggestionsOfTopDomainURLWithConversation = self->_numberOfEngagedSuggestionsOfTopDomainURLWithConversation;
  v33 = *(v4 + 13);
  if (numberOfEngagedSuggestionsOfTopDomainURLWithConversation)
  {
    if (!v33)
    {
      goto LABEL_98;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfEngagedSuggestionsOfTopDomainURLWithConversation mergeFrom:?];
  }

  else
  {
    if (!v33)
    {
      goto LABEL_98;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfEngagedSuggestionsOfTopDomainURLWithConversation:?];
  }

  v4 = v71;
LABEL_98:
  numberOfEngagedSuggestionsOfDetectedPeopleWithConversation = self->_numberOfEngagedSuggestionsOfDetectedPeopleWithConversation;
  v35 = *(v4 + 11);
  if (numberOfEngagedSuggestionsOfDetectedPeopleWithConversation)
  {
    if (!v35)
    {
      goto LABEL_104;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfEngagedSuggestionsOfDetectedPeopleWithConversation mergeFrom:?];
  }

  else
  {
    if (!v35)
    {
      goto LABEL_104;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfEngagedSuggestionsOfDetectedPeopleWithConversation:?];
  }

  v4 = v71;
LABEL_104:
  numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation = self->_numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation;
  v37 = *(v4 + 12);
  if (numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation)
  {
    if (!v37)
    {
      goto LABEL_110;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation mergeFrom:?];
  }

  else
  {
    if (!v37)
    {
      goto LABEL_110;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfEngagedSuggestionsOfPeopleInPhotoWithConversation:?];
  }

  v4 = v71;
LABEL_110:
  hasEverSharePlayedWithConversation = self->_hasEverSharePlayedWithConversation;
  v39 = *(v4 + 6);
  if (hasEverSharePlayedWithConversation)
  {
    if (!v39)
    {
      goto LABEL_116;
    }

    [(PeopleSuggesterFeatureDouble *)hasEverSharePlayedWithConversation mergeFrom:?];
  }

  else
  {
    if (!v39)
    {
      goto LABEL_116;
    }

    [(PeopleSuggesterCandidate *)self setHasEverSharePlayedWithConversation:?];
  }

  v4 = v71;
LABEL_116:
  v40 = *(v4 + 168);
  if ((v40 & 0x40) != 0)
  {
    self->_suggestedRank = *(v4 + 68);
    *&self->_has |= 0x40u;
    v40 = *(v4 + 168);
    if ((v40 & 1) == 0)
    {
LABEL_118:
      if ((v40 & 0x20) == 0)
      {
        goto LABEL_119;
      }

      goto LABEL_126;
    }
  }

  else if ((v40 & 1) == 0)
  {
    goto LABEL_118;
  }

  self->_coreMLModelScore = *(v4 + 1);
  *&self->_has |= 1u;
  v40 = *(v4 + 168);
  if ((v40 & 0x20) == 0)
  {
LABEL_119:
    if ((v40 & 0x80) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

LABEL_126:
  self->_foundInChunk = *(v4 + 11);
  *&self->_has |= 0x20u;
  if ((*(v4 + 168) & 0x80) != 0)
  {
LABEL_120:
    self->_updatedInChunk = *(v4 + 82);
    *&self->_has |= 0x80u;
  }

LABEL_121:
  numberOfSharesOfPeopleInPhotoIoUWithConversation = self->_numberOfSharesOfPeopleInPhotoIoUWithConversation;
  v42 = *(v4 + 22);
  if (numberOfSharesOfPeopleInPhotoIoUWithConversation)
  {
    if (!v42)
    {
      goto LABEL_131;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfSharesOfPeopleInPhotoIoUWithConversation mergeFrom:?];
  }

  else
  {
    if (!v42)
    {
      goto LABEL_131;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfSharesOfPeopleInPhotoIoUWithConversation:?];
  }

  v4 = v71;
LABEL_131:
  numberOfSharesOfPetsWithConversation = self->_numberOfSharesOfPetsWithConversation;
  v44 = *(v4 + 25);
  if (numberOfSharesOfPetsWithConversation)
  {
    if (!v44)
    {
      goto LABEL_137;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfSharesOfPetsWithConversation mergeFrom:?];
  }

  else
  {
    if (!v44)
    {
      goto LABEL_137;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfSharesOfPetsWithConversation:?];
  }

  v4 = v71;
LABEL_137:
  numberOfSharesOfPetsInCurrentPhotoWithConversation = self->_numberOfSharesOfPetsInCurrentPhotoWithConversation;
  v46 = *(v4 + 24);
  if (numberOfSharesOfPetsInCurrentPhotoWithConversation)
  {
    if (!v46)
    {
      goto LABEL_143;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfSharesOfPetsInCurrentPhotoWithConversation mergeFrom:?];
  }

  else
  {
    if (!v46)
    {
      goto LABEL_143;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfSharesOfPetsInCurrentPhotoWithConversation:?];
  }

  v4 = v71;
LABEL_143:
  numberOfSharesOfScenesInPhotoWithConversation = self->_numberOfSharesOfScenesInPhotoWithConversation;
  v48 = *(v4 + 26);
  if (numberOfSharesOfScenesInPhotoWithConversation)
  {
    if (!v48)
    {
      goto LABEL_149;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfSharesOfScenesInPhotoWithConversation mergeFrom:?];
  }

  else
  {
    if (!v48)
    {
      goto LABEL_149;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfSharesOfScenesInPhotoWithConversation:?];
  }

  v4 = v71;
LABEL_149:
  numberOfSharesOfDetectedScenesInPhotoWithConversation = self->_numberOfSharesOfDetectedScenesInPhotoWithConversation;
  v50 = *(v4 + 21);
  if (numberOfSharesOfDetectedScenesInPhotoWithConversation)
  {
    if (!v50)
    {
      goto LABEL_155;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfSharesOfDetectedScenesInPhotoWithConversation mergeFrom:?];
  }

  else
  {
    if (!v50)
    {
      goto LABEL_155;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfSharesOfDetectedScenesInPhotoWithConversation:?];
  }

  v4 = v71;
LABEL_155:
  numberOfTopicsSharedWithConversation = self->_numberOfTopicsSharedWithConversation;
  v52 = *(v4 + 30);
  if (numberOfTopicsSharedWithConversation)
  {
    if (!v52)
    {
      goto LABEL_161;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfTopicsSharedWithConversation mergeFrom:?];
  }

  else
  {
    if (!v52)
    {
      goto LABEL_161;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfTopicsSharedWithConversation:?];
  }

  v4 = v71;
LABEL_161:
  numberOfAppsSharedFromWithConversation = self->_numberOfAppsSharedFromWithConversation;
  v54 = *(v4 + 8);
  if (numberOfAppsSharedFromWithConversation)
  {
    if (!v54)
    {
      goto LABEL_167;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfAppsSharedFromWithConversation mergeFrom:?];
  }

  else
  {
    if (!v54)
    {
      goto LABEL_167;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfAppsSharedFromWithConversation:?];
  }

  v4 = v71;
LABEL_167:
  timeSinceLastPhotoShareWithConversation = self->_timeSinceLastPhotoShareWithConversation;
  v56 = *(v4 + 38);
  if (timeSinceLastPhotoShareWithConversation)
  {
    if (!v56)
    {
      goto LABEL_173;
    }

    [(PeopleSuggesterFeatureDouble *)timeSinceLastPhotoShareWithConversation mergeFrom:?];
  }

  else
  {
    if (!v56)
    {
      goto LABEL_173;
    }

    [(PeopleSuggesterCandidate *)self setTimeSinceLastPhotoShareWithConversation:?];
  }

  v4 = v71;
LABEL_173:
  hasSharedSensitiveContentWIthConversation = self->_hasSharedSensitiveContentWIthConversation;
  v58 = *(v4 + 7);
  if (hasSharedSensitiveContentWIthConversation)
  {
    if (!v58)
    {
      goto LABEL_179;
    }

    [(PeopleSuggesterFeatureDouble *)hasSharedSensitiveContentWIthConversation mergeFrom:?];
  }

  else
  {
    if (!v58)
    {
      goto LABEL_179;
    }

    [(PeopleSuggesterCandidate *)self setHasSharedSensitiveContentWIthConversation:?];
  }

  v4 = v71;
LABEL_179:
  if ((*(v4 + 168) & 0x200) != 0)
  {
    self->_isInPhoneCallWithConversation = *(v4 + 333);
    *&self->_has |= 0x200u;
  }

  numberOfSharesFromAlbumPhotoBelongsToWithConversation = self->_numberOfSharesFromAlbumPhotoBelongsToWithConversation;
  v60 = *(v4 + 18);
  if (numberOfSharesFromAlbumPhotoBelongsToWithConversation)
  {
    if (!v60)
    {
      goto LABEL_187;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfSharesFromAlbumPhotoBelongsToWithConversation mergeFrom:?];
  }

  else
  {
    if (!v60)
    {
      goto LABEL_187;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfSharesFromAlbumPhotoBelongsToWithConversation:?];
  }

  v4 = v71;
LABEL_187:
  if ((*(v4 + 168) & 0x100) != 0)
  {
    self->_isFirstPartyApp = *(v4 + 332);
    *&self->_has |= 0x100u;
  }

  numberOfTimesSharedToTargetAppWithConversation = self->_numberOfTimesSharedToTargetAppWithConversation;
  v62 = *(v4 + 29);
  if (numberOfTimesSharedToTargetAppWithConversation)
  {
    if (!v62)
    {
      goto LABEL_195;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfTimesSharedToTargetAppWithConversation mergeFrom:?];
  }

  else
  {
    if (!v62)
    {
      goto LABEL_195;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfTimesSharedToTargetAppWithConversation:?];
  }

  v4 = v71;
LABEL_195:
  timeSinceLastShareWithConversation = self->_timeSinceLastShareWithConversation;
  v64 = *(v4 + 39);
  if (timeSinceLastShareWithConversation)
  {
    if (!v64)
    {
      goto LABEL_201;
    }

    [(PeopleSuggesterFeatureDouble *)timeSinceLastShareWithConversation mergeFrom:?];
  }

  else
  {
    if (!v64)
    {
      goto LABEL_201;
    }

    [(PeopleSuggesterCandidate *)self setTimeSinceLastShareWithConversation:?];
  }

  v4 = v71;
LABEL_201:
  timeSinceLastPhoneCallWithConversation = self->_timeSinceLastPhoneCallWithConversation;
  v66 = *(v4 + 37);
  if (timeSinceLastPhoneCallWithConversation)
  {
    if (!v66)
    {
      goto LABEL_207;
    }

    [(PeopleSuggesterFeatureDouble *)timeSinceLastPhoneCallWithConversation mergeFrom:?];
  }

  else
  {
    if (!v66)
    {
      goto LABEL_207;
    }

    [(PeopleSuggesterCandidate *)self setTimeSinceLastPhoneCallWithConversation:?];
  }

  v4 = v71;
LABEL_207:
  numberOfDifferentFacesSharedWithConversation = self->_numberOfDifferentFacesSharedWithConversation;
  v68 = *(v4 + 9);
  if (numberOfDifferentFacesSharedWithConversation)
  {
    if (!v68)
    {
      goto LABEL_213;
    }

    [(PeopleSuggesterFeatureDouble *)numberOfDifferentFacesSharedWithConversation mergeFrom:?];
  }

  else
  {
    if (!v68)
    {
      goto LABEL_213;
    }

    [(PeopleSuggesterCandidate *)self setNumberOfDifferentFacesSharedWithConversation:?];
  }

  v4 = v71;
LABEL_213:
  numberOfTotalSharesToTargetApp = self->_numberOfTotalSharesToTargetApp;
  v70 = *(v4 + 31);
  if (numberOfTotalSharesToTargetApp)
  {
    if (v70)
    {
      [(PeopleSuggesterFeatureDouble *)numberOfTotalSharesToTargetApp mergeFrom:?];
    }
  }

  else if (v70)
  {
    [(PeopleSuggesterCandidate *)self setNumberOfTotalSharesToTargetApp:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end