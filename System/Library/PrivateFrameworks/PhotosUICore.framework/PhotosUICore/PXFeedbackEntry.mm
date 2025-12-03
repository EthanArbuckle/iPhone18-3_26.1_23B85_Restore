@interface PXFeedbackEntry
+ (id)createFakeTestEntry;
+ (id)createFakeTestFeedbackDictionary;
+ (id)negativeAlchemistFeedbackForImageQualityKeys;
+ (id)negativeAlchemistV2FeedbackForImageQualityKeys;
+ (id)negativeAlchemistV2FeedbackForImageQualityLiveOnKeys;
+ (id)negativeFeedbackForAutoLoopKeys;
+ (id)negativeFeedbackForImageQualityKeys;
+ (id)negativeFeedbackForMemoriesKeys;
+ (id)negativeFeedbackForMemoryDetailsKeys;
+ (id)positiveAlchemistV2FeedbackForImageQualityLiveOnKeys;
+ (id)positiveFeedbackForAutoLoopKeys;
+ (id)positiveFeedbackForImageQualityKeys;
+ (id)positiveFeedbackForMemoriesKeys;
+ (id)positiveFeedbackForMemoryDetailsKeys;
- (BOOL)userLikedResults;
- (PXFeedbackEntry)init;
- (PXFeedbackEntry)initWithCoder:(id)coder;
- (PXFeedbackEntry)initWithSystemID:(id)d timestamp:(id)timestamp;
- (id)asTextForItemKey:(id)key;
- (id)longDescription;
- (id)osKeyForItemKey:(id)key;
- (id)uniqueID;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PXFeedbackEntry

- (id)longDescription
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__48838;
  v34 = __Block_byref_object_dispose__48839;
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v35 = [v3 stringWithFormat:@"<%@: %p>]\n", v5, self];

  v6 = v31[5];
  uniqueID = [(PXFeedbackEntry *)self uniqueID];
  v8 = [v6 stringByAppendingFormat:@"   - uniqueID  : %@\n", uniqueID];
  v9 = v31[5];
  v31[5] = v8;

  v10 = v31[5];
  systemID = [(PXFeedbackEntry *)self systemID];
  v12 = [v10 stringByAppendingFormat:@"   - systemID  : %@\n", systemID];
  v13 = v31[5];
  v31[5] = v12;

  v14 = v31[5];
  appVersion = [(PXFeedbackEntry *)self appVersion];
  v16 = [v14 stringByAppendingFormat:@"   - appVersion: %@\n", appVersion];
  v17 = v31[5];
  v31[5] = v16;

  v18 = v31[5];
  timestamp = [(PXFeedbackEntry *)self timestamp];
  v20 = [v18 stringByAppendingFormat:@"   - timestamp : %@\n", timestamp];
  v21 = v31[5];
  v31[5] = v20;

  v22 = [v31[5] stringByAppendingFormat:@"   - generalFB : %ld\n", -[PXFeedbackEntry generalFeedback](self, "generalFeedback")];
  v23 = v31[5];
  v31[5] = v22;

  v24 = [v31[5] stringByAppendingFormat:@"\n\n"];
  v25 = v31[5];
  v31[5] = v24;

  feedbackItemsDict = [(PXFeedbackEntry *)self feedbackItemsDict];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __34__PXFeedbackEntry_longDescription__block_invoke;
  v29[3] = &unk_1E77453D8;
  v29[4] = &v30;
  [feedbackItemsDict enumerateKeysAndObjectsUsingBlock:v29];

  v27 = v31[5];
  _Block_object_dispose(&v30, 8);

  return v27;
}

void __34__PXFeedbackEntry_longDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if ([v5 isEqualToNumber:MEMORY[0x1E695E118]])
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v7 = [v5 isEqualToNumber:MEMORY[0x1E695E118]];
    v8 = @"No";
    if (v7)
    {
      v8 = @"Yes";
    }

    v9 = [v6 stringByAppendingFormat:@"   - %@  : \t\t\t%@\n", v12, v8];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (id)asTextForItemKey:(id)key
{
  keyCopy = key;
  v5 = [(NSDictionary *)self->_feedbackItemDetails objectForKeyedSubscript:keyCopy];
  v6 = [v5 objectForKeyedSubscript:@"asText"];
  if (![v6 length])
  {
    NSLog(&cfstr_ErrorUknownIte.isa, keyCopy);
  }

  return v6;
}

- (id)osKeyForItemKey:(id)key
{
  keyCopy = key;
  v5 = [(NSDictionary *)self->_feedbackItemDetails objectForKeyedSubscript:keyCopy];
  v6 = [v5 objectForKeyedSubscript:@"osKey"];
  if (![v6 length])
  {
    NSLog(&cfstr_ErrorUknownIte.isa, keyCopy);
  }

  return v6;
}

- (BOOL)userLikedResults
{
  v10[2] = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v10[0] = kPXFeedbackUserLikedCollectionKey;
  v10[1] = kPXFeedbackUserLikedMemoriesKey;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__PXFeedbackEntry_userLikedResults__block_invoke;
  v5[3] = &unk_1E7731E28;
  v5[4] = self;
  v5[5] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];
  LOBYTE(self) = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return self & 1;
}

void __35__PXFeedbackEntry_userLikedResults__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 feedbackItemsDict];
  v9 = [v8 objectForKeyedSubscript:v7];

  LODWORD(v7) = [v9 isEqualToNumber:MEMORY[0x1E695E118]];
  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (id)uniqueID
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateFormat:@"yyyyMMdd-HHmmss.SSSSS"];
  timestamp = [(PXFeedbackEntry *)self timestamp];
  v5 = [v3 stringFromDate:timestamp];

  v6 = MEMORY[0x1E696AEC0];
  systemID = [(PXFeedbackEntry *)self systemID];
  v8 = [systemID substringToIndex:6];
  v9 = [v6 stringWithFormat:@"%@-%@", v8, v5];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  feedbackItemsDict = [(PXFeedbackEntry *)self feedbackItemsDict];
  [coderCopy encodeObject:feedbackItemsDict forKey:@"feedbackItemsDict"];

  [coderCopy encodeInt:-[PXFeedbackEntry generalFeedback](self forKey:{"generalFeedback"), @"generalFeedback"}];
  systemID = [(PXFeedbackEntry *)self systemID];
  [coderCopy encodeObject:systemID forKey:@"systemID"];

  timestamp = [(PXFeedbackEntry *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];

  appVersion = [(PXFeedbackEntry *)self appVersion];
  [coderCopy encodeObject:appVersion forKey:@"appVersion"];

  [coderCopy encodeBool:-[PXFeedbackEntry alreadyCollected](self forKey:{"alreadyCollected"), @"alreadyCollected"}];
}

- (PXFeedbackEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PXFeedbackEntry;
  v5 = [(PXFeedbackEntry *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodePropertyListForKey:@"feedbackItemsDict"];
    [(PXFeedbackEntry *)v5 setFeedbackItemsDict:v6];

    feedbackItemsDict = [(PXFeedbackEntry *)v5 feedbackItemsDict];

    if (!feedbackItemsDict)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(PXFeedbackEntry *)v5 setFeedbackItemsDict:v8];
    }

    -[PXFeedbackEntry setGeneralFeedback:](v5, "setGeneralFeedback:", [coderCopy decodeIntForKey:@"generalFeedback"]);
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemID"];
    [(PXFeedbackEntry *)v5 setSystemID:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    [(PXFeedbackEntry *)v5 setTimestamp:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appVersion"];
    [(PXFeedbackEntry *)v5 setAppVersion:v11];

    -[PXFeedbackEntry setAlreadyCollected:](v5, "setAlreadyCollected:", [coderCopy decodeBoolForKey:@"alreadyCollected"]);
  }

  return v5;
}

- (PXFeedbackEntry)initWithSystemID:(id)d timestamp:(id)timestamp
{
  dCopy = d;
  timestampCopy = timestamp;
  v8 = [(PXFeedbackEntry *)self init];
  v9 = v8;
  if (v8)
  {
    [(PXFeedbackEntry *)v8 setGeneralFeedback:0];
    [(PXFeedbackEntry *)v9 setSystemID:dCopy];
    [(PXFeedbackEntry *)v9 setTimestamp:timestampCopy];
    [(PXFeedbackEntry *)v9 setAlreadyCollected:0];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];
    v12 = [infoDictionary objectForKey:@"CFBundleShortVersionString"];

    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    infoDictionary2 = [mainBundle2 infoDictionary];
    v15 = [infoDictionary2 objectForKey:*MEMORY[0x1E695E500]];

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)", v12, v15];
    appVersion = v9->_appVersion;
    v9->_appVersion = v16;
  }

  return v9;
}

- (PXFeedbackEntry)init
{
  v9[53] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = PXFeedbackEntry;
  v2 = [(PXFeedbackEntry *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(PXFeedbackEntry *)v2 setFeedbackItemsDict:v3];

    v8[0] = kPXFeedbackUserLikedCollectionKey;
    v8[1] = kPXFeedbackUserDislikedCollectionKey;
    v9[0] = &unk_1F190E810;
    v9[1] = &unk_1F190E838;
    v8[2] = kPXFeedbackUserLikedDetailViewSourceYear;
    v8[3] = kPXFeedbackUserLikedDetailViewSourceMoment;
    v9[2] = &unk_1F190E860;
    v9[3] = &unk_1F190E888;
    v8[4] = kPXFeedbackUserLikedDetailViewSourceMemory;
    v8[5] = kPXFeedbackUserLikedDetailViewSourceAlbum;
    v9[4] = &unk_1F190E8B0;
    v9[5] = &unk_1F190E8D8;
    v8[6] = kPXFeedbackUserLikedDetailViewSourceFace;
    v8[7] = kPXFeedbackUserLikedDetailViewSourceCollection;
    v9[6] = &unk_1F190E900;
    v9[7] = &unk_1F190E928;
    v8[8] = kPXFeedbackUserLikedDetailViewSourceRelated;
    v8[9] = kPXFeedbackUserLikedDetailViewReasonGoodMovie;
    v9[8] = &unk_1F190E950;
    v9[9] = &unk_1F190E978;
    v8[10] = kPXFeedbackUserLikedDetailViewReasonGoodSelectionOfPhotosInGrid;
    v8[11] = kPXFeedbackUserLikedDetailViewReasonRediscoveredOldPhotos;
    v9[10] = &unk_1F190E9A0;
    v9[11] = &unk_1F190E9C8;
    v8[12] = kPXFeedbackUserLikedDetailViewReasonRediscoveredPeople;
    v8[13] = kPXFeedbackUserLikedDetailViewReasonRediscoveredPlace;
    v9[12] = &unk_1F190E9F0;
    v9[13] = &unk_1F190EA18;
    v8[14] = kPXFeedbackUserLikedDetailViewReasonRediscoveredEvent;
    v8[15] = kPXFeedbackUserLikedDetailViewReasonMeaningfulCollection;
    v9[14] = &unk_1F190EA40;
    v9[15] = &unk_1F190EA68;
    v8[16] = kPXFeedbackUserLikedDetailViewReasonManyMeaningfulRelatedCollectionsIncluded;
    v8[17] = kPXFeedbackUserLikedDetailViewReasonGoodKeyPhotosRepresentingCollectionsInRelated;
    v9[16] = &unk_1F190EA90;
    v9[17] = &unk_1F190EAB8;
    v8[18] = kPXFeedbackUserDislikedDetailViewSourceYear;
    v8[19] = kPXFeedbackUserDislikedDetailViewSourceMoment;
    v9[18] = &unk_1F190EAE0;
    v9[19] = &unk_1F190EB08;
    v8[20] = kPXFeedbackUserDislikedDetailViewSourceMemory;
    v8[21] = kPXFeedbackUserDislikedDetailViewSourceAlbum;
    v9[20] = &unk_1F190EB30;
    v9[21] = &unk_1F190EB58;
    v8[22] = kPXFeedbackUserDislikedDetailViewSourceFace;
    v8[23] = kPXFeedbackUserDislikedDetailViewSourceCollection;
    v9[22] = &unk_1F190EB80;
    v9[23] = &unk_1F190EBA8;
    v8[24] = kPXFeedbackUserDislikedDetailViewSourceRelated;
    v8[25] = kPXFeedbackUserDislikedDetailViewReasonNotSoGoodMovie;
    v9[24] = &unk_1F190EBD0;
    v9[25] = &unk_1F190EBF8;
    v8[26] = kPXFeedbackUserDislikedDetailViewReasonNotSoInterestingSelectionOfPhotos;
    v8[27] = kPXFeedbackUserDislikedDetailViewReasonTooManyJunkPhotosInGrid;
    v9[26] = &unk_1F190EC20;
    v9[27] = &unk_1F190EC48;
    v8[28] = kPXFeedbackUserDislikedDetailViewReasonTooManySimilarPhotosInGrid;
    v8[29] = kPXFeedbackUserDislikedDetailViewReasonTooManyBadQualityPhotosInGrid;
    v9[28] = &unk_1F190EC70;
    v9[29] = &unk_1F190EC98;
    v8[30] = kPXFeedbackUserDislikedDetailViewReasonTooManyPhotosInGrid;
    v8[31] = kPXFeedbackUserDislikedDetailViewReasonNotEnoughPhotosInGrid;
    v9[30] = &unk_1F190ECC0;
    v9[31] = &unk_1F190ECE8;
    v8[32] = kPXFeedbackUserDislikedDetailViewReasonNotVeryMeaningfulCollection;
    v8[33] = kPXFeedbackUserDislikedDetailViewReasonRelatedCollectionsMissing;
    v9[32] = &unk_1F190ED10;
    v9[33] = &unk_1F190ED38;
    v8[34] = kPXFeedbackUserDislikedDetailViewReasonRelatedCollectionsNotRelated;
    v8[35] = kPXFeedbackUserDislikedDetailViewReasonNotSoGoodPhotosRepresentingCollectionsInRelated;
    v9[34] = &unk_1F190ED60;
    v9[35] = &unk_1F190ED88;
    v8[36] = kPXFeedbackUserLikedMemoriesKey;
    v8[37] = kPXFeedbackUserDislikedMemoriesKey;
    v9[36] = &unk_1F190EDB0;
    v9[37] = &unk_1F190EDD8;
    v8[38] = kPXFeedbackMeaningfulMemoriesKey;
    v8[39] = kPXFeedbackGoodVarietyInMemoriesKey;
    v9[38] = &unk_1F190EE00;
    v9[39] = &unk_1F190EE28;
    v8[40] = kPXFeedbackGoodSelectionsOfMemoriesRelatedToYourCurrentLocationAndPeopleNearYouKey;
    v8[41] = kPXFeedbackGoodAmountOfMemoriesKey;
    v9[40] = &unk_1F190EE50;
    v9[41] = &unk_1F190EE78;
    v8[42] = kPXFeedbackRediscoveredOldMemoriesKey;
    v8[43] = kPXFeedbackRediscoveredRecentMemoriesKey;
    v9[42] = &unk_1F190EEA0;
    v9[43] = &unk_1F190EEC8;
    v8[44] = kPXFeedbackRediscoveredPeopleKey;
    v8[45] = kPXFeedbackRediscoveredPlaceKey;
    v9[44] = &unk_1F190EEF0;
    v9[45] = &unk_1F190EF18;
    v8[46] = kPXFeedbackRediscoveredEventKey;
    v8[47] = kPXFeedbackGoodKeyPhotosRepresentingMemoriesKey;
    v9[46] = &unk_1F190EF40;
    v9[47] = &unk_1F190EF68;
    v8[48] = kPXFeedbackNotVeryMeaningfulMemoriesKey;
    v8[49] = kPXFeedbackLackOfVarietyInMemoriesKey;
    v9[48] = &unk_1F190EF90;
    v9[49] = &unk_1F190EFB8;
    v8[50] = kPXFeedbackPoorSelectionOfMemoriesRelatedToYourCurrentLocationAndPeopleNearYouKey;
    v8[51] = kPXFeedbackNotEnoughMemoriesKey;
    v9[50] = &unk_1F190EFE0;
    v9[51] = &unk_1F190F008;
    v8[52] = kPXFeedbackNotSoGoodKeyPhotosRepresentingMemoriesKey;
    v9[52] = &unk_1F190F030;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:53];
    feedbackItemDetails = v2->_feedbackItemDetails;
    v2->_feedbackItemDetails = v4;
  }

  return v2;
}

+ (id)createFakeTestFeedbackDictionary
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  identifierForVendor = [currentDevice identifierForVendor];
  uUIDString = [identifierForVendor UUIDString];

  date = [MEMORY[0x1E695DF00] date];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MyApp%ld.%ld(%ld)", 1, arc4random() & 1, 101];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setValue:uUIDString forKey:kPXFeedbackEntrySystemIDKey];
  [dictionary setValue:date forKey:kPXFeedbackEntryTimestampKey];
  [dictionary setValue:v6 forKey:kPXFeedbackEntryAppVersionKey];

  return dictionary;
}

+ (id)createFakeTestEntry
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  identifierForVendor = [currentDevice identifierForVendor];
  uUIDString = [identifierForVendor UUIDString];

  date = [MEMORY[0x1E695DF00] date];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MyApp%ld.%ld(%ld)", 1, arc4random() & 1, 101];
  v7 = [[PXFeedbackEntry alloc] initWithSystemID:uUIDString timestamp:date];
  [(PXFeedbackEntry *)v7 setAppVersion:v6];

  return v7;
}

+ (id)negativeAlchemistV2FeedbackForImageQualityLiveOnKeys
{
  if (negativeAlchemistV2FeedbackForImageQualityLiveOnKeys_onceToken != -1)
  {
    dispatch_once(&negativeAlchemistV2FeedbackForImageQualityLiveOnKeys_onceToken, &__block_literal_global_869);
  }

  v3 = negativeAlchemistV2FeedbackForImageQualityLiveOnKeys_negativeAlchemistV2FeedbackForImageQualityLiveOnKeys;

  return v3;
}

void __71__PXFeedbackEntry_negativeAlchemistV2FeedbackForImageQualityLiveOnKeys__block_invoke()
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = kPXFeedbackImageQualityHolesInSceneKey;
  v2[1] = kPXFeedbackImageQualityPersonPetPartiallyDeformedKey;
  v2[2] = kPXFeedbackImageQualityDepthIssueKey;
  v2[3] = kPXFeedbackImageQualityVisibleLayersKey;
  v2[4] = kPXFeedbackImageQualityGenericProblemKey;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:5];
  v1 = negativeAlchemistV2FeedbackForImageQualityLiveOnKeys_negativeAlchemistV2FeedbackForImageQualityLiveOnKeys;
  negativeAlchemistV2FeedbackForImageQualityLiveOnKeys_negativeAlchemistV2FeedbackForImageQualityLiveOnKeys = v0;
}

+ (id)positiveAlchemistV2FeedbackForImageQualityLiveOnKeys
{
  if (positiveAlchemistV2FeedbackForImageQualityLiveOnKeys_onceToken != -1)
  {
    dispatch_once(&positiveAlchemistV2FeedbackForImageQualityLiveOnKeys_onceToken, &__block_literal_global_867);
  }

  v3 = positiveAlchemistV2FeedbackForImageQualityLiveOnKeys_positiveAlchemistV2FeedbackForImageQualityLiveOnKeys;

  return v3;
}

void __71__PXFeedbackEntry_positiveAlchemistV2FeedbackForImageQualityLiveOnKeys__block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = kPXFeedbackImageQualityGenericPositiveKey;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];
  v1 = positiveAlchemistV2FeedbackForImageQualityLiveOnKeys_positiveAlchemistV2FeedbackForImageQualityLiveOnKeys;
  positiveAlchemistV2FeedbackForImageQualityLiveOnKeys_positiveAlchemistV2FeedbackForImageQualityLiveOnKeys = v0;
}

+ (id)negativeAlchemistV2FeedbackForImageQualityKeys
{
  if (negativeAlchemistV2FeedbackForImageQualityKeys_onceToken != -1)
  {
    dispatch_once(&negativeAlchemistV2FeedbackForImageQualityKeys_onceToken, &__block_literal_global_865);
  }

  v3 = negativeAlchemistV2FeedbackForImageQualityKeys_negativeAlchemistFeedbackForImageQualityKeys;

  return v3;
}

void __65__PXFeedbackEntry_negativeAlchemistV2FeedbackForImageQualityKeys__block_invoke()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v2[0] = kPXFeedbackImageQualityFineDetails;
  v2[1] = kPXFeedbackImageQualityTransparency;
  v2[2] = kPXFeedbackImageQualityHumanFaceBody;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:3];
  v1 = negativeAlchemistV2FeedbackForImageQualityKeys_negativeAlchemistFeedbackForImageQualityKeys;
  negativeAlchemistV2FeedbackForImageQualityKeys_negativeAlchemistFeedbackForImageQualityKeys = v0;
}

+ (id)negativeAlchemistFeedbackForImageQualityKeys
{
  if (negativeAlchemistFeedbackForImageQualityKeys_onceToken != -1)
  {
    dispatch_once(&negativeAlchemistFeedbackForImageQualityKeys_onceToken, &__block_literal_global_863);
  }

  v3 = negativeAlchemistFeedbackForImageQualityKeys_negativeAlchemistFeedbackForImageQualityKeys;

  return v3;
}

void __63__PXFeedbackEntry_negativeAlchemistFeedbackForImageQualityKeys__block_invoke()
{
  v2[7] = *MEMORY[0x1E69E9840];
  v2[0] = kPXFeedbackImageQualitySceneScaleFeelsWrongKey;
  v2[1] = kPXFeedbackImageQualityUncomfortableFlickeringKey;
  v2[2] = kPXFeedbackImageQualityBoundaryOfObjectInaccurateKey;
  v2[3] = kPXFeedbackImageQualityObjectsSeemDetachedKey;
  v2[4] = kPXFeedbackImageQualityPersonPetObjectSplitIntoPartsKey;
  v2[5] = kPXFeedbackImageQualityForegroundStuckToBackgroundKey;
  v2[6] = kPXFeedbackImageQualityPersonPetPartiallyDeformedKey;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:7];
  v1 = negativeAlchemistFeedbackForImageQualityKeys_negativeAlchemistFeedbackForImageQualityKeys;
  negativeAlchemistFeedbackForImageQualityKeys_negativeAlchemistFeedbackForImageQualityKeys = v0;
}

+ (id)negativeFeedbackForImageQualityKeys
{
  if (negativeFeedbackForImageQualityKeys_onceToken != -1)
  {
    dispatch_once(&negativeFeedbackForImageQualityKeys_onceToken, &__block_literal_global_860);
  }

  v3 = negativeFeedbackForImageQualityKeys_sharedNegativeFeedbackForImageQualityKeys;

  return v3;
}

void __54__PXFeedbackEntry_negativeFeedbackForImageQualityKeys__block_invoke()
{
  v4[19] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DF70]);
  v4[0] = kPXFeedbackImageQualityBadColorKey;
  v4[1] = kPXFeedbackImageQualityBadFocusKey;
  v4[2] = kPXFeedbackImageQualityBadContrastKey;
  v4[3] = kPXFeedbackImageQualityTooNoisyKey;
  v4[4] = kPXFeedbackImageQualityBlurryKey;
  v4[5] = kPXFeedbackImageQualityBadHDRKey;
  v4[6] = kPXFeedbackImageQualityBadFlashKey;
  v4[7] = kPXFeedbackImageQualityBadPortraitBlurKey;
  v4[8] = kPXFeedbackImageQualityShortLivePhotoKey;
  v4[9] = kPXFeedbackImageQualityMuteLivePhotoKey;
  v4[10] = kPXFeedbackImageQualitySemanticDevelopmentBadEffectKey;
  v4[11] = kPXFeedbackImageQualitySemanticDevelopmentNoEffectKey;
  v4[12] = kPXFeedbackImageQualityBadTrackingCPVKey;
  v4[13] = kPXFeedbackImageQualityBadCinematographyCPVKey;
  v4[14] = kPXFeedbackImageQualityBadRenderingCPVKey;
  v4[15] = kPXFeedbackImageQualityHardToChangeCPVKey;
  v4[16] = kPXFeedbackImageQualityGenericBadCPVKey;
  v4[17] = kPXFeedbackProvideOriginalAndEdit;
  v4[18] = kPXFeedbackProvideOriginalAndEditSysdiagnose;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:19];
  v2 = [v0 initWithArray:v1];
  v3 = negativeFeedbackForImageQualityKeys_sharedNegativeFeedbackForImageQualityKeys;
  negativeFeedbackForImageQualityKeys_sharedNegativeFeedbackForImageQualityKeys = v2;
}

+ (id)positiveFeedbackForImageQualityKeys
{
  if (positiveFeedbackForImageQualityKeys_onceToken != -1)
  {
    dispatch_once(&positiveFeedbackForImageQualityKeys_onceToken, &__block_literal_global_858);
  }

  v3 = positiveFeedbackForImageQualityKeys_sharedPositiveFeedbackForImageQualityKeys;

  return v3;
}

void __54__PXFeedbackEntry_positiveFeedbackForImageQualityKeys__block_invoke()
{
  v0 = positiveFeedbackForImageQualityKeys_sharedPositiveFeedbackForImageQualityKeys;
  positiveFeedbackForImageQualityKeys_sharedPositiveFeedbackForImageQualityKeys = MEMORY[0x1E695E0F0];
}

+ (id)negativeFeedbackForAutoLoopKeys
{
  if (negativeFeedbackForAutoLoopKeys_onceToken != -1)
  {
    dispatch_once(&negativeFeedbackForAutoLoopKeys_onceToken, &__block_literal_global_856);
  }

  v3 = negativeFeedbackForAutoLoopKeys_sharedNegativeFeedbackForAutoLoopKeys;

  return v3;
}

void __50__PXFeedbackEntry_negativeFeedbackForAutoLoopKeys__block_invoke()
{
  v2[9] = *MEMORY[0x1E69E9840];
  v2[0] = kPXFeedbackAutoLoopPauseOrGlitch;
  v2[1] = kPXFeedbackAutoLoopUnpleasantCrossfade;
  v2[2] = kPXFeedbackAutoLoopUnsuitableContent;
  v2[3] = kPXFeedbackAutoLoopTooLittleActivity;
  v2[4] = kPXFeedbackAutoLoopTooShort;
  v2[5] = kPXFeedbackAutoLoopPoorImageQuality;
  v2[6] = kPXFeedbackAutoLoopBadStabilization;
  v2[7] = kPXFeedbackAutoLoopBadPanning;
  v2[8] = kPXFeedbackAutoLoopPeopleOrFaceIssues;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:9];
  v1 = negativeFeedbackForAutoLoopKeys_sharedNegativeFeedbackForAutoLoopKeys;
  negativeFeedbackForAutoLoopKeys_sharedNegativeFeedbackForAutoLoopKeys = v0;
}

+ (id)positiveFeedbackForAutoLoopKeys
{
  if (positiveFeedbackForAutoLoopKeys_onceToken != -1)
  {
    dispatch_once(&positiveFeedbackForAutoLoopKeys_onceToken, &__block_literal_global_854);
  }

  v3 = positiveFeedbackForAutoLoopKeys_sharedPositiveFeedbackForAutoLoopKeys;

  return v3;
}

void __50__PXFeedbackEntry_positiveFeedbackForAutoLoopKeys__block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = kPXFeedbackAutoLoopExceptionallyGood;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];
  v1 = positiveFeedbackForAutoLoopKeys_sharedPositiveFeedbackForAutoLoopKeys;
  positiveFeedbackForAutoLoopKeys_sharedPositiveFeedbackForAutoLoopKeys = v0;
}

+ (id)negativeFeedbackForMemoriesKeys
{
  if (negativeFeedbackForMemoriesKeys_onceToken != -1)
  {
    dispatch_once(&negativeFeedbackForMemoriesKeys_onceToken, &__block_literal_global_852);
  }

  v3 = negativeFeedbackForMemoriesKeys_sharedNegativeFeedbackForMemoriesKeys;

  return v3;
}

void __50__PXFeedbackEntry_negativeFeedbackForMemoriesKeys__block_invoke()
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = kPXFeedbackNotVeryMeaningfulMemoriesKey;
  v2[1] = kPXFeedbackLackOfVarietyInMemoriesKey;
  v2[2] = kPXFeedbackPoorSelectionOfMemoriesRelatedToYourCurrentLocationAndPeopleNearYouKey;
  v2[3] = kPXFeedbackNotEnoughMemoriesKey;
  v2[4] = kPXFeedbackNotSoGoodKeyPhotosRepresentingMemoriesKey;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:5];
  v1 = negativeFeedbackForMemoriesKeys_sharedNegativeFeedbackForMemoriesKeys;
  negativeFeedbackForMemoriesKeys_sharedNegativeFeedbackForMemoriesKeys = v0;
}

+ (id)positiveFeedbackForMemoriesKeys
{
  if (positiveFeedbackForMemoriesKeys_onceToken != -1)
  {
    dispatch_once(&positiveFeedbackForMemoriesKeys_onceToken, &__block_literal_global_850);
  }

  v3 = positiveFeedbackForMemoriesKeys_sharedPositiveFeedbackForMemoriesKeys;

  return v3;
}

void __50__PXFeedbackEntry_positiveFeedbackForMemoriesKeys__block_invoke()
{
  v2[10] = *MEMORY[0x1E69E9840];
  v2[0] = kPXFeedbackMeaningfulMemoriesKey;
  v2[1] = kPXFeedbackGoodVarietyInMemoriesKey;
  v2[2] = kPXFeedbackGoodSelectionsOfMemoriesRelatedToYourCurrentLocationAndPeopleNearYouKey;
  v2[3] = kPXFeedbackGoodAmountOfMemoriesKey;
  v2[4] = kPXFeedbackRediscoveredOldMemoriesKey;
  v2[5] = kPXFeedbackRediscoveredRecentMemoriesKey;
  v2[6] = kPXFeedbackRediscoveredPeopleKey;
  v2[7] = kPXFeedbackRediscoveredPlaceKey;
  v2[8] = kPXFeedbackRediscoveredEventKey;
  v2[9] = kPXFeedbackGoodKeyPhotosRepresentingMemoriesKey;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:10];
  v1 = positiveFeedbackForMemoriesKeys_sharedPositiveFeedbackForMemoriesKeys;
  positiveFeedbackForMemoriesKeys_sharedPositiveFeedbackForMemoriesKeys = v0;
}

+ (id)negativeFeedbackForMemoryDetailsKeys
{
  if (negativeFeedbackForMemoryDetailsKeys_onceToken != -1)
  {
    dispatch_once(&negativeFeedbackForMemoryDetailsKeys_onceToken, &__block_literal_global_848);
  }

  v3 = negativeFeedbackForMemoryDetailsKeys_sharedNegativeFeedbackForMemoryDetailsKeys;

  return v3;
}

void __55__PXFeedbackEntry_negativeFeedbackForMemoryDetailsKeys__block_invoke()
{
  v2[11] = *MEMORY[0x1E69E9840];
  v2[0] = kPXFeedbackUserDislikedDetailViewReasonNotVeryMeaningfulCollection;
  v2[1] = kPXFeedbackUserDislikedDetailViewReasonNotSoGoodMovie;
  v2[2] = kPXFeedbackUserDislikedDetailViewReasonNotSoInterestingSelectionOfPhotos;
  v2[3] = kPXFeedbackUserDislikedDetailViewReasonTooManyJunkPhotosInGrid;
  v2[4] = kPXFeedbackUserDislikedDetailViewReasonTooManySimilarPhotosInGrid;
  v2[5] = kPXFeedbackUserDislikedDetailViewReasonTooManyBadQualityPhotosInGrid;
  v2[6] = kPXFeedbackUserDislikedDetailViewReasonTooManyPhotosInGrid;
  v2[7] = kPXFeedbackUserDislikedDetailViewReasonNotEnoughPhotosInGrid;
  v2[8] = kPXFeedbackUserDislikedDetailViewReasonRelatedCollectionsMissing;
  v2[9] = kPXFeedbackUserDislikedDetailViewReasonRelatedCollectionsNotRelated;
  v2[10] = kPXFeedbackUserDislikedDetailViewReasonNotSoGoodPhotosRepresentingCollectionsInRelated;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:11];
  v1 = negativeFeedbackForMemoryDetailsKeys_sharedNegativeFeedbackForMemoryDetailsKeys;
  negativeFeedbackForMemoryDetailsKeys_sharedNegativeFeedbackForMemoryDetailsKeys = v0;
}

+ (id)positiveFeedbackForMemoryDetailsKeys
{
  if (positiveFeedbackForMemoryDetailsKeys_onceToken != -1)
  {
    dispatch_once(&positiveFeedbackForMemoryDetailsKeys_onceToken, &__block_literal_global_49143);
  }

  v3 = positiveFeedbackForMemoryDetailsKeys_sharedPositiveFeedbackForMemoryDetailsKeys;

  return v3;
}

void __55__PXFeedbackEntry_positiveFeedbackForMemoryDetailsKeys__block_invoke()
{
  v2[9] = *MEMORY[0x1E69E9840];
  v2[0] = kPXFeedbackUserLikedDetailViewReasonMeaningfulCollection;
  v2[1] = kPXFeedbackUserLikedDetailViewReasonGoodMovie;
  v2[2] = kPXFeedbackUserLikedDetailViewReasonGoodSelectionOfPhotosInGrid;
  v2[3] = kPXFeedbackUserLikedDetailViewReasonRediscoveredOldPhotos;
  v2[4] = kPXFeedbackUserLikedDetailViewReasonRediscoveredPeople;
  v2[5] = kPXFeedbackUserLikedDetailViewReasonRediscoveredPlace;
  v2[6] = kPXFeedbackUserLikedDetailViewReasonRediscoveredEvent;
  v2[7] = kPXFeedbackUserLikedDetailViewReasonManyMeaningfulRelatedCollectionsIncluded;
  v2[8] = kPXFeedbackUserLikedDetailViewReasonGoodKeyPhotosRepresentingCollectionsInRelated;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:9];
  v1 = positiveFeedbackForMemoryDetailsKeys_sharedPositiveFeedbackForMemoryDetailsKeys;
  positiveFeedbackForMemoryDetailsKeys_sharedPositiveFeedbackForMemoryDetailsKeys = v0;
}

@end