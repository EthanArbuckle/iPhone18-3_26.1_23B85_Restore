@interface QLCacheIndexDatabaseQueryEnumerator
- (BOOL)nextThumbnailInfo;
- (CGRect)contentRect;
- (QLCacheIndexDatabaseQueryEnumerator)initWithSqliteDatabase:(id)a3 fileRequests:(id)a4;
- (void)_getCacheIds;
- (void)_getCacheIdsForHomogeneousArrayOfRequests:(id)a3;
- (void)dealloc;
- (void)nextThumbnailInfo;
@end

@implementation QLCacheIndexDatabaseQueryEnumerator

- (void)_getCacheIds
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(NSDictionary *)self->_fileRequests allValues];
  allFileRequests = self->_allFileRequests;
  self->_allFileRequests = v3;

  v5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_allFileRequests;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 fileIdentifier];
        v13 = [v5 objectForKey:objc_opt_class()];

        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v14 = [v11 fileIdentifier];
          [v5 setObject:v13 forKey:objc_opt_class()];
        }

        [v13 addObject:v11];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = [v5 objectEnumerator];
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(QLCacheIndexDatabaseQueryEnumerator *)self _getCacheIdsForHomogeneousArrayOfRequests:*(*(&v21 + 1) + 8 * j)];
      }

      v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)nextThumbnailInfo
{
  v2 = self;
  v91 = *MEMORY[0x277D85DE8];
  p_stmt = &self->super._stmt;
  if (self->super._stmt)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{@"SELECT file_id, size, icon_mode, bitmapFormat, bitmapdata_location, bitmapdata_length, plistbuffer_location, plistbuffer_length, flavor, content_rect, hit_count, last_hit_date, badge_type, icon_variant, interpolation, externalGeneratorDataHash FROM thumbnails WHERE "}];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v6 = v2->_allFileRequests;
    v66 = [(NSArray *)v6 countByEnumeratingWithState:&v86 objects:v90 count:16];
    if (v66)
    {
      v62 = v2;
      v67 = 0;
      v7 = 0;
      v65 = *v87;
      v63 = v6;
      do
      {
        for (i = 0; i != v66; ++i)
        {
          if (*v87 != v65)
          {
            objc_enumerationMutation(v6);
          }

          v9 = *(*(&v86 + 1) + 8 * i);
          if ([v9 cacheId])
          {
            if (v7 >= 1)
            {
              [v5 appendString:@" OR "];
            }

            v10 = [v9 cacheId];
            objc_msgSend(v5, "appendFormat:", @"(file_id=?");
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 3221225472;
            aBlock[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke;
            aBlock[3] = &__block_descriptor_40_e47_v28__0i8__sqlite3_stmt__12__QLSqliteDatabase_20l;
            aBlock[4] = v10;
            v11 = _Block_copy(aBlock);
            [v4 addObject:v11];

            if (v67)
            {
              v67 = 1;
            }

            else
            {
              v67 = [v9 hasAtLeastOneLowQuality];
            }

            if (([v9 allSizes] & 1) == 0 && (objc_msgSend(v9, "hasAtLeastOneLowQuality") & 1) == 0)
            {
              v64 = v7;
              objc_msgSend(v5, "appendFormat:", @" AND (");
              v12 = [v9 sizeAndIconModeCount];
              if (v12 >= 1)
              {
                v13 = v12;
                for (j = 0; j != v13; ++j)
                {
                  if (j)
                  {
                    [v5 appendString:@" OR "];
                  }

                  [v9 minimumSizeAtIndex:j];
                  v16 = v15;
                  if (v15 > 0.0)
                  {
                    objc_msgSend(v5, "appendFormat:", @"(");
                  }

                  [v9 sizeAtIndex:j];
                  v18 = v17;
                  [v5 appendFormat:@"(size=? AND icon_mode=? AND badge_type=? AND icon_variant=? AND interpolation=? AND externalGeneratorDataHash=?)"];
                  v83[0] = MEMORY[0x277D85DD0];
                  v83[1] = 3221225472;
                  v83[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_2;
                  v83[3] = &__block_descriptor_36_e47_v28__0i8__sqlite3_stmt__12__QLSqliteDatabase_20l;
                  v84 = v18;
                  v19 = _Block_copy(v83);
                  [v4 addObject:v19];

                  v82[0] = MEMORY[0x277D85DD0];
                  v82[1] = 3221225472;
                  v82[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_3;
                  v82[3] = &unk_279ADD630;
                  v82[4] = v9;
                  v82[5] = j;
                  v20 = _Block_copy(v82);
                  [v4 addObject:v20];

                  v81[0] = MEMORY[0x277D85DD0];
                  v81[1] = 3221225472;
                  v81[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_4;
                  v81[3] = &unk_279ADD630;
                  v81[4] = v9;
                  v81[5] = j;
                  v21 = _Block_copy(v81);
                  [v4 addObject:v21];

                  v80[0] = MEMORY[0x277D85DD0];
                  v80[1] = 3221225472;
                  v80[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_5;
                  v80[3] = &unk_279ADD630;
                  v80[4] = v9;
                  v80[5] = j;
                  v22 = _Block_copy(v80);
                  [v4 addObject:v22];

                  v79[0] = MEMORY[0x277D85DD0];
                  v79[1] = 3221225472;
                  v79[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_6;
                  v79[3] = &unk_279ADD630;
                  v79[4] = v9;
                  v79[5] = j;
                  v23 = _Block_copy(v79);
                  [v4 addObject:v23];

                  v78[0] = MEMORY[0x277D85DD0];
                  v78[1] = 3221225472;
                  v78[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_7;
                  v78[3] = &unk_279ADD630;
                  v78[4] = v9;
                  v78[5] = j;
                  v24 = _Block_copy(v78);
                  [v4 addObject:v24];

                  v25 = fmaxf(v18 + v18, 1024.0);
                  [v5 appendFormat:@" AND (width<=? OR height<=?)"];
                  v76[0] = MEMORY[0x277D85DD0];
                  v76[1] = 3221225472;
                  v76[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_8;
                  v76[3] = &__block_descriptor_36_e47_v28__0i8__sqlite3_stmt__12__QLSqliteDatabase_20l;
                  v77 = v25;
                  v26 = _Block_copy(v76);
                  [v4 addObject:v26];

                  v74[0] = MEMORY[0x277D85DD0];
                  v74[1] = 3221225472;
                  v74[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_9;
                  v74[3] = &__block_descriptor_36_e47_v28__0i8__sqlite3_stmt__12__QLSqliteDatabase_20l;
                  v75 = v25;
                  v27 = _Block_copy(v74);
                  [v4 addObject:v27];

                  if (v16 > 0.0)
                  {
                    [v5 appendFormat:@" AND width>=? AND height>=?"]);
                    v72[0] = MEMORY[0x277D85DD0];
                    v72[1] = 3221225472;
                    v72[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_10;
                    v72[3] = &__block_descriptor_36_e47_v28__0i8__sqlite3_stmt__12__QLSqliteDatabase_20l;
                    v73 = v16;
                    v28 = _Block_copy(v72);
                    [v4 addObject:v28];

                    v70[0] = MEMORY[0x277D85DD0];
                    v70[1] = 3221225472;
                    v70[2] = __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_11;
                    v70[3] = &__block_descriptor_36_e47_v28__0i8__sqlite3_stmt__12__QLSqliteDatabase_20l;
                    v71 = v16;
                    v29 = _Block_copy(v70);
                    [v4 addObject:v29];
                  }
                }
              }

              [v5 appendString:@""]);
              v6 = v63;
              v7 = v64;
            }

            ++v7;
            [v5 appendString:@""]);
          }
        }

        v66 = [(NSArray *)v6 countByEnumeratingWithState:&v86 objects:v90 count:16];
      }

      while (v66);

      if (v67)
      {
        [v5 appendString:{@" ORDER BY file_id, icon_mode ASC, size ASC"}];
      }

      v2 = v62;
      if (v7 >= 1)
      {
        v62->super._stmt = -[QLSqliteDatabase prepareStatement:](v62->super._sqliteDatabase, "prepareStatement:", [v5 UTF8String]);
      }
    }

    else
    {
    }

    if (!*p_stmt)
    {
LABEL_49:
      v42 = 0;
      goto LABEL_56;
    }
  }

  fileIdentifier = v2->_fileIdentifier;
  if (fileIdentifier)
  {
    v2->_fileIdentifier = 0;
  }

  if ([v4 count])
  {
    v31 = 0;
    do
    {
      v32 = v31 + 1;
      v33 = [v4 objectAtIndexedSubscript:?];
      (v33)[2](v33, v32, v2->super._stmt, v2->super._sqliteDatabase);

      v34 = [v4 count];
      v31 = v32;
    }

    while (v32 < v34);
  }

  v69 = 0;
  do
  {
LABEL_41:
    if (![(QLSqliteDatabase *)v2->super._sqliteDatabase stepStatement:v2->super._stmt didReturnData:&v69]|| v69 != 1)
    {
      [(QLSqliteDatabase *)v2->super._sqliteDatabase finalizeStatement:p_stmt];
      goto LABEL_49;
    }

    v35 = [(QLSqliteDatabase *)v2->super._sqliteDatabase unsignedLongLongFromColumn:0 inStatement:v2->super._stmt];
    v36 = [(NSDictionary *)v2->_fileRequests count];
  }

  while (!v36);
  v37 = v36;
  v38 = 0;
  while (1)
  {
    v39 = v2;
    v40 = [(NSArray *)v2->_allFileRequests objectAtIndexedSubscript:v38];
    v41 = [v40 cacheId];

    if (v35 == v41)
    {
      break;
    }

    ++v38;
    v2 = v39;
    if (v37 == v38)
    {
      goto LABEL_41;
    }
  }

  v43 = [(NSArray *)v39->_allFileRequests objectAtIndexedSubscript:v38];
  v44 = [v43 fileIdentifier];
  v45 = v39->_fileIdentifier;
  v39->_fileIdentifier = v44;

  v39->_cacheId = [(QLSqliteDatabase *)v39->super._sqliteDatabase unsignedLongLongFromColumn:0 inStatement:v39->super._stmt];
  [(QLSqliteDatabase *)v39->super._sqliteDatabase floatFromColumn:1 inStatement:v39->super._stmt];
  v39->_size = v46;
  v39->_iconMode = [(QLSqliteDatabase *)v39->super._sqliteDatabase intFromColumn:2 inStatement:v39->super._stmt];
  v47 = [(QLSqliteDatabase *)v39->super._sqliteDatabase newDataFromColumn:3 inStatement:v39->super._stmt copyBytes:0];
  v68 = 0;
  v48 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v47 error:&v68];
  v49 = v68;
  bitmapFormat = v39->_bitmapFormat;
  v39->_bitmapFormat = v48;

  if (!v39->_bitmapFormat)
  {
    v51 = MEMORY[0x277CDAB78];
    v52 = *(MEMORY[0x277CDAB78] + 56);
    if (!v52)
    {
      QLTInitLogging();
      v52 = *(v51 + 56);
    }

    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      [(QLCacheIndexDatabaseQueryEnumerator *)v47 nextThumbnailInfo];
    }
  }

  v53 = objc_alloc_init(QLCacheBlobInfo);
  bitmapDataBlobInfo = v39->_bitmapDataBlobInfo;
  v39->_bitmapDataBlobInfo = v53;

  [(QLCacheBlobInfo *)v39->_bitmapDataBlobInfo setLocation:[(QLSqliteDatabase *)v39->super._sqliteDatabase unsignedLongLongFromColumn:4 inStatement:v39->super._stmt]];
  [(QLCacheBlobInfo *)v39->_bitmapDataBlobInfo setLength:[(QLSqliteDatabase *)v39->super._sqliteDatabase unsignedLongLongFromColumn:5 inStatement:v39->super._stmt]];
  v55 = objc_alloc_init(QLCacheBlobInfo);
  plistBufferBlobInfo = v39->_plistBufferBlobInfo;
  v39->_plistBufferBlobInfo = v55;

  [(QLCacheBlobInfo *)v39->_plistBufferBlobInfo setLocation:[(QLSqliteDatabase *)v39->super._sqliteDatabase unsignedLongLongFromColumn:6 inStatement:v39->super._stmt]];
  [(QLCacheBlobInfo *)v39->_plistBufferBlobInfo setLength:[(QLSqliteDatabase *)v39->super._sqliteDatabase unsignedLongLongFromColumn:7 inStatement:v39->super._stmt]];
  v39->_hitCount = [(QLSqliteDatabase *)v39->super._sqliteDatabase intFromColumn:10 inStatement:v39->super._stmt];
  v57 = MEMORY[0x277CBEAA8];
  [(QLSqliteDatabase *)v39->super._sqliteDatabase doubleFromColumn:11 inStatement:v39->super._stmt];
  v58 = [v57 dateWithTimeIntervalSinceReferenceDate:?];
  lastHitDate = v39->_lastHitDate;
  v39->_lastHitDate = v58;

  v39->_badgeType = [(QLSqliteDatabase *)v39->super._sqliteDatabase unsignedLongLongFromColumn:12 inStatement:v39->super._stmt];
  v39->_iconVariant = [(QLSqliteDatabase *)v39->super._sqliteDatabase intFromColumn:13 inStatement:v39->super._stmt];
  v39->_interpolationQuality = [(QLSqliteDatabase *)v39->super._sqliteDatabase intFromColumn:14 inStatement:v39->super._stmt];
  v39->_externalGeneratorDataHash = [(QLSqliteDatabase *)v39->super._sqliteDatabase unsignedLongLongFromColumn:15 inStatement:v39->super._stmt];

  v42 = 1;
LABEL_56:

  v60 = *MEMORY[0x277D85DE8];
  return v42;
}

- (void)dealloc
{
  p_stmt = &self->super._stmt;
  if (self->super._stmt)
  {
    [(QLSqliteDatabase *)self->super._sqliteDatabase finalizeStatement:p_stmt];
  }

  v4.receiver = self;
  v4.super_class = QLCacheIndexDatabaseQueryEnumerator;
  [(QLCacheIndexDatabaseGenericEnumerator *)&v4 dealloc];
}

- (QLCacheIndexDatabaseQueryEnumerator)initWithSqliteDatabase:(id)a3 fileRequests:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = QLCacheIndexDatabaseQueryEnumerator;
  v8 = [(QLCacheIndexDatabaseGenericEnumerator *)&v11 initWithSqliteDatabase:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fileRequests, a4);
    [(QLCacheIndexDatabaseQueryEnumerator *)v9 _getCacheIds];
  }

  return v9;
}

- (void)_getCacheIdsForHomogeneousArrayOfRequests:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v47;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v46 + 1) + 8 * i);
        if (v8)
        {
          [v8 appendString:@" OR "];
        }

        else
        {
          v12 = [*(*(&v46 + 1) + 8 * i) fileIdentifier];
          v7 = objc_opt_class();

          v13 = [v7 queryStringToFindCacheIds];
          v8 = [v13 mutableCopy];
        }

        v14 = [v11 fileIdentifier];
        v15 = [objc_opt_class() whereClauseToFindCacheId];
        [v8 appendString:v15];
      }

      v6 = [v4 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v45 = 0;
  v16 = -[QLSqliteDatabase prepareStatement:](self->super._sqliteDatabase, "prepareStatement:", [v8 UTF8String]);
  v45 = v16;
  if (v16)
  {
    v17 = v16;
    v44 = 1;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v18 = v4;
    v19 = [v18 countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v41;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v40 + 1) + 8 * j) fileIdentifier];
          [v23 bindInFindCacheIdStatement:v17 database:self->super._sqliteDatabase startingAtIndex:v44 gettingNextIndex:&v44];
        }

        v20 = [v18 countByEnumeratingWithState:&v40 objects:v50 count:16];
      }

      while (v20);
    }

    v39 = 0;
    if ([(QLSqliteDatabase *)self->super._sqliteDatabase stepStatement:v17 didReturnData:&v39]&& (v39 & 1) != 0)
    {
      v24 = 0x27FEB4000uLL;
      do
      {
        v25 = [v7 cacheIdFromRowId:{-[QLSqliteDatabase unsignedLongLongFromColumn:inStatement:](self->super._sqliteDatabase, "unsignedLongLongFromColumn:inStatement:", 0, v17)}];
        v26 = objc_alloc([v7 versionedFileIdentifierClass]);
        v17 = v45;
        v27 = [v26 initWithSteppedStatement:v45 database:self->super._sqliteDatabase];
        v28 = [v27 fileIdentifier];
        if (v28)
        {
          v29 = [*(&self->super.super.isa + *(v24 + 3068)) objectForKeyedSubscript:v28];
          v30 = v29;
          if (v29)
          {
            v38 = v25;
            v31 = [v29 version];

            if (!v31)
            {
              goto LABEL_29;
            }

            v32 = [v27 version];
            if (v32)
            {
              v37 = v32;
              v33 = [v27 version];
              v34 = [v30 version];
              v36 = [v33 isEqual:v34];

              v24 = 0x27FEB4000;
              if (v36)
              {
LABEL_29:
                [v30 _setCacheId:v38];
              }
            }
          }
        }

        else
        {
          v30 = 0;
        }
      }

      while ([(QLSqliteDatabase *)self->super._sqliteDatabase stepStatement:v17 didReturnData:&v39]&& (v39 & 1) != 0);
    }

    [(QLSqliteDatabase *)self->super._sqliteDatabase finalizeStatement:&v45];
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a4;
  [v8 bindUnsignedLongLong:objc_msgSend(v6 atIndex:"iconModeAtIndex:" inStatement:{v7), a2, a3}];
}

void __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a4;
  [v8 bindUnsignedLongLong:objc_msgSend(v6 atIndex:"badgeTypeAtIndex:" inStatement:{v7), a2, a3}];
}

void __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a4;
  [v8 bindUnsignedLongLong:objc_msgSend(v6 atIndex:"iconVariantAtIndex:" inStatement:{v7), a2, a3}];
}

void __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a4;
  [v8 bindUnsignedLongLong:objc_msgSend(v6 atIndex:"interpolationQualityAtIndex:" inStatement:{v7), a2, a3}];
}

void __56__QLCacheIndexDatabaseQueryEnumerator_nextThumbnailInfo__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a4;
  [v8 bindUnsignedLongLong:objc_msgSend(v6 atIndex:"externalGeneratorDataHashAtIndex:" inStatement:{v7), a2, a3}];
}

- (CGRect)contentRect
{
  x = self->_contentRect.origin.x;
  y = self->_contentRect.origin.y;
  width = self->_contentRect.size.width;
  height = self->_contentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)nextThumbnailInfo
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_2615D3000, log, OS_LOG_TYPE_ERROR, "cannot create the bitmap format based on data %@ : %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end