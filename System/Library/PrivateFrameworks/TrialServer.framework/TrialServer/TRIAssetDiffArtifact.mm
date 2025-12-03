@interface TRIAssetDiffArtifact
+ (BOOL)_signature:(id)_signature onFileURL:(id)l fromCloudKitRecordId:(id)id isValidUsingPublicCertificate:(id)certificate;
+ (id)allReferencedCKRecordKeys;
+ (id)artifactFromCKRecord:(id)record;
+ (id)artifactWithSourceAssetId:(id)id destAssetId:(id)assetId diffSignature:(id)signature diff:(id)diff diffSize:(int64_t)size publicCertificate:(id)certificate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToArtifact:(id)artifact;
- (TRIAssetDiffArtifact)initWithSourceAssetId:(id)id destAssetId:(id)assetId diffSignature:(id)signature diff:(id)diff diffSize:(int64_t)size publicCertificate:(id)certificate;
- (id)copyWithReplacementDestAssetId:(id)id;
- (id)copyWithReplacementDiff:(id)diff;
- (id)copyWithReplacementDiffSignature:(id)signature;
- (id)copyWithReplacementDiffSize:(int64_t)size;
- (id)copyWithReplacementPublicCertificate:(id)certificate;
- (id)copyWithReplacementSourceAssetId:(id)id;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIAssetDiffArtifact

+ (id)allReferencedCKRecordKeys
{
  v8[6] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D73868];
  v8[0] = *MEMORY[0x277D73870];
  v8[1] = v2;
  v3 = *MEMORY[0x277D73850];
  v8[2] = *MEMORY[0x277D73858];
  v8[3] = v3;
  v4 = *MEMORY[0x277D73878];
  v8[4] = *MEMORY[0x277D73860];
  v8[5] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:6];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)artifactFromCKRecord:(id)record
{
  v37 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __55__TRIAssetDiffArtifact_CloudKit__artifactFromCKRecord___block_invoke;
  v33[3] = &unk_279DDEF30;
  v5 = recordCopy;
  v34 = v5;
  v6 = MEMORY[0x2743948D0](v33);
  values = [v5 values];
  v8 = values;
  if (!values)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      recordID = [v5 recordID];
      *buf = 138412290;
      v36 = recordID;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Could not create AssetDiff artifact from CloudKit record %@.", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v9 = *MEMORY[0x277D73870];
  v10 = [values triStringValueForField:*MEMORY[0x277D73870] isNestedValue:0];
  if (!v10)
  {
    v6[2](v6, v9);
LABEL_17:
    v20 = 0;
    goto LABEL_35;
  }

  v11 = *MEMORY[0x277D73868];
  v12 = [v8 triStringValueForField:*MEMORY[0x277D73868] isNestedValue:0];
  if (v12)
  {
    v13 = *MEMORY[0x277D73858];
    v14 = [v8 triStringValueForField:*MEMORY[0x277D73858] isNestedValue:0];
    if (!v14)
    {
      v6[2](v6, v13);
      v20 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v15 = *MEMORY[0x277D73850];
    v16 = [v8 objectForKeyedSubscript:*MEMORY[0x277D73850]];
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      (v6)[2](v6, v15);
      v20 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v17 = *MEMORY[0x277D73860];
    v32 = [v8 triNumberValueForField:*MEMORY[0x277D73860] isNestedValue:0];
    if (!v32)
    {
      v6[2](v6, v17);
      v20 = 0;
LABEL_31:

      goto LABEL_32;
    }

    v18 = *MEMORY[0x277D73878];
    v31 = [v8 triDataForField:*MEMORY[0x277D73878]];
    if (!v31)
    {
      v6[2](v6, v18);
      v20 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v30 = TRIValidateAssetId();
    v19 = TRIValidateAssetId();
    v20 = 0;
    if (!v30 || !v19)
    {
LABEL_29:

      goto LABEL_30;
    }

    v29 = v19;
    fileURL = [v16 fileURL];
    if (fileURL)
    {
      recordID2 = [v5 recordID];
      v23 = [self _signature:v14 onFileURL:fileURL fromCloudKitRecordId:recordID2 isValidUsingPublicCertificate:v31];

      if (v23)
      {
        v24 = fileURL;
        v20 = -[TRIAssetDiffArtifact initWithSourceAssetId:destAssetId:diffSignature:diff:diffSize:publicCertificate:]([TRIAssetDiffArtifact alloc], "initWithSourceAssetId:destAssetId:diffSignature:diff:diffSize:publicCertificate:", v30, v29, v14, fileURL, [v32 longLongValue], v31);
LABEL_28:

        v19 = v29;
        goto LABEL_29;
      }

      v24 = fileURL;
    }

    else
    {
      v24 = 0;
      v26 = TRILogCategory_Server();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v15;
        _os_log_error_impl(&dword_26F567000, v26, OS_LOG_TYPE_ERROR, "CKAsset for %@ has no fileURL.", buf, 0xCu);
      }
    }

    v20 = 0;
    goto LABEL_28;
  }

  v6[2](v6, v11);
  v20 = 0;
LABEL_34:

LABEL_35:
  v27 = *MEMORY[0x277D85DE8];

  return v20;
}

void __55__TRIAssetDiffArtifact_CloudKit__artifactFromCKRecord___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) recordID];
    v7 = 138412546;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "AssetDiff in CloudKit record %@ has missing or corrupt %{public}@.", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_signature:(id)_signature onFileURL:(id)l fromCloudKitRecordId:(id)id isValidUsingPublicCertificate:(id)certificate
{
  v24 = *MEMORY[0x277D85DE8];
  _signatureCopy = _signature;
  lCopy = l;
  idCopy = id;
  v14 = [TRISignatureKey keyFromData:certificate];
  if (!v14)
  {
LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  path = [lCopy path];
  if (!path)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAssetDiffArtifact+CloudKit.m" lineNumber:122 description:{@"Expression was unexpectedly nil/false: %@", @"URL.path"}];
  }

  v16 = [v14 validateBase64Signature:_signatureCopy forFile:path];

  if ((v16 & 1) == 0)
  {
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = idCopy;
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Unable to validate signature on assetDiff from CKRecordID %@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v17 = 1;
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (TRIAssetDiffArtifact)initWithSourceAssetId:(id)id destAssetId:(id)assetId diffSignature:(id)signature diff:(id)diff diffSize:(int64_t)size publicCertificate:(id)certificate
{
  idCopy = id;
  assetIdCopy = assetId;
  signatureCopy = signature;
  diffCopy = diff;
  certificateCopy = certificate;
  certificateCopy2 = certificate;
  if (idCopy)
  {
    if (assetIdCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:2345 description:{@"Invalid parameter not satisfying: %@", @"sourceAssetId != nil"}];

    if (assetIdCopy)
    {
LABEL_3:
      if (signatureCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:2346 description:{@"Invalid parameter not satisfying: %@", @"destAssetId != nil"}];

  if (signatureCopy)
  {
LABEL_4:
    if (diffCopy)
    {
      goto LABEL_5;
    }

LABEL_12:
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:2348 description:{@"Invalid parameter not satisfying: %@", @"diff != nil"}];

    if (certificateCopy2)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:2347 description:{@"Invalid parameter not satisfying: %@", @"diffSignature != nil"}];

  if (!diffCopy)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (certificateCopy2)
  {
    goto LABEL_6;
  }

LABEL_13:
  currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:2349 description:{@"Invalid parameter not satisfying: %@", @"publicCertificate != nil"}];

LABEL_6:
  v30.receiver = self;
  v30.super_class = TRIAssetDiffArtifact;
  v18 = [(TRIAssetDiffArtifact *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sourceAssetId, id);
    objc_storeStrong(&v19->_destAssetId, assetId);
    objc_storeStrong(&v19->_diffSignature, signature);
    objc_storeStrong(&v19->_diff, diff);
    v19->_diffSize = size;
    objc_storeStrong(&v19->_publicCertificate, certificateCopy);
  }

  return v19;
}

+ (id)artifactWithSourceAssetId:(id)id destAssetId:(id)assetId diffSignature:(id)signature diff:(id)diff diffSize:(int64_t)size publicCertificate:(id)certificate
{
  certificateCopy = certificate;
  diffCopy = diff;
  signatureCopy = signature;
  assetIdCopy = assetId;
  idCopy = id;
  v19 = [[self alloc] initWithSourceAssetId:idCopy destAssetId:assetIdCopy diffSignature:signatureCopy diff:diffCopy diffSize:size publicCertificate:certificateCopy];

  return v19;
}

- (id)copyWithReplacementSourceAssetId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithSourceAssetId:idCopy destAssetId:self->_destAssetId diffSignature:self->_diffSignature diff:self->_diff diffSize:self->_diffSize publicCertificate:self->_publicCertificate];

  return v5;
}

- (id)copyWithReplacementDestAssetId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithSourceAssetId:self->_sourceAssetId destAssetId:idCopy diffSignature:self->_diffSignature diff:self->_diff diffSize:self->_diffSize publicCertificate:self->_publicCertificate];

  return v5;
}

- (id)copyWithReplacementDiffSignature:(id)signature
{
  signatureCopy = signature;
  v5 = [objc_alloc(objc_opt_class()) initWithSourceAssetId:self->_sourceAssetId destAssetId:self->_destAssetId diffSignature:signatureCopy diff:self->_diff diffSize:self->_diffSize publicCertificate:self->_publicCertificate];

  return v5;
}

- (id)copyWithReplacementDiff:(id)diff
{
  diffCopy = diff;
  v5 = [objc_alloc(objc_opt_class()) initWithSourceAssetId:self->_sourceAssetId destAssetId:self->_destAssetId diffSignature:self->_diffSignature diff:diffCopy diffSize:self->_diffSize publicCertificate:self->_publicCertificate];

  return v5;
}

- (id)copyWithReplacementDiffSize:(int64_t)size
{
  v5 = objc_alloc(objc_opt_class());
  sourceAssetId = self->_sourceAssetId;
  destAssetId = self->_destAssetId;
  diffSignature = self->_diffSignature;
  diff = self->_diff;
  publicCertificate = self->_publicCertificate;

  return [v5 initWithSourceAssetId:sourceAssetId destAssetId:destAssetId diffSignature:diffSignature diff:diff diffSize:size publicCertificate:publicCertificate];
}

- (id)copyWithReplacementPublicCertificate:(id)certificate
{
  certificateCopy = certificate;
  v5 = [objc_alloc(objc_opt_class()) initWithSourceAssetId:self->_sourceAssetId destAssetId:self->_destAssetId diffSignature:self->_diffSignature diff:self->_diff diffSize:self->_diffSize publicCertificate:certificateCopy];

  return v5;
}

- (BOOL)isEqualToArtifact:(id)artifact
{
  artifactCopy = artifact;
  v5 = artifactCopy;
  if (!artifactCopy)
  {
    goto LABEL_18;
  }

  v6 = self->_sourceAssetId == 0;
  sourceAssetId = [artifactCopy sourceAssetId];
  v8 = sourceAssetId != 0;

  if (v6 == v8)
  {
    goto LABEL_18;
  }

  sourceAssetId = self->_sourceAssetId;
  if (sourceAssetId)
  {
    sourceAssetId2 = [v5 sourceAssetId];
    v11 = [(TRIAssetId *)sourceAssetId isEqual:sourceAssetId2];

    if (!v11)
    {
      goto LABEL_18;
    }
  }

  v12 = self->_destAssetId == 0;
  destAssetId = [v5 destAssetId];
  v14 = destAssetId != 0;

  if (v12 == v14)
  {
    goto LABEL_18;
  }

  destAssetId = self->_destAssetId;
  if (destAssetId)
  {
    destAssetId2 = [v5 destAssetId];
    v17 = [(TRIAssetId *)destAssetId isEqual:destAssetId2];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  v18 = self->_diffSignature == 0;
  diffSignature = [v5 diffSignature];
  v20 = diffSignature != 0;

  if (v18 == v20)
  {
    goto LABEL_18;
  }

  diffSignature = self->_diffSignature;
  if (diffSignature)
  {
    diffSignature2 = [v5 diffSignature];
    v23 = [(NSString *)diffSignature isEqual:diffSignature2];

    if (!v23)
    {
      goto LABEL_18;
    }
  }

  v24 = self->_diff == 0;
  diff = [v5 diff];
  v26 = diff != 0;

  if (v24 == v26)
  {
    goto LABEL_18;
  }

  diff = self->_diff;
  if (diff)
  {
    diff2 = [v5 diff];
    v29 = [(NSURL *)diff isEqual:diff2];

    if (!v29)
    {
      goto LABEL_18;
    }
  }

  diffSize = self->_diffSize;
  if (diffSize != [v5 diffSize] || (v31 = self->_publicCertificate == 0, objc_msgSend(v5, "publicCertificate"), v32 = objc_claimAutoreleasedReturnValue(), v33 = v32 != 0, v32, v31 == v33))
  {
LABEL_18:
    v36 = 0;
  }

  else
  {
    publicCertificate = self->_publicCertificate;
    if (publicCertificate)
    {
      publicCertificate = [v5 publicCertificate];
      v36 = [(NSData *)publicCertificate isEqual:publicCertificate];
    }

    else
    {
      v36 = 1;
    }
  }

  return v36 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIAssetDiffArtifact *)self isEqualToArtifact:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(TRIAssetId *)self->_sourceAssetId hash];
  v4 = [(TRIAssetId *)self->_destAssetId hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_diffSignature hash]- v4 + 32 * v4;
  v6 = [(NSURL *)self->_diff hash]- v5 + 32 * v5;
  publicCertificate = self->_publicCertificate;
  v8 = self->_diffSize - v6 + 32 * v6;
  return [(NSData *)publicCertificate hash]- v8 + 32 * v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = *&self->_sourceAssetId;
  diffSignature = self->_diffSignature;
  diff = self->_diff;
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_diffSize];
  v7 = [v3 initWithFormat:@"<TRIAssetDiffArtifact | sourceAssetId:%@ destAssetId:%@ diffSignature:%@ diff:%@ diffSize:%@ publicCertificate:%@>", v9, diffSignature, diff, v6, self->_publicCertificate];

  return v7;
}

@end