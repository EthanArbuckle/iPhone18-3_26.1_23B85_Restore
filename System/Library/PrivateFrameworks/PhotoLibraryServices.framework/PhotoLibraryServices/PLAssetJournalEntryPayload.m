@interface PLAssetJournalEntryPayload
+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)nonPersistedModelPropertiesDescription;
+ (id)persistedPropertyNamesForEntityNames;
+ (id)snapshotSortDescriptors;
- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5;
- (BOOL)hasAdjustments;
- (BOOL)isDefaultAdjustedSlomo;
- (BOOL)sleetIsReversible;
- (BOOL)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 withManagedObject:(id)a5 forPayloadProperty:(id)a6;
- (NSArray)resources;
- (PLAssetJournalEntryPayload)initWithAdditionalAssetAttributes:(id)a3 changedKeys:(id)a4;
- (PLAssetJournalEntryPayload)initWithAssetDescription:(id)a3 changedKeys:(id)a4;
- (PLAssetJournalEntryPayload)initWithCloudMaster:(id)a3 payloadID:(id)a4 changedKeys:(id)a5;
- (PLAssetJournalEntryPayload)initWithCloudMasterMediaMetadata:(id)a3 payloadID:(id)a4 changedKeys:(id)a5 modelProperties:(id)a6;
- (PLAssetJournalEntryPayload)initWithEditedIPTCAttributes:(id)a3 changedKeys:(id)a4;
- (PLAssetJournalEntryPayload)initWithExtendedAttributes:(id)a3 changedKeys:(id)a4;
- (PLAssetJournalEntryPayload)initWithInternalResource:(id)a3 filesystemBookmark:(id)a4 changedKeys:(id)a5;
- (PLAssetJournalEntryPayload)initWithUnmanagedAdjustment:(id)a3 changedKeys:(id)a4;
- (id)_loadOriginalImageMetadataWithPathManager:(id)a3 timezoneLookup:(id)a4;
- (id)_loadOriginalVideoMetadataWithPathManager:(id)a3 timezoneLookup:(id)a4;
- (id)hdrGain;
- (id)insertAssetFromDataInManagedObjectContext:(id)a3 keywordUUIDRemapping:(id)a4 rawPayloadAttributesToUpdate:(id)a5;
- (id)originalResourceRelativePathsWithPathManager:(id)a3;
- (id)originalUniformTypeIdentifier;
- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4;
- (int64_t)dateCreatedSource;
- (signed)kind;
- (signed)kindSubtype;
- (signed)savedAssetType;
- (unint64_t)bestCPLResourceTypeForAdjustedFingerPrint;
- (unsigned)bundleScope;
- (unsigned)playbackStyle;
- (unsigned)playbackVariation;
- (void)_convertCustomRenderedValueToHDRType;
- (void)_convertDepthStatesToDepthType;
- (void)_convertHasAdjustmentsToAdjustmentsState;
- (void)_filterNonPersistedResources;
- (void)_fixAdjustedAssetUTI;
- (void)_fixDateCreatedSourceWithAdditionalAssetAttributes:(id)a3;
- (void)_fixHDRGainZeroValueToNULL;
- (void)_fixLocationData;
- (void)_fixResourceTypeUnknownValues;
- (void)_fixSleetIsReversibleWithAdditionalAssetAttributes:(id)a3;
- (void)_fixXMPSidecarUTI;
- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5;
- (void)applyPayloadProperty:(id)a3 toManagedObject:(id)a4 key:(id)a5 payloadAttributesToUpdate:(id)a6;
- (void)mergePayload:(id)a3;
- (void)migrateMergedPayloadWithUpdatePayloads:(id)a3;
- (void)setDateCreatedSource:(int64_t)a3;
- (void)setKind:(signed __int16)a3;
- (void)setLocation:(id)a3;
- (void)setPlaybackStyle:(unsigned __int16)a3;
- (void)setSleetIsReversible:(unsigned __int16)a3;
@end

@implementation PLAssetJournalEntryPayload

- (id)_loadOriginalImageMetadataWithPathManager:(id)a3 timezoneLookup:(id)a4
{
  v36[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"mediaMetadata"];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E69C0718]);
    v10 = MEMORY[0x1E69C08F0];
    v11 = [(PLAssetJournalEntryPayload *)self originalUniformTypeIdentifier];
    v12 = [v10 typeWithIdentifier:v11];
    v13 = [v9 initWithImageSourceProxyOrEncodedImagePropertyData:v8 contentType:v12 timeZoneLookup:v7];

    goto LABEL_3;
  }

  [MEMORY[0x1E69BF328] maskForReferencedAsset];
  [(PLAssetJournalEntryPayload *)self savedAssetType];
  if (PLValidatedSavedAssetTypeApplies())
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E69BFF48];
    v35 = *MEMORY[0x1E696A278];
    v36[0] = @"skipping reference asset";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v11 = [v14 errorWithDomain:v15 code:46502 userInfo:v16];
  }

  else
  {
    v17 = [(PLAssetJournalEntryPayload *)self directory];
    if (!v17)
    {
LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }

    v18 = v17;
    v19 = MEMORY[0x1E695DFF8];
    v20 = [(PLAssetJournalEntryPayload *)self directory];
    v21 = [(PLAssetJournalEntryPayload *)self filename];
    v22 = [v6 assetMainFilePathWithDirectory:v20 filename:v21 bundleScope:{-[PLAssetJournalEntryPayload bundleScope](self, "bundleScope")}];
    v11 = [v19 fileURLWithPath:v22 isDirectory:0];

    if (v11)
    {
      v13 = [objc_alloc(MEMORY[0x1E69C0718]) initWithImageURL:v11 contentType:0 options:12 timeZoneLookup:v7 cacheImageSource:0 cacheImageData:0];
LABEL_3:

      if (v13)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  v23 = PLMigrationGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
    v25 = [v11 userInfo];
    v27 = 136446978;
    v28 = "[PLAssetJournalEntryPayload _loadOriginalImageMetadataWithPathManager:timezoneLookup:]";
    v29 = 2114;
    v30 = v24;
    v31 = 2112;
    v32 = v11;
    v33 = 2112;
    v34 = v25;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "%{public}s: failed to load metadata for asset with uuid %{public}@, not fatal, will proceed with migration, error: %@ %@", &v27, 0x2Au);
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (id)_loadOriginalVideoMetadataWithPathManager:(id)a3 timezoneLookup:(id)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"mediaMetadata"];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69C0718]) initWithAVProxyData:v8 timeZoneLookup:v7];
    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    [MEMORY[0x1E69BF328] maskForReferencedAsset];
    [(PLAssetJournalEntryPayload *)self savedAssetType];
    if (PLValidatedSavedAssetTypeApplies())
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E69BFF48];
      v30 = *MEMORY[0x1E696A278];
      v31[0] = @"skipping reference asset";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v9 = [v10 errorWithDomain:v11 code:46502 userInfo:v12];
    }

    else
    {
      v9 = [(PLAssetJournalEntryPayload *)self directory];
      if (v9)
      {
        v13 = MEMORY[0x1E695DFF8];
        v14 = [(PLAssetJournalEntryPayload *)self directory];
        v15 = [(PLAssetJournalEntryPayload *)self filename];
        v16 = [v6 assetMainFilePathWithDirectory:v14 filename:v15 bundleScope:{-[PLAssetJournalEntryPayload bundleScope](self, "bundleScope")}];
        v17 = [v13 fileURLWithPath:v16 isDirectory:0];

        if (v17)
        {
          v9 = [objc_alloc(MEMORY[0x1E69C0718]) initWithAVURL:v17 timeZoneLookup:v7];

          if (v9)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v9 = 0;
        }
      }
    }
  }

  v18 = PLMigrationGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
    v20 = [v9 userInfo];
    v22 = 136446978;
    v23 = "[PLAssetJournalEntryPayload _loadOriginalVideoMetadataWithPathManager:timezoneLookup:]";
    v24 = 2114;
    v25 = v19;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v20;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "%{public}s: failed to load metadata for asset with uuid %{public}@, not fatal, will proceed with migration, error: %@ %@", &v22, 0x2Au);
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (void)migrateMergedPayloadWithUpdatePayloads:(id)a3
{
  v4 = a3;
  v5 = [(PLManagedObjectJournalEntryPayload *)self payloadVersion];
  v6 = [(PLManagedObjectJournalEntryPayload *)self payloadVersion];
  v7 = [(PLManagedObjectJournalEntryPayload *)self payloadVersion];
  v8 = [(PLManagedObjectJournalEntryPayload *)self payloadVersion];
  v9 = [(PLManagedObjectJournalEntryPayload *)self payloadVersionIsLessThanVersion:21 forKey:@"hdrGain" inUpdatePayloads:v4];
  v10 = [(PLManagedObjectJournalEntryPayload *)self payloadVersionIsLessThanVersion:25 forKey:@"depthStates" inUpdatePayloads:v4];
  v11 = [(PLManagedObjectJournalEntryPayload *)self payloadVersionIsLessThanVersion:101 forKey:@"customRenderedValue" inUpdatePayloads:v4];
  v12 = [(PLManagedObjectJournalEntryPayload *)self payloadVersion];
  if ([(PLManagedObjectJournalEntryPayload *)self payloadVersionIsLessThanVersion:300 forKey:@"adjustmentsState" inUpdatePayloads:v4])
  {
    [(PLAssetJournalEntryPayload *)self _convertHasAdjustmentsToAdjustmentsState];
  }

  if (v5 <= 1)
  {
    [(PLAssetJournalEntryPayload *)self _fixAdjustedAssetUTI];
  }

  if (v6 <= 2)
  {
    [(PLAssetJournalEntryPayload *)self _fixLocationData];
  }

  if (v7 <= 3)
  {
    [(PLAssetJournalEntryPayload *)self _fixXMPSidecarUTI];
  }

  if (v8 <= 5)
  {
    [(PLAssetJournalEntryPayload *)self _fixResourceTypeUnknownValues];
    if (!v9)
    {
LABEL_11:
      if (!v10)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  else if (!v9)
  {
    goto LABEL_11;
  }

  [(PLAssetJournalEntryPayload *)self _fixHDRGainZeroValueToNULL];
  if (!v10)
  {
LABEL_12:
    if (!v11)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  [(PLAssetJournalEntryPayload *)self _convertDepthStatesToDepthType];
  if (v11)
  {
LABEL_13:
    [(PLAssetJournalEntryPayload *)self _convertCustomRenderedValueToHDRType];
  }

LABEL_14:
  if (v12 <= 0x66)
  {
    [(PLAssetJournalEntryPayload *)self _filterNonPersistedResources];
  }

  v13.receiver = self;
  v13.super_class = PLAssetJournalEntryPayload;
  [(PLManagedObjectJournalEntryPayload *)&v13 migrateMergedPayloadWithUpdatePayloads:v4];
}

- (void)setSleetIsReversible:(unsigned __int16)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a3];
  [(NSMutableDictionary *)self->super._payloadAttributes setObject:v4 forKeyedSubscript:@"sleetIsReversible"];
}

- (BOOL)sleetIsReversible
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"sleetIsReversible"];
  v3 = [v2 isEqual:&unk_1F0FBDD20];

  return v3;
}

- (void)setDateCreatedSource:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)self->super._payloadAttributes setObject:v4 forKeyedSubscript:@"dateCreatedSource"];
}

- (int64_t)dateCreatedSource
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"dateCreatedSource"];
  v3 = [v2 integerValue];

  return v3;
}

- (id)originalUniformTypeIdentifier
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"originalUTI"];
  if (v3 || ![(PLAssetJournalEntryPayload *)self hasAdjustments]&& ([(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"uti"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
  }

  else
  {
    [(PLAssetJournalEntryPayload *)self resources];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v20 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
LABEL_10:
      v10 = 0;
      while (1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        if ([v11 isOriginalResource])
        {
          if ([v11 isPrimaryResource])
          {
            break;
          }
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v8)
          {
            goto LABEL_10;
          }

          goto LABEL_17;
        }
      }

      v4 = [v11 uniformTypeIdentifierString];

      if (v4)
      {
        goto LABEL_3;
      }
    }

    else
    {
LABEL_17:
    }

    v12 = [(PLAssetJournalEntryPayload *)self filename];
    v4 = [v12 pathExtension];

    if (v4)
    {
      v13 = MEMORY[0x1E6982C40];
      v14 = [(PLAssetJournalEntryPayload *)self filename];
      v15 = [v14 pathExtension];
      v16 = [v13 typeWithFilenameExtension:v15];

      if ([v16 isDynamic])
      {
        v4 = 0;
      }

      else
      {
        v4 = [v16 identifier];
      }
    }
  }

LABEL_3:

  return v4;
}

- (void)setLocation:(id)a3
{
  v14 = a3;
  v4 = [PLManagedAsset newLocationDataFromLocation:?];
  [(NSMutableDictionary *)self->super._payloadAttributes setObject:v4 forKeyedSubscript:@"locationData"];
  v5 = MEMORY[0x1E696AD98];
  if (v4)
  {
    [v14 coordinate];
    v6 = [v5 numberWithDouble:?];
    [(NSMutableDictionary *)self->super._payloadAttributes setObject:v6 forKeyedSubscript:@"latitude"];

    v7 = MEMORY[0x1E696AD98];
    [v14 coordinate];
    v9 = v8;
    v10 = v7;
  }

  else
  {
    v11 = MEMORY[0x1E6985CC0];
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E6985CC0]];
    [(NSMutableDictionary *)self->super._payloadAttributes setObject:v12 forKeyedSubscript:@"latitude"];

    v10 = MEMORY[0x1E696AD98];
    v9 = *(v11 + 8);
  }

  v13 = [v10 numberWithDouble:v9];
  [(NSMutableDictionary *)self->super._payloadAttributes setObject:v13 forKeyedSubscript:@"longitude"];
}

- (unint64_t)bestCPLResourceTypeForAdjustedFingerPrint
{
  if ([(PLAssetJournalEntryPayload *)self isImage])
  {
    return 2;
  }

  if (![(PLAssetJournalEntryPayload *)self isVideo])
  {
    return 0;
  }

  if ([(PLAssetJournalEntryPayload *)self isDefaultAdjustedSlomo])
  {
    return 0;
  }

  return 16;
}

- (id)hdrGain
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"hdrGain"];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E696AD98];
    [v2 floatValue];
    v5 = [v4 numberWithFloat:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasAdjustments
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"adjustmentsState"];
  v3 = [v2 unsignedShortValue] != 0;

  return v3;
}

- (BOOL)isDefaultAdjustedSlomo
{
  v3 = [(PLAssetJournalEntryPayload *)self adjustmentFormatIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.video.slomo"];

  v5 = [(PLAssetJournalEntryPayload *)self adjustmentFormatVersion];
  v6 = v5;
  if (v4)
  {
    if ([v5 isEqualToString:@"1.1"])
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = [v6 isEqualToString:@"1.0"];
    }
  }

  v7 = [(PLAssetJournalEntryPayload *)self isVideo];

  return v7 & v4;
}

- (unsigned)playbackVariation
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"playbackVariation"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setPlaybackStyle:(unsigned __int16)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a3];
  [(NSMutableDictionary *)self->super._payloadAttributes setObject:v4 forKeyedSubscript:@"playbackStyle"];
}

- (unsigned)playbackStyle
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"playbackStyle"];
  v3 = [v2 integerValue];

  return v3;
}

- (signed)kindSubtype
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"kindSubtype"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setKind:(signed __int16)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithShort:a3];
  [(NSMutableDictionary *)self->super._payloadAttributes setObject:v4 forKeyedSubscript:@"kind"];
}

- (signed)kind
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"kind"];
  v3 = [v2 integerValue];

  return v3;
}

- (id)originalResourceRelativePathsWithPathManager:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"directory"];
  v6 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"filename"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || ([MEMORY[0x1E69BF328] maskForReferencedAsset], -[PLAssetJournalEntryPayload savedAssetType](self, "savedAssetType"), (PLValidatedSavedAssetTypeApplies() & 1) != 0))
  {
    v29 = 0;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = v7;
    v26 = v5;
    v28 = [v5 stringByAppendingPathComponent:v7];
    v29 = v9;
    [v9 addObject:?];
    v27 = v4;
    v10 = [v4 isUBF];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = [(PLAssetJournalEntryPayload *)self resources];
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          if ([v16 isOriginalResource])
          {
            v17 = [v16 resourceType];
            if (v17 <= 0xB && ((1 << v17) & 0xC3C) != 0)
            {
              v19 = [v16 uniformTypeIdentifierString];
              v20 = [MEMORY[0x1E6982C40] typeWithIdentifier:v19];
              if (v10)
              {
                [MEMORY[0x1E69C08F0] preferredOrFallbackFilenameExtensionForType:v20];
              }

              else
              {
                [PLManagedAsset preferredFileExtensionForType:v19];
              }
              v21 = ;
              if (v21)
              {
                v22 = [v28 stringByDeletingPathExtension];
                v23 = [v22 stringByAppendingPathExtension:v21];

                [v29 addObject:v23];
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    v5 = v26;
    v4 = v27;
    v7 = v25;
  }

  return v29;
}

- (unsigned)bundleScope
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"bundleScope"];
  if (v3)
  {
    v4 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"bundleScope"];
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (signed)savedAssetType
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"savedAssetType"];
  v3 = [v2 integerValue];

  return v3;
}

- (NSArray)resources
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"resources", 0];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [[PLAssetJournalEntryPayloadResource alloc] initWithPayloadAttributes:*(*(&v11 + 1) + 8 * i) payload:self];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)applyPayloadProperty:(id)a3 toManagedObject:(id)a4 key:(id)a5 payloadAttributesToUpdate:(id)a6
{
  v202 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v164 = self;
  if (![v10 requiresConversion])
  {
    if ([v10 isEqualToKey:@"savedAssetType"])
    {
      [MEMORY[0x1E69BF328] maskForIsValidForBackup];
      [(PLAssetJournalEntryPayload *)self savedAssetType];
      if (PLValidatedSavedAssetTypeApplies())
      {
        v174.receiver = self;
        v174.super_class = PLAssetJournalEntryPayload;
        [(PLManagedObjectJournalEntryPayload *)&v174 applyPayloadProperty:v10 toManagedObject:v11 key:v12 payloadAttributesToUpdate:v13];
      }

      goto LABEL_40;
    }

    if ([v10 isEqualToKey:@"locationData"])
    {
      v21 = [(PLAssetJournalEntryPayload *)self locationData];
      if (v21)
      {
        v22 = [(PLAssetJournalEntryPayload *)self dateCreated];
        v23 = [PLManagedAsset newLocationFromLocationData:v21 timestampIfMissing:v22];

        [v23 coordinate];
        if ([PLLocationUtils canUseCoordinate:?])
        {
          v24 = v11;
          v25 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "pl_locationHash")}];
          v26 = [v24 additionalAttributes];
          [v26 setLocationHash:v25];

          [v23 horizontalAccuracy];
          if (v27 != 0.0)
          {
            [v23 horizontalAccuracy];
            v29 = v28;
            v30 = [v24 additionalAttributes];
            [v30 setGpsHorizontalAccuracy:v29];
          }

          self = v164;
        }
      }

      v173.receiver = self;
      v173.super_class = PLAssetJournalEntryPayload;
      [(PLManagedObjectJournalEntryPayload *)&v173 applyPayloadProperty:v10 toManagedObject:v11 key:v12 payloadAttributesToUpdate:v13];
      goto LABEL_31;
    }

    if (([v10 isEqualToKey:@"embeddedThumbnailWidth"] & 1) != 0 || (objc_msgSend(v10, "isEqualToKey:", @"embeddedThumbnailHeight") & 1) != 0 || (objc_msgSend(v10, "isEqualToKey:", @"embeddedThumbnailOffset") & 1) != 0 || objc_msgSend(v10, "isEqualToKey:", @"embeddedThumbnailLength"))
    {
      payloadAttributes = self->super._payloadAttributes;
      v21 = [v10 key];
      v32 = [(NSMutableDictionary *)payloadAttributes objectForKeyedSubscript:v21];
      [v11 setValue:v32 forKey:v12];

      goto LABEL_31;
    }

    if ([v10 isEqualToKey:@"originalHash"])
    {
      v21 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"originalHash"];
      if (v21)
      {
        v78 = v11;
        v79 = [v78 originalStableHash];

        if (!v79)
        {
          v80 = [v21 base64EncodedStringWithOptions:0];
          [v78 setOriginalStableHash:v80];
        }
      }

      v172.receiver = self;
      v172.super_class = PLAssetJournalEntryPayload;
      [(PLManagedObjectJournalEntryPayload *)&v172 applyPayloadProperty:v10 toManagedObject:v11 key:v12 payloadAttributesToUpdate:v13];
      goto LABEL_31;
    }

    if (![v10 isEqualToKey:@"highFrameRateState"])
    {
      if ([v10 isEqualToKey:@"dateCreatedSource"])
      {
        v92 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"dateCreatedSource"];

        if (!v92)
        {
          [(PLAssetJournalEntryPayload *)self _fixDateCreatedSourceWithAdditionalAssetAttributes:v11];
          v93 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PLAssetJournalEntryPayload dateCreatedSource](self, "dateCreatedSource")}];
          [v13 setObject:v93 forKeyedSubscript:@"dateCreatedSource"];
        }

        v170.receiver = self;
        v170.super_class = PLAssetJournalEntryPayload;
        [(PLManagedObjectJournalEntryPayload *)&v170 applyPayloadProperty:v10 toManagedObject:v11 key:v12 payloadAttributesToUpdate:v13];
      }

      else if ([v10 isEqualToKey:@"playbackStyle"])
      {
        if (![(PLAssetJournalEntryPayload *)self playbackStyle])
        {
          if ([(PLAssetJournalEntryPayload *)self kind]== 3)
          {
            v114 = [(PLAssetJournalEntryPayload *)self originalUniformTypeIdentifier];
            v115 = [PLManagedAsset assetTypeFromUniformTypeIdentifier:v114];
          }

          else
          {
            v115 = [(PLAssetJournalEntryPayload *)self kind];
          }

          if (v115 != 3)
          {
            [(PLAssetJournalEntryPayload *)self setPlaybackStyle:[PLManagedAsset defaultPlaybackStyleFromAssetType:v115 subtype:[(PLAssetJournalEntryPayload *)self kindSubtype] playbackVariation:[(PLAssetJournalEntryPayload *)self playbackVariation]]];
            if ([(PLAssetJournalEntryPayload *)self playbackStyle])
            {
              v150 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[PLAssetJournalEntryPayload playbackStyle](self, "playbackStyle")}];
              [v13 setObject:v150 forKeyedSubscript:@"playbackStyle"];
            }
          }
        }

        v169.receiver = self;
        v169.super_class = PLAssetJournalEntryPayload;
        [(PLManagedObjectJournalEntryPayload *)&v169 applyPayloadProperty:v10 toManagedObject:v11 key:v12 payloadAttributesToUpdate:v13];
      }

      else if ([v10 isEqualToKey:@"kind"])
      {
        if ([(PLAssetJournalEntryPayload *)self kind]== 3)
        {
          v130 = [(PLAssetJournalEntryPayload *)self originalUniformTypeIdentifier];
          [(PLAssetJournalEntryPayload *)self setKind:[PLManagedAsset assetTypeFromUniformTypeIdentifier:v130]];

          if ([(PLAssetJournalEntryPayload *)self kind]!= 3)
          {
            v131 = [MEMORY[0x1E696AD98] numberWithShort:{-[PLAssetJournalEntryPayload kind](self, "kind")}];
            [v13 setObject:v131 forKeyedSubscript:@"kind"];
          }
        }

        v168.receiver = self;
        v168.super_class = PLAssetJournalEntryPayload;
        [(PLManagedObjectJournalEntryPayload *)&v168 applyPayloadProperty:v10 toManagedObject:v11 key:v12 payloadAttributesToUpdate:v13];
      }

      else if ([v10 isEqualToKey:@"sleetIsReversible"])
      {
        v141 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"sleetIsReversible"];

        if (!v141)
        {
          [(PLAssetJournalEntryPayload *)self _fixSleetIsReversibleWithAdditionalAssetAttributes:v11];
          v142 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLAssetJournalEntryPayload sleetIsReversible](self, "sleetIsReversible")}];
          [v13 setObject:v142 forKeyedSubscript:@"sleetIsReversible"];
        }

        v167.receiver = self;
        v167.super_class = PLAssetJournalEntryPayload;
        [(PLManagedObjectJournalEntryPayload *)&v167 applyPayloadProperty:v10 toManagedObject:v11 key:v12 payloadAttributesToUpdate:v13];
      }

      else
      {
        v166.receiver = self;
        v166.super_class = PLAssetJournalEntryPayload;
        [(PLManagedObjectJournalEntryPayload *)&v166 applyPayloadProperty:v10 toManagedObject:v11 key:v12 payloadAttributesToUpdate:v13];
      }

      goto LABEL_40;
    }

    v84 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"highFrameRateState"];

    if (v84)
    {
      v171.receiver = self;
      v171.super_class = PLAssetJournalEntryPayload;
      [(PLManagedObjectJournalEntryPayload *)&v171 applyPayloadProperty:v10 toManagedObject:v11 key:v12 payloadAttributesToUpdate:v13];
      goto LABEL_40;
    }

    v116 = self;
    v38 = v13;
    v117 = [(PLAssetJournalEntryPayload *)v116 isVideo];
    v39 = v11;
    if (!v117)
    {
      goto LABEL_129;
    }

    objc_opt_class();
    v118 = [v39 managedObjectContext];
    if (objc_opt_isKindOfClass())
    {
      v119 = v118;
    }

    else
    {
      v119 = 0;
    }

    v120 = v119;

    v121 = [v120 pl_libraryBundle];

    v122 = [v121 timeZoneLookup];

    if ([(PLAssetJournalEntryPayload *)v116 kindSubtype]== 101)
    {
      v123 = MEMORY[0x1E69C0910];
      v124 = [(PLAssetJournalEntryPayload *)v116 adjustmentFormatIdentifier];
      v125 = [(PLAssetJournalEntryPayload *)v116 adjustmentFormatVersion];
      LOBYTE(v123) = [v123 isRecognizedSlowMotionFormatWithIdentifier:v124 version:v125];

      if (v123)
      {
        v126 = 3;
LABEL_157:

        v152 = v39;
        if (v126)
        {
          v153 = v152;
          [v152 setHighFrameRateState:v126];
          v154 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v126];
          [v38 setObject:v154 forKeyedSubscript:@"highFrameRateState"];

          if ([(PLAssetJournalEntryPayload *)v164 kindSubtype]!= 101)
          {
            [(NSMutableDictionary *)v164->super._payloadAttributes setObject:&unk_1F0FBDD08 forKeyedSubscript:@"kindSubtype"];
            [v153 setKindSubtype:101];
            [v38 setObject:&unk_1F0FBDD08 forKeyedSubscript:@"kindSubtype"];
          }
        }

        goto LABEL_129;
      }

      v151 = [v39 pathManager];
      v144 = [(PLAssetJournalEntryPayload *)v164 _loadOriginalVideoMetadataWithPathManager:v151 timezoneLookup:v122];

      if ([v144 isSloMo])
      {
        v126 = 3;
      }

      else
      {
        v126 = 2;
      }
    }

    else
    {
      if (![(PLAssetJournalEntryPayload *)v116 hasAdjustments])
      {
        v126 = 0;
        goto LABEL_157;
      }

      v143 = [v39 pathManager];
      v144 = [(PLAssetJournalEntryPayload *)v164 _loadOriginalVideoMetadataWithPathManager:v143 timezoneLookup:v122];

      v126 = [v144 isSloMo];
    }

    goto LABEL_157;
  }

  if (![v10 isEqualToKey:@"inTrash"])
  {
    if ([v10 isEqualToKey:@"assetDescription"])
    {
      v20 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"description"];
      v16 = v20;
      if (v20 && [v20 length])
      {
        [v11 setLongDescription:v16];
      }

      goto LABEL_39;
    }

    if ([v10 isEqualToKey:@"assetMediaMetadataRelationship"])
    {
      v16 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"assetMediaMetadata"];
      if (v16)
      {
        [v11 setMediaMetadataData:v16];
      }

      goto LABEL_39;
    }

    if ([v10 isEqualToKey:@"unmanagedAdjustment"])
    {
      if (![(PLAssetJournalEntryPayload *)self hasAdjustments])
      {
        goto LABEL_40;
      }

      v33 = [v11 managedObjectContext];
      v34 = [(PLManagedObject *)PLUnmanagedAdjustment insertInManagedObjectContext:v33];

      v35 = [v10 subRelationshipProperties];
      v189[0] = MEMORY[0x1E69E9820];
      v189[1] = 3221225472;
      v189[2] = __97__PLAssetJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate___block_invoke;
      v189[3] = &unk_1E7572EE8;
      v190 = v34;
      v191 = v13;
      v192 = self;
      v16 = v34;
      [v35 enumerateKeysAndObjectsUsingBlock:v189];

      [v11 setUnmanagedAdjustment:v16];
      v36 = v190;
LABEL_35:

LABEL_39:
      goto LABEL_40;
    }

    if ([v10 isEqualToKey:@"master"])
    {
      v37 = self;
      v38 = v13;
      v39 = [(NSMutableDictionary *)v37->super._payloadAttributes objectForKeyedSubscript:@"cloudMasterGUID"];
      if (v39)
      {
        v160 = v12;
        v40 = v11;
        v41 = [v40 managedObjectContext];
        v42 = [PLCloudMaster cloudMasterWithGUID:v39 inShare:0 prefetchResources:0 inManagedObjectContext:v41];

        if (v42)
        {
          goto LABEL_128;
        }

        v43 = [v40 managedObjectContext];
        v42 = [(PLManagedObject *)PLCloudMaster insertInManagedObjectContext:v43];

        [v42 setCloudMasterGUID:v39];
        v44 = [(NSMutableDictionary *)v164->super._payloadAttributes objectForKeyedSubscript:@"importedBy"];
        [v42 setImportedBy:{objc_msgSend(v44, "intValue")}];

        v45 = [(NSMutableDictionary *)v164->super._payloadAttributes objectForKeyedSubscript:@"creatorBundleID"];
        [v42 setImportedByBundleIdentifier:v45];

        v46 = [(NSMutableDictionary *)v164->super._payloadAttributes objectForKeyedSubscript:@"importedByDisplayName"];
        [v42 setImportedByDisplayName:v46];

        v47 = [(NSMutableDictionary *)v164->super._payloadAttributes objectForKeyedSubscript:@"originalFilename"];
        [v42 setOriginalFilename:v47];

        v48 = [(NSMutableDictionary *)v164->super._payloadAttributes objectForKeyedSubscript:@"originalOrientation"];
        [v42 setOriginalOrientation:{objc_msgSend(v48, "intValue")}];

        v49 = [(NSMutableDictionary *)v164->super._payloadAttributes objectForKeyedSubscript:@"originatingAssetIdentifier"];
        [v42 setOriginatingAssetIdentifier:v49];

        v50 = [(NSMutableDictionary *)v164->super._payloadAttributes objectForKeyedSubscript:@"creationDate"];
        [v42 setCreationDate:v50];

        v51 = [(NSMutableDictionary *)v164->super._payloadAttributes objectForKeyedSubscript:@"importDate"];
        [v42 setImportDate:v51];

        v52 = [(NSMutableDictionary *)v164->super._payloadAttributes objectForKeyedSubscript:@"originalUTI"];
        [v42 setUniformTypeIdentifier:v52];

        v53 = [(NSMutableDictionary *)v164->super._payloadAttributes objectForKeyedSubscript:@"mediaMetadataType"];
        [v42 setMediaMetadataType:v53];

        v54 = [v42 mediaMetadata];
        v55 = [(NSMutableDictionary *)v164->super._payloadAttributes objectForKeyedSubscript:@"mediaMetadata"];
        [v54 setValue:v55 forKey:@"data"];

        v56 = [(NSMutableDictionary *)v164->super._payloadAttributes objectForKeyedSubscript:@"fullSizeJPEGSource"];

        v57 = v164->super._payloadAttributes;
        if (v56)
        {
          v58 = [(NSMutableDictionary *)v57 objectForKeyedSubscript:@"fullSizeJPEGSource"];
          v59 = [v58 intValue];
        }

        else
        {
          v102 = [(NSMutableDictionary *)v57 objectForKeyedSubscript:@"originalWidth"];
          v103 = [v102 integerValue];
          v104 = [(NSMutableDictionary *)v164->super._payloadAttributes objectForKeyedSubscript:@"originalHeight"];
          v105 = [v104 integerValue];

          v58 = [v42 uniformTypeIdentifier];
          v59 = [PLCloudMaster fullSizeJPEGSourceForUTI:v58 andImageDimensions:v103, v105];
        }

        [v42 setFullSizeJPEGSource:v59];

        v106 = [(NSMutableDictionary *)v164->super._payloadAttributes objectForKeyedSubscript:@"importSessionID"];
        [v42 setImportSessionID:v106];

        if (![(PLAssetJournalEntryPayload *)v164 isVideo])
        {
          goto LABEL_128;
        }

        v107 = [(NSMutableDictionary *)v164->super._payloadAttributes objectForKeyedSubscript:@"mediaMetadata"];
        if (!v107)
        {
          v128 = PLMigrationGetLog();
          if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
          {
            v129 = [v40 uuid];
            *buf = 138543362;
            v194 = v129;
            _os_log_impl(&dword_19BF1F000, v128, OS_LOG_TYPE_DEFAULT, "Rebuild: unable to find mediaMetadata in master for %{public}@", buf, 0xCu);
          }

          goto LABEL_127;
        }

        v188 = 0;
        v108 = [MEMORY[0x1E696AE40] propertyListWithData:v107 options:0 format:0 error:&v188];
        v165 = v188;
        if (v108)
        {
          v109 = [MEMORY[0x1E6987E28] assetProxyWithPropertyList:v108];
          v110 = [v109 plVideoCodecName];
          [v42 setCodecName:v110];

          v111 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:v109];
          if ([v111 count])
          {
            [v111 objectAtIndex:0];
            v112 = v158 = v11;
            [v112 nominalFrameRate];
            [v42 setVideoFrameRate:v113];

            v11 = v158;
          }
        }

        else
        {
          v109 = PLMigrationGetLog();
          if (!os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
          {
LABEL_126:

            v128 = v165;
LABEL_127:

LABEL_128:
            [v40 setMaster:v42];
            v132 = [v40 additionalAttributes];
            [v132 setOriginalStableHash:v39];

            v12 = v160;
            goto LABEL_129;
          }

          v111 = [v40 uuid];
          *buf = 138543618;
          v194 = v111;
          v195 = 2114;
          v196 = v165;
          _os_log_impl(&dword_19BF1F000, v109, OS_LOG_TYPE_DEFAULT, "Rebuild: unable to serialize videoProperties for %{public}@: %{public}@", buf, 0x16u);
        }

        goto LABEL_126;
      }

LABEL_129:

      v13 = v38;
      goto LABEL_40;
    }

    if ([v10 isEqualToKey:@"keywords"])
    {
      v159 = v13;
      v60 = v11;
      v61 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"keywords"];
      v62 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v61];

      if ([v62 count])
      {
        v161 = v12;
        v156 = v10;
        v157 = v11;
        v163 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v184 = 0u;
        v185 = 0u;
        v186 = 0u;
        v187 = 0u;
        v155 = v62;
        obj = v62;
        v63 = [obj countByEnumeratingWithState:&v184 objects:v201 count:16];
        if (v63)
        {
          v64 = v63;
          v65 = *v185;
          do
          {
            for (i = 0; i != v64; ++i)
            {
              if (*v185 != v65)
              {
                objc_enumerationMutation(obj);
              }

              v67 = *(*(&v184 + 1) + 8 * i);
              v68 = [(NSDictionary *)self->_keywordUUIDRemapping objectForKeyedSubscript:v67];
              v69 = v68;
              if (v68)
              {
                v70 = v68;
              }

              else
              {
                v70 = v67;
              }

              v71 = [v60 managedObjectContext];
              v72 = [PLManagedKeyword keywordForUuid:v70 context:v71];

              if (v72)
              {
                if (v69)
                {
                  v73 = PLMigrationGetLog();
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                  {
                    v74 = [v72 title];
                    v75 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
                    *buf = 138413058;
                    v194 = v74;
                    v195 = 2112;
                    v196 = v67;
                    v197 = 2112;
                    v198 = v69;
                    v199 = 2112;
                    v200 = v75;
                    _os_log_impl(&dword_19BF1F000, v73, OS_LOG_TYPE_DEFAULT, "Rebuild: using re-mapped uuid for keyword %@, %@ -> %@, for asset: %@", buf, 0x2Au);

                    self = v164;
                  }
                }

                [v163 addObject:v72];
              }

              else
              {
                v76 = PLMigrationGetLog();
                if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                {
                  v77 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
                  *buf = 138412546;
                  v194 = v70;
                  v195 = 2112;
                  v196 = v77;
                  _os_log_impl(&dword_19BF1F000, v76, OS_LOG_TYPE_ERROR, "Rebuild: could not find keyword for uuid: %@ for asset: %@", buf, 0x16u);

                  self = v164;
                }
              }
            }

            v64 = [obj countByEnumeratingWithState:&v184 objects:v201 count:16];
          }

          while (v64);
        }

        [v60 setKeywords:v163];
        v10 = v156;
        v11 = v157;
        v12 = v161;
        v62 = v155;
      }

LABEL_69:
      v13 = v159;
      goto LABEL_40;
    }

    if ([v10 isEqualToKey:@"extendedAttributes"])
    {
      v81 = [v11 managedObjectContext];
      v82 = [(PLManagedObject *)PLExtendedAttributes insertInManagedObjectContext:v81];

      v83 = [v10 subRelationshipProperties];
      v180[0] = MEMORY[0x1E69E9820];
      v180[1] = 3221225472;
      v180[2] = __97__PLAssetJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate___block_invoke_1567;
      v180[3] = &unk_1E7572EE8;
      v181 = v82;
      v182 = v13;
      v183 = self;
      v16 = v82;
      [v83 enumerateKeysAndObjectsUsingBlock:v180];

      [v11 setExtendedAttributes:v16];
      v36 = v181;
      goto LABEL_35;
    }

    if ([v10 isEqualToKey:@"editedIPTCAttributes"])
    {
      v85 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"iptcData"];

      if (!v85)
      {
        goto LABEL_40;
      }

      v86 = [v11 managedObjectContext];
      v87 = [(PLManagedObject *)PLEditedIPTCAttributes insertInManagedObjectContext:v86];

      v88 = [v10 subRelationshipProperties];
      v176[0] = MEMORY[0x1E69E9820];
      v176[1] = 3221225472;
      v176[2] = __97__PLAssetJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate___block_invoke_2;
      v176[3] = &unk_1E7572EE8;
      v21 = v87;
      v177 = v21;
      v178 = v13;
      v179 = self;
      [v88 enumerateKeysAndObjectsUsingBlock:v176];

      v89 = v11;
      v90 = [v21 data];

      if (v90)
      {
        v91 = [v21 data];
        [v21 setIPTCData:v91];
      }

      [v89 setEditedIPTCAttributes:v21];
    }

    else
    {
      if ([v10 isEqualToKey:@"resources"] && -[PLAssetJournalEntryPayload hasAdjustments](self, "hasAdjustments"))
      {
        v159 = v13;
        v94 = [(PLAssetJournalEntryPayload *)self bestCPLResourceTypeForAdjustedFingerPrint];
        v95 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"resources"];
        v175[0] = MEMORY[0x1E69E9820];
        v175[1] = 3221225472;
        v175[2] = __97__PLAssetJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate___block_invoke_3;
        v175[3] = &__block_descriptor_40_e29_B32__0__NSDictionary_8Q16_B24l;
        v175[4] = v94;
        v96 = [v95 indexesOfObjectsPassingTest:v175];
        v97 = v11;
        v98 = [v96 count];
        if (v98 == 1)
        {
          self = [v95 objectAtIndexedSubscript:{objc_msgSend(v96, "firstIndex")}];
          v99 = [(PLAssetJournalEntryPayload *)self objectForKeyedSubscript:@"fingerprint"];
        }

        else
        {
          v99 = 0;
        }

        v140 = [v97 additionalAttributes];
        [v140 setAdjustedStableHash:v99];

        if (v98 == 1)
        {
        }

        goto LABEL_69;
      }

      if ([v10 isEqualToKey:@"bundleScope"])
      {
        v16 = v11;
        v100 = self->super._payloadAttributes;
        v101 = [v10 key];
        v18 = [(NSMutableDictionary *)v100 objectForKeyedSubscript:v101];

        if (v18)
        {
          [v16 setBundleScope:{objc_msgSend(v18, "integerValue")}];
        }

        goto LABEL_38;
      }

      if ([v10 isEqualToKey:@"libraryScopeAssetContributorsToUpdate"])
      {
        v127 = self->super._payloadAttributes;
        v18 = v11;
        v16 = [(PLAssetJournalEntryPayload *)self payloadValueFromAttributes:v127 forPayloadProperty:v10];
        [v18 setLibraryScopeAssetContributorsToUpdate:v16];
LABEL_38:

        goto LABEL_39;
      }

      if (![v10 isEqualToKey:@"avalancheUUID"])
      {
        if ([v10 isEqualToKey:@"avalanchePickType"])
        {
          v145 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"avalancheUUID"];

          if (v145)
          {
            v146 = self->super._payloadAttributes;
            v147 = v11;
            v148 = [v10 key];
            v149 = [(NSMutableDictionary *)v146 objectForKeyedSubscript:v148];
            [v147 setAvalanchePickType:{objc_msgSend(v149, "integerValue")}];
          }
        }

        goto LABEL_40;
      }

      v21 = v11;
      v133 = self->super._payloadAttributes;
      v134 = [v10 key];
      v135 = [(NSMutableDictionary *)v133 objectForKeyedSubscript:v134];

      if (v135)
      {
        v136 = self->super._payloadAttributes;
        v137 = [v10 key];
        v138 = [(NSMutableDictionary *)v136 objectForKeyedSubscript:v137];
        [v21 setAvalancheUUID:v138];

        v139 = 1;
      }

      else
      {
        v139 = 0;
      }

      [v21 setAvalancheKind:v139];
    }

LABEL_31:

    goto LABEL_40;
  }

  v14 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"inTrash"];
  v15 = [v14 BOOLValue];

  if (v15)
  {
    v16 = v11;
    v17 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"trashedReason"];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 unsignedShortValue];
    }

    else
    {
      v19 = 0;
    }

    [v16 trashWithReason:v19];
    goto LABEL_38;
  }

LABEL_40:
}

id __97__PLAssetJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6.receiver = *(a1 + 48);
  v6.super_class = PLAssetJournalEntryPayload;
  return objc_msgSendSuper2(&v6, sel_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_, a3, v4, a2, v3);
}

id __97__PLAssetJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate___block_invoke_1567(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6.receiver = *(a1 + 48);
  v6.super_class = PLAssetJournalEntryPayload;
  return objc_msgSendSuper2(&v6, sel_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_, a3, v4, a2, v3);
}

id __97__PLAssetJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6.receiver = *(a1 + 48);
  v6.super_class = PLAssetJournalEntryPayload;
  return objc_msgSendSuper2(&v6, sel_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_, a3, v4, a2, v3);
}

BOOL __97__PLAssetJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"subType"];
  v5 = [v4 integerValue];

  v6 = [v3 objectForKeyedSubscript:@"version"];

  v7 = [v6 intValue];
  return v5 == *(a1 + 32) && v7 == 2;
}

- (id)insertAssetFromDataInManagedObjectContext:(id)a3 keywordUUIDRemapping:(id)a4 rawPayloadAttributesToUpdate:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(PLManagedObject *)PLManagedAsset insertInManagedObjectContext:a3];
  v11 = [(PLManagedObjectJournalEntryPayload *)self payloadID];
  v12 = [v11 payloadIDString];
  [v10 setUuid:v12];

  keywordUUIDRemapping = self->_keywordUUIDRemapping;
  self->_keywordUUIDRemapping = v8;

  [(PLManagedObjectJournalEntryPayload *)self applyPayloadToManagedObject:v10 payloadAttributesToUpdate:v9];

  return v10;
}

- (void)appendAttributeKey:(id)a3 value:(id)a4 toDescriptionBuilder:(id)a5
{
  v52[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isEqualToString:@"resource"])
  {
    v11 = [v10 style];
    v12 = [v10 indent];
    if (v11 == 1)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    v14 = -[PLDescriptionBuilder initWithObject:style:indent:]([PLDescriptionBuilder alloc], "initWithObject:style:indent:", v9, [v10 style], v13);
    v15 = [[PLAssetJournalEntryPayloadResource alloc] initWithPayloadAttributes:v9 payload:self];
    [(PLAssetJournalEntryPayloadResource *)v15 appendToDescriptionBuilder:v14];
    v16 = [(PLDescriptionBuilder *)v14 build];
    [v10 appendName:v8 object:v16];

    goto LABEL_6;
  }

  if (![v8 isEqualToString:@"resources"])
  {
    if ([v8 isEqualToString:@"keywords"])
    {
      v14 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v9];
      v45.receiver = self;
      v45.super_class = PLAssetJournalEntryPayload;
      [(PLManagedObjectJournalEntryPayload *)&v45 appendAttributeKey:v8 value:v14 toDescriptionBuilder:v10];
      goto LABEL_7;
    }

    if (![v8 isEqualToString:@"libraryScopeAssetContributorsToUpdate"])
    {
      v43.receiver = self;
      v43.super_class = PLAssetJournalEntryPayload;
      [(PLManagedObjectJournalEntryPayload *)&v43 appendAttributeKey:v8 value:v9 toDescriptionBuilder:v10];
      goto LABEL_30;
    }

    v14 = [MEMORY[0x1E696B0A0] valueTransformerForName:*MEMORY[0x1E696A8B0]];
    v15 = [(PLDescriptionBuilder *)v14 transformedValue:v9];
    v44.receiver = self;
    v44.super_class = PLAssetJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v44 appendAttributeKey:v8 value:v15 toDescriptionBuilder:v10];
LABEL_6:

LABEL_7:
    goto LABEL_30;
  }

  if ([v10 style] == 1)
  {
    v46.receiver = self;
    v46.super_class = PLAssetJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v46 appendAttributeKey:v8 value:v9 toDescriptionBuilder:v10];
  }

  else
  {
    v42 = self;
    v39 = v8;
    v17 = -[PLDescriptionBuilder initWithObject:style:indent:]([PLDescriptionBuilder alloc], "initWithObject:style:indent:", v9, [v10 style], objc_msgSend(v10, "indent") + 1);
    v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"version" ascending:1];
    v52[0] = v18;
    v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"subType" ascending:1];
    v52[1] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
    v38 = v9;
    v21 = [v9 sortedArrayUsingDescriptors:v20];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v21;
    v22 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v41 = *v48;
      v25 = v10;
      do
      {
        v26 = 0;
        v27 = v24;
        do
        {
          if (*v48 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v47 + 1) + 8 * v26);
          v29 = -[PLDescriptionBuilder initWithObject:style:indent:]([PLDescriptionBuilder alloc], "initWithObject:style:indent:", v28, [v10 style], -[PLDescriptionBuilder indent](v17, "indent") + 1);
          v30 = [[PLAssetJournalEntryPayloadResource alloc] initWithPayloadAttributes:v28 payload:v42];
          [(PLAssetJournalEntryPayloadResource *)v30 appendToDescriptionBuilder:v29];
          if ([v10 style] == 2)
          {
            v31 = MEMORY[0x1E696AEC0];
            v32 = [(PLDescriptionBuilder *)v29 build];
            v33 = [v31 stringWithFormat:@"\n%@", v32];
          }

          else
          {
            v33 = [(PLDescriptionBuilder *)v29 build];
          }

          v24 = v27 + 1;
          v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v27];
          [(PLDescriptionBuilder *)v17 appendName:v34 object:v33];

          ++v26;
          ++v27;
          v10 = v25;
        }

        while (v23 != v26);
        v23 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v23);
    }

    if ([v10 style] == 2)
    {
      v35 = MEMORY[0x1E696AEC0];
      v36 = [(PLDescriptionBuilder *)v17 build];
      v37 = [v35 stringWithFormat:@"\n%@", v36];
    }

    else
    {
      v37 = [(PLDescriptionBuilder *)v17 build];
    }

    v9 = v38;
    v8 = v39;
    [v10 appendName:v39 object:v37];
  }

LABEL_30:
}

- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 parentProperty];
  v12 = [v11 isEqualToKey:@"resources"];

  if (v12)
  {
    if ([v10 isEqualToKey:@"uti"])
    {
      v13 = [v9 description];
      v14 = [PLUniformTypeIdentifierIntegratedLookup identifierFromCompactRepresentation:v13];
      LOBYTE(v15) = [v14 isEqualToString:v8];

      goto LABEL_15;
    }

    if ([v10 isEqualToKey:@"inTrash"])
    {
LABEL_8:
      v17 = [v9 integerValue];
      v15 = [v8 BOOLValue] ^ (v17 == 0);
      goto LABEL_15;
    }

    v19 = [(PLManagedObjectJournalEntryPayload *)&v26 comparePayloadValue:v8 toObjectDictionaryValue:v9 forPayloadProperty:v10, v24.receiver, v24.super_class, v25.receiver, v25.super_class, self, PLAssetJournalEntryPayload];
LABEL_14:
    LOBYTE(v15) = v19;
    goto LABEL_15;
  }

  if ([v10 isEqualToKey:@"inTrash"])
  {
    goto LABEL_8;
  }

  if ([v10 isEqualToKey:@"keywords"])
  {
    v16 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    LOBYTE(v15) = [v16 isEqualToSet:v8];

    goto LABEL_15;
  }

  if (![v10 isEqualToKey:@"dateCreatedSource"])
  {
    if ([v10 isEqualToKey:@"duration"])
    {
      [v9 doubleValue];
      v22 = round(v21 * 1000.0);
      [v8 doubleValue];
      LOBYTE(v15) = v22 - round(v23 * 1000.0) == 0.0;
      goto LABEL_15;
    }

    v19 = [(PLManagedObjectJournalEntryPayload *)&v24 comparePayloadValue:v8 toObjectDictionaryValue:v9 forPayloadProperty:v10, self, PLAssetJournalEntryPayload, v25.receiver, v25.super_class, v26.receiver, v26.super_class];
    goto LABEL_14;
  }

  v18 = [v9 integerValue];
  LOBYTE(v15) = 1;
  if (v8 && v18)
  {
    v19 = [(PLManagedObjectJournalEntryPayload *)&v25 comparePayloadValue:v8 toObjectDictionaryValue:v9 forPayloadProperty:v10, v24.receiver, v24.super_class, self, PLAssetJournalEntryPayload, v26.receiver, v26.super_class];
    goto LABEL_14;
  }

LABEL_15:

  return v15;
}

- (id)payloadValueFromAttributes:(id)a3 forPayloadProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 parentProperty];
  v9 = [v8 isEqualToKey:@"resources"];

  if (v9)
  {
    if ([v7 isEqualToKey:@"volume"])
    {
      v10 = [v7 key];
      v11 = [v6 objectForKeyedSubscript:v10];
      v12 = [(PLManagedObjectJournalEntryPayload *)self UUIDStringForData:v11];
LABEL_6:
      v13 = v12;
LABEL_7:

      goto LABEL_13;
    }

    [(PLManagedObjectJournalEntryPayload *)&v18 payloadValueFromAttributes:v6 forPayloadProperty:v7, v17.receiver, v17.super_class, self, PLAssetJournalEntryPayload];
  }

  else
  {
    if ([v7 isEqualToKey:@"keywords"])
    {
      v10 = [v7 key];
      v11 = [v6 objectForKeyedSubscript:v10];
      v12 = [(PLManagedObjectJournalEntryPayload *)self setForUUIDEncodedData:v11];
      goto LABEL_6;
    }

    if ([v7 isEqualToKey:@"libraryScopeAssetContributorsToUpdate"])
    {
      v10 = [MEMORY[0x1E696B0A0] valueTransformerForName:*MEMORY[0x1E696A8B0]];
      payloadAttributes = self->super._payloadAttributes;
      v11 = [v7 key];
      v15 = [(NSMutableDictionary *)payloadAttributes objectForKeyedSubscript:v11];
      v13 = [v10 transformedValue:v15];

      goto LABEL_7;
    }

    [(PLManagedObjectJournalEntryPayload *)&v17 payloadValueFromAttributes:v6 forPayloadProperty:v7, self, PLAssetJournalEntryPayload, v18.receiver, v18.super_class];
  }
  v13 = ;
LABEL_13:

  return v13;
}

- (BOOL)updatePayloadAttributes:(id)a3 andNilAttributes:(id)a4 withManagedObject:(id)a5 forPayloadProperty:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 parentProperty];
  v15 = [v14 isEqualToKey:@"resources"];

  if (v15)
  {
    if ([v13 isEqualToKey:@"uti"])
    {
      v16 = [v12 uniformTypeIdentifier];
      v17 = [v16 identifier];
LABEL_4:
      v18 = v17;
      v19 = [v13 key];
      [v10 setObject:v18 forKeyedSubscript:v19];
LABEL_11:

      goto LABEL_28;
    }

    if ([v13 isEqualToKey:@"volume"])
    {
      v16 = [v12 fileSystemVolume];
      v18 = [v16 uuid];
      v22 = [(PLManagedObjectJournalEntryPayload *)self UUIDDataForString:v18];
LABEL_10:
      v19 = v22;
      v23 = [v13 key];
      [v10 setObject:v19 forKeyedSubscript:v23];

      goto LABEL_11;
    }

    if ([v13 isEqualToKey:@"inTrash"])
    {
      v20 = MEMORY[0x1E696AD98];
      v21 = [v12 isTrashedOrExpunged];
      goto LABEL_7;
    }

LABEL_33:
    v30 = 0;
    goto LABEL_30;
  }

  if (![v13 isEqualToKey:@"inTrash"])
  {
    if ([v13 isEqualToKey:@"keywords"])
    {
      v24 = [v12 keywords];
      v25 = [v13 relatedEntityPropertyNames];
      v26 = [v25 anyObject];
      v16 = [v24 valueForKey:v26];

      v18 = [(PLManagedObjectJournalEntryPayload *)self encodedDataForUUIDStringSet:v16];
      [(PLManagedObjectJournalEntryPayload *)self updatePayloadAttributes:v10 andNilAttributes:v11 forPayloadProperty:v13 withUUIDStringData:v18];
      goto LABEL_28;
    }

    if ([v13 isEqualToKey:@"bundleScope"])
    {
      v16 = v12;
      if ([v16 bundleScope])
      {
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v16, "bundleScope")}];
        goto LABEL_4;
      }
    }

    else
    {
      if ([v13 isEqualToKey:@"avalancheUUID"])
      {
        v16 = v12;
        v27 = [v16 avalancheKind];
        v28 = v27 == 2;
        if (v27 < 2)
        {
          v17 = [v16 avalancheUUID];
          goto LABEL_4;
        }
      }

      else
      {
        if (![v13 isEqualToKey:@"avalanchePickType"])
        {
          if ([v13 isEqualToKey:@"libraryScopeAssetContributorsToUpdate"])
          {
            v32 = MEMORY[0x1E696B0A0];
            v33 = *MEMORY[0x1E696A8B0];
            v34 = v12;
            v16 = [v32 valueTransformerForName:v33];
            v18 = [v34 libraryScopeAssetContributorsToUpdate];

            v22 = [v16 reverseTransformedValue:v18];
            goto LABEL_10;
          }

          goto LABEL_33;
        }

        v16 = v12;
        v29 = [v16 avalancheKind];
        v28 = v29 == 2;
        if (v29 < 2)
        {
          v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v16, "avalanchePickType")}];
          goto LABEL_4;
        }
      }

      if (!v28)
      {
        goto LABEL_29;
      }
    }

    v18 = [v13 key];
    [v11 addObject:v18];
    goto LABEL_28;
  }

  v20 = MEMORY[0x1E696AD98];
  v21 = [v12 isInTrash];
LABEL_7:
  v16 = [v20 numberWithBool:v21];
  v18 = [v13 key];
  [v10 setObject:v16 forKeyedSubscript:v18];
LABEL_28:

LABEL_29:
  v30 = 1;
LABEL_30:

  return v30;
}

- (void)mergePayload:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4[1];
  v6 = [v5 objectForKeyedSubscript:@"resource"];
  if (v6)
  {
    v16 = v5;
    v7 = [[PLAssetJournalEntryPayloadResource alloc] initWithPayloadAttributes:v6 payload:self];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [(PLAssetJournalEntryPayload *)self resources];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([v14 isEqualToPayloadResource:v7])
          {
            [v14 mergePayloadResource:v7 nilAttributes:v4[2]];
          }

          v15 = [v14 payloadAttributes];
          [v8 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [(NSMutableDictionary *)self->super._payloadAttributes setObject:v8 forKeyedSubscript:@"resources"];
    v5 = v16;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PLAssetJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v17 mergePayload:v4];
  }
}

- (PLAssetJournalEntryPayload)initWithEditedIPTCAttributes:(id)a3 changedKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 payloadID];
    v9 = [objc_opt_class() payloadVersion];
    v10 = [objc_opt_class() modelProperties];
    v11 = [v10 objectForKeyedSubscript:@"additionalAttributes"];
    v12 = [v11 subRelationshipProperties];
    v13 = [v12 objectForKeyedSubscript:@"editedIPTCAttributes"];
    v14 = [v13 subRelationshipProperties];
    v17.receiver = self;
    v17.super_class = PLAssetJournalEntryPayload;
    v15 = [(PLManagedObjectJournalEntryPayload *)&v17 initWithPayloadID:v8 payloadVersion:v9 managedObject:v6 changedKeys:v7 modelProperties:v14];
  }

  else
  {

    v15 = 0;
  }

  return v15;
}

- (PLAssetJournalEntryPayload)initWithExtendedAttributes:(id)a3 changedKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 payloadID];
    v9 = [objc_opt_class() payloadVersion];
    v10 = [objc_opt_class() modelProperties];
    v11 = [v10 objectForKeyedSubscript:@"extendedAttributes"];
    v12 = [v11 subRelationshipProperties];
    v15.receiver = self;
    v15.super_class = PLAssetJournalEntryPayload;
    v13 = [(PLManagedObjectJournalEntryPayload *)&v15 initWithPayloadID:v8 payloadVersion:v9 managedObject:v6 changedKeys:v7 modelProperties:v12];
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

- (PLAssetJournalEntryPayload)initWithCloudMasterMediaMetadata:(id)a3 payloadID:(id)a4 changedKeys:(id)a5 modelProperties:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v12)
  {
    v14 = [objc_opt_class() payloadVersion];
    v17.receiver = self;
    v17.super_class = PLAssetJournalEntryPayload;
    v15 = [(PLManagedObjectJournalEntryPayload *)&v17 initWithPayloadID:v11 payloadVersion:v14 managedObject:v10 changedKeys:v12 modelProperties:v13];
  }

  else
  {

    v15 = 0;
  }

  return v15;
}

- (PLAssetJournalEntryPayload)initWithCloudMaster:(id)a3 payloadID:(id)a4 changedKeys:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [objc_opt_class() payloadVersion];
    v12 = [objc_opt_class() modelProperties];
    v13 = [v12 objectForKeyedSubscript:@"master"];
    v14 = [v13 subRelationshipProperties];
    v17.receiver = self;
    v17.super_class = PLAssetJournalEntryPayload;
    v15 = [(PLManagedObjectJournalEntryPayload *)&v17 initWithPayloadID:v9 payloadVersion:v11 managedObject:v8 changedKeys:v10 modelProperties:v14];
  }

  else
  {

    v15 = 0;
  }

  return v15;
}

- (PLAssetJournalEntryPayload)initWithInternalResource:(id)a3 filesystemBookmark:(id)a4 changedKeys:(id)a5
{
  v33[5] = *MEMORY[0x1E69E9840];
  v31 = a3;
  v8 = a4;
  v9 = a5;
  v30 = v8;
  if (v8)
  {
    v28 = [PLManagedObjectJournalEntryPayload alloc];
    v10 = [v8 payloadID];
    v11 = [objc_opt_class() payloadVersion];
    v12 = [objc_opt_class() modelProperties];
    v13 = [v12 objectForKeyedSubscript:@"modernResources"];
    v14 = [v13 subRelationshipProperties];
    [v14 objectForKeyedSubscript:@"fileSystemBookmark"];
    v16 = v15 = v9;
    v17 = [v16 subRelationshipProperties];
    v29 = [(PLManagedObjectJournalEntryPayload *)v28 initWithPayloadID:v10 payloadVersion:v11 managedObject:v8 changedKeys:v15 modelProperties:v17];

    v9 = [MEMORY[0x1E695DFD8] set];
  }

  else
  {
    v29 = 0;
  }

  v18 = [v31 payloadID];
  v19 = [objc_opt_class() payloadVersion];
  v33[0] = @"resourceType";
  v33[1] = @"version";
  v33[2] = @"recipeID";
  v33[3] = @"compactUTI";
  v33[4] = @"dataStoreSubtype";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:5];
  v21 = [v9 setByAddingObjectsFromArray:v20];
  v22 = [objc_opt_class() modelProperties];
  v23 = [v22 objectForKeyedSubscript:@"modernResources"];
  v24 = [v23 subRelationshipProperties];
  v32.receiver = self;
  v32.super_class = PLAssetJournalEntryPayload;
  v25 = [(PLManagedObjectJournalEntryPayload *)&v32 initWithPayloadID:v18 payloadVersion:v19 managedObject:v31 changedKeys:v21 modelProperties:v24];

  if (v25)
  {
    if (v29)
    {
      [(NSMutableDictionary *)v25->super._payloadAttributes addEntriesFromDictionary:v29->_payloadAttributes];
      [(NSMutableSet *)v25->super._nilAttributes unionSet:v29->_nilAttributes];
    }

    v26 = [(NSMutableDictionary *)v25->super._payloadAttributes mutableCopy];
    [(NSMutableDictionary *)v25->super._payloadAttributes removeAllObjects];
    [(NSMutableDictionary *)v25->super._payloadAttributes setObject:v26 forKeyedSubscript:@"resource"];
  }

  return v25;
}

- (PLAssetJournalEntryPayload)initWithUnmanagedAdjustment:(id)a3 changedKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 payloadID];
    v9 = [objc_opt_class() payloadVersion];
    v10 = [objc_opt_class() modelProperties];
    v11 = [v10 objectForKeyedSubscript:@"additionalAttributes"];
    v12 = [v11 subRelationshipProperties];
    v13 = [v12 objectForKeyedSubscript:@"unmanagedAdjustment"];
    v14 = [v13 subRelationshipProperties];
    v17.receiver = self;
    v17.super_class = PLAssetJournalEntryPayload;
    v15 = [(PLManagedObjectJournalEntryPayload *)&v17 initWithPayloadID:v8 payloadVersion:v9 managedObject:v6 changedKeys:v7 modelProperties:v14];
  }

  else
  {

    v15 = 0;
  }

  return v15;
}

- (PLAssetJournalEntryPayload)initWithAssetDescription:(id)a3 changedKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 payloadID];
    v9 = [objc_opt_class() payloadVersion];
    v10 = [objc_opt_class() modelProperties];
    v11 = [v10 objectForKeyedSubscript:@"additionalAttributes"];
    v12 = [v11 subRelationshipProperties];
    v13 = [v12 objectForKeyedSubscript:@"assetDescription"];
    v14 = [v13 subRelationshipProperties];
    v17.receiver = self;
    v17.super_class = PLAssetJournalEntryPayload;
    v15 = [(PLManagedObjectJournalEntryPayload *)&v17 initWithPayloadID:v8 payloadVersion:v9 managedObject:v6 changedKeys:v7 modelProperties:v14];
  }

  else
  {

    v15 = 0;
  }

  return v15;
}

- (PLAssetJournalEntryPayload)initWithAdditionalAssetAttributes:(id)a3 changedKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 payloadID];
    v9 = [objc_opt_class() payloadVersion];
    v10 = [objc_opt_class() modelProperties];
    v11 = [v10 objectForKeyedSubscript:@"additionalAttributes"];
    v12 = [v11 subRelationshipProperties];
    v15.receiver = self;
    v15.super_class = PLAssetJournalEntryPayload;
    v13 = [(PLManagedObjectJournalEntryPayload *)&v15 initWithPayloadID:v8 payloadVersion:v9 managedObject:v6 changedKeys:v7 modelProperties:v12];
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

+ (BOOL)isValidForPersistenceWithObjectDictionary:(id)a3 additionalEntityName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PLInternalResource entityName];
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"recipeID"];

    v10 = +[PLAssetJournalEntryPayloadResource isValidForPersistenceWithRecipeID:](PLAssetJournalEntryPayloadResource, "isValidForPersistenceWithRecipeID:", [v9 integerValue]);
  }

  else
  {
    v11 = MEMORY[0x1E69BF2A0];
    v9 = [v6 objectForKeyedSubscript:@"bundleScope"];

    v10 = [v11 bundleScopeShouldBePersistedForRebuild:{objc_msgSend(v9, "integerValue")}];
  }

  v12 = v10;

  return v12;
}

+ (id)snapshotSortDescriptors
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PLAssetJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (persistedPropertyNamesForEntityNames_onceToken_83523 != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken_83523, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_83524;

  return v2;
}

void __66__PLAssetJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_83524;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_83524 = v1;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PLAssetJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (modelProperties_onceToken_83525 != -1)
  {
    dispatch_once(&modelProperties_onceToken_83525, block);
  }

  v2 = modelProperties_modelProperties_83526;

  return v2;
}

uint64_t __45__PLAssetJournalEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties_83526;
  modelProperties_modelProperties_83526 = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties_83526;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)nonPersistedModelPropertiesDescription
{
  MEMORY[0x1EEE9AC00](a1);
  v302[110] = *MEMORY[0x1E69E9840];
  v301[0] = @"adjustmentTimestamp";
  v280 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[0] = v280;
  v301[1] = @"analysisStateModificationDate";
  v279 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[1] = v279;
  v301[2] = @"avalancheKind";
  v278 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[2] = v278;
  v301[3] = @"albumAssociativity";
  v277 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[3] = v277;
  v301[4] = @"cloudBatchID";
  v276 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[4] = v276;
  v301[5] = @"cloudBatchPublishDate";
  v275 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[5] = v275;
  v301[6] = @"cloudCollectionGUID";
  v274 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[6] = v274;
  v301[7] = @"cloudDeleteState";
  v273 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[7] = v273;
  v301[8] = @"cloudDownloadRequests";
  v272 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[8] = v272;
  v301[9] = @"cloudHasCommentsByMe";
  v271 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[9] = v271;
  v301[10] = @"cloudHasCommentsConversation";
  v270 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[10] = v270;
  v301[11] = @"cloudHasUnseenComments";
  v269 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[11] = v269;
  v301[12] = @"cloudIsDeletable";
  v268 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[12] = v268;
  v301[13] = @"cloudIsMyAsset";
  v267 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[13] = v267;
  v301[14] = @"cloudLastViewedCommentDate";
  v266 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[14] = v266;
  v301[15] = @"cloudLocalState";
  v265 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[15] = v265;
  v301[16] = @"cloudOwnerHashedPersonID";
  v264 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[16] = v264;
  v301[17] = @"cloudServerPublishDate";
  v263 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[17] = v263;
  v301[18] = @"complete";
  v262 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[18] = v262;
  v301[19] = @"curationScore";
  v261 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[19] = v261;
  v301[20] = @"duplicateAssetVisibilityState";
  v260 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[20] = v260;
  v301[21] = @"faceAdjustmentVersion";
  v259 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[21] = v259;
  v301[22] = @"faceAreaPoints";
  v258 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[22] = v258;
  v301[23] = @"highlightVisibilityScore";
  v257 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[23] = v257;
  v301[24] = @"imageRequestHints";
  v256 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[24] = v256;
  v301[25] = @"overallAestheticScore";
  v255 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[25] = v255;
  v301[26] = @"packedAcceptableCropRect";
  v254 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[26] = v254;
  v301[27] = @"packedPreferredCropRect";
  v253 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[27] = v253;
  v301[28] = @"promotionScore";
  v252 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[28] = v252;
  v301[29] = @"thumbnailIndex";
  v251 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[29] = v251;
  v301[30] = @"trashedDate";
  v250 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[30] = v250;
  v301[31] = @"videoDeferredProcessingNeeded";
  v249 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[31] = v249;
  v301[32] = @"deleteReason";
  v248 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[32] = v248;
  v301[33] = @"iconicScore";
  v247 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[33] = v247;
  v301[34] = @"captureSessionIdentifier";
  v246 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[34] = v246;
  v301[35] = @"generativeMemoryCreationEligibilityState";
  v245 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[35] = v245;
  v301[36] = @"compactSCSensitivityAnalysis";
  v244 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[36] = v244;
  v301[37] = @"albums";
  v243 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[37] = v243;
  v301[38] = @"albumsBeingCustomKeyAsset";
  v242 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[38] = v242;
  v301[39] = @"albumsBeingKeyAssets";
  v241 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[39] = v241;
  v301[40] = @"analysisStates";
  v240 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[40] = v240;
  v301[41] = @"cloudComments";
  v239 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[41] = v239;
  v301[42] = @"cloudFeedAssetsEntry";
  v238 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[42] = v238;
  v301[43] = @"computedAttributes";
  v237 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[43] = v237;
  v301[44] = @"destinationAssetsForDuplication";
  v236 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[44] = v236;
  v301[45] = @"detectedFaces";
  v235 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[45] = v235;
  v301[46] = @"temporalDetectedFaces";
  v234 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[46] = v234;
  v301[47] = @"detectedTorsos";
  v233 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[47] = v233;
  v301[48] = @"faceCrops";
  v232 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[48] = v232;
  v301[49] = @"highlightBeingAssets";
  v231 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[49] = v231;
  v301[50] = @"videoKeyFrameTimeScale";
  v230 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[50] = v230;
  v301[51] = @"videoKeyFrameValue";
  v229 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[51] = v229;
  v301[52] = @"dayGroupHighlightBeingAssets";
  v228 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[52] = v228;
  v301[53] = @"dayGroupHighlightBeingKeyAssetPrivate";
  v227 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[53] = v227;
  v301[54] = @"dayGroupHighlightBeingKeyAssetShared";
  v226 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[54] = v226;
  v301[55] = @"dayGroupHighlightBeingExtendedAssets";
  v225 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[55] = v225;
  v301[56] = @"dayGroupHighlightBeingSummaryAssets";
  v224 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[56] = v224;
  v301[57] = @"duplicateMetadataMatchingAlbum";
  v223 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[57] = v223;
  v301[58] = @"duplicatePerceptualMatchingAlbum";
  v222 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[58] = v222;
  v301[59] = @"highlightBeingExtendedAssets";
  v221 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[59] = v221;
  v301[60] = @"highlightBeingKeyAssetPrivate";
  v220 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[60] = v220;
  v301[61] = @"highlightBeingKeyAssetShared";
  v219 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[61] = v219;
  v301[62] = @"highlightBeingSummaryAssets";
  v218 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[62] = v218;
  v301[63] = @"monthHighlightBeingKeyAssetPrivate";
  v217 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[63] = v217;
  v301[64] = @"monthHighlightBeingKeyAssetShared";
  v216 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[64] = v216;
  v301[65] = @"yearHighlightBeingKeyAssetPrivate";
  v215 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[65] = v215;
  v301[66] = @"yearHighlightBeingKeyAssetShared";
  v214 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[66] = v214;
  v301[67] = @"dayHighlightBeingCollageAssetsPrivate";
  v213 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[67] = v213;
  v301[68] = @"dayHighlightBeingCollageAssetsShared";
  v212 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[68] = v212;
  v301[69] = @"dayHighlightBeingCollageAssetsMixed";
  v211 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[69] = v211;
  v301[70] = @"importSession";
  v210 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[70] = v210;
  v301[71] = @"conversation";
  v209 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[71] = v209;
  v301[72] = @"legacyFaces";
  v208 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[72] = v208;
  v301[73] = @"likeComments";
  v207 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[73] = v207;
  v301[74] = @"mediaAnalysisAttributes";
  v206 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[74] = v206;
  v301[75] = @"computeSyncAttributes";
  v205 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[75] = v205;
  v301[76] = @"photoAnalysisAttributes";
  v204 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[76] = v204;
  v301[77] = @"isDetectedScreenshot";
  v203 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[77] = v203;
  v301[78] = @"isRecentlySaved";
  v202 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[78] = v202;
  v301[79] = @"proxyState";
  v201 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[79] = v201;
  v301[80] = @"memoriesBeingCuratedAssets";
  v200 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[80] = v200;
  v301[81] = @"memoriesBeingExtendedCuratedAssets";
  v199 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[81] = v199;
  v301[82] = @"memoriesBeingKeyAsset";
  v198 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[82] = v198;
  v301[83] = @"memoriesBeingMovieCuratedAssets";
  v197 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[83] = v197;
  v301[84] = @"memoriesBeingUserCuratedAssets";
  v196 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[84] = v196;
  v301[85] = @"memoriesBeingRepresentativeAssets";
  v195 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[85] = v195;
  v301[86] = @"memoriesBeingCustomUserAssets";
  v194 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[86] = v194;
  v301[87] = @"memoriesBeingUserRemovedAssets";
  v193 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[87] = v193;
  v301[88] = @"moment";
  v192 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[88] = v192;
  v301[89] = @"momentShare";
  v191 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[89] = v191;
  v301[90] = @"libraryScope";
  v190 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[90] = v190;
  v301[91] = @"activeLibraryScopeParticipationState";
  v189 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[91] = v189;
  v301[92] = @"libraryScopeContributors";
  v188 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[92] = v188;
  v301[93] = @"collectionShareContributor";
  v187 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[93] = v187;
  v301[94] = @"libraryScopeAssetContributors";
  v186 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[94] = v186;
  v301[95] = @"collectionShareAssetContributor";
  v185 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[95] = v185;
  v301[96] = @"trashedByParticipant";
  v184 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[96] = v184;
  v301[97] = @"collectionShare";
  v183 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[97] = v183;
  v301[98] = @"resources";
  v182 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[98] = v182;
  v301[99] = @"suggestionsBeingKeyAssets";
  v181 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[99] = v181;
  v301[100] = @"suggestionsBeingRepresentativeAssets";
  v180 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[100] = v180;
  v301[101] = @"packedBadgeAttributes";
  v179 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[101] = v179;
  v301[102] = @"derivedCameraCaptureDevice";
  v178 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[102] = v178;
  v301[103] = @"syndicationState";
  v177 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[103] = v177;
  v301[104] = @"searchIndexRebuildState";
  v176 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[104] = v176;
  v301[105] = @"stickerConfidenceScore";
  v175 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v302[105] = v175;
  v301[106] = @"extendedAttributes";
  v299 = @"asset";
  v174 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v300 = v174;
  v173 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v300 forKeys:&v299 count:1];
  v172 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 subRelationshipProperties:v173 subRelationshipEntityName:0 isToMany:0 isAdditionalEntityName:1 info:0];
  v302[106] = v172;
  v301[107] = @"additionalAttributes";
  v297[0] = @"hasPeopleSceneMidOrGreaterConfidence";
  v171 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[0] = v171;
  v297[1] = @"adjustedStableHash";
  v170 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[1] = v170;
  v297[2] = @"allowedForAnalysis";
  v169 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[2] = v169;
  v297[3] = @"cloudAvalanchePickType";
  v168 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[3] = v168;
  v297[4] = @"cloudKindSubtype";
  v167 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[4] = v167;
  v297[5] = @"cloudRecoveryState";
  v166 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[5] = v166;
  v297[6] = @"cloudStateRecoveryAttemptsCount";
  v165 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[6] = v165;
  v297[7] = @"destinationAssetCopyState";
  v164 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[7] = v164;
  v297[8] = @"distanceIdentity";
  v163 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[8] = v163;
  v297[9] = @"faceRegions";
  v162 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[9] = v162;
  v297[10] = @"gpsHorizontalAccuracy";
  v161 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[10] = v161;
  v297[11] = @"importSessionID";
  v160 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[11] = v160;
  v297[12] = @"lastUploadAttemptDate";
  v159 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[12] = v159;
  v297[13] = @"locationHash";
  v158 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[13] = v158;
  v297[14] = @"originalStableHash";
  v157 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[14] = v157;
  v297[15] = @"pendingPlayCount";
  v156 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[15] = v156;
  v297[16] = @"pendingShareCount";
  v155 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[16] = v155;
  v297[17] = @"pendingViewCount";
  v154 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[17] = v154;
  v297[18] = @"reverseLocationData";
  v153 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[18] = v153;
  v297[19] = @"reverseLocationDataIsValid";
  v152 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[19] = v152;
  v297[20] = @"sceneAnalysisTimestamp";
  v151 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[20] = v151;
  v297[21] = @"sceneAnalysisVersion";
  v150 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[21] = v150;
  v297[22] = @"sceneAnalysisIsFromPreview";
  v149 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[22] = v149;
  v297[23] = @"shiftedLocationData";
  v148 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[23] = v148;
  v297[24] = @"shiftedLocationIsValid";
  v147 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[24] = v147;
  v297[25] = @"objectSaliencyRectsData";
  v146 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[25] = v146;
  v297[26] = @"uploadAttempts";
  v145 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[26] = v145;
  v297[27] = @"variationSuggestionStates";
  v144 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[27] = v144;
  v297[28] = @"inferredTimeZoneOffset";
  v143 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[28] = v143;
  v297[29] = @"deferredProcessingCandidateOptions";
  v142 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[29] = v142;
  v297[30] = @"sourceAssetForDuplicationScopeIdentifier";
  v141 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[30] = v141;
  v297[31] = @"sourceAssetForDuplicationIdentifier";
  v140 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[31] = v140;
  v297[32] = @"faceAnalysisVersion";
  v139 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[32] = v139;
  v297[33] = @"duplicateDetectorPerceptualProcessingState";
  v138 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[33] = v138;
  v297[34] = @"cloudViewPresentation";
  v137 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[34] = v137;
  v297[35] = @"asset";
  v136 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[35] = v136;
  v297[36] = @"personReferences";
  v135 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[36] = v135;
  v297[37] = @"sceneClassifications";
  v134 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[37] = v134;
  v297[38] = @"temporalSceneClassifications";
  v133 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[38] = v133;
  v297[39] = @"sceneprint";
  v132 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v298[39] = v132;
  v297[40] = @"assetDescription";
  v295 = @"assetAttributes";
  v131 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v296 = v131;
  v130 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v296 forKeys:&v295 count:1];
  v129 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 subRelationshipProperties:v130 subRelationshipEntityName:0 isToMany:0 isAdditionalEntityName:1 info:0];
  v298[40] = v129;
  v297[41] = @"unmanagedAdjustment";
  v293[0] = @"assetAttributes";
  v128 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v294[0] = v128;
  v293[1] = @"uuid";
  v127 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v294[1] = v127;
  v126 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v294 forKeys:v293 count:2];
  v125 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 subRelationshipProperties:v126 subRelationshipEntityName:0 isToMany:0 isAdditionalEntityName:1 info:0];
  v298[41] = v125;
  v297[42] = @"mediaMetadata";
  v291[0] = @"additionalAssetAttributes";
  v124 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v292[0] = v124;
  v291[1] = @"cloudMaster";
  v123 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v292[1] = v123;
  v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v292 forKeys:v291 count:2];
  v121 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 subRelationshipProperties:v122 subRelationshipEntityName:0 isToMany:0 isAdditionalEntityName:1 info:0];
  v298[42] = v121;
  v297[43] = @"editedIPTCAttributes";
  v289[0] = @"caption";
  v120 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[0] = v120;
  v289[1] = @"byLine";
  v119 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[1] = v119;
  v289[2] = @"copyrightNotice";
  v118 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[2] = v118;
  v289[3] = @"keywords";
  v117 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[3] = v117;
  v289[4] = @"urgency";
  v116 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[4] = v116;
  v289[5] = @"dateCreated";
  v115 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[5] = v115;
  v289[6] = @"digitalCreationDate";
  v114 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[6] = v114;
  v289[7] = @"digitalCreationTime";
  v113 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[7] = v113;
  v289[8] = @"digitalSourceType";
  v112 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[8] = v112;
  v289[9] = @"expirationDate";
  v111 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[9] = v111;
  v289[10] = @"expirationTime";
  v110 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[10] = v110;
  v289[11] = @"referenceDate";
  v109 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[11] = v109;
  v289[12] = @"releaseDate";
  v108 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[12] = v108;
  v289[13] = @"releaseTime";
  v107 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[13] = v107;
  v289[14] = @"timeCreated";
  v106 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[14] = v106;
  v289[15] = @"editStatus";
  v105 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[15] = v105;
  v289[16] = @"contentLocationCode";
  v104 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[16] = v104;
  v289[17] = @"contentLocationName";
  v103 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[17] = v103;
  v289[18] = @"countryPrimaryLocationCode";
  v102 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[18] = v102;
  v289[19] = @"objectAttributeReference";
  v101 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[19] = v101;
  v289[20] = @"objectTypeReference";
  v100 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[20] = v100;
  v289[21] = @"subjectReference";
  v99 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[21] = v99;
  v289[22] = @"subLocation";
  v98 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[22] = v98;
  v289[23] = @"scene";
  v97 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[23] = v97;
  v289[24] = @"creatorContactInfo";
  v96 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[24] = v96;
  v289[25] = @"ciAdrCity";
  v95 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[25] = v95;
  v289[26] = @"ciAdrCtry";
  v94 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[26] = v94;
  v289[27] = @"ciAdrExtadr";
  v93 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[27] = v93;
  v289[28] = @"ciAdrPcode";
  v92 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[28] = v92;
  v289[29] = @"ciAdrRegion";
  v91 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[29] = v91;
  v289[30] = @"ciEmailWork";
  v90 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[30] = v90;
  v289[31] = @"ciTelWork";
  v89 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[31] = v89;
  v289[32] = @"ciUrlWork";
  v88 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[32] = v88;
  v289[33] = @"actionAdvised";
  v87 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[33] = v87;
  v289[34] = @"audioDuration";
  v86 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[34] = v86;
  v289[35] = @"audioOutcue";
  v85 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[35] = v85;
  v289[36] = @"audioSamplingRate";
  v84 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[36] = v84;
  v289[37] = @"audioSamplingRes";
  v83 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[37] = v83;
  v289[38] = @"audioType";
  v82 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[38] = v82;
  v289[39] = @"byLineTitle";
  v81 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[39] = v81;
  v289[40] = @"category";
  v80 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[40] = v80;
  v289[41] = @"city";
  v79 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[41] = v79;
  v289[42] = @"contact";
  v78 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[42] = v78;
  v289[43] = @"countryPrimaryLocationName";
  v77 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[43] = v77;
  v289[44] = @"credit";
  v76 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[44] = v76;
  v289[45] = @"editorialUpdate";
  v75 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[45] = v75;
  v289[46] = @"fixtureIdentifier";
  v74 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[46] = v74;
  v289[47] = @"headline";
  v73 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[47] = v73;
  v289[48] = @"imageOrientation";
  v72 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[48] = v72;
  v289[49] = @"imageType";
  v71 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[49] = v71;
  v289[50] = @"languageIdentifier";
  v70 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[50] = v70;
  v289[51] = @"objectCycle";
  v69 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[51] = v69;
  v289[52] = @"originatingProgram";
  v68 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[52] = v68;
  v289[53] = @"originalTransmissionReference";
  v67 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[53] = v67;
  v289[54] = @"programVersion";
  v66 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[54] = v66;
  v289[55] = @"provinceState";
  v65 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[55] = v65;
  v289[56] = @"objectName";
  v64 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[56] = v64;
  v289[57] = @"referenceNumber";
  v63 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[57] = v63;
  v289[58] = @"referenceService";
  v62 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[58] = v62;
  v289[59] = @"source";
  v61 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[59] = v61;
  v289[60] = @"specialInstructions";
  v60 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[60] = v60;
  v289[61] = @"supplementalCategory";
  v59 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[61] = v59;
  v289[62] = @"writerEditor";
  v58 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[62] = v58;
  v289[63] = @"usageTerms";
  v57 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[63] = v57;
  v289[64] = @"starRating";
  v56 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[64] = v56;
  v289[65] = @"assetAttributes";
  v55 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v290[65] = v55;
  v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v290 forKeys:v289 count:66];
  v53 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 subRelationshipProperties:v54 subRelationshipEntityName:0 isToMany:0 isAdditionalEntityName:1 info:0];
  v298[43] = v53;
  v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v298 forKeys:v297 count:44];
  v51 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 subRelationshipProperties:v52 subRelationshipEntityName:0 isToMany:0 isAdditionalEntityName:1 info:0];
  v302[107] = v51;
  v301[108] = @"modernResources";
  v287[0] = @"cloudDeleteAssetUUIDWithResourceType";
  v50 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v288[0] = v50;
  v287[1] = @"cloudDeleteState";
  v49 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v288[1] = v49;
  v287[2] = @"cloudLastOnDemandDownloadDate";
  v48 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v288[2] = v48;
  v287[3] = @"cloudLastPrefetchDate";
  v47 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v288[3] = v47;
  v287[4] = @"cloudPrunedAt";
  v46 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v288[4] = v46;
  v287[5] = @"cloudMasterDateCreated";
  v45 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v288[5] = v45;
  v287[6] = @"cloudPrefetchCount";
  v44 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v288[6] = v44;
  v287[7] = @"cloudSourceType";
  v43 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v288[7] = v43;
  v287[8] = @"dataStoreKeyData";
  v42 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v288[8] = v42;
  v287[9] = @"fileID";
  v41 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v288[9] = v41;
  v287[10] = @"localAvailability";
  v40 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v288[10] = v40;
  v287[11] = @"localAvailabilityTarget";
  v39 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v288[11] = v39;
  v287[12] = @"remoteAvailabilityTarget";
  v38 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v288[12] = v38;
  v287[13] = @"asset";
  v37 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v288[13] = v37;
  v287[14] = @"dataStoreClassID";
  v36 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v288[14] = v36;
  v287[15] = @"trashedDate";
  v35 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v288[15] = v35;
  v287[16] = @"utiConformanceHint";
  v34 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v288[16] = v34;
  v287[17] = @"uploadJobs";
  v33 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v288[17] = v33;
  v287[18] = @"fileSystemBookmark";
  v285 = @"resource";
  v32 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v286 = v32;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v286 forKeys:&v285 count:1];
  v30 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 subRelationshipProperties:v31 subRelationshipEntityName:0 isToMany:0 isAdditionalEntityName:1 info:0];
  v288[18] = v30;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v288 forKeys:v287 count:19];
  v28 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 subRelationshipProperties:v29 subRelationshipEntityName:0 isToMany:0 isAdditionalEntityName:1 info:0];
  v302[108] = v28;
  v301[109] = @"master";
  v283[0] = @"cloudLocalState";
  v27 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v284[0] = v27;
  v283[1] = @"importedBy";
  v26 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v284[1] = v26;
  v283[2] = @"importedByBundleIdentifier";
  v25 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v284[2] = v25;
  v283[3] = @"importedByDisplayName";
  v24 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v284[3] = v24;
  v283[4] = @"originalFilename";
  v23 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v284[4] = v23;
  v283[5] = @"originalOrientation";
  v22 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v284[5] = v22;
  v283[6] = @"originatingAssetIdentifier";
  v21 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v284[6] = v21;
  v283[7] = @"placeholderState";
  v20 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v284[7] = v20;
  v283[8] = @"assets";
  v19 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v284[8] = v19;
  v283[9] = @"momentShare";
  v18 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v284[9] = v18;
  v283[10] = @"collectionShare";
  v17 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v284[10] = v17;
  v283[11] = @"resources";
  v16 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v284[11] = v16;
  v283[12] = @"modernResources";
  v15 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v284[12] = v15;
  v283[13] = @"videoFrameRate";
  v14 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v284[13] = v14;
  v283[14] = @"codecName";
  v13 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v284[14] = v13;
  v283[15] = @"sourceMasterForDuplicationScopeIdentifier";
  v2 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v284[15] = v2;
  v283[16] = @"sourceMasterForDuplicationIdentifier";
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v284[16] = v3;
  v283[17] = @"proxyState";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v284[17] = v4;
  v283[18] = @"mediaMetadata";
  v281[0] = @"additionalAssetAttributes";
  v5 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v282[0] = v5;
  v281[1] = @"cloudMaster";
  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 andType:0 info:0];
  v282[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v282 forKeys:v281 count:2];
  v8 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 subRelationshipProperties:v7 subRelationshipEntityName:0 isToMany:0 isAdditionalEntityName:1 info:0];
  v284[18] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v284 forKeys:v283 count:19];
  v10 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 subRelationshipProperties:v9 subRelationshipEntityName:0 isToMany:0 isAdditionalEntityName:1 info:0];
  v302[109] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v302 forKeys:v301 count:110];

  return v11;
}

+ (id)modelPropertiesDescription
{
  MEMORY[0x1EEE9AC00](a1);
  v224[49] = *MEMORY[0x1E69E9840];
  v223[0] = @"uuid";
  v201 = +[PLJournalEntryPayloadProperty payloadPropertyForUUID];
  v224[0] = v201;
  v223[1] = @"directory";
  v200 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[1] = v200;
  v223[2] = @"filename";
  v199 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[2] = v199;
  v223[3] = @"savedAssetType";
  v198 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[3] = v198;
  v223[4] = @"bundleScope";
  v197 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:requiresConversion:info:" andType:? requiresConversion:? info:?];
  v224[4] = v197;
  v223[5] = @"cloudAssetGUID";
  v196 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[5] = v196;
  v223[6] = @"avalancheUUID";
  v195 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:requiresConversion:info:" andType:? requiresConversion:? info:?];
  v224[6] = v195;
  v223[7] = @"avalanchePickType";
  v194 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:requiresConversion:info:" andType:? requiresConversion:? info:?];
  v224[7] = v194;
  v223[8] = @"hidden";
  v193 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[8] = v193;
  v223[9] = @"favorite";
  v192 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[9] = v192;
  v223[10] = @"trashedState";
  v191 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"inTrash" andType:100 requiresConversion:1 info:0];
  v224[10] = v191;
  v223[11] = @"trashedReason";
  v190 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[11] = v190;
  v223[12] = @"dateCreated";
  v189 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[12] = v189;
  v223[13] = @"addedDate";
  v188 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[13] = v188;
  v223[14] = @"locationData";
  v187 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[14] = v187;
  v223[15] = @"mediaGroupUUID";
  v186 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[15] = v186;
  v223[16] = @"videoCpVisibilityState";
  v185 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"videoCpVisibility" andType:100 info:0];
  v224[16] = v185;
  v223[17] = @"videoCpDurationValue";
  v184 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"videoCpDuration" andType:300 info:0];
  v224[17] = v184;
  v223[18] = @"currentSleetCast";
  v183 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[18] = v183;
  v223[19] = @"hdrType";
  v182 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"customRenderedValue" andType:100 info:0];
  v224[19] = v182;
  v223[20] = @"spatialType";
  v181 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[20] = v181;
  v223[21] = @"depthType";
  v180 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"depthStates" andType:100 info:0];
  v224[21] = v180;
  v223[22] = @"duration";
  v179 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"duration" andType:500 info:0];
  v224[22] = v179;
  v223[23] = @"adjustmentsState";
  v178 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[23] = v178;
  v223[24] = @"hdrGain";
  v177 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[24] = v177;
  v223[25] = @"height";
  v176 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[25] = v176;
  v223[26] = @"kind";
  v175 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[26] = v175;
  v223[27] = @"kindSubtype";
  v174 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[27] = v174;
  v223[28] = @"lastSharedDate";
  v173 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[28] = v173;
  v223[29] = @"latitude";
  v172 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"latitude" andType:500 info:0];
  v224[29] = v172;
  v223[30] = @"longitude";
  v171 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"longitude" andType:500 info:0];
  v224[30] = v171;
  v223[31] = @"modificationDate";
  v170 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[31] = v170;
  v223[32] = @"orientation";
  v169 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[32] = v169;
  v223[33] = @"originalColorSpace";
  v168 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[33] = v168;
  v223[34] = @"playbackStyle";
  v167 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[34] = v167;
  v223[35] = @"playbackVariation";
  v166 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[35] = v166;
  v223[36] = @"sortToken";
  v165 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[36] = v165;
  v223[37] = @"uniformTypeIdentifier";
  v164 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"uti" andType:700 info:0];
  v224[37] = v164;
  v223[38] = @"visibilityState";
  v163 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[38] = v163;
  v223[39] = @"width";
  v162 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[39] = v162;
  v223[40] = @"deferredProcessingNeeded";
  v161 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[40] = v161;
  v223[41] = @"cameraProcessingAdjustmentState";
  v160 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"snowplowState" andType:100 info:0];
  v224[41] = v160;
  v223[42] = @"highFrameRateState";
  v159 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[42] = v159;
  v223[43] = @"isMagicCarpet";
  v158 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[43] = v158;
  v223[44] = @"libraryScopeShareState";
  v157 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v224[44] = v157;
  v223[45] = @"master";
  v148 = +[PLCloudMaster entityName];
  v221[0] = @"cloudMasterGUID";
  v156 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v222[0] = v156;
  v221[1] = @"uniformTypeIdentifier";
  v155 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"originalUTI" andType:700 info:0];
  v222[1] = v155;
  v221[2] = @"creationDate";
  v154 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v222[2] = v154;
  v221[3] = @"importDate";
  v153 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v222[3] = v153;
  v221[4] = @"mediaMetadataType";
  v152 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v222[4] = v152;
  v221[5] = @"importSessionID";
  v151 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v222[5] = v151;
  v221[6] = @"fullSizeJPEGSource";
  v150 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v222[6] = v150;
  v221[7] = @"mediaMetadata";
  v147 = +[PLCloudMasterMediaMetadata entityName];
  v219 = @"data";
  v149 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"mediaMetadata" andType:1000 info:0];
  v220 = v149;
  v146 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v220 forKeys:&v219 count:1];
  v145 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 subRelationshipProperties:v146 subRelationshipEntityName:v147 isToMany:0 isAdditionalEntityName:1 info:0];
  v222[7] = v145;
  v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v222 forKeys:v221 count:8];
  v143 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"master" subRelationshipProperties:v144 subRelationshipEntityName:v148 isToMany:0 isAdditionalEntityName:1 info:0];
  v224[45] = v143;
  v223[46] = @"modernResources";
  v125 = +[PLInternalResource entityName];
  v217[0] = @"resourceType";
  v142 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"type" andType:200 info:0];
  v218[0] = v142;
  v217[1] = @"version";
  v141 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v218[1] = v141;
  v217[2] = @"recipeID";
  v140 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v218[2] = v140;
  v217[3] = @"dataStoreSubtype";
  v139 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"subType" andType:300 info:0];
  v218[3] = v139;
  v217[4] = @"unorientedWidth";
  v138 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"uwidth" andType:300 info:0];
  v218[4] = v138;
  v217[5] = @"unorientedHeight";
  v137 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"uheight" andType:300 info:0];
  v218[5] = v137;
  v217[6] = @"dataLength";
  v136 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"length" andType:300 info:0];
  v218[6] = v136;
  v217[7] = @"fingerprint";
  v135 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v218[7] = v135;
  v217[8] = @"stableHash";
  v134 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v218[8] = v134;
  v217[9] = @"sidecarIndex";
  v133 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v218[9] = v133;
  v217[10] = @"ptpTrashedState";
  v132 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"ptpTrashedState" andType:300 info:0];
  v218[10] = v132;
  v217[11] = @"trashedState";
  v131 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"inTrash" andType:100 requiresConversion:1 info:0];
  v218[11] = v131;
  v217[12] = @"remoteAvailability";
  v130 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v218[12] = v130;
  v217[13] = @"cloudLocalState";
  v129 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v218[13] = v129;
  v217[14] = @"compactUTI";
  v128 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"uti" andType:700 requiresConversion:1 info:0];
  v218[14] = v128;
  v217[15] = @"codecFourCharCodeName";
  v127 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"codec" andType:700 info:0];
  v218[15] = v127;
  v217[16] = @"fileSystemVolume";
  v2 = [MEMORY[0x1E695DFD8] setWithObject:@"uuid"];
  v126 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"volume" relatedEntityPropertyNames:v2 shouldPrefetchRelationship:1];

  v218[16] = v126;
  v217[17] = @"fileSystemBookmark";
  v122 = +[PLFileSystemBookmark entityName];
  v215[0] = @"bookmarkData";
  v124 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v216[0] = v124;
  v215[1] = @"pathRelativeToVolume";
  v123 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"bookmarkPath" andType:700 info:0];
  v216[1] = v123;
  v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v216 forKeys:v215 count:2];
  v120 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"bookmark" subRelationshipProperties:v121 subRelationshipEntityName:v122 isToMany:0 isAdditionalEntityName:1 info:0];
  v218[17] = v120;
  v119 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v218 forKeys:v217 count:18];
  v118 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"resources" subRelationshipProperties:v119 subRelationshipEntityName:v125 isToMany:1 isAdditionalEntityName:1 info:0];
  v224[46] = v118;
  v223[47] = @"extendedAttributes";
  v89 = +[PLExtendedAttributes entityName];
  v213[0] = @"aperture";
  v117 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exAperture" andType:500 info:0];
  v214[0] = v117;
  v213[1] = @"bitrate";
  v116 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exBitrate" andType:500 info:0];
  v214[1] = v116;
  v213[2] = @"cameraModel";
  v115 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exCameraModel" andType:700 info:0];
  v214[2] = v115;
  v213[3] = @"cameraMake";
  v114 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exCameraMake" andType:700 info:0];
  v214[3] = v114;
  v213[4] = @"codec";
  v113 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exCodec" andType:700 info:0];
  v214[4] = v113;
  v213[5] = @"credit";
  v112 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exCredit" andType:700 info:0];
  v214[5] = v112;
  v213[6] = @"dateCreated";
  v111 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exDateCreated" andType:900 info:0];
  v214[6] = v111;
  v213[7] = @"duration";
  v110 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exDuration" andType:500 info:0];
  v214[7] = v110;
  v213[8] = @"exposureBias";
  v109 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exExposureBias" andType:500 info:0];
  v214[8] = v109;
  v213[9] = @"flashFired";
  v108 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exFlashFired" andType:800 info:0];
  v214[9] = v108;
  v213[10] = @"focalLength";
  v107 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exFocalLength" andType:500 info:0];
  v214[10] = v107;
  v213[11] = @"focalLengthIn35mm";
  v106 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exFocalLengthIn35mm" andType:300 info:0];
  v214[11] = v106;
  v213[12] = @"fps";
  v105 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exFps" andType:500 info:0];
  v214[12] = v105;
  v213[13] = @"generativeAIType";
  v104 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exGenerativeAIType" andType:200 info:0];
  v214[13] = v104;
  v213[14] = @"iso";
  v103 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exIso" andType:300 info:0];
  v214[14] = v103;
  v213[15] = @"lensModel";
  v102 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exLensModel" andType:700 info:0];
  v214[15] = v102;
  v213[16] = @"meteringMode";
  v101 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exMeteringMode" andType:300 info:0];
  v214[16] = v101;
  v213[17] = @"sampleRate";
  v100 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exSampleRate" andType:300 info:0];
  v214[17] = v100;
  v213[18] = @"shutterSpeed";
  v99 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exShutterSpeed" andType:500 info:0];
  v214[18] = v99;
  v213[19] = @"trackFormat";
  v98 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exTrackFormat" andType:300 info:0];
  v214[19] = v98;
  v213[20] = @"whiteBalance";
  v97 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exWhiteBalance" andType:300 info:0];
  v214[20] = v97;
  v213[21] = @"latitude";
  v96 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exLatitude" andType:500 info:0];
  v214[21] = v96;
  v213[22] = @"longitude";
  v95 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exLongitude" andType:500 info:0];
  v214[22] = v95;
  v213[23] = @"slushSceneBias";
  v94 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v214[23] = v94;
  v213[24] = @"slushWarmthBias";
  v93 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v214[24] = v93;
  v213[25] = @"slushVersion";
  v92 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v214[25] = v92;
  v213[26] = @"slushPreset";
  v91 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v214[26] = v91;
  v213[27] = @"timezoneName";
  v90 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exTimezoneName" andType:700 info:0];
  v214[27] = v90;
  v213[28] = @"timezoneOffset";
  v88 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exTimezoneOffset" andType:200 info:0];
  v214[28] = v88;
  v213[29] = @"digitalZoomRatio";
  v87 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exDigitalZoomRatio" andType:500 info:0];
  v214[29] = v87;
  v213[30] = @"orientation";
  v86 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exOrientation" andType:100 info:0];
  v214[30] = v86;
  v213[31] = @"sleetCast";
  v85 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exSleetCast" andType:100 info:0];
  v214[31] = v85;
  v213[32] = @"sleetToneBias";
  v84 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exSleetToneBias" andType:500 info:0];
  v214[32] = v84;
  v213[33] = @"sleetColorBias";
  v83 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exSleetColorBias" andType:500 info:0];
  v214[33] = v83;
  v213[34] = @"sleetIntensity";
  v82 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exSleetIntensity" andType:500 info:0];
  v214[34] = v82;
  v213[35] = @"sleetRenderingVersion";
  v81 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"exSleetRenderingVersion" andType:100 info:0];
  v214[35] = v81;
  v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v214 forKeys:v213 count:36];
  v79 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"extendedAttributes" subRelationshipProperties:v80 subRelationshipEntityName:v89 isToMany:0 isAdditionalEntityName:1 info:0];
  v224[47] = v79;
  v223[48] = @"additionalAttributes";
  v202 = +[PLAdditionalAssetAttributes entityName];
  v211[0] = @"importedByBundleIdentifier";
  v78 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"creatorBundleID" andType:700 info:0];
  v212[0] = v78;
  v211[1] = @"importedByDisplayName";
  v77 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[1] = v77;
  v211[2] = @"originalAssetsUUID";
  v76 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"originalAssetUUID" andType:700 info:0];
  v212[2] = v76;
  v211[3] = @"publicGlobalUUID";
  v75 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[3] = v75;
  v211[4] = @"title";
  v74 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[4] = v74;
  v211[5] = @"accessibilityDescription";
  v73 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[5] = v73;
  v211[6] = @"timeZoneName";
  v72 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[6] = v72;
  v211[7] = @"timeZoneOffset";
  v71 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[7] = v71;
  v211[8] = @"originalFilename";
  v70 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[8] = v70;
  v211[9] = @"placeAnnotationData";
  v69 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[9] = v69;
  v211[10] = @"videoCpDurationTimescale";
  v68 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[10] = v68;
  v211[11] = @"videoCpDisplayValue";
  v67 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[11] = v67;
  v211[12] = @"videoCpDisplayTimescale";
  v66 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[12] = v66;
  v211[13] = @"importedBy";
  v65 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[13] = v65;
  v211[14] = @"cameraCaptureDevice";
  v64 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[14] = v64;
  v211[15] = @"alternateImportImageDate";
  v63 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[15] = v63;
  v211[16] = @"editorBundleID";
  v62 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[16] = v62;
  v211[17] = @"embeddedThumbnailHeight";
  v61 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[17] = v61;
  v211[18] = @"embeddedThumbnailLength";
  v60 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[18] = v60;
  v211[19] = @"embeddedThumbnailOffset";
  v59 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[19] = v59;
  v211[20] = @"embeddedThumbnailWidth";
  v58 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[20] = v58;
  v211[21] = @"exifTimestampString";
  v57 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[21] = v57;
  v211[22] = @"montage";
  v56 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[22] = v56;
  v211[23] = @"originalFilesize";
  v55 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[23] = v55;
  v211[24] = @"originalHeight";
  v54 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[24] = v54;
  v211[25] = @"originalOrientation";
  v53 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[25] = v53;
  v211[26] = @"originalResourceChoice";
  v52 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[26] = v52;
  v211[27] = @"originalWidth";
  v51 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[27] = v51;
  v211[28] = @"sleetIsReversible";
  v50 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[28] = v50;
  v211[29] = @"originatingAssetIdentifier";
  v49 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[29] = v49;
  v211[30] = @"ptpTrashedState";
  v48 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"ptpTrashedState" andType:300 info:0];
  v212[30] = v48;
  v211[31] = @"shareOriginator";
  v47 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[31] = v47;
  v211[32] = @"shareType";
  v46 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[32] = v46;
  v211[33] = @"playCount";
  v45 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[33] = v45;
  v211[34] = @"shareCount";
  v44 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[34] = v44;
  v211[35] = @"viewCount";
  v43 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[35] = v43;
  v211[36] = @"lastViewedDate";
  v42 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[36] = v42;
  v211[37] = @"deferredPhotoIdentifier";
  v41 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"snowdayIdentifier" andType:700 info:0];
  v212[37] = v41;
  v211[38] = @"mediaMetadataType";
  v40 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"assetMediaMetadataType" andType:700 info:0];
  v212[38] = v40;
  v211[39] = @"photoStreamTagId";
  v39 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[39] = v39;
  v211[40] = @"originalHash";
  v38 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[40] = v38;
  v211[41] = @"spatialOverCaptureGroupIdentifier";
  v37 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"snowplowGroupUUID" andType:700 info:0];
  v212[41] = v37;
  v211[42] = @"syndicationIdentifier";
  v36 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[42] = v36;
  v211[43] = @"syndicationHistory";
  v35 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[43] = v35;
  v211[44] = @"libraryScopeAssetContributorsToUpdate";
  v34 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[44] = v34;
  v211[45] = @"dateCreatedSource";
  v33 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[45] = v33;
  v211[46] = @"viewPresentation";
  v32 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v212[46] = v32;
  v211[47] = @"keywords";
  v3 = [MEMORY[0x1E695DFD8] setWithObject:@"uuid"];
  v31 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"keywords" relatedEntityPropertyNames:v3 shouldPrefetchRelationship:1];

  v212[47] = v31;
  v211[48] = @"assetDescription";
  v29 = +[PLAssetDescription entityName];
  v209 = @"longDescription";
  v30 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"description" andType:700 info:0];
  v210 = v30;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
  v27 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"assetDescription" subRelationshipProperties:v28 subRelationshipEntityName:v29 isToMany:0 isAdditionalEntityName:1 info:0];
  v212[48] = v27;
  v211[49] = @"unmanagedAdjustment";
  v19 = +[PLUnmanagedAdjustment entityName];
  v207[0] = @"adjustmentBaseImageFormat";
  v26 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v208[0] = v26;
  v207[1] = @"adjustmentFormatIdentifier";
  v25 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v208[1] = v25;
  v207[2] = @"adjustmentFormatVersion";
  v24 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v208[2] = v24;
  v207[3] = @"adjustmentRenderTypes";
  v23 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v208[3] = v23;
  v207[4] = @"adjustmentTimestamp";
  v22 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v208[4] = v22;
  v207[5] = @"editorLocalizedName";
  v21 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v208[5] = v21;
  v207[6] = @"otherAdjustmentsFingerprint";
  v20 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v208[6] = v20;
  v207[7] = @"similarToOriginalAdjustmentsFingerprint";
  v18 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v208[7] = v18;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v208 forKeys:v207 count:8];
  v16 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"unmanagedAdjustment" subRelationshipProperties:v17 subRelationshipEntityName:v19 isToMany:0 isAdditionalEntityName:1 info:0];
  v212[49] = v16;
  v211[50] = @"mediaMetadata";
  v15 = +[PLCloudMasterMediaMetadata entityName];
  v205 = @"data";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"assetMediaMetadata" andType:1000 info:0];
  v206 = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"assetMediaMetadataRelationship" subRelationshipProperties:v5 subRelationshipEntityName:v15 isToMany:0 isAdditionalEntityName:1 info:0];
  v212[50] = v6;
  v211[51] = @"editedIPTCAttributes";
  v7 = +[PLEditedIPTCAttributes entityName];
  v203 = @"data";
  v8 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"iptcData" andType:1000 info:0];
  v204 = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v204 forKeys:&v203 count:1];
  v10 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"editedIPTCAttributes" subRelationshipProperties:v9 subRelationshipEntityName:v7 isToMany:0 isAdditionalEntityName:1 info:0];
  v212[51] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v212 forKeys:v211 count:52];
  v12 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:0 subRelationshipProperties:v11 subRelationshipEntityName:v202 isToMany:0 isAdditionalEntityName:1 info:0];
  v224[48] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v224 forKeys:v223 count:49];

  return v13;
}

- (void)_fixSleetIsReversibleWithAdditionalAssetAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 asset];
  v14 = [v5 pathManager];

  objc_opt_class();
  v6 = [v4 managedObjectContext];

  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 pl_libraryBundle];
  v10 = [v9 timeZoneLookup];

  [(PLAssetJournalEntryPayload *)self setSleetIsReversible:0];
  if ([(PLAssetJournalEntryPayload *)self isImage])
  {
    v11 = [(PLAssetJournalEntryPayload *)self _loadOriginalImageMetadataWithPathManager:v14 timezoneLookup:v10];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 smartStyleIsReversible];

      if (v13)
      {
        [(PLAssetJournalEntryPayload *)self setSleetIsReversible:1];
      }
    }
  }

  else
  {
    v12 = 0;
  }
}

- (void)_fixDateCreatedSourceWithAdditionalAssetAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 asset];
  v14 = [v5 pathManager];

  objc_opt_class();
  v6 = [v4 managedObjectContext];

  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 pl_libraryBundle];
  v10 = [v9 timeZoneLookup];

  if ([(PLAssetJournalEntryPayload *)self isImage])
  {
    v11 = [(PLAssetJournalEntryPayload *)self _loadOriginalImageMetadataWithPathManager:v14 timezoneLookup:v10];
  }

  else
  {
    if (![(PLAssetJournalEntryPayload *)self isVideo])
    {
      goto LABEL_10;
    }

    v11 = [(PLAssetJournalEntryPayload *)self _loadOriginalVideoMetadataWithPathManager:v14 timezoneLookup:v10];
  }

  v12 = v11;
  if (v11)
  {
    v13 = [v11 creationDateSource];

    goto LABEL_11;
  }

LABEL_10:
  v13 = 0;
LABEL_11:
  [(PLAssetJournalEntryPayload *)self setDateCreatedSource:v13];
}

- (void)_filterNonPersistedResources
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(PLAssetJournalEntryPayload *)self resources];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isValidForPersistence])
        {
          v10 = [v9 payloadAttributes];
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->super._payloadAttributes setObject:v3 forKeyedSubscript:@"resources"];
}

- (void)_convertCustomRenderedValueToHDRType
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"customRenderedValue"];
  if (-[PLAssetJournalEntryPayload isImage](self, "isImage") && ([&unk_1F0FBFFB8 containsObject:v3] & 1) == 0)
  {
    [(NSMutableDictionary *)self->super._payloadAttributes setObject:&unk_1F0FBDDC8 forKeyedSubscript:@"customRenderedValue"];
  }
}

- (void)_convertDepthStatesToDepthType
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"customRenderedValue"];
  v4 = [v3 intValue];

  v5 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"depthStates"];
  v6 = [v5 unsignedIntValue];

  if (v4 - 7 < 2 || (v6 & 0xFFFE) == 2)
  {
    payloadAttributes = self->super._payloadAttributes;

    [(NSMutableDictionary *)payloadAttributes setObject:&unk_1F0FBDDB0 forKeyedSubscript:@"depthStates"];
  }
}

- (void)_fixHDRGainZeroValueToNULL
{
  IsEqual = [(PLAssetJournalEntryPayload *)self hdrGain];
  if (IsEqual)
  {
    IsEqual = PLNumberIsEqual(IsEqual, &unk_1F0FC04C8);
    if (IsEqual)
    {
      IsEqual = [(NSMutableDictionary *)self->super._payloadAttributes removeObjectForKey:@"hdrGain"];
    }
  }

  MEMORY[0x1EEE66BE0](IsEqual);
}

- (void)_fixResourceTypeUnknownValues
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v13 = self;
  v4 = [(PLAssetJournalEntryPayload *)self resources];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 resourceType] == 32)
        {
          v10 = objc_alloc(MEMORY[0x1E695DF90]);
          v11 = [v9 payloadAttributes];
          v12 = [v10 initWithDictionary:v11];

          [v12 setObject:&unk_1F0FBDD98 forKeyedSubscript:@"type"];
        }

        else
        {
          v12 = [v9 payloadAttributes];
        }

        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)v13->super._payloadAttributes setObject:v3 forKeyedSubscript:@"resources"];
}

- (void)_fixXMPSidecarUTI
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = self;
  v4 = [(PLAssetJournalEntryPayload *)self resources];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    v22 = *MEMORY[0x1E6982D60];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if ([v9 resourceType] != 5)
        {
          v12 = [v9 payloadAttributes];
          [v3 addObject:v12];
          goto LABEL_16;
        }

        v10 = MEMORY[0x1E69C08F0];
        v11 = [v9 uniformTypeIdentifierString];
        v12 = [v10 typeWithIdentifier:v11];

        if ([v12 isDynamic])
        {
          v13 = objc_alloc(MEMORY[0x1E695DF90]);
          v14 = [v9 payloadAttributes];
          v15 = [v13 initWithDictionary:v14];

          v16 = [v22 identifier];
          [v15 setObject:v16 forKeyedSubscript:@"uti"];
        }

        else
        {
          v17 = [MEMORY[0x1E69C08F0] supplementalResourceAAEType];
          if (![v12 isEqual:v17])
          {

LABEL_14:
            v15 = [v9 payloadAttributes];
            goto LABEL_15;
          }

          v18 = [v9 cplType];

          if (v18 == 22)
          {
            goto LABEL_14;
          }

          v19 = objc_alloc(MEMORY[0x1E695DF90]);
          v20 = [v9 payloadAttributes];
          v15 = [v19 initWithDictionary:v20];

          [v15 setObject:&unk_1F0FBDD80 forKeyedSubscript:@"subType"];
        }

LABEL_15:
        [v3 addObject:v15];

LABEL_16:
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)v21->super._payloadAttributes setObject:v3 forKeyedSubscript:@"resources"];
}

- (void)_fixLocationData
{
  v13 = [(PLAssetJournalEntryPayload *)self extendedAttributesLatitude];
  v3 = [(PLAssetJournalEntryPayload *)self locationData];

  v4 = v13;
  if (!v3 && v13)
  {
    v5 = [(PLAssetJournalEntryPayload *)self extendedAttributesLongitude];
    if (v5)
    {
      [v13 doubleValue];
      v7 = v6;
      [v5 doubleValue];
      v9 = CLLocationCoordinate2DMake(v7, v8);
      if ([PLLocationUtils canUseCoordinate:?])
      {
        v10 = objc_alloc(MEMORY[0x1E6985C40]);
        v11 = [(PLAssetJournalEntryPayload *)self dateCreated];
        v12 = [v10 initWithCoordinate:v11 altitude:v9.latitude horizontalAccuracy:v9.longitude verticalAccuracy:0.0 timestamp:{0.0, 0.0}];
      }

      else
      {
        v12 = 0;
      }

      [(PLAssetJournalEntryPayload *)self setLocation:v12];
    }

    v4 = v13;
  }
}

- (void)_fixAdjustedAssetUTI
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(PLAssetJournalEntryPayload *)self hasAdjustments])
  {
    if ([(PLAssetJournalEntryPayload *)self isImage])
    {
      v14 = [*MEMORY[0x1E6982E58] identifier];
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    else if ([(PLAssetJournalEntryPayload *)self isVideo])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v3 = [(PLAssetJournalEntryPayload *)self resources];
      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v16;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v16 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v15 + 1) + 8 * i);
            if (![v8 dataStoreClassID] && objc_msgSend(v8, "version") == 2 && objc_msgSend(v8, "cplType") == 16)
            {
              v10 = [v8 uniformTypeIdentifierString];
              v9 = *MEMORY[0x1E6982F80];
              v11 = [*MEMORY[0x1E6982F80] identifier];
              v12 = [v10 isEqualToString:v11];

              if ((v12 & 1) == 0)
              {
                [(NSMutableDictionary *)self->super._payloadAttributes setObject:&unk_1F0FBDD50 forKeyedSubscript:@"deferredProcessingNeeded"];
              }

              goto LABEL_21;
            }
          }

          v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

      v9 = *MEMORY[0x1E6982F80];
LABEL_21:
      v13 = [v9 identifier];
      [(NSMutableDictionary *)self->super._payloadAttributes setObject:v13 forKeyedSubscript:@"uti"];
    }
  }
}

- (void)_convertHasAdjustmentsToAdjustmentsState
{
  v3 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"hasAdjustments"];
  if (v3)
  {
    v9 = v3;
    v4 = [v3 BOOLValue];
    payloadAttributes = self->super._payloadAttributes;
    if (v4)
    {
      v6 = [(NSMutableDictionary *)payloadAttributes objectForKeyedSubscript:@"adjustmentRenderTypes"];
      v7 = [v6 unsignedIntegerValue];

      if ((v7 & 0x2000) != 0)
      {
        payloadAttributes = self->super._payloadAttributes;
        v8 = &unk_1F0FBDD38;
      }

      else
      {
        payloadAttributes = self->super._payloadAttributes;
        if (v7)
        {
          v8 = &unk_1F0FBDD50;
        }

        else
        {
          v8 = &unk_1F0FBDD20;
        }
      }
    }

    else
    {
      v8 = &unk_1F0FBDD68;
    }

    [(NSMutableDictionary *)payloadAttributes setObject:v8 forKeyedSubscript:@"adjustmentsState"];
    v3 = v9;
  }
}

@end