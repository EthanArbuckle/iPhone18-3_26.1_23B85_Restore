@interface PLUnmanagedAdjustment
+ (BOOL)_assetAdjustmentsHasValidDataType:(id)type;
+ (id)_convertRedEyeCorrection:(id)correction withOrientation:(int64_t)orientation;
+ (id)_convertRedEyeCorrections:(id)corrections withOrientation:(int64_t)orientation;
+ (id)addUnmanagedAdjustmentFromXMPDataIfNeededForAsset:(id)asset;
+ (id)copyUnmanagedAdjustmentFromSourceAsset:(id)asset forPlaceholderAsset:(id)placeholderAsset inLibrary:(id)library error:(id *)error;
- (BOOL)isSyncableChange;
- (BOOL)supportsCloudUpload;
- (BOOL)updateRenderTypeFlagsForAssetAdjustments:(id)adjustments checkFlag:(unsigned __int16)flag settingPayload:(id)payload;
- (id)_adjustmentEnvelopeFromAssetAdjustments:(id)adjustments error:(id *)error;
- (id)_deserializeAdjustmentEnvelopeIfNeededFromAssetAdjustments:(id)adjustments adjustmentEnvelope:(id *)envelope error:(id *)error;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (unsigned)_cameraAutoRenderTypeFromAssetAdjustments:(id)adjustments adjustmentEnvelope:(id *)envelope;
- (unsigned)_processEnabledAdjustmentFromAssetAdjustments:(id)adjustments identifier:(id)identifier adjustmentEnvelope:(id *)envelope processingBlock:(id)block;
- (unsigned)_styleCastRenderTypeFromAssetAdjustments:(id)adjustments settingPayload:(id)payload adjustmentEnvelope:(id *)envelope;
- (void)awakeFromInsert;
- (void)willSave;
@end

@implementation PLUnmanagedAdjustment

- (void)willSave
{
  v11.receiver = self;
  v11.super_class = PLUnmanagedAdjustment;
  [(PLManagedObject *)&v11 willSave];
  managedObjectContext = [(PLUnmanagedAdjustment *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(PLUnmanagedAdjustment *)self isDeleted]& 1) == 0)
  {
    changedValues = [(PLUnmanagedAdjustment *)self changedValues];
    v5 = [changedValues objectForKeyedSubscript:@"adjustmentTimestamp"];

    if (v5)
    {
      assetAttributes = [(PLUnmanagedAdjustment *)self assetAttributes];
      asset = [assetAttributes asset];

      if (asset && ([asset isDeleted] & 1) == 0)
      {
        adjustmentTimestamp = [(PLUnmanagedAdjustment *)self adjustmentTimestamp];
        adjustmentTimestamp2 = [asset adjustmentTimestamp];
        [adjustmentTimestamp2 timeIntervalSinceDate:adjustmentTimestamp];
        if (!adjustmentTimestamp2 || fabs(v10) > 2.22044605e-16)
        {
          [asset setAdjustmentTimestamp:adjustmentTimestamp];
        }
      }
    }
  }
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = PLUnmanagedAdjustment;
  [(PLUnmanagedAdjustment *)&v4 awakeFromInsert];
  uUIDString = [MEMORY[0x1E69BF320] UUIDString];
  [(PLUnmanagedAdjustment *)self setUuid:uUIDString];
}

- (BOOL)isSyncableChange
{
  assetAttributes = [(PLUnmanagedAdjustment *)self assetAttributes];
  asset = [assetAttributes asset];
  isPlaceholderAsset = [asset isPlaceholderAsset];

  if (!isPlaceholderAsset)
  {
    return 1;
  }

  assetAttributes2 = [(PLUnmanagedAdjustment *)self assetAttributes];
  asset2 = [assetAttributes2 asset];
  v8 = [PLManagedAsset validShareForPlaceholderAsset:asset2];

  return v8;
}

- (BOOL)supportsCloudUpload
{
  assetAttributes = [(PLUnmanagedAdjustment *)self assetAttributes];
  supportsCloudUpload = [assetAttributes supportsCloudUpload];

  return supportsCloudUpload;
}

- (id)_adjustmentEnvelopeFromAssetAdjustments:(id)adjustments error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  adjustmentsCopy = adjustments;
  if (!adjustmentsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:365 description:{@"Invalid parameter not satisfying: %@", @"adjustments"}];
  }

  if ([objc_opt_class() _assetAdjustmentsHasValidDataType:adjustmentsCopy])
  {
    v8 = MEMORY[0x1E69C0EB8];
    adjustmentData = [adjustmentsCopy adjustmentData];
    editorBundleID = [adjustmentsCopy editorBundleID];
    adjustmentFormatIdentifier = [adjustmentsCopy adjustmentFormatIdentifier];
    adjustmentFormatVersion = [adjustmentsCopy adjustmentFormatVersion];
    v23 = 0;
    v13 = [v8 deserialize:adjustmentData originator:editorBundleID format:adjustmentFormatIdentifier formatVersion:adjustmentFormatVersion error:&v23];
    v14 = v23;

    v15 = v14;
    if (v13)
    {
      goto LABEL_9;
    }

    if (error)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E69BFF48];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = @"Failed to deserialize adjustment data envelope (adjustmentData is not an NSData subclass)";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v20 = [v17 errorWithDomain:v18 code:47016 userInfo:v19];

    v15 = v20;
    if (error)
    {
LABEL_6:
      v16 = v15;
      v13 = 0;
      *error = v15;
      goto LABEL_9;
    }
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (id)_deserializeAdjustmentEnvelopeIfNeededFromAssetAdjustments:(id)adjustments adjustmentEnvelope:(id *)envelope error:(id *)error
{
  adjustmentsCopy = adjustments;
  if (adjustmentsCopy)
  {
    if (envelope)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"adjustments"}];

    if (envelope)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:355 description:{@"Invalid parameter not satisfying: %@", @"envelope"}];

LABEL_3:
  v10 = *envelope;
  if (!v10)
  {
    v10 = [(PLUnmanagedAdjustment *)self _adjustmentEnvelopeFromAssetAdjustments:adjustmentsCopy error:error];
    *envelope = v10;
  }

  return v10;
}

- (unsigned)_processEnabledAdjustmentFromAssetAdjustments:(id)adjustments identifier:(id)identifier adjustmentEnvelope:(id *)envelope processingBlock:(id)block
{
  v54 = *MEMORY[0x1E69E9840];
  adjustmentsCopy = adjustments;
  identifierCopy = identifier;
  blockCopy = block;
  if (adjustmentsCopy)
  {
    if (envelope)
    {
      goto LABEL_3;
    }

LABEL_41:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:313 description:{@"Invalid parameter not satisfying: %@", @"envelope"}];

    if (identifierCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_42;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:312 description:{@"Invalid parameter not satisfying: %@", @"adjustments"}];

  if (!envelope)
  {
    goto LABEL_41;
  }

LABEL_3:
  if (identifierCopy)
  {
    goto LABEL_4;
  }

LABEL_42:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:314 description:{@"Invalid parameter not satisfying: %@", @"matchingIdentifier"}];

LABEL_4:
  if (!blockCopy)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:315 description:{@"Invalid parameter not satisfying: %@", @"processingBlock"}];
  }

  adjustmentFormatIdentifier = [adjustmentsCopy adjustmentFormatIdentifier];
  v14 = [adjustmentFormatIdentifier isEqualToString:*MEMORY[0x1E69C0988]];

  if (v14)
  {
    v48 = 0;
    v15 = [(PLUnmanagedAdjustment *)self _deserializeAdjustmentEnvelopeIfNeededFromAssetAdjustments:adjustmentsCopy adjustmentEnvelope:envelope error:&v48];
    v16 = v48;
    v17 = v16;
    if (v15)
    {
      v40 = v16;
      v41 = v15;
      [v15 adjustmentStack];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v39 = v47 = 0u;
      adjustments = [v39 adjustments];
      v19 = [adjustments countByEnumeratingWithState:&v44 objects:v53 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = 0;
        v22 = *v45;
LABEL_10:
        v23 = 0;
        while (1)
        {
          if (*v45 != v22)
          {
            objc_enumerationMutation(adjustments);
          }

          v24 = *(*(&v44 + 1) + 8 * v23);
          identifier = [v24 identifier];
          v26 = [identifier isEqualToString:identifierCopy];

          if (v26)
          {
            if ([v24 enabled])
            {
              buf[0] = 0;
              v43 = 0;
              v27 = blockCopy[2](blockCopy, v24, buf, &v43);
              v28 = (buf[0] & 1) != 0 ? 10 : 0;
              v29 = v43 ? 11 : v28;
              v30 = v43 ? 0 : v27;
              v21 |= v30;
              if (v29 != 11 && v29 != 0)
              {
                break;
              }
            }
          }

          if (v20 == ++v23)
          {
            v20 = [adjustments countByEnumeratingWithState:&v44 objects:v53 count:16];
            if (v20)
            {
              goto LABEL_10;
            }

            break;
          }
        }
      }

      else
      {
        v21 = 0;
      }

      v15 = v41;
      v32 = v39;
      v17 = v40;
    }

    else
    {
      v32 = PLBackendGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        uuid = [(PLUnmanagedAdjustment *)self uuid];
        *buf = 138543618;
        v50 = uuid;
        v51 = 2112;
        v52 = v17;
        _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Failed to deserialize adjustment data envelope. Adjustment uuid: %{public}@, error: %@", buf, 0x16u);
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (unsigned)_styleCastRenderTypeFromAssetAdjustments:(id)adjustments settingPayload:(id)payload adjustmentEnvelope:(id *)envelope
{
  adjustmentsCopy = adjustments;
  payloadCopy = payload;
  if (adjustmentsCopy)
  {
    if (envelope)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:284 description:{@"Invalid parameter not satisfying: %@", @"adjustments"}];

    if (envelope)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:285 description:{@"Invalid parameter not satisfying: %@", @"envelope"}];

LABEL_3:
  editorBundleID = [adjustmentsCopy editorBundleID];
  v12 = [editorBundleID isEqual:@"com.apple.camera"];

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = *MEMORY[0x1E69C0958];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __100__PLUnmanagedAdjustment__styleCastRenderTypeFromAssetAdjustments_settingPayload_adjustmentEnvelope___block_invoke;
    v18[3] = &unk_1E756DA40;
    v18[4] = self;
    v19 = payloadCopy;
    v13 = [(PLUnmanagedAdjustment *)self _processEnabledAdjustmentFromAssetAdjustments:adjustmentsCopy identifier:v14 adjustmentEnvelope:envelope processingBlock:v18];
  }

  return v13;
}

uint64_t __100__PLUnmanagedAdjustment__styleCastRenderTypeFromAssetAdjustments_settingPayload_adjustmentEnvelope___block_invoke(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 settings];
  objc_opt_class();
  v9 = *MEMORY[0x1E69C0D78];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69C0D78]];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithShort:PFAdjustmentStyleCastFromString()];
    [*(a1 + 40) setObject:v13 forKeyedSubscript:*MEMORY[0x1E69C0960]];

    v14 = 0x8000;
    a4 = a3;
  }

  else
  {
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v8 objectForKeyedSubscript:v9];
      v17 = [v8 objectForKeyedSubscript:v9];
      v18 = objc_opt_class();
      v22 = v18;
      v19 = [v7 identifier];
      v20 = [*(a1 + 32) uuid];
      *buf = 138544130;
      v24 = v16;
      v25 = 2114;
      v26 = v18;
      v27 = 2114;
      v28 = v19;
      v29 = 2114;
      v30 = v20;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to determine name of cast due to invalid cast type: %{public}@ (%{public}@). Expected NSString. IPAPhotoAdjustment identifier: %{public}@ Adjustment uuid: %{public}@", buf, 0x2Au);
    }

    v14 = 0;
  }

  *a4 = 1;

  return v14;
}

- (unsigned)_cameraAutoRenderTypeFromAssetAdjustments:(id)adjustments adjustmentEnvelope:(id *)envelope
{
  v32 = *MEMORY[0x1E69E9840];
  adjustmentsCopy = adjustments;
  if (adjustmentsCopy)
  {
    if (envelope)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"adjustments"}];

    if (envelope)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"envelope"}];

LABEL_3:
  adjustmentFormatIdentifier = [adjustmentsCopy adjustmentFormatIdentifier];
  v9 = [adjustmentFormatIdentifier isEqualToString:*MEMORY[0x1E69C0988]];

  if (v9)
  {
    editorBundleID = [adjustmentsCopy editorBundleID];
    v11 = [editorBundleID isEqual:@"com.apple.camera"];

    if (v11)
    {
      v27 = 0;
      v12 = [(PLUnmanagedAdjustment *)self _deserializeAdjustmentEnvelopeIfNeededFromAssetAdjustments:adjustmentsCopy adjustmentEnvelope:envelope error:&v27];
      v13 = v27;
      if (v12)
      {
        adjustmentStack = [v12 adjustmentStack];
        versionInfo = [adjustmentStack versionInfo];
        appVersion = [versionInfo appVersion];
        if (appVersion && (v17 = appVersion, [versionInfo appVersion], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", &stru_1F0F06D80), v18, v17, !v19))
        {
          v20 = 0;
        }

        else
        {
          v20 = 0x2000;
        }
      }

      else
      {
        adjustmentStack = PLBackendGetLog();
        if (os_log_type_enabled(adjustmentStack, OS_LOG_TYPE_ERROR))
        {
          uuid = [(PLUnmanagedAdjustment *)self uuid];
          *buf = 138543618;
          v29 = uuid;
          v30 = 2112;
          v31 = v13;
          _os_log_impl(&dword_19BF1F000, adjustmentStack, OS_LOG_TYPE_ERROR, "Failed to deserialize adjustment data envelope. Adjustment uuid: %{public}@, error: %@", buf, 0x16u);
        }

        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    adjustmentFormatIdentifier2 = [adjustmentsCopy adjustmentFormatIdentifier];
    v22 = [adjustmentFormatIdentifier2 isEqualToString:*MEMORY[0x1E69C0E90]];

    if (v22)
    {
      v20 = 0x2000;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (BOOL)updateRenderTypeFlagsForAssetAdjustments:(id)adjustments checkFlag:(unsigned __int16)flag settingPayload:(id)payload
{
  flagCopy = flag;
  adjustmentsCopy = adjustments;
  payloadCopy = payload;
  v10 = 0;
  if (adjustmentsCopy && flagCopy)
  {
    adjustmentRenderTypes = [(PLUnmanagedAdjustment *)self adjustmentRenderTypes];
    v12 = adjustmentRenderTypes;
    v13 = 0;
    if ((flagCopy & 1) != 0 && (adjustmentRenderTypes & 0x4000) == 0)
    {
      v14 = adjustmentRenderTypes & 0xFFFF9FFF;
      v26 = 0;
      v15 = [(PLUnmanagedAdjustment *)self _cameraAutoRenderTypeFromAssetAdjustments:adjustmentsCopy adjustmentEnvelope:&v26];
      v13 = v26;
      v12 = v14 | v15 | 0x4000;
    }

    if ((flagCopy & 2) != 0)
    {
      v16 = v12 & 0xFFFF7FFF;
      v25 = v13;
      v17 = [(PLUnmanagedAdjustment *)self _styleCastRenderTypeFromAssetAdjustments:adjustmentsCopy settingPayload:payloadCopy adjustmentEnvelope:&v25];
      v18 = v25;

      v12 = v17 | v16;
      v13 = v18;
    }

    if ((flagCopy & 4) != 0)
    {
      v19 = *MEMORY[0x1E69C0950];
      v24 = v13;
      v20 = [(PLUnmanagedAdjustment *)self _processEnabledAdjustmentFromAssetAdjustments:adjustmentsCopy identifier:v19 adjustmentEnvelope:&v24 processingBlock:&__block_literal_global_52263];
      v21 = v24;

      v12 = v20 | v12 & 0xFFFEFFFF;
      v13 = v21;
    }

    adjustmentRenderTypes2 = [(PLUnmanagedAdjustment *)self adjustmentRenderTypes];
    v10 = adjustmentRenderTypes2 != v12;
    if (adjustmentRenderTypes2 != v12)
    {
      [(PLUnmanagedAdjustment *)self setAdjustmentRenderTypes:v12];
    }
  }

  return v10;
}

+ (id)copyUnmanagedAdjustmentFromSourceAsset:(id)asset forPlaceholderAsset:(id)placeholderAsset inLibrary:(id)library error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  placeholderAssetCopy = placeholderAsset;
  libraryCopy = library;
  additionalAttributes = [assetCopy additionalAttributes];
  unmanagedAdjustment = [additionalAttributes unmanagedAdjustment];

  managedObjectContext = [libraryCopy managedObjectContext];

  v14 = [(PLManagedObject *)PLUnmanagedAdjustment insertInManagedObjectContext:managedObjectContext];

  adjustmentBaseImageFormat = [unmanagedAdjustment adjustmentBaseImageFormat];
  [v14 setAdjustmentBaseImageFormat:adjustmentBaseImageFormat];

  adjustmentFormatIdentifier = [unmanagedAdjustment adjustmentFormatIdentifier];
  [v14 setAdjustmentFormatIdentifier:adjustmentFormatIdentifier];

  adjustmentFormatVersion = [unmanagedAdjustment adjustmentFormatVersion];
  [v14 setAdjustmentFormatVersion:adjustmentFormatVersion];

  adjustmentTimestamp = [unmanagedAdjustment adjustmentTimestamp];
  [v14 setAdjustmentTimestamp:adjustmentTimestamp];

  editorLocalizedName = [unmanagedAdjustment editorLocalizedName];
  [v14 setEditorLocalizedName:editorLocalizedName];

  otherAdjustmentsFingerprint = [unmanagedAdjustment otherAdjustmentsFingerprint];
  [v14 setOtherAdjustmentsFingerprint:otherAdjustmentsFingerprint];

  similarToOriginalAdjustmentsFingerprint = [unmanagedAdjustment similarToOriginalAdjustmentsFingerprint];
  [v14 setSimilarToOriginalAdjustmentsFingerprint:similarToOriginalAdjustmentsFingerprint];

  [v14 setAdjustmentRenderTypes:{objc_msgSend(unmanagedAdjustment, "adjustmentRenderTypes")}];
  uuid = [unmanagedAdjustment uuid];

  if (uuid)
  {
    uUIDString = [MEMORY[0x1E69BF320] UUIDString];
    [v14 setUuid:uUIDString];
  }

  v24 = MEMORY[0x1E695DFF8];
  pathForAdjustmentFile = [assetCopy pathForAdjustmentFile];
  v26 = [v24 fileURLWithPath:pathForAdjustmentFile];

  v27 = MEMORY[0x1E695DFF8];
  pathForAdjustmentFile2 = [placeholderAssetCopy pathForAdjustmentFile];
  v29 = [v27 fileURLWithPath:pathForAdjustmentFile2];

  v30 = MEMORY[0x1E69BF238];
  path = [v29 path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  v45 = 0;
  [v30 createDirectoryAtPath:stringByDeletingLastPathComponent error:&v45];
  v33 = v45;

  if (!v33)
  {
    v44 = 0;
    [MEMORY[0x1E69BF238] copyItemAtURL:v26 toURL:v29 error:&v44];
    v40 = v44;
    v35 = v40;
    if (!v40)
    {
      goto LABEL_17;
    }

    if (error)
    {
      v41 = v40;
      *error = v35;
    }

    if (*MEMORY[0x1E6994D48])
    {
      goto LABEL_17;
    }

    uuid2 = __CPLAssetsdOSLogDomain();
    if (!os_log_type_enabled(uuid2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v47 = v35;
    v37 = "Failed to copy adjustment file for adjusted source asset: %@";
    v38 = uuid2;
    v39 = 12;
LABEL_15:
    _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, v37, buf, v39);
LABEL_16:

    goto LABEL_17;
  }

  if (error)
  {
    v34 = v33;
    *error = v33;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v35 = __CPLAssetsdOSLogDomain();
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
LABEL_17:

      goto LABEL_18;
    }

    uuid2 = [placeholderAssetCopy uuid];
    *buf = 138412546;
    v47 = uuid2;
    v48 = 2112;
    v49 = v33;
    v37 = "Failed to create adjustment directory for placeholder asset %@: %@";
    v38 = v35;
    v39 = 22;
    goto LABEL_15;
  }

LABEL_18:

  return v14;
}

+ (id)_convertRedEyeCorrection:(id)correction withOrientation:(int64_t)orientation
{
  v5 = [correction mutableCopy];
  [v5 pl_applyOrientation:orientation toNormalizedPointWithXKey:@"pointX" yKey:@"pointY"];
  [v5 pl_applyOrientation:orientation toNormalizedPointWithXKey:@"snappedX" yKey:@"snappedY"];
  [v5 pl_applyOrientation:orientation toNormalizedPointWithXKey:@"bitmaskX" yKey:@"bitmaskY"];
  [v5 pl_applyOrientation:orientation toNormalizedPointWithXKey:@"cornealReflectionX" yKey:@"cornealReflectionY"];
  [v5 pl_applyOrientation:orientation toNormalizedPointWithXKey:@"repairRectangleMaximumX" yKey:@"repairRectangleMaximumY"];
  [v5 pl_applyOrientation:orientation toNormalizedPointWithXKey:@"repairRectangleMinimumX" yKey:@"repairRectangleMinimumY"];
  [v5 pl_applyOrientation:orientation toNormalizedPointWithXKey:@"searchRectangleMaximumX" yKey:@"searchRectangleMaximumY"];
  [v5 pl_applyOrientation:orientation toNormalizedPointWithXKey:@"searchRectangleMinimumX" yKey:@"searchRectangleMinimumY"];
  [v5 pl_enforceCorrectValuesForMinKey:@"repairRectangleMinimumX" maxKey:@"repairRectangleMaximumX"];
  [v5 pl_enforceCorrectValuesForMinKey:@"searchRectangleMinimumX" maxKey:@"searchRectangleMaximumX"];
  [v5 pl_enforceCorrectValuesForMinKey:@"repairRectangleMaximumY" maxKey:@"repairRectangleMinimumY"];
  [v5 pl_enforceCorrectValuesForMinKey:@"searchRectangleMaximumY" maxKey:@"searchRectangleMinimumY"];
  v6 = [v5 copy];

  return v6;
}

+ (id)_convertRedEyeCorrections:(id)corrections withOrientation:(int64_t)orientation
{
  v21 = *MEMORY[0x1E69E9840];
  correctionsCopy = corrections;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(correctionsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = correctionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [self _convertRedEyeCorrection:*(*(&v16 + 1) + 8 * i) withOrientation:{orientation, v16}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];

  return v14;
}

+ (BOOL)_assetAdjustmentsHasValidDataType:(id)type
{
  adjustmentData = [type adjustmentData];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)addUnmanagedAdjustmentFromXMPDataIfNeededForAsset:(id)asset
{
  assetCopy = asset;
  orientation = [assetCopy orientation];
  if (orientation != [assetCopy originalOrientation])
  {
    [assetCopy setOriginalOrientation:orientation];
  }

  return 0;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  assetAttributes = [(PLUnmanagedAdjustment *)self assetAttributes];
  asset = [assetAttributes asset];
  if ([asset isValidForJournalPersistence])
  {
    v7 = [[PLAssetJournalEntryPayload alloc] initWithUnmanagedAdjustment:self changedKeys:keysCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)payloadID
{
  assetAttributes = [(PLUnmanagedAdjustment *)self assetAttributes];
  asset = [assetAttributes asset];
  uuid = [asset uuid];
  v5 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

  return v5;
}

@end