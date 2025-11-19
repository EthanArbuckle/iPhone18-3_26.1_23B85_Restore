@interface PHAsset(PhotosUICoreAccessibility)
- (id)_faceNamesStringForAsset;
- (id)px_accessibilityLabelForStyles:()PhotosUICoreAccessibility;
@end

@implementation PHAsset(PhotosUICoreAccessibility)

- (id)_faceNamesStringForAsset
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:a1];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__164277;
  v23 = __Block_byref_object_dispose__164278;
  v24 = MEMORY[0x1E695E0F0];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__PHAsset_PhotosUICoreAccessibility___faceNamesStringForAsset__block_invoke;
  v18[3] = &unk_1E773EF38;
  v18[4] = &v19;
  [PXPeopleUtilities peopleFaceTilesForAsset:a1 options:v2 completion:v18];
  if ([v20[5] count])
  {
    v3 = [MEMORY[0x1E695DFA0] orderedSet];
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v20[5];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v25 count:16];
    if (v6)
    {
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v14 + 1) + 8 * i) person];
          if (v9)
          {
            [v4 addObject:v9];
            v10 = [v9 px_localizedName];
            if ([v10 length])
            {
              [v3 addObject:v10];
            }
          }

          v11 = [v3 count] < 2;

          if (!v11)
          {
            goto LABEL_14;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v25 count:16];
      }

      while (v6);
    }

LABEL_14:

    v12 = [v3 count];
    if (v12)
    {
      if (v12 == 1)
      {
        PXLocalizedStringFromTable(@"PXFace1NamedPerson", @"PhotosUICore");
        objc_claimAutoreleasedReturnValue();
        [v3 objectAtIndexedSubscript:0];
        objc_claimAutoreleasedReturnValue();
        PXLocalizedStringWithValidatedFormat();
      }

      PXLocalizedStringFromTable(@"PXFace2NamedPeople", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      [v3 objectAtIndexedSubscript:0];
      objc_claimAutoreleasedReturnValue();
      [v3 objectAtIndexedSubscript:1];
      objc_claimAutoreleasedReturnValue();
      PXLocalizedStringWithValidatedFormat();
    }

    PXLocalizedStringForPeople(v4, @"PXFace0NamedPeople");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  _Block_object_dispose(&v19, 8);

  return 0;
}

- (id)px_accessibilityLabelForStyles:()PhotosUICoreAccessibility
{
  v5 = [MEMORY[0x1E695DF70] array];
  if (a3)
  {
    v6 = [a1 title];

    if (v6)
    {
      v7 = [a1 title];
      [v5 addObject:v7];
    }
  }

  if ((a3 & 8) != 0)
  {
    v8 = MEMORY[0x1E696AB78];
    v9 = [a1 creationDate];
    v10 = [v8 localizedStringFromDate:v9 dateStyle:2 timeStyle:1];

    if (v10)
    {
      [v5 addObject:v10];
    }

    if ((a3 & 4) == 0)
    {
LABEL_6:
      if ((a3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }
  }

  else if ((a3 & 4) == 0)
  {
    goto LABEL_6;
  }

  v11 = [a1 _faceNamesStringForAsset];
  if (v11)
  {
    [v5 addObject:v11];
  }

  if ((a3 & 0x10) != 0)
  {
LABEL_14:
    if ([a1 mediaType] == 2)
    {
      [a1 duration];
      v13 = (v12 / 3600.0);
      v14 = v12 - (3600 * v13);
      v15 = (v14 / 60.0);
      v16 = vcvtad_u64_f64(v14 - (60 * v15));
      v17 = PXLocalizedStringFromTable(@"PXCameraSettingsMediaDurationAXDescription", @"PhotosUICore");
      if (v13)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %lu:%02lu:%02lu", v17, v13, v15, v16];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %lu:%02lu", v17, v15, v16, v28];
      }
      v18 = ;
      if ([v18 length])
      {
        [v5 addObject:v18];
      }
    }
  }

LABEL_21:
  v19 = [a1 isFavorite];
  if ((a3 & 2) != 0 && v19)
  {
    v20 = PXLocalizedStringFromTable(@"PXFavoritedBadgeAXLabel", @"PhotosUICore");
    [v5 addObject:v20];
  }

  if ((a3 & 0x40) != 0)
  {
    v21 = [a1 pixelWidth];
    if (v21 >= [a1 pixelHeight])
    {
      v22 = @"PXAXStringOrientationNormal";
    }

    else
    {
      v22 = @"PXAXStringOrientationRotate90";
    }

    v23 = PXLocalizedStringFromTable(v22, @"PhotosUICore");
    [v5 addObject:v23];
  }

  if ((a3 & 0x20) != 0)
  {
    [a1 fetchPropertySetsIfNeeded];
    v24 = [a1 photosOneUpProperties];
    v25 = [v24 localizedGeoDescriptionIsHome:0];

    if (v25)
    {
      [v5 addObject:v25];
    }
  }

  v26 = [v5 componentsJoinedByString:{@", "}];

  return v26;
}

@end