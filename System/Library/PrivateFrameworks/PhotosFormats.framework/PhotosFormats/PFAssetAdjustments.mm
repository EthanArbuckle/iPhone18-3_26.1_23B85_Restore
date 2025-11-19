@interface PFAssetAdjustments
+ (BOOL)adjustmentsPropertyListFileRequiresOverflowDataReassemblyAtURL:(id)a3 predictedSize:(int64_t *)a4;
+ (BOOL)writeReassembleAdjustmentsPropertyListAtURL:(id)a3 toURL:(id)a4 error:(id *)a5;
+ (id)dataForOverflowDataReassembledAdjustmentsPropertyListAtURL:(id)a3 error:(id *)a4;
+ (id)fingerPrintForData:(id)a3 error:(id *)a4;
+ (id)fingerPrintForFileDescriptor:(int)a3 error:(id *)a4;
+ (id)fingerprintWithAssetAdjustmentFingerprintData:(id)a3;
- (BOOL)writeToURL:(id)a3 atomically:(BOOL)a4;
- (NSData)adjustmentData;
- (NSDate)adjustmentTimestamp;
- (NSString)adjustmentFormatIdentifier;
- (NSString)adjustmentFormatVersion;
- (NSString)editorBundleID;
- (PFAssetAdjustments)initWithFormatIdentifier:(id)a3 formatVersion:(id)a4 data:(id)a5 baseVersion:(int64_t)a6 editorBundleID:(id)a7 renderTypes:(unsigned int)a8;
- (PFAssetAdjustments)initWithPropertyListDictionary:(id)a3;
- (PFAssetAdjustments)initWithURL:(id)a3;
- (id)_deserializedPhotosAdjustmentDataWithError:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)deserializedAdjustmentDataWithError:(id *)a3;
- (int64_t)adjustmentBaseVersion;
- (unsigned)adjustmentRenderTypes;
@end

@implementation PFAssetAdjustments

- (id)debugDescription
{
  v3 = [(PFAssetAdjustments *)self propertyListDictionary];
  v4 = [v3 mutableCopy];

  v5 = [(PFAssetAdjustments *)self deserializedAdjustmentDataWithError:0];
  if (v5)
  {
    [v4 setObject:v5 forKeyedSubscript:@"adjustmentData"];
  }

  v9.receiver = self;
  v9.super_class = PFAssetAdjustments;
  v6 = [(PFAssetAdjustments *)&v9 description];
  v7 = [v6 stringByAppendingFormat:@" %@", v4];

  return v7;
}

- (id)description
{
  v3 = [(PFAssetAdjustments *)self adjustmentData];
  v4 = [v3 length];

  v10.receiver = self;
  v10.super_class = PFAssetAdjustments;
  v5 = [(PFAssetAdjustments *)&v10 description];
  v6 = [(PFAssetAdjustments *)self adjustmentFormatIdentifier];
  v7 = [(PFAssetAdjustments *)self adjustmentFormatVersion];
  v8 = [v5 stringByAppendingFormat:@" %@, %@ (%lu bytes), %@", v6, v7, v4, self->_adjustmentTimestamp];

  return v8;
}

- (BOOL)writeToURL:(id)a3 atomically:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PFAssetAdjustments *)self propertyListDictionary];
  v8 = [v7 mutableCopy];

  adjustmentTimestamp = self->_adjustmentTimestamp;
  if (adjustmentTimestamp)
  {
    [v8 setValue:adjustmentTimestamp forKey:@"adjustmentTimestamp"];
  }

  v10 = [v8 writeToURL:v6 atomically:v4];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(PFAssetAdjustments *)self propertyListDictionary];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithPropertyListDictionary:", v4}];

  return v5;
}

- (PFAssetAdjustments)initWithPropertyListDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"adjustmentFormatIdentifier"];
  v6 = [v4 objectForKeyedSubscript:@"adjustmentFormatVersion"];
  v7 = [v4 objectForKeyedSubscript:@"adjustmentBaseVersion"];
  v8 = [v4 objectForKeyedSubscript:@"adjustmentRenderTypes"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    v13.receiver = self;
    v13.super_class = PFAssetAdjustments;
    v9 = [(PFAssetAdjustments *)&v13 init];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v4 copy];

        v4 = v10;
      }

      [(PFAssetAdjustments *)v9 setPropertyListDictionary:v4];
      v11 = [(PFAssetAdjustments *)v9 adjustmentTimestamp];
    }
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

- (PFAssetAdjustments)initWithURL:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:a3 error:&v7];
  if (v4)
  {
    v5 = [(PFAssetAdjustments *)self initWithPropertyListDictionary:v4];
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (id)_deserializedPhotosAdjustmentDataWithError:(id *)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = [(PFAssetAdjustments *)self adjustmentData];
  v19 = 0;
  v5 = [PFZlibDataCompression decompressData:v4 options:0 error:&v19];
  v6 = v19;
  v7 = v6;
  if (v5)
  {
    v18 = v6;
    v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v18];
    v9 = v18;

    if (v8)
    {
      v10 = v8;
      v7 = v9;
      v11 = v10;
    }

    else
    {
      v13 = MEMORY[0x1E696ABC0];
      if (v9)
      {
        v20 = *MEMORY[0x1E696AA08];
        v21 = v9;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      }

      else
      {
        v14 = 0;
      }

      v16 = [v13 errorWithDomain:@"com.apple.PhotosFormats" code:500203 userInfo:v14];
      if (a3)
      {
        v16 = v16;
        *a3 = v16;
      }

      if (v9)
      {

        v10 = 0;
        v11 = 0;
        v7 = v9;
      }

      else
      {
        v10 = 0;
        v7 = 0;
        v11 = 0;
      }
    }

LABEL_19:

    goto LABEL_20;
  }

  v12 = MEMORY[0x1E696ABC0];
  if (v6)
  {
    v22 = *MEMORY[0x1E696AA08];
    v23[0] = v6;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  }

  else
  {
    v10 = 0;
  }

  v15 = [v12 errorWithDomain:@"com.apple.PhotosFormats" code:500202 userInfo:v10];
  if (a3)
  {
    v15 = v15;
    *a3 = v15;
  }

  v11 = 0;
  if (v7)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v11;
}

- (id)deserializedAdjustmentDataWithError:(id *)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v5 = [(PFAssetAdjustments *)self adjustmentData];
  if (!v5)
  {
    v9 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A588];
    v30[0] = @"No adjustment data to deserialize";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v11 = [v9 errorWithDomain:@"com.apple.PhotosFormats" code:500200 userInfo:v10];
    if (a3)
    {
      v11 = v11;
      *a3 = v11;
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A588];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Adjustment data is an invalid type: %@", objc_opt_class()];
    v28 = v10;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.PhotosFormats" code:500201 userInfo:v13];
    if (a3)
    {
      v14 = v14;
      *a3 = v14;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v6 = [(PFAssetAdjustments *)self adjustmentFormatIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.photo"];

  if (v7)
  {
    v8 = [(PFAssetAdjustments *)self _deserializedPhotosAdjustmentDataWithError:a3];
  }

  else
  {
    v16 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:0];
    v17 = v16;
    if (v16)
    {
      v8 = v16;
    }

    else
    {
      v24 = 0;
      v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v24];
      v18 = v24;
      v19 = v18;
      if (v8)
      {
        v20 = v8;
      }

      else
      {
        v21 = MEMORY[0x1E696ABC0];
        if (v18)
        {
          v25 = *MEMORY[0x1E696AA08];
          v26 = v18;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        }

        else
        {
          v22 = 0;
        }

        v23 = [v21 errorWithDomain:@"com.apple.PhotosFormats" code:500203 userInfo:v22];
        if (a3)
        {
          v23 = v23;
          *a3 = v23;
        }

        if (v19)
        {
        }
      }
    }
  }

LABEL_12:

  return v8;
}

- (NSDate)adjustmentTimestamp
{
  adjustmentTimestamp = self->_adjustmentTimestamp;
  if (!adjustmentTimestamp)
  {
    v4 = [(PFAssetAdjustments *)self propertyListDictionary];
    v5 = [v4 objectForKeyedSubscript:@"adjustmentTimestamp"];
    v6 = self->_adjustmentTimestamp;
    self->_adjustmentTimestamp = v5;

    adjustmentTimestamp = self->_adjustmentTimestamp;
  }

  return adjustmentTimestamp;
}

- (unsigned)adjustmentRenderTypes
{
  v2 = [(PFAssetAdjustments *)self propertyListDictionary];
  v3 = [v2 objectForKeyedSubscript:@"adjustmentRenderTypes"];
  v4 = [v3 intValue];

  return v4;
}

- (NSString)editorBundleID
{
  v2 = [(PFAssetAdjustments *)self propertyListDictionary];
  v3 = [v2 objectForKeyedSubscript:@"adjustmentEditorBundleID"];

  return v3;
}

- (int64_t)adjustmentBaseVersion
{
  v2 = [(PFAssetAdjustments *)self propertyListDictionary];
  v3 = [v2 objectForKeyedSubscript:@"adjustmentBaseVersion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSData)adjustmentData
{
  v2 = [(PFAssetAdjustments *)self propertyListDictionary];
  v3 = [v2 objectForKeyedSubscript:@"adjustmentData"];

  return v3;
}

- (NSString)adjustmentFormatVersion
{
  v2 = [(PFAssetAdjustments *)self propertyListDictionary];
  v3 = [v2 objectForKeyedSubscript:@"adjustmentFormatVersion"];

  return v3;
}

- (NSString)adjustmentFormatIdentifier
{
  v2 = [(PFAssetAdjustments *)self propertyListDictionary];
  v3 = [v2 objectForKeyedSubscript:@"adjustmentFormatIdentifier"];

  return v3;
}

- (PFAssetAdjustments)initWithFormatIdentifier:(id)a3 formatVersion:(id)a4 data:(id)a5 baseVersion:(int64_t)a6 editorBundleID:(id)a7 renderTypes:(unsigned int)a8
{
  v8 = *&a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = [MEMORY[0x1E695DF90] dictionary];
  v19 = v18;
  if (v14)
  {
    [v18 setObject:v14 forKeyedSubscript:@"adjustmentFormatIdentifier"];
  }

  if (v15)
  {
    [v19 setObject:v15 forKeyedSubscript:@"adjustmentFormatVersion"];
  }

  if (v16)
  {
    [v19 setObject:v16 forKeyedSubscript:@"adjustmentData"];
  }

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
  [v19 setObject:v20 forKeyedSubscript:@"adjustmentBaseVersion"];

  if (v17)
  {
    [v19 setObject:v17 forKeyedSubscript:@"adjustmentEditorBundleID"];
  }

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
  [v19 setObject:v21 forKeyedSubscript:@"adjustmentRenderTypes"];

  v22 = [(PFAssetAdjustments *)self initWithPropertyListDictionary:v19];
  return v22;
}

+ (BOOL)writeReassembleAdjustmentsPropertyListAtURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v10 = [a1 dataForOverflowDataReassembledAdjustmentsPropertyListAtURL:v8 error:&v19];
  v11 = v19;
  v12 = v11;
  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = v12;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to reassemble adjustment property list %@: %@", buf, 0x16u);
    }

    v14 = v12;
    if (a5)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v18 = v11;
  v13 = [v10 writeToURL:v9 options:0 error:&v18];
  v14 = v18;

  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = v9;
      v22 = 2112;
      v23 = v14;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to write reassembled adjustment property list data %@: %@", buf, 0x16u);
      if (a5)
      {
        goto LABEL_10;
      }
    }

    else if (a5)
    {
LABEL_10:
      v16 = v14;
      v15 = 0;
      *a5 = v14;
      goto LABEL_13;
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v15 = 1;
LABEL_13:

  return v15;
}

+ (id)dataForOverflowDataReassembledAdjustmentsPropertyListAtURL:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 URLByDeletingLastPathComponent];
  v27 = 0;
  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:0 error:&v27];
  v8 = v27;
  if (v7)
  {
    v25 = 0;
    v26 = 100;
    v9 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:&v26 error:&v25];
    v10 = v25;

    if (v9)
    {
      v11 = [v6 URLByAppendingPathComponent:@"Adjustments.data" isDirectory:0];
      v24 = v10;
      v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v11 options:0 error:&v24];
      v13 = v24;

      if (v12)
      {
        v14 = [v9 objectForKeyedSubscript:@"adjustmentData"];
        v15 = v14;
        if (!v14 || ([v14 isEqual:v12] & 1) == 0)
        {
          v16 = [v9 mutableCopy];
          [v16 setObject:v12 forKeyedSubscript:@"adjustmentData"];

          v9 = v16;
        }
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
LABEL_15:
          v23 = 0;
          v18 = [MEMORY[0x1E696AE40] dataWithPropertyList:v9 format:v26 options:0 error:&v23];
          v10 = v23;

          if (!v18 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v29 = v10;
            _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to serialize adjustment dictionary: %@", buf, 0xCu);
          }

          goto LABEL_19;
        }

        v15 = [v11 path];
        *buf = 138412546;
        v29 = v15;
        v30 = 2112;
        v31 = v13;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to read adjustment overflow data file %@: %@", buf, 0x16u);
      }

      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = [v5 path];
      *buf = 138412546;
      v29 = v22;
      v30 = 2112;
      v31 = v10;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to deserialize adjustment property list at %@: %@", buf, 0x16u);

      if (a4)
      {
        goto LABEL_13;
      }
    }

    else if (a4)
    {
LABEL_13:
      v19 = v10;
      v18 = 0;
      *a4 = v10;
LABEL_19:
      v8 = v10;
      goto LABEL_20;
    }

    v18 = 0;
    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [v5 path];
    *buf = 138412546;
    v29 = v21;
    v30 = 2112;
    v31 = v8;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to read adjustment property list at %@: %@", buf, 0x16u);

    if (a4)
    {
      goto LABEL_10;
    }
  }

  else if (a4)
  {
LABEL_10:
    v17 = v8;
    v18 = 0;
    *a4 = v8;
    goto LABEL_20;
  }

  v18 = 0;
LABEL_20:

  return v18;
}

+ (BOOL)adjustmentsPropertyListFileRequiresOverflowDataReassemblyAtURL:(id)a3 predictedSize:(int64_t *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v6 URLByDeletingLastPathComponent];
  v9 = [v8 URLByAppendingPathComponent:@"Adjustments.data" isDirectory:0];
  v10 = [v9 path];
  if ([v7 fileExistsAtPath:v10])
  {
    v11 = [v6 path];
    v12 = [v7 fileExistsAtPath:v11];

    if (a4 && v12)
    {
      v16 = 0;
      v13 = [a1 dataForOverflowDataReassembledAdjustmentsPropertyListAtURL:v6 error:&v16];
      v14 = v13;
      if (v13)
      {
        *a4 = [v13 length];
      }

      LOBYTE(v12) = 1;
    }
  }

  else
  {

    LOBYTE(v12) = 0;
  }

  return v12;
}

+ (id)fingerprintWithAssetAdjustmentFingerprintData:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v20 = 0;
    goto LABEL_27;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v6 = [v4 adjustmentType];

  if (v6)
  {
    v7 = [v4 adjustmentType];
    v8 = [v7 dataUsingEncoding:4];
    [v5 appendData:v8];
  }

  v9 = [v4 adjustmentCompoundVersion];

  if (v9)
  {
    v10 = [v4 adjustmentCompoundVersion];
    v11 = [v10 dataUsingEncoding:4];
    [v5 appendData:v11];
  }

  v12 = [v4 adjustmentCreatorCode];

  if (v12)
  {
    v13 = [v4 adjustmentCreatorCode];
    v14 = [v13 dataUsingEncoding:4];
    [v5 appendData:v14];
  }

  v15 = [v4 simpleAdjustmentData];

  if (v15)
  {
    v16 = [v4 simpleAdjustmentData];
    [v5 appendData:v16];
  }

  if ([v4 adjustmentSourceType] != 1)
  {
    v19 = 0;
    goto LABEL_17;
  }

  v17 = [v4 baseImageFingerprint];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
  }

  else
  {
    v21 = [v4 baseImage];
    v37 = 0;
    v18 = [a1 fingerPrintForData:v21 error:&v37];
    v19 = v37;

    if (!v18)
    {
      goto LABEL_17;
    }
  }

  v22 = [v18 dataUsingEncoding:4];
  [v5 appendData:v22];

LABEL_17:
  v23 = [v4 largeAdjustmentDataFingerprint];
  if (v23)
  {
    v24 = v23;
    v25 = v19;
LABEL_20:
    v27 = [v24 dataUsingEncoding:4];
    [v5 appendData:v27];

    goto LABEL_21;
  }

  v26 = [v4 largeAdjustmentData];
  v36 = v19;
  v24 = [a1 fingerPrintForData:v26 error:&v36];
  v25 = v36;

  if (v24)
  {
    goto LABEL_20;
  }

LABEL_21:
  v28 = [v4 secondaryAdjustmentData];
  v35 = v25;
  v29 = [a1 fingerPrintForData:v28 error:&v35];
  v30 = v35;

  if (v29)
  {
    v31 = [v29 dataUsingEncoding:4];
    [v5 appendData:v31];
  }

  if ([v5 length])
  {
    v34 = v30;
    v20 = [a1 fingerPrintForData:v5 error:&v34];
    v32 = v34;

    v30 = v32;
  }

  else
  {
    v20 = 0;
  }

LABEL_27:

  return v20;
}

+ (id)fingerPrintForFileDescriptor:(int)a3 error:(id *)a4
{
  v4 = MMCSSignatureCreateFromFileDescriptor();
  if (v4)
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v4 length:MEMORY[0x1B8C64070](v4) freeWhenDone:1];
    v4 = [v5 base64EncodedStringWithOptions:0];
  }

  return v4;
}

+ (id)fingerPrintForData:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v4 = a3;
    v5 = MMCSSignatureGeneratorCreate();
    v6 = [v4 bytes];
    v7 = [v4 length];

    MEMORY[0x1B8C640B0](v5, v6, v7, 1);
    v8 = MMCSSignatureGeneratorFinish();
    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v8 length:MEMORY[0x1B8C64070](v8) freeWhenDone:1];
    v10 = [v9 base64EncodedStringWithOptions:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end