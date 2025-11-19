@interface PUSharingHeaderController
+ (PUSharingHeaderController)new;
- (PUSharingHeaderController)init;
- (PUSharingHeaderController)initWithDataProvider:(id)a3;
- (PUSharingHeaderDataProvider)dataProvider;
- (id)_linkPresentationImageForPerson:(id)a3;
- (id)_sharingHeaderStatus;
- (id)createTextAttachmentForGlyphImageWithName:(id)a3;
- (void)updateIfNeeded;
@end

@implementation PUSharingHeaderController

- (PUSharingHeaderDataProvider)dataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);

  return WeakRetained;
}

- (id)_linkPresentationImageForPerson:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUSharingHeaderController.m" lineNumber:397 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v6 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v7 = objc_opt_class();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__PUSharingHeaderController__linkPresentationImageForPerson___block_invoke;
  v12[3] = &unk_1E7B77020;
  v13 = v5;
  v8 = v5;
  [v6 registerObjectOfClass:v7 visibility:0 loadHandler:v12];
  v9 = [objc_alloc(MEMORY[0x1E696EC68]) initWithItemProvider:v6 properties:0 placeholderImage:0];

  return v9;
}

uint64_t __61__PUSharingHeaderController__linkPresentationImageForPerson___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E69C3780]);
  v5 = *(a1 + 32);
  PLPhysicalScreenScale();
  v7 = [v4 initWithPerson:v5 targetSize:40.0 displayScale:{40.0, v6}];
  [v7 setDeliveryMode:1];
  v8 = [MEMORY[0x1E69C3788] sharedManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__PUSharingHeaderController__linkPresentationImageForPerson___block_invoke_2;
  v11[3] = &unk_1E7B7F870;
  v12 = v3;
  v9 = v3;
  [v8 requestFaceCropForOptions:v7 resultHandler:v11];

  return 0;
}

void __61__PUSharingHeaderController__linkPresentationImageForPerson___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v5 = [a3 objectForKeyedSubscript:*MEMORY[0x1E69C4108]];
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[PUSharingHeaderController _linkPresentationImageForPerson:]_block_invoke_2";
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "%s: Error fetching thumbnail image data: %@", &v7, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (id)createTextAttachmentForGlyphImageWithName:(id)a3
{
  v3 = MEMORY[0x1E69DB878];
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = a3;
  v6 = [v3 preferredFontForTextStyle:v4];
  v7 = [MEMORY[0x1E69DCAD8] configurationWithFont:v6 scale:1];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:v5 withConfiguration:v7];

  v9 = [v8 imageWithRenderingMode:2];

  v10 = [objc_alloc(MEMORY[0x1E69DB7F0]) initWithData:0 ofType:0];
  [v10 setImage:v9];

  return v10;
}

- (id)_sharingHeaderStatus
{
  v128[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  v4 = [(PUSharingHeaderController *)self dataProvider];
  v5 = [v4 orderedSelectedAssets];

  v126 = 0;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v6 = [(PUSharingHeaderController *)self dataProvider];
  v7 = v6;
  if (v6)
  {
    [v6 assetTypeCount];
  }

  else
  {
    v126 = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
  }

  v114 = *(&v124 + 1);
  v8 = [(PUSharingHeaderController *)self dataProvider];
  v116 = [v8 preferredExportFormat];

  v9 = [(PUSharingHeaderController *)self dataProvider];
  v10 = [v9 shareAsCMM];

  if (v10)
  {
    v11 = PXLocalizedString();
    [v3 addObject:v11];
  }

  v12 = [(PUSharingHeaderController *)self dataProvider];
  v13 = [v12 sendAsAssetBundles];

  if (v13)
  {
    v14 = @"SHARING_HEADER_ALL_PHOTOS_DATA";
LABEL_12:
    v17 = PULocalizedString(v14);
    [v3 addObject:v17];

    goto LABEL_13;
  }

  v15 = [(PUSharingHeaderController *)self dataProvider];
  v16 = [v15 sendAsUnmodifiedOriginals];

  if (v16)
  {
    if ([v5 count] == 1)
    {
      v14 = @"SHARING_HEADER_UNMODIFIED_ORIGINALS";
    }

    else
    {
      v14 = @"SHARING_HEADER_UNMODIFIED_ORIGINALS_MULTIPLE";
    }

    goto LABEL_12;
  }

LABEL_13:
  if (![v3 count])
  {
    v18 = [MEMORY[0x1E69C3A18] sharedInstance];
    v19 = [v18 showSingleVideoDurationInShareSheetHeader];

    if (v19)
    {
      if ([v5 count] == 1 && *(&v122 + 1) && !v123)
      {
        v20 = [v5 firstObject];
        [v20 duration];
        v21 = PXLocalizedVideoDuration();

        [v3 addObject:v21];
      }
    }
  }

  v22 = [(PUSharingHeaderController *)self dataProvider];
  v23 = [v22 excludeCaption];
  if (*(&v125 + 1))
  {
    v24 = v23;
  }

  else
  {
    v24 = 1;
  }

  v25 = [(PUSharingHeaderController *)self dataProvider];
  [v25 excludeAccessibilityDescription];

  if (v24 == 1)
  {
    v26 = 0;
  }

  else
  {
    [v3 addObject:@"{CaptionIcon}"];
    v27 = [(PUSharingHeaderController *)self createTextAttachmentForGlyphImageWithName:@"quote.bubble"];
    v28 = [v27 image];
    [v28 baselineOffsetFromBottom];
    v30 = v29;
    [v28 alignmentRectInsets];
    v32 = v31 - v30 + 1.0;
    [v27 bounds];
    [v28 size];
    [v27 setBounds:{0.0, v32, v33, v34}];
    v26 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v27];
  }

  v35 = v116;
  if (!*(&v124 + 1))
  {
    goto LABEL_47;
  }

  v36 = [(PUSharingHeaderController *)self dataProvider];
  v37 = [v36 excludeLocation];

  if (!v37)
  {
    v41 = [v5 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v43 = [v5 firstObject];
      v44 = [v43 photoLibrary];
      v45 = [v44 librarySpecificFetchOptions];

      v46 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
      v128[0] = v46;
      v47 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"endDate" ascending:1];
      v128[1] = v47;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:2];

      [v45 setSortDescriptors:v48];
      v109 = v45;
      v110 = v5;
      v49 = [MEMORY[0x1E6978650] fetchAssetCollectionsContainingAssets:v5 withType:3 options:v45];
      v50 = [MEMORY[0x1E695DFA0] orderedSet];
      v51 = [MEMORY[0x1E69C3A18] sharedInstance];
      v52 = [v51 sharingHeaderLocationDisplayStyle];

      if (!v52)
      {
LABEL_49:
        if (v114 == 1)
        {
          v65 = @"SHARING_HEADER_LOCATION_ON";
        }

        else
        {
          v65 = @"SHARING_HEADER_LOCATION_ON_MULTIPLE";
        }

        v39 = PULocalizedString(v65);
        v5 = v110;
        goto LABEL_68;
      }

      v106 = v48;
      v107 = v43;
      v108 = v26;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      obj = v49;
      v53 = [obj countByEnumeratingWithState:&v118 objects:v127 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v119;
        while (2)
        {
          for (i = 0; i != v54; ++i)
          {
            v57 = v3;
            if (*v119 != v55)
            {
              objc_enumerationMutation(obj);
            }

            v58 = [*(*(&v118 + 1) + 8 * i) localizedLocationNames];
            [v50 addObjectsFromArray:v58];
            if ([v50 count] >= 2 && v52 == 1)
            {

              v35 = v116;
              v43 = v107;
              v48 = v106;
              v26 = v108;
              goto LABEL_49;
            }

            v59 = v49;
            v60 = [v50 count];

            v61 = v60 >= 2;
            v49 = v59;
            v3 = v57;
            if (v61 && v52 == 2)
            {
              goto LABEL_45;
            }
          }

          v54 = [obj countByEnumeratingWithState:&v118 objects:v127 count:16];
          if (v54)
          {
            continue;
          }

          break;
        }
      }

LABEL_45:

      v62 = [v50 count];
      if ([v50 count])
      {
        v63 = [v50 objectAtIndexedSubscript:0];
      }

      else
      {
        v63 = 0;
      }

      v5 = v110;
      v35 = v116;
      if ([v50 count] < 2)
      {
        v66 = 0;
      }

      else
      {
        v66 = [v50 objectAtIndexedSubscript:1];
      }

      v26 = v108;
      v115 = v63;
      if (v62 == 1)
      {
        if (v63)
        {
          v67 = v66;
          PULocalizedString(@"SHARING_HEADER_ONE_LOCATION");
          v69 = v68 = v49;
          v39 = PUStringWithValidatedFormat();

          v66 = v67;
          v49 = v68;
LABEL_66:
          v48 = v106;
          v43 = v107;
          goto LABEL_67;
        }
      }

      else if (v63 | v66)
      {
        if (v62 == 2)
        {
          v26 = v108;
          v48 = v106;
          if (v63 && v66)
          {
            v70 = v66;
            PULocalizedString(@"SHARING_HEADER_TWO_LOCATIONS");
            v71 = v117 = v49;
            v39 = PUStringWithValidatedFormat();

            v66 = v70;
            v49 = v117;
            v43 = v107;
LABEL_67:

LABEL_68:
            v40 = @"location.fill";
            goto LABEL_69;
          }

          obja = v66;
          if (v63)
          {
            v96 = v63;
          }

          else
          {
            v96 = v66;
          }

          v97 = v96;
          if (!v97)
          {
            [MEMORY[0x1E696AAA8] currentHandler];
            v103 = v102 = v49;
            [v103 handleFailureInMethod:a2 object:self file:@"PUSharingHeaderController.m" lineNumber:314 description:{@"Invalid parameter not satisfying: %@", @"locationName"}];

            v49 = v102;
          }

          v98 = PULocalizedString(@"SHARING_HEADER_ONE_LOCATION_AND_MORE");
          v39 = PUStringWithValidatedFormat();

          v35 = v116;
          v43 = v107;
          v26 = v108;
        }

        else
        {
          if (v62 < 3)
          {
            v39 = 0;
            v26 = v108;
            goto LABEL_66;
          }

          v43 = v107;
          if (v63 && v66)
          {
            v93 = v66;
            PULocalizedString(@"SHARING_HEADER_TWO_LOCATIONS_AND_N_MORE");
            v95 = v94 = v49;
            v39 = PUStringWithValidatedFormat();

            v66 = v93;
            v49 = v94;
            v26 = v108;
            v48 = v106;
            goto LABEL_67;
          }

          v99 = v63;
          obja = v66;
          if (!v63)
          {
            v99 = v66;
          }

          v100 = v99;
          if (!v100)
          {
            [MEMORY[0x1E696AAA8] currentHandler];
            v105 = v104 = v49;
            [v105 handleFailureInMethod:a2 object:self file:@"PUSharingHeaderController.m" lineNumber:322 description:{@"Invalid parameter not satisfying: %@", @"locationName"}];

            v49 = v104;
          }

          v101 = PULocalizedString(@"SHARING_HEADER_ONE_LOCATION_AND_N_MORE");
          v39 = PUStringWithValidatedFormat();
          v26 = v108;

          v35 = v116;
          v48 = v106;
          v43 = v107;
        }

        v66 = obja;
        goto LABEL_67;
      }

      v72 = v66;
      v39 = PULocalizedString(@"SHARING_HEADER_LOCATION_ON");
      v66 = v72;
      goto LABEL_66;
    }

LABEL_47:
    v64 = 0;
    goto LABEL_71;
  }

  if ([v5 count] == 1)
  {
    v38 = @"SHARING_HEADER_LOCATION_OFF";
  }

  else
  {
    v38 = @"SHARING_HEADER_LOCATION_OFF_MULTIPLE";
  }

  v39 = PULocalizedString(v38);
  v40 = @"location.slash";
LABEL_69:
  v73 = PULocalizedString(@"SHARING_HEADER_LOCATION_STRING_WITH_LOCATION_ICON_PREFIX");
  v74 = PUStringWithValidatedFormat();

  v75 = [(PUSharingHeaderController *)self createTextAttachmentForGlyphImageWithName:v40, @"{LocationIcon}", v39];
  v76 = [v75 image];
  [v76 alignmentRectInsets];
  v78 = v77;
  [v75 bounds];
  [v76 size];
  [v75 setBounds:{0.0, v78, v79, v80}];
  v64 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v75];

  if (v74)
  {
    [v3 addObject:v74];
  }

LABEL_71:
  if (v35 == 2)
  {
    v81 = @"SHARING_HEADER_FORMAT_COMPATIBLE";
  }

  else
  {
    if (v35 != 1)
    {
      goto LABEL_76;
    }

    v81 = @"SHARING_HEADER_FORMAT_CURRENT";
  }

  v82 = PULocalizedString(v81);
  [v3 addObject:v82];

LABEL_76:
  if ([v3 count])
  {
    v83 = PULocalizedString(@"SHARING_HEADER_SUBTITLE_SEPARATOR");
    v84 = [v3 componentsJoinedByString:v83];
    v85 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v84];
    if (v26)
    {
      v86 = [v84 rangeOfString:@"{CaptionIcon}"];
      [v85 replaceCharactersInRange:v86 withAttributedString:{v87, v26}];
      v88 = [v84 stringByReplacingOccurrencesOfString:@"{CaptionIcon}" withString:@" "];

      v84 = v88;
    }

    if (v64)
    {
      v89 = [v84 rangeOfString:@"{LocationIcon}"];
      [v85 replaceCharactersInRange:v89 withAttributedString:{v90, v64}];
    }
  }

  else
  {
    v85 = v26;
  }

  v91 = v85;

  return v91;
}

- (void)updateIfNeeded
{
  v63[1] = *MEMORY[0x1E69E9840];
  v4 = [(PUSharingHeaderController *)self dataProvider];
  v5 = [v4 orderedSelectedAssets];

  v6 = [(PUSharingHeaderController *)self linkMetadata];
  if (!v6)
  {
    v49 = [MEMORY[0x1E696AAA8] currentHandler];
    [v49 handleFailureInMethod:a2 object:self file:@"PUSharingHeaderController.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"linkMetadata"}];
  }

  v7 = [v6 specialization];
  if (!v7)
  {
    v50 = [MEMORY[0x1E696AAA8] currentHandler];
    [v50 handleFailureInMethod:a2 object:self file:@"PUSharingHeaderController.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"statusMetadata"}];
  }

  v8 = [(PUSharingHeaderController *)self _sharingHeaderStatus];
  [v7 setStatus:v8];
  v9 = [(PUSharingHeaderController *)self dataProvider];
  v10 = [v9 headerTitle];

  MEMORY[0x1B8C6D660]([v6 setTitle:v10]);
  v11 = [(PUSharingHeaderController *)self dataProvider];
  v12 = [v11 shareAsCMM];

  if (v12)
  {
    icloudLinkImage = self->_icloudLinkImage;
    if (!icloudLinkImage)
    {
      v14 = MEMORY[0x1E69DCAB8];
      v15 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
      v16 = [v14 systemImageNamed:@"link.icloud" withConfiguration:v15];

      v17 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v16];
      v18 = self->_icloudLinkImage;
      self->_icloudLinkImage = v17;

      icloudLinkImage = self->_icloudLinkImage;
    }

    v63[0] = icloudLinkImage;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:1];
    [v6 setAlternateImages:v19];

    goto LABEL_54;
  }

  v20 = [(PUSharingHeaderController *)self dataProvider];
  v21 = [v20 keyAsset];

  v54 = a2;
  if (v21)
  {
    v22 = [MEMORY[0x1E695DFB8] orderedSetWithObject:v21];

    v5 = v22;
  }

  v23 = [v6 alternateImages];
  v57 = v8;
  if ([v23 containsObject:self->_icloudLinkImage])
  {

    sharingHeaderFrontAsset = self->_sharingHeaderFrontAsset;
    self->_sharingHeaderFrontAsset = 0;

    sharingHeaderBackAsset = self->_sharingHeaderBackAsset;
    self->_sharingHeaderBackAsset = 0;

    v23 = 0;
    self->_showingUnmodifiedOriginalThumbnail = 0;
  }

  v26 = [(PUSharingHeaderController *)self dataProvider];
  v59 = [v26 person];

  v27 = [v5 firstObject];
  v56 = v21;
  if ([v5 count] < 2)
  {
    v28 = 0;
  }

  else
  {
    v28 = [v5 objectAtIndexedSubscript:1];
  }

  v58 = v5;
  v29 = [(PUSharingHeaderController *)self dataProvider];
  v62 = [v29 sendAsUnmodifiedOriginals];

  v30 = self->_sharingHeaderFrontAsset;
  v31 = self->_sharingHeaderBackAsset;
  showingUnmodifiedOriginalThumbnail = self->_showingUnmodifiedOriginalThumbnail;
  v60 = v30;
  v61 = v31;
  if (v27 | v30)
  {
    v33 = [v27 isEqual:v30];
    v34 = v61;
    v35 = v33 ^ 1;
  }

  else
  {
    v34 = v31;
    v35 = 0;
  }

  v36 = v28 | v34;
  if (v28 | v34)
  {
    v36 = [v28 isEqual:v34] ^ 1;
  }

  if (showingUnmodifiedOriginalThumbnail != v62)
  {
    v35 = v27 != 0;
    v36 = v28 != 0;
  }

  v55 = v36;
  if (v23)
  {
    v37 = [v23 mutableCopy];
  }

  else
  {
    v37 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  }

  v38 = v37;
  if (v35)
  {
    objc_storeStrong(&self->_sharingHeaderFrontAsset, v27);
    if (v27)
    {
      if ([v27 isEqual:v61])
      {
        if ([v23 count] <= 1)
        {
          v52 = [MEMORY[0x1E696AAA8] currentHandler];
          [v52 handleFailureInMethod:v54 object:self file:@"PUSharingHeaderController.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"previousImagesStack.count > 1"}];
        }

        v39 = [v23 objectAtIndexedSubscript:1];
      }

      else
      {
        v39 = PXLinkPresentationImageForAsset();
      }
    }

    else
    {
      if (!v59)
      {
        goto LABEL_36;
      }

      v39 = [(PUSharingHeaderController *)self _linkPresentationImageForPerson:v59];
    }

    v40 = v39;
    if (v39)
    {
LABEL_40:
      [v38 setObject:v40 atIndexedSubscript:0];

      goto LABEL_41;
    }

LABEL_36:
    placeholderImage = self->_placeholderImage;
    if (placeholderImage)
    {
      v40 = placeholderImage;
    }

    else
    {
      v42 = MEMORY[0x1E69DCAB8];
      v43 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
      v44 = [v42 systemImageNamed:@"photo" withConfiguration:v43];

      v45 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v44];
      v46 = self->_placeholderImage;
      self->_placeholderImage = v45;

      v40 = self->_placeholderImage;
      if (!v40)
      {
        v51 = [MEMORY[0x1E696AAA8] currentHandler];
        [v51 handleFailureInMethod:v54 object:self file:@"PUSharingHeaderController.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"frontImage"}];

        v40 = 0;
      }
    }

    goto LABEL_40;
  }

LABEL_41:
  v5 = v58;
  if (v55)
  {
    objc_storeStrong(&self->_sharingHeaderBackAsset, v28);
    if (!v28)
    {
      goto LABEL_50;
    }

    if ([v28 isEqual:v60])
    {
      if (![v23 count])
      {
        v53 = [MEMORY[0x1E696AAA8] currentHandler];
        [v53 handleFailureInMethod:v54 object:self file:@"PUSharingHeaderController.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"previousImagesStack.count > 0"}];
      }

      v47 = [v23 objectAtIndexedSubscript:0];
    }

    else
    {
      v47 = PXLinkPresentationImageForAsset();
    }

    v48 = v47;
    if (v47)
    {
      [v38 setObject:v47 atIndexedSubscript:1];
    }

    else
    {
LABEL_50:
      [v38 removeObjectAtIndex:1];
    }
  }

  self->_showingUnmodifiedOriginalThumbnail = v62;
  if (([v23 isEqualToArray:v38] & 1) == 0)
  {
    [v6 setAlternateImages:v38];
  }

  v8 = v57;
LABEL_54:
}

- (PUSharingHeaderController)initWithDataProvider:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PUSharingHeaderController.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"dataProvider"}];
  }

  v13.receiver = self;
  v13.super_class = PUSharingHeaderController;
  v6 = [(PUSharingHeaderController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_dataProvider, v5);
    v8 = objc_alloc_init(MEMORY[0x1E696EC28]);
    v9 = objc_alloc_init(MEMORY[0x1E696ECA0]);
    linkMetadata = v7->_linkMetadata;
    v7->_linkMetadata = v9;

    [(LPLinkMetadata *)v7->_linkMetadata setSpecialization:v8];
  }

  return v7;
}

- (PUSharingHeaderController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUSharingHeaderController.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PUSharingHeaderController init]"}];

  abort();
}

+ (PUSharingHeaderController)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PUSharingHeaderController.m" lineNumber:55 description:{@"%s is not available as initializer", "+[PUSharingHeaderController new]"}];

  abort();
}

@end