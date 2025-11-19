@interface PGPhotoChangeToGraphChangeConverter
+ (id)managedEntityNamesToTranslate;
- (PGPhotoChangeToGraphChangeConverter)initWithPhotoLibrary:(id)a3 loggingConnection:(id)a4;
- (id)graphChangesWithPhotoChange:(id)a3 progressBlock:(id)a4;
- (void)_registerTranslatorsWithPhotoLibrary:(id)a3;
@end

@implementation PGPhotoChangeToGraphChangeConverter

- (id)graphChangesWithPhotoChange:(id)a3 progressBlock:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _Block_copy(v7);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  if (v8 && (v9 = CFAbsoluteTimeGetCurrent(), v9 - v31[3] >= 0.01) && (v31[3] = v9, v29 = 0, (*(v8 + 2))(v8, &v29, 0.0), v10 = *(v35 + 24) | v29, *(v35 + 24) = v10, (v10 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v39 = 70;
      *&v39[4] = 2080;
      *&v39[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGPhotoChangeToGraphChangeConverter.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v39 = v6;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "PGPhotoChangeToGraphChangeConverter: handling change %@", buf, 0xCu);
    }

    v13 = [MEMORY[0x277CBEB18] array];
    entityTranslatorByEntityClassName = self->_entityTranslatorByEntityClassName;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __81__PGPhotoChangeToGraphChangeConverter_graphChangesWithPhotoChange_progressBlock___block_invoke;
    v21[3] = &unk_278884218;
    v21[4] = self;
    v22 = v6;
    v24 = v7;
    v15 = v13;
    v23 = v15;
    v16 = v8;
    v25 = v16;
    v26 = &v30;
    v28 = xmmword_22F78C070;
    v27 = &v34;
    [(NSMutableDictionary *)entityTranslatorByEntityClassName enumerateKeysAndObjectsUsingBlock:v21];
    if (v8 && (Current = CFAbsoluteTimeGetCurrent(), Current - v31[3] >= 0.01) && (v31[3] = Current, v29 = 0, (*(v16 + 2))(v16, &v29, 1.0), v18 = *(v35 + 24) | v29, *(v35 + 24) = v18, (v18 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v39 = 172;
        *&v39[4] = 2080;
        *&v39[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGPhotoChangeToGraphChangeConverter.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v11 = v15;
    }
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

void __81__PGPhotoChangeToGraphChangeConverter_graphChangesWithPhotoChange_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v118 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v91 = v6;
  v8 = NSClassFromString(v6);
  v9 = *(*(a1 + 32) + 16);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v113 = v6;
    _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "PGPhotoChangeToGraphChangeConverter: handling entity %@", buf, 0xCu);
  }

  v89 = v7;

  v10 = *(*(a1 + 32) + 16);
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ChangedLocalIdentifiersForEntityClass", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v14 = mach_absolute_time();
  v90 = [*(a1 + 40) changedLocalIdentifiersForEntityClass:v8];
  v15 = mach_absolute_time();
  v16 = info;
  v17 = v13;
  v18 = v17;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v18, OS_SIGNPOST_INTERVAL_END, v11, "ChangedLocalIdentifiersForEntityClass", "", buf, 2u);
  }

  v19 = v18;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *v113 = "ChangedLocalIdentifiersForEntityClass";
    *&v113[8] = 2048;
    v114 = ((((v15 - v14) * v16.numer) / v16.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v20 = v90;
  v21 = [v90 objectForKeyedSubscript:*MEMORY[0x277CD9C18]];
  v22 = [v90 objectForKeyedSubscript:*MEMORY[0x277CD9BB8]];
  v23 = [v90 objectForKeyedSubscript:*MEMORY[0x277CD9CB0]];
  v93 = v21;
  v24 = [v21 count];
  v92 = v22;
  v25 = [v22 count];
  v88 = v23;
  v26 = [v23 count];
  v27 = *(*(a1 + 32) + 16);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    *v113 = v24;
    *&v113[4] = 1024;
    *&v113[6] = v25;
    LOWORD(v114) = 1024;
    *(&v114 + 2) = v26;
    _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "PGPhotoChangeToGraphChangeConverter: %d insertions, %d deletions, %d updates", buf, 0x14u);
  }

  v28 = v89;
  if (v24)
  {
    v29 = [v89 graphChangesForInsertedLocalIdentifiers:v93 progressBlock:*(a1 + 56)];
    if (v29)
    {
      [*(a1 + 48) addObjectsFromArray:v29];
    }
  }

  if (*(a1 + 64))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v31 = *(*(a1 + 72) + 8);
    if (Current - *(v31 + 24) >= *(a1 + 88))
    {
      *(v31 + 24) = Current;
      buf[0] = 0;
      (*(*(a1 + 64) + 16))(*(a1 + 96));
      *(*(*(a1 + 80) + 8) + 24) |= buf[0];
      v32 = *(*(*(a1 + 80) + 8) + 24);
      if (v32 == 1)
      {
        goto LABEL_82;
      }
    }
  }

  if (v25)
  {
    v33 = [v89 graphChangesForDeletedLocalIdentifiers:v92 progressBlock:*(a1 + 56)];
    if (v33)
    {
      [*(a1 + 48) addObjectsFromArray:v33];
    }
  }

  if (*(a1 + 64))
  {
    v34 = CFAbsoluteTimeGetCurrent();
    v35 = *(*(a1 + 72) + 8);
    if (v34 - *(v35 + 24) >= *(a1 + 88))
    {
      *(v35 + 24) = v34;
      buf[0] = 0;
      (*(*(a1 + 64) + 16))(*(a1 + 96));
      *(*(*(a1 + 80) + 8) + 24) |= buf[0];
      v32 = *(*(*(a1 + 80) + 8) + 24);
      if (v32 == 1)
      {
        goto LABEL_82;
      }
    }
  }

  if (!v26)
  {
    goto LABEL_86;
  }

  v86 = v19;
  v94 = [MEMORY[0x277CBEB98] set];
  v36 = [MEMORY[0x277CBEB38] dictionary];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PGPhotoChangeToGraphChangeConverter_graphChangesWithPhotoChange_progressBlock___block_invoke_199;
  aBlock[3] = &unk_2788841F0;
  v106 = v89;
  v37 = v36;
  v107 = v37;
  v108 = *(a1 + 40);
  v110 = *(a1 + 56);
  v109 = *(a1 + 48);
  v98 = _Block_copy(aBlock);
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = v88;
  v38 = [obj countByEnumeratingWithState:&v101 objects:v117 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v102;
    v96 = v8;
    v95 = *v102;
    while (2)
    {
      v41 = 0;
      v97 = v39;
      do
      {
        if (*v102 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v101 + 1) + 8 * v41);
        v43 = [*(a1 + 40) changedPropertyNamesForLocalIdentifier:v42 entityClass:v8];
        v44 = [v43 count];
        v45 = v43;
        if (v44 || [objc_opt_class() includesRelationshipChanges] && (v46 = objc_msgSend(*(a1 + 40), "hasRelationshipChangesForLocalIdentifier:", v42), v45 = v94, v46))
        {
          [v37 setObject:v45 forKeyedSubscript:v42];
        }

        v47 = [v37 count];
        if (v47 >= 0xC8)
        {
          v48 = v47;
          if (*(a1 + 64))
          {
            v49 = CFAbsoluteTimeGetCurrent();
            v50 = *(*(a1 + 72) + 8);
            if (v49 - *(v50 + 24) >= *(a1 + 88))
            {
              *(v50 + 24) = v49;
              buf[0] = 0;
              (*(*(a1 + 64) + 16))(*(a1 + 96));
              *(*(*(a1 + 80) + 8) + 24) |= buf[0];
              if (*(*(*(a1 + 80) + 8) + 24) == 1)
              {
                *a4 = 1;
LABEL_62:

                v69 = 0;
                goto LABEL_77;
              }
            }
          }

          v51 = a1;
          v52 = *(*(a1 + 32) + 16);
          v53 = os_signpost_id_generate(v52);
          v54 = v52;
          v55 = v54;
          if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v55, OS_SIGNPOST_INTERVAL_BEGIN, v53, "ProcessChangedPropertyNames", "", buf, 2u);
          }

          v100 = 0;
          mach_timebase_info(&v100);
          v56 = mach_absolute_time();
          v98[2]();
          v57 = mach_absolute_time();
          v58 = v100;
          v59 = v55;
          v60 = v59;
          if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
          {
            *buf = 67109120;
            *v113 = v48;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v60, OS_SIGNPOST_INTERVAL_END, v53, "ProcessChangedPropertyNames", "%d entities", buf, 8u);
          }

          v61 = v60;
          if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"%d entities", v48];
            v62 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 136315650;
            *v113 = "ProcessChangedPropertyNames";
            *&v113[8] = 2112;
            v114 = v62;
            v115 = 2048;
            v116 = ((((v57 - v56) * v58.numer) / v58.denom) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v61, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
          }

          a1 = v51;
          v8 = v96;
          if (*(v51 + 64))
          {
            v63 = CFAbsoluteTimeGetCurrent();
            v64 = *(*(v51 + 72) + 8);
            if (v63 - *(v64 + 24) >= *(v51 + 88))
            {
              *(v64 + 24) = v63;
              buf[0] = 0;
              (*(*(v51 + 64) + 16))(*(v51 + 96));
              *(*(*(v51 + 80) + 8) + 24) |= buf[0];
              if (*(*(*(v51 + 80) + 8) + 24) == 1)
              {
                *a4 = 1;

                goto LABEL_62;
              }
            }
          }

          v39 = v97;
          v40 = v95;
        }

        ++v41;
      }

      while (v39 != v41);
      v39 = [obj countByEnumeratingWithState:&v101 objects:v117 count:16];
      if (v39)
      {
        continue;
      }

      break;
    }
  }

  v65 = [v37 count];
  if (v65)
  {
    v66 = v65;
    if (!*(a1 + 64))
    {
      goto LABEL_63;
    }

    v67 = CFAbsoluteTimeGetCurrent();
    v68 = *(*(a1 + 72) + 8);
    if (v67 - *(v68 + 24) < *(a1 + 88))
    {
      goto LABEL_63;
    }

    *(v68 + 24) = v67;
    buf[0] = 0;
    (*(*(a1 + 64) + 16))(*(a1 + 96));
    *(*(*(a1 + 80) + 8) + 24) |= buf[0];
    v20 = v90;
    v19 = v86;
    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      v69 = 0;
      *a4 = 1;
    }

    else
    {
LABEL_63:
      v70 = *(*(a1 + 32) + 16);
      v71 = os_signpost_id_generate(v70);
      v72 = v70;
      v73 = v72;
      if (v71 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v73, OS_SIGNPOST_INTERVAL_BEGIN, v71, "ProcessChangedPropertyNames", "", buf, 2u);
      }

      v100 = 0;
      mach_timebase_info(&v100);
      v74 = mach_absolute_time();
      v98[2]();
      v75 = mach_absolute_time();
      v76 = v100;
      v77 = v73;
      v78 = v77;
      if (v71 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
      {
        *buf = 67109120;
        *v113 = v66;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v78, OS_SIGNPOST_INTERVAL_END, v71, "ProcessChangedPropertyNames", "%d entities", buf, 8u);
      }

      v79 = v78;
      if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%d entities", v66];
        v80 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 136315650;
        *v113 = "ProcessChangedPropertyNames";
        *&v113[8] = 2112;
        v114 = v80;
        v115 = 2048;
        v116 = ((((v75 - v74) * v76.numer) / v76.denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v79, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
      }

      v20 = v90;
      v19 = v86;
      if (!*(a1 + 64))
      {
        goto LABEL_75;
      }

      v81 = CFAbsoluteTimeGetCurrent();
      v82 = *(*(a1 + 72) + 8);
      if (v81 - *(v82 + 24) >= *(a1 + 88) && (*(v82 + 24) = v81, buf[0] = 0, (*(*(a1 + 64) + 16))(*(a1 + 96)), *(*(*(a1 + 80) + 8) + 24) |= buf[0], *(*(*(a1 + 80) + 8) + 24) == 1))
      {
        *a4 = 1;

        v69 = 0;
      }

      else
      {
LABEL_75:

        v69 = 1;
      }
    }
  }

  else
  {
    v69 = 1;
LABEL_77:
    v20 = v90;
    v19 = v86;
  }

  v28 = v89;
  if (v69)
  {
LABEL_86:
    if (*(a1 + 64))
    {
      v83 = CFAbsoluteTimeGetCurrent();
      v84 = *(*(a1 + 72) + 8);
      if (v83 - *(v84 + 24) >= *(a1 + 88))
      {
        *(v84 + 24) = v83;
        buf[0] = 0;
        (*(*(a1 + 64) + 16))(*(a1 + 96));
        *(*(*(a1 + 80) + 8) + 24) |= buf[0];
        v32 = *(*(*(a1 + 80) + 8) + 24);
        if (v32 == 1)
        {
LABEL_82:
          *a4 = v32;
        }
      }
    }
  }

  v85 = *MEMORY[0x277D85DE8];
}

void __81__PGPhotoChangeToGraphChangeConverter_graphChangesWithPhotoChange_progressBlock___block_invoke_199(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) graphChangesForChangedPropertyNamesByLocalIdentifier:*(a1 + 40) change:*(a1 + 48) progressBlock:*(a1 + 64)];
  [*(a1 + 56) addObjectsFromArray:v3];
  [*(a1 + 40) removeAllObjects];

  objc_autoreleasePoolPop(v2);
}

- (void)_registerTranslatorsWithPhotoLibrary:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [v4 dictionary];
  entityTranslatorByEntityClassName = self->_entityTranslatorByEntityClassName;
  self->_entityTranslatorByEntityClassName = v6;

  v8 = [(PGGraphEntityTranslator *)[PGGraphAssetTranslator alloc] initWithPhotoLibrary:v5];
  v9 = self->_entityTranslatorByEntityClassName;
  v10 = +[(PGGraphEntityTranslator *)PGGraphAssetTranslator];
  [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:v10];

  v11 = [(PGGraphEntityTranslator *)[PGGraphMomentTranslator alloc] initWithPhotoLibrary:v5];
  v12 = self->_entityTranslatorByEntityClassName;
  v13 = +[(PGGraphEntityTranslator *)PGGraphMomentTranslator];
  [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];

  v14 = [(PGGraphEntityTranslator *)[PGGraphHighlightTranslator alloc] initWithPhotoLibrary:v5];
  v15 = self->_entityTranslatorByEntityClassName;
  v16 = +[(PGGraphEntityTranslator *)PGGraphHighlightTranslator];
  [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:v16];

  v17 = [(PGGraphEntityTranslator *)[PGGraphFaceTranslator alloc] initWithPhotoLibrary:v5];
  v18 = self->_entityTranslatorByEntityClassName;
  v19 = +[(PGGraphEntityTranslator *)PGGraphFaceTranslator];
  [(NSMutableDictionary *)v18 setObject:v17 forKeyedSubscript:v19];

  v20 = [(PGGraphEntityTranslator *)[PGGraphPersonTranslator alloc] initWithPhotoLibrary:v5];
  v21 = self->_entityTranslatorByEntityClassName;
  v22 = +[(PGGraphEntityTranslator *)PGGraphPersonTranslator];
  [(NSMutableDictionary *)v21 setObject:v20 forKeyedSubscript:v22];

  v25 = [(PGGraphEntityTranslator *)[PGGraphSocialGroupTranslator alloc] initWithPhotoLibrary:v5];
  v23 = self->_entityTranslatorByEntityClassName;
  v24 = +[(PGGraphEntityTranslator *)PGGraphSocialGroupTranslator];
  [(NSMutableDictionary *)v23 setObject:v25 forKeyedSubscript:v24];
}

- (PGPhotoChangeToGraphChangeConverter)initWithPhotoLibrary:(id)a3 loggingConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PGPhotoChangeToGraphChangeConverter;
  v8 = [(PGPhotoChangeToGraphChangeConverter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PGPhotoChangeToGraphChangeConverter *)v8 _registerTranslatorsWithPhotoLibrary:v6];
    objc_storeStrong(&v9->_loggingConnection, a4);
  }

  return v9;
}

+ (id)managedEntityNamesToTranslate
{
  if (managedEntityNamesToTranslate_onceToken != -1)
  {
    dispatch_once(&managedEntityNamesToTranslate_onceToken, &__block_literal_global_40082);
  }

  v3 = managedEntityNamesToTranslate_managedEntityNamesToTranslate;

  return v3;
}

void __68__PGPhotoChangeToGraphChangeConverter_managedEntityNamesToTranslate__block_invoke()
{
  v11[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = +[(PGGraphEntityTranslator *)PGGraphAssetTranslator];
  v11[0] = v1;
  v2 = +[(PGGraphEntityTranslator *)PGGraphMomentTranslator];
  v11[1] = v2;
  v3 = +[(PGGraphEntityTranslator *)PGGraphHighlightTranslator];
  v11[2] = v3;
  v4 = +[(PGGraphEntityTranslator *)PGGraphFaceTranslator];
  v11[3] = v4;
  v5 = +[(PGGraphEntityTranslator *)PGGraphPersonTranslator];
  v11[4] = v5;
  v6 = +[(PGGraphEntityTranslator *)PGGraphSocialGroupTranslator];
  v11[5] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:6];
  v8 = [v0 setWithArray:v7];
  v9 = managedEntityNamesToTranslate_managedEntityNamesToTranslate;
  managedEntityNamesToTranslate_managedEntityNamesToTranslate = v8;

  v10 = *MEMORY[0x277D85DE8];
}

@end