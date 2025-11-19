@interface PFXMPMetadataBuilder
+ (id)xmpCreateDateFormatter;
- (id)xmpData;
@end

@implementation PFXMPMetadataBuilder

+ (id)xmpCreateDateFormatter
{
  if (xmpCreateDateFormatter_onceToken != -1)
  {
    dispatch_once(&xmpCreateDateFormatter_onceToken, &__block_literal_global_217);
  }

  v3 = xmpCreateDateFormatter_xmpCreateDateFormatter;

  return v3;
}

uint64_t __46__PFXMPMetadataBuilder_xmpCreateDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = xmpCreateDateFormatter_xmpCreateDateFormatter;
  xmpCreateDateFormatter_xmpCreateDateFormatter = v0;

  v2 = xmpCreateDateFormatter_xmpCreateDateFormatter;

  return [v2 setFormatOptions:1907];
}

- (id)xmpData
{
  v34 = *MEMORY[0x1E69E9840];
  Mutable = CGImageMetadataCreateMutable();
  v4 = [(PFMetadataBuilder *)self title];
  v5 = [v4 length];
  v6 = MEMORY[0x1E696DD90];
  if (v5)
  {
    PIImageMedataSetValueMatchingImageProperty(Mutable, *MEMORY[0x1E696DD90], *MEMORY[0x1E696DDD8], v4);
  }

  v7 = [(PFMetadataBuilder *)self caption];
  if ([v7 length])
  {
    PIImageMedataSetValueMatchingImageProperty(Mutable, *v6, *MEMORY[0x1E696DD68], v7);
  }

  v8 = [(PFMetadataBuilder *)self accessibilityDescription];
  if ([v8 length])
  {
    PIImageMedataSetValueMatchingImageProperty(Mutable, *v6, *MEMORY[0x1E696DDA8], v8);
  }

  v9 = [(PFMetadataBuilder *)self combinedKeywordsAndPeople];
  if ([v9 count])
  {
    PIImageMedataSetValueMatchingImageProperty(Mutable, *v6, *MEMORY[0x1E696DDD0], v9);
  }

  v10 = [(PFMetadataBuilder *)self creationDate];
  if (v10)
  {
    v11 = [objc_opt_class() xmpCreateDateFormatter];
    v12 = [(PFMetadataBuilder *)self creationTimeZone];
    [v11 setTimeZone:v12];

    v13 = [v11 stringFromDate:v10];
    PIImageMedataSetValueMatchingImageProperty(Mutable, *MEMORY[0x1E696D9B0], *MEMORY[0x1E696D998], v13);
  }

  v14 = [(PFMetadataBuilder *)self location];
  if (v14)
  {
    [PFSharingUtilities gpsDictionaryForLocation:v14];
    v28 = v9;
    v15 = v8;
    v16 = v7;
    v18 = v17 = v4;
    v19 = [v18 mutableCopy];

    v20 = [objc_opt_class() xmpCreateDateFormatter];
    v21 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v20 setTimeZone:v21];

    [v19 setObject:0 forKeyedSubscript:*MEMORY[0x1E696DBA8]];
    v22 = [v14 timestamp];
    v23 = [v20 stringFromDate:v22];
    [v19 setObject:v23 forKeyedSubscript:*MEMORY[0x1E696DC70]];

    v4 = v17;
    v7 = v16;
    v8 = v15;
    v9 = v28;
    v24 = *MEMORY[0x1E696DBF0];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v30 = __PIUpdateMetadataValuesFromDicationary_block_invoke;
    v31 = &__block_descriptor_48_e15_v32__0_8_16_B24l;
    v32 = Mutable;
    v33 = v24;
    [v19 enumerateKeysAndObjectsUsingBlock:&buf];
  }

  XMPData = CGImageMetadataCreateXMPData(Mutable, 0);
  if (!XMPData)
  {
    v26 = PFMetadataBuilderLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = Mutable;
      _os_log_error_impl(&dword_1B35C1000, v26, OS_LOG_TYPE_ERROR, "[XMP metadata builder] Failed create data from XMP metadata %@", &buf, 0xCu);
    }
  }

  CFRelease(Mutable);

  return XMPData;
}

@end