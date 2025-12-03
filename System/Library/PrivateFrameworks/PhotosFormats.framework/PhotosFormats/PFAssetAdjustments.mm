@interface PFAssetAdjustments
+ (BOOL)adjustmentsPropertyListFileRequiresOverflowDataReassemblyAtURL:(id)l predictedSize:(int64_t *)size;
+ (BOOL)writeReassembleAdjustmentsPropertyListAtURL:(id)l toURL:(id)rL error:(id *)error;
+ (id)dataForOverflowDataReassembledAdjustmentsPropertyListAtURL:(id)l error:(id *)error;
+ (id)fingerPrintForData:(id)data error:(id *)error;
+ (id)fingerPrintForFileDescriptor:(int)descriptor error:(id *)error;
+ (id)fingerprintWithAssetAdjustmentFingerprintData:(id)data;
- (BOOL)writeToURL:(id)l atomically:(BOOL)atomically;
- (NSData)adjustmentData;
- (NSDate)adjustmentTimestamp;
- (NSString)adjustmentFormatIdentifier;
- (NSString)adjustmentFormatVersion;
- (NSString)editorBundleID;
- (PFAssetAdjustments)initWithFormatIdentifier:(id)identifier formatVersion:(id)version data:(id)data baseVersion:(int64_t)baseVersion editorBundleID:(id)d renderTypes:(unsigned int)types;
- (PFAssetAdjustments)initWithPropertyListDictionary:(id)dictionary;
- (PFAssetAdjustments)initWithURL:(id)l;
- (id)_deserializedPhotosAdjustmentDataWithError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)deserializedAdjustmentDataWithError:(id *)error;
- (int64_t)adjustmentBaseVersion;
- (unsigned)adjustmentRenderTypes;
@end

@implementation PFAssetAdjustments

- (id)debugDescription
{
  propertyListDictionary = [(PFAssetAdjustments *)self propertyListDictionary];
  v4 = [propertyListDictionary mutableCopy];

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
  adjustmentData = [(PFAssetAdjustments *)self adjustmentData];
  v4 = [adjustmentData length];

  v10.receiver = self;
  v10.super_class = PFAssetAdjustments;
  v5 = [(PFAssetAdjustments *)&v10 description];
  adjustmentFormatIdentifier = [(PFAssetAdjustments *)self adjustmentFormatIdentifier];
  adjustmentFormatVersion = [(PFAssetAdjustments *)self adjustmentFormatVersion];
  v8 = [v5 stringByAppendingFormat:@" %@, %@ (%lu bytes), %@", adjustmentFormatIdentifier, adjustmentFormatVersion, v4, self->_adjustmentTimestamp];

  return v8;
}

- (BOOL)writeToURL:(id)l atomically:(BOOL)atomically
{
  atomicallyCopy = atomically;
  lCopy = l;
  propertyListDictionary = [(PFAssetAdjustments *)self propertyListDictionary];
  v8 = [propertyListDictionary mutableCopy];

  adjustmentTimestamp = self->_adjustmentTimestamp;
  if (adjustmentTimestamp)
  {
    [v8 setValue:adjustmentTimestamp forKey:@"adjustmentTimestamp"];
  }

  v10 = [v8 writeToURL:lCopy atomically:atomicallyCopy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  propertyListDictionary = [(PFAssetAdjustments *)self propertyListDictionary];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithPropertyListDictionary:", propertyListDictionary}];

  return v5;
}

- (PFAssetAdjustments)initWithPropertyListDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"adjustmentFormatIdentifier"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"adjustmentFormatVersion"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"adjustmentBaseVersion"];
  v8 = [dictionaryCopy objectForKeyedSubscript:@"adjustmentRenderTypes"];
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
        v10 = [dictionaryCopy copy];

        dictionaryCopy = v10;
      }

      [(PFAssetAdjustments *)v9 setPropertyListDictionary:dictionaryCopy];
      adjustmentTimestamp = [(PFAssetAdjustments *)v9 adjustmentTimestamp];
    }
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

- (PFAssetAdjustments)initWithURL:(id)l
{
  v7 = 0;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:l error:&v7];
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

- (id)_deserializedPhotosAdjustmentDataWithError:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  adjustmentData = [(PFAssetAdjustments *)self adjustmentData];
  v19 = 0;
  v5 = [PFZlibDataCompression decompressData:adjustmentData options:0 error:&v19];
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
      if (error)
      {
        v16 = v16;
        *error = v16;
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
  if (error)
  {
    v15 = v15;
    *error = v15;
  }

  v11 = 0;
  if (v7)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v11;
}

- (id)deserializedAdjustmentDataWithError:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  adjustmentData = [(PFAssetAdjustments *)self adjustmentData];
  if (!adjustmentData)
  {
    v9 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A588];
    v30[0] = @"No adjustment data to deserialize";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v11 = [v9 errorWithDomain:@"com.apple.PhotosFormats" code:500200 userInfo:v10];
    if (error)
    {
      v11 = v11;
      *error = v11;
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
    if (error)
    {
      v14 = v14;
      *error = v14;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  adjustmentFormatIdentifier = [(PFAssetAdjustments *)self adjustmentFormatIdentifier];
  v7 = [adjustmentFormatIdentifier isEqualToString:@"com.apple.photo"];

  if (v7)
  {
    v8 = [(PFAssetAdjustments *)self _deserializedPhotosAdjustmentDataWithError:error];
  }

  else
  {
    v16 = [MEMORY[0x1E696AE40] propertyListWithData:adjustmentData options:0 format:0 error:0];
    v17 = v16;
    if (v16)
    {
      v8 = v16;
    }

    else
    {
      v24 = 0;
      v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:adjustmentData options:0 error:&v24];
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
        if (error)
        {
          v23 = v23;
          *error = v23;
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
    propertyListDictionary = [(PFAssetAdjustments *)self propertyListDictionary];
    v5 = [propertyListDictionary objectForKeyedSubscript:@"adjustmentTimestamp"];
    v6 = self->_adjustmentTimestamp;
    self->_adjustmentTimestamp = v5;

    adjustmentTimestamp = self->_adjustmentTimestamp;
  }

  return adjustmentTimestamp;
}

- (unsigned)adjustmentRenderTypes
{
  propertyListDictionary = [(PFAssetAdjustments *)self propertyListDictionary];
  v3 = [propertyListDictionary objectForKeyedSubscript:@"adjustmentRenderTypes"];
  intValue = [v3 intValue];

  return intValue;
}

- (NSString)editorBundleID
{
  propertyListDictionary = [(PFAssetAdjustments *)self propertyListDictionary];
  v3 = [propertyListDictionary objectForKeyedSubscript:@"adjustmentEditorBundleID"];

  return v3;
}

- (int64_t)adjustmentBaseVersion
{
  propertyListDictionary = [(PFAssetAdjustments *)self propertyListDictionary];
  v3 = [propertyListDictionary objectForKeyedSubscript:@"adjustmentBaseVersion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (NSData)adjustmentData
{
  propertyListDictionary = [(PFAssetAdjustments *)self propertyListDictionary];
  v3 = [propertyListDictionary objectForKeyedSubscript:@"adjustmentData"];

  return v3;
}

- (NSString)adjustmentFormatVersion
{
  propertyListDictionary = [(PFAssetAdjustments *)self propertyListDictionary];
  v3 = [propertyListDictionary objectForKeyedSubscript:@"adjustmentFormatVersion"];

  return v3;
}

- (NSString)adjustmentFormatIdentifier
{
  propertyListDictionary = [(PFAssetAdjustments *)self propertyListDictionary];
  v3 = [propertyListDictionary objectForKeyedSubscript:@"adjustmentFormatIdentifier"];

  return v3;
}

- (PFAssetAdjustments)initWithFormatIdentifier:(id)identifier formatVersion:(id)version data:(id)data baseVersion:(int64_t)baseVersion editorBundleID:(id)d renderTypes:(unsigned int)types
{
  v8 = *&types;
  identifierCopy = identifier;
  versionCopy = version;
  dataCopy = data;
  dCopy = d;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v19 = dictionary;
  if (identifierCopy)
  {
    [dictionary setObject:identifierCopy forKeyedSubscript:@"adjustmentFormatIdentifier"];
  }

  if (versionCopy)
  {
    [v19 setObject:versionCopy forKeyedSubscript:@"adjustmentFormatVersion"];
  }

  if (dataCopy)
  {
    [v19 setObject:dataCopy forKeyedSubscript:@"adjustmentData"];
  }

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:baseVersion];
  [v19 setObject:v20 forKeyedSubscript:@"adjustmentBaseVersion"];

  if (dCopy)
  {
    [v19 setObject:dCopy forKeyedSubscript:@"adjustmentEditorBundleID"];
  }

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
  [v19 setObject:v21 forKeyedSubscript:@"adjustmentRenderTypes"];

  v22 = [(PFAssetAdjustments *)self initWithPropertyListDictionary:v19];
  return v22;
}

+ (BOOL)writeReassembleAdjustmentsPropertyListAtURL:(id)l toURL:(id)rL error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  v19 = 0;
  v10 = [self dataForOverflowDataReassembledAdjustmentsPropertyListAtURL:lCopy error:&v19];
  v11 = v19;
  v12 = v11;
  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = lCopy;
      v22 = 2112;
      v23 = v12;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to reassemble adjustment property list %@: %@", buf, 0x16u);
    }

    v14 = v12;
    if (error)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v18 = v11;
  v13 = [v10 writeToURL:rLCopy options:0 error:&v18];
  v14 = v18;

  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = rLCopy;
      v22 = 2112;
      v23 = v14;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to write reassembled adjustment property list data %@: %@", buf, 0x16u);
      if (error)
      {
        goto LABEL_10;
      }
    }

    else if (error)
    {
LABEL_10:
      v16 = v14;
      v15 = 0;
      *error = v14;
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

+ (id)dataForOverflowDataReassembledAdjustmentsPropertyListAtURL:(id)l error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  lCopy = l;
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v27 = 0;
  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy options:0 error:&v27];
  v8 = v27;
  if (v7)
  {
    v25 = 0;
    v26 = 100;
    v9 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:&v26 error:&v25];
    v10 = v25;

    if (v9)
    {
      v11 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"Adjustments.data" isDirectory:0];
      v24 = v10;
      v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v11 options:0 error:&v24];
      v13 = v24;

      if (v12)
      {
        v14 = [v9 objectForKeyedSubscript:@"adjustmentData"];
        path = v14;
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

        path = [v11 path];
        *buf = 138412546;
        v29 = path;
        v30 = 2112;
        v31 = v13;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to read adjustment overflow data file %@: %@", buf, 0x16u);
      }

      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      path2 = [lCopy path];
      *buf = 138412546;
      v29 = path2;
      v30 = 2112;
      v31 = v10;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to deserialize adjustment property list at %@: %@", buf, 0x16u);

      if (error)
      {
        goto LABEL_13;
      }
    }

    else if (error)
    {
LABEL_13:
      v19 = v10;
      v18 = 0;
      *error = v10;
LABEL_19:
      v8 = v10;
      goto LABEL_20;
    }

    v18 = 0;
    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    path3 = [lCopy path];
    *buf = 138412546;
    v29 = path3;
    v30 = 2112;
    v31 = v8;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to read adjustment property list at %@: %@", buf, 0x16u);

    if (error)
    {
      goto LABEL_10;
    }
  }

  else if (error)
  {
LABEL_10:
    v17 = v8;
    v18 = 0;
    *error = v8;
    goto LABEL_20;
  }

  v18 = 0;
LABEL_20:

  return v18;
}

+ (BOOL)adjustmentsPropertyListFileRequiresOverflowDataReassemblyAtURL:(id)l predictedSize:(int64_t *)size
{
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v9 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"Adjustments.data" isDirectory:0];
  path = [v9 path];
  if ([defaultManager fileExistsAtPath:path])
  {
    path2 = [lCopy path];
    v12 = [defaultManager fileExistsAtPath:path2];

    if (size && v12)
    {
      v16 = 0;
      v13 = [self dataForOverflowDataReassembledAdjustmentsPropertyListAtURL:lCopy error:&v16];
      v14 = v13;
      if (v13)
      {
        *size = [v13 length];
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

+ (id)fingerprintWithAssetAdjustmentFingerprintData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    v20 = 0;
    goto LABEL_27;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF88]);
  adjustmentType = [dataCopy adjustmentType];

  if (adjustmentType)
  {
    adjustmentType2 = [dataCopy adjustmentType];
    v8 = [adjustmentType2 dataUsingEncoding:4];
    [v5 appendData:v8];
  }

  adjustmentCompoundVersion = [dataCopy adjustmentCompoundVersion];

  if (adjustmentCompoundVersion)
  {
    adjustmentCompoundVersion2 = [dataCopy adjustmentCompoundVersion];
    v11 = [adjustmentCompoundVersion2 dataUsingEncoding:4];
    [v5 appendData:v11];
  }

  adjustmentCreatorCode = [dataCopy adjustmentCreatorCode];

  if (adjustmentCreatorCode)
  {
    adjustmentCreatorCode2 = [dataCopy adjustmentCreatorCode];
    v14 = [adjustmentCreatorCode2 dataUsingEncoding:4];
    [v5 appendData:v14];
  }

  simpleAdjustmentData = [dataCopy simpleAdjustmentData];

  if (simpleAdjustmentData)
  {
    simpleAdjustmentData2 = [dataCopy simpleAdjustmentData];
    [v5 appendData:simpleAdjustmentData2];
  }

  if ([dataCopy adjustmentSourceType] != 1)
  {
    v19 = 0;
    goto LABEL_17;
  }

  baseImageFingerprint = [dataCopy baseImageFingerprint];
  if (baseImageFingerprint)
  {
    v18 = baseImageFingerprint;
    v19 = 0;
  }

  else
  {
    baseImage = [dataCopy baseImage];
    v37 = 0;
    v18 = [self fingerPrintForData:baseImage error:&v37];
    v19 = v37;

    if (!v18)
    {
      goto LABEL_17;
    }
  }

  v22 = [v18 dataUsingEncoding:4];
  [v5 appendData:v22];

LABEL_17:
  largeAdjustmentDataFingerprint = [dataCopy largeAdjustmentDataFingerprint];
  if (largeAdjustmentDataFingerprint)
  {
    v24 = largeAdjustmentDataFingerprint;
    v25 = v19;
LABEL_20:
    v27 = [v24 dataUsingEncoding:4];
    [v5 appendData:v27];

    goto LABEL_21;
  }

  largeAdjustmentData = [dataCopy largeAdjustmentData];
  v36 = v19;
  v24 = [self fingerPrintForData:largeAdjustmentData error:&v36];
  v25 = v36;

  if (v24)
  {
    goto LABEL_20;
  }

LABEL_21:
  secondaryAdjustmentData = [dataCopy secondaryAdjustmentData];
  v35 = v25;
  v29 = [self fingerPrintForData:secondaryAdjustmentData error:&v35];
  v30 = v35;

  if (v29)
  {
    v31 = [v29 dataUsingEncoding:4];
    [v5 appendData:v31];
  }

  if ([v5 length])
  {
    v34 = v30;
    v20 = [self fingerPrintForData:v5 error:&v34];
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

+ (id)fingerPrintForFileDescriptor:(int)descriptor error:(id *)error
{
  v4 = MMCSSignatureCreateFromFileDescriptor();
  if (v4)
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v4 length:MEMORY[0x1B8C64070](v4) freeWhenDone:1];
    v4 = [v5 base64EncodedStringWithOptions:0];
  }

  return v4;
}

+ (id)fingerPrintForData:(id)data error:(id *)error
{
  if (data)
  {
    dataCopy = data;
    v5 = MMCSSignatureGeneratorCreate();
    bytes = [dataCopy bytes];
    v7 = [dataCopy length];

    MEMORY[0x1B8C640B0](v5, bytes, v7, 1);
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