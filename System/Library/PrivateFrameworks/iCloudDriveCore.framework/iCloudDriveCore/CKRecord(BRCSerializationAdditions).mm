@interface CKRecord(BRCSerializationAdditions)
+ (uint64_t)newFromSqliteStatement:()BRCSerializationAdditions atIndex:;
+ (uint64_t)newFromSqliteValue:()BRCSerializationAdditions;
- (BOOL)_verifyValueForRecordWithNumber:()BRCSerializationAdditions key:item:error:;
- (BOOL)deserializeiWorkSharingOptions:()BRCSerializationAdditions error:;
- (id)_createAppLibraryIfNecessary:()BRCSerializationAdditions session:;
- (id)getAndUpdateBoundaryKeyForItem:()BRCSerializationAdditions;
- (uint64_t)_deserializeModifiedTime:()BRCSerializationAdditions size:hasExactSize:outOfBandUpload:userInfo:error:;
- (uint64_t)_deserializeValue:()BRCSerializationAdditions forKey:encrypted:expectClass:allowNil:errorDescription:;
- (uint64_t)_locateSideCarServerZone:()BRCSerializationAdditions withShareAliasReference:sessionContext:;
- (uint64_t)_updateSize:()BRCSerializationAdditions mtime:shouldUseEnhancedDrivePrivacy:item:error:;
- (uint64_t)deserializeAliasInfo:()BRCSerializationAdditions serverZone:error:;
- (uint64_t)deserializeFilename:()BRCSerializationAdditions basename:bounceno:extension:userInfo:error:;
- (uint64_t)deserializeSideCarInfo:()BRCSerializationAdditions error:;
- (uint64_t)deserializeStatInfo:()BRCSerializationAdditions serverMetrics:itemID:session:error:;
- (uint64_t)deserializeSymlinkTarget:()BRCSerializationAdditions error:;
- (uint64_t)deserializeVersion:()BRCSerializationAdditions fakeStatInfo:contentBoundaryKey:clientZone:outOfBandUpload:error:;
- (uint64_t)locateSideCarServerZone:()BRCSerializationAdditions shareRecordName:sessionContext:;
- (uint64_t)serializeForContentUpload:()BRCSerializationAdditions size:mtime:etag:shouldUseEnhancedDrivePrivacy:error:;
- (uint64_t)serializeStatInfo:()BRCSerializationAdditions diffs:stageID:deadInServerTruth:shouldPCSChainStatus:basehashSaltGetter:childBasehashSaltGetter:error:;
- (uint64_t)serializeVersion:()BRCSerializationAdditions diffs:deadInServerTruth:basehashSalt:error:;
- (void)_deserializeRootSharingOptions:()BRCSerializationAdditions;
- (void)_processSaltingOnAppLibrary:()BRCSerializationAdditions;
- (void)_saveAppLibraryIfNecessary:()BRCSerializationAdditions;
- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:;
- (void)seralizeBirthtime:()BRCSerializationAdditions;
- (void)serializeContentBoundaryKey:()BRCSerializationAdditions;
- (void)serializeFilename:()BRCSerializationAdditions forCreation:setExtension:inSharedAlias:basehashSaltIfNotShareAlias:parentIDIsCloudDocsRoot:parentIDIsDocumentsFolder:;
- (void)serializeFinderTags:()BRCSerializationAdditions forCreation:;
- (void)serializeSideCarInfo:()BRCSerializationAdditions filenameExtension:diffs:deadInServerTruth:;
- (void)serializeSpecialIdentityForFilename:()BRCSerializationAdditions parentIDIsCloudDocsRoot:parentIDisDocumentsFolder:;
- (void)serializeSystemFields:()BRCSerializationAdditions includeCZMEtag:;
- (void)setLastUsedTime:()BRCSerializationAdditions;
- (void)sqliteBind:()BRCSerializationAdditions index:;
@end

@implementation CKRecord(BRCSerializationAdditions)

- (void)sqliteBind:()BRCSerializationAdditions index:
{
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v6 = v7;
  sqlite3_bind_blob(a3, a4, [v7 bytes], objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

+ (uint64_t)newFromSqliteValue:()BRCSerializationAdditions
{
  if (sqlite3_value_type(a3) == 4)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = objc_opt_class();
    v6 = MEMORY[0x277CBEA90];
    v7 = sqlite3_value_blob(a3);
    v8 = [v6 dataWithBytes:v7 length:sqlite3_value_bytes(a3)];
    v9 = [v4 unarchivedObjectOfClass:v5 fromData:v8 error:0];
  }

  else
  {
    if (sqlite3_value_type(a3) != 5)
    {
      +[CKRecord(BRCSerializationAdditions) newFromSqliteValue:];
    }

    return 0;
  }

  return v9;
}

+ (uint64_t)newFromSqliteStatement:()BRCSerializationAdditions atIndex:
{
  if (sqlite3_column_type(a3, iCol) == 4)
  {
    v6 = MEMORY[0x277CCAAC8];
    v7 = objc_opt_class();
    v8 = MEMORY[0x277CBEA90];
    v9 = sqlite3_column_blob(a3, iCol);
    v10 = [v8 dataWithBytes:v9 length:{sqlite3_column_bytes(a3, iCol)}];
    v11 = [v6 unarchivedObjectOfClass:v7 fromData:v10 error:0];
  }

  else
  {
    if (sqlite3_column_type(a3, iCol) != 5)
    {
      +[CKRecord(BRCSerializationAdditions) newFromSqliteStatement:atIndex:];
    }

    return 0;
  }

  return v11;
}

- (uint64_t)_deserializeValue:()BRCSerializationAdditions forKey:encrypted:expectClass:allowNil:errorDescription:
{
  v13 = a4;
  if (a5)
  {
    encryptedValues = [self encryptedValues];
    v15 = [encryptedValues objectForKeyedSubscript:v13];

    if (v15)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v15 = [self objectForKeyedSubscript:v13];
    if (v15)
    {
      goto LABEL_6;
    }
  }

  if ((a7 & 1) == 0)
  {
    [CKRecord(BRCSerializationAdditions) _deserializeValue:a8 forKey:self encrypted:v13 expectClass:&v23 allowNil:? errorDescription:?];
    a8 = v23;
    goto LABEL_11;
  }

LABEL_6:
  if (v15 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a8)
    {
      v18 = MEMORY[0x277CCACA8];
      recordType = [self recordType];
      recordID = [self recordID];
      v21 = [v18 stringWithFormat:@"invalid value for key '%@' in %@ record %@: %@ %@", v13, recordType, recordID, objc_opt_class(), v15];
      v22 = *a8;
      *a8 = v21;

      a8 = 0;
    }
  }

  else
  {
    if (a3)
    {
      v16 = v15;
      *a3 = v15;
    }

    a8 = 1;
  }

LABEL_11:

  return a8;
}

- (uint64_t)deserializeFilename:()BRCSerializationAdditions basename:bounceno:extension:userInfo:error:
{
  v14 = a7;
  v54 = 0;
  v55[0] = 0;
  v15 = [self _deserializeValue:&v54 forKey:@"encryptedBasename" encrypted:1 expectClass:objc_opt_class() allowNil:0 errorDescription:v55];
  v16 = v54;
  if ((v15 & 1) == 0)
  {
    if (v14)
    {
      [v14 setObject:v55[0] forKeyedSubscript:@"encryptedBasename"];
    }

    else if (a8)
    {
      *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v55[0]}];
    }

    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:v55 basename:? bounceno:? extension:? userInfo:? error:?];
    }

    v25 = 0;
    v24 = 0;
    v28 = 0;
    v18 = 0;
    v29 = 0;
    v20 = v16;
    v16 = 0;
    goto LABEL_49;
  }

  v53 = 0;
  v17 = [self _deserializeValue:&v53 forKey:@"bounceNo" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:v55];
  v18 = v53;
  if ((v17 & 1) == 0)
  {
    if (v14)
    {
      [v14 setObject:v55[0] forKeyedSubscript:@"bounceNo"];
    }

    else if (a8)
    {
      *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v55[0]}];
    }

    v30 = brc_bread_crumbs();
    v31 = brc_default_log();
    if (os_log_type_enabled(v31, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:v55 basename:? bounceno:? extension:? userInfo:? error:?];
    }

    v25 = 0;
    v24 = 0;
    v28 = 0;
    v29 = 0;
    v20 = v18;
    v18 = 0;
    goto LABEL_49;
  }

  v52 = 0;
  v19 = [self _deserializeValue:&v52 forKey:@"extension" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:v55];
  v20 = v52;
  if ((v19 & 1) == 0)
  {
    if (v14)
    {
      [v14 setObject:v55[0] forKeyedSubscript:@"extension"];
    }

    else if (a8)
    {
      *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v55[0]}];
    }

    v32 = brc_bread_crumbs();
    v33 = brc_default_log();
    if (os_log_type_enabled(v33, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:v55 basename:? bounceno:? extension:? userInfo:? error:?];
    }

    v25 = 0;
    v24 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_49;
  }

  if (v18 && [v18 integerValue] <= 1)
  {
    [CKRecord(BRCSerializationAdditions) deserializeFilename:v18 basename:? bounceno:? extension:? userInfo:? error:?];
    v18 = 0;
  }

  v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v16 encoding:4];
  if (!v21)
  {
    [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    v21 = &stru_2837504F0;
  }

  location = a5;
  if ([(__CFString *)v21 length])
  {
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{-[__CFString br_filenameSafeFileSystemRepresentation](v21, "br_filenameSafeFileSystemRepresentation")}];

    v23 = v22;
    v24 = v23;
    if (v18)
    {
      v25 = [v23 stringByAppendingFormat:@" %@", v18];

      goto LABEL_35;
    }
  }

  else
  {
    [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    v18 = 0;
    v24 = v55[1];
  }

  v25 = v24;
LABEL_35:
  v34 = a6;
  if ([v20 length])
  {
    v35 = [v25 stringByAppendingPathExtension:v20];

    v25 = v35;
    a6 = v34;
  }

  if (a3)
  {
    v36 = MEMORY[0x277CCACA8];
    fileSystemRepresentation = [v25 fileSystemRepresentation];
    v38 = v36;
    a6 = v34;
    v39 = [v38 br_pathWithFileSystemRepresentation:fileSystemRepresentation];
    v40 = *a3;
    *a3 = v39;
  }

  if (a4)
  {
    v41 = MEMORY[0x277CCACA8];
    fileSystemRepresentation2 = [v24 fileSystemRepresentation];
    v43 = v41;
    a6 = v34;
    v44 = [v43 br_pathWithFileSystemRepresentation:fileSystemRepresentation2];
    v45 = *a4;
    *a4 = v44;
  }

  if (location)
  {
    objc_storeStrong(location, v18);
  }

  if (a6)
  {
    if (v20)
    {
      v46 = MEMORY[0x277CCACA8];
      fileSystemRepresentation3 = [v20 fileSystemRepresentation];
      v48 = v46;
      a6 = v34;
      v49 = [v48 br_pathWithFileSystemRepresentation:fileSystemRepresentation3];
    }

    else
    {
      v49 = 0;
    }

    v28 = v49;
    v20 = *a6;
    *a6 = v28;
    v29 = 1;
LABEL_49:

    v20 = v28;
    goto LABEL_50;
  }

  v29 = 1;
LABEL_50:

  return v29;
}

- (uint64_t)deserializeAliasInfo:()BRCSerializationAdditions serverZone:error:
{
  v123 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [v8 db];
  [v9 assertOnQueue];

  session = [v8 session];

  dictionary = 0;
  v114 = 0;
  if (!a3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v113 = 0;
  v12 = [self _deserializeValue:&v113 forKey:@"parent" encrypted:0 expectClass:objc_opt_class() allowNil:0 errorDescription:&v114];
  v13 = v113;
  v14 = v13;
  if (v12)
  {
    v14 = v13;

    v112 = 0;
    v15 = [self _deserializeValue:&v112 forKey:@"target" encrypted:0 expectClass:objc_opt_class() allowNil:0 errorDescription:&v114];
    v16 = v112;
    v17 = v16;
    if (v15)
    {
      v17 = v16;

      v111 = 0;
      v18 = [self _deserializeValue:&v111 forKey:@"favoriteRank" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v114];
      v19 = v111;
      v20 = v19;
      if (v18)
      {
        v21 = v19;

        v110 = 0;
        v22 = [self _deserializeValue:&v110 forKey:@"lastOpenTime" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v114];
        v23 = v110;
        v24 = v23;
        if ((v22 & 1) == 0)
        {
          if (dictionary)
          {
            [dictionary setObject:v114 forKeyedSubscript:@"lastOpenTime"];
          }

          else if (a5)
          {
            *a5 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v114}];
          }

          v37 = brc_bread_crumbs();
          v38 = brc_default_log();
          if (os_log_type_enabled(v38, 0x90u))
          {
            [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
          }

          v32 = 0;
          v20 = v17;
          v17 = v14;
          goto LABEL_55;
        }

        v106 = v23;

        v109 = 0;
        v25 = [self _deserializeValue:&v109 forKey:@"finderTags" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v114];
        v26 = v109;
        v27 = v26;
        if ((v25 & 1) == 0)
        {
          if (dictionary)
          {
            [dictionary setObject:v114 forKeyedSubscript:@"finderTags"];
          }

          else if (a5)
          {
            *a5 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v114}];
          }

          v46 = brc_bread_crumbs();
          v47 = brc_default_log();
          if (os_log_type_enabled(v47, 0x90u))
          {
            [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
          }

          v32 = 0;
          v20 = v14;
          goto LABEL_54;
        }

        v20 = v26;

        if ([dictionary count])
        {
          v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFACB0] code:1001 userInfo:dictionary];
          if (v28)
          {
            v29 = brc_bread_crumbs();
            v30 = brc_default_log();
            if (os_log_type_enabled(v30, 0x90u))
            {
              v86 = "(passed to caller)";
              *buf = 136315906;
              v116 = "[CKRecord(BRCSerializationAdditions) deserializeAliasInfo:serverZone:error:]";
              v117 = 2080;
              if (!a5)
              {
                v86 = "(ignored by caller)";
              }

              v118 = v86;
              v119 = 2112;
              v120 = v28;
              v121 = 2112;
              v122 = v29;
              _os_log_error_impl(&dword_223E7A000, v30, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
            }
          }

          if (a5)
          {
            v31 = v28;
            *a5 = v28;
          }

          v32 = 0;
LABEL_54:
          v17 = v106;
LABEL_55:
          v14 = v21;
          goto LABEL_38;
        }

        v101 = v21;
        obja = [v14 recordID];
        zoneID = [obja zoneID];
        recordID = [self recordID];
        zoneID2 = [recordID zoneID];
        v97 = [zoneID isEqual:zoneID2];

        if ((v97 & 1) == 0)
        {
          v48 = brc_bread_crumbs();
          v49 = brc_default_log();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
          {
            recordID2 = [v14 recordID];
            zoneID3 = [recordID2 zoneID];
            recordID3 = [self recordID];
            [recordID3 zoneID];
            v88 = objb = v48;
            *buf = 138412802;
            v116 = zoneID3;
            v117 = 2112;
            v118 = v88;
            v119 = 2112;
            v120 = objb;
            _os_log_fault_impl(&dword_223E7A000, v49, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Aliases parent ref zoneID %@ must be equal to aliases zoneID %@!%@", buf, 0x20u);

            v48 = objb;
          }

          v50 = MEMORY[0x277CCA9B8];
          v99 = *MEMORY[0x277CFACB0];
          objc = [self recordID];
          zoneID4 = [objc zoneID];
          recordID4 = [v14 recordID];
          zoneID5 = [recordID4 zoneID];
          v54 = [v50 br_errorWithDomain:v99 code:1005 description:{@"Records zoneID %@ must be equal to parents zoneID %@", zoneID4, zoneID5}];

          v55 = v54;
          if (v54)
          {
            v56 = brc_bread_crumbs();
            v57 = brc_default_log();
            if (os_log_type_enabled(v57, 0x90u))
            {
              v89 = "(passed to caller)";
              *buf = 136315906;
              v116 = "[CKRecord(BRCSerializationAdditions) deserializeAliasInfo:serverZone:error:]";
              v117 = 2080;
              if (!a5)
              {
                v89 = "(ignored by caller)";
              }

              v118 = v89;
              v119 = 2112;
              v120 = v55;
              v121 = 2112;
              v122 = v56;
              _os_log_error_impl(&dword_223E7A000, v57, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
            }
          }

          if (a5)
          {
            v58 = v55;
            *a5 = v55;
          }

          v32 = 0;
          v17 = v106;
          goto LABEL_86;
        }

        obj = objc_opt_new();
        [obj setType:3];
        recordID5 = [v17 recordID];
        zoneID6 = [recordID5 zoneID];

        recordID6 = [v17 recordID];
        recordName = [recordID6 recordName];

        v95 = zoneID6;
        v44 = [objc_alloc(MEMORY[0x277CFAE60]) initWithRecordZoneID:zoneID6];
        v92 = v44;
        if ([v44 isPrivate])
        {
          v45 = [session getOrReserveLibraryRowIDForLibrary:v44];
        }

        else
        {
          v45 = 0;
        }

        recordID7 = [v17 recordID];
        zoneAppRetriever = [session zoneAppRetriever];
        v91 = v45;
        v61 = [recordID7 brc_itemIDOfTargetWithLibraryRowID:v45 zoneAppRetriever:zoneAppRetriever];

        v93 = v61;
        if ([recordName hasPrefix:@"documentContent/"])
        {
          v90 = MEMORY[0x277CCACA8];
          zoneName = [v95 zoneName];
          ownerName = [v95 ownerName];
          v64 = v61;
          itemIDString = ownerName;
          v66 = v64;
        }

        else
        {
          if ([recordName hasPrefix:@"documentStructure/"])
          {
            v71 = MEMORY[0x277CCACA8];
            zoneName2 = [v95 zoneName];
            itemIDString = [v61 itemIDString];
            v72 = [v71 stringWithFormat:@"%@/%@", zoneName2, itemIDString];
            v73 = obj[8];
            obj[8] = v72;

            goto LABEL_74;
          }

          if (![recordName hasPrefix:@"directory/"])
          {
            zoneName2 = brc_bread_crumbs();
            itemIDString = brc_default_log();
            if (os_log_type_enabled(itemIDString, OS_LOG_TYPE_FAULT))
            {
              [CKRecord(BRCSerializationAdditions) deserializeAliasInfo:serverZone:error:];
            }

            goto LABEL_74;
          }

          v90 = MEMORY[0x277CCACA8];
          zoneName = [v95 zoneName];
          itemIDString = [v95 ownerName];
          v66 = v93;
        }

        itemIDString2 = [v66 itemIDString];
        v68 = [v90 stringWithFormat:@"%@:%@/%@", zoneName, itemIDString, itemIDString2];
        v69 = obj[8];
        obj[8] = v68;

        zoneName2 = zoneName;
LABEL_74:

        recordID8 = [v14 recordID];
        zoneAppRetriever2 = [session zoneAppRetriever];
        v76 = [recordID8 brc_itemIDWithZoneAppRetriever:zoneAppRetriever2];
        [obj setParentID:v76];

        v77 = [[BRFieldCKInfo alloc] initWithRecord:self];
        [obj setCkInfo:v77];

        v78 = v106;
        [obj setLastUsedTime:{-[NSObject longLongValue](v106, "longLongValue")}];
        [obj setFavoriteRank:{-[NSObject longLongValue](v101, "longLongValue")}];
        if ([v20 length])
        {
          v79 = v20;
        }

        else
        {
          v79 = 0;
        }

        [obj setFinderTags:v79];
        encryptedValues = [self encryptedValues];
        v81 = [encryptedValues objectForKeyedSubscript:@"encryptedBasename"];

        if (v81)
        {
          v107 = 0;
          v108 = 0;
          v82 = [self deserializeFilename:&v108 basename:0 bounceno:0 extension:0 userInfo:dictionary error:&v107];
          v83 = v107;
          if ((v82 & 1) == 0)
          {
            v84 = brc_bread_crumbs();
            v85 = brc_default_log();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v116 = v83;
              v117 = 2112;
              v118 = v84;
              _os_log_impl(&dword_223E7A000, v85, OS_LOG_TYPE_DEFAULT, "[WARNING] can't deserialize filename: %@%@", buf, 0x16u);
            }

            v78 = v106;
          }

          [obj setLogicalName:v108];
        }

        if (a3)
        {
          objc_storeStrong(a3, obj);
        }

        v32 = 1;
        v17 = v78;
LABEL_86:
        v14 = v101;
        goto LABEL_38;
      }

      if (dictionary)
      {
        [dictionary setObject:v114 forKeyedSubscript:@"favoriteRank"];
      }

      else if (a5)
      {
        *a5 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v114}];
      }

      v33 = brc_bread_crumbs();
      v34 = brc_default_log();
      if (os_log_type_enabled(v34, 0x90u))
      {
        [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
      }
    }

    else
    {
      if (dictionary)
      {
        [dictionary setObject:v114 forKeyedSubscript:@"target"];
      }

      else if (a5)
      {
        *a5 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v114}];
      }

      v20 = brc_bread_crumbs();
      v33 = brc_default_log();
      if (os_log_type_enabled(v33, 0x90u))
      {
        [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
      }
    }
  }

  else
  {
    if (dictionary)
    {
      [dictionary setObject:v114 forKeyedSubscript:@"parent"];
    }

    else if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v114}];
    }

    v17 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }
  }

  v32 = 0;
LABEL_38:

  v35 = *MEMORY[0x277D85DE8];
  return v32;
}

- (void)_deserializeRootSharingOptions:()BRCSerializationAdditions
{
  share = [self share];

  if (!share)
  {
    v11 = 0;
    if (!a3)
    {
      return;
    }

    goto LABEL_8;
  }

  encryptedPublicSharingKey = [self encryptedPublicSharingKey];
  if (!encryptedPublicSharingKey || (v7 = encryptedPublicSharingKey, [self routingKey], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [CKRecord(BRCSerializationAdditions) _deserializeRootSharingOptions:];
    }
  }

  v11 = 4;
  if (a3)
  {
LABEL_8:
    *a3 = v11;
  }
}

- (BOOL)deserializeiWorkSharingOptions:()BRCSerializationAdditions error:
{
  v25 = 0;
  v26 = 0;
  [self _deserializeRootSharingOptions:&v25];
  dictionary = 0;
  if (!a3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v24 = 0;
  v8 = *MEMORY[0x277CBC148];
  v9 = [self _deserializeValue:&v24 forKey:*MEMORY[0x277CBC148] encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v26];
  v10 = v24;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    if (dictionary)
    {
      [dictionary setObject:v26 forKeyedSubscript:v8];
    }

    else if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v26}];
    }

    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

    v11 = 0;
    goto LABEL_19;
  }

  if ([v10 BOOLValue])
  {
    v25 |= 1uLL;
    v23 = 0;
    v12 = *MEMORY[0x277CBC140];
    v13 = [self _deserializeValue:&v23 forKey:*MEMORY[0x277CBC140] encrypted:0 expectClass:objc_opt_class() allowNil:0 errorDescription:&v26];
    v14 = v23;
    v15 = v14;
    if (v13)
    {
      if ([v14 BOOLValue])
      {
        v25 |= 2uLL;
      }

      goto LABEL_11;
    }

    if (dictionary)
    {
      [dictionary setObject:v26 forKeyedSubscript:v12];
    }

    else if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v26}];
    }

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

LABEL_19:
    v15 = 0;
    v17 = 0;
    goto LABEL_20;
  }

  v15 = 0;
LABEL_11:
  v16 = [dictionary count];
  v17 = v16 == 0;
  if (a3 && !v16)
  {
    *a3 = v25;
    v17 = 1;
  }

LABEL_20:

  return v17;
}

- (uint64_t)deserializeStatInfo:()BRCSerializationAdditions serverMetrics:itemID:session:error:
{
  v257 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v226 = a6;
  serverDB = [v226 serverDB];
  [serverDB assertOnQueue];

  dictionary = 0;
  v248 = 0;
  if (!a3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v230 = dictionary;
  recordID = [self recordID];
  zoneID = [recordID zoneID];
  ownerName = [zoneID ownerName];
  v17 = *MEMORY[0x277CBBF28];
  v18 = [ownerName isEqualToString:*MEMORY[0x277CBBF28]];

  v19 = v230;
  v247 = 0;
  recordID2 = [self recordID];
  recordName = [recordID2 recordName];
  v22 = [recordName hasPrefix:@"directory/"];

  v220 = v22;
  v227 = v11;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v24 = a7;
    recordID3 = [self recordID];
    recordName2 = [recordID3 recordName];
    v27 = [recordName2 hasPrefix:@"documentStructure/"];

    if (v27)
    {
      v23 = 1;
    }

    else
    {
      recordID4 = [self recordID];
      recordName3 = [recordID4 recordName];
      v30 = [recordName3 hasPrefix:@"finderBookmark/"];

      if (v30)
      {
        v23 = 6;
      }

      else
      {
        recordID5 = [self recordID];
        recordName4 = [recordID5 recordName];
        v33 = [recordName4 hasPrefix:@"symlink/"];

        if ((v33 & 1) == 0)
        {
          v79 = MEMORY[0x277CCACA8];
          recordID6 = [self recordID];
          recordType = [self recordType];
          v82 = [v79 stringWithFormat:@"invalid record type for record %@: %@", recordID6, recordType];
          v248 = v82;

          if (v230)
          {
            [v230 setObject:v82 forKeyedSubscript:@"recordType"];
          }

          else if (v24)
          {
            *v24 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v82}];
          }

          obj = brc_bread_crumbs();
          v84 = brc_default_log();
          if (os_log_type_enabled(v84, 0x90u))
          {
            [CKRecord(BRCSerializationAdditions) deserializeStatInfo:serverMetrics:itemID:session:error:];
          }

          v228 = 0;
          v229 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v225 = 0;
          v51 = 0;
          goto LABEL_50;
        }

        v23 = 5;
      }
    }

    a7 = v24;
    v19 = v230;
  }

  if ([v11 isDocumentsFolder])
  {
    v247 = *MEMORY[0x277CFAD50];
  }

  else
  {
    [self deserializeFilename:&v247 basename:0 bounceno:0 extension:0 userInfo:v19 error:a7];
  }

  v246 = 0;
  v34 = [self _deserializeValue:&v246 forKey:@"parent" encrypted:0 expectClass:objc_opt_class() allowNil:v18 ^ 1u errorDescription:&v248];
  v218 = v246;
  if ((v34 & 1) == 0)
  {
    if (v19)
    {
      [v19 setObject:v248 forKeyedSubscript:@"parent"];
      v50 = v218;
    }

    else
    {
      v50 = v218;
      if (a7)
      {
        *a7 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v248}];
      }
    }

    v52 = brc_bread_crumbs();
    v53 = brc_default_log();
    if (os_log_type_enabled(v53, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

    v228 = 0;
    v229 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v225 = 0;
    v45 = 0;
    v57 = 0;
    v58 = 0;
    v219 = 0;
    v59 = 0;
    v60 = 0;
    v221 = 0;
    v61 = v50;
    v51 = 0;
    goto LABEL_34;
  }

  v245 = 0;
  v35 = [self _deserializeValue:&v245 forKey:@"exactBirthtime" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v248];
  v36 = v245;
  if ((v35 & 1) == 0)
  {
    obj = v36;
    if (v19)
    {
      [v19 setObject:v248 forKeyedSubscript:@"exactBirthtime"];
      v51 = v218;
    }

    else
    {
      v51 = v218;
      if (a7)
      {
        *a7 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v248}];
      }
    }

    v75 = brc_bread_crumbs();
    v76 = brc_default_log();
    if (os_log_type_enabled(v76, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

    goto LABEL_49;
  }

  v37 = v36;
  if (v36)
  {
    goto LABEL_20;
  }

  v244 = 0;
  v38 = [self _deserializeValue:&v244 forKey:@"birthtime" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v248];
  v39 = v244;
  if ((v38 & 1) == 0)
  {
    obj = v39;
    if (v19)
    {
      [v19 setObject:v248 forKeyedSubscript:@"birthtime"];
      v51 = v218;
    }

    else
    {
      v51 = v218;
      if (a7)
      {
        *a7 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v248}];
      }
    }

    v75 = brc_bread_crumbs();
    v76 = brc_default_log();
    if (os_log_type_enabled(v76, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

LABEL_49:

    v228 = 0;
    v229 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v225 = 0;
LABEL_50:
    v45 = 0;
    v57 = 0;
    v58 = 0;
    v219 = 0;
    v59 = 0;
    v60 = 0;
    v221 = 0;
    v62 = v227;
LABEL_51:
    v61 = obj;
    goto LABEL_52;
  }

  v37 = v39;
LABEL_20:
  v214 = a7;
  v215 = v37;
  recordID7 = [self recordID];
  zoneID2 = [recordID7 zoneID];
  ownerName2 = [zoneID2 ownerName];
  v43 = [ownerName2 isEqualToString:v17];

  if (!v43)
  {
    v211 = 0;
    v45 = 0;
    v47 = 0;
    goto LABEL_36;
  }

  v243 = 0;
  v44 = [self _deserializeValue:&v243 forKey:@"lastOpenTime" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v248];
  v45 = v243;
  if ((v44 & 1) == 0)
  {
    if (v19)
    {
      [v19 setObject:v248 forKeyedSubscript:@"lastOpenTime"];
      v51 = v218;
    }

    else
    {
      v51 = v218;
      if (v214)
      {
        *v214 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v248}];
      }
    }

    v87 = brc_bread_crumbs();
    v88 = brc_default_log();
    if (os_log_type_enabled(v88, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

    v228 = 0;
    v229 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v225 = 0;
    v57 = 0;
    v58 = 0;
    v219 = 0;
    v59 = 0;
    v221 = 0;
    v61 = v45;
    v45 = 0;
    goto LABEL_98;
  }

  v242 = 0;
  v46 = [self _deserializeValue:&v242 forKey:@"favoriteRank" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v248];
  v47 = v242;
  if ((v46 & 1) == 0)
  {
    if (v19)
    {
      [v19 setObject:v248 forKeyedSubscript:@"favoriteRank"];
      v51 = v218;
    }

    else
    {
      v51 = v218;
      if (v214)
      {
        *v214 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v248}];
      }
    }

    v91 = brc_bread_crumbs();
    v92 = brc_default_log();
    if (os_log_type_enabled(v92, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

    v228 = 0;
    v229 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v225 = 0;
    v58 = 0;
    v219 = 0;
    v59 = 0;
    v221 = 0;
    v61 = v47;
    v57 = 0;
LABEL_98:
    v62 = v227;
    v60 = v215;
    goto LABEL_52;
  }

  v241 = 0;
  v48 = [self _deserializeValue:&v241 forKey:@"finderTags" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v248];
  v49 = v241;
  if ((v48 & 1) == 0)
  {
    obj = v49;
    v213 = v47;
    if (v19)
    {
      [v19 setObject:v248 forKeyedSubscript:@"finderTags"];
      v51 = v218;
    }

    else
    {
      v51 = v218;
      if (v214)
      {
        *v214 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v248}];
      }
    }

    v95 = brc_bread_crumbs();
    v96 = brc_default_log();
    if (os_log_type_enabled(v96, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

    v228 = 0;
    v229 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v225 = 0;
    v58 = 0;
    v219 = 0;
    v59 = 0;
    v221 = 0;
    v62 = v227;
    v60 = v215;
    v57 = v213;
    goto LABEL_51;
  }

  v211 = v49;
LABEL_36:
  v240 = 0;
  v63 = [self _deserializeValue:&v240 forKey:@"hiddenExt" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v248];
  v64 = v240;
  v212 = v47;
  if ((v63 & 1) == 0)
  {
    v83 = v64;
    if (v19)
    {
      [v19 setObject:v248 forKeyedSubscript:@"hiddenExt"];
      v51 = v218;
    }

    else
    {
      v51 = v218;
      if (v214)
      {
        *v214 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v248}];
      }
    }

    v85 = brc_bread_crumbs();
    v86 = brc_default_log();
    if (os_log_type_enabled(v86, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

    v228 = 0;
    v229 = 0;
    v54 = 0;
    v55 = 0;
    v225 = 0;
    v58 = 0;
    v219 = 0;
    v221 = 0;
    v61 = v83;
    v59 = 0;
    v62 = v227;
    v60 = v215;
    v56 = v211;
    v57 = v212;
    goto LABEL_52;
  }

  v65 = v23;
  v210 = v64;
  v239 = 0;
  v66 = [self _deserializeValue:&v239 forKey:@"xattr" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v248];
  v67 = v239;
  if ((v66 & 1) == 0)
  {
    if (v19)
    {
      [v19 setObject:v248 forKeyedSubscript:@"xattr"];
      v51 = v218;
    }

    else
    {
      v51 = v218;
      if (v214)
      {
        *v214 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v248}];
      }
    }

    v89 = brc_bread_crumbs();
    v90 = brc_default_log();
    if (os_log_type_enabled(v90, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

    v228 = 0;
    v229 = 0;
    v55 = 0;
    v225 = 0;
    v58 = 0;
    v219 = 0;
    v221 = 0;
    v61 = v67;
    v54 = 0;
    v62 = v227;
    v60 = v215;
    v56 = v211;
    v57 = v212;
    v59 = v210;
    goto LABEL_52;
  }

  v238 = 0;
  v68 = [self _deserializeValue:&v238 forKey:@"xattrSignature" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v248];
  v207 = v67;
  v208 = v238;
  if ((v68 & 1) == 0)
  {
    if (v19)
    {
      [v19 setObject:v248 forKeyedSubscript:@"xattrSignature"];
      v51 = v218;
    }

    else
    {
      v51 = v218;
      if (v214)
      {
        *v214 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v248}];
      }
    }

    v93 = brc_bread_crumbs();
    v94 = brc_default_log();
    if (os_log_type_enabled(v94, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

    v228 = 0;
    v229 = 0;
    v225 = 0;
    v58 = 0;
    v219 = 0;
    v221 = 0;
    v61 = v208;
    v55 = 0;
    goto LABEL_125;
  }

  v237 = 0;
  v69 = [self _deserializeValue:&v237 forKey:@"restorePath" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v248];
  v229 = v237;
  if ((v69 & 1) == 0)
  {
    if (v19)
    {
      [v19 setObject:v248 forKeyedSubscript:@"restorePath"];
      v51 = v218;
    }

    else
    {
      v51 = v218;
      if (v214)
      {
        *v214 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v248}];
      }
    }

    v55 = v208;
    v98 = brc_bread_crumbs();
    v99 = brc_default_log();
    if (os_log_type_enabled(v99, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

    v225 = 0;
    v58 = 0;
    v219 = 0;
    v221 = 0;
    v61 = v229;
    v228 = 0;
    v229 = 0;
    goto LABEL_125;
  }

  v236 = 0;
  v70 = [self _deserializeValue:&v236 forKey:@"restoreParent" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v248];
  v71 = v236;
  if ((v70 & 1) == 0)
  {
    v97 = v71;
    if (v19)
    {
      [v19 setObject:v248 forKeyedSubscript:@"restoreParent"];
      v51 = v218;
    }

    else
    {
      v51 = v218;
      if (v214)
      {
        *v214 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v248}];
      }
    }

    v55 = v208;
    v100 = brc_bread_crumbs();
    v101 = brc_default_log();
    if (os_log_type_enabled(v101, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

    v228 = 0;
    v58 = 0;
    v219 = 0;
    v221 = 0;
    v61 = v97;
    v225 = 0;
LABEL_125:
    v62 = v227;
LABEL_126:
    v60 = v215;
    v56 = v211;
    v57 = v212;
    v59 = v210;
    v54 = v207;
    goto LABEL_52;
  }

  v225 = v71;
  v235 = 0;
  v72 = [self _deserializeValue:&v235 forKey:@"countMetrics" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v248];
  v228 = v235;
  if ((v72 & 1) == 0)
  {
    v62 = v227;
    if (v19)
    {
      [v19 setObject:v248 forKeyedSubscript:@"countMetrics"];
      v51 = v218;
    }

    else
    {
      v51 = v218;
      if (v214)
      {
        *v214 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v248}];
      }
    }

    v55 = v208;
    v102 = brc_bread_crumbs();
    v103 = brc_default_log();
    if (os_log_type_enabled(v103, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

    v58 = 0;
    v219 = 0;
    v221 = 0;
    v61 = v228;
    v228 = 0;
    goto LABEL_126;
  }

  signature = v208;
  if (v208)
  {
    v74 = 0x277CCA000uLL;
  }

  else
  {
    v74 = 0x277CCA000;
    if (v67)
    {
      signature = [v67 signature];
    }
  }

  v209 = signature;
  v206 = v65;
  if (!v215)
  {
    v104 = brc_bread_crumbs();
    v105 = brc_default_log();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_FAULT))
    {
      [CKRecord(BRCSerializationAdditions) deserializeStatInfo:serverMetrics:itemID:session:error:];
    }

    goto LABEL_139;
  }

  if (BRCIsBusyDate([v215 longLongValue]))
  {
    v104 = brc_bread_crumbs();
    v105 = brc_default_log();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v250 = v227;
      v251 = 2112;
      v252 = v104;
      _os_log_impl(&dword_223E7A000, v105, OS_LOG_TYPE_DEFAULT, "[WARNING] Ignoring Finder busy date on %@%@", buf, 0x16u);
    }

LABEL_139:

    v106 = *(v74 + 2992);
    creationDate = [self creationDate];
    [creationDate timeIntervalSince1970];
    if (!v108)
    {
      time(0);
    }

    v109 = [v106 numberWithUnsignedLongLong:?];

    v215 = v109;
  }

  if (v220)
  {
    v110 = 0;
    v111 = 0;
    goto LABEL_144;
  }

  v234 = 0;
  v118 = *(v74 + 2992);
  v119 = [self _deserializeValue:&v234 forKey:@"writable" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v248];
  v120 = v234;
  v121 = v74;
  v111 = v120;
  if (v119)
  {
    v233 = 0;
    v122 = *(v121 + 2992);
    v123 = [self _deserializeValue:&v233 forKey:@"executable" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v248];
    v124 = v233;
    if ((v123 & 1) == 0)
    {
      obj = v124;
      if (v19)
      {
        v132 = v19;
        v57 = v47;
        v62 = v227;
        [v132 setObject:v248 forKeyedSubscript:@"executable"];
        v51 = v218;
      }

      else
      {
        v57 = v47;
        v62 = v227;
        v51 = v218;
        if (v214)
        {
          *v214 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v248}];
        }
      }

      v219 = v111;
      v185 = brc_bread_crumbs();
      v186 = brc_default_log();
      if (os_log_type_enabled(v186, 0x90u))
      {
        [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
      }

      v58 = 0;
      v221 = 0;
      v60 = v215;
      goto LABEL_225;
    }

    v110 = v124;
LABEL_144:
    v112 = [v19 count];
    v113 = v19;
    v114 = v211;
    v219 = v111;
    if (v112)
    {
      v61 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFACB0] code:1001 userInfo:v113];
      if (v61)
      {
        v115 = v61;
        v116 = brc_bread_crumbs();
        v117 = brc_default_log();
        if (os_log_type_enabled(v117, 0x90u))
        {
          v198 = "(passed to caller)";
          *buf = 136315906;
          v250 = "[CKRecord(BRCSerializationAdditions) deserializeStatInfo:serverMetrics:itemID:session:error:]";
          v251 = 2080;
          if (!v214)
          {
            v198 = "(ignored by caller)";
          }

          v252 = v198;
          v253 = 2112;
          v254 = v115;
          v255 = 2112;
          v256 = v116;
          _os_log_error_impl(&dword_223E7A000, v117, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }

        v61 = v115;
      }

      v58 = v110;
      v57 = v47;
      if (v214)
      {
        v61 = v61;
        v221 = 0;
        *v214 = v61;
LABEL_174:
        v51 = v218;
        v60 = v215;
        v59 = v210;
        v56 = v211;
        v54 = v207;
        v55 = v209;
LABEL_34:
        v62 = v227;
        goto LABEL_52;
      }

      goto LABEL_173;
    }

    v205 = v110;
    if (v218)
    {
      recordID8 = [v218 recordID];
      [recordID8 zoneID];
      v128 = v127 = v111;
      recordID9 = [self recordID];
      zoneID3 = [recordID9 zoneID];
      v222 = [v128 isEqual:zoneID3];

      v111 = v127;
      v114 = v211;
      v110 = v205;

      if ((v222 & 1) == 0)
      {
        v136 = brc_bread_crumbs();
        v137 = brc_default_log();
        if (os_log_type_enabled(v137, OS_LOG_TYPE_FAULT))
        {
          recordType2 = [self recordType];
          recordID10 = [v218 recordID];
          zoneID4 = [recordID10 zoneID];
          recordID11 = [self recordID];
          zoneID5 = [recordID11 zoneID];
          *buf = 138413058;
          v250 = recordType2;
          v251 = 2112;
          v252 = zoneID4;
          v253 = 2112;
          v254 = zoneID5;
          v255 = 2112;
          v256 = v136;
          _os_log_fault_impl(&dword_223E7A000, v137, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %@ parent ref zoneID %@ must be equal to record's zoneID %@!%@", buf, 0x2Au);
        }

        v138 = MEMORY[0x277CCA9B8];
        v139 = *MEMORY[0x277CFACB0];
        recordID12 = [self recordID];
        zoneID6 = [recordID12 zoneID];
        recordID13 = [v218 recordID];
        zoneID7 = [recordID13 zoneID];
        v144 = [v138 br_errorWithDomain:v139 code:1005 description:{@"Records zoneID %@ must be equal to parents zoneID %@", zoneID6, zoneID7}];

        if (v144)
        {
          v145 = brc_bread_crumbs();
          v146 = brc_default_log();
          if (os_log_type_enabled(v146, 0x90u))
          {
            v203 = "(passed to caller)";
            *buf = 136315906;
            v250 = "[CKRecord(BRCSerializationAdditions) deserializeStatInfo:serverMetrics:itemID:session:error:]";
            v251 = 2080;
            if (!v214)
            {
              v203 = "(ignored by caller)";
            }

            v252 = v203;
            v253 = 2112;
            v254 = v144;
            v255 = 2112;
            v256 = v145;
            _os_log_error_impl(&dword_223E7A000, v146, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        v58 = v205;
        v57 = v47;
        v61 = v144;
        if (v214)
        {
          v147 = v144;
          v61 = v144;
          v221 = 0;
          *v214 = v144;
          goto LABEL_174;
        }

LABEL_173:
        v221 = 0;
        goto LABEL_174;
      }
    }

    obj = objc_opt_new();
    [obj setType:v206];
    if ((v206 | 4) == 4)
    {
      v131 = 3;
    }

    else
    {
      bOOLValue = [v111 BOOLValue];
      if ([v110 BOOLValue])
      {
        v149 = 2;
      }

      else
      {
        v149 = 0;
      }

      v131 = v149 | bOOLValue;
    }

    [obj setMode:v131];
    [obj setLogicalName:v247];
    v204 = a3;
    if (v218)
    {
      if ([v227 isDocumentsFolder])
      {
        v150 = [BRCItemID alloc];
        appLibraryRowID = [v227 appLibraryRowID];
        zoneAppRetriever = [(BRCItemID *)v150 _initAsLibraryRootWithAppLibraryRowID:appLibraryRowID];
        v153 = obj;
        [obj setParentID:zoneAppRetriever];
      }

      else
      {
        appLibraryRowID = [v218 recordID];
        zoneAppRetriever = [v226 zoneAppRetriever];
        v160 = [appLibraryRowID brc_itemIDWithZoneAppRetriever:zoneAppRetriever];
        v153 = obj;
        [obj setParentID:v160];
      }
    }

    else
    {
      v154 = objc_alloc(MEMORY[0x277CFAE60]);
      recordID14 = [self recordID];
      zoneID8 = [recordID14 zoneID];
      appLibraryRowID = [v154 initWithRecordZoneID:zoneID8];

      zoneAppRetriever = [v226 sharedClientZoneByMangledID:appLibraryRowID];
      v157 = [BRCItemID alloc];
      dbRowID = [zoneAppRetriever dbRowID];
      v159 = [(BRCItemID *)v157 _initAsZoneRootWithZoneRowID:dbRowID];
      v153 = obj;
      [obj setParentID:v159];
    }

    [v153 setBirthtime:{objc_msgSend(v215, "longLongValue")}];
    [v153 setLastUsedTime:{objc_msgSend(v45, "longLongValue")}];
    [v153 setFavoriteRank:{objc_msgSend(v47, "longLongValue")}];
    [v153 setHiddenExt:{objc_msgSend(v210, "BOOLValue")}];
    if ([v114 length])
    {
      [v153 setFinderTags:v114];
      v161 = v207;
    }

    else
    {
      v232 = 0;
      v162 = [self _deserializeValue:&v232 forKey:@"ftags" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v248];
      v163 = v232;
      recordName5 = v163;
      if ((v162 & 1) == 0)
      {
        if (v230)
        {
          [v230 setObject:v248 forKeyedSubscript:@"ftags"];
        }

        else if (v214)
        {
          *v214 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v248}];
        }

        v180 = brc_bread_crumbs();
        v197 = brc_default_log();
        v221 = 0;
        if (os_log_type_enabled(v197, 0x90u))
        {
          [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
          v221 = 0;
        }

        v62 = v227;
        v58 = v205;
        goto LABEL_224;
      }

      if ([v163 length])
      {
        [obj setFinderTags:recordName5];
      }

      v161 = v207;
      v153 = obj;
    }

    v165 = [[BRFieldCKInfo alloc] initWithRecord:self];
    [v153 setCkInfo:v165];

    [v153 setXattrSignature:v209];
    fileURL = [v161 fileURL];

    if (fileURL)
    {
      xattrStager = [v226 xattrStager];
      fileURL2 = [v161 fileURL];
      [xattrStager saveXattrAtURL:fileURL2 forSignature:v209 error:0];
    }

    if ([v229 length])
    {
      v169 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v229 encoding:4];
      v170 = obj;
      [obj setTrashPutBackPath:v169];
    }

    else
    {
      v170 = obj;
      [obj setTrashPutBackPath:0];
    }

    recordID15 = [v225 recordID];
    zoneAppRetriever2 = [v226 zoneAppRetriever];
    v173 = [recordID15 brc_itemIDWithZoneAppRetriever:zoneAppRetriever2];
    [v170 setTrashPutBackParentID:v173];

    creatorUserRecordID = [self creatorUserRecordID];
    recordName5 = [creatorUserRecordID recordName];

    cachedCurrentUserRecordName = [v226 cachedCurrentUserRecordName];
    v231 = 0;
    v176 = [self brc_lastModifiedUserRecordNameWithCurrentUserRecordName:cachedCurrentUserRecordName personNameComponents:&v231];
    v177 = v231;

    if (([v176 isEqualToString:recordName5]& 1) == 0)
    {

      v177 = 0;
    }

    serverReadWriteDatabaseFacade = [v226 serverReadWriteDatabaseFacade];
    v179 = [serverReadWriteDatabaseFacade getOrCreateUserKeyForOwnerName:recordName5];
    [obj setCreatorRowID:v179];

    v180 = v177;
    if (!v177)
    {
LABEL_215:
      v191 = objc_alloc_init(MEMORY[0x277CFAEC0]);
      if ([v228 count] >= 4)
      {
        v192 = [v228 objectAtIndexedSubscript:0];
        [v191 setQuotaUsed:v192];

        v193 = [v228 objectAtIndexedSubscript:1];
        [v191 setRecursiveChildCount:v193];

        v194 = [v228 objectAtIndexedSubscript:2];
        [v191 setSharedByMeRecursiveCount:v194];

        v195 = [v228 objectAtIndexedSubscript:3];
        [v191 setSharedAliasRecursiveCount:v195];
      }

      if ([v228 count] >= 5)
      {
        v196 = [v228 objectAtIndexedSubscript:4];
        [v191 setChildCount:v196];
      }

      v62 = v227;
      if (v204)
      {
        objc_storeStrong(v204, obj);
      }

      v197 = v176;
      if (a4)
      {
        objc_storeStrong(a4, v191);
      }

      v58 = v205;

      v221 = 1;
LABEL_224:

      v51 = v218;
      v60 = v215;
      v57 = v212;
LABEL_225:
      v59 = v210;
      v56 = v211;
      v54 = v207;
      v55 = v209;
      goto LABEL_51;
    }

    serverReadWriteDatabaseFacade2 = [v226 serverReadWriteDatabaseFacade];
    v182 = [serverReadWriteDatabaseFacade2 userIdentityForName:recordName5];
    v183 = v182;
    if (v182)
    {
      v184 = v182;
    }

    else
    {
      v184 = objc_alloc_init(BRFieldUserIdentity);
    }

    v187 = v184;

    nameComponents = [(BRFieldUserIdentity *)v187 nameComponents];
    if (nameComponents)
    {
      serverDB2 = nameComponents;
      nameComponents2 = [(BRFieldUserIdentity *)v187 nameComponents];
      if (([nameComponents2 br_shouldOverwriteExistingName] & 1) == 0)
      {

        goto LABEL_213;
      }

      br_shouldOverwriteExistingName = [v180 br_shouldOverwriteExistingName];

      if (br_shouldOverwriteExistingName)
      {
LABEL_214:

        goto LABEL_215;
      }
    }

    [(BRFieldUserIdentity *)v187 setNameComponents:v180];
    serverDB2 = [v226 serverDB];
    [serverDB2 execute:{@"UPDATE users SET user_plist = %@ WHERE user_name = %@", v187, recordName5}];
LABEL_213:

    goto LABEL_214;
  }

  if (v19)
  {
    v125 = v19;
    v57 = v47;
    v62 = v227;
    [v125 setObject:v248 forKeyedSubscript:@"writable"];
  }

  else
  {
    v57 = v47;
    v62 = v227;
    if (v214)
    {
      *v214 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v248}];
    }
  }

  v133 = v111;
  v134 = brc_bread_crumbs();
  v135 = brc_default_log();
  if (os_log_type_enabled(v135, 0x90u))
  {
    [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
  }

  v58 = 0;
  v221 = 0;
  v61 = v133;
  v219 = 0;
  v60 = v215;
  v59 = v210;
  v56 = v211;
  v54 = v207;
  v55 = v209;
  v51 = v218;
LABEL_52:

  v77 = *MEMORY[0x277D85DE8];
  return v221;
}

- (uint64_t)deserializeSymlinkTarget:()BRCSerializationAdditions error:
{
  v16 = 0;
  v17 = 0;
  v6 = [self _deserializeValue:&v16 forKey:@"targetPath" encrypted:1 expectClass:objc_opt_class() allowNil:0 errorDescription:&v17];
  v7 = v16;
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v17}];
    }

    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

    v10 = v8;
    v8 = 0;
    goto LABEL_10;
  }

  if (a3)
  {
    if (v7)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = v7;
      v11 = [[v9 alloc] initWithData:v10 encoding:4];
      v12 = *a3;
      *a3 = v11;

      v8 = v10;
    }

    else
    {
      v10 = *a3;
      *a3 = 0;
    }

LABEL_10:
  }

  return v6;
}

- (uint64_t)_deserializeModifiedTime:()BRCSerializationAdditions size:hasExactSize:outOfBandUpload:userInfo:error:
{
  v13 = a7;
  v35 = 0;
  v36 = 0;
  v14 = [self _deserializeValue:&v35 forKey:@"exactSize" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v36];
  v15 = v35;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    if (v13)
    {
      [v13 setObject:v36 forKeyedSubscript:@"exactSize"];
    }

    else if (a8)
    {
      *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v36}];
    }

    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

    goto LABEL_22;
  }

  v17 = v15;
  if (!v15)
  {
    v34 = 0;
    v18 = [self _deserializeValue:&v34 forKey:@"size" encrypted:0 expectClass:objc_opt_class() allowNil:a6 errorDescription:&v36];
    v16 = v34;
    if ((v18 & 1) == 0)
    {
      if (v13)
      {
        [v13 setObject:v36 forKeyedSubscript:@"size"];
      }

      else if (a8)
      {
        *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v36}];
      }

      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, 0x90u))
      {
        [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
      }

LABEL_22:

      v21 = 0;
      v16 = 0;
LABEL_30:
      v25 = 0;
      goto LABEL_31;
    }
  }

  v33 = 0;
  v19 = [self _deserializeValue:&v33 forKey:@"exactMtime" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v36];
  v20 = v33;
  v21 = v20;
  if ((v19 & 1) == 0)
  {
    if (v13)
    {
      [v13 setObject:v36 forKeyedSubscript:@"exactMtime"];
    }

    else if (a8)
    {
      *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v36}];
    }

    v28 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

    goto LABEL_29;
  }

  if (!v20)
  {
    v32 = 0;
    v22 = [self _deserializeValue:&v32 forKey:@"mtime" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v36];
    v21 = v32;
    if ((v22 & 1) == 0)
    {
      if (v13)
      {
        [v13 setObject:v36 forKeyedSubscript:@"mtime"];
      }

      else if (a8)
      {
        *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v36}];
      }

      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, 0x90u))
      {
        [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
      }

LABEL_29:

      v21 = 0;
      goto LABEL_30;
    }
  }

  if (a3)
  {
    v23 = v21;
    *a3 = v21;
  }

  if (a4)
  {
    v24 = v16;
    *a4 = v16;
  }

  if (a5)
  {
    *a5 = v17 != 0;
  }

  v25 = 1;
LABEL_31:

  return v25;
}

- (uint64_t)deserializeVersion:()BRCSerializationAdditions fakeStatInfo:contentBoundaryKey:clientZone:outOfBandUpload:error:
{
  v172 = *MEMORY[0x277D85DE8];
  v14 = a6;
  session = [v14 session];
  dictionary = 0;
  v161 = 0;
  if (!a3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v159 = 0;
  v160 = 0;
  v157 = 0;
  v158 = 0;
  v156 = 0;
  [self deserializeFilename:&v160 basename:&v159 bounceno:&v157 extension:&v158 userInfo:dictionary error:a8];
  v154 = 0;
  v155 = 0;
  v17 = [self _deserializeModifiedTime:&v155 size:&v154 hasExactSize:&v156 outOfBandUpload:a7 userInfo:dictionary error:a8];
  v143 = v155;
  v142 = v154;
  if (v17)
  {
    v139 = session;
    recordID = [self recordID];
    recordName = [recordID recordName];
    v20 = [recordName hasPrefix:@"finderBookmark/"];

    if (v20)
    {
      v153 = 0;
      v21 = [self _deserializeValue:&v153 forKey:@"bookmarkContent" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v161];
      v22 = v153;
      if ((v21 & 1) == 0)
      {
        v138 = v22;
        if (dictionary)
        {
          [dictionary setObject:v161 forKeyedSubscript:@"bookmarkContent"];
          session = v139;
        }

        else
        {
          session = v139;
          if (a8)
          {
            *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v161}];
          }
        }

        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(&v42->super, 0x90u))
        {
          [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
        }

        signature = 0;
        v29 = 0;
        v141 = 0;
        v24 = 0;
        v137 = 0;
        v34 = 0;
        goto LABEL_36;
      }

      v141 = 0;
      v136 = v22;
      v137 = 0;
    }

    else
    {
      v152 = 0;
      v36 = [self _deserializeValue:&v152 forKey:@"fileContent" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v161];
      v136 = v152;
      if ((v36 & 1) == 0)
      {
        if (dictionary)
        {
          [dictionary setObject:v161 forKeyedSubscript:@"fileContent"];
          session = v139;
          v40 = v136;
        }

        else
        {
          session = v139;
          v40 = v136;
          if (a8)
          {
            *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v161}];
          }
        }

        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(&v42->super, 0x90u))
        {
          [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
        }

        signature = 0;
        v29 = 0;
        v141 = 0;
        v24 = 0;
        v137 = 0;
        v138 = v40;
        v35 = 0;
        v34 = 0;
        goto LABEL_75;
      }

      v151 = 0;
      v37 = [self _deserializeValue:&v151 forKey:@"pkgSignature" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v161];
      v141 = v151;
      if ((v37 & 1) == 0)
      {
        if (dictionary)
        {
          [dictionary setObject:v161 forKeyedSubscript:@"pkgSignature"];
          session = v139;
          v34 = v136;
        }

        else
        {
          session = v139;
          v34 = v136;
          if (a8)
          {
            *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v161}];
          }
        }

        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(&v42->super, 0x90u))
        {
          [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
        }

        signature = 0;
        v29 = 0;
        v24 = 0;
        v35 = 0;
        v137 = 0;
        v138 = v141;
        v141 = 0;
        goto LABEL_75;
      }

      v150 = 0;
      v38 = [self _deserializeValue:&v150 forKey:@"thumb1024" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v161];
      v39 = v150;
      if ((v38 & 1) == 0)
      {
        v138 = v39;
        if (dictionary)
        {
          [dictionary setObject:v161 forKeyedSubscript:@"thumb1024"];
          session = v139;
          v34 = v136;
        }

        else
        {
          session = v139;
          v34 = v136;
          if (a8)
          {
            *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v161}];
          }
        }

        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(&v42->super, 0x90u))
        {
          [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
        }

        signature = 0;
        v29 = 0;
        v24 = 0;
        v137 = 0;
        goto LABEL_36;
      }

      v137 = v39;
    }

    v149 = 0;
    v23 = [self _deserializeValue:&v149 forKey:@"xattr" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v161];
    v24 = v149;
    if ((v23 & 1) == 0)
    {
      session = v139;
      if (dictionary)
      {
        [dictionary setObject:v161 forKeyedSubscript:@"xattr"];
        v34 = v136;
      }

      else
      {
        v34 = v136;
        if (a8)
        {
          *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v161}];
        }
      }

      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (os_log_type_enabled(&v42->super, 0x90u))
      {
        [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
      }

      signature = 0;
      v29 = 0;
      v35 = 0;
      v138 = v24;
      v24 = 0;
      goto LABEL_75;
    }

    v135 = a4;
    v148 = 0;
    v25 = [self _deserializeValue:&v148 forKey:@"xattrSignature" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v161];
    v26 = v148;
    signature = v26;
    session = v139;
    if ((v25 & 1) == 0)
    {
      if (dictionary)
      {
        [dictionary setObject:v161 forKeyedSubscript:@"xattrSignature"];
        v34 = v136;
      }

      else
      {
        v34 = v136;
        if (a8)
        {
          *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v161}];
        }
      }

      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (os_log_type_enabled(&v42->super, 0x90u))
      {
        [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
      }

      v29 = 0;
      v35 = 0;
      v138 = signature;
      signature = 0;
      goto LABEL_75;
    }

    if (!v26 && v24)
    {
      signature = [v24 signature];
    }

    v147 = 0;
    v28 = [self _deserializeValue:&v147 forKey:@"boundaryKey" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v161];
    v29 = v147;
    if ((v28 & 1) == 0)
    {
      if (dictionary)
      {
        [dictionary setObject:v161 forKeyedSubscript:@"boundaryKey"];
        session = v139;
        v34 = v136;
      }

      else
      {
        session = v139;
        v34 = v136;
        if (a8)
        {
          *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v161}];
        }
      }

      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (os_log_type_enabled(&v42->super, 0x90u))
      {
        [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
      }

      v35 = 0;
      v138 = v29;
      v29 = 0;
      goto LABEL_75;
    }

    v146 = 0;
    v30 = [self _deserializeValue:&v146 forKey:@"boundaryKeyValidationKey" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v161];
    v138 = v146;
    if ((v30 & 1) == 0)
    {
      if (dictionary)
      {
        [dictionary setObject:v161 forKeyedSubscript:@"boundaryKeyValidationKey"];
        session = v139;
        v34 = v136;
      }

      else
      {
        session = v139;
        v34 = v136;
        if (a8)
        {
          *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v161}];
        }
      }

      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (!os_log_type_enabled(&v42->super, 0x90u))
      {
        goto LABEL_36;
      }

      goto LABEL_159;
    }

    if (v29 && ([v29 brc_truncatedSHA256], v31 = objc_claimAutoreleasedReturnValue(), v126 = objc_msgSend(v31, "isEqualToData:", v138), v31, (v126 & 1) == 0))
    {
      *a5 = [MEMORY[0x277CBEA90] brc_generateBogusKey];
      v127 = brc_bread_crumbs();
      v45 = brc_default_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        [CKRecord(BRCSerializationAdditions) deserializeVersion:fakeStatInfo:contentBoundaryKey:clientZone:outOfBandUpload:error:];
      }

      v128 = objc_alloc(MEMORY[0x277CFAE60]);
      recordID2 = [self recordID];
      zoneID = [recordID2 zoneID];
      v129 = [v128 initWithRecordZoneID:zoneID];

      recordID3 = [self recordID];
      recordName2 = [recordID3 recordName];
      v122 = [AppTelemetryTimeSeriesEvent newEDPKeysMismatchForRecordID:recordName2 mangledID:v129];

      analyticsReporter = [v139 analyticsReporter];
      [analyticsReporter postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v122];
    }

    else if (!a5)
    {
      goto LABEL_86;
    }

    v49 = v29;
    *a5 = v29;
LABEL_86:
    session = v139;
    if (!v143)
    {
      v144 = brc_bread_crumbs();
      v50 = brc_default_log();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
      {
        recordID4 = [self recordID];
        zoneAppRetriever = [v139 zoneAppRetriever];
        v112 = [recordID4 brc_itemIDWithZoneAppRetriever:zoneAppRetriever];
        uTF8String = [v112 UTF8String];
        *buf = 136315394;
        selfCopy = uTF8String;
        v164 = 2112;
        v165 = v144;
        _os_log_fault_impl(&dword_223E7A000, v50, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: The server should have set an mtime for %s%@", buf, 0x16u);

        session = v139;
      }

      v145 = MEMORY[0x277CCABB0];
      modificationDate = [self modificationDate];
      [modificationDate timeIntervalSince1970];
      if (!v52)
      {
        time(0);
      }

      v143 = [v145 numberWithUnsignedLongLong:?];
    }

    v53 = v136;
    if (v136)
    {
      if ((v156 & 1) == 0)
      {
        unsignedLongLongValue = [v142 unsignedLongLongValue];
        if (unsignedLongLongValue == [v136 size])
        {
          v53 = v136;
        }

        else
        {
          v60 = brc_bread_crumbs();
          v61 = brc_default_log();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            recordType = [self recordType];
            recordID5 = [self recordID];
            v118 = v60;
            longLongValue = [v142 longLongValue];
            v63 = [v136 size];
            *buf = 138413314;
            selfCopy = recordType;
            v164 = 2112;
            v165 = recordID5;
            v166 = 2048;
            v167 = longLongValue;
            v60 = v118;
            v168 = 2048;
            v169 = v63;
            v170 = 2112;
            v171 = v118;
            _os_log_impl(&dword_223E7A000, v61, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ record %@ has a size inconsistency, %llu != %llu%@", buf, 0x34u);
          }

          v64 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v136, "size")}];

          v142 = v64;
          v53 = v136;
        }
      }

      if (v141)
      {
        v65 = MEMORY[0x277CCACA8];
        recordType2 = [self recordType];
        recordID6 = [self recordID];
        v68 = [v65 stringWithFormat:@"%@ record %@ is both a file and a package", recordType2, recordID6];
        v69 = v161;
        v161 = v68;

        if (dictionary)
        {
          [dictionary setObject:v161 forKeyedSubscript:@"asset+pkg"];
          v34 = v136;
        }

        else
        {
          v34 = v136;
          if (a8)
          {
            *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v161}];
          }
        }

        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        session = v139;
        if (!os_log_type_enabled(&v42->super, 0x90u))
        {
          goto LABEL_36;
        }

        goto LABEL_159;
      }

      session = v139;
LABEL_106:
      if ([dictionary count])
      {
        v70 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFACB0] code:1001 userInfo:dictionary];
        if (v70)
        {
          v140 = brc_bread_crumbs();
          v71 = brc_default_log();
          if (os_log_type_enabled(v71, 0x90u))
          {
            v114 = "(passed to caller)";
            *buf = 136315906;
            selfCopy = "[CKRecord(BRCSerializationAdditions) deserializeVersion:fakeStatInfo:contentBoundaryKey:clientZone:outOfBandUpload:error:]";
            v164 = 2080;
            if (!a8)
            {
              v114 = "(ignored by caller)";
            }

            v165 = v114;
            v166 = 2112;
            v167 = v70;
            v168 = 2112;
            v169 = v140;
            _os_log_error_impl(&dword_223E7A000, v71, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        if (a8)
        {
          v72 = v70;
          *a8 = v70;
        }

        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(&v42->super, 0x90u))
        {
          *buf = 138412802;
          selfCopy = self;
          v164 = 2112;
          v165 = dictionary;
          v166 = 2112;
          v167 = v41;
          _os_log_error_impl(&dword_223E7A000, &v42->super, 0x90u, "[ERROR] failed deserializing version in %@: %@%@", buf, 0x20u);
        }

        v35 = 0;
      }

      else
      {
        modifiedByDevice = [self modifiedByDevice];

        if (!modifiedByDevice)
        {
          v74 = brc_bread_crumbs();
          v75 = brc_default_log();
          if (os_log_type_enabled(v75, 0x90u))
          {
            [CKRecord(BRCSerializationAdditions) deserializeVersion:fakeStatInfo:contentBoundaryKey:clientZone:outOfBandUpload:error:];
          }

          v53 = v136;
        }

        v41 = objc_opt_new();
        if ([self brc_currentUserOwnsLastEditorDeviceWithSessionContext:session])
        {
          brc_lastEditorDeviceName = [self brc_lastEditorDeviceName];
          [v41 setLastEditorDeviceName:brc_lastEditorDeviceName];

          v53 = v136;
        }

        if ([v160 br_nameIsRepresentableOnHFS])
        {
          [v41 setOriginalPOSIXName:v160];
        }

        else
        {
          v131 = v159;
          v77 = v157;
          v78 = v158;
          v119 = MEMORY[0x277CCACA8];
          v124 = v77;
          stringValue = [v77 stringValue];
          v80 = v119;
          v120 = v78;
          v81 = [v80 br_representableHFSFileNameWithBase:v131 suffix:stringValue extension:v78 makeDotFile:0];
          [v41 setOriginalPOSIXName:v81];

          v82 = brc_bread_crumbs();
          v83 = brc_default_log();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v116 = v82;
            v84 = v160;
            originalPOSIXName = [v41 originalPOSIXName];
            *buf = 138412802;
            selfCopy = v84;
            v82 = v116;
            v164 = 2112;
            v165 = originalPOSIXName;
            v166 = 2112;
            v167 = v116;
            _os_log_impl(&dword_223E7A000, v83, OS_LOG_TYPE_DEFAULT, "[WARNING] Server gave us an unrepresentable filename: %@ using %@%@", buf, 0x20u);
          }

          session = v139;
          v53 = v136;
        }

        [v41 setSize:{objc_msgSend(v142, "longLongValue")}];
        [v41 setMtime:{objc_msgSend(v143, "longLongValue")}];
        if (v53)
        {
          signature2 = [v53 signature];
          [v41 setContentSignature:signature2];
        }

        else
        {
          [v41 setContentSignature:v141];
        }

        if (v137)
        {
          signature3 = [v137 signature];
          [v41 setThumbnailSignature:signature3];

          v86 = [v137 size];
        }

        else
        {
          [v41 setThumbnailSignature:0];
          v86 = 0;
        }

        [v41 setThumbnailSize:v86];
        conflictLoserEtags = [self conflictLoserEtags];

        if (conflictLoserEtags)
        {
          v88 = objc_alloc(MEMORY[0x277CBEB98]);
          conflictLoserEtags2 = [self conflictLoserEtags];
          v90 = [v88 initWithArray:conflictLoserEtags2];
          [v41 setConflictLoserEtags:v90];

          session = v139;
        }

        v91 = [[BRFieldCKInfo alloc] initWithRecord:self];
        [v41 setCkInfo:v91];

        [v41 setQuarantineInfo:0];
        [v41 setXattrSignature:signature];
        fileURL = [v24 fileURL];

        if (fileURL)
        {
          xattrStager = [session xattrStager];
          fileURL2 = [v24 fileURL];
          [xattrStager saveXattrAtURL:fileURL2 forSignature:signature error:0];
        }

        if (a3)
        {
          v95 = v41;
          *a3 = v41;
        }

        if (!v135)
        {
          v35 = 1;
          session = v139;
          v34 = v136;
          goto LABEL_76;
        }

        v42 = objc_alloc_init(BRCStatInfo);
        [(BRCStatInfo *)v42 setType:1];
        -[BRCStatInfo setMode:](v42, "setMode:", [self permission] == 1);
        originalPOSIXName2 = [v41 originalPOSIXName];
        [(BRCStatInfo *)v42 setLogicalName:originalPOSIXName2];

        recordID7 = [self recordID];
        recordName3 = [recordID7 recordName];
        v133 = [recordName3 hasPrefix:@"documentContent/"];

        if (v133)
        {
          v99 = [BRCItemID alloc];
          dbRowID = [v14 dbRowID];
          v101 = [(BRCItemID *)v99 _initAsZoneRootWithZoneRowID:dbRowID];
          [(BRCStatInfo *)v42 setParentID:v101];

          creationDate = [self creationDate];
          [creationDate timeIntervalSince1970];
          v104 = v103;
          if (!v103)
          {
            v104 = time(0);
          }

          unsignedLongLongValue2 = [v143 unsignedLongLongValue];
          if (v104 >= unsignedLongLongValue2)
          {
            v106 = unsignedLongLongValue2;
          }

          else
          {
            v106 = v104;
          }

          [(BRCStatInfo *)v42 setBirthtime:v106];
          ckInfo = [v41 ckInfo];
          v108 = [ckInfo copy];
          [(BRCStatInfo *)v42 setCkInfo:v108];

          v35 = 1;
          [(BRCStatInfo *)v42 setHiddenExt:1];
          v109 = v42;
          *v135 = v42;
        }

        else
        {
          v110 = brc_bread_crumbs();
          v111 = brc_default_log();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
          {
            [CKRecord(BRCSerializationAdditions) deserializeVersion:fakeStatInfo:contentBoundaryKey:clientZone:outOfBandUpload:error:];
          }

          v35 = 0;
        }

        session = v139;
      }

      v34 = v136;
LABEL_75:

LABEL_76:
      v32 = v141;
      v33 = v137;
      goto LABEL_77;
    }

    if (v141)
    {
      goto LABEL_106;
    }

    v55 = MEMORY[0x277CCACA8];
    recordType3 = [self recordType];
    recordID8 = [self recordID];
    v58 = [v55 stringWithFormat:@"%@ record %@ is neither a file nor a package", recordType3, recordID8];
    v59 = v161;
    v161 = v58;

    if (dictionary)
    {
      [dictionary setObject:v161 forKeyedSubscript:@"pkg+signature"];
    }

    else if (a8)
    {
      *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v161}];
    }

    v41 = brc_bread_crumbs();
    v42 = brc_default_log();
    session = v139;
    v34 = 0;
    if (!os_log_type_enabled(&v42->super, 0x90u))
    {
      goto LABEL_36;
    }

LABEL_159:
    [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
LABEL_36:
    v35 = 0;
    goto LABEL_75;
  }

  signature = 0;
  v29 = 0;
  v32 = 0;
  v24 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
LABEL_77:

  v43 = *MEMORY[0x277D85DE8];
  return v35;
}

- (uint64_t)deserializeSideCarInfo:()BRCSerializationAdditions error:
{
  v7 = objc_alloc_init(BRCSideCarInfo);
  v26 = 0;
  v27 = 0;
  v8 = [self _deserializeValue:&v26 forKey:@"lastOpenTime" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v27];
  v9 = v26;
  if ((v8 & 1) == 0)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v27}];
    }

    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

    v9 = 0;
    goto LABEL_15;
  }

  v25 = 0;
  v10 = [self _deserializeValue:&v25 forKey:@"favoriteRank" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v27];
  v11 = v25;
  if ((v10 & 1) == 0)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v27}];
    }

    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

LABEL_15:
    v13 = 0;
    v11 = 0;
LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v24 = 0;
  v12 = [self _deserializeValue:&v24 forKey:@"finderTags" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v27];
  v13 = v24;
  if ((v12 & 1) == 0)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v27}];
    }

    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

    v13 = 0;
    goto LABEL_16;
  }

  v14 = [[BRFieldCKInfo alloc] initWithRecord:self];
  [(BRCSideCarInfo *)v7 setCkInfo:v14];

  -[BRCSideCarInfo setFavoriteRank:](v7, "setFavoriteRank:", [v11 longLongValue]);
  -[BRCSideCarInfo setLastUsedTime:](v7, "setLastUsedTime:", [v9 longLongValue]);
  [(BRCSideCarInfo *)v7 setFinderTags:v13];
  v15 = v7;
  *a3 = v7;
  v16 = 1;
LABEL_17:

  return v16;
}

- (uint64_t)_locateSideCarServerZone:()BRCSerializationAdditions withShareAliasReference:sessionContext:
{
  v8 = a5;
  recordID = [a4 recordID];
  zoneAppRetriever = [v8 zoneAppRetriever];
  v11 = [recordID brc_itemIDWithZoneAppRetriever:zoneAppRetriever error:0];

  if (v11)
  {
    itemFetcher = [v8 itemFetcher];
    v13 = [itemFetcher serverItemByItemID:v11];

    if (v13)
    {
      if (([v13 isBRAlias] & 1) == 0)
      {
        [CKRecord(BRCSerializationAdditions) _locateSideCarServerZone:withShareAliasReference:sessionContext:];
      }

      aliasTargetClientZone = [v13 aliasTargetClientZone];
      serverZone = [aliasTargetClientZone serverZone];
      asSharedZone = [serverZone asSharedZone];

      v17 = asSharedZone;
      *a3 = asSharedZone;
      v18 = asSharedZone != 0;
    }

    else
    {
      recordID2 = [self recordID];
      v18 = [recordID2 locateSideCarServerZone:a3 sessionContext:v8];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (uint64_t)locateSideCarServerZone:()BRCSerializationAdditions shareRecordName:sessionContext:
{
  v8 = a5;
  v25 = 0;
  v26 = 0;
  v9 = [self _deserializeValue:&v25 forKey:@"shareReference" encrypted:0 expectClass:objc_opt_class() allowNil:0 errorDescription:&v26];
  v10 = v25;
  v11 = v10;
  if (v9)
  {
    recordID = [v10 recordID];
    *a4 = [recordID recordName];
    recordName = [recordID recordName];
    v14 = [recordName hasPrefix:@"shareAlias/"];

    if (v14)
    {
      v15 = [self _locateSideCarServerZone:a3 withShareAliasReference:v11 sessionContext:v8];
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x277CFAE60]);
      zoneID = [recordID zoneID];
      v19 = [v17 initWithRecordZoneID:zoneID];

      zoneAppRetriever = [v8 zoneAppRetriever];
      v21 = [zoneAppRetriever serverZoneByMangledID:v19];
      asSharedZone = [v21 asSharedZone];

      v15 = asSharedZone != 0;
      if (asSharedZone)
      {
        v23 = asSharedZone;
        *a3 = asSharedZone;
      }
    }
  }

  else
  {
    recordID = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:? basename:? bounceno:? extension:? userInfo:? error:?];
    }

    v15 = 0;
  }

  return v15;
}

- (void)serializeSystemFields:()BRCSerializationAdditions includeCZMEtag:
{
  [a3 setCKInfoFieldsInRecord:self includeCZMEtag:?];
  v4 = objc_alloc(MEMORY[0x277CFAE60]);
  recordID = [self recordID];
  zoneID = [recordID zoneID];
  v9 = [v4 initWithRecordZoneID:zoneID];

  v7 = [BRCUserDefaults defaultsForMangledID:v9];
  if ([v7 useFailIfOutdatedForResets])
  {
    [self setKnownToServer:1];
    fakeEtagForFailIfOutdated = [v7 fakeEtagForFailIfOutdated];
    if (([fakeEtagForFailIfOutdated isEqualToString:@"none"] & 1) == 0)
    {
      [self setEtag:fakeEtagForFailIfOutdated];
    }
  }
}

- (void)serializeFinderTags:()BRCSerializationAdditions forCreation:
{
  v7 = a3;
  if ([v7 length])
  {
    encryptedValues = [self encryptedValues];
    [encryptedValues setObject:v7 forKeyedSubscript:@"finderTags"];
  }

  else if ((a4 & 1) == 0)
  {
    [self setObject:0 forKeyedSubscript:@"finderTags"];
  }
}

- (void)serializeContentBoundaryKey:()BRCSerializationAdditions
{
  v6 = a3;
  if ([v6 length])
  {
    encryptedValues = [self encryptedValues];
    [encryptedValues setObject:v6 forKeyedSubscript:@"boundaryKey"];

    brc_truncatedSHA256 = [v6 brc_truncatedSHA256];
    [self setObject:brc_truncatedSHA256 forKeyedSubscript:@"boundaryKeyValidationKey"];
  }
}

- (void)seralizeBirthtime:()BRCSerializationAdditions
{
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  shouldSendRoundedTimestamps = [v5 shouldSendRoundedTimestamps];

  if (shouldSendRoundedTimestamps)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:BRCRoundedTimestamp(a3)];
    [self setObject:v7 forKeyedSubscript:@"birthtime"];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  encryptedValues = [self encryptedValues];
  [encryptedValues setObject:v9 forKeyedSubscript:@"exactBirthtime"];
}

- (void)serializeSpecialIdentityForFilename:()BRCSerializationAdditions parentIDIsCloudDocsRoot:parentIDisDocumentsFolder:
{
  v9 = a3;
  [self setObject:0 forKeyedSubscript:@"specialDirectoryIdentity"];
  if (a4)
  {
    if ([v9 isEqualToString:*MEMORY[0x277CFAD80]])
    {
      v8 = &unk_2837B0178;
LABEL_11:
      [self setObject:v8 forKeyedSubscript:@"specialDirectoryIdentity"];
      goto LABEL_12;
    }

    if ([v9 isEqualToString:*MEMORY[0x277CFAD90]])
    {
      v8 = &unk_2837B0190;
      goto LABEL_11;
    }

    if ([v9 isEqualToString:*MEMORY[0x277CFADB8]])
    {
LABEL_10:
      v8 = &unk_2837B01A8;
      goto LABEL_11;
    }

    if ([v9 isEqualToString:*MEMORY[0x277CFAD98]])
    {
      v8 = &unk_2837B01C0;
      goto LABEL_11;
    }
  }

  else if (a5 && [v9 isEqualToString:*MEMORY[0x277CFADB8]])
  {
    goto LABEL_10;
  }

LABEL_12:
}

- (void)serializeFilename:()BRCSerializationAdditions forCreation:setExtension:inSharedAlias:basehashSaltIfNotShareAlias:parentIDIsCloudDocsRoot:parentIDIsDocumentsFolder:
{
  v15 = a3;
  v16 = a7;
  v46 = 0;
  v47 = 0;
  v17 = [v15 br_stringByDeletingPathBounceNo:&v47 andPathExtension:&v46];
  v18 = v46;
  if (v17)
  {
    v45 = a8;
    v19 = [v17 dataUsingEncoding:4];
    encryptedValues = [self encryptedValues];
    [encryptedValues setObject:v19 forKeyedSubscript:@"encryptedBasename"];

    if (a6)
    {
      goto LABEL_23;
    }

    v21 = [BRCUserDefaults defaultsForMangledID:0];
    supportsEnhancedDrivePrivacy = [v21 supportsEnhancedDrivePrivacy];

    if (!supportsEnhancedDrivePrivacy)
    {
      brc_SHA256 = [v17 brc_SHA256];
      [self setObject:brc_SHA256 forKeyedSubscript:@"basehash"];

      goto LABEL_23;
    }

    if (v16)
    {
      brc_generateBogusKey = [MEMORY[0x277CBEA90] brc_generateBogusKey];
      v24 = [v16 isEqualToData:brc_generateBogusKey];

      if (v24)
      {
        pluginFields = [self pluginFields];
        if (pluginFields)
        {
          [self pluginFields];
          v26 = v44 = pluginFields;
          v27 = [v26 mutableCopy];

          pluginFields = v44;
        }

        else
        {
          v27 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
        }

        [v27 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"br_bougusSaltingKey"];
        [self setPluginFields:v27];
      }

      v38 = [v17 brc_SHA256WithSalt:v16];
      [self setObject:v38 forKeyedSubscript:@"basehash"];

      recordType = [self recordType];
      v40 = [recordType isEqualToString:@"structure"];

      if (v40)
      {
        brc_truncatedSHA256 = [v16 brc_truncatedSHA256];
        [self setObject:brc_truncatedSHA256 forKeyedSubscript:@"basehashSaltValidationKey"];

        [self serializeSpecialIdentityForFilename:v15 parentIDIsCloudDocsRoot:v45 parentIDisDocumentsFolder:a9];
      }

      goto LABEL_23;
    }

    brc_SHA2562 = [v17 brc_SHA256];
    [self setObject:brc_SHA2562 forKeyedSubscript:@"basehash"];

    recordType2 = [self recordType];
    v37 = [recordType2 isEqualToString:@"structure"];

    if (!v37)
    {
LABEL_23:

      if (v47 < 2)
      {
        if ((a4 & 1) == 0)
        {
          [self setObject:0 forKeyedSubscript:@"bounceNo"];
        }
      }

      else
      {
        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        [self setObject:v42 forKeyedSubscript:@"bounceNo"];
      }

      if (v18)
      {
        v43 = 0;
      }

      else
      {
        v43 = a4;
      }

      if (a5 && (v43 & 1) == 0)
      {
        [self setObject:v18 forKeyedSubscript:@"extension"];
      }

      goto LABEL_33;
    }

    [self setObject:0 forKeyedSubscript:@"basehashSaltValidationKey"];
    v29 = @"specialDirectoryIdentity";
    selfCopy = self;
LABEL_10:
    [selfCopy setObject:0 forKeyedSubscript:v29];
    goto LABEL_23;
  }

  if (a6)
  {
    selfCopy = [self encryptedValues];
    v19 = selfCopy;
    v29 = @"encryptedBasename";
    goto LABEL_10;
  }

  v30 = brc_bread_crumbs();
  v31 = brc_default_log();
  if (os_log_type_enabled(v31, 0x90u))
  {
    [CKRecord(BRCSerializationAdditions) serializeFilename:forCreation:setExtension:inSharedAlias:basehashSaltIfNotShareAlias:parentIDIsCloudDocsRoot:parentIDIsDocumentsFolder:];
  }

  v32 = brc_bread_crumbs();
  v33 = brc_default_log();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    [CKRecord(BRCSerializationAdditions) serializeFilename:forCreation:setExtension:inSharedAlias:basehashSaltIfNotShareAlias:parentIDIsCloudDocsRoot:parentIDIsDocumentsFolder:];
  }

LABEL_33:
}

- (BOOL)_verifyValueForRecordWithNumber:()BRCSerializationAdditions key:item:error:
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  unsignedLongLongValue = [v10 unsignedLongLongValue];
  if (unsignedLongLongValue < 0)
  {
    v28 = a6;
    session = [v12 session];
    analyticsReporter = [session analyticsReporter];
    recordID = [self recordID];
    recordName = [recordID recordName];
    clientZone = [v12 clientZone];
    mangledID = [clientZone mangledID];
    v17 = MEMORY[0x277CCABB0];
    [v12 clientZone];
    v19 = v18 = v11;
    v20 = [v17 numberWithBool:{objc_msgSend(v19, "enhancedDrivePrivacyEnabled")}];
    [analyticsReporter aggregateReportForAppTelemetryIdentifier:41 itemID:recordName zoneMangledID:mangledID enhancedDrivePrivacyEnabled:v20 error:0];

    v11 = v18;
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v30 = v11;
      v31 = 2112;
      v32 = v10;
      v33 = 2112;
      v34 = v21;
      _os_log_fault_impl(&dword_223E7A000, v22, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %@ has negative value %@!%@", buf, 0x20u);
    }

    if (v28)
    {
      *v28 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:v11 value:v10];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return unsignedLongLongValue >= 0;
}

- (uint64_t)serializeStatInfo:()BRCSerializationAdditions diffs:stageID:deadInServerTruth:shouldPCSChainStatus:basehashSaltGetter:childBasehashSaltGetter:error:
{
  v127 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v115 = a5;
  v117 = a8;
  v116 = a9;
  v120 = [v15 st];
  HIDWORD(v112) = a6;
  if (a6)
  {
    v119 = 1;
  }

  else
  {
    ckInfo = [v120 ckInfo];
    etag = [ckInfo etag];
    v119 = etag == 0;
  }

  ckInfo2 = [v120 ckInfo];

  clientZone = [v15 clientZone];
  LODWORD(v112) = [clientZone enhancedDrivePrivacyEnabled];

  clientZone2 = [v15 clientZone];
  if ([clientZone2 isPrivateZone])
  {
    appLibrary = [v15 appLibrary];
    wasMovedToCloudDocs = [appLibrary wasMovedToCloudDocs];
  }

  else
  {
    wasMovedToCloudDocs = 0;
  }

  if (v119)
  {
    if ([v15 isDirectory])
    {
      if (v116)
      {
        v22 = v116[2]();
        if (v22)
        {
          [self brc_fillWithChildBasehashSalt:v22];
          clientZone3 = [v15 clientZone];
          itemID = [v15 itemID];
          v25 = [clientZone3 saltingStateForItemID:itemID];

          if (v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = 3;
          }

          v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{v26, v112, v115}];
          [self setObject:v27 forKeyedSubscript:@"saltingState"];
        }
      }

      else
      {
        v29 = brc_bread_crumbs();
        v30 = brc_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          [CKRecord(BRCSerializationAdditions) serializeStatInfo:diffs:stageID:deadInServerTruth:shouldPCSChainStatus:basehashSaltGetter:childBasehashSaltGetter:error:];
        }
      }
    }
  }

  else if ((a4 & 0x60) == 0 && (a7 & 0x2C) == 0)
  {
    v28 = 0;
    goto LABEL_35;
  }

  if (wasMovedToCloudDocs && ([v15 itemID], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "isDocumentsFolder"), v31, v32))
  {
    clientZone4 = [v15 clientZone];
    asPrivateClientZone = [clientZone4 asPrivateClientZone];
    rootItemID = [asPrivateClientZone rootItemID];

    session = [v15 session];
    itemID2 = [v15 itemID];
    appLibraryRowID = [itemID2 appLibraryRowID];
    v39 = [session appLibraryByRowID:appLibraryRowID];
    appLibraryID = [v39 appLibraryID];

    v41 = [appLibraryID stringByReplacingOccurrencesOfString:@"." withString:@"~"];

    logicalNameWithoutLocalBounce = [v41 stringByAppendingString:@"_Documents"];
  }

  else
  {
    logicalNameWithoutLocalBounce = [v120 logicalNameWithoutLocalBounce];
    rootItemID = [v120 parentID];
  }

  appLibrary2 = [v15 appLibrary];
  if ([appLibrary2 isCloudDocsAppLibrary])
  {
    clientZone5 = [v15 clientZone];
    if ([clientZone5 isCloudDocsZone])
    {
      parentItemIDInZone = [v15 parentItemIDInZone];
      isNonDesktopRoot = [parentItemIDInZone isNonDesktopRoot];
    }

    else
    {
      isNonDesktopRoot = 0;
    }
  }

  else
  {
    isNonDesktopRoot = 0;
  }

  parentItemIDInZone2 = [v15 parentItemIDInZone];
  isDocumentsFolder = [parentItemIDInZone2 isDocumentsFolder];

  v28 = v117[2](v117, v15);
  [self serializeFilename:logicalNameWithoutLocalBounce forCreation:ckInfo2 == 0 basehashSalt:v28 parentIDIsCloudDocsRoot:isNonDesktopRoot parentIDIsDocumentsFolder:isDocumentsFolder];
  serverZone = [v15 serverZone];
  v50 = [rootItemID validatingDirectoryReferenceInZone:serverZone];
  [self setObject:v50 forKeyedSubscript:@"parent"];

  if ((a7 & 0x3C) != 0)
  {
    serverZone2 = [v15 serverZone];
    v52 = [rootItemID pcsChainParentReferenceInZone:serverZone2];
    [self setParent:v52];
  }

LABEL_35:
  if (a7 == 2)
  {
LABEL_45:
    [self setWantsChainPCS:{1, v112}];
    goto LABEL_46;
  }

  if ([v15 isDirectory])
  {
    if ((a7 & 0xC) == 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    isDocument = [v15 isDocument];
    if ((a7 & 0xC) != 0)
    {
      v54 = isDocument;
    }

    else
    {
      v54 = 0;
    }

    if ((v54 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  if (v119)
  {
    goto LABEL_45;
  }

  clientZone6 = [v15 clientZone];
  asPrivateClientZone2 = [clientZone6 asPrivateClientZone];
  itemID3 = [v15 itemID];
  v58 = [asPrivateClientZone2 pcsChainStateForItem:itemID3] < 2;

  if (v58)
  {
    goto LABEL_45;
  }

LABEL_46:
  v59 = !v119;
  if ((a4 & 0x10) != 0)
  {
    v59 = 0;
  }

  if (!v59)
  {
    birthtime = [v120 birthtime];
    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:birthtime];
    v62 = [self _verifyValueForRecordWithNumber:v61 key:@"birthtime" item:v15 error:0];

    if (v62)
    {
      v63 = birthtime;
    }

    else
    {
      v63 = 0;
    }

    if (!v28)
    {
      v28 = v117[2](v117, v15);
    }

    v28 = v28;

    if ([v15 shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:v28 != 0])
    {
      [self seralizeBirthtime:v63];
    }

    else
    {
      v64 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v63];
      [self setObject:v64 forKeyedSubscript:@"birthtime"];
    }
  }

  if (([v15 isSharedToMe] & 1) == 0)
  {
    if ((a4 & 0x800) != 0 || v119)
    {
      [self setLastUsedTime:{objc_msgSend(v120, "lastUsedTime")}];
    }

    if ((a4 & 0x1000) != 0 || v119)
    {
      favoriteRank = [v120 favoriteRank];
      if (favoriteRank)
      {
        v68 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v120, "favoriteRank")}];
      }

      else
      {
        v68 = 0;
      }

      [self setObject:v68 forKeyedSubscript:@"favoriteRank"];
      if (favoriteRank)
      {
      }
    }

    v69 = !v119;
    if ((a4 & 0x200) != 0)
    {
      v69 = 0;
    }

    if (!v69)
    {
      finderTags = [v120 finderTags];
      [self serializeFinderTags:finderTags forCreation:ckInfo2 == 0];
    }
  }

  v71 = !v119;
  if ((a4 & 0x80) != 0)
  {
    v71 = 0;
  }

  if (!v71)
  {
    v72 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v120, "isHiddenExt")}];
    [self setObject:v72 forKeyedSubscript:@"hiddenExt"];
  }

  if (ckInfo2)
  {
    [self setObject:0 forKeyedSubscript:@"ftags"];
  }

  if ((a4 & 4) != 0 || v119)
  {
    type = [v120 type];
    if (type <= 0xA && ((1 << type) & 0x611) != 0)
    {
      if (ckInfo2)
      {
        [self setObject:0 forKeyedSubscript:@"writable"];
        [self setObject:0 forKeyedSubscript:@"executable"];
      }
    }

    else
    {
      v75 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v120, "mode") & 1}];
      [self setObject:v75 forKeyedSubscript:@"writable"];

      v76 = [MEMORY[0x277CCABB0] numberWithInt:{(objc_msgSend(v120, "mode") >> 1) & 1}];
      [self setObject:v76 forKeyedSubscript:@"executable"];
    }
  }

  if ((a4 & 0x100) != 0 || v119)
  {
    xattrSignature = [v120 xattrSignature];

    if (xattrSignature)
    {
      session2 = [v15 session];
      xattrStager = [session2 xattrStager];
      xattrSignature2 = [v120 xattrSignature];
      v82 = [xattrStager urlForXattrSignature:xattrSignature2];

      v121 = 0;
      LODWORD(session2) = [v82 checkResourceIsReachableAndReturnError:&v121];
      encryptedValues2 = v121;
      if (session2)
      {
        if (v113)
        {
          brc_generateSaltingKey = [MEMORY[0x277CBEA90] brc_generateSaltingKey];
        }

        else
        {
          brc_generateSaltingKey = 0;
        }

        v88 = [MEMORY[0x277CBC190] br_assetWithFileURL:v82 boundaryKey:brc_generateSaltingKey];
        [self setObject:v88 forKeyedSubscript:@"xattr"];
        if (v113)
        {
          xattrSignature3 = [v120 xattrSignature];
        }

        else
        {
          xattrSignature3 = 0;
        }

        encryptedValues = [self encryptedValues];
        [encryptedValues setObject:xattrSignature3 forKeyedSubscript:@"xattrSignature"];

        if (v113)
        {
        }
      }

      else
      {
        v85 = brc_bread_crumbs();
        v86 = brc_default_log();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
        {
          xattrSignature4 = [v120 xattrSignature];
          [CKRecord(BRCSerializationAdditions) serializeStatInfo:xattrSignature4 diffs:v85 stageID:v126 deadInServerTruth:v86 shouldPCSChainStatus:? basehashSaltGetter:? childBasehashSaltGetter:? error:?];
        }

        [self setObject:0 forKeyedSubscript:@"xattr"];
        brc_generateSaltingKey = [self encryptedValues];
        [brc_generateSaltingKey setObject:0 forKeyedSubscript:@"xattrSignature"];
      }
    }

    else
    {
      if (!ckInfo2)
      {
        goto LABEL_113;
      }

      [self setObject:0 forKeyedSubscript:@"xattr"];
      encryptedValues2 = [self encryptedValues];
      [encryptedValues2 setObject:0 forKeyedSubscript:@"xattrSignature"];
    }
  }

LABEL_113:
  v91 = !v119;
  if ((a4 & 0x400) != 0)
  {
    v91 = 0;
  }

  if (!v91)
  {
    v92 = [v15 st];
    trashPutBackPath = [v92 trashPutBackPath];
    v94 = [trashPutBackPath dataUsingEncoding:4];

    encryptedValues3 = [self encryptedValues];
    [encryptedValues3 setObject:v94 forKeyedSubscript:@"restorePath"];

    v96 = [v15 st];
    trashPutBackParentID = [v96 trashPutBackParentID];
    serverZone3 = [v15 serverZone];
    v99 = [trashPutBackParentID directoryReferenceInZone:serverZone3 action:0];
    [self setObject:v99 forKeyedSubscript:@"restoreParent"];
  }

  if ([v15 isSymLink])
  {
    v100 = !v119;
    if ((a4 & 0x2000) != 0)
    {
      v100 = 0;
    }

    if (!v100)
    {
      asSymlink = [v15 asSymlink];
      symlinkTarget = [asSymlink symlinkTarget];
      v103 = [symlinkTarget dataUsingEncoding:4];

      encryptedValues4 = [self encryptedValues];
      [encryptedValues4 setObject:v103 forKeyedSubscript:@"targetPath"];
    }
  }

  if ((v114 & 1) == 0)
  {
    ckInfo3 = [v120 ckInfo];
    if (!ckInfo3)
    {
      if ([v15 isFinderBookmark])
      {
        v106 = brc_bread_crumbs();
        v107 = brc_default_log();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v123 = v15;
          v124 = 2112;
          v125 = v106;
          _os_log_impl(&dword_223E7A000, v107, OS_LOG_TYPE_DEFAULT, "[WARNING] Item is missing structure CKInfo so using the version CKInfo because they are the same record %@%@", buf, 0x16u);
        }

        asFinderBookmark = [v15 asFinderBookmark];
        currentVersion = [asFinderBookmark currentVersion];
        ckInfo3 = [currentVersion ckInfo];
      }

      else
      {
        ckInfo3 = 0;
      }
    }

    [self serializeSystemFields:ckInfo3 includeCZMEtag:{objc_msgSend(v15, "isDocumentBeingCopiedToNewZone") ^ 1}];
  }

  v110 = *MEMORY[0x277D85DE8];
  return 1;
}

- (uint64_t)_updateSize:()BRCSerializationAdditions mtime:shouldUseEnhancedDrivePrivacy:item:error:
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [BRCUserDefaults defaultsForMangledID:0];
  if (v10 && a5)
  {
    encryptedValues = [self encryptedValues];
    [encryptedValues setObject:v10 forKeyedSubscript:@"exactSize"];
  }

  if (v11)
  {
    if (([self _verifyValueForRecordWithNumber:v11 key:@"mtime" item:v12 error:0] & 1) == 0)
    {

      v11 = &unk_2837B01D8;
    }

    if (a5)
    {
      encryptedValues2 = [self encryptedValues];
      [encryptedValues2 setObject:v11 forKeyedSubscript:@"exactMtime"];

      if ([v13 shouldSendRoundedTimestamps])
      {
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{BRCRoundedTimestamp(objc_msgSend(v11, "unsignedLongLongValue"))}];
        [self setObject:v16 forKeyedSubscript:@"mtime"];
      }
    }

    else
    {
      [self setObject:v11 forKeyedSubscript:@"mtime"];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

- (uint64_t)serializeForContentUpload:()BRCSerializationAdditions size:mtime:etag:shouldUseEnhancedDrivePrivacy:error:
{
  v14 = a3;
  [self setEtag:a6];
  [self setKnownToServer:1];
  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5];
  v17 = [self _updateSize:v15 mtime:v16 shouldUseEnhancedDrivePrivacy:a7 item:v14 error:a8];

  return v17;
}

- (uint64_t)serializeVersion:()BRCSerializationAdditions diffs:deadInServerTruth:basehashSalt:error:
{
  v83 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v81 = a6;
  currentVersion = [v10 currentVersion];
  v76 = a5;
  v12 = [v10 contentRecordNeedsForceAllFieldsWhenDeadInServerTruth:a5];
  ckInfo = [currentVersion ckInfo];

  if ((a4 & 0x4000000000000000) != 0)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [CKRecord(BRCSerializationAdditions) serializeVersion:diffs:deadInServerTruth:basehashSalt:error:];
    }
  }

  if (!currentVersion)
  {
    v70 = brc_bread_crumbs();
    v71 = brc_default_log();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
    {
      [CKRecord(BRCSerializationAdditions) serializeVersion:diffs:deadInServerTruth:basehashSalt:error:];
    }
  }

  appLibrary = [v10 appLibrary];
  if ([appLibrary isCloudDocsAppLibrary])
  {
    clientZone = [v10 clientZone];
    if ([clientZone isCloudDocsZone])
    {
      parentItemIDInZone = [v10 parentItemIDInZone];
      isNonDesktopRoot = [parentItemIDInZone isNonDesktopRoot];
    }

    else
    {
      isNonDesktopRoot = 0;
    }
  }

  else
  {
    isNonDesktopRoot = 0;
  }

  parentItemIDInZone2 = [v10 parentItemIDInZone];
  isDocumentsFolder = [parentItemIDInZone2 isDocumentsFolder];

  if ([v10 isSharedToMeTopLevelItem])
  {
    if (ckInfo)
    {
      v21 = 0;
    }

    else
    {
      v21 = v12;
    }

    if (v21 == 1)
    {
      clientZone2 = [v10 clientZone];
      itemID = [v10 itemID];
      v24 = [clientZone2 serverItemByItemID:itemID];

      latestVersion = [v24 latestVersion];
      originalPOSIXName = [latestVersion originalPOSIXName];
      v27 = originalPOSIXName;
      if (originalPOSIXName)
      {
        originalPOSIXName2 = originalPOSIXName;
      }

      else
      {
        originalPOSIXName2 = [currentVersion originalPOSIXName];
      }

      v31 = originalPOSIXName2;

      [self serializeFilename:v31 forCreation:1 basehashSalt:0 parentIDIsCloudDocsRoot:isNonDesktopRoot parentIDIsDocumentsFolder:isDocumentsFolder];
    }

    originalPOSIXName3 = [objc_alloc(MEMORY[0x277CBC5D0]) initShareIDWithShareableItem:v10];
    parentItemIDInZone2 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:originalPOSIXName3 action:0];
    [self setShare:parentItemIDInZone2];

    goto LABEL_26;
  }

  v29 = v12 ^ 1;
  if ((a4 & 0x40000) != 0)
  {
    v29 = 0;
  }

  if ((v29 & 1) == 0)
  {
    originalPOSIXName3 = [currentVersion originalPOSIXName];
    [self serializeFilename:originalPOSIXName3 forCreation:ckInfo == 0 basehashSalt:v81 parentIDIsCloudDocsRoot:isNonDesktopRoot parentIDIsDocumentsFolder:isDocumentsFolder];
LABEL_26:
  }

  if ((a4 & 0x80000) != 0)
  {
    v32 = 0;
  }

  else
  {
    v32 = v12 ^ 1;
  }

  if (v32)
  {
    v80 = 0;
  }

  else
  {
    parentItemIDInZone2 = MEMORY[0x277CCABB0];
    v80 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(currentVersion, "size")}];
    if ((a4 & 0x100000) == 0 && ([v10 isDocumentBeingCopiedToNewZone] & 1) == 0)
    {
      parentItemIDInZone2 = brc_bread_crumbs();
      v33 = brc_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        [CKRecord(BRCSerializationAdditions) serializeVersion:diffs:deadInServerTruth:basehashSalt:error:];
      }
    }
  }

  if ((a4 & 0x20000) != 0)
  {
    v34 = 0;
  }

  else
  {
    v34 = v12 ^ 1;
  }

  if (v34)
  {
    v79 = 0;
  }

  else
  {
    parentItemIDInZone2 = MEMORY[0x277CCABB0];
    v79 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(currentVersion, "mtime")}];
  }

  if (v81)
  {
    v35 = 1;
  }

  else
  {
    parentItemIDInZone2 = [self objectForKeyedSubscript:@"boundaryKey"];
    v35 = parentItemIDInZone2 != 0;
  }

  v36 = [v10 shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:v35];
  if (!v81)
  {
  }

  v37 = [self _updateSize:v80 mtime:v79 shouldUseEnhancedDrivePrivacy:v36 item:v10 error:a7];
  if (v37)
  {
    v38 = v12 ^ 1;
    if ((a4 & 0x200000) != 0)
    {
      v38 = 0;
    }

    if ((v38 & 1) == 0)
    {
      xattrSignature = [currentVersion xattrSignature];
      v40 = xattrSignature == 0;

      if (v40)
      {
        if (ckInfo)
        {
          [self setObject:0 forKeyedSubscript:@"xattr"];
          encryptedValues = [self encryptedValues];
          [encryptedValues setObject:0 forKeyedSubscript:@"xattrSignature"];
          goto LABEL_60;
        }

LABEL_57:
        encryptedValues = [MEMORY[0x277CBEA90] data];
        encryptedValues2 = [self encryptedValues];
        [encryptedValues2 setObject:encryptedValues forKeyedSubscript:@"quarantine"];

LABEL_60:
LABEL_61:
        resolvedConflictLoserEtags = [v10 resolvedConflictLoserEtags];
        if ((a4 & 0x800000) != 0 && [resolvedConflictLoserEtags count] && ckInfo)
        {
          conflictLoserEtags = [currentVersion conflictLoserEtags];
          v48 = [conflictLoserEtags mutableCopy];

          [v48 minusSet:resolvedConflictLoserEtags];
          allObjects = [v48 allObjects];
          [self setConflictLoserEtags:allObjects];
        }

        if ([v10 isFinderBookmark])
        {
          v50 = [v10 st];
          ckInfo2 = [v50 ckInfo];
        }

        else
        {
          ckInfo2 = [currentVersion ckInfo];
        }

        v52 = [BRCUserDefaults defaultsForMangledID:0];
        session = [v10 session];
        accountFacade = [session accountFacade];
        v55 = [v52 saveLocalContentVersionIdentifierOnDiskWithAccountFacade:accountFacade];

        etag = [ckInfo2 etag];
        v58 = (a4 & 0x8400000000000000) != 0 && etag != 0;

        if (!(v55 & 1 | !v58))
        {
          [ckInfo2 overwriteEtag:0];
          v58 = 0;
        }

        if (!v76 || v58)
        {
          [self serializeSystemFields:ckInfo2 includeCZMEtag:{objc_msgSend(v10, "isDocumentBeingCopiedToNewZone") ^ 1}];
          if (v58)
          {
            pluginFields = [self pluginFields];
            if (pluginFields)
            {
              pluginFields2 = [self pluginFields];
              v65 = [pluginFields2 mutableCopy];
            }

            else
            {
              v65 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
            }

            [v65 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"br_itemUnderReset"];
            [self setPluginFields:v65];
          }
        }

        else
        {
          clientZone3 = [v10 clientZone];
          mangledID = [clientZone3 mangledID];
          v61 = [BRCUserDefaults defaultsForMangledID:mangledID];
          forceFailIfExistOnRevival = [v61 forceFailIfExistOnRevival];

          if (forceFailIfExistOnRevival)
          {
            [self setKnownToServer:0];
            [self setEtag:0];
          }
        }

        goto LABEL_89;
      }

      v41 = [self objectForKeyedSubscript:@"xattr"];
      v42 = v41 == 0;

      if (v42)
      {
        v72 = brc_bread_crumbs();
        v73 = brc_default_log();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
        {
          [CKRecord(BRCSerializationAdditions) serializeVersion:diffs:deadInServerTruth:basehashSalt:error:];
        }
      }

      encryptedValues3 = [self encryptedValues];
      v44 = [encryptedValues3 objectForKeyedSubscript:@"xattrSignature"];
      if (v44)
      {
        goto LABEL_55;
      }

      clientZone4 = [v10 clientZone];
      enhancedDrivePrivacyEnabled = [clientZone4 enhancedDrivePrivacyEnabled];

      if (enhancedDrivePrivacyEnabled)
      {
        encryptedValues3 = brc_bread_crumbs();
        v44 = brc_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          [CKRecord(BRCSerializationAdditions) serializeVersion:diffs:deadInServerTruth:basehashSalt:error:];
        }

LABEL_55:
      }
    }

    if (ckInfo)
    {
      goto LABEL_61;
    }

    goto LABEL_57;
  }

LABEL_89:

  v68 = *MEMORY[0x277D85DE8];
  return v37;
}

- (void)serializeSideCarInfo:()BRCSerializationAdditions filenameExtension:diffs:deadInServerTruth:
{
  v16 = a3;
  v10 = a4;
  if ((a5 & 0x1000) != 0 || a6)
  {
    if (![v16 favoriteRank])
    {
      [self setObject:0 forKeyedSubscript:@"favoriteRank"];
      if ((a5 & 0x800) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "favoriteRank")}];
    [self setObject:v11 forKeyedSubscript:@"favoriteRank"];
  }

  if ((a5 & 0x800) != 0)
  {
LABEL_7:
    [self setLastUsedTime:{objc_msgSend(v16, "lastUsedTime")}];
    goto LABEL_8;
  }

LABEL_6:
  if (a6)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((a5 & 0x200) != 0 || a6)
  {
    finderTags = [v16 finderTags];
    ckInfo = [v16 ckInfo];
    etag = [ckInfo etag];
    [self serializeFinderTags:finderTags forCreation:etag == 0];
  }

  [self setObject:v10 forKeyedSubscript:@"extension"];
  if ((a6 & 1) == 0)
  {
    ckInfo2 = [v16 ckInfo];
    [self serializeSystemFields:ckInfo2];
  }
}

- (void)setLastUsedTime:()BRCSerializationAdditions
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
    [self setObject:v4 forKeyedSubscript:@"lastOpenTime"];
  }

  else
  {

    [self setObject:? forKeyedSubscript:?];
  }
}

- (id)_createAppLibraryIfNecessary:()BRCSerializationAdditions session:
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v5 = MEMORY[0x277CFAE60];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithAppLibraryName:v7];

  v9 = [v6 getOrCreateAppLibraryAndPrivateZonesIfNecessary:v8 appLibraryExists:&v14];

  if ((v14 & 1) == 0)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] Created app library through sync flow %@%@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_saveAppLibraryIfNecessary:()BRCSerializationAdditions
{
  v7 = a3;
  v3 = [v7 db];
  [v3 assertOnQueue];

  if ([v7 needsSave])
  {
    session = [v7 session];
    clientReadWriteDatabaseFacade = [session clientReadWriteDatabaseFacade];
    [clientReadWriteDatabaseFacade saveAppLibrary:v7];

    v6 = [v7 db];
    [v6 flush];
  }
}

- (void)_processSaltingOnAppLibrary:()BRCSerializationAdditions
{
  v4 = a3;
  v6 = [[BRCBasehashSaltInfo alloc] initWithRecord:self];
  childBasehashSalt = [(BRCBasehashSaltInfo *)v6 childBasehashSalt];
  [v4 setChildBasehashSalt:childBasehashSalt];

  [v4 setSaltingState:{-[BRCBasehashSaltInfo saltingState](v6, "saltingState")}];
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:
{
  v8 = a3;
  v9 = a4;
  recordType = [self recordType];
  v11 = [recordType isEqualToString:@"structure"];

  if (v11)
  {
    recordID = [self recordID];
    session = [v9 session];
    if ([recordID brc_isZoneRootRecordID])
    {
      session2 = [v9 session];
      clientTruthWorkloop = [session2 clientTruthWorkloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __102__CKRecord_BRCSerializationAdditions__processAppLibraryDataWithMovedZoneNames_serverZone_isDeltaSync___block_invoke;
      block[3] = &unk_278502F30;
      v45 = v9;
      selfCopy = self;
      v47 = a5;
      dispatch_async_and_wait(clientTruthWorkloop, block);

      v16 = v45;
LABEL_4:

LABEL_34:
      goto LABEL_35;
    }

    if ([recordID brc_isAppLibraryRootRecordID])
    {
      brc_appLibraryRootZoneName = [recordID brc_appLibraryRootZoneName];
      v18 = [self _createAppLibraryIfNecessary:brc_appLibraryRootZoneName session:session];

      session3 = [v9 session];
      clientTruthWorkloop2 = [session3 clientTruthWorkloop];
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = __102__CKRecord_BRCSerializationAdditions__processAppLibraryDataWithMovedZoneNames_serverZone_isDeltaSync___block_invoke_2;
      v40 = &unk_278502F30;
      selfCopy2 = self;
      v42 = v18;
      v43 = a5;
      v21 = v18;
      dispatch_async_and_wait(clientTruthWorkloop2, &v37);
    }

    if (![v9 isCloudDocsZone])
    {
      goto LABEL_34;
    }

    if ([recordID brc_isAppLibraryRootRecordID])
    {
      brc_appLibraryRootZoneName2 = [recordID brc_appLibraryRootZoneName];
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [CKRecord(BRCSerializationAdditions) processAppLibraryDataWithMovedZoneNames:serverZone:isDeltaSync:];
      }

      if ([brc_appLibraryRootZoneName2 isEqualToString:*MEMORY[0x277CFAD68]])
      {
        [CKRecord(BRCSerializationAdditions) processAppLibraryDataWithMovedZoneNames:serverZone:isDeltaSync:];
      }

      [v8 addObject:brc_appLibraryRootZoneName2];
    }

    if ([recordID brc_isAppLibraryDocumentsRecordID])
    {
      brc_appLibraryDocumentsZoneName = [recordID brc_appLibraryDocumentsZoneName];
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [CKRecord(BRCSerializationAdditions) processAppLibraryDataWithMovedZoneNames:serverZone:isDeltaSync:];
      }

      if ([brc_appLibraryDocumentsZoneName isEqualToString:*MEMORY[0x277CFAD68]])
      {
        [CKRecord(BRCSerializationAdditions) processAppLibraryDataWithMovedZoneNames:serverZone:isDeltaSync:];
      }

      [v8 addObject:brc_appLibraryDocumentsZoneName];
    }

    if (([v9 state] & 4) != 0)
    {
      goto LABEL_34;
    }

    v16 = [self objectForKeyedSubscript:@"parent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      recordID2 = [v16 recordID];
      brc_isAppLibraryRootRecordID = [recordID2 brc_isAppLibraryRootRecordID];
      v30 = MEMORY[0x277CFAD68];
      if (brc_isAppLibraryRootRecordID)
      {
        brc_appLibraryRootZoneName3 = [recordID2 brc_appLibraryRootZoneName];
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [CKRecord(BRCSerializationAdditions) processAppLibraryDataWithMovedZoneNames:serverZone:isDeltaSync:];
        }

        if ([brc_appLibraryRootZoneName3 isEqualToString:*v30])
        {
          [CKRecord(BRCSerializationAdditions) processAppLibraryDataWithMovedZoneNames:serverZone:isDeltaSync:];
        }

        [v8 addObject:brc_appLibraryRootZoneName3];
      }

      if (![recordID2 brc_isAppLibraryDocumentsRecordID])
      {
        goto LABEL_39;
      }

      brc_appLibraryDocumentsZoneName2 = [recordID2 brc_appLibraryDocumentsZoneName];
      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [CKRecord(BRCSerializationAdditions) processAppLibraryDataWithMovedZoneNames:serverZone:isDeltaSync:];
      }

      if ([brc_appLibraryDocumentsZoneName2 isEqualToString:*v30])
      {
        [CKRecord(BRCSerializationAdditions) processAppLibraryDataWithMovedZoneNames:serverZone:isDeltaSync:];
      }

      [v8 addObject:brc_appLibraryDocumentsZoneName2];
    }

    else
    {
      recordID2 = brc_bread_crumbs();
      brc_appLibraryDocumentsZoneName2 = brc_default_log();
      if (os_log_type_enabled(brc_appLibraryDocumentsZoneName2, OS_LOG_TYPE_FAULT))
      {
        [CKRecord(BRCSerializationAdditions) processAppLibraryDataWithMovedZoneNames:serverZone:isDeltaSync:];
      }
    }

LABEL_39:
    goto LABEL_4;
  }

LABEL_35:
}

- (id)getAndUpdateBoundaryKeyForItem:()BRCSerializationAdditions
{
  v4 = a3;
  if (([v4 isFinderBookmark] & 1) != 0 || (+[BRCUserDefaults defaultsForMangledID:](BRCUserDefaults, "defaultsForMangledID:", 0), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "supportsEnhancedDrivePrivacy"), v5, !v6))
  {
    brc_generateSaltingKey = 0;
  }

  else
  {
    clientZone = [v4 clientZone];
    itemID = [v4 itemID];
    v9 = [v4 db];
    brc_generateSaltingKey = [clientZone contentBoundaryKeyForItemID:itemID withDB:v9];

    if ([v4 shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:brc_generateSaltingKey != 0])
    {
      if (!brc_generateSaltingKey)
      {
        brc_generateSaltingKey = [MEMORY[0x277CBEA90] brc_generateSaltingKey];
      }

      [self serializeContentBoundaryKey:brc_generateSaltingKey];
      v11 = MEMORY[0x277CCABB0];
      currentVersion = [v4 currentVersion];
      v13 = [v11 numberWithLongLong:{objc_msgSend(currentVersion, "size")}];
      encryptedValues = [self encryptedValues];
      [encryptedValues setObject:v13 forKeyedSubscript:@"exactSize"];
    }
  }

  return brc_generateSaltingKey;
}

+ (void)newFromSqliteValue:()BRCSerializationAdditions .cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (void)newFromSqliteStatement:()BRCSerializationAdditions atIndex:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_deserializeValue:()BRCSerializationAdditions forKey:encrypted:expectClass:allowNil:errorDescription:.cold.1(void **a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a1)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [a2 recordType];
    v10 = [a2 recordID];
    v11 = [v8 stringWithFormat:@"missing key '%@' in %@ record %@", a3, v9, v10];
    v12 = *a1;
    *a1 = v11;
  }

  *a4 = 0;
}

- (void)deserializeFilename:()BRCSerializationAdditions basename:bounceno:extension:userInfo:error:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v1, v2, "[ERROR] deserializeError: %@%@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)deserializeFilename:()BRCSerializationAdditions basename:bounceno:extension:userInfo:error:.cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEFAULT, "[WARNING] The server sent a bounceNo <= 1: %@%@", v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)deserializeFilename:()BRCSerializationAdditions basename:bounceno:extension:userInfo:error:.cold.5()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_3();
    _os_log_debug_impl(&dword_223E7A000, v1, OS_LOG_TYPE_DEBUG, "[DEBUG] basename is nil -> replace with empty string%@", v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (id)deserializeFilename:()BRCSerializationAdditions basename:bounceno:extension:userInfo:error:.cold.6()
{
  OUTLINED_FUNCTION_18();
  v11 = *MEMORY[0x277D85DE8];
  if (v2)
  {
    v3 = v2;
    v8 = [v1 stringByAppendingFormat:@" %@", v2];

    v1 = v3;
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: empty basename and no bounceno%@", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCACA8] br_emptyFilenameAlternativeName];
  }

  *v0 = v8;

  v6 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)deserializeAliasInfo:()BRCSerializationAdditions serverZone:error:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: No alias target%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_deserializeRootSharingOptions:()BRCSerializationAdditions .cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)deserializeStatInfo:()BRCSerializationAdditions serverMetrics:itemID:session:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] deserializeError: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)deserializeStatInfo:()BRCSerializationAdditions serverMetrics:itemID:session:error:.cold.14()
{
  OUTLINED_FUNCTION_18();
  v9 = *MEMORY[0x277D85DE8];
  [v0 UTF8String];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v1, v2, "[CRIT] UNREACHABLE: The server should have set a birthtime on %s%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)deserializeVersion:()BRCSerializationAdditions fakeStatInfo:contentBoundaryKey:clientZone:outOfBandUpload:error:.cold.9()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 recordID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v2, v3, "[CRIT] UNREACHABLE: Got unexpected content boundary key for recordID %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deserializeVersion:()BRCSerializationAdditions fakeStatInfo:contentBoundaryKey:clientZone:outOfBandUpload:error:.cold.11()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v9 = *MEMORY[0x277D85DE8];
  v2 = [v0 recordType];
  v8 = [v1 recordID];
  OUTLINED_FUNCTION_10_0();
  _os_log_error_impl(v3, v4, 0x90u, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deserializeVersion:()BRCSerializationAdditions fakeStatInfo:contentBoundaryKey:clientZone:outOfBandUpload:error:.cold.12()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: The record name is not a content in the shared zone%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_locateSideCarServerZone:()BRCSerializationAdditions withShareAliasReference:sessionContext:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)serializeFilename:()BRCSerializationAdditions forCreation:setExtension:inSharedAlias:basehashSaltIfNotShareAlias:parentIDIsCloudDocsRoot:parentIDIsDocumentsFolder:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] couldn't set basename to '%@'%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)serializeFilename:()BRCSerializationAdditions forCreation:setExtension:inSharedAlias:basehashSaltIfNotShareAlias:parentIDIsCloudDocsRoot:parentIDIsDocumentsFolder:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: invalid filename%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)serializeStatInfo:()BRCSerializationAdditions diffs:stageID:deadInServerTruth:shouldPCSChainStatus:basehashSaltGetter:childBasehashSaltGetter:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: childBasehashSaltGetter%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)serializeStatInfo:()BRCSerializationAdditions diffs:stageID:deadInServerTruth:shouldPCSChainStatus:basehashSaltGetter:childBasehashSaltGetter:error:.cold.2(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  OUTLINED_FUNCTION_15_0(&dword_223E7A000, a4, a3, "[CRIT] UNREACHABLE: Couldn't find xattr for signature %@%@", a3);
}

- (void)serializeVersion:()BRCSerializationAdditions diffs:deadInServerTruth:basehashSalt:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)serializeVersion:()BRCSerializationAdditions diffs:deadInServerTruth:basehashSalt:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: version != nil%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)serializeVersion:()BRCSerializationAdditions diffs:deadInServerTruth:basehashSalt:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: (diffs & BRC_IF_CONTENT_SIGNATURE) || item.isDocumentBeingCopiedToNewZone%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)serializeVersion:()BRCSerializationAdditions diffs:deadInServerTruth:basehashSalt:error:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: self[kBRRecordKeyXattr]%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)serializeVersion:()BRCSerializationAdditions diffs:deadInServerTruth:basehashSalt:error:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: self.encryptedValues[kBRRecordKeyXattrSignature] || !item.clientZone.enhancedDrivePrivacyEnabled%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 recordName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_8(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:.cold.2()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:.cold.3()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 recordName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_8(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:.cold.4()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:.cold.6()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 recordName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_8(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:.cold.7()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:.cold.8()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 recordName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_8(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:.cold.9()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end