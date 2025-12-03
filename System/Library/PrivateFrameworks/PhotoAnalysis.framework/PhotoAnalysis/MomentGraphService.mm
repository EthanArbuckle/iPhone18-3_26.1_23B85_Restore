@interface MomentGraphService
- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)debugValidationFromQueryTemplate:(NSString *)template person:(NSString *)person city:(NSString *)city place:(NSString *)place time:(NSString *)time reply:(id)reply;
- (void)fetchUnvalidatedPromptSuggestionsWithFetchLimit:(int64_t)limit reply:(id)reply;
- (void)generateContextualPromptSuggestionsWithReply:(id)reply;
- (void)generateMagicSlotSuggestionsWithOptions:(NSDictionary *)options reply:(id)reply;
- (void)generateWhimsicalPromptSuggestionsWithReply:(id)reply;
- (void)performGraphIncrementalUpdateWithOptions:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply;
- (void)performGraphRebuildWithOptions:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply;
- (void)performGraphSearchEntityRankingDonationWithOperationID:(NSString *)d reply:(id)reply;
- (void)performLibraryUnderstandingWithOperationID:(NSString *)d reply:(id)reply;
- (void)performLocalMemoryEnrichmentForMemoryCategory:(int64_t)category reply:(id)reply;
- (void)performLocalMemoryEnrichmentForUUIDs:(id)ds reply:(id)reply;
- (void)performLocalMemoryEventElectionWithElectionMode:(NSString *)mode operationID:(NSString *)d reply:(id)reply;
- (void)performMemoryNodesRebuildForCategory:(int64_t)category operationID:(NSString *)d reply:(id)reply;
- (void)performPromptSuggestionCachingWithOperationID:(NSString *)d reply:(id)reply;
- (void)performPublicEventCachingTaskWithOptions:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply;
- (void)requestAssetSearchKeywordsForAssetCollectionUUIDs:(NSArray *)ds ofType:(unint64_t)type operationID:(NSString *)d reply:(id)reply;
- (void)requestCharacterCurationInfoForCharacterUUIDs:(NSSet *)ds operationID:(NSString *)d reply:(id)reply;
- (void)requestExtendedTokenCollectionFromQueryTokensAsData:(NSData *)data representativeMomentUUIDByAssetUUID:(NSDictionary *)d personOrPetUUIDsWithNegativeFeedback:(NSSet *)feedback sharingFilter:(int64_t)filter operationID:(NSString *)iD reply:(id)reply;
- (void)requestFilterLocationsByMomentLocationHierarchyForRecipeAsData:(NSData *)data operationID:(NSString *)d reply:(id)reply;
- (void)requestGraphIsAvailableWithReply:(id)reply;
- (void)requestGraphSearchMetadataWithOptions:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply;
- (void)requestGraphStatusWithReply:(id)reply;
- (void)requestMeaningsForMomentUUIDs:(NSSet *)ds operationID:(NSString *)d reply:(id)reply;
- (void)requestPersonGroundingForPersonQuery:(NSString *)query operationID:(NSString *)d reply:(id)reply;
- (void)requestPersonalEventMomentsForQueryTokenAsData:(NSData *)data associatedPersonUUID:(NSString *)d scopedMomentUUIDs:(NSSet *)ds momentUUIDByAssetUUID:(NSDictionary *)iD operationID:(NSString *)operationID reply:(id)reply;
- (void)requestPersonalTraitsForAssetUUIDs:(NSArray *)ds momentUUIDByAssetUUID:(NSDictionary *)d extendedTokenCollectionAsData:(NSData *)data configurationAsData:(NSData *)asData sharingFilter:(int64_t)filter operationID:(NSString *)iD reply:(id)reply;
- (void)requestPersonalTraitsForAssetUUIDs:(NSArray *)ds operationID:(NSString *)d reply:(id)reply;
- (void)requestPersonalTraitsForHighlightUUIDs:(NSArray *)ds operationID:(NSString *)d reply:(id)reply;
- (void)requestPrewarmQueryAnnotatorForOriginatorPID:(int64_t)d operationID:(NSString *)iD reply:(id)reply;
- (void)requestPublicEventDataForAssetUUID:(NSString *)d operationID:(NSString *)iD reply:(id)reply;
- (void)requestPublicEventDataForMomentUUID:(NSString *)d operationID:(NSString *)iD reply:(id)reply;
- (void)requestQueryAnnotationForQuery:(NSString *)query originatorPID:(int64_t)d operationID:(NSString *)iD reply:(id)reply;
- (void)requestSearchIndexKeywordsForAssetCollectionUUIDs:(NSArray *)ds ofType:(unint64_t)type operationID:(NSString *)d reply:(id)reply;
- (void)requestSearchableAssetUUIDsBySocialGroupForAssetCollectionUUIDs:(NSArray *)ds ofType:(unint64_t)type isFullAnalysis:(BOOL)analysis operationID:(NSString *)d reply:(id)reply;
- (void)requestSynonymsDictionariesWithOperationID:(NSString *)d reply:(id)reply;
- (void)validatePromptSuggestionsWithSuggestionUUIDs:(NSArray *)ds operationID:(NSString *)d reply:(id)reply;
- (void)warmupMomentGraphWorkerForDuration:(double)duration operationID:(NSString *)d reply:(id)reply;
@end

@implementation MomentGraphService

- (void)requestPersonalTraitsForAssetUUIDs:(NSArray *)ds operationID:(NSString *)d reply:(id)reply
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20]();
  v10 = &v18 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  v12[2] = ds;
  v12[3] = d;
  v12[4] = v11;
  v12[5] = self;
  v13 = sub_22FCC8D14();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCDA688;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA690;
  v15[5] = v14;
  dsCopy = ds;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v10, &unk_22FCDA698, v15);
}

- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(reply);
  v10 = sub_22FCC8C44();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22FA7F81C;
  *(v12 + 24) = v11;
  v13 = sub_22FCC8D14();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = v10;
  v14[6] = sub_22FA7F824;
  v14[7] = v12;

  sub_22FC3EE08(0, 0, v8, &unk_22FCDAA20, v14);
}

- (void)warmupMomentGraphWorkerForDuration:(double)duration operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  *(v13 + 16) = duration;
  *(v13 + 24) = d;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDAA08;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDAA10;
  v16[5] = v15;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCDAA18, v16);
}

- (void)performGraphRebuildWithOptions:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = options;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA9E8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA9F0;
  v16[5] = v15;
  optionsCopy = options;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCDA9F8, v16);
}

- (void)performGraphIncrementalUpdateWithOptions:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = options;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA9C8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA9D0;
  v16[5] = v15;
  optionsCopy = options;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCDA9D8, v16);
}

- (void)performMemoryNodesRebuildForCategory:(int64_t)category operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = category;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA9A8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA9B0;
  v16[5] = v15;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCDA9B8, v16);
}

- (void)performLocalMemoryEventElectionWithElectionMode:(NSString *)mode operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = mode;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA988;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA990;
  v16[5] = v15;
  modeCopy = mode;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCDA998, v16);
}

- (void)performLocalMemoryEnrichmentForUUIDs:(id)ds reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = sub_22FCC8C44();
  _Block_copy(v5);

  sub_22FBA522C(v6, self, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)performLocalMemoryEnrichmentForMemoryCategory:(int64_t)category reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);

  sub_22FBA5424(category, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)requestGraphStatusWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22FCC8D14();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22FCDA968;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22FCDA970;
  v12[5] = v11;

  sub_22FC0D8B4(0, 0, v7, &unk_22FCDA978, v12);
}

- (void)requestGraphIsAvailableWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22FCC8D14();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22FCDA948;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22FCDA950;
  v12[5] = v11;

  sub_22FC0D8B4(0, 0, v7, &unk_22FCDA958, v12);
}

- (void)generateMagicSlotSuggestionsWithOptions:(NSDictionary *)options reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  v11[2] = options;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22FCC8D14();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCDA928;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCDA930;
  v14[5] = v13;
  optionsCopy = options;

  sub_22FC0D8B4(0, 0, v9, &unk_22FCDA938, v14);
}

- (void)requestSynonymsDictionariesWithOperationID:(NSString *)d reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22FCC8D14();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCDA908;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCDA910;
  v14[5] = v13;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v9, &unk_22FCDA918, v14);
}

- (void)requestGraphSearchMetadataWithOptions:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = options;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA8E8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA8F0;
  v16[5] = v15;
  optionsCopy = options;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCDA8F8, v16);
}

- (void)requestSearchIndexKeywordsForAssetCollectionUUIDs:(NSArray *)ds ofType:(unint64_t)type operationID:(NSString *)d reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(reply);
  v15 = swift_allocObject();
  v15[2] = ds;
  v15[3] = type;
  v15[4] = d;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_22FCC8D14();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA8C0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22FCDA8C8;
  v18[5] = v17;
  dsCopy = ds;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v13, &unk_22FCDA8D0, v18);
}

- (void)requestAssetSearchKeywordsForAssetCollectionUUIDs:(NSArray *)ds ofType:(unint64_t)type operationID:(NSString *)d reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(reply);
  v15 = swift_allocObject();
  v15[2] = ds;
  v15[3] = type;
  v15[4] = d;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_22FCC8D14();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA898;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22FCDA8A0;
  v18[5] = v17;
  dsCopy = ds;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v13, &unk_22FCDA8A8, v18);
}

- (void)requestSearchableAssetUUIDsBySocialGroupForAssetCollectionUUIDs:(NSArray *)ds ofType:(unint64_t)type isFullAnalysis:(BOOL)analysis operationID:(NSString *)d reply:(id)reply
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v16 = _Block_copy(reply);
  v17 = swift_allocObject();
  *(v17 + 16) = ds;
  *(v17 + 24) = type;
  *(v17 + 32) = analysis;
  *(v17 + 40) = d;
  *(v17 + 48) = v16;
  *(v17 + 56) = self;
  v18 = sub_22FCC8D14();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22FCDA878;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_22FCDA880;
  v20[5] = v19;
  dsCopy = ds;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v15, &unk_22FCDA888, v20);
}

- (void)performGraphSearchEntityRankingDonationWithOperationID:(NSString *)d reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22FCC8D14();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCDA858;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCDA860;
  v14[5] = v13;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v9, &unk_22FCDA868, v14);
}

- (void)performLibraryUnderstandingWithOperationID:(NSString *)d reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22FCC8D14();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCDA838;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCDA840;
  v14[5] = v13;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v9, &unk_22FCDA848, v14);
}

- (void)requestPublicEventDataForMomentUUID:(NSString *)d operationID:(NSString *)iD reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = iD;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA818;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA820;
  v16[5] = v15;
  dCopy = d;
  iDCopy = iD;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCDA828, v16);
}

- (void)requestPublicEventDataForAssetUUID:(NSString *)d operationID:(NSString *)iD reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = iD;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA7F8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA800;
  v16[5] = v15;
  dCopy = d;
  iDCopy = iD;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCDA808, v16);
}

- (void)performPublicEventCachingTaskWithOptions:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = options;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA7D8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA7E0;
  v16[5] = v15;
  optionsCopy = options;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCDA7E8, v16);
}

- (void)requestExtendedTokenCollectionFromQueryTokensAsData:(NSData *)data representativeMomentUUIDByAssetUUID:(NSDictionary *)d personOrPetUUIDsWithNegativeFeedback:(NSSet *)feedback sharingFilter:(int64_t)filter operationID:(NSString *)iD reply:(id)reply
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v18 = _Block_copy(reply);
  v19 = swift_allocObject();
  v19[2] = data;
  v19[3] = d;
  v19[4] = feedback;
  v19[5] = filter;
  v19[6] = iD;
  v19[7] = v18;
  v19[8] = self;
  v20 = sub_22FCC8D14();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_22FCDA7B8;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22FCDA7C0;
  v22[5] = v21;
  dataCopy = data;
  dCopy = d;
  feedbackCopy = feedback;
  iDCopy = iD;

  sub_22FC0D8B4(0, 0, v17, &unk_22FCDA7C8, v22);
}

- (void)requestMeaningsForMomentUUIDs:(NSSet *)ds operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = ds;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA798;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA7A0;
  v16[5] = v15;
  dsCopy = ds;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCDA7A8, v16);
}

- (void)requestPersonalTraitsForAssetUUIDs:(NSArray *)ds momentUUIDByAssetUUID:(NSDictionary *)d extendedTokenCollectionAsData:(NSData *)data configurationAsData:(NSData *)asData sharingFilter:(int64_t)filter operationID:(NSString *)iD reply:(id)reply
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v29 - v17;
  v19 = _Block_copy(reply);
  v20 = swift_allocObject();
  v20[2] = ds;
  v20[3] = d;
  v20[4] = data;
  v20[5] = asData;
  v20[6] = filter;
  v20[7] = iD;
  v20[8] = v19;
  v20[9] = self;
  v21 = sub_22FCC8D14();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22FCDA778;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22FCDA780;
  v23[5] = v22;
  dsCopy = ds;
  dCopy = d;
  dataCopy = data;
  asDataCopy = asData;
  iDCopy = iD;

  sub_22FC0D8B4(0, 0, v18, &unk_22FCDA788, v23);
}

- (void)requestPersonalEventMomentsForQueryTokenAsData:(NSData *)data associatedPersonUUID:(NSString *)d scopedMomentUUIDs:(NSSet *)ds momentUUIDByAssetUUID:(NSDictionary *)iD operationID:(NSString *)operationID reply:(id)reply
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v28 - v16;
  v18 = _Block_copy(reply);
  v19 = swift_allocObject();
  v19[2] = data;
  v19[3] = d;
  v19[4] = ds;
  v19[5] = iD;
  v19[6] = operationID;
  v19[7] = v18;
  v19[8] = self;
  v20 = sub_22FCC8D14();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_22FCDA758;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22FCDA760;
  v22[5] = v21;
  dataCopy = data;
  dCopy = d;
  dsCopy = ds;
  iDCopy = iD;
  operationIDCopy = operationID;

  sub_22FC0D8B4(0, 0, v17, &unk_22FCDA768, v22);
}

- (void)requestFilterLocationsByMomentLocationHierarchyForRecipeAsData:(NSData *)data operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = data;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA738;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA740;
  v16[5] = v15;
  dataCopy = data;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCDA748, v16);
}

- (void)requestCharacterCurationInfoForCharacterUUIDs:(NSSet *)ds operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = ds;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA718;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA720;
  v16[5] = v15;
  dsCopy = ds;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCDA728, v16);
}

- (void)requestPrewarmQueryAnnotatorForOriginatorPID:(int64_t)d operationID:(NSString *)iD reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = iD;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA6F8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA700;
  v16[5] = v15;
  iDCopy = iD;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCDA708, v16);
}

- (void)requestQueryAnnotationForQuery:(NSString *)query originatorPID:(int64_t)d operationID:(NSString *)iD reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(reply);
  v15 = swift_allocObject();
  v15[2] = query;
  v15[3] = d;
  v15[4] = iD;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_22FCC8D14();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA6D8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22FCDA6E0;
  v18[5] = v17;
  queryCopy = query;
  iDCopy = iD;

  sub_22FC0D8B4(0, 0, v13, &unk_22FCDA6E8, v18);
}

- (void)requestPersonGroundingForPersonQuery:(NSString *)query operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = query;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA6A8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA6B0;
  v16[5] = v15;
  queryCopy = query;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCDA6B8, v16);
}

- (void)requestPersonalTraitsForHighlightUUIDs:(NSArray *)ds operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = ds;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA660;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA668;
  v16[5] = v15;
  dsCopy = ds;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCDA670, v16);
}

- (void)performPromptSuggestionCachingWithOperationID:(NSString *)d reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22FCC8D14();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCDA640;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCDA648;
  v14[5] = v13;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v9, &unk_22FCDA650, v14);
}

- (void)generateWhimsicalPromptSuggestionsWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22FCC8D14();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22FCDA620;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22FCDA628;
  v12[5] = v11;

  sub_22FC0D8B4(0, 0, v7, &unk_22FCDA630, v12);
}

- (void)generateContextualPromptSuggestionsWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22FCC8D14();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22FCDA600;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22FCDA608;
  v12[5] = v11;

  sub_22FC0D8B4(0, 0, v7, &unk_22FCDA610, v12);
}

- (void)fetchUnvalidatedPromptSuggestionsWithFetchLimit:(int64_t)limit reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  v11[2] = limit;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22FCC8D14();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCDA5E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCDA5E8;
  v14[5] = v13;

  sub_22FC0D8B4(0, 0, v9, &unk_22FCDA5F0, v14);
}

- (void)validatePromptSuggestionsWithSuggestionUUIDs:(NSArray *)ds operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = ds;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA5A0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA5A8;
  v16[5] = v15;
  dsCopy = ds;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCDA5B0, v16);
}

- (void)debugValidationFromQueryTemplate:(NSString *)template person:(NSString *)person city:(NSString *)city place:(NSString *)place time:(NSString *)time reply:(id)reply
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v28 - v16;
  v18 = _Block_copy(reply);
  v19 = swift_allocObject();
  v19[2] = template;
  v19[3] = person;
  v19[4] = city;
  v19[5] = place;
  v19[6] = time;
  v19[7] = v18;
  v19[8] = self;
  v20 = sub_22FCC8D14();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_22FCDA580;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22FCD2CA0;
  v22[5] = v21;
  templateCopy = template;
  personCopy = person;
  cityCopy = city;
  placeCopy = place;
  timeCopy = time;

  sub_22FC0D8B4(0, 0, v17, &unk_22FCDA590, v22);
}

@end