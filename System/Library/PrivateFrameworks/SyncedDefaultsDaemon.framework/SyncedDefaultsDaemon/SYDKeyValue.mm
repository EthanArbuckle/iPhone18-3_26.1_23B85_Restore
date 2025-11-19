@interface SYDKeyValue
+ (BOOL)keyValueRecordHasAssetWithoutFile:(id)a3;
+ (id)keyFromKeyValueRecord:(id)a3;
+ (id)keyFromUnencryptedKeyValueRecordName:(id)a3;
+ (id)recordFieldKeyForValueModificationDateInStoreType:(int64_t)a3;
+ (id)recordNameForUnencryptedKey:(id)a3;
+ (void)deleteFilesForAssetsInKeyValueRecord:(id)a3;
- (BOOL)updateWithServerRecord:(id)a3;
- (CKRecord)serverSystemFieldsRecord;
- (CKRecordID)recordID;
- (NSString)key;
- (NSString)storeIdentifier;
- (SYDKeyValue)initWithKey:(id)a3 storeIdentifier:(id)a4;
- (id)description;
- (id)recordRepresentationForStoreType:(int64_t)a3;
- (id)redactedDescription;
- (void)markForDeletion;
- (void)mergeDataFromRecord:(id)a3;
- (void)serverSystemFieldsRecord;
- (void)setServerSystemFieldsRecord:(id)a3;
- (void)setValue:(id)a3;
- (void)setValue:(id)a3 withModificationDate:(id)a4;
@end

@implementation SYDKeyValue

- (NSString)storeIdentifier
{
  v2 = [(SYDKeyValue *)self keyID];
  v3 = [v2 storeIdentifier];

  return v3;
}

- (NSString)key
{
  v2 = [(SYDKeyValue *)self keyID];
  v3 = [v2 key];

  return v3;
}

- (CKRecordID)recordID
{
  v3 = [(SYDKeyValue *)self recordName];
  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Trying to get a record ID for a keyValue that has not been assigned a record name yet: %@", self}];
  }

  v4 = [(SYDKeyValue *)self storeIdentifier];
  v5 = SYDStoreZoneID(v4);

  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Trying to get a record ID for a keyValue that does not have an associated zoneID: %@", self}];
  }

  v6 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v3 zoneID:v5];

  return v6;
}

- (SYDKeyValue)initWithKey:(id)a3 storeIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = SYDKeyValue;
  v8 = [(SYDKeyValue *)&v18 init];
  if (v8)
  {
    if (![v6 length])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Trying to init a keyValue without a key: %@", v6}];
    }

    if (![v7 length])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Trying to init a keyValue without a store identifier: %@", v7}];
    }

    v9 = [[SYDKeyID alloc] initWithKey:v6 storeIdentifier:v7];
    keyID = v8->_keyID;
    v8->_keyID = v9;

    v11 = v8->_keyID;
    if (!v11)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Trying to init a keyValue without a keyID: %@", 0}];
      v11 = v8->_keyID;
    }

    v12 = [(SYDKeyID *)v11 key];
    v13 = [v12 length];

    if (!v13)
    {
      v14 = MEMORY[0x277CBEAD8];
      v15 = *MEMORY[0x277CBE658];
      v16 = [(SYDKeyID *)v8->_keyID key];
      [v14 raise:v15 format:{@"Trying to init a keyValue without a keyID.key: %@", v16}];
    }
  }

  return v8;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SYDKeyValue *)self key];
  v7 = [(SYDKeyValue *)self storeIdentifier];
  v8 = [(SYDKeyValue *)self recordName];
  if (v8)
  {
    v9 = @" recordName=";
  }

  else
  {
    v9 = &stru_287CEF040;
  }

  v10 = [(SYDKeyValue *)self recordName];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_287CEF040;
  }

  [v3 appendFormat:@"<%@: %p; key=%@ storeIdentifier=%@%@%@>", v5, self, v6, v7, v9, v12];

  return v3;
}

- (id)redactedDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SYDKeyValue *)self storeIdentifier];
  v7 = [(SYDKeyValue *)self recordName];
  if (v7)
  {
    v8 = @" recordName=";
  }

  else
  {
    v8 = &stru_287CEF040;
  }

  v9 = [(SYDKeyValue *)self recordName];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_287CEF040;
  }

  [v3 appendFormat:@"<%@: %p; storeIdentifier=%@%@%@>", v5, self, v6, v8, v11];

  return v3;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_value != v4)
  {
    v12 = v4;
    if (v4 && (v6 = [MEMORY[0x277CCAC58] propertyList:v4 isValidForFormat:200], v5 = v12, (v6 & 1) == 0))
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE660];
      v11 = objc_opt_class();
      value = NSStringFromClass(v11);
      [v9 raise:v10 format:{@"Tried to set invalid value '%@' of class '%@'", v12, value}];
    }

    else
    {
      v7 = v5;
      value = self->_value;
      self->_value = v7;
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setValue:(id)a3 withModificationDate:(id)a4
{
  v6 = a4;
  [(SYDKeyValue *)self setValue:a3];
  [(SYDKeyValue *)self setValueModificationDate:v6];
}

- (void)markForDeletion
{
  [(SYDKeyValue *)self setValue:0];
  v3 = [MEMORY[0x277CBEAA8] date];
  [(SYDKeyValue *)self setValueModificationDate:v3];
}

- (CKRecord)serverSystemFieldsRecord
{
  v2 = [(SYDKeyValue *)self serverSystemFieldsRecordData];
  if (v2)
  {
    v8 = 0;
    v3 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v2 error:&v8];
    v4 = v8;
    v5 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v3];
    if (v4)
    {
      v6 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [SYDKeyValue serverSystemFieldsRecord];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setServerSystemFieldsRecord:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v4 encodeSystemFieldsWithCoder:v5];
    v6 = [v5 encodedData];
    if (v6)
    {
      [(SYDKeyValue *)self setServerSystemFieldsRecordData:v6];
    }

    else
    {
      v7 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [SYDKeyValue setServerSystemFieldsRecord:v4];
      }
    }
  }

  else
  {
    [(SYDKeyValue *)self setServerSystemFieldsRecordData:0];
  }
}

- (BOOL)updateWithServerRecord:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v6 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_26C384000, v6, OS_LOG_TYPE_INFO, "No record provided to compare.", &v19, 2u);
    }

    goto LABEL_14;
  }

  v5 = [(SYDKeyValue *)self serverSystemFieldsRecord];
  v6 = v5;
  if (!v5)
  {
    v11 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SYDKeyValue updateWithServerRecord:v4];
    }

    goto LABEL_10;
  }

  v7 = [v5 recordID];
  v8 = [v4 recordID];
  v9 = [v7 isEqual:v8];

  v10 = SYDGetCloudKitLog();
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = [v6 recordID];
      v14 = [v13 syd_shortDescription];
      v15 = [v4 recordID];
      v16 = [v15 syd_shortDescription];
      v19 = 138412546;
      v20 = v14;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_26C384000, v11, OS_LOG_TYPE_INFO, "Mismatched recordIDs. Keeping current record: %@, ignoring new record: %@", &v19, 0x16u);
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(SYDKeyValue *)v6 updateWithServerRecord:v4, v11];
  }

LABEL_10:

  [(SYDKeyValue *)self setServerSystemFieldsRecord:v4];
  v12 = 1;
LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)mergeDataFromRecord:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SYDKeyValue mergeDataFromRecord:?];
  }

  v6 = [v4 recordType];
  v7 = [v6 isEqualToString:@"KVSRecord"];

  if (v7)
  {
    v8 = 0;
LABEL_7:
    v11 = [(SYDKeyValue *)self serverSystemFieldsRecord];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 recordType];
      v14 = [v4 recordType];
      v15 = [v13 isEqualToString:v14];

      if ((v15 & 1) == 0)
      {
        v21 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [(SYDKeyValue *)v4 mergeDataFromRecord:v12];
        }

        goto LABEL_73;
      }
    }

    v16 = [(SYDKeyValue *)self serverSystemFieldsRecord];
    v17 = [v16 modificationDate];
    v18 = [v4 modificationDate];
    v19 = [v17 compare:v18];

    if (v19 == -1)
    {
      v20 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [SYDKeyValue mergeDataFromRecord:v4];
      }
    }

    [(SYDKeyValue *)self updateWithServerRecord:v4];
    v21 = [objc_opt_class() recordFieldKeyForValueModificationDateInStoreType:v8];
    v22 = [v4 objectForKeyedSubscript:v21];
    if (v7)
    {
      v23 = [v4 objectForKeyedSubscript:@"value"];
      v24 = @"assetValue";
    }

    else
    {
      v25 = [v4 encryptedValues];
      v23 = [v25 objectForKeyedSubscript:@"valueData"];

      v24 = @"valueDataAsset";
    }

    v26 = [v4 objectForKeyedSubscript:v24];
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_28:
        if (!v23 && v26)
        {
          v30 = [v26 fileURL];

          if (!v30)
          {
            v38 = [v26 assetContent];

            if (v38)
            {
              v23 = [v26 assetContent];
              if (v23)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v39 = SYDGetCloudKitLog();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                [SYDKeyValue mergeDataFromRecord:v4];
              }
            }

            goto LABEL_47;
          }

          v31 = MEMORY[0x277CBEA90];
          v32 = [v26 fileURL];
          v50 = 0;
          v23 = [v31 dataWithContentsOfURL:v32 options:0 error:&v50];
          v33 = v50;

          if (v33)
          {
            v34 = SYDGetCloudKitLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [SYDKeyValue mergeDataFromRecord:];
            }
          }
        }

        if (v23)
        {
LABEL_37:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_50;
          }

          v35 = SYDGetCloudKitLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            *buf = 138412290;
            v52 = v37;
            _os_log_impl(&dword_26C384000, v35, OS_LOG_TYPE_INFO, "Record's value data was of the wrong class (%@). Expected NSData.", buf, 0xCu);
          }

LABEL_49:
          v23 = 0;
LABEL_50:
          if (!v22)
          {
            goto LABEL_72;
          }

          v40 = [(SYDKeyValue *)self valueModificationDate];
          v41 = v40;
          if (v40)
          {
            v42 = [v40 compare:v22];
            if (v42)
            {
              if (v42 == -1)
              {
                v43 = SYDGetCloudKitLog();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                {
                  [SYDKeyValue mergeDataFromRecord:];
                }

                goto LABEL_58;
              }

LABEL_71:

              goto LABEL_72;
            }

            if (v19 != -1)
            {
              goto LABEL_71;
            }

            v43 = SYDGetCloudKitLog();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              [SYDKeyValue mergeDataFromRecord:];
            }
          }

          else
          {
            v43 = SYDGetCloudKitLog();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              [SYDKeyValue mergeDataFromRecord:];
            }
          }

LABEL_58:

          if (v23)
          {
            v44 = SYDGetCloudKitLog();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              [SYDKeyValue mergeDataFromRecord:];
            }

            v49 = 0;
            v45 = [MEMORY[0x277CCAC58] propertyListWithData:v23 options:0 format:0 error:&v49];
            v46 = v49;
            v41 = v46;
            if (!v45 || v46)
            {
              v47 = SYDGetCloudKitLog();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                [SYDKeyValue mergeDataFromRecord:];
              }
            }

            else
            {
              [(SYDKeyValue *)self setValue:v45];
              [(SYDKeyValue *)self setValueModificationDate:v22];
            }

            goto LABEL_71;
          }

LABEL_72:

LABEL_73:
          goto LABEL_74;
        }

LABEL_47:
        v23 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_26C384000, v23, OS_LOG_TYPE_INFO, "No value data in record", buf, 2u);
        }

        goto LABEL_49;
      }

      v27 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138412290;
        v52 = v29;
        _os_log_impl(&dword_26C384000, v27, OS_LOG_TYPE_INFO, "Record's modification date was of the wrong class (%@). Expected NSDate.", buf, 0xCu);
      }
    }

    else
    {
      v22 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26C384000, v22, OS_LOG_TYPE_INFO, "No modification date in record", buf, 2u);
      }
    }

    v22 = 0;
    goto LABEL_28;
  }

  v9 = [v4 recordType];
  v10 = [v9 isEqualToString:@"EncryptedKeyValue"];

  if (v10)
  {
    v8 = 1;
    goto LABEL_7;
  }

  v12 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [SYDKeyValue mergeDataFromRecord:v4];
  }

LABEL_74:

  v48 = *MEMORY[0x277D85DE8];
}

- (id)recordRepresentationForStoreType:(int64_t)a3
{
  v5 = [(SYDKeyValue *)self serverSystemFieldsRecord];
  v6 = v5;
  if (a3 <= 3)
  {
    v7 = off_279D2F9C8[a3];
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = objc_alloc(MEMORY[0x277CBC5A0]);
    v13 = [(SYDKeyValue *)self recordID];
    v6 = [v12 initWithRecordType:v7 recordID:v13];

    goto LABEL_9;
  }

  v7 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  v8 = [v5 recordType];
  v9 = [v8 isEqualToString:v7];

  if (v9)
  {
LABEL_9:
    v14 = MEMORY[0x277CCAC58];
    v15 = [(SYDKeyValue *)self value];
    v33 = 0;
    v16 = [v14 dataWithPropertyList:v15 format:200 options:0 error:&v33];
    v10 = v33;

    if (!v16 || v10)
    {
      v17 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [SYDKeyValue recordRepresentationForStoreType:];
      }
    }

    if ([v16 length] <= 0x19000)
    {
      v21 = 0;
    }

    else
    {
      v18 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [(SYDKeyValue *)v6 recordRepresentationForStoreType:v16];
      }

      v19 = objc_alloc(MEMORY[0x277CBC190]);
      v20 = [*MEMORY[0x277CE1E38] identifier];
      v21 = [v19 initWithAssetContent:v16 itemTypeHint:v20];
    }

    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v16;
    }

    v23 = v22;
    if (!(v21 | v23))
    {
      v30 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        [SYDKeyValue recordRepresentationForStoreType:v6];
      }

      v11 = 0;
      goto LABEL_36;
    }

    if ((a3 - 1) >= 3)
    {
      if (a3)
      {
        goto LABEL_35;
      }

      [v6 setObject:v23 forKeyedSubscript:@"value"];
      [v6 setObject:v21 forKeyedSubscript:@"assetValue"];
      v31 = [(SYDKeyValue *)self valueModificationDate];

      if (!v31)
      {
        goto LABEL_35;
      }

      v28 = [(SYDKeyValue *)self valueModificationDate];
      [v6 setObject:v28 forKeyedSubscript:@"localModificationDate"];
    }

    else
    {
      v24 = [v6 encryptedValues];
      [v24 setObject:v23 forKeyedSubscript:@"valueData"];

      [v6 setObject:v21 forKeyedSubscript:@"valueDataAsset"];
      v25 = [(SYDKeyValue *)self valueModificationDate];

      if (v25)
      {
        v26 = [(SYDKeyValue *)self valueModificationDate];
        [v6 setObject:v26 forKeyedSubscript:@"valueModificationDate"];
      }

      v27 = [(SYDKeyValue *)self key];

      if (!v27)
      {
        goto LABEL_35;
      }

      v28 = [(SYDKeyValue *)self key];
      v29 = [v6 encryptedValues];
      [v29 setObject:v28 forKeyedSubscript:@"key"];
    }

LABEL_35:
    v11 = v6;
LABEL_36:

    goto LABEL_37;
  }

  v10 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    [(SYDKeyValue *)v7 recordRepresentationForStoreType:v6];
  }

  v11 = 0;
LABEL_37:

  return v11;
}

+ (id)keyFromKeyValueRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordType];
  v6 = [v5 isEqualToString:@"KVSRecord"];

  if (v6)
  {
    v7 = [v4 recordID];
    v8 = [v7 recordName];
    v9 = [a1 keyFromUnencryptedKeyValueRecordName:v8];

    goto LABEL_5;
  }

  v10 = [v4 recordType];
  v11 = [v10 isEqualToString:@"EncryptedKeyValue"];

  if (v11)
  {
    v7 = [v4 encryptedValues];
    v9 = [v7 objectForKeyedSubscript:@"key"];
LABEL_5:

    if (v9)
    {
      goto LABEL_9;
    }
  }

  v12 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [SYDKeyValue keyFromKeyValueRecord:v4];
  }

  v9 = 0;
LABEL_9:

  return v9;
}

+ (id)keyFromUnencryptedKeyValueRecordName:(id)a3
{
  v3 = MEMORY[0x277CBEA90];
  v4 = a3;
  v5 = [[v3 alloc] initWithBase64EncodedString:v4 options:0];

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];

  return v6;
}

+ (id)recordNameForUnencryptedKey:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v4 = [v3 base64EncodedStringWithOptions:0];

  return v4;
}

+ (void)deleteFilesForAssetsInKeyValueRecord:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (deleteFilesForAssetsInKeyValueRecord__onceToken != -1)
  {
    +[SYDKeyValue deleteFilesForAssetsInKeyValueRecord:];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = deleteFilesForAssetsInKeyValueRecord__assetFieldKeys;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v25;
    *&v6 = 138412290;
    v22 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:{v10, v22}];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 fileURL];

          if (v13)
          {
            v14 = SYDGetCloudKitLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v20 = [v3 recordID];
              *buf = 138412546;
              v29 = v10;
              v30 = 2112;
              v31 = v20;
              _os_log_debug_impl(&dword_26C384000, v14, OS_LOG_TYPE_DEBUG, "Deleting file for asset (%@) in key value record %@", buf, 0x16u);
            }

            v15 = [MEMORY[0x277CCAA00] defaultManager];
            v16 = [v12 fileURL];
            v23 = 0;
            v17 = [v15 removeItemAtURL:v16 error:&v23];
            v18 = v23;

            if ((v17 & 1) == 0)
            {
              v19 = SYDGetCloudKitLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = v22;
                v29 = v18;
                _os_log_error_impl(&dword_26C384000, v19, OS_LOG_TYPE_ERROR, "Failed to delete asset file: %@", buf, 0xCu);
              }
            }
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v7);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __52__SYDKeyValue_deleteFilesForAssetsInKeyValueRecord___block_invoke()
{
  v0 = deleteFilesForAssetsInKeyValueRecord__assetFieldKeys;
  deleteFilesForAssetsInKeyValueRecord__assetFieldKeys = &unk_287CF24D8;
}

+ (BOOL)keyValueRecordHasAssetWithoutFile:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"assetValue"];
  if (v4 || ([v3 objectForKeyedSubscript:@"valueDataAsset"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 fileURL];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)recordFieldKeyForValueModificationDateInStoreType:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return @"localModificationDate";
  }

  else
  {
    return @"valueModificationDate";
  }
}

- (void)serverSystemFieldsRecord
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error unarchiving server record: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setServerSystemFieldsRecord:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateWithServerRecord:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [a1 recordID];
  v6 = [v5 syd_shortDescription];
  v7 = [a2 recordID];
  v8 = [v7 syd_shortDescription];
  v10 = 138412546;
  v11 = v6;
  v12 = 2112;
  v13 = v8;
  _os_log_debug_impl(&dword_26C384000, a3, OS_LOG_TYPE_DEBUG, "Replacing current system fields record: %@ with new system fields record: %@", &v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateWithServerRecord:(void *)a1 .cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  v2 = [v1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)mergeDataFromRecord:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 key];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)mergeDataFromRecord:(void *)a1 .cold.2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordType];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)mergeDataFromRecord:(void *)a1 .cold.3(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a1 recordType];
  v4 = [a2 recordType];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v5, v6, OS_LOG_TYPE_ERROR, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)mergeDataFromRecord:(void *)a1 .cold.4(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  v2 = [v1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)mergeDataFromRecord:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error loading data from asset: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)mergeDataFromRecord:(void *)a1 .cold.6(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)mergeDataFromRecord:.cold.11()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error decoding value data from record: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)recordRepresentationForStoreType:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a2 recordID];
  v4 = [v3 recordName];
  v5 = [a2 recordType];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v6, v7, OS_LOG_TYPE_FAULT, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)recordRepresentationForStoreType:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error generating plist value: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)recordRepresentationForStoreType:(void *)a1 .cold.3(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = [a1 recordID];
  [a2 length];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)recordRepresentationForStoreType:(void *)a1 .cold.4(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)keyFromKeyValueRecord:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end