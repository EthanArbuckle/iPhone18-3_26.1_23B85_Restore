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
  title = [(PFMetadataBuilder *)self title];
  v5 = [title length];
  v6 = MEMORY[0x1E696DD90];
  if (v5)
  {
    PIImageMedataSetValueMatchingImageProperty(Mutable, *MEMORY[0x1E696DD90], *MEMORY[0x1E696DDD8], title);
  }

  caption = [(PFMetadataBuilder *)self caption];
  if ([caption length])
  {
    PIImageMedataSetValueMatchingImageProperty(Mutable, *v6, *MEMORY[0x1E696DD68], caption);
  }

  accessibilityDescription = [(PFMetadataBuilder *)self accessibilityDescription];
  if ([accessibilityDescription length])
  {
    PIImageMedataSetValueMatchingImageProperty(Mutable, *v6, *MEMORY[0x1E696DDA8], accessibilityDescription);
  }

  combinedKeywordsAndPeople = [(PFMetadataBuilder *)self combinedKeywordsAndPeople];
  if ([combinedKeywordsAndPeople count])
  {
    PIImageMedataSetValueMatchingImageProperty(Mutable, *v6, *MEMORY[0x1E696DDD0], combinedKeywordsAndPeople);
  }

  creationDate = [(PFMetadataBuilder *)self creationDate];
  if (creationDate)
  {
    xmpCreateDateFormatter = [objc_opt_class() xmpCreateDateFormatter];
    creationTimeZone = [(PFMetadataBuilder *)self creationTimeZone];
    [xmpCreateDateFormatter setTimeZone:creationTimeZone];

    v13 = [xmpCreateDateFormatter stringFromDate:creationDate];
    PIImageMedataSetValueMatchingImageProperty(Mutable, *MEMORY[0x1E696D9B0], *MEMORY[0x1E696D998], v13);
  }

  location = [(PFMetadataBuilder *)self location];
  if (location)
  {
    [PFSharingUtilities gpsDictionaryForLocation:location];
    v28 = combinedKeywordsAndPeople;
    v15 = accessibilityDescription;
    v16 = caption;
    v18 = v17 = title;
    v19 = [v18 mutableCopy];

    xmpCreateDateFormatter2 = [objc_opt_class() xmpCreateDateFormatter];
    v21 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [xmpCreateDateFormatter2 setTimeZone:v21];

    [v19 setObject:0 forKeyedSubscript:*MEMORY[0x1E696DBA8]];
    timestamp = [location timestamp];
    v23 = [xmpCreateDateFormatter2 stringFromDate:timestamp];
    [v19 setObject:v23 forKeyedSubscript:*MEMORY[0x1E696DC70]];

    title = v17;
    caption = v16;
    accessibilityDescription = v15;
    combinedKeywordsAndPeople = v28;
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