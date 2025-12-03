@interface PHAsset(PhotosUICoreAccessibility)
- (id)_faceNamesStringForAsset;
- (id)px_accessibilityLabelForStyles:()PhotosUICoreAccessibility;
@end

@implementation PHAsset(PhotosUICoreAccessibility)

- (id)_faceNamesStringForAsset
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:0 orObject:self];
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
  [PXPeopleUtilities peopleFaceTilesForAsset:self options:v2 completion:v18];
  if ([v20[5] count])
  {
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
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

          person = [*(*(&v14 + 1) + 8 * i) person];
          if (person)
          {
            [v4 addObject:person];
            px_localizedName = [person px_localizedName];
            if ([px_localizedName length])
            {
              [orderedSet addObject:px_localizedName];
            }
          }

          v11 = [orderedSet count] < 2;

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

    v12 = [orderedSet count];
    if (v12)
    {
      if (v12 == 1)
      {
        PXLocalizedStringFromTable(@"PXFace1NamedPerson", @"PhotosUICore");
        objc_claimAutoreleasedReturnValue();
        [orderedSet objectAtIndexedSubscript:0];
        objc_claimAutoreleasedReturnValue();
        PXLocalizedStringWithValidatedFormat();
      }

      PXLocalizedStringFromTable(@"PXFace2NamedPeople", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      [orderedSet objectAtIndexedSubscript:0];
      objc_claimAutoreleasedReturnValue();
      [orderedSet objectAtIndexedSubscript:1];
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
  array = [MEMORY[0x1E695DF70] array];
  if (a3)
  {
    title = [self title];

    if (title)
    {
      title2 = [self title];
      [array addObject:title2];
    }
  }

  if ((a3 & 8) != 0)
  {
    v8 = MEMORY[0x1E696AB78];
    creationDate = [self creationDate];
    v10 = [v8 localizedStringFromDate:creationDate dateStyle:2 timeStyle:1];

    if (v10)
    {
      [array addObject:v10];
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

  _faceNamesStringForAsset = [self _faceNamesStringForAsset];
  if (_faceNamesStringForAsset)
  {
    [array addObject:_faceNamesStringForAsset];
  }

  if ((a3 & 0x10) != 0)
  {
LABEL_14:
    if ([self mediaType] == 2)
    {
      [self duration];
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
        [array addObject:v18];
      }
    }
  }

LABEL_21:
  isFavorite = [self isFavorite];
  if ((a3 & 2) != 0 && isFavorite)
  {
    v20 = PXLocalizedStringFromTable(@"PXFavoritedBadgeAXLabel", @"PhotosUICore");
    [array addObject:v20];
  }

  if ((a3 & 0x40) != 0)
  {
    pixelWidth = [self pixelWidth];
    if (pixelWidth >= [self pixelHeight])
    {
      v22 = @"PXAXStringOrientationNormal";
    }

    else
    {
      v22 = @"PXAXStringOrientationRotate90";
    }

    v23 = PXLocalizedStringFromTable(v22, @"PhotosUICore");
    [array addObject:v23];
  }

  if ((a3 & 0x20) != 0)
  {
    [self fetchPropertySetsIfNeeded];
    photosOneUpProperties = [self photosOneUpProperties];
    v25 = [photosOneUpProperties localizedGeoDescriptionIsHome:0];

    if (v25)
    {
      [array addObject:v25];
    }
  }

  v26 = [array componentsJoinedByString:{@", "}];

  return v26;
}

@end