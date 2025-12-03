@interface PLEditedIPTCAttributes
+ (id)distinctValuesForKeyPath:(id)path inManagedObjectContext:(id)context;
+ (id)iptcKeyMap;
- (BOOL)supportsCloudUpload;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (void)clearEditedIPTCData;
- (void)setIPTCData:(id)data;
- (void)willSave;
@end

@implementation PLEditedIPTCAttributes

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  assetAttributes = [(PLEditedIPTCAttributes *)self assetAttributes];
  asset = [assetAttributes asset];
  if ([asset isValidForJournalPersistence])
  {
    v7 = [[PLAssetJournalEntryPayload alloc] initWithEditedIPTCAttributes:self changedKeys:keysCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)payloadID
{
  assetAttributes = [(PLEditedIPTCAttributes *)self assetAttributes];
  asset = [assetAttributes asset];
  uuid = [asset uuid];
  v5 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

  return v5;
}

- (void)willSave
{
  v14.receiver = self;
  v14.super_class = PLEditedIPTCAttributes;
  [(PLManagedObject *)&v14 willSave];
  managedObjectContext = [(PLEditedIPTCAttributes *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    assetAttributes = [(PLEditedIPTCAttributes *)self assetAttributes];
    asset = [assetAttributes asset];
    isDeleted = [asset isDeleted];

    if ((isDeleted & 1) == 0)
    {
      assetAttributes2 = [(PLEditedIPTCAttributes *)self assetAttributes];
      asset2 = [assetAttributes2 asset];
      changedValues = [asset2 changedValues];
      v10 = [changedValues objectForKeyedSubscript:@"modificationDate"];

      if (!v10)
      {
        assetAttributes3 = [(PLEditedIPTCAttributes *)self assetAttributes];
        asset3 = [assetAttributes3 asset];
        date = [MEMORY[0x1E695DF00] date];
        [asset3 setModificationDate:date];
      }
    }
  }
}

- (void)clearEditedIPTCData
{
  v3 = +[PLEditedIPTCAttributes iptcKeyMap];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__PLEditedIPTCAttributes_clearEditedIPTCData__block_invoke;
  v4[3] = &unk_1E7577D60;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
  [(PLEditedIPTCAttributes *)self setData:0];
}

- (void)setIPTCData:(id)data
{
  v15 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v12 = 0;
  v5 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:0 error:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Can't read iptc data, error: %@", buf, 0xCu);
    }
  }

  else
  {
    [(PLEditedIPTCAttributes *)self clearEditedIPTCData];
    v8 = +[PLEditedIPTCAttributes iptcKeyMap];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__PLEditedIPTCAttributes_setIPTCData___block_invoke;
    v9[3] = &unk_1E7578238;
    v10 = v8;
    selfCopy = self;
    v7 = v8;
    [v5 enumerateKeysAndObjectsUsingBlock:v9];
    [(PLEditedIPTCAttributes *)self setData:dataCopy];
  }
}

void __38__PLEditedIPTCAttributes_setIPTCData___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:a2];
  if (v6)
  {
    [*(a1 + 40) setValue:v5 forKey:v6];
  }

  else
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Skipping iptc property %@, not supported", &v8, 0xCu);
    }
  }
}

- (BOOL)supportsCloudUpload
{
  assetAttributes = [(PLEditedIPTCAttributes *)self assetAttributes];
  supportsCloudUpload = [assetAttributes supportsCloudUpload];

  return supportsCloudUpload;
}

+ (id)distinctValuesForKeyPath:(id)path inManagedObjectContext:(id)context
{
  v28[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  contextCopy = context;
  array = [MEMORY[0x1E695DF70] array];
  context = objc_autoreleasePoolPush();
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLEditedIPTCAttributes entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v28[0] = pathCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [v10 setPropertiesToFetch:v11];

  [v10 setReturnsDistinctResults:1];
  [v10 setResultType:2];
  v26 = 0;
  v12 = [contextCopy executeFetchRequest:v10 error:&v26];
  v13 = v26;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * i) objectForKey:pathCopy];
        if (v19)
        {
          [array addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v16);
  }

  objc_autoreleasePoolPop(context);

  return array;
}

+ (id)iptcKeyMap
{
  if (iptcKeyMap_once != -1)
  {
    dispatch_once(&iptcKeyMap_once, &__block_literal_global_105997);
  }

  v3 = iptcKeyMap_iptcMap;

  return v3;
}

void __36__PLEditedIPTCAttributes_iptcKeyMap__block_invoke()
{
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"caption", @"Caption/Abstract", @"byLine", @"Byline", @"copyrightNotice", @"CopyrightNotice", @"keywords", @"Keywords", @"urgency", @"Urgency", @"dateCreated", @"DateCreated", @"digitalCreationDate", @"DigitalCreationDate", @"digitalCreationTime", @"DigitalCreationTime", @"digitalSourceType", @"DigitalSourceType", @"expirationDate", @"ExpirationDate", @"expirationTime", @"ExpirationTime", @"referenceDate", @"ReferenceDate", @"releaseDate", @"ReleaseDate", @"releaseTime", @"ReleaseTime", @"timeCreated", @"TimeCreated", @"editStatus", @"EditStatus", @"contentLocationCode", @"ContentLocationCode", @"contentLocationName", @"ContentLocationName", @"countryPrimaryLocationCode", @"Country/PrimaryLocationCode", @"objectAttributeReference", @"ObjectAttributeReference", @"objectTypeReference", @"ObjectTypeReference", @"subjectReference", @"SubjectReference", @"subLocation", @"SubLocation", @"scene", @"Scene", @"creatorContactInfo", @"CreatorContactInfo", @"ciAdrCity", @"CiAdrCity", @"ciAdrCtry", @"CiAdrCtry", @"ciAdrExtadr", @"CiAdrExtadr", @"ciAdrPcode", @"CiAdrPcode", @"ciAdrRegion", @"CiAdrRegion", @"ciEmailWork"}];
  v1 = iptcKeyMap_iptcMap;
  iptcKeyMap_iptcMap = v0;
}

@end