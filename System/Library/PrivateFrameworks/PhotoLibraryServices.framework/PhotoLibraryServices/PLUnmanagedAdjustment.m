@interface PLUnmanagedAdjustment
+ (BOOL)_assetAdjustmentsHasValidDataType:(id)a3;
+ (id)_convertRedEyeCorrection:(id)a3 withOrientation:(int64_t)a4;
+ (id)_convertRedEyeCorrections:(id)a3 withOrientation:(int64_t)a4;
+ (id)addUnmanagedAdjustmentFromXMPDataIfNeededForAsset:(id)a3;
+ (id)copyUnmanagedAdjustmentFromSourceAsset:(id)a3 forPlaceholderAsset:(id)a4 inLibrary:(id)a5 error:(id *)a6;
- (BOOL)isSyncableChange;
- (BOOL)supportsCloudUpload;
- (BOOL)updateRenderTypeFlagsForAssetAdjustments:(id)a3 checkFlag:(unsigned __int16)a4 settingPayload:(id)a5;
- (id)_adjustmentEnvelopeFromAssetAdjustments:(id)a3 error:(id *)a4;
- (id)_deserializeAdjustmentEnvelopeIfNeededFromAssetAdjustments:(id)a3 adjustmentEnvelope:(id *)a4 error:(id *)a5;
- (id)payloadForChangedKeys:(id)a3;
- (id)payloadID;
- (unsigned)_cameraAutoRenderTypeFromAssetAdjustments:(id)a3 adjustmentEnvelope:(id *)a4;
- (unsigned)_processEnabledAdjustmentFromAssetAdjustments:(id)a3 identifier:(id)a4 adjustmentEnvelope:(id *)a5 processingBlock:(id)a6;
- (unsigned)_styleCastRenderTypeFromAssetAdjustments:(id)a3 settingPayload:(id)a4 adjustmentEnvelope:(id *)a5;
- (void)awakeFromInsert;
- (void)willSave;
@end

@implementation PLUnmanagedAdjustment

- (void)willSave
{
  v11.receiver = self;
  v11.super_class = PLUnmanagedAdjustment;
  [(PLManagedObject *)&v11 willSave];
  v3 = [(PLUnmanagedAdjustment *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(PLUnmanagedAdjustment *)self isDeleted]& 1) == 0)
  {
    v4 = [(PLUnmanagedAdjustment *)self changedValues];
    v5 = [v4 objectForKeyedSubscript:@"adjustmentTimestamp"];

    if (v5)
    {
      v6 = [(PLUnmanagedAdjustment *)self assetAttributes];
      v7 = [v6 asset];

      if (v7 && ([v7 isDeleted] & 1) == 0)
      {
        v8 = [(PLUnmanagedAdjustment *)self adjustmentTimestamp];
        v9 = [v7 adjustmentTimestamp];
        [v9 timeIntervalSinceDate:v8];
        if (!v9 || fabs(v10) > 2.22044605e-16)
        {
          [v7 setAdjustmentTimestamp:v8];
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
  v3 = [MEMORY[0x1E69BF320] UUIDString];
  [(PLUnmanagedAdjustment *)self setUuid:v3];
}

- (BOOL)isSyncableChange
{
  v3 = [(PLUnmanagedAdjustment *)self assetAttributes];
  v4 = [v3 asset];
  v5 = [v4 isPlaceholderAsset];

  if (!v5)
  {
    return 1;
  }

  v6 = [(PLUnmanagedAdjustment *)self assetAttributes];
  v7 = [v6 asset];
  v8 = [PLManagedAsset validShareForPlaceholderAsset:v7];

  return v8;
}

- (BOOL)supportsCloudUpload
{
  v2 = [(PLUnmanagedAdjustment *)self assetAttributes];
  v3 = [v2 supportsCloudUpload];

  return v3;
}

- (id)_adjustmentEnvelopeFromAssetAdjustments:(id)a3 error:(id *)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:365 description:{@"Invalid parameter not satisfying: %@", @"adjustments"}];
  }

  if ([objc_opt_class() _assetAdjustmentsHasValidDataType:v7])
  {
    v8 = MEMORY[0x1E69C0EB8];
    v9 = [v7 adjustmentData];
    v10 = [v7 editorBundleID];
    v11 = [v7 adjustmentFormatIdentifier];
    v12 = [v7 adjustmentFormatVersion];
    v23 = 0;
    v13 = [v8 deserialize:v9 originator:v10 format:v11 formatVersion:v12 error:&v23];
    v14 = v23;

    v15 = v14;
    if (v13)
    {
      goto LABEL_9;
    }

    if (a4)
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
    if (a4)
    {
LABEL_6:
      v16 = v15;
      v13 = 0;
      *a4 = v15;
      goto LABEL_9;
    }
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (id)_deserializeAdjustmentEnvelopeIfNeededFromAssetAdjustments:(id)a3 adjustmentEnvelope:(id *)a4 error:(id *)a5
{
  v9 = a3;
  if (v9)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"adjustments"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:355 description:{@"Invalid parameter not satisfying: %@", @"envelope"}];

LABEL_3:
  v10 = *a4;
  if (!v10)
  {
    v10 = [(PLUnmanagedAdjustment *)self _adjustmentEnvelopeFromAssetAdjustments:v9 error:a5];
    *a4 = v10;
  }

  return v10;
}

- (unsigned)_processEnabledAdjustmentFromAssetAdjustments:(id)a3 identifier:(id)a4 adjustmentEnvelope:(id *)a5 processingBlock:(id)a6
{
  v54 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v42 = a6;
  if (v11)
  {
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_41:
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:313 description:{@"Invalid parameter not satisfying: %@", @"envelope"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_42;
  }

  v35 = [MEMORY[0x1E696AAA8] currentHandler];
  [v35 handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:312 description:{@"Invalid parameter not satisfying: %@", @"adjustments"}];

  if (!a5)
  {
    goto LABEL_41;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_42:
  v37 = [MEMORY[0x1E696AAA8] currentHandler];
  [v37 handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:314 description:{@"Invalid parameter not satisfying: %@", @"matchingIdentifier"}];

LABEL_4:
  if (!v42)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:315 description:{@"Invalid parameter not satisfying: %@", @"processingBlock"}];
  }

  v13 = [v11 adjustmentFormatIdentifier];
  v14 = [v13 isEqualToString:*MEMORY[0x1E69C0988]];

  if (v14)
  {
    v48 = 0;
    v15 = [(PLUnmanagedAdjustment *)self _deserializeAdjustmentEnvelopeIfNeededFromAssetAdjustments:v11 adjustmentEnvelope:a5 error:&v48];
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
      v18 = [v39 adjustments];
      v19 = [v18 countByEnumeratingWithState:&v44 objects:v53 count:16];
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
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v44 + 1) + 8 * v23);
          v25 = [v24 identifier];
          v26 = [v25 isEqualToString:v12];

          if (v26)
          {
            if ([v24 enabled])
            {
              buf[0] = 0;
              v43 = 0;
              v27 = v42[2](v42, v24, buf, &v43);
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
            v20 = [v18 countByEnumeratingWithState:&v44 objects:v53 count:16];
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
        v33 = [(PLUnmanagedAdjustment *)self uuid];
        *buf = 138543618;
        v50 = v33;
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

- (unsigned)_styleCastRenderTypeFromAssetAdjustments:(id)a3 settingPayload:(id)a4 adjustmentEnvelope:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:284 description:{@"Invalid parameter not satisfying: %@", @"adjustments"}];

    if (a5)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:285 description:{@"Invalid parameter not satisfying: %@", @"envelope"}];

LABEL_3:
  v11 = [v9 editorBundleID];
  v12 = [v11 isEqual:@"com.apple.camera"];

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
    v19 = v10;
    v13 = [(PLUnmanagedAdjustment *)self _processEnabledAdjustmentFromAssetAdjustments:v9 identifier:v14 adjustmentEnvelope:a5 processingBlock:v18];
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

- (unsigned)_cameraAutoRenderTypeFromAssetAdjustments:(id)a3 adjustmentEnvelope:(id *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v7)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"adjustments"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"PLUnmanagedAdjustment.m" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"envelope"}];

LABEL_3:
  v8 = [v7 adjustmentFormatIdentifier];
  v9 = [v8 isEqualToString:*MEMORY[0x1E69C0988]];

  if (v9)
  {
    v10 = [v7 editorBundleID];
    v11 = [v10 isEqual:@"com.apple.camera"];

    if (v11)
    {
      v27 = 0;
      v12 = [(PLUnmanagedAdjustment *)self _deserializeAdjustmentEnvelopeIfNeededFromAssetAdjustments:v7 adjustmentEnvelope:a4 error:&v27];
      v13 = v27;
      if (v12)
      {
        v14 = [v12 adjustmentStack];
        v15 = [v14 versionInfo];
        v16 = [v15 appVersion];
        if (v16 && (v17 = v16, [v15 appVersion], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", &stru_1F0F06D80), v18, v17, !v19))
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
        v14 = PLBackendGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v23 = [(PLUnmanagedAdjustment *)self uuid];
          *buf = 138543618;
          v29 = v23;
          v30 = 2112;
          v31 = v13;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to deserialize adjustment data envelope. Adjustment uuid: %{public}@, error: %@", buf, 0x16u);
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
    v21 = [v7 adjustmentFormatIdentifier];
    v22 = [v21 isEqualToString:*MEMORY[0x1E69C0E90]];

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

- (BOOL)updateRenderTypeFlagsForAssetAdjustments:(id)a3 checkFlag:(unsigned __int16)a4 settingPayload:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = 0;
  if (v8 && v6)
  {
    v11 = [(PLUnmanagedAdjustment *)self adjustmentRenderTypes];
    v12 = v11;
    v13 = 0;
    if ((v6 & 1) != 0 && (v11 & 0x4000) == 0)
    {
      v14 = v11 & 0xFFFF9FFF;
      v26 = 0;
      v15 = [(PLUnmanagedAdjustment *)self _cameraAutoRenderTypeFromAssetAdjustments:v8 adjustmentEnvelope:&v26];
      v13 = v26;
      v12 = v14 | v15 | 0x4000;
    }

    if ((v6 & 2) != 0)
    {
      v16 = v12 & 0xFFFF7FFF;
      v25 = v13;
      v17 = [(PLUnmanagedAdjustment *)self _styleCastRenderTypeFromAssetAdjustments:v8 settingPayload:v9 adjustmentEnvelope:&v25];
      v18 = v25;

      v12 = v17 | v16;
      v13 = v18;
    }

    if ((v6 & 4) != 0)
    {
      v19 = *MEMORY[0x1E69C0950];
      v24 = v13;
      v20 = [(PLUnmanagedAdjustment *)self _processEnabledAdjustmentFromAssetAdjustments:v8 identifier:v19 adjustmentEnvelope:&v24 processingBlock:&__block_literal_global_52263];
      v21 = v24;

      v12 = v20 | v12 & 0xFFFEFFFF;
      v13 = v21;
    }

    v22 = [(PLUnmanagedAdjustment *)self adjustmentRenderTypes];
    v10 = v22 != v12;
    if (v22 != v12)
    {
      [(PLUnmanagedAdjustment *)self setAdjustmentRenderTypes:v12];
    }
  }

  return v10;
}

+ (id)copyUnmanagedAdjustmentFromSourceAsset:(id)a3 forPlaceholderAsset:(id)a4 inLibrary:(id)a5 error:(id *)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 additionalAttributes];
  v12 = [v11 unmanagedAdjustment];

  v13 = [v10 managedObjectContext];

  v14 = [(PLManagedObject *)PLUnmanagedAdjustment insertInManagedObjectContext:v13];

  v15 = [v12 adjustmentBaseImageFormat];
  [v14 setAdjustmentBaseImageFormat:v15];

  v16 = [v12 adjustmentFormatIdentifier];
  [v14 setAdjustmentFormatIdentifier:v16];

  v17 = [v12 adjustmentFormatVersion];
  [v14 setAdjustmentFormatVersion:v17];

  v18 = [v12 adjustmentTimestamp];
  [v14 setAdjustmentTimestamp:v18];

  v19 = [v12 editorLocalizedName];
  [v14 setEditorLocalizedName:v19];

  v20 = [v12 otherAdjustmentsFingerprint];
  [v14 setOtherAdjustmentsFingerprint:v20];

  v21 = [v12 similarToOriginalAdjustmentsFingerprint];
  [v14 setSimilarToOriginalAdjustmentsFingerprint:v21];

  [v14 setAdjustmentRenderTypes:{objc_msgSend(v12, "adjustmentRenderTypes")}];
  v22 = [v12 uuid];

  if (v22)
  {
    v23 = [MEMORY[0x1E69BF320] UUIDString];
    [v14 setUuid:v23];
  }

  v24 = MEMORY[0x1E695DFF8];
  v25 = [v8 pathForAdjustmentFile];
  v26 = [v24 fileURLWithPath:v25];

  v27 = MEMORY[0x1E695DFF8];
  v28 = [v9 pathForAdjustmentFile];
  v29 = [v27 fileURLWithPath:v28];

  v30 = MEMORY[0x1E69BF238];
  v31 = [v29 path];
  v32 = [v31 stringByDeletingLastPathComponent];
  v45 = 0;
  [v30 createDirectoryAtPath:v32 error:&v45];
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

    if (a6)
    {
      v41 = v40;
      *a6 = v35;
    }

    if (*MEMORY[0x1E6994D48])
    {
      goto LABEL_17;
    }

    v36 = __CPLAssetsdOSLogDomain();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v47 = v35;
    v37 = "Failed to copy adjustment file for adjusted source asset: %@";
    v38 = v36;
    v39 = 12;
LABEL_15:
    _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, v37, buf, v39);
LABEL_16:

    goto LABEL_17;
  }

  if (a6)
  {
    v34 = v33;
    *a6 = v33;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v35 = __CPLAssetsdOSLogDomain();
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
LABEL_17:

      goto LABEL_18;
    }

    v36 = [v9 uuid];
    *buf = 138412546;
    v47 = v36;
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

+ (id)_convertRedEyeCorrection:(id)a3 withOrientation:(int64_t)a4
{
  v5 = [a3 mutableCopy];
  [v5 pl_applyOrientation:a4 toNormalizedPointWithXKey:@"pointX" yKey:@"pointY"];
  [v5 pl_applyOrientation:a4 toNormalizedPointWithXKey:@"snappedX" yKey:@"snappedY"];
  [v5 pl_applyOrientation:a4 toNormalizedPointWithXKey:@"bitmaskX" yKey:@"bitmaskY"];
  [v5 pl_applyOrientation:a4 toNormalizedPointWithXKey:@"cornealReflectionX" yKey:@"cornealReflectionY"];
  [v5 pl_applyOrientation:a4 toNormalizedPointWithXKey:@"repairRectangleMaximumX" yKey:@"repairRectangleMaximumY"];
  [v5 pl_applyOrientation:a4 toNormalizedPointWithXKey:@"repairRectangleMinimumX" yKey:@"repairRectangleMinimumY"];
  [v5 pl_applyOrientation:a4 toNormalizedPointWithXKey:@"searchRectangleMaximumX" yKey:@"searchRectangleMaximumY"];
  [v5 pl_applyOrientation:a4 toNormalizedPointWithXKey:@"searchRectangleMinimumX" yKey:@"searchRectangleMinimumY"];
  [v5 pl_enforceCorrectValuesForMinKey:@"repairRectangleMinimumX" maxKey:@"repairRectangleMaximumX"];
  [v5 pl_enforceCorrectValuesForMinKey:@"searchRectangleMinimumX" maxKey:@"searchRectangleMaximumX"];
  [v5 pl_enforceCorrectValuesForMinKey:@"repairRectangleMaximumY" maxKey:@"repairRectangleMinimumY"];
  [v5 pl_enforceCorrectValuesForMinKey:@"searchRectangleMaximumY" maxKey:@"searchRectangleMinimumY"];
  v6 = [v5 copy];

  return v6;
}

+ (id)_convertRedEyeCorrections:(id)a3 withOrientation:(int64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
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

        v13 = [a1 _convertRedEyeCorrection:*(*(&v16 + 1) + 8 * i) withOrientation:{a4, v16}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];

  return v14;
}

+ (BOOL)_assetAdjustmentsHasValidDataType:(id)a3
{
  v3 = [a3 adjustmentData];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)addUnmanagedAdjustmentFromXMPDataIfNeededForAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 orientation];
  if (v4 != [v3 originalOrientation])
  {
    [v3 setOriginalOrientation:v4];
  }

  return 0;
}

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  v5 = [(PLUnmanagedAdjustment *)self assetAttributes];
  v6 = [v5 asset];
  if ([v6 isValidForJournalPersistence])
  {
    v7 = [[PLAssetJournalEntryPayload alloc] initWithUnmanagedAdjustment:self changedKeys:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)payloadID
{
  v2 = [(PLUnmanagedAdjustment *)self assetAttributes];
  v3 = [v2 asset];
  v4 = [v3 uuid];
  v5 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v4];

  return v5;
}

@end