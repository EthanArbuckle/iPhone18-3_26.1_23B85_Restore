@interface PLCloudMasterMediaMetadata
- (id)payloadID;
- (id)payloadsForChangedKeys:(id)keys;
- (void)_addPayloadIfValidForAsset:(id)asset changedKeys:(id)keys toPayloads:(id)payloads modelProperties:(id)properties;
@end

@implementation PLCloudMasterMediaMetadata

- (id)payloadsForChangedKeys:(id)keys
{
  v37 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  cloudMaster = [(PLCloudMasterMediaMetadata *)self cloudMaster];

  if (cloudMaster)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    selfCopy = self;
    cloudMaster2 = [(PLCloudMasterMediaMetadata *)self cloudMaster];
    assets = [cloudMaster2 assets];

    obj = assets;
    v8 = [assets countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          v13 = +[PLAssetJournalEntryPayload modelProperties];
          v14 = [v13 objectForKeyedSubscript:@"master"];
          subRelationshipProperties = [v14 subRelationshipProperties];
          v16 = [subRelationshipProperties objectForKeyedSubscript:@"mediaMetadata"];
          subRelationshipProperties2 = [v16 subRelationshipProperties];
          [(PLCloudMasterMediaMetadata *)selfCopy _addPayloadIfValidForAsset:v12 changedKeys:keysCopy toPayloads:v30 modelProperties:subRelationshipProperties2];
        }

        v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v9);
    }
  }

  else
  {
    additionalAssetAttributes = [(PLCloudMasterMediaMetadata *)self additionalAssetAttributes];

    if (additionalAssetAttributes)
    {
      additionalAssetAttributes2 = [(PLCloudMasterMediaMetadata *)self additionalAssetAttributes];
      asset = [additionalAssetAttributes2 asset];

      v21 = +[PLAssetJournalEntryPayload modelProperties];
      v22 = [v21 objectForKeyedSubscript:@"additionalAttributes"];
      subRelationshipProperties3 = [v22 subRelationshipProperties];
      v24 = [subRelationshipProperties3 objectForKeyedSubscript:@"mediaMetadata"];
      subRelationshipProperties4 = [v24 subRelationshipProperties];
      [(PLCloudMasterMediaMetadata *)self _addPayloadIfValidForAsset:asset changedKeys:keysCopy toPayloads:v30 modelProperties:subRelationshipProperties4];
    }
  }

  if ([v30 count])
  {
    v26 = v30;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  return v26;
}

- (void)_addPayloadIfValidForAsset:(id)asset changedKeys:(id)keys toPayloads:(id)payloads modelProperties:(id)properties
{
  v19 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  keysCopy = keys;
  payloadsCopy = payloads;
  propertiesCopy = properties;
  payloadID = [assetCopy payloadID];
  if (payloadID)
  {
    if ([assetCopy isValidForJournalPersistence])
    {
      v15 = [[PLAssetJournalEntryPayload alloc] initWithCloudMasterMediaMetadata:self payloadID:payloadID changedKeys:keysCopy modelProperties:propertiesCopy];
      if (v15)
      {
        [payloadsCopy addObject:v15];
      }

LABEL_8:
    }
  }

  else if (assetCopy)
  {
    v15 = PLMigrationGetLog();
    if (os_log_type_enabled(&v15->super.super, OS_LOG_TYPE_ERROR))
    {
      objectID = [assetCopy objectID];
      v17 = 138543362;
      v18 = objectID;
      _os_log_impl(&dword_19BF1F000, &v15->super.super, OS_LOG_TYPE_ERROR, "Skipping payload for CloudMasterMediaMetadata update with nil payloadID for existing object: %{public}@", &v17, 0xCu);
    }

    goto LABEL_8;
  }
}

- (id)payloadID
{
  cloudMaster = [(PLCloudMasterMediaMetadata *)self cloudMaster];

  if (cloudMaster)
  {
    cloudMaster2 = [(PLCloudMasterMediaMetadata *)self cloudMaster];
    cloudMasterGUID = [cloudMaster2 cloudMasterGUID];
    v6 = [PLJournalEntryPayloadIDFactory payloadIDWithString:cloudMasterGUID];
LABEL_5:

    goto LABEL_6;
  }

  additionalAssetAttributes = [(PLCloudMasterMediaMetadata *)self additionalAssetAttributes];

  if (additionalAssetAttributes)
  {
    cloudMaster2 = [(PLCloudMasterMediaMetadata *)self additionalAssetAttributes];
    cloudMasterGUID = [cloudMaster2 asset];
    uuid = [cloudMasterGUID uuid];
    v6 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

@end