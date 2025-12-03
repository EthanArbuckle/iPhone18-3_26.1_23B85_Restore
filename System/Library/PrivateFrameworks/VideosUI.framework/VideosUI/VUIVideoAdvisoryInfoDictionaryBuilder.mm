@interface VUIVideoAdvisoryInfoDictionaryBuilder
+ (id)advisoryInfoDictionaryWithRatingImage:(id)image photoSensitivityImage:(id)sensitivityImage highMotionWarningImage:(id)warningImage andMediaItem:(id)item;
@end

@implementation VUIVideoAdvisoryInfoDictionaryBuilder

+ (id)advisoryInfoDictionaryWithRatingImage:(id)image photoSensitivityImage:(id)sensitivityImage highMotionWarningImage:(id)warningImage andMediaItem:(id)item
{
  v63 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  sensitivityImageCopy = sensitivityImage;
  warningImageCopy = warningImage;
  itemCopy = item;
  v13 = objc_opt_new();
  v14 = v13;
  if (imageCopy)
  {
    [v13 setObject:imageCopy forKeyedSubscript:@"VUIAdvisoryViewLogoImageKey"];
  }

  if (itemCopy)
  {
    v52 = warningImageCopy;
    v49 = imageCopy;
    v50 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5AA0]];
    v51 = v14;
    if ([v50 count])
    {
      v47 = itemCopy;
      v48 = sensitivityImageCopy;
      v15 = objc_opt_new();
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      obj = v50;
      v16 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v55;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v55 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v54 + 1) + 8 * i);
            v21 = objc_opt_new();
            ratingName = [v20 ratingName];
            v23 = [ratingName length];

            if (v23)
            {
              ratingName2 = [v20 ratingName];
              [v21 setObject:ratingName2 forKeyedSubscript:@"VUIAdvisoryViewLegendNameKey"];
            }

            ratingDescription = [v20 ratingDescription];
            v26 = [ratingDescription length];

            if (v26)
            {
              ratingDescription2 = [v20 ratingDescription];
              [v21 setObject:ratingDescription2 forKeyedSubscript:@"VUIAdvisoryViewLegendDescriptionKey"];
            }

            if ([v21 count])
            {
              [v15 addObject:v21];
            }
          }

          v17 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
        }

        while (v17);
      }

      [v14 setObject:v15 forKeyedSubscript:@"VUIAdvisoryViewLegendsKey"];
      itemCopy = v47;
      sensitivityImageCopy = v48;
    }

    v28 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5CB8]];
    localizedInfoString = [v28 localizedInfoString];
    v30 = [localizedInfoString length];

    if (v30)
    {
      localizedInfoString2 = [v28 localizedInfoString];
      [v14 setObject:localizedInfoString2 forKeyedSubscript:@"VUIAdvisoryViewBlockDescriptionKey"];
    }

    v32 = objc_opt_new();
    v33 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C90]];
    v34 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C88]];
    if (v33)
    {
      [v33 floatValue];
      if (sensitivityImageCopy)
      {
        if (v35 > 0.0 && v34)
        {
          v60[0] = @"VUIIAdditionalAdvisoryInfoDisplayDurationKey";
          v60[1] = @"VUIIAdditionalAdvisoryInfoViewDescriptionKey";
          v61[0] = v33;
          v61[1] = v34;
          v60[2] = @"VUIAdditionalAdvisoryInfoViewImageKey";
          v61[2] = sensitivityImageCopy;
          v36 = MEMORY[0x1E695DF20];
          v37 = sensitivityImageCopy;
          v38 = [v36 dictionaryWithObjects:v61 forKeys:v60 count:3];

          [v32 addObject:v38];
        }
      }
    }

    v39 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C28]];
    v40 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C20]];
    if (v39)
    {
      [v39 floatValue];
      if (v52)
      {
        if (v41 > 0.0 && v40)
        {
          v58[0] = @"VUIIAdditionalAdvisoryInfoDisplayDurationKey";
          v58[1] = @"VUIIAdditionalAdvisoryInfoViewDescriptionKey";
          v59[0] = v39;
          v59[1] = v40;
          v58[2] = @"VUIAdditionalAdvisoryInfoViewImageKey";
          v59[2] = v52;
          v42 = MEMORY[0x1E695DF20];
          v43 = v52;
          v44 = [v42 dictionaryWithObjects:v59 forKeys:v58 count:3];

          [v32 addObject:v44];
        }
      }
    }

    [v51 setObject:v32 forKeyedSubscript:@"VUIAdvisoryViewAdditionalViewsDictionaryKey"];

    v14 = v51;
    imageCopy = v49;
    warningImageCopy = v52;
  }

  v45 = [v14 copy];

  return v45;
}

@end