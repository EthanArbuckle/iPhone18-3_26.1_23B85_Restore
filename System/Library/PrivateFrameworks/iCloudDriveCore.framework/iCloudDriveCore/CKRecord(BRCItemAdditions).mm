@interface CKRecord(BRCItemAdditions)
+ (id)desiredKeysWithMask:()BRCItemAdditions;
+ (id)rootAppLibraryRecordForAppLibraryID:()BRCItemAdditions zoneID:;
+ (id)rootDirectoryRecordForZoneID:()BRCItemAdditions;
+ (uint64_t)_validateCKObject:()BRCItemAdditions enhancedDrivePrivacyEnabled:;
- (BOOL)brc_safeToGetURL;
- (id)brc_lastEditorDeviceName;
- (id)brc_lastModifiedUserRecordNameWithCurrentUserRecordName:()BRCItemAdditions personNameComponents:;
- (id)brc_oplockMergeEtag;
- (id)brc_updateDroppedReason;
- (uint64_t)brc_currentUserOwnsLastEditorDeviceWithSessionContext:()BRCItemAdditions;
- (uint64_t)brc_isInterestingRecordForSave;
- (uint64_t)brc_isInterestingRecordForSyncDown;
- (uint64_t)sanitizeShortTokenFields;
- (uint64_t)validateEnhancedDrivePrivacyFieldsWithSession:()BRCItemAdditions error:;
- (void)brc_fillWithChildBasehashSalt:()BRCItemAdditions;
- (void)sqliteBind:()BRCItemAdditions index:;
@end

@implementation CKRecord(BRCItemAdditions)

- (id)brc_lastEditorDeviceName
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [a1 objectForKeyedSubscript:@"lastEditorName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 dataUsingEncoding:4];
    v16 = 0;
    v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:&v16];
    v5 = v16;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 objectForKeyedSubscript:@"type"];
      v7 = [v6 isEqualToString:@"device"];

      if (v7)
      {
        v8 = [v4 objectForKeyedSubscript:@"name"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v10 = [v4 objectForKeyedSubscript:@"name"];
          goto LABEL_10;
        }

        v11 = brc_bread_crumbs();
        v12 = brc_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          v15 = [a1 recordID];
          *buf = 138412802;
          v18 = v15;
          v19 = 2112;
          v20 = v4;
          v21 = 2112;
          v22 = v11;
          _os_log_fault_impl(&dword_223E7A000, v12, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: invalid lastEditorDeviceName on %@: %@%@", buf, 0x20u);
        }
      }
    }

    v10 = 0;
LABEL_10:

    if (v10)
    {
      goto LABEL_12;
    }
  }

  v10 = [a1 modifiedByDevice];
LABEL_12:

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (uint64_t)brc_isInterestingRecordForSyncDown
{
  v2 = [a1 recordType];
  v3 = [a1 recordID];
  v4 = [v3 recordName];

  v5 = [BRCUserDefaults defaultsForMangledID:0];
  v6 = [v5 recordsToIgnoreOnSyncDown];

  if ([v6 containsObject:v4])
  {
    goto LABEL_2;
  }

  if (![v2 isEqualToString:@"structure"])
  {
    if (![v2 isEqualToString:@"content"])
    {
      v9 = [v2 isEqualToString:*MEMORY[0x277CBC050]];
      goto LABEL_16;
    }

    v8 = @"documentContent/";
LABEL_14:
    v9 = [v4 hasPrefix:v8];
LABEL_16:
    v7 = v9;
    goto LABEL_17;
  }

  if (([v4 hasPrefix:@"documentStructure/"] & 1) == 0 && (objc_msgSend(v4, "hasPrefix:", @"directory/") & 1) == 0 && (objc_msgSend(v4, "hasPrefix:", @"alias/") & 1) == 0 && (objc_msgSend(v4, "hasPrefix:", @"shareAlias/") & 1) == 0 && (objc_msgSend(v4, "hasPrefix:", @"symlink/") & 1) == 0 && (objc_msgSend(v4, "hasPrefix:", @"finderBookmark/") & 1) == 0 && (objc_msgSend(v4, "hasPrefix:", @"directory/appDocuments_") & 1) == 0)
  {
    v8 = @"directory/appData_";
    goto LABEL_14;
  }

LABEL_2:
  v7 = 1;
LABEL_17:

  return v7;
}

- (uint64_t)brc_isInterestingRecordForSave
{
  if (![a1 brc_isInterestingRecordForSyncDown])
  {
    return 0;
  }

  v2 = [a1 recordID];
  if ([v2 brc_isAppLibraryRootRecordID])
  {
    v3 = 0;
  }

  else
  {
    v4 = [a1 recordID];
    v3 = [v4 brc_isZoneRootRecordID] ^ 1;
  }

  return v3;
}

- (id)brc_oplockMergeEtag
{
  v1 = [a1 pluginFields];
  v2 = [v1 objectForKeyedSubscript:@"br_oplockMergeEtag"];

  return v2;
}

- (id)brc_updateDroppedReason
{
  v1 = [a1 pluginFields];
  v2 = [v1 objectForKeyedSubscript:@"br_updateDropped"];

  return v2;
}

- (BOOL)brc_safeToGetURL
{
  v2 = [a1 brc_sharedRootDisplayName];

  if (!v2)
  {
    return 0;
  }

  v3 = [a1 containerID];

  if (!v3)
  {
    return 0;
  }

  v4 = [a1 brc_sharedRootExtension];
  v5 = MEMORY[0x277CBEB98];
  v6 = [MEMORY[0x277CFAEE0] iWorkShareableExtensions];
  v7 = [v5 setWithArray:v6];

  if (v4 && [v7 containsObject:v4])
  {
    v8 = [a1 baseToken];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)brc_lastModifiedUserRecordNameWithCurrentUserRecordName:()BRCItemAdditions personNameComponents:
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a1 objectForKeyedSubscript:@"lastEditorName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 dataUsingEncoding:4];
    v33 = 0;
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v33];
    v10 = v33;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
      goto LABEL_14;
    }

    v32 = v10;
    v11 = [v9 objectForKeyedSubscript:@"type"];
    v12 = [v11 isEqualToString:@"user"];

    if (v12)
    {
      v13 = [v9 objectForKeyedSubscript:@"ckUserId"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15 = [v9 objectForKeyedSubscript:@"ckUserId"];
        if ([v15 isEqualToString:v6])
        {
          v16 = v15;
          v15 = *MEMORY[0x277CBBF28];
        }

        else
        {
          if (!a4)
          {
            goto LABEL_13;
          }

          v21 = [v9 objectForKeyedSubscript:@"name"];
          objc_opt_class();
          v22 = objc_opt_isKindOfClass();

          if ((v22 & 1) == 0)
          {
            goto LABEL_13;
          }

          v16 = [v9 objectForKeyedSubscript:@"name"];
          v23 = [v16 objectForKeyedSubscript:@"last"];
          objc_opt_class();
          v30 = objc_opt_isKindOfClass();

          if (v30)
          {
            v31 = [v16 objectForKeyedSubscript:@"last"];
          }

          else
          {
            v31 = 0;
          }

          v24 = [v16 objectForKeyedSubscript:@"first"];
          objc_opt_class();
          v25 = v24;
          LOBYTE(v24) = objc_opt_isKindOfClass();

          if (v24)
          {
            v26 = [v16 objectForKeyedSubscript:@"first"];
          }

          else
          {
            v26 = 0;
          }

          if (v26 | v31)
          {
            v27 = objc_alloc_init(MEMORY[0x277CCAC00]);
            [v27 setFamilyName:v31];
            [v27 setGivenName:v26];
            v28 = v27;
            *a4 = v27;
          }
        }
      }

      else
      {
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          v29 = [a1 recordID];
          *buf = 138412802;
          v35 = v29;
          v36 = 2112;
          v37 = v9;
          v38 = 2112;
          v39 = v16;
          _os_log_fault_impl(&dword_223E7A000, v17, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: invalid lastEditorDeviceName on %@: %@%@", buf, 0x20u);
        }

        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

LABEL_13:
    v10 = v32;
LABEL_14:

    if (v15)
    {
      goto LABEL_16;
    }
  }

  v18 = [a1 lastModifiedUserRecordID];
  v15 = [v18 recordName];

LABEL_16:
  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

- (uint64_t)brc_currentUserOwnsLastEditorDeviceWithSessionContext:()BRCItemAdditions
{
  v4 = [a3 cachedCurrentUserRecordName];
  v5 = [a1 brc_lastModifiedUserRecordNameWithCurrentUserRecordName:v4 personNameComponents:0];
  v6 = [v5 isEqualToString:*MEMORY[0x277CBBF28]];

  return v6;
}

- (void)sqliteBind:()BRCItemAdditions index:
{
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a1 requiringSecureCoding:1 error:0];
  v6 = v7;
  sqlite3_bind_blob(a3, a4, [v7 bytes], objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

+ (id)rootDirectoryRecordForZoneID:()BRCItemAdditions
{
  v3 = a3;
  v4 = [@"directory/" stringByAppendingString:@"root"];
  v5 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v4 zoneID:v3];

  v6 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"structure" recordID:v5];
  v7 = [MEMORY[0x277CBEA90] data];
  v8 = [v6 encryptedValues];
  [v8 setObject:v7 forKeyedSubscript:@"encryptedBasename"];

  v9 = [MEMORY[0x277CBEA90] data];
  [v6 setObject:v9 forKeyedSubscript:@"basehash"];

  v10 = [MEMORY[0x277CCABB0] numberWithLong:time(0)];
  [v6 setObject:v10 forKeyedSubscript:@"birthtime"];

  [v6 serializeSystemFields:0];

  return v6;
}

+ (id)rootAppLibraryRecordForAppLibraryID:()BRCItemAdditions zoneID:
{
  v5 = a3;
  v6 = a4;
  if (!v5 || ([v5 isCloudDocsMangledID] & 1) != 0 || (objc_msgSend(v5, "isDesktopMangledID") & 1) != 0 || (objc_msgSend(v5, "isDocumentsMangledID") & 1) != 0 || objc_msgSend(v5, "isShared"))
  {
    +[CKRecord(BRCItemAdditions) rootAppLibraryRecordForAppLibraryID:zoneID:];
    v13 = 0;
  }

  else
  {
    v7 = [v5 appLibraryOrZoneName];
    v8 = [v7 stringByReplacingOccurrencesOfString:@"." withString:@"~"];
    v9 = [v8 stringByAppendingString:@"_Data"];

    v10 = [v9 dataUsingEncoding:4];
    v11 = [v5 appLibraryOrZoneName];
    v23 = [@"directory/appData_" stringByAppendingString:v11];

    v12 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v23 zoneID:v6];
    v13 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"structure" recordID:v12];
    v14 = [@"directory/" stringByAppendingString:@"root"];
    v15 = v6;
    v16 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v14 zoneID:v6];
    v17 = objc_alloc(MEMORY[0x277CBC620]);
    v18 = [v17 initWithRecordID:v16 action:*MEMORY[0x277CBC070]];
    v19 = [v13 encryptedValues];
    [v19 setObject:v10 forKeyedSubscript:@"encryptedBasename"];

    v20 = [v9 brc_SHA256];
    [v13 setObject:v20 forKeyedSubscript:@"basehash"];

    v21 = [MEMORY[0x277CCABB0] numberWithLong:time(0)];
    [v13 setObject:v21 forKeyedSubscript:@"birthtime"];

    [v13 setObject:v18 forKeyedSubscript:@"parent"];
    [v13 serializeSystemFields:0];

    v6 = v15;
  }

  return v13;
}

+ (id)desiredKeysWithMask:()BRCItemAdditions
{
  v27[29] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&desiredKeysWithMask__lock);
  v4 = desiredKeysWithMask__cache;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  os_unfair_lock_unlock(&desiredKeysWithMask__lock);
  if (v6)
  {
    goto LABEL_17;
  }

  v6 = [MEMORY[0x277CBEB18] array];
  if ((a3 & 0x1010101) != 0)
  {
    v27[0] = @"encryptedBasename";
    v27[1] = @"bounceNo";
    v27[2] = @"extension";
    v27[3] = @"parent";
    v27[4] = @"target";
    v27[5] = @"exactBirthtime";
    v27[6] = @"birthtime";
    v27[7] = @"lastOpenTime";
    v27[8] = @"favoriteRank";
    v27[9] = @"hiddenExt";
    v27[10] = @"executable";
    v27[11] = @"writable";
    v27[12] = @"exactMtime";
    v27[13] = @"mtime";
    v27[14] = @"finderTags";
    v27[15] = @"restorePath";
    v27[16] = @"restoreParent";
    v27[17] = @"targetPath";
    v27[18] = @"ftags";
    v27[19] = @"exactSize";
    v27[20] = @"size";
    v27[21] = @"shareReference";
    v7 = *MEMORY[0x277CBC0A0];
    v27[22] = @"countMetrics";
    v27[23] = v7;
    v27[24] = *MEMORY[0x277CBC098];
    v27[25] = @"childBasehashSalt";
    v27[26] = @"childBasehashSaltValidationKey";
    v27[27] = @"saltingState";
    v27[28] = @"basehashSaltValidationKey";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:29];
    [v6 addObjectsFromArray:v8];
  }

  if ((a3 & 0xC) != 0)
  {
    v26[0] = @"fileContent";
    v26[1] = @"bookmarkContent";
    v26[2] = @"pkgSignature";
    v26[3] = @"boundaryKey";
    v26[4] = @"boundaryKeyValidationKey";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:5];
    [v6 addObjectsFromArray:v9];
  }

  if ((a3 & 4) != 0)
  {
    v25[0] = @"pkgContent";
    v25[1] = @"pkgManifest";
    v25[2] = @"pkgXattrs";
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    [v6 addObjectsFromArray:v17];

    if ((a3 & 8) == 0)
    {
LABEL_8:
      if ((a3 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }
  }

  else if ((a3 & 8) == 0)
  {
    goto LABEL_8;
  }

  v24[0] = @"ignorePkgExtension";
  v24[1] = @"lastEditorName";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [v6 addObjectsFromArray:v18];

  if ((a3 & 0x10) == 0)
  {
LABEL_9:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v23[0] = @"thumb1024";
  v23[1] = @"thumbQLMetadata";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [v6 addObjectsFromArray:v19];

  if ((a3 & 0x20) == 0)
  {
LABEL_10:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v6 addObject:@"xattr"];
  [v6 addObject:@"xattrSignature"];
  if ((a3 & 0x40) == 0)
  {
LABEL_11:
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    v20 = *MEMORY[0x277CBC140];
    v22[0] = *MEMORY[0x277CBC148];
    v22[1] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    [v6 addObjectsFromArray:v21];

    if ((a3 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_24:
  [v6 addObject:@"basehash"];
  if ((a3 & 0x80) != 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((a3 & 0x100) != 0)
  {
LABEL_13:
    [v6 addObject:@"lastEditorName"];
  }

LABEL_14:
  os_unfair_lock_lock(&desiredKeysWithMask__lock);
  v10 = desiredKeysWithMask__cache;
  if (!desiredKeysWithMask__cache)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = desiredKeysWithMask__cache;
    desiredKeysWithMask__cache = v11;

    v10 = desiredKeysWithMask__cache;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a3];
  [v10 setObject:v6 forKeyedSubscript:v13];

  os_unfair_lock_unlock(&desiredKeysWithMask__lock);
LABEL_17:
  v14 = v6;

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (uint64_t)sanitizeShortTokenFields
{
  [a1 setBaseToken:0];
  [a1 setRoutingKey:0];

  return [a1 setMutableEncryptedPublicSharingKeyData:0];
}

+ (uint64_t)_validateCKObject:()BRCItemAdditions enhancedDrivePrivacyEnabled:
{
  v5 = a3;
  if (!v5)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 assetTransferOptions];
    v8 = [v7 useMMCSEncryptionV2];
    v9 = [v8 BOOLValue];
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 assetTransferOptions];
    v8 = [v7 useMMCSEncryptionV2];
    if ([v8 BOOLValue])
    {
      v9 = 1;
    }

    else
    {
      v18 = [v6 boundaryKey];
      v9 = v18 != 0;
    }

LABEL_4:

    if (![v6 isReference] || (v9 & 1) != 0)
    {
    }

    else
    {
      v10 = [BRCUserDefaults defaultsForMangledID:0];
      v11 = [v10 allowAssetReferencesOfMMCSV1Assets];

      if (v11)
      {
LABEL_7:
        v12 = 1;
        goto LABEL_17;
      }

      v9 = 0;
    }

    v15 = [BRCUserDefaults defaultsForMangledID:0];
    v16 = [v15 supportsEnhancedDrivePrivacy];

    v12 = (a4 ^ 1 | v9) & (v16 | v9 ^ 1);
    goto LABEL_17;
  }

  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    +[CKRecord(BRCItemAdditions) _validateCKObject:enhancedDrivePrivacyEnabled:];
  }

  v12 = 0;
LABEL_17:

  return v12 & 1;
}

- (uint64_t)validateEnhancedDrivePrivacyFieldsWithSession:()BRCItemAdditions error:
{
  v77[7] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x277CFAE60]);
  v7 = [a1 recordID];
  v8 = [v7 zoneID];
  v9 = [v6 initWithRecordZoneID:v8];

  v55 = v9;
  v10 = [v5 clientZoneByMangledID:v9];
  v11 = [v10 enhancedDrivePrivacyEnabled];

  v77[0] = @"xattr";
  v77[1] = @"pkgManifest";
  v77[2] = @"fileContent";
  v77[3] = @"bookmarkContent";
  v77[4] = @"thumb1024";
  v77[5] = @"pkgContent";
  v77[6] = @"pkgXattrs";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:7];
  v56 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v63;
    *&v14 = 138412546;
    v52 = v14;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v63 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v62 + 1) + 8 * v17);
      v19 = MEMORY[0x277CBC5A0];
      v20 = [a1 objectForKeyedSubscript:{v18, v52}];
      LOBYTE(v19) = [v19 _validateCKObject:v20 enhancedDrivePrivacyEnabled:v11];

      if ((v19 & 1) == 0)
      {
        break;
      }

      if (v11)
      {
        if (([v18 isEqualToString:@"xattr"] & 1) == 0)
        {
          v21 = [a1 objectForKeyedSubscript:v18];

          if (v21)
          {
            [v18 isEqualToString:@"pkgContent"];
            v22 = [a1 objectForKeyedSubscript:v18];
            v23 = [v22 boundaryKey];

            if (v23 && ([v56 containsObject:v23] & 1) == 0)
            {
              if ([v56 count])
              {
                v53 = v5;
                v24 = brc_bread_crumbs();
                v25 = brc_default_log();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
                {
                  *buf = v52;
                  v69 = v18;
                  v70 = 2112;
                  v71 = v24;
                  _os_log_fault_impl(&dword_223E7A000, v25, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %@ has different boundary key then other assets in the record!%@", buf, 0x16u);
                }

                v5 = v53;
              }

              else
              {
                [v56 addObject:v23];
              }
            }
          }
        }
      }

      if (v15 == ++v17)
      {
        v15 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        goto LABEL_20;
      }
    }

    v34 = brc_bread_crumbs();
    v35 = brc_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = "";
      v37 = " not";
      if (!v11)
      {
        v37 = "";
      }

      *buf = 138413058;
      v69 = v18;
      v70 = 2080;
      v71 = v37;
      if (!v11)
      {
        v36 = "n't";
      }

      v72 = 2080;
      v73 = v36;
      v74 = 2112;
      v75 = v34;
      _os_log_impl(&dword_223E7A000, v35, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ is%s in mmcsV2 when it should%s be%@", buf, 0x2Au);
    }

    if (a4)
    {
      v38 = MEMORY[0x277CCA9B8];
      v32 = [a1 objectForKeyedSubscript:v18];
      [v38 brc_errorInvalidParameter:v18 value:v32];
      *a4 = v33 = 0;
      v26 = obj;
      goto LABEL_54;
    }

    v33 = 0;
    v26 = obj;
    goto LABEL_36;
  }

LABEL_20:

  v67[0] = @"mtime";
  v67[1] = @"birthtime";
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
  if (v11)
  {
    v27 = [BRCUserDefaults defaultsForMangledID:0];
    v28 = [v27 timestampRoundingAmount];

    if (v28 > 0x3B)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v32 = v26;
      v41 = [v32 countByEnumeratingWithState:&v58 objects:v66 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v59;
        while (2)
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v59 != v43)
            {
              objc_enumerationMutation(v32);
            }

            v45 = [a1 objectForKeyedSubscript:*(*(&v58 + 1) + 8 * i)];
            if ([v45 unsignedLongLongValue] % v28)
            {
              v46 = brc_bread_crumbs();
              v47 = brc_default_log();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
              {
                [CKRecord(BRCItemAdditions) validateEnhancedDrivePrivacyFieldsWithSession:error:];
              }

              if (a4)
              {
                v48 = MEMORY[0x277CCA9B8];
                v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v28];
                *a4 = [v48 brc_errorInvalidParameter:@"rounding amount" value:v49];
              }

              v33 = 0;
              goto LABEL_53;
            }
          }

          v42 = [v32 countByEnumeratingWithState:&v58 objects:v66 count:16];
          v33 = 1;
          if (v42)
          {
            continue;
          }

          break;
        }

        v26 = v32;
      }

      else
      {
        v33 = 1;
LABEL_53:
        v26 = v32;
      }

      goto LABEL_54;
    }

    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      [CKRecord(BRCItemAdditions) validateEnhancedDrivePrivacyFieldsWithSession:error:];
    }

    if (a4)
    {
      v31 = MEMORY[0x277CCA9B8];
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v28];
      [v31 brc_errorInvalidParameter:@"rounding amount" value:v32];
      *a4 = v33 = 0;
LABEL_54:
      v39 = v55;
      v40 = v56;

      goto LABEL_55;
    }

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

LABEL_36:
  v39 = v55;
  v40 = v56;
LABEL_55:

  v50 = *MEMORY[0x277D85DE8];
  return v33;
}

- (void)brc_fillWithChildBasehashSalt:()BRCItemAdditions
{
  v13 = a3;
  v4 = [BRCUserDefaults defaultsForMangledID:0];
  v5 = [v4 supportsEnhancedDrivePrivacy];

  if (v13 && v5)
  {
    v6 = [MEMORY[0x277CBEA90] brc_generateBogusKey];
    v7 = [v13 isEqualToData:v6];

    if (v7)
    {
      v8 = [a1 pluginFields];
      if (v8)
      {
        v9 = [a1 pluginFields];
        v10 = [v9 mutableCopy];
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
      }

      [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"br_bougusSaltingKey"];
      [a1 setPluginFields:v10];
    }

    v11 = [a1 encryptedValues];
    [v11 setObject:v13 forKeyedSubscript:@"childBasehashSalt"];

    v12 = [v13 brc_truncatedSHA256];
    [a1 setObject:v12 forKeyedSubscript:@"childBasehashSaltValidationKey"];
  }
}

+ (void)rootAppLibraryRecordForAppLibraryID:()BRCItemAdditions zoneID:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (void)_validateCKObject:()BRCItemAdditions enhancedDrivePrivacyEnabled:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)validateEnhancedDrivePrivacyFieldsWithSession:()BRCItemAdditions error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)validateEnhancedDrivePrivacyFieldsWithSession:()BRCItemAdditions error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Rounding amount should be at least 1 minute%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end