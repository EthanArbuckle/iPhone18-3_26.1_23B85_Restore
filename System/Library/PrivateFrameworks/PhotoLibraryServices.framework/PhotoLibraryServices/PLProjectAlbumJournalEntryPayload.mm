@interface PLProjectAlbumJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
- (void)updateAlbum:(id)album includePendingChanges:(BOOL)changes;
@end

@implementation PLProjectAlbumJournalEntryPayload

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)dictionary additionalEntityName:(id)name
{
  dictionaryCopy = dictionary;
  v5 = +[PLProjectAlbum validKindsForPersistence];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"kind"];

  LOBYTE(dictionaryCopy) = [v5 containsObject:v6];
  return dictionaryCopy;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PLProjectAlbumJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (persistedPropertyNamesForEntityNames_onceToken_36382 != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken_36382, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_36383;

  return v2;
}

void __73__PLProjectAlbumJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_36383;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_36383 = v1;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PLProjectAlbumJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (modelProperties_onceToken_36384 != -1)
  {
    dispatch_once(&modelProperties_onceToken_36384, block);
  }

  v2 = modelProperties_modelProperties_36385;

  return v2;
}

uint64_t __52__PLProjectAlbumJournalEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties_36385;
  modelProperties_modelProperties_36385 = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties_36385;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)modelPropertiesDescription
{
  v14[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___PLProjectAlbumJournalEntryPayload;
  v4 = objc_msgSendSuper2(&v12, sel_modelPropertiesDescription);
  v5 = [v3 initWithDictionary:v4];

  v13[0] = @"projectDocumentType";
  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"documentType" andType:700 info:0];
  v14[0] = v6;
  v13[1] = @"projectData";
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"data" andType:1000 info:0];
  v14[1] = v7;
  v13[2] = @"projectExtensionIdentifier";
  v8 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"extensionIdentifier" andType:700 info:0];
  v14[2] = v8;
  v13[3] = @"projectRenderUuid";
  v9 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"renderUuid" andType:700 info:0];
  v14[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  [v5 addEntriesFromDictionary:v10];

  return v5;
}

- (void)updateAlbum:(id)album includePendingChanges:(BOOL)changes
{
  changesCopy = changes;
  albumCopy = album;
  v13.receiver = self;
  v13.super_class = PLProjectAlbumJournalEntryPayload;
  [(PLAlbumJournalEntryPayload *)&v13 updateAlbum:albumCopy includePendingChanges:changesCopy];
  payloadAttributes = self->super.super.super._payloadAttributes;
  v8 = albumCopy;
  v9 = [(NSMutableDictionary *)payloadAttributes objectForKeyedSubscript:@"documentType"];
  [v8 setProjectDocumentType:v9];

  v10 = [(NSMutableDictionary *)self->super.super.super._payloadAttributes objectForKeyedSubscript:@"data"];
  [v8 setProjectData:v10];

  v11 = [(NSMutableDictionary *)self->super.super.super._payloadAttributes objectForKeyedSubscript:@"extensionIdentifier"];
  [v8 setProjectExtensionIdentifier:v11];

  v12 = [(NSMutableDictionary *)self->super.super.super._payloadAttributes objectForKeyedSubscript:@"renderUuid"];
  [v8 setProjectRenderUuid:v12];
}

@end