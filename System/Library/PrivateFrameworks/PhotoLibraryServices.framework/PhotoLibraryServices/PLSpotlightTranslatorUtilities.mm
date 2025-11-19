@interface PLSpotlightTranslatorUtilities
+ (id)contentRatingFromScenes:(id)a3 algorithmVersion:(signed __int16)a4;
+ (id)seasonsForDate:(id)a3 calendar:(id)a4;
+ (id)spotlightAudioClassificationsFromScenes:(id)a3;
+ (id)spotlightPersonFromPLPerson:(id)a3 face:(id)a4 fetchHelper:(id)a5;
+ (id)spotlightScenesFromDetectionTraits:(id)a3 thumbnailMap:(id)a4;
+ (id)spotlightScenesFromScenes:(id)a3 sceneTaxonomy:(id)a4 thumbnailMap:(id)a5 includeDogScenes:(BOOL)a6;
+ (int64_t)CSSceneTypeForPLSceneClassificationType:(int64_t)a3;
+ (void)tagCSSearchableItem:(id)a3 entityInstanceIdentifier:(id)a4 typeIdentifier:(id)a5 typeDisplayName:(id)a6 displayTitle:(id)a7 displaySubtitle:(id)a8;
@end

@implementation PLSpotlightTranslatorUtilities

+ (void)tagCSSearchableItem:(id)a3 entityInstanceIdentifier:(id)a4 typeIdentifier:(id)a5 typeDisplayName:(id)a6 displayTitle:(id)a7 displaySubtitle:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v19 = getLNSpotlightAppEntityMapperClass_softClass;
  v25 = getLNSpotlightAppEntityMapperClass_softClass;
  if (!getLNSpotlightAppEntityMapperClass_softClass)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __getLNSpotlightAppEntityMapperClass_block_invoke;
    v21[3] = &unk_1E7577EA0;
    v21[4] = &v22;
    __getLNSpotlightAppEntityMapperClass_block_invoke(v21);
    v19 = v23[3];
  }

  v20 = v19;
  _Block_object_dispose(&v22, 8);
  [v19 tagCSSearchableItem:v13 entityInstanceIdentifier:v14 typeIdentifier:v15 displayTitle:v17 displaySubtitle:v18 displaySynonyms:0 typeDisplayName:v16 typeDisplaySynonyms:0 propertyDictionary:0 priority:&unk_1F0FBC7C0];
}

+ (int64_t)CSSceneTypeForPLSceneClassificationType:(int64_t)a3
{
  if (a3 > 7)
  {
    return 4;
  }

  else
  {
    return qword_19C60BCF8[a3];
  }
}

+ (id)seasonsForDate:(id)a3 calendar:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
LABEL_3:
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __58__PLSpotlightTranslatorUtilities_seasonsForDate_calendar___block_invoke;
      v14[3] = &unk_1E756D000;
      v15 = v9;
      v10 = v9;
      PLSearchSeasonStringsForDate(v7, v8, v14);
      v11 = [v10 copy];

      goto LABEL_6;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightTranslatorUtilities.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"calendar"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = MEMORY[0x1E695E0F0];
LABEL_6:

  return v11;
}

void __58__PLSpotlightTranslatorUtilities_seasonsForDate_calendar___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  [v6 addObject:a3];
  v8 = *(a1 + 32);
  v9 = [v7 allObjects];

  [v8 addObjectsFromArray:v9];
}

+ (id)contentRatingFromScenes:(id)a3 algorithmVersion:(signed __int16)a4
{
  v4 = PLSearchImageSensitivityForSceneClassifications(a3, a4);
  v5 = &unk_1F0FC0468;
  if (v4 != 1)
  {
    v5 = 0;
  }

  if (v4 == 2)
  {
    return &unk_1F0FC0478;
  }

  else
  {
    return v5;
  }
}

+ (id)spotlightScenesFromDetectionTraits:(id)a3 thumbnailMap:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __82__PLSpotlightTranslatorUtilities_spotlightScenesFromDetectionTraits_thumbnailMap___block_invoke;
  v15 = &unk_1E756C498;
  v16 = v7;
  v17 = v5;
  v8 = v5;
  v9 = v7;
  PLSearchEnumerateSearchStringsForDetectionTraits(v6, &v12);

  v10 = [v9 copy];

  return v10;
}

void __82__PLSpotlightTranslatorUtilities_spotlightScenesFromDetectionTraits_thumbnailMap___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [v9 value];
  v11 = objc_alloc(MEMORY[0x1E6964E60]);
  v12 = [v7 allObjects];

  [v9 score];
  v16 = [v11 initWithLabel:v8 synonyms:v12 confidence:v10 sceneIdentifier:?];

  [v16 setSceneType:2];
  [v16 setBoundingBox:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  [*(a1 + 32) addObject:v16];
  v13 = [v9 thumbnailIdentifier];

  if ([v13 length])
  {
    v14 = *(a1 + 40);
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%u", @"humanAction", v10];
    [v14 setOrReplaceThumbnailIdentifierIfEarlier:v13 forLookupIdentifier:v15];
  }
}

+ (id)spotlightAudioClassificationsFromScenes:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PLSpotlightTranslatorUtilities_spotlightAudioClassificationsFromScenes___block_invoke;
  v7[3] = &unk_1E756CF60;
  v5 = v4;
  v8 = v5;
  PLSearchEnumerateSearchStringsForAudioClassifications(v3, v7);

  return v5;
}

void __74__PLSpotlightTranslatorUtilities_spotlightAudioClassificationsFromScenes___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = MEMORY[0x1E6964E60];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v7 alloc];
  v12 = [v8 allObjects];

  v13 = [v10 sceneIdentifier];
  v14 = [v11 initWithLabel:v9 synonyms:v12 confidence:v13 sceneIdentifier:1.0];

  [v14 setSceneType:3];
  [v14 setBoundingBox:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  [*(a1 + 32) addObject:v14];
}

+ (id)spotlightScenesFromScenes:(id)a3 sceneTaxonomy:(id)a4 thumbnailMap:(id)a5 includeDogScenes:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_new();
  if ([v9 count])
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __104__PLSpotlightTranslatorUtilities_spotlightScenesFromScenes_sceneTaxonomy_thumbnailMap_includeDogScenes___block_invoke;
    v18 = &unk_1E756C470;
    v19 = v12;
    v20 = v11;
    [v10 enumerateKeywordAndSynonymsForScenes:v9 includeDogScenes:v6 usingBlock:&v15];
  }

  v13 = [v12 copy];

  return v13;
}

void __104__PLSpotlightTranslatorUtilities_spotlightScenesFromScenes_sceneTaxonomy_thumbnailMap_includeDogScenes___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if ([v10 length])
  {
    v12 = objc_alloc(MEMORY[0x1E6964E60]);
    v13 = [v11 allObjects];
    [v9 confidence];
    v14 = [v12 initWithLabel:v10 synonyms:v13 confidence:a5 sceneIdentifier:?];

    [v14 setSceneType:1];
    v15 = *(MEMORY[0x1E695F050] + 16);
    buf.origin = *MEMORY[0x1E695F050];
    buf.size = v15;
    if (objc_opt_respondsToSelector())
    {
      [v9 packedBoundingBoxRect];
      PLSplitToCGRectFromInt64();
    }

    else if (objc_opt_respondsToSelector())
    {
      [v9 boundingBox];
      buf.origin.x = v16;
      buf.origin.y = v17;
      buf.size.width = v18;
      buf.size.height = v19;
    }

    else
    {
      v20 = PLSearchBackendModelTranslationGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v25 = 138412290;
        v26 = v9;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to get boundingBox. Unexpected scene object: %@", &v25, 0xCu);
      }
    }

    [v14 setBoundingBox:buf.origin.x, buf.origin.y, *&buf.size];
    if (!CGRectIsNull(buf))
    {
      v21 = buf.size.width * buf.size.height;
      *&v21 = buf.size.width * buf.size.height;
      [v14 setSceneArea:v21];
    }

    [*(a1 + 32) addObject:v14];
    v22 = [v9 thumbnailIdentifier];
    if ([v22 length])
    {
      v23 = *(a1 + 40);
      v24 = PLSearchSceneLookupIdentifier([v9 classificationType], objc_msgSend(v9, "sceneIdentifier"));
      [v23 setOrReplaceThumbnailIdentifierIfEarlier:v22 forLookupIdentifier:v24];
    }
  }

  else
  {
    v14 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.origin.x) = 134217984;
      *(&buf.origin.x + 4) = [v9 sceneIdentifier];
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to get Keyword for sceneID: %llu", &buf, 0xCu);
    }
  }
}

+ (id)spotlightPersonFromPLPerson:(id)a3 face:(id)a4 fetchHelper:(id)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v46 = a4;
  v10 = a5;
  if (!v9)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightTranslatorUtilities.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v45 = v10;
  v44 = [v9 personUUID];
  v11 = [v9 displayName];
  v12 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v13 = [v11 stringByTrimmingCharactersInSet:v12];

  v14 = [v9 fullName];
  v15 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v16 = [v14 stringByTrimmingCharactersInSet:v15];

  v17 = [v13 length];
  v18 = [v16 isEqualToString:v13];
  v19 = v17 == 0;
  if (v19)
  {
    v20 = v16;
  }

  else
  {
    v20 = v13;
  }

  v21 = v20;
  if ((v19 | v18))
  {
    v22 = 0;
  }

  else
  {
    v22 = v16;
  }

  v23 = v22;
  v24 = [v9 detectionType];
  if (((v24 - 1) & 0xFFFC) != 0)
  {
    v25 = 0;
  }

  else
  {
    v25 = (v24 - 1) + 1;
  }

  v26 = objc_opt_new();
  if ([v23 length])
  {
    [v26 addObject:v23];
  }

  v43 = v23;
  if ((v25 - 2) <= 2)
  {
    v27 = PLServicesLocalizedFrameworkString();
    [v26 addObject:v27];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v28 = PLSearchLocalizedSynonymsForKey(@"SEARCH_RESULT_PET");
    v29 = [v28 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v52;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v52 != v31)
          {
            objc_enumerationMutation(v28);
          }

          [v26 addObject:*(*(&v51 + 1) + 8 * i)];
        }

        v30 = [v28 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v30);
    }
  }

  if (v46)
  {
    v33 = objc_opt_new();
    v34 = [v46 ageType];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __79__PLSpotlightTranslatorUtilities_spotlightPersonFromPLPerson_face_fetchHelper___block_invoke;
    v49[3] = &unk_1E756CFD8;
    v35 = v33;
    v50 = v35;
    PLSearchSearchStringsForPersonAgeType(v34, v49);
  }

  else
  {
    v35 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PLSpotlightTranslatorUtilities_spotlightPersonFromPLPerson_face_fetchHelper___block_invoke_2;
  aBlock[3] = &unk_1E756C448;
  v48 = v26;
  v36 = v26;
  v37 = _Block_copy(aBlock);
  if (v45)
  {
    [v45 enumerateSearchEntityRelationsForPerson:v9 block:v37];
  }

  else
  {
    [v9 enumerateAssetSearchEntityPersonRelationsWithBlock:v37];
  }

  v38 = objc_alloc(MEMORY[0x1E6964E50]);
  v39 = [v38 initWithDisplayName:v21 handles:MEMORY[0x1E695E0F0] handleIdentifier:0 photosPersonIdentifier:v44 isPhotosPerson:1 personType:v25 nameAlternatives:v36 faceAttributes:v35];
  v40 = [v9 personUri];
  [v39 setContactIdentifier:v40];

  return v39;
}

void __79__PLSpotlightTranslatorUtilities_spotlightPersonFromPLPerson_face_fetchHelper___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObject:a2];
  v7 = *(a1 + 32);
  v8 = [v6 allObjects];

  [v7 addObjectsFromArray:v8];
}

void __79__PLSpotlightTranslatorUtilities_spotlightPersonFromPLPerson_face_fetchHelper___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __79__PLSpotlightTranslatorUtilities_spotlightPersonFromPLPerson_face_fetchHelper___block_invoke_3;
  v3[3] = &unk_1E756CFD8;
  v4 = *(a1 + 32);
  PLSearchStringsForPersonRelation(a2, v3);
}

void __79__PLSpotlightTranslatorUtilities_spotlightPersonFromPLPerson_face_fetchHelper___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v8 length])
  {
    [*(a1 + 32) addObject:v8];
    v6 = *(a1 + 32);
    v7 = [v5 allObjects];
    [v6 addObjectsFromArray:v7];
  }
}

@end