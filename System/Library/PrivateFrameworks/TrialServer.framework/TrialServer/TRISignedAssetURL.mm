@interface TRISignedAssetURL
+ (id)allReferencedCKRecordKeys;
+ (id)assetURLFromCKRecord:(id)record assetId:(id *)id;
+ (id)assetURLWithUrl:(id)url signature:(id)signature;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAssetURL:(id)l;
- (TRISignedAssetURL)initWithUrl:(id)url signature:(id)signature;
- (id)copyWithReplacementSignature:(id)signature;
- (id)copyWithReplacementUrl:(id)url;
- (id)description;
@end

@implementation TRISignedAssetURL

+ (id)allReferencedCKRecordKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D73880];
  v7[0] = *MEMORY[0x277D73888];
  v7[1] = v2;
  v3 = *MEMORY[0x277D73898];
  v7[2] = *MEMORY[0x277D73890];
  v7[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)assetURLFromCKRecord:(id)record assetId:(id *)id
{
  v42 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  values = [recordCopy values];
  v9 = values;
  if (values)
  {
    v10 = [values triStringValueForField:*MEMORY[0x277D73888] isNestedValue:0];
    v11 = v10;
    if (!v10 || ![v10 length])
    {
      v12 = TRILogCategory_Server();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        recordID = [recordCopy recordID];
        *buf = 138412290;
        v39 = recordID;
        _os_log_fault_impl(&dword_26F567000, v12, OS_LOG_TYPE_FAULT, "Asset in CloudKit record %@ has missing or corrupt assetId.", buf, 0xCu);
      }

      v19 = 0;
      goto LABEL_41;
    }

    v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277D73880]];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      fileURL = TRILogCategory_Server();
      if (os_log_type_enabled(fileURL, OS_LOG_TYPE_FAULT))
      {
        recordID2 = [recordCopy recordID];
        *buf = 138543618;
        v39 = v11;
        v40 = 2112;
        v41 = recordID2;
        _os_log_fault_impl(&dword_26F567000, fileURL, OS_LOG_TYPE_FAULT, "Asset %{public}@ in CloudKit record %@ has missing or corrupt asset.", buf, 0x16u);
      }

      v19 = 0;
      goto LABEL_40;
    }

    fileURL = [v12 fileURL];
    if (!fileURL)
    {
      v14 = TRILogCategory_Server();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [recordCopy recordID];
        v31 = v30 = v14;
        *buf = 138543618;
        v39 = v11;
        v40 = 2112;
        v41 = v31;
        _os_log_fault_impl(&dword_26F567000, v30, OS_LOG_TYPE_FAULT, "Asset %{public}@ in CloudKit record %@ has missing fileURL.", buf, 0x16u);

        v14 = v30;
      }

      v19 = 0;
      goto LABEL_39;
    }

    v14 = [v9 triStringValueForField:*MEMORY[0x277D73890] isNestedValue:0];
    if (v14)
    {
      v15 = [v9 triDataForField:*MEMORY[0x277D73898]];
      if (v15)
      {
        v16 = v15;
        v37 = [TRISignatureKey keyFromData:v15];
        if (v37)
        {
          v36 = v14;
          path = [fileURL path];
          if (!path)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"TRISignedAssetURL+CloudKit.m" lineNumber:83 description:{@"Expression was unexpectedly nil/false: %@", @"assetURL.path"}];
          }

          v18 = [v37 validateBase64Signature:v36 forFile:path];

          if (v18)
          {

            objc_storeStrong(id, v11);
            v14 = v36;
            v19 = [[TRISignedAssetURL alloc] initWithUrl:fileURL signature:v36];
LABEL_38:

LABEL_39:
LABEL_40:

LABEL_41:
            goto LABEL_42;
          }

          v25 = TRILogCategory_Server();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            recordID3 = [recordCopy recordID];
            *buf = 138543618;
            v39 = v11;
            v40 = 2112;
            v41 = recordID3;
            _os_log_fault_impl(&dword_26F567000, v25, OS_LOG_TYPE_FAULT, "Asset %{public}@ from CloudKit record %@ has an invalid signature.", buf, 0x16u);
          }

          v14 = v36;
        }

        else
        {
          v25 = TRILogCategory_Server();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            [recordCopy recordID];
            v27 = v26 = v14;
            *buf = 138543618;
            v39 = v11;
            v40 = 2112;
            v41 = v27;
            _os_log_fault_impl(&dword_26F567000, v25, OS_LOG_TYPE_FAULT, "Asset %{public}@ in CloudKit record %@ has public certificate which cannot be loaded.", buf, 0x16u);

            v14 = v26;
          }
        }
      }

      else
      {
        v23 = TRILogCategory_Server();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          [recordCopy recordID];
          v33 = v32 = v14;
          *buf = 138543618;
          v39 = v11;
          v40 = 2112;
          v41 = v33;
          _os_log_fault_impl(&dword_26F567000, v23, OS_LOG_TYPE_FAULT, "Asset %{public}@ in CloudKit record %@ has missing or corrupt public certificate.", buf, 0x16u);

          v14 = v32;
        }

        v16 = 0;
      }
    }

    else
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        recordID4 = [recordCopy recordID];
        *buf = 138543618;
        v39 = v11;
        v40 = 2112;
        v41 = recordID4;
        _os_log_fault_impl(&dword_26F567000, v16, OS_LOG_TYPE_FAULT, "Asset %{public}@ in CloudKit record %@ has missing or corrupt asset signature.", buf, 0x16u);

        v14 = 0;
      }
    }

    v19 = 0;
    goto LABEL_38;
  }

  v11 = TRILogCategory_Server();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    recordID5 = [recordCopy recordID];
    *buf = 138412290;
    v39 = recordID5;
    _os_log_fault_impl(&dword_26F567000, v11, OS_LOG_TYPE_FAULT, "Could not create Asset artifact from CloudKit record %@.", buf, 0xCu);
  }

  v19 = 0;
LABEL_42:

  v28 = *MEMORY[0x277D85DE8];

  return v19;
}

- (TRISignedAssetURL)initWithUrl:(id)url signature:(id)signature
{
  urlCopy = url;
  signatureCopy = signature;
  v10 = signatureCopy;
  if (urlCopy)
  {
    if (signatureCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:965 description:{@"Invalid parameter not satisfying: %@", @"url != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:966 description:{@"Invalid parameter not satisfying: %@", @"signature != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRISignedAssetURL;
  v11 = [(TRISignedAssetURL *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_url, url);
    objc_storeStrong(&v12->_signature, signature);
  }

  return v12;
}

+ (id)assetURLWithUrl:(id)url signature:(id)signature
{
  signatureCopy = signature;
  urlCopy = url;
  v8 = [[self alloc] initWithUrl:urlCopy signature:signatureCopy];

  return v8;
}

- (id)copyWithReplacementUrl:(id)url
{
  urlCopy = url;
  v5 = [objc_alloc(objc_opt_class()) initWithUrl:urlCopy signature:self->_signature];

  return v5;
}

- (id)copyWithReplacementSignature:(id)signature
{
  signatureCopy = signature;
  v5 = [objc_alloc(objc_opt_class()) initWithUrl:self->_url signature:signatureCopy];

  return v5;
}

- (BOOL)isEqualToAssetURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (!lCopy)
  {
    goto LABEL_8;
  }

  v6 = self->_url == 0;
  v7 = [lCopy url];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  url = self->_url;
  if (url)
  {
    v10 = [v5 url];
    v11 = [(NSURL *)url isEqual:v10];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_signature == 0;
  signature = [v5 signature];
  v14 = signature != 0;

  if (v12 == v14)
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    signature = self->_signature;
    if (signature)
    {
      signature2 = [v5 signature];
      v17 = [(NSString *)signature isEqual:signature2];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRISignedAssetURL *)self isEqualToAssetURL:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRISignedAssetURL | url:%@ signature:%@>", self->_url, self->_signature];

  return v2;
}

@end