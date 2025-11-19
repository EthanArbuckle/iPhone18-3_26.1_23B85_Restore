@interface PLAssetComputeSyncJournalEntryPayload
+ (BOOL)shouldIncludeOCR;
+ (id)detectedFacePropertiesDescription;
+ (id)mediaAnalysisAttributesPropertiesDictionary;
+ (id)modelProperties;
+ (id)modelPropertiesDescription;
+ (id)payloadAdapterForManagedObject:(id)a3;
+ (id)payloadClassID;
+ (id)persistedPropertyNamesForEntityNames;
+ (id)sceneClassificationPropertiesDescription;
+ (void)setShouldIncludeOCR:(BOOL)a3;
- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5;
- (int64_t)characterRecognitionVersion;
- (int64_t)faceAnalysisVersion;
- (int64_t)imageEmbeddingVersion;
- (int64_t)mediaAnalysisVersion;
- (int64_t)sceneAnalysisVersion;
- (int64_t)textUnderstandingVersion;
- (int64_t)videoEmbeddingVersion;
- (int64_t)visualSearchVersion;
- (void)applyPayloadProperty:(id)a3 toManagedObject:(id)a4 key:(id)a5 payloadAttributesToUpdate:(id)a6 payloadDictionary:(id)a7 info:(id)a8;
@end

@implementation PLAssetComputeSyncJournalEntryPayload

- (int64_t)videoEmbeddingVersion
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"videoEmbeddingVersion"];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)imageEmbeddingVersion
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"imageEmbeddingVersion"];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)visualSearchVersion
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"vsAlgorithmVersion"];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)textUnderstandingVersion
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"textUnderstandingVersion"];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)characterRecognitionVersion
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"crAlgorithmVersion"];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)mediaAnalysisVersion
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"mediaAnalysisVersion"];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)faceAnalysisVersion
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"faceAnalysisVersion"];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)sceneAnalysisVersion
{
  v2 = [(NSMutableDictionary *)self->super._payloadAttributes objectForKeyedSubscript:@"sceneAnalysisVersion"];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)comparePayloadValue:(id)a3 toObjectDictionaryValue:(id)a4 forPayloadProperty:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 parentProperty];
  if ([v11 isEqualToKey:@"generatedAssetDescriptions"])
  {
    v12 = [v10 isEqualToKey:@"analysisVersion"];

    if (v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (([v10 isEqualToKey:@"mediaAnalysisVersion"] & 1) == 0 && (objc_msgSend(v10, "isEqualToKey:", @"mediaAnalysisImageVersion") & 1) == 0 && (objc_msgSend(v10, "isEqualToKey:", @"imageEmbeddingVersion") & 1) == 0 && !objc_msgSend(v10, "isEqualToKey:", @"videoEmbeddingVersion"))
  {
    if ([v10 isEqualToKey:@"imageCaptionVersion"] & 1) != 0 || (objc_msgSend(v10, "isEqualToKey:", @"videoCaptionVersion"))
    {
      goto LABEL_11;
    }

LABEL_14:
    v15.receiver = self;
    v15.super_class = PLAssetComputeSyncJournalEntryPayload;
    v13 = [(PLManagedObjectJournalEntryPayload *)&v15 comparePayloadValue:v8 toObjectDictionaryValue:v9 forPayloadProperty:v10];
    goto LABEL_15;
  }

LABEL_9:
  if ([v9 integerValue] != 1 || !objc_msgSend(v8, "integerValue"))
  {
    goto LABEL_14;
  }

LABEL_11:
  v13 = 1;
LABEL_15:

  return v13;
}

- (void)applyPayloadProperty:(id)a3 toManagedObject:(id)a4 key:(id)a5 payloadAttributesToUpdate:(id)a6 payloadDictionary:(id)a7 info:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [v14 parentProperty];
  v21 = [v20 isToManySubRelationship];

  if (v21)
  {
    v122.receiver = self;
    v122.super_class = PLAssetComputeSyncJournalEntryPayload;
    [(PLManagedObjectJournalEntryPayload *)&v122 applyPayloadProperty:v14 toManagedObject:v15 key:v16 payloadAttributesToUpdate:v17 payloadDictionary:v18 info:v19];
    goto LABEL_9;
  }

  if (([v14 isEqualToKey:@"sceneClassifications"] & 1) != 0 || objc_msgSend(v14, "isEqualToKey:", @"temporalSceneClassifications"))
  {
    v22 = [v14 key];
    v23 = [v18 objectForKeyedSubscript:v22];

    if ([v23 count])
    {
      v81 = v18;
      v24 = v17;
      v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v120[0] = MEMORY[0x1E69E9820];
      v120[1] = 3221225472;
      v120[2] = __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke;
      v120[3] = &unk_1E7574658;
      v121 = v25;
      v79 = v25;
      [v23 enumerateObjectsUsingBlock:v120];
      v26 = [v15 valueForKey:v16];
      v27 = self;
      v28 = v19;
      v29 = v15;
      v30 = [v26 mutableCopy];

      v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v118[0] = MEMORY[0x1E69E9820];
      v118[1] = 3221225472;
      v118[2] = __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_2;
      v118[3] = &unk_1E756D0D0;
      v32 = v31;
      v119 = v32;
      [v30 enumerateObjectsUsingBlock:v118];
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_3;
      v110[3] = &unk_1E756D148;
      v111 = v14;
      v33 = v29;
      v112 = v33;
      v113 = v27;
      v114 = v24;
      v115 = v28;
      v116 = v32;
      v117 = v30;
      v34 = v30;
      v15 = v29;
      v19 = v28;
      v35 = v34;
      v36 = v32;
      [v79 enumerateKeysAndObjectsUsingBlock:v110];
      v37 = v33;
      v17 = v24;
      v18 = v81;
      [v37 setValue:v35 forKey:v16];
    }

    goto LABEL_9;
  }

  if (([v14 isEqualToKey:@"detectedFaces"] & 1) != 0 || objc_msgSend(v14, "isEqualToKey:", @"temporalDetectedFaces"))
  {
    v82 = v15;
    v38 = v15;
    v39 = [v38 managedObjectContext];
    v40 = [v14 key];
    v41 = [v18 objectForKeyedSubscript:v40];

    if ([v41 count])
    {
      v78 = v39;
      v80 = v17;
      v106 = 0;
      v107 = &v106;
      v108 = 0x2020000000;
      v109 = 0;
      v42 = [v14 subRelationshipProperties];
      v102[0] = MEMORY[0x1E69E9820];
      v102[1] = 3221225472;
      v102[2] = __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_7;
      v102[3] = &unk_1E756D170;
      v105 = &v106;
      v43 = v19;
      v103 = v43;
      v104 = self;
      [v42 enumerateKeysAndObjectsUsingBlock:v102];

      if (v107[3])
      {
        v77 = v38;
        v44 = [v14 isEqualToKey:@"temporalDetectedFaces"];
        v45 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v93[0] = MEMORY[0x1E69E9820];
        v93[1] = 3221225472;
        v93[2] = __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_8;
        v93[3] = &unk_1E756D198;
        v76 = v78;
        v94 = v76;
        v46 = v77;
        v95 = v46;
        v101 = v44;
        v47 = v45;
        v96 = v47;
        v97 = v14;
        v98 = self;
        v99 = v80;
        v100 = v43;
        [v41 enumerateObjectsUsingBlock:v93];
        v48 = [v46 valueForKey:v16];
        v49 = [v48 mutableCopy];

        v50 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_10;
        v89[3] = &unk_1E756D1C0;
        v51 = v47;
        v90 = v51;
        v91 = v76;
        v52 = v50;
        v92 = v52;
        [v49 enumerateObjectsUsingBlock:v89];
        [v49 unionSet:v51];
        [v49 minusSet:v52];
        [v46 setValue:v49 forKey:v16];

        v38 = v77;
      }

      _Block_object_dispose(&v106, 8);
      v17 = v80;
    }

    else
    {
    }

    v15 = v82;
    goto LABEL_9;
  }

  if ([v14 isEqualToKey:@"generatedAssetDescriptions"])
  {
    payloadAttributes = self->super._payloadAttributes;
    [v14 key];
    v54 = v19;
    v55 = v16;
    v56 = v18;
    v58 = v57 = v17;
    v59 = [(NSMutableDictionary *)payloadAttributes objectForKeyedSubscript:v58];

    v17 = v57;
    v18 = v56;
    v16 = v55;
    v19 = v54;
    v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_11;
    v86[3] = &unk_1E756D820;
    v87 = v14;
    v88 = v60;
    v61 = v60;
    [v59 enumerateObjectsUsingBlock:v86];
    [PLGeneratedAssetDescription setGeneratedAssetDescriptionForAsset:v15 fromDictionaries:v61];

    goto LABEL_9;
  }

  if ([v14 isEqualToKey:@"mediaAnalysisVersion"] && -[PLAssetComputeSyncJournalEntryPayload mediaAnalysisVersion](self, "mediaAnalysisVersion") >= 1)
  {
    [v15 setMediaAnalysisVersion:1];
    goto LABEL_9;
  }

  if ([v14 isEqualToKey:@"mediaAnalysisImageVersion"])
  {
    v62 = [(PLAssetComputeSyncJournalEntryPayload *)self mediaAnalysisImageVersion];
    v63 = self;
    v64 = v19;
    v65 = v16;
    v66 = v18;
    v67 = v17;
    v68 = [v62 integerValue];

    v69 = v68 < 1;
    v17 = v67;
    v18 = v66;
    v16 = v65;
    v19 = v64;
    self = v63;
    if (!v69)
    {
      [v15 setMediaAnalysisImageVersion:1];
      goto LABEL_9;
    }
  }

  if ([v14 isEqualToKey:@"imageEmbeddingVersion"] && -[PLAssetComputeSyncJournalEntryPayload imageEmbeddingVersion](self, "imageEmbeddingVersion") >= 1)
  {
    [v15 setImageEmbeddingVersion:1];
    goto LABEL_9;
  }

  if ([v14 isEqualToKey:@"videoEmbeddingVersion"] && -[PLAssetComputeSyncJournalEntryPayload videoEmbeddingVersion](self, "videoEmbeddingVersion") >= 1)
  {
    [v15 setVideoEmbeddingVersion:1];
    goto LABEL_9;
  }

  if (([v14 isEqualToKey:@"imageCaptionVersion"] & 1) == 0 && (objc_msgSend(v14, "isEqualToKey:", @"videoCaptionVersion") & 1) == 0)
  {
    if ([v14 isEqualToKey:@"sceneAnalysisVersion"])
    {
      v70 = v18;
      v71 = v17;
      v72 = v15;
      v73 = [v70 objectForKeyedSubscript:@"packedPreferredCropRect"];

      if (v73)
      {
        v85[0] = self;
        v85[1] = PLAssetComputeSyncJournalEntryPayload;
        v74 = v85;
LABEL_40:
        v17 = v71;
        [(objc_super *)v74 applyPayloadProperty:v14 toManagedObject:v72 key:v16 payloadAttributesToUpdate:v71 payloadDictionary:v70 info:v19];
LABEL_45:
        v18 = v70;

        goto LABEL_9;
      }

      [v72 setSceneAnalysisVersion:0];
    }

    else
    {
      if (![v14 isEqualToKey:@"sceneAnalysisTimestamp"])
      {
        v83.receiver = self;
        v83.super_class = PLAssetComputeSyncJournalEntryPayload;
        [(PLManagedObjectJournalEntryPayload *)&v83 applyPayloadProperty:v14 toManagedObject:v15 key:v16 payloadAttributesToUpdate:v17 payloadDictionary:v18 info:v19];
        goto LABEL_9;
      }

      v70 = v18;
      v71 = v17;
      v72 = v15;
      v75 = [v70 objectForKeyedSubscript:@"packedPreferredCropRect"];

      if (v75)
      {
        v84.receiver = self;
        v84.super_class = PLAssetComputeSyncJournalEntryPayload;
        v74 = &v84;
        goto LABEL_40;
      }

      [v72 setSceneAnalysisTimestamp:0];
    }

    v17 = v71;
    goto LABEL_45;
  }

LABEL_9:
}

void __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectForKeyedSubscript:@"classificationType"];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }

  [v4 addObject:v5];
}

void __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v5, "classificationType")}];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }

  [v4 addObject:v5];
}

void __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DFA8];
  v6 = a3;
  v7 = a2;
  v8 = objc_alloc_init(v5);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_4;
  v18[3] = &unk_1E756D120;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v15 = *(a1 + 48);
  v11 = *(&v15 + 1);
  *&v12 = v9;
  *(&v12 + 1) = v10;
  v19 = v12;
  v20 = v15;
  v21 = *(a1 + 64);
  v13 = v8;
  v22 = v13;
  [v6 enumerateObjectsUsingBlock:v18];

  v14 = [*(a1 + 72) objectForKeyedSubscript:v7];

  if (v14)
  {
    [*(a1 + 80) minusSet:v14];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_6;
    v16[3] = &unk_1E756D0D0;
    v17 = *(a1 + 40);
    [v14 enumerateObjectsUsingBlock:v16];
  }

  [*(a1 + 80) unionSet:{v13, v15}];
}

void __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_7(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a1[4];
  if (v8)
  {
    v9 = [v8 shouldApplyWithPayloadProperty:v7 andPayload:a1[5]];
  }

  else
  {
    v9 = 1;
  }

  *(*(a1[6] + 8) + 24) = v9;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

void __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PLFaceRebuildHelper alloc] initWithContext:*(a1 + 32)];
  v5 = [[PLAssetComputeCacheFaceRebuildDescription alloc] initWithPayloadAttributes:v3];
  v6 = [(PLFaceRebuildHelper *)v4 findExistingDetectedFaceForRebuildFace:v5 onAsset:*(a1 + 40)];
  if (!v6)
  {
    v6 = [(PLManagedObject *)PLDetectedFace insertInManagedObjectContext:*(a1 + 32)];
  }

  if ((*(a1 + 88) & 1) == 0)
  {
    v7 = [(PLAssetComputeCacheFaceRebuildDescription *)v5 sourceWidth];
    if (v7)
    {
    }

    else
    {
      v8 = [(PLAssetComputeCacheFaceRebuildDescription *)v5 sourceHeight];

      if (!v8)
      {
        [v6 setSourceWidth:{objc_msgSend(*(a1 + 40), "width")}];
        [v6 setSourceHeight:{objc_msgSend(*(a1 + 40), "height")}];
      }
    }
  }

  [*(a1 + 48) addObject:v6];
  v9 = [*(a1 + 56) subRelationshipProperties];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_9;
  v13[3] = &unk_1E756D0F8;
  v10 = *(a1 + 72);
  v13[4] = *(a1 + 64);
  v14 = v6;
  v15 = v10;
  v16 = v3;
  v17 = *(a1 + 80);
  v11 = v3;
  v12 = v6;
  [v9 enumerateKeysAndObjectsUsingBlock:v13];
}

void __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_10(id *a1, void *a2)
{
  v3 = a2;
  if (([a1[4] containsObject:?] & 1) == 0)
  {
    [a1[5] deleteObject:v3];
    [a1[6] removeObject:v3];
  }
}

void __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"analysisSourceType"];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [*(a1 + 32) subRelationshipProperties];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_12;
    v11 = &unk_1E756D1E8;
    v12 = v3;
    v13 = v5;
    v7 = v5;
    [v6 enumerateKeysAndObjectsUsingBlock:&v8];

    [*(a1 + 40) setObject:v7 forKeyedSubscript:{v4, v8, v9, v10, v11}];
  }
}

void __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v6 key];
  v8 = [v5 objectForKeyedSubscript:v7];

  LODWORD(v5) = [v6 isEqualToKey:@"analysisVersion"];
  if (v5 && [v8 integerValue] >= 1)
  {
    v9 = *(a1 + 40);
    v10 = &unk_1F0FBC988;
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = v8;
  }

  [v9 setObject:v10 forKeyedSubscript:v11];
}

void __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695D5B8];
  v5 = [*(a1 + 32) subRelationshipEntityName];
  v6 = [*(a1 + 40) managedObjectContext];
  v7 = [v4 insertNewObjectForEntityForName:v5 inManagedObjectContext:v6];

  v8 = [*(a1 + 32) subRelationshipProperties];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_5;
  v12[3] = &unk_1E756D0F8;
  v9 = *(a1 + 56);
  v12[4] = *(a1 + 48);
  v13 = v7;
  v14 = v9;
  v15 = v3;
  v16 = *(a1 + 64);
  v10 = v3;
  v11 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:v12];

  [*(a1 + 72) addObject:v11];
}

void __131__PLAssetComputeSyncJournalEntryPayload_applyPayloadProperty_toManagedObject_key_payloadAttributesToUpdate_payloadDictionary_info___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 managedObjectContext];
  [v4 deleteObject:v3];
}

+ (id)payloadClassID
{
  v2 = [a1 entityName];
  v3 = [v2 stringByAppendingString:@"ComputeSync"];

  return v3;
}

+ (id)payloadAdapterForManagedObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = off_1E755F578;
  if ((isKindOfClass & 1) == 0)
  {
    v5 = off_1E755F580;
  }

  v6 = [objc_alloc(*v5) initWithManagedObject:v3];

  return v6;
}

+ (id)persistedPropertyNamesForEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PLAssetComputeSyncJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (persistedPropertyNamesForEntityNames_onceToken_47501 != -1)
  {
    dispatch_once(&persistedPropertyNamesForEntityNames_onceToken_47501, block);
  }

  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_47502;

  return v2;
}

void __77__PLAssetComputeSyncJournalEntryPayload_persistedPropertyNamesForEntityNames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedPropertyNamesForEntityNamesFromModelProperties];
  v2 = persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_47502;
  persistedPropertyNamesForEntityNames_persistedPropertyNamesForEntityNames_47502 = v1;
}

+ (id)modelProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PLAssetComputeSyncJournalEntryPayload_modelProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (modelProperties_onceToken_47503 != -1)
  {
    dispatch_once(&modelProperties_onceToken_47503, block);
  }

  v2 = modelProperties_modelProperties_47504;

  return v2;
}

uint64_t __56__PLAssetComputeSyncJournalEntryPayload_modelProperties__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelPropertiesDescription];
  v3 = modelProperties_modelProperties_47504;
  modelProperties_modelProperties_47504 = v2;

  v4 = *(a1 + 32);
  v5 = modelProperties_modelProperties_47504;

  return [v4 loadModelPropertiesDescription:v5 parentPayloadProperty:0];
}

+ (id)modelPropertiesDescription
{
  v89[15] = *MEMORY[0x1E69E9840];
  v3 = [[PLJournalEntryPayloadPropertyInfoAssetCompute alloc] initWithAnalysisStage:100 versionType:1];
  v4 = [[PLJournalEntryPayloadPropertyInfoAssetCompute alloc] initWithAnalysisStage:200 versionType:2];
  v5 = [[PLJournalEntryPayloadPropertyInfoAssetCompute alloc] initWithAnalysisStage:950 versionType:3];
  v45 = [[PLJournalEntryPayloadPropertyInfoAssetCompute alloc] initWithAnalysisStage:0 versionType:1];
  v43 = [[PLJournalEntryPayloadPropertyInfoAssetCompute alloc] initWithAnalysisStage:0 versionType:3];
  v88[0] = @"cloudAssetGUID";
  v79 = +[PLJournalEntryPayloadProperty payloadPropertyForUUID];
  v89[0] = v79;
  v88[1] = @"iconicScore";
  v78 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v89[1] = v78;
  v88[2] = @"overallAestheticScore";
  v77 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v89[2] = v77;
  v88[3] = @"stickerConfidenceScore";
  v76 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v89[3] = v76;
  v88[4] = @"faceAdjustmentVersion";
  v49 = v4;
  v75 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"assetFaceAdjustmentVersion" andType:900 info:v4];
  v89[4] = v75;
  v88[5] = @"packedPreferredCropRect";
  v74 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v89[5] = v74;
  v88[6] = @"packedAcceptableCropRect";
  v73 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v89[6] = v73;
  v88[7] = @"videoKeyFrameValue";
  v72 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v89[7] = v72;
  v88[8] = @"videoKeyFrameTimeScale";
  v71 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v89[8] = v71;
  v88[9] = @"mediaAnalysisAttributes";
  v70 = +[PLMediaAnalysisAssetAttributes entityName];
  v69 = [a1 mediaAnalysisAttributesPropertiesDictionary];
  v68 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"mediaAnalysisAttributes" subRelationshipProperties:v69 subRelationshipEntityName:v70 isToMany:0 isAdditionalEntityName:1 info:0];
  v89[9] = v68;
  v88[10] = @"computedAttributes";
  v50 = +[PLComputedAssetAttributes entityName];
  v86[0] = @"failureScore";
  v67 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[0] = v67;
  v86[1] = @"harmoniousColorScore";
  v66 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[1] = v66;
  v86[2] = @"immersivenessScore";
  v65 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[2] = v65;
  v86[3] = @"interestingSubjectScore";
  v64 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[3] = v64;
  v86[4] = @"intrusiveObjectPresenceScore";
  v63 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[4] = v63;
  v86[5] = @"livelyColorScore";
  v62 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[5] = v62;
  v86[6] = @"lowLight";
  v61 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[6] = v61;
  v86[7] = @"noiseScore";
  v60 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[7] = v60;
  v86[8] = @"pleasantCameraTiltScore";
  v59 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[8] = v59;
  v86[9] = @"pleasantCompositionScore";
  v58 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[9] = v58;
  v86[10] = @"pleasantLightingScore";
  v57 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[10] = v57;
  v86[11] = @"pleasantPatternScore";
  v56 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[11] = v56;
  v86[12] = @"pleasantPerspectiveScore";
  v55 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[12] = v55;
  v86[13] = @"pleasantPostProcessingScore";
  v54 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[13] = v54;
  v86[14] = @"pleasantReflectionsScore";
  v53 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[14] = v53;
  v86[15] = @"pleasantSymmetryScore";
  v52 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[15] = v52;
  v86[16] = @"sharplyFocusedSubjectScore";
  v51 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[16] = v51;
  v86[17] = @"tastefullyBlurredScore";
  v48 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[17] = v48;
  v86[18] = @"wellChosenSubjectScore";
  v47 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[18] = v47;
  v86[19] = @"wellFramedSubjectScore";
  v46 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[19] = v46;
  v86[20] = @"wellTimedShotScore";
  v44 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v87[20] = v44;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:21];
  v41 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"computedAssetAttributes" subRelationshipProperties:v42 subRelationshipEntityName:v50 isToMany:0 isAdditionalEntityName:1 info:v3];
  v89[10] = v41;
  v88[11] = @"additionalAttributes";
  v26 = +[PLAdditionalAssetAttributes entityName];
  v84[0] = @"objectSaliencyRectsData";
  v40 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"objectSaliencyRectData" andType:1000 info:v3];
  v85[0] = v40;
  v84[1] = @"variationSuggestionStates";
  v38 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v85[1] = v38;
  v84[2] = @"sceneAnalysisTimestamp";
  v37 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v85[2] = v37;
  v84[3] = @"sceneAnalysisVersion";
  v39 = v3;
  v36 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v85[3] = v36;
  v84[4] = @"faceAnalysisVersion";
  v35 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v85[4] = v35;
  v84[5] = @"sceneClassifications";
  v34 = +[PLSceneClassification entityName];
  v33 = [a1 sceneClassificationPropertiesDescription];
  v32 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"sceneClassifications" subRelationshipProperties:v33 subRelationshipEntityName:v34 isToMany:1 isAdditionalEntityName:1 info:v45];
  v85[5] = v32;
  v84[6] = @"temporalSceneClassifications";
  v31 = +[PLSceneClassification entityName];
  v30 = [a1 sceneClassificationPropertiesDescription];
  v29 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"temporalSceneClassifications" subRelationshipProperties:v30 subRelationshipEntityName:v31 isToMany:1 isAdditionalEntityName:1 info:v43];
  v85[6] = v29;
  v84[7] = @"sceneprint";
  v24 = +[PLSceneprint entityName];
  v82[0] = @"data";
  v28 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"spData" andType:1000 info:0];
  v83[0] = v28;
  v82[1] = @"duplicateMatchingAlternateData";
  v27 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"spDuplicateMatchingAlternateData" andType:1000 info:0];
  v83[1] = v27;
  v82[2] = @"duplicateMatchingData";
  v25 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"spDuplicateMatchingData" andType:1000 info:0];
  v83[2] = v25;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:3];
  v22 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"sceneprint" subRelationshipProperties:v23 subRelationshipEntityName:v24 isToMany:0 isAdditionalEntityName:1 info:v3];
  v85[7] = v22;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:8];
  v20 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"additionalAssetAttributes" subRelationshipProperties:v21 subRelationshipEntityName:v26 isToMany:0 isAdditionalEntityName:1 info:0];
  v89[11] = v20;
  v88[12] = @"detectedFaces";
  v19 = +[PLDetectedFace entityName];
  v18 = [a1 detectedFacePropertiesDescription];
  v17 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"detectedFaces" subRelationshipProperties:v18 subRelationshipEntityName:v19 isToMany:1 isAdditionalEntityName:1 info:0];
  v89[12] = v17;
  v88[13] = @"temporalDetectedFaces";
  v16 = +[PLDetectedFace entityName];
  v6 = [a1 detectedFacePropertiesDescription];
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"temporalDetectedFaces" subRelationshipProperties:v6 subRelationshipEntityName:v16 isToMany:1 isAdditionalEntityName:1 info:v5];
  v89[13] = v7;
  v88[14] = @"generatedAssetDescriptionNodes";
  v8 = +[PLGraphNode entityName];
  v80[0] = @"descriptionText";
  v9 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v81[0] = v9;
  v80[1] = @"analysisVersion";
  v10 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v81[1] = v10;
  v80[2] = @"analysisSourceType";
  v11 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v81[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:3];
  v13 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"generatedAssetDescriptions" subRelationshipProperties:v12 subRelationshipEntityName:v8 isToMany:1 isAdditionalEntityName:1 info:v5];
  v89[14] = v13;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:15];

  return v15;
}

+ (id)mediaAnalysisAttributesPropertiesDictionary
{
  v64[32] = *MEMORY[0x1E69E9840];
  v2 = [[PLJournalEntryPayloadPropertyInfoAssetCompute alloc] initWithAnalysisStage:100 versionType:1];
  v55 = [[PLJournalEntryPayloadPropertyInfoAssetCompute alloc] initWithAnalysisStage:200 versionType:4];
  v54 = [[PLJournalEntryPayloadPropertyInfoAssetCompute alloc] initWithAnalysisStage:200 versionType:6];
  v56 = [[PLJournalEntryPayloadPropertyInfoAssetCompute alloc] initWithAnalysisStage:200 versionType:5];
  v3 = [[PLJournalEntryPayloadPropertyInfoAssetCompute alloc] initWithAnalysisStage:950 versionType:3];
  v63[0] = @"activityScore";
  v49 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[0] = v49;
  v63[1] = @"animatedStickerRangeDurationTimeScale";
  v48 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[1] = v48;
  v63[2] = @"animatedStickerRangeDurationValue";
  v47 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[2] = v47;
  v63[3] = @"animatedStickerRangeStartTimeScale";
  v46 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[3] = v46;
  v63[4] = @"animatedStickerRangeStartValue";
  v45 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[4] = v45;
  v63[5] = @"audioClassification";
  v44 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[5] = v44;
  v63[6] = @"audioScore";
  v43 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[6] = v43;
  v63[7] = @"autoplaySuggestionScore";
  v42 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[7] = v42;
  v63[8] = @"bestVideoRangeDurationTimeScale";
  v41 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[8] = v41;
  v63[9] = @"bestVideoRangeDurationValue";
  v40 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[9] = v40;
  v63[10] = @"bestVideoRangeStartTimeScale";
  v39 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[10] = v39;
  v63[11] = @"bestVideoRangeStartValue";
  v38 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[11] = v38;
  v63[12] = @"blurrinessScore";
  v37 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[12] = v37;
  v63[13] = @"colorNormalizationData";
  v36 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[13] = v36;
  v63[14] = @"exposureScore";
  v35 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[14] = v35;
  v63[15] = @"faceCount";
  v34 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[15] = v34;
  v63[16] = @"mediaAnalysisTimeStamp";
  v33 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[16] = v33;
  v63[17] = @"mediaAnalysisVersion";
  v32 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[17] = v32;
  v63[18] = @"mediaAnalysisImageVersion";
  v31 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[18] = v31;
  v63[19] = @"packedBestPlaybackRect";
  v30 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[19] = v30;
  v63[20] = @"probableRotationDirection";
  v29 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[20] = v29;
  v63[21] = @"probableRotationDirectionConfidence";
  v28 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[21] = v28;
  v63[22] = @"screenTimeDeviceImageSensitivity";
  v27 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[22] = v27;
  v63[23] = @"settlingEffectScore";
  v26 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[23] = v26;
  v63[24] = @"imageEmbeddingVersion";
  v25 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[24] = v25;
  v63[25] = @"videoEmbeddingVersion";
  v24 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[25] = v24;
  v63[26] = @"videoScore";
  v23 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[26] = v23;
  v63[27] = @"videoStickerSuggestionScore";
  v22 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[27] = v22;
  v63[28] = @"wallpaperScore";
  v52 = v2;
  v21 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v64[28] = v21;
  v63[29] = @"visualSearchVersion";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"vsAlgorithmVersion" andType:100 info:0];
  v64[29] = v4;
  v63[30] = @"visualSearchStickerConfidenceVersion";
  v5 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"vsStickerConfidenceAlgorithmVersion" andType:100 info:0];
  v64[30] = v5;
  v63[31] = @"visualSearchAttributes";
  v6 = +[PLVisualSearchAttributes entityName];
  v61[0] = @"adjustmentVersion";
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"vsAdjustmentVersion" andType:900 info:0];
  v61[1] = @"visualSearchData";
  v62[0] = v7;
  v8 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v62[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
  v10 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"visualSearchAttributes" subRelationshipProperties:v9 subRelationshipEntityName:v6 isToMany:0 isAdditionalEntityName:1 info:v56];
  v64[31] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:32];
  v53 = [v11 mutableCopy];

  if ([objc_opt_class() shouldIncludeOCR])
  {
    v59[0] = @"characterRecognitionVersion";
    v51 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"crAlgorithmVersion" andType:100 info:0];
    v60[0] = v51;
    v59[1] = @"textUnderstandingVersion";
    v50 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
    v60[1] = v50;
    v59[2] = @"characterRecognitionAttributes";
    v12 = +[PLCharacterRecognitionAttributes entityName];
    v57[0] = @"adjustmentVersion";
    v13 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"crAdjustmentVersion" andType:900 info:v55];
    v58[0] = v13;
    v57[1] = @"characterRecognitionData";
    v14 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
    v58[1] = v14;
    v57[2] = @"machineReadableCodeData";
    v15 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"crMachineReadableCodeData" andType:1000 info:v55];
    v58[2] = v15;
    v57[3] = @"textUnderstandingData";
    v16 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
    v58[3] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:4];
    v18 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"characterRecognitionAttributes" subRelationshipProperties:v17 subRelationshipEntityName:v12 isToMany:0 isAdditionalEntityName:1 info:0];
    v60[2] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:3];
    [v53 addEntriesFromDictionary:v19];
  }

  return v53;
}

+ (id)detectedFacePropertiesDescription
{
  v76[54] = *MEMORY[0x1E69E9840];
  v2 = [[PLJournalEntryPayloadPropertyInfoAssetCompute alloc] initWithAnalysisStage:200 versionType:2];
  v70 = [[PLJournalEntryPayloadPropertyInfoAssetCompute alloc] initWithAnalysisStage:950 versionType:3];
  v75[0] = @"sourceWidth";
  v69 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[0] = v69;
  v75[1] = @"sourceHeight";
  v68 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[1] = v68;
  v75[2] = @"centerX";
  v67 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[2] = v67;
  v75[3] = @"centerY";
  v66 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[3] = v66;
  v75[4] = @"size";
  v65 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[4] = v65;
  v75[5] = @"bodyCenterX";
  v64 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[5] = v64;
  v75[6] = @"bodyCenterY";
  v63 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[6] = v63;
  v75[7] = @"bodyWidth";
  v62 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[7] = v62;
  v75[8] = @"bodyHeight";
  v61 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[8] = v61;
  v75[9] = @"detectionType";
  v60 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[9] = v60;
  v75[10] = @"nameSource";
  v59 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[10] = v59;
  v75[11] = @"cloudNameSource";
  v58 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[11] = v58;
  v75[12] = @"hidden";
  v57 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[12] = v57;
  v75[13] = @"manual";
  v56 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[13] = v56;
  v75[14] = @"faceAlgorithmVersion";
  v55 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[14] = v55;
  v75[15] = @"adjustmentVersion";
  v54 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[15] = v54;
  v75[16] = @"ageType";
  v53 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[16] = v53;
  v75[17] = @"assetVisible";
  v52 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[17] = v52;
  v75[18] = @"blurScore";
  v51 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[18] = v51;
  v75[19] = @"clusterSequenceNumber";
  v50 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[19] = v50;
  v75[20] = @"confirmedFaceCropGenerationState";
  v49 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[20] = v49;
  v75[21] = @"eyeMakeupType";
  v48 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[21] = v48;
  v75[22] = @"duration";
  v47 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"duration" andType:500 info:v2];
  v76[22] = v47;
  v75[23] = @"eyesState";
  v46 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[23] = v46;
  v75[24] = @"facialHairType";
  v45 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[24] = v45;
  v75[25] = @"genderType";
  v44 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[25] = v44;
  v75[26] = @"glassesType";
  v43 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[26] = v43;
  v75[27] = @"groupingIdentifier";
  v42 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[27] = v42;
  v75[28] = @"hairColorType";
  v41 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[28] = v41;
  v75[29] = @"hasSmile";
  v40 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[29] = v40;
  v75[30] = @"isLeftEyeClosed";
  v39 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[30] = v39;
  v75[31] = @"isRightEyeClosed";
  v38 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[31] = v38;
  v75[32] = @"lipMakeupType";
  v37 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[32] = v37;
  v75[33] = @"faceExpressionType";
  v36 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[33] = v36;
  v75[34] = @"headgearType";
  v35 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[34] = v35;
  v75[35] = @"hairType";
  v34 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[35] = v34;
  v75[36] = @"poseType";
  v33 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[36] = v33;
  v75[37] = @"skintoneType";
  v32 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[37] = v32;
  v75[38] = @"ethnicityType";
  v31 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[38] = v31;
  v75[39] = @"hasFaceMask";
  v30 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[39] = v30;
  v75[40] = @"gazeType";
  v29 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[40] = v29;
  v75[41] = @"gazeCenterX";
  v28 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[41] = v28;
  v75[42] = @"gazeCenterY";
  v27 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[42] = v27;
  v75[43] = @"gazeRectString";
  v26 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[43] = v26;
  v75[44] = @"gazeAngle";
  v25 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[44] = v25;
  v75[45] = @"gazeConfidence";
  v24 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[45] = v24;
  v75[46] = @"roll";
  v23 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[46] = v23;
  v75[47] = @"poseYaw";
  v22 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[47] = v22;
  v75[48] = @"qualityMeasure";
  v21 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[48] = v21;
  v75[49] = @"quality";
  v20 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[49] = v20;
  v75[50] = @"smileType";
  v19 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v76[50] = v19;
  v75[51] = @"startTime";
  v18 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"startTime" andType:500 info:v2];
  v76[51] = v18;
  v75[52] = @"faceprint";
  v15 = +[PLDetectedFaceprint entityName];
  v73[0] = @"data";
  v17 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"faceprintData" andType:1000 info:0];
  v74[0] = v17;
  v73[1] = @"faceprintVersion";
  v16 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v74[1] = v16;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
  v13 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"faceprint" subRelationshipProperties:v14 subRelationshipEntityName:v15 isToMany:0 isAdditionalEntityName:1 info:v2];
  v76[52] = v13;
  v75[53] = @"detectionTraits";
  v3 = +[PLDetectionTrait entityName];
  v71[0] = @"duration";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"duration" andType:500 info:0];
  v72[0] = v4;
  v71[1] = @"score";
  v5 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v72[1] = v5;
  v71[2] = @"startTime";
  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"startTime" andType:500 info:0];
  v72[2] = v6;
  v71[3] = @"type";
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v72[3] = v7;
  v71[4] = @"value";
  v8 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v72[4] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:5];
  v10 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:@"detectionTraits" subRelationshipProperties:v9 subRelationshipEntityName:v3 isToMany:1 isAdditionalEntityName:1 info:v70];
  v76[53] = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:54];

  return v12;
}

+ (id)sceneClassificationPropertiesDescription
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"classificationType";
  v2 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v11[0] = v2;
  v10[1] = @"confidence";
  v3 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v11[1] = v3;
  v10[2] = @"duration";
  v4 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v11[2] = v4;
  v10[3] = @"packedBoundingBoxRect";
  v5 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v11[3] = v5;
  v10[4] = @"sceneIdentifier";
  v6 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v11[4] = v6;
  v10[5] = @"startTime";
  v7 = [PLJournalEntryPayloadProperty payloadPropertyWithKey:"payloadPropertyWithKey:andType:info:" andType:? info:?];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];

  return v8;
}

+ (void)setShouldIncludeOCR:(BOOL)a3
{
  if (MEMORY[0x19EAEE520](a1, a2))
  {
    shouldIncludeOCR = a3;
  }
}

+ (BOOL)shouldIncludeOCR
{
  if (MEMORY[0x19EAEE520](a1, a2))
  {
    return shouldIncludeOCR;
  }

  return MEMORY[0x1EEE29380]();
}

@end