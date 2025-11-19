@interface WFAppStoreAppContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
- (BOOL)getListSubtitle:(id)a3;
- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4;
@end

@implementation WFAppStoreAppContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"App Store Apps", @"App Store Apps");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"App Store App", @"App Store App");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = *MEMORY[0x1E6996FD8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)stringConversionBehavior
{
  v2 = MEMORY[0x1E6996D70];
  v3 = WFLocalizedString(@"Name and Store URL");
  v4 = [v2 coercingToStringWithDescription:v3];

  return v4;
}

+ (id)propertyBuilders
{
  v87[24] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6996D90];
  v86 = WFLocalizedContentPropertyNameMarker(@"Artist");
  v85 = [v2 block:&__block_literal_global_6397 name:v86 class:objc_opt_class()];
  v87[0] = v85;
  v3 = MEMORY[0x1E6996D90];
  v84 = WFLocalizedContentPropertyNameMarker(@"Price");
  v83 = [v3 keyPath:@"object.price" name:v84 class:objc_opt_class()];
  v87[1] = v83;
  v4 = MEMORY[0x1E6996D90];
  v82 = WFLocalizedContentPropertyNameMarker(@"Currency Code");
  v81 = [v4 keyPath:@"object.currencyCode" name:v82 class:objc_opt_class()];
  v87[2] = v81;
  v5 = MEMORY[0x1E6996D90];
  v80 = WFLocalizedContentPropertyNameMarker(@"Formatted Price");
  v79 = [v5 keyPath:@"object.formattedPrice" name:v80 class:objc_opt_class()];
  v87[3] = v79;
  v6 = MEMORY[0x1E6996D90];
  v78 = WFLocalizedContentPropertyNameMarker(@"Release Date");
  v77 = [v6 keyPath:@"object.releaseDate" name:v78 class:objc_opt_class()];
  v87[4] = v77;
  v7 = MEMORY[0x1E6996D90];
  v76 = WFLocalizedContentPropertyNameMarker(@"Category");
  v75 = [v7 keyPath:@"object.category" name:v76 class:objc_opt_class()];
  v87[5] = v75;
  v8 = MEMORY[0x1E6996D90];
  v74 = WFLocalizedContentPropertyNameMarker(@"Description");
  v73 = [v8 keyPath:@"object.descriptionText" name:v74 class:objc_opt_class()];
  v87[6] = v73;
  v9 = MEMORY[0x1E6996D90];
  v72 = WFLocalizedContentPropertyNameMarker(@"Rating");
  v71 = [v9 keyPath:@"object.averageRating" name:v72 class:objc_opt_class()];
  v87[7] = v71;
  v10 = MEMORY[0x1E6996D90];
  v70 = WFLocalizedContentPropertyNameMarker(@"# of Ratings");
  v69 = [v10 keyPath:@"object.numberOfRatings" name:v70 class:objc_opt_class()];
  v87[8] = v69;
  v11 = MEMORY[0x1E6996D90];
  v68 = WFLocalizedContentPropertyNameMarker(@"Rating (This Version)");
  v67 = [v11 keyPath:@"object.averageRatingLatestVersion" name:v68 class:objc_opt_class()];
  v87[9] = v67;
  v12 = MEMORY[0x1E6996D90];
  v66 = WFLocalizedContentPropertyNameMarker(@"# of Ratings (This Version)");
  v65 = [v12 keyPath:@"object.numberOfRatingsLatestVersion" name:v66 class:objc_opt_class()];
  v87[10] = v65;
  v13 = MEMORY[0x1E6996D90];
  v64 = WFLocalizedContentPropertyNameMarker(@"Version");
  v63 = [v13 keyPath:@"object.version" name:v64 class:objc_opt_class()];
  v87[11] = v63;
  v14 = MEMORY[0x1E6996D90];
  v62 = WFLocalizedContentPropertyNameMarker(@"Last Updated");
  v61 = [v14 keyPath:@"object.lastUpdated" name:v62 class:objc_opt_class()];
  v87[12] = v61;
  v15 = MEMORY[0x1E6996D90];
  v60 = WFLocalizedContentPropertyNameMarker(@"Release Notes");
  v59 = [v15 keyPath:@"object.releaseNotes" name:v60 class:objc_opt_class()];
  v87[13] = v59;
  v16 = MEMORY[0x1E6996D90];
  v58 = WFLocalizedContentPropertyNameMarker(@"Content Rating");
  v57 = [v16 keyPath:@"object.contentRating" name:v58 class:objc_opt_class()];
  v87[14] = v57;
  v17 = MEMORY[0x1E6996D90];
  v56 = WFLocalizedContentPropertyNameMarker(@"Minimum OS Version");
  v55 = [v17 keyPath:@"object.minimumOSVersion" name:v56 class:objc_opt_class()];
  v87[15] = v55;
  v18 = MEMORY[0x1E6996D90];
  v53 = WFLocalizedContentPropertyNameMarker(@"Is Universal");
  v54 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v52 = [v18 keyPath:@"object.isUniversal" name:v53 class:objc_opt_class()];
  v51 = WFLocalizedContentPropertyNameMarker(@"Is Not Universal");
  v50 = [v52 negativeName:v51];
  v87[16] = v50;
  v19 = MEMORY[0x1E6996D90];
  v48 = WFLocalizedContentPropertyNameMarker(@"Supports Game Center");
  v49 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v47 = [v19 keyPath:@"object.supportsGameCenter" name:v48 class:objc_opt_class()];
  v46 = WFLocalizedContentPropertyNameMarker(@"Does Not Support Game Center");
  v45 = [v47 negativeName:v46];
  v87[17] = v45;
  v20 = MEMORY[0x1E6996D90];
  v44 = WFLocalizedContentPropertyNameMarker(@"Supported Devices");
  v43 = [v20 keyPath:@"object.supportedDevices" name:v44 class:objc_opt_class()];
  v42 = [v43 multipleValues:1];
  v87[18] = v42;
  v21 = MEMORY[0x1E6996D90];
  v41 = WFLocalizedContentPropertyNameMarker(@"Supported Languages");
  v40 = [v21 keyPath:@"object.supportedLanguages" name:v41 class:objc_opt_class()];
  v39 = [v40 multipleValues:1];
  v87[19] = v39;
  v22 = MEMORY[0x1E6996D90];
  v23 = WFLocalizedContentPropertyNameMarker(@"Screenshot URLs");
  v24 = [v22 keyPath:@"object.screenshotURLs" name:v23 class:objc_opt_class()];
  v25 = [v24 multipleValues:1];
  v87[20] = v25;
  v26 = MEMORY[0x1E6996D90];
  v27 = WFLocalizedContentPropertyNameMarker(@"iPad Screenshot URLs");
  v28 = [v26 keyPath:@"object.iPadScreenshotURLs" name:v27 class:objc_opt_class()];
  v29 = [v28 multipleValues:1];
  v87[21] = v29;
  v30 = MEMORY[0x1E6996D90];
  v31 = WFLocalizedContentPropertyNameMarker(@"Download Size");
  v32 = [v30 block:&__block_literal_global_306 name:v31 class:objc_opt_class()];
  v87[22] = v32;
  v33 = MEMORY[0x1E6996D90];
  v34 = WFLocalizedContentPropertyNameMarker(@"Bundle Identifier");
  v35 = [v33 keyPath:@"object.bundleIdentifier" name:v34 class:objc_opt_class()];
  v87[23] = v35;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:24];

  v36 = *MEMORY[0x1E69E9840];

  return v38;
}

void __44__WFAppStoreAppContentItem_propertyBuilders__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v9 = [a2 object];
  v6 = objc_alloc(MEMORY[0x1E6996E28]);
  v7 = [v9 fileSize];
  v8 = [v6 initWithByteCount:{objc_msgSend(v7, "longLongValue")}];
  v5[2](v5, v8);
}

void __44__WFAppStoreAppContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a2 softwareObject];
  v7 = objc_opt_new();
  v8 = [v6 artistID];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__WFAppStoreAppContentItem_propertyBuilders__block_invoke_2;
  v12[3] = &unk_1E837F588;
  v13 = v5;
  v10 = v5;
  [v7 lookupMediaWithIdentifiers:v9 countryCode:0 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __44__WFAppStoreAppContentItem_propertyBuilders__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  (*(v2 + 16))(v2, v3);
}

- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__WFAppStoreAppContentItem_getListThumbnail_forSize___block_invoke;
    v10[3] = &unk_1E837D710;
    v11 = v7;
    [(WFiTunesObjectContentItem *)self getArtworkForSize:v10 completionHandler:width, height];
  }

  return 1;
}

void __53__WFAppStoreAppContentItem_getListThumbnail_forSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__WFAppStoreAppContentItem_getListThumbnail_forSize___block_invoke_2;
  v6[3] = &unk_1E837E1F8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __53__WFAppStoreAppContentItem_getListThumbnail_forSize___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E0FE8];
  v6[0] = &unk_1F4A9A198;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)getListSubtitle:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(WFAppStoreAppContentItem *)self softwareObject];
    v6 = [v5 artistName];
    if (v6)
    {
      v7 = v6;
      v8 = [(WFAppStoreAppContentItem *)self softwareObject];
      v9 = [v8 formattedPrice];

      if (v9)
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = [(WFAppStoreAppContentItem *)self softwareObject];
        v12 = [v11 artistName];
        v13 = [(WFAppStoreAppContentItem *)self softwareObject];
        v14 = [v13 formattedPrice];
        v15 = [v10 stringWithFormat:@"%@ • %@", v12, v14];
        v4[2](v4, v15);

LABEL_8:
        goto LABEL_9;
      }
    }

    else
    {
    }

    v16 = [(WFAppStoreAppContentItem *)self softwareObject];
    v17 = [v16 artistName];

    if (v17)
    {
      v11 = [(WFAppStoreAppContentItem *)self softwareObject];
      v12 = [v11 artistName];
      v4[2](v4, v12);
      goto LABEL_8;
    }
  }

LABEL_9:

  return 1;
}

@end