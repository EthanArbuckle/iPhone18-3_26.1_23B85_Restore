@interface WFiTunesSoftwareObject
+ (id)JSONKeyPathsByPropertyKey;
+ (id)allowedSecureCodingClassesByPropertyKey;
+ (id)iPadScreenshotURLsJSONTransformer;
+ (id)screenshotURLsJSONTransformer;
@end

@implementation WFiTunesSoftwareObject

+ (id)iPadScreenshotURLsJSONTransformer
{
  mtl_URLValueTransformer = [MEMORY[0x1E696B0A0] mtl_URLValueTransformer];
  v3 = [(NSValueTransformer *)MTLValueTransformer mtl_arrayMappingTransformerWithTransformer:mtl_URLValueTransformer];

  return v3;
}

+ (id)screenshotURLsJSONTransformer
{
  mtl_URLValueTransformer = [MEMORY[0x1E696B0A0] mtl_URLValueTransformer];
  v3 = [(NSValueTransformer *)MTLValueTransformer mtl_arrayMappingTransformerWithTransformer:mtl_URLValueTransformer];

  return v3;
}

uint64_t __59__WFiTunesSoftwareObject_supportsGameCenterJSONTransformer__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 containsObject:@"gameCenter"];

  return [v2 numberWithBool:v3];
}

uint64_t __52__WFiTunesSoftwareObject_isUniversalJSONTransformer__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 containsObject:@"iosUniversal"];

  return [v2 numberWithBool:v3];
}

+ (id)JSONKeyPathsByPropertyKey
{
  v9[30] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___WFiTunesSoftwareObject;
  v2 = objc_msgSendSuper2(&v7, sel_JSONKeyPathsByPropertyKey);
  v3 = [v2 mutableCopy];

  v8[0] = @"identifier";
  v8[1] = @"name";
  v9[0] = @"trackId";
  v9[1] = @"trackName";
  v8[2] = @"censoredName";
  v8[3] = @"kind";
  v9[2] = @"trackCensoredName";
  v9[3] = @"kind";
  v8[4] = @"viewURL";
  v8[5] = @"bundleIdentifier";
  v9[4] = @"trackViewUrl";
  v9[5] = @"bundleId";
  v8[6] = @"lastUpdated";
  v8[7] = @"category";
  v9[6] = @"currentVersionReleaseDate";
  v9[7] = @"primaryGenreName";
  v8[8] = @"version";
  v8[9] = @"price";
  v9[8] = @"version";
  v9[9] = @"price";
  v8[10] = @"currencyCode";
  v8[11] = @"artistID";
  v9[10] = @"currency";
  v9[11] = @"artistId";
  v8[12] = @"artistName";
  v8[13] = @"releaseDate";
  v9[12] = @"artistName";
  v9[13] = @"releaseDate";
  v8[14] = @"formattedPrice";
  v8[15] = @"descriptionText";
  v9[14] = @"formattedPrice";
  v9[15] = @"description";
  v8[16] = @"releaseNotes";
  v8[17] = @"contentRating";
  v9[16] = @"releaseNotes";
  v9[17] = @"trackContentRating";
  v8[18] = @"minimumOSVersion";
  v8[19] = @"fileSize";
  v9[18] = @"minimumOsVersion";
  v9[19] = @"fileSizeBytes";
  v8[20] = @"averageRating";
  v8[21] = @"numberOfRatings";
  v9[20] = @"averageUserRating";
  v9[21] = @"userRatingCount";
  v8[22] = @"averageRatingLatestVersion";
  v8[23] = @"numberOfRatingsLatestVersion";
  v9[22] = @"averageUserRatingForCurrentVersion";
  v9[23] = @"userRatingCountForCurrentVersion";
  v8[24] = @"isUniversal";
  v8[25] = @"supportsGameCenter";
  v9[24] = @"features";
  v9[25] = @"features";
  v8[26] = @"supportedLanguages";
  v8[27] = @"supportedDevices";
  v9[26] = @"languageCodesISO2A";
  v9[27] = @"supportedDevices";
  v8[28] = @"screenshotURLs";
  v8[29] = @"iPadScreenshotURLs";
  v9[28] = @"screenshotUrls";
  v9[29] = @"ipadScreenshotUrls";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:30];
  [v3 addEntriesFromDictionary:v4];

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)allowedSecureCodingClassesByPropertyKey
{
  v14[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___WFiTunesSoftwareObject;
  v2 = objc_msgSendSuper2(&v10, sel_allowedSecureCodingClassesByPropertyKey);
  v3 = [v2 mutableCopy];

  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [v3 setObject:v4 forKey:@"screenshotURLs"];

  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  [v3 setObject:v5 forKey:@"iPadScreenshotURLs"];

  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [v3 setObject:v6 forKey:@"supportedLanguages"];

  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [v3 setObject:v7 forKey:@"supportedDevices"];

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

@end