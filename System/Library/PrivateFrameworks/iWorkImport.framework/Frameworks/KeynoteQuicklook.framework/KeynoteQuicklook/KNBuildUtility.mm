@interface KNBuildUtility
+ (BOOL)animationInfo:(id)info onInfo:(id)onInfo canRunSimultaneouslyWithAnimationInfo:(id)animationInfo onInfo:(id)a6;
+ (id)UUIDToTSPObjectMapForTSPObjects:(id)objects;
+ (id)buildUUIDToChunkIdentifiersMapForChunkIdentifiers:(id)identifiers;
+ (id)buildsForChunks:(id)chunks;
+ (id)buildsToChunksMapForBuilds:(id)builds chunks:(id)chunks;
+ (id)buildsToChunksMapForChunks:(id)chunks;
+ (id)chunksForInfos:(id)infos;
+ (id)chunksInBuilds:(id)builds;
+ (id)nonNilChunkIdentifierFromPossiblyNilChunk:(id)chunk;
+ (id)orderedBuildsFromUnorderedBuilds:(id)builds;
+ (id)uniqueBuildsOrderedByChunks:(id)chunks;
+ (id)validIdentifierForChunkToInsertAfterFromPossiblyInvalidIdentifier:(id)identifier build:(id)build;
+ (int64_t)sharedAnimationTypeForBuildChunks:(id)chunks;
+ (int64_t)sharedAnimationTypeForBuilds:(id)builds;
+ (unint64_t)countOfInfosThatSupportContentBuilds:(id)builds;
@end

@implementation KNBuildUtility

+ (int64_t)sharedAnimationTypeForBuildChunks:(id)chunks
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  chunksCopy = chunks;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(chunksCopy, v4, &v17, v21, 16);
  if (v5)
  {
    v8 = v5;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(chunksCopy);
        }

        v12 = objc_msgSend_build(*(*(&v17 + 1) + 8 * i), v6, v7, v17);
        v15 = objc_msgSend_animationType(v12, v13, v14);

        if (v9)
        {
          if (v9 != v15)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v9 = v15;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(chunksCopy, v6, &v17, v21, 16);
    }

    while (v8);
  }

  else
  {
LABEL_13:
    v9 = 0;
  }

  return v9;
}

+ (int64_t)sharedAnimationTypeForBuilds:(id)builds
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  buildsCopy = builds;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(buildsCopy, v4, &v14, v18, 16);
  if (v5)
  {
    v8 = v5;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(buildsCopy);
        }

        v12 = objc_msgSend_animationType(*(*(&v14 + 1) + 8 * i), v6, v7, v14);
        if (v9)
        {
          if (v9 != v12)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v9 = v12;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(buildsCopy, v6, &v14, v18, 16);
    }

    while (v8);
  }

  else
  {
LABEL_13:
    v9 = 0;
  }

  return v9;
}

+ (BOOL)animationInfo:(id)info onInfo:(id)onInfo canRunSimultaneouslyWithAnimationInfo:(id)animationInfo onInfo:(id)a6
{
  infoCopy = info;
  animationInfoCopy = animationInfo;
  v11 = a6;
  onInfoCopy = onInfo;
  v15 = objc_msgSend_effectIdentifier(infoCopy, v13, v14);
  IsEmphasisEffect = KNEffectIsEmphasisEffect();

  v19 = objc_msgSend_effectIdentifier(animationInfoCopy, v17, v18);
  v20 = KNEffectIsEmphasisEffect();

  LODWORD(v19) = objc_msgSend_isEqual_(onInfoCopy, v21, v11);
  if (v19)
  {
    if ((IsEmphasisEffect | v20) & 1) != 0 || (v24 = objc_msgSend_animationClass(infoCopy, v22, v23), v27 = objc_msgSend_animationClass(animationInfoCopy, v25, v26), (objc_msgSend_isSubclassOfClass_(v24, v28, v27)))
    {
      LOBYTE(v30) = 0;
    }

    else
    {
      v30 = (v24 != v27) & ~objc_msgSend_isSubclassOfClass_(v27, v29, v24);
    }
  }

  else
  {
    LOBYTE(v30) = 1;
  }

  return v30;
}

+ (id)chunksInBuilds:(id)builds
{
  buildsCopy = builds;
  if (objc_msgSend_count(buildsCopy, v4, v5))
  {
    v7 = objc_msgSend_setWithSet_(MEMORY[0x277CBEB98], v6, buildsCopy);
    v10 = objc_msgSend_anyObject(v7, v8, v9);
    v13 = objc_msgSend_slide(v10, v11, v12);

    v16 = objc_msgSend_buildChunks(v13, v14, v15);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_275E526D4;
    v21[3] = &unk_27A699788;
    v22 = v7;
    v17 = v7;
    v19 = objc_msgSend_tsu_arrayOfObjectsPassingTest_(v16, v18, v21);
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  return v19;
}

+ (id)buildsForChunks:(id)chunks
{
  v23 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], v4, v5);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = chunksCopy;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = objc_msgSend_build(*(*(&v18 + 1) + 8 * i), v10, v11, v18);
        objc_msgSend_addObject_(v6, v16, v15);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v18, v22, 16);
    }

    while (v12);
  }

  return v6;
}

+ (id)uniqueBuildsOrderedByChunks:(id)chunks
{
  v26 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  v6 = objc_msgSend_orderedSet(MEMORY[0x277CBEB40], v4, v5);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = chunksCopy;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v21, v25, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = objc_msgSend_build(*(*(&v21 + 1) + 8 * i), v10, v11, v21);
        objc_msgSend_addObject_(v6, v16, v15);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v21, v25, 16);
    }

    while (v12);
  }

  v19 = objc_msgSend_array(v6, v17, v18);

  return v19;
}

+ (id)chunksForInfos:(id)infos
{
  v25 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], v4, v5);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = infosCopy;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        objc_opt_class();
        v13 = TSUDynamicCast();
        v16 = objc_msgSend_buildChunks(v13, v14, v15, v20);
        objc_msgSend_addObjectsFromArray_(v6, v17, v16);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v18, &v20, v24, 16);
    }

    while (v10);
  }

  return v6;
}

+ (id)orderedBuildsFromUnorderedBuilds:(id)builds
{
  v3 = MEMORY[0x277CBEB18];
  v4 = objc_msgSend_allObjects(builds, a2, builds);
  v6 = objc_msgSend_arrayWithArray_(v3, v5, v4);

  objc_msgSend_sortUsingFunction_context_(v6, v7, sub_275E521FC, 0);

  return v6;
}

+ (id)buildsToChunksMapForChunks:(id)chunks
{
  v33 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  v4 = objc_alloc_init(MEMORY[0x277D812B8]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = chunksCopy;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v28, v32, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v14 = objc_msgSend_build(v12, v7, v8);
        if (!v14)
        {
          v15 = MEMORY[0x277D81150];
          v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[KNBuildUtility buildsToChunksMapForChunks:]");
          v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildUtility.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 211, 0, "invalid nil value for '%{public}s'", "build");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
        }

        v24 = objc_msgSend_objectForKeyedSubscript_(v4, v13, v14);
        if (!v24)
        {
          v24 = objc_msgSend_array(MEMORY[0x277CBEB18], v22, v23);
          objc_msgSend_setObject_forUncopiedKey_(v4, v25, v24, v14);
        }

        objc_msgSend_addObject_(v24, v22, v12);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v28, v32, 16);
    }

    while (v9);
  }

  return v4;
}

+ (id)buildsToChunksMapForBuilds:(id)builds chunks:(id)chunks
{
  v71 = *MEMORY[0x277D85DE8];
  buildsCopy = builds;
  chunksCopy = chunks;
  v7 = objc_alloc_init(MEMORY[0x277D812B8]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = chunksCopy;
  v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v65, v70, 16);
  if (v60)
  {
    v59 = *v66;
    v55 = v7;
    v56 = buildsCopy;
    do
    {
      for (i = 0; i != v60; ++i)
      {
        if (*v66 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v65 + 1) + 8 * i);
        v15 = objc_msgSend_chunkIdentifier(v12, v9, v10);
        if (v15)
        {
          v16 = objc_msgSend_chunkIdentifier(v12, v13, v14);
          v19 = objc_msgSend_buildUUID(v16, v17, v18);

          if (!v19)
          {
            v21 = MEMORY[0x277D81150];
            v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "+[KNBuildUtility buildsToChunksMapForBuilds:chunks:]");
            v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildUtility.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 239, 0, "invalid nil value for '%{public}s'", "buildUUID");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
          }

          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v28 = buildsCopy;
          v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v61, v69, 16);
          if (v32)
          {
            v58 = v15;
            v33 = *v62;
            while (2)
            {
              for (j = 0; j != v32; j = j + 1)
              {
                if (*v62 != v33)
                {
                  objc_enumerationMutation(v28);
                }

                v35 = *(*(&v61 + 1) + 8 * j);
                v36 = objc_msgSend_objectUUID(v35, v30, v31);
                isEqual = objc_msgSend_isEqual_(v36, v37, v19);

                if (isEqual)
                {
                  v32 = v35;
                  goto LABEL_19;
                }
              }

              v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v61, v69, 16);
              if (v32)
              {
                continue;
              }

              break;
            }

LABEL_19:
            v7 = v55;
            buildsCopy = v56;
            v15 = v58;
          }
        }

        else
        {
          v19 = objc_msgSend_build(v12, v13, v14);
          if (v19 && objc_msgSend_containsObject_(buildsCopy, v39, v19))
          {
            v19 = v19;
            v32 = v19;
          }

          else
          {
            v32 = 0;
          }
        }

        if (v32)
        {
          v43 = objc_msgSend_objectForKeyedSubscript_(v7, v40, v32);
          if (!v43)
          {
            v43 = objc_msgSend_array(MEMORY[0x277CBEB18], v41, v42);
            objc_msgSend_setObject_forUncopiedKey_(v7, v44, v43, v32);
          }

          objc_msgSend_addObject_(v43, v41, v12);
        }

        else
        {
          v45 = v15;
          v46 = MEMORY[0x277D81150];
          v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "+[KNBuildUtility buildsToChunksMapForBuilds:chunks:]");
          v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildUtility.m");
          v50 = v46;
          v15 = v45;
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v51, v47, v49, 261, 0, "invalid nil value for '%{public}s'", "buildForChunk");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53);
        }
      }

      v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v65, v70, 16);
    }

    while (v60);
  }

  return v7;
}

+ (id)buildUUIDToChunkIdentifiersMapForChunkIdentifiers:(id)identifiers
{
  v38 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v4 = MEMORY[0x277CBEB38];
  v7 = objc_msgSend_count(identifiersCopy, v5, v6);
  v9 = objc_msgSend_dictionaryWithCapacity_(v4, v8, v7);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = identifiersCopy;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v33, v37, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v34;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        v19 = objc_msgSend_buildUUID(v17, v12, v13);
        if (!v19)
        {
          v20 = MEMORY[0x277D81150];
          v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "+[KNBuildUtility buildUUIDToChunkIdentifiersMapForChunkIdentifiers:]");
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildUtility.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 284, 0, "invalid nil value for '%{public}s'", "buildUUID");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        }

        v29 = objc_msgSend_objectForKeyedSubscript_(v9, v18, v19);
        if (!v29)
        {
          v29 = objc_msgSend_array(MEMORY[0x277CBEB18], v27, v28);
          objc_msgSend_setObject_forKeyedSubscript_(v9, v30, v29, v19);
        }

        objc_msgSend_addObject_(v29, v27, v17);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v33, v37, 16);
    }

    while (v14);
  }

  return v9;
}

+ (id)UUIDToTSPObjectMapForTSPObjects:(id)objects
{
  v38 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  if (!objectsCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[KNBuildUtility UUIDToTSPObjectMapForTSPObjects:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildUtility.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 300, 0, "Invalid parameter not satisfying: %{public}s", "objects != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v3, v4);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = objectsCopy;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v33, v37, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v34;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v33 + 1) + 8 * i);
        v23 = objc_msgSend_objectUUID(v21, v16, v17);
        if (!v23)
        {
          v24 = MEMORY[0x277D81150];
          v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "+[KNBuildUtility UUIDToTSPObjectMapForTSPObjects:]");
          v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildUtility.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 306, 0, "invalid nil value for '%{public}s'", "objectUUID");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
        }

        objc_msgSend_setObject_forKeyedSubscript_(v13, v22, v21, v23);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v33, v37, 16);
    }

    while (v18);
  }

  return v13;
}

+ (id)nonNilChunkIdentifierFromPossiblyNilChunk:(id)chunk
{
  v3 = objc_msgSend_chunkIdentifier(chunk, a2, chunk);
  if (!v3)
  {
    v3 = objc_msgSend_emptyIdentifier(KNBuildChunkIdentifier, v4, v5);
  }

  return v3;
}

+ (id)validIdentifierForChunkToInsertAfterFromPossiblyInvalidIdentifier:(id)identifier build:(id)build
{
  v58 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  buildCopy = build;
  if (!buildCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[KNBuildUtility validIdentifierForChunkToInsertAfterFromPossiblyInvalidIdentifier:build:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildUtility.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 331, 0, "Invalid parameter not satisfying: %{public}s", "build != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_slide(buildCopy, v6, v7);
  v18 = objc_msgSend_resolveToChunkOnSlide_(identifierCopy, v17, v16);

  if (v18)
  {
    if (identifierCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  v24 = objc_msgSend_chunks(buildCopy, v19, v20);
  if (identifierCopy && (objc_msgSend_buildUUID(identifierCopy, v22, v23), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectUUID(buildCopy, v26, v27), v28 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v25, v29, v28), v28, v25, !isEqual))
  {
    v34 = objc_msgSend_chunkID(identifierCopy, v22, v23);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v35 = v24;
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v53, v57, 16);
    if (v37)
    {
      v40 = v37;
      v41 = *v54;
      while (2)
      {
        v42 = 0;
        v43 = identifierCopy;
        do
        {
          if (*v54 != v41)
          {
            objc_enumerationMutation(v35);
          }

          identifierCopy = objc_msgSend_chunkIdentifier(*(*(&v53 + 1) + 8 * v42), v38, v39);
          if (v34 < objc_msgSend_chunkID(identifierCopy, v44, v45))
          {

            identifierCopy = v43;
            goto LABEL_21;
          }

          ++v42;
          v43 = identifierCopy;
        }

        while (v40 != v42);
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v53, v57, 16);
        if (v40)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:
  }

  else
  {
    v31 = objc_msgSend_lastObject(v24, v22, v23);
    v33 = objc_msgSend_nonNilChunkIdentifierFromPossiblyNilChunk_(KNBuildUtility, v32, v31);

    identifierCopy = v33;
  }

  if (!identifierCopy)
  {
LABEL_23:
    v46 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "+[KNBuildUtility validIdentifierForChunkToInsertAfterFromPossiblyInvalidIdentifier:build:]");
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildUtility.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v50, v47, v49, 363, 0, "invalid nil value for '%{public}s'", "identifierForChunkToInsertAfter");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52);
  }

LABEL_5:

  return identifierCopy;
}

+ (unint64_t)countOfInfosThatSupportContentBuilds:(id)builds
{
  v21 = *MEMORY[0x277D85DE8];
  buildsCopy = builds;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(buildsCopy, v4, &v16, v20, 16);
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(buildsCopy);
        }

        v11 = objc_msgSend_supportedAnimationInfosForDrawableInfo_animationType_(KNBuild, v6, *(*(&v16 + 1) + 8 * i), 5);
        v14 = objc_msgSend_count(v11, v12, v13);

        if (v14)
        {
          ++v8;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(buildsCopy, v6, &v16, v20, 16);
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end