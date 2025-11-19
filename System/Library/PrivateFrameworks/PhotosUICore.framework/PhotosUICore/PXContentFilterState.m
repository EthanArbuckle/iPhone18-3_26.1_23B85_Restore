@interface PXContentFilterState
+ (id)defaultAllPhotosFilterStateForPhotoLibrary:(id)a3;
+ (id)defaultFilterStateForContainerCollection:(id)a3 photoLibrary:(id)a4;
- (BOOL)isContentFilterActive:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldExcludeFromMyMac;
- (BOOL)shouldExcludeScreenshots;
- (NSString)localizedDescription;
- (NSString)localizedFooterDescription;
- (PXContentFilterState)init;
- (PXContentFilterState)initWithPhotoLibrary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)predicateForUseCase:(unint64_t)a3;
- (int64_t)ruleCount;
- (unint64_t)hash;
- (void)_checkDataSourceType:(id)a3;
@end

@implementation PXContentFilterState

- (BOOL)shouldExcludeScreenshots
{
  if ([(PXContentFilterState *)self showOnlyScreenshots])
  {
    return 0;
  }

  else
  {
    return ![(PXContentFilterState *)self includeScreenshots];
  }
}

- (BOOL)shouldExcludeFromMyMac
{
  if ([(PXContentFilterState *)self showOnlyFromMyMac])
  {
    return 0;
  }

  else
  {
    return ![(PXContentFilterState *)self includeFromMyMac];
  }
}

- (int64_t)ruleCount
{
  LODWORD(v3) = [(PXContentFilterState *)self saved];
  v4 = [(PXContentFilterState *)self unsaved];
  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  if (v4)
  {
    v3 = v5;
  }

  else
  {
    v3 = v3;
  }

  v6 = v3 + [(PXContentFilterState *)self favorite];
  v7 = v6 + [(PXContentFilterState *)self edited];
  v8 = v7 + [(PXContentFilterState *)self image];
  v9 = v8 + [(PXContentFilterState *)self video];
  v10 = v9 + [(PXContentFilterState *)self live];
  v11 = v10 + [(PXContentFilterState *)self portrait];
  v12 = v11 + [(PXContentFilterState *)self inUserAlbum];
  v13 = v12 + [(PXContentFilterState *)self notInUserAlbum];
  v14 = v13 + [(PXContentFilterState *)self showOnlyScreenshots];
  v15 = v14 + [(PXContentFilterState *)self showOnlySharedWithYou];
  v16 = v15 + [(PXContentFilterState *)self showOnlyFromMyMac];
  v17 = [(PXContentFilterState *)self keywords];
  v18 = [v17 count];

  v19 = [(PXContentFilterState *)self uuids];
  v20 = v16 + v18 + [v19 count];

  v21 = v20 + [(PXContentFilterState *)self showOnlySentICloudLinks];
  v22 = v21 + [(PXContentFilterState *)self showOnlyReceivedICloudLinks];
  return v22 + [(PXContentFilterState *)self includeOthersInSocialGroupAssets];
}

- (NSString)localizedFooterDescription
{
  v3 = [(PXContentFilterState *)self ruleCount];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v3];
  if (v3 >= 1)
  {
    contentSyndicationConfigurationProvider = self->_contentSyndicationConfigurationProvider;
    if (contentSyndicationConfigurationProvider && [(PXContentSyndicationConfigurationProvider *)contentSyndicationConfigurationProvider contentSyndicationIsAvailable])
    {
      if ([(PXContentFilterState *)self saved])
      {
        v6 = PXLocalizedStringFromTable(@"PXContentFilterMenu_SavedItemsOnly", @"PhotosUICore");
        [v4 addObject:v6];
      }

      if ([(PXContentFilterState *)self unsaved])
      {
        v7 = PXLocalizedStringFromTable(@"PXContentFilterMenu_UnsavedItemsOnly", @"PhotosUICore");
        [v4 addObject:v7];
      }
    }

    if ([(PXContentFilterState *)self favorite])
    {
      v8 = PXLocalizedStringFromTable(@"PXContentFilterMenu_Favorite", @"PhotosUICore");
      [v4 addObject:v8];
    }

    if ([(PXContentFilterState *)self edited])
    {
      v9 = PXLocalizedStringFromTable(@"PXContentFilterMenu_Edited", @"PhotosUICore");
      [v4 addObject:v9];
    }

    if ([(PXContentFilterState *)self inUserAlbum])
    {
      v10 = PXLocalizedStringFromTable(@"PXContentFilterMenu_InUserAlbum", @"PhotosUICore");
      [v4 addObject:v10];
    }

    if ([(PXContentFilterState *)self notInUserAlbum])
    {
      v11 = PXLocalizedStringFromTable(@"PXContentFilterMenu_NotInUserAlbum", @"PhotosUICore");
      [v4 addObject:v11];
    }

    if ([(PXContentFilterState *)self image])
    {
      v12 = PXLocalizedStringFromTable(@"PXContentFilterMenu_Photos", @"PhotosUICore");
      [v4 addObject:v12];
    }

    if ([(PXContentFilterState *)self video])
    {
      v13 = PXLocalizedStringFromTable(@"PXContentFilterMenu_Videos", @"PhotosUICore");
      [v4 addObject:v13];
    }

    if ([(PXContentFilterState *)self live])
    {
      v14 = PXLocalizedStringFromTable(@"PXContentFilterMenu_Live", @"PhotosUICore");
      [v4 addObject:v14];
    }

    if ([(PXContentFilterState *)self portrait])
    {
      v15 = PXLocalizedStringFromTable(@"PXContentFilterMenu_Portrait", @"PhotosUICore");
      [v4 addObject:v15];
    }

    if ([(PXContentFilterState *)self showOnlyScreenshots])
    {
      v16 = PXLocalizedStringFromTable(@"PXContentFilterMenu_Screenshots", @"PhotosUICore");
      [v4 addObject:v16];
    }

    if ([(PXContentFilterState *)self showOnlySharedWithYou])
    {
      v17 = PXLocalizedStringFromTable(@"PXContentFilterMenu_SharedWithYou", @"PhotosUICore");
      [v4 addObject:v17];
    }

    if ([(PXContentFilterState *)self showOnlyFromMyMac])
    {
      v18 = PXLocalizedStringFromTable(@"PXContentFilterMenu_FromMyMac", @"PhotosUICore");
      [v4 addObject:v18];
    }

    v19 = [(PXContentFilterState *)self keywords];
    v20 = [v19 count];

    if (v20)
    {
      v21 = [(PXContentFilterState *)self keywords];
      v22 = [v21 firstObject];
      [v4 addObject:v22];
    }

    v23 = [(PXContentFilterState *)self uuids];
    v24 = [v23 count];

    if (v24)
    {
      v25 = PXLocalizedStringFromTable(@"PXContentFilterMenu_Selected", @"PhotosUICore");
      [v4 addObject:v25];
    }

    if ([(PXContentFilterState *)self showOnlySentICloudLinks])
    {
      v26 = PXContentFilterTitleForItemTag(22);
      [v4 addObject:v26];
    }

    if ([(PXContentFilterState *)self showOnlyReceivedICloudLinks])
    {
      v27 = PXContentFilterTitleForItemTag(23);
      [v4 addObject:v27];
    }

    if ([(PXContentFilterState *)self includeOthersInSocialGroupAssets])
    {
      v28 = PXContentFilterTitleForItemTag(24);
      [v4 addObject:v28];
    }
  }

  v29 = PXLocalizedStringFromTable(@"PXFilterListSeparator", @"PhotosUICore");
  v30 = [v4 componentsJoinedByString:v29];

  return v30;
}

- (NSString)localizedDescription
{
  v3 = [(PXContentFilterState *)self ruleCount];
  if (v3 != 1)
  {
    if (v3)
    {
      v4 = @"PXContentFilterTitleFilteringMany";
    }

    else
    {
      v4 = @"PXContentFilterTitleFilteringOff";
    }

    goto LABEL_33;
  }

  contentSyndicationConfigurationProvider = self->_contentSyndicationConfigurationProvider;
  if (contentSyndicationConfigurationProvider && [(PXContentSyndicationConfigurationProvider *)contentSyndicationConfigurationProvider contentSyndicationIsAvailable])
  {
    if ([(PXContentFilterState *)self saved])
    {
      v4 = @"PXContentFilterMenu_SavedItemsOnly";
LABEL_33:
      v6 = PXLocalizedStringFromTable(v4, @"PhotosUICore");
LABEL_34:
      v7 = v6;
      goto LABEL_35;
    }

    if ([(PXContentFilterState *)self unsaved])
    {
      v4 = @"PXContentFilterMenu_UnsavedItemsOnly";
      goto LABEL_33;
    }
  }

  if ([(PXContentFilterState *)self favorite])
  {
    v4 = @"PXContentFilterMenu_Favorite";
    goto LABEL_33;
  }

  if ([(PXContentFilterState *)self edited])
  {
    v4 = @"PXContentFilterMenu_Edited";
    goto LABEL_33;
  }

  if ([(PXContentFilterState *)self inUserAlbum])
  {
    v4 = @"PXContentFilterMenu_InUserAlbum";
    goto LABEL_33;
  }

  if ([(PXContentFilterState *)self notInUserAlbum])
  {
    v4 = @"PXContentFilterMenu_NotInUserAlbum";
    goto LABEL_33;
  }

  if ([(PXContentFilterState *)self image])
  {
    v4 = @"PXContentFilterMenu_Photos";
    goto LABEL_33;
  }

  if ([(PXContentFilterState *)self video])
  {
    v4 = @"PXContentFilterMenu_Videos";
    goto LABEL_33;
  }

  if ([(PXContentFilterState *)self live])
  {
    v4 = @"PXContentFilterMenu_Live";
    goto LABEL_33;
  }

  if ([(PXContentFilterState *)self portrait])
  {
    v4 = @"PXContentFilterMenu_Portrait";
    goto LABEL_33;
  }

  if ([(PXContentFilterState *)self showOnlyScreenshots])
  {
    v4 = @"PXContentFilterMenu_Screenshots";
    goto LABEL_33;
  }

  if ([(PXContentFilterState *)self showOnlySharedWithYou])
  {
    v4 = @"PXContentFilterMenu_SharedWithYou";
    goto LABEL_33;
  }

  if ([(PXContentFilterState *)self showOnlyFromMyMac])
  {
    v4 = @"PXContentFilterMenu_FromMyMac";
    goto LABEL_33;
  }

  v9 = [(PXContentFilterState *)self keywords];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(PXContentFilterState *)self keywords];
    v7 = [v11 firstObject];

    goto LABEL_35;
  }

  v12 = [(PXContentFilterState *)self uuids];
  v13 = [v12 count];

  if (v13)
  {
    v4 = @"PXContentFilterMenu_Selected";
    goto LABEL_33;
  }

  if ([(PXContentFilterState *)self showOnlySentICloudLinks])
  {
    v14 = 22;
LABEL_48:
    v6 = PXContentFilterTitleForItemTag(v14);
    goto LABEL_34;
  }

  if ([(PXContentFilterState *)self showOnlyReceivedICloudLinks])
  {
    v14 = 23;
    goto LABEL_48;
  }

  if ([(PXContentFilterState *)self includeOthersInSocialGroupAssets])
  {
    v14 = 24;
    goto LABEL_48;
  }

  v7 = &stru_1F1741150;
LABEL_35:

  return v7;
}

- (id)predicateForUseCase:(unint64_t)a3
{
  v60[2] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PXContentFilterState *)self shouldExcludeScreenshots])
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == NO", @"isDetectedScreenshot"];
    [v5 addObject:v6];
  }

  contentSyndicationConfigurationProvider = self->_contentSyndicationConfigurationProvider;
  if (!contentSyndicationConfigurationProvider || ![(PXContentSyndicationConfigurationProvider *)contentSyndicationConfigurationProvider contentSyndicationIsAvailable])
  {
    goto LABEL_18;
  }

  if ([(PXContentFilterState *)self includeSharedWithYou])
  {
    if (![(PXContentFilterState *)self showOnlySharedWithYou])
    {
      goto LABEL_10;
    }

    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __44__PXContentFilterState_predicateForUseCase___block_invoke;
    v57[3] = &unk_1E7730268;
    v57[4] = self;
    v58 = v5;
    [(PXContentFilterState *)self _checkDataSourceType:v57];
    v8 = v58;
  }

  else
  {
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __44__PXContentFilterState_predicateForUseCase___block_invoke_2;
    v55[3] = &unk_1E7730290;
    v56 = v5;
    [(PXContentFilterState *)self _checkDataSourceType:v55];
    v8 = v56;
  }

LABEL_10:
  if ([(PXContentFilterState *)self saved]&& [(PXContentFilterState *)self unsaved])
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"(syndicationState & %d) != 0 OR (syndicationState & %d) == 0", 2, 2];
  }

  else if ([(PXContentFilterState *)self saved])
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"(syndicationState & %d) != 0", 2, v48];
  }

  else
  {
    if (![(PXContentFilterState *)self unsaved])
    {
      goto LABEL_18;
    }

    [MEMORY[0x1E696AE18] predicateWithFormat:@"(syndicationState & %d) == 0", 2, v48];
  }
  v9 = ;
  [v5 addObject:v9];

LABEL_18:
  if ([(PXContentFilterState *)self shouldExcludeFromMyMac])
  {
    v10 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForFinderSyncedAsset"), 0}];
  }

  else
  {
    if (![(PXContentFilterState *)self showOnlyFromMyMac])
    {
      goto LABEL_23;
    }

    v10 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForFinderSyncedAsset"), 0}];
  }

  v11 = v10;
  [v5 addObject:v10];

LABEL_23:
  if ([(PXContentFilterState *)self favorite])
  {
    if (a3 == 1)
    {
      v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == YES", @"favorite"];
      [v5 addObject:v12];

      if (![(PXContentFilterState *)self edited])
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == YES", @"favorite"];
    [v5 addObject:v13];
  }

  if ([(PXContentFilterState *)self edited])
  {
    if (a3 != 1)
    {
      v14 = [MEMORY[0x1E69BE540] predicateForAdjustedAssetsWithKeyPathToAsset:0];
      goto LABEL_32;
    }

LABEL_30:
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) > %d", @"adjustmentsState", 0];
LABEL_32:
    v15 = v14;
    [v5 addObject:v14];
  }

LABEL_33:
  if (![(PXContentFilterState *)self inUserAlbum]|| ![(PXContentFilterState *)self notInUserAlbum])
  {
    if ([(PXContentFilterState *)self inUserAlbum])
    {
      v16 = MEMORY[0x1E696AE18];
      if (a3 == 1)
      {
        v49 = 1;
LABEL_41:
        v17 = @"noindex:(%K) == %d";
LABEL_45:
        v18 = [v16 predicateWithFormat:v17, @"albumAssociativity", v49];
        [v5 addObject:v18];

        goto LABEL_46;
      }

      v49 = 1;
      goto LABEL_44;
    }

    if ([(PXContentFilterState *)self notInUserAlbum])
    {
      v16 = MEMORY[0x1E696AE18];
      if (a3 == 1)
      {
        v49 = 0;
        goto LABEL_41;
      }

      v49 = 0;
LABEL_44:
      v17 = @"%K == %d";
      goto LABEL_45;
    }
  }

LABEL_46:
  if (![(PXContentFilterState *)self image]&& ![(PXContentFilterState *)self video]&& ![(PXContentFilterState *)self live]&& ![(PXContentFilterState *)self portrait])
  {
    v28 = 0;
    v30 = 0;
    if (![(PXContentFilterState *)self showOnlyScreenshots])
    {
      goto LABEL_79;
    }

    goto LABEL_71;
  }

  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PXContentFilterState *)self image])
  {
    v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(noindex:(%K) == %d)", @"kind", 0];
    [v19 addObject:v20];

    if ([(PXContentFilterState *)self video])
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"(noindex:(%K) == %d)", @"kind", 1];
      v23 = LABEL_58:;
      [v19 addObject:v23];
    }

LABEL_59:
    if (![(PXContentFilterState *)self live])
    {
      goto LABEL_64;
    }

    if (a3 == 1)
    {
      v21 = @"noindex:(%K) == %d";
    }

    else
    {
      v21 = @"%K == %d";
    }

    goto LABEL_63;
  }

  if (![(PXContentFilterState *)self video])
  {
    goto LABEL_59;
  }

  if (a3 != 1)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 1];
    goto LABEL_58;
  }

  v21 = @"noindex:(%K) == %d";
  v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == %d", @"kind", 1];
  [v19 addObject:v22];

  if ([(PXContentFilterState *)self live])
  {
LABEL_63:
    v24 = [MEMORY[0x1E696AE18] predicateWithFormat:v21, @"kindSubtype", 2];
    [v19 addObject:v24];
  }

LABEL_64:
  if ([(PXContentFilterState *)self portrait])
  {
    if (a3 == 1)
    {
      v25 = @"noindex:(%K & %d) != 0";
    }

    else
    {
      v25 = @"(%K & %d) != 0";
    }

    v26 = [MEMORY[0x1E696AE18] predicateWithFormat:v25, @"additionalAttributes.unmanagedAdjustment.adjustmentRenderTypes", 2];
    [v19 addObject:v26];
  }

  v27 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v19];

  if ([(PXContentFilterState *)self showOnlyScreenshots])
  {
    v28 = v27;
LABEL_71:
    v29 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == YES", @"isDetectedScreenshot"];
    v30 = v29;
    if (v28 && v29)
    {
      v31 = MEMORY[0x1E696AB28];
      v60[0] = v28;
      v60[1] = v29;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
      v33 = [v31 orPredicateWithSubpredicates:v32];

      [v5 addObject:v33];
      goto LABEL_79;
    }

    if (v28)
    {
      v27 = v28;
      goto LABEL_78;
    }

    if (v29)
    {
      [v5 addObject:v29];
    }

    v28 = 0;
    goto LABEL_79;
  }

  v30 = 0;
  v28 = 0;
  if (v27)
  {
LABEL_78:
    [v5 addObject:v27];
    v28 = v27;
  }

LABEL_79:
  v34 = [(PXContentFilterState *)self uuids];

  if (v34)
  {
    v35 = MEMORY[0x1E696AE18];
    v36 = [(PXContentFilterState *)self uuids];
    v37 = [v35 predicateWithFormat:@"%K in %@", @"uuid", v36];
    [v5 addObject:v37];
  }

  v38 = [(PXContentFilterState *)self keywords];

  if (v38)
  {
    v50 = v30;
    v39 = [MEMORY[0x1E696AE18] predicateWithFormat:@"packedBadgeAttributes&0x01 == 1"];
    [v5 addObject:v39];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v40 = [(PXContentFilterState *)self keywords];
    v41 = [v40 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v52;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v52 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K.title", *(*(&v51 + 1) + 8 * i), @"additionalAttributes.keywords"];
          [v5 addObject:v45];
        }

        v42 = [v40 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v42);
    }

    v30 = v50;
  }

  if ([v5 count])
  {
    v46 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v5];
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

void __44__PXContentFilterState_predicateForUseCase___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(*(a1 + 32) + 8) dataSourceType] == 6)
  {
    v4 = MEMORY[0x1E69BF328];
    v5 = a2;
  }

  else
  {
    v6 = +[PXLemonadeSettings sharedInstance];
    v7 = [v6 sharedWithYouOnlyFilterIncludesUnsaved];

    if (v7)
    {
      v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"additionalAttributes.syndicationIdentifier"];
      goto LABEL_7;
    }

    v9 = MEMORY[0x1E69BF328];
    v5 = [MEMORY[0x1E69BF328] maskForGuestAsset];
    v4 = v9;
  }

  v8 = [v4 predicateForIncludeMask:v5 useIndex:0];
LABEL_7:
  v10 = v8;
  [*(a1 + 40) addObject:v8];
}

void __44__PXContentFilterState_predicateForUseCase___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E69BF328] predicateForExcludeMask:a2 useIndex:0];
  [*(a1 + 32) addObject:v3];
}

- (void)_checkDataSourceType:(id)a3
{
  v4 = a3;
  contentSyndicationConfigurationProvider = self->_contentSyndicationConfigurationProvider;
  if (contentSyndicationConfigurationProvider)
  {
    v9 = v4;
    v6 = [(PXContentSyndicationConfigurationProvider *)contentSyndicationConfigurationProvider dataSourceType];
    v4 = v9;
    if (v6 - 5 <= 0xFFFFFFFFFFFFFFFCLL)
    {
      if (v6 < 2)
      {
        goto LABEL_6;
      }

      if (v6 == 6)
      {
        v7 = [MEMORY[0x1E69BF328] maskForMomentSharedAsset];
LABEL_8:
        v4 = v9;
        v8 = v7;
        if (!v9)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if (v6 == 5)
      {
LABEL_6:
        v7 = [MEMORY[0x1E69BF328] maskForGuestAsset];
        goto LABEL_8;
      }

      v8 = 0;
      if (v9)
      {
LABEL_9:
        v4[2](v4, v8);
        v4 = v9;
      }
    }
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(PXContentFilterState *)self photoLibrary];
  v6 = [v4 initWithPhotoLibrary:v5];

  [v6 setIncludeScreenshots:{-[PXContentFilterState includeScreenshots](self, "includeScreenshots")}];
  [v6 setIncludeSharedWithYou:{-[PXContentFilterState includeSharedWithYou](self, "includeSharedWithYou")}];
  [v6 setIncludeFromMyMac:{-[PXContentFilterState includeFromMyMac](self, "includeFromMyMac")}];
  [v6 setSaved:{-[PXContentFilterState saved](self, "saved")}];
  [v6 setUnsaved:{-[PXContentFilterState unsaved](self, "unsaved")}];
  [v6 setFavorite:{-[PXContentFilterState favorite](self, "favorite")}];
  [v6 setEdited:{-[PXContentFilterState edited](self, "edited")}];
  [v6 setImage:{-[PXContentFilterState image](self, "image")}];
  [v6 setVideo:{-[PXContentFilterState video](self, "video")}];
  [v6 setLive:{-[PXContentFilterState live](self, "live")}];
  [v6 setPortrait:{-[PXContentFilterState portrait](self, "portrait")}];
  [v6 setInUserAlbum:{-[PXContentFilterState inUserAlbum](self, "inUserAlbum")}];
  [v6 setNotInUserAlbum:{-[PXContentFilterState notInUserAlbum](self, "notInUserAlbum")}];
  [v6 setShowOnlyScreenshots:{-[PXContentFilterState showOnlyScreenshots](self, "showOnlyScreenshots")}];
  [v6 setShowOnlySharedWithYou:{-[PXContentFilterState showOnlySharedWithYou](self, "showOnlySharedWithYou")}];
  [v6 setShowOnlyFromMyMac:{-[PXContentFilterState showOnlyFromMyMac](self, "showOnlyFromMyMac")}];
  v7 = [(PXContentFilterState *)self keywords];
  [v6 setKeywords:v7];

  v8 = [(PXContentFilterState *)self uuids];
  [v6 setUuids:v8];

  [v6 setShowOnlySentICloudLinks:{-[PXContentFilterState showOnlySentICloudLinks](self, "showOnlySentICloudLinks")}];
  [v6 setShowOnlyReceivedICloudLinks:{-[PXContentFilterState showOnlyReceivedICloudLinks](self, "showOnlyReceivedICloudLinks")}];
  [v6 setIncludeOthersInSocialGroupAssets:{-[PXContentFilterState includeOthersInSocialGroupAssets](self, "includeOthersInSocialGroupAssets")}];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v22) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXContentFilterState *)self includeScreenshots];
      if (v6 == [(PXContentFilterState *)v5 includeScreenshots]&& (v7 = [(PXContentFilterState *)self includeSharedWithYou], v7 == [(PXContentFilterState *)v5 includeSharedWithYou]) && (v8 = [(PXContentFilterState *)self includeFromMyMac], v8 == [(PXContentFilterState *)v5 includeFromMyMac]) && (v9 = [(PXContentFilterState *)self saved], v9 == [(PXContentFilterState *)v5 saved]) && (v10 = [(PXContentFilterState *)self unsaved], v10 == [(PXContentFilterState *)v5 unsaved]) && (v11 = [(PXContentFilterState *)self favorite], v11 == [(PXContentFilterState *)v5 favorite]) && (v12 = [(PXContentFilterState *)self edited], v12 == [(PXContentFilterState *)v5 edited]) && (v13 = [(PXContentFilterState *)self image], v13 == [(PXContentFilterState *)v5 image]) && (v14 = [(PXContentFilterState *)self video], v14 == [(PXContentFilterState *)v5 video]) && (v15 = [(PXContentFilterState *)self live], v15 == [(PXContentFilterState *)v5 live]) && (v16 = [(PXContentFilterState *)self portrait], v16 == [(PXContentFilterState *)v5 portrait]) && (v17 = [(PXContentFilterState *)self inUserAlbum], v17 == [(PXContentFilterState *)v5 inUserAlbum]) && (v18 = [(PXContentFilterState *)self notInUserAlbum], v18 == [(PXContentFilterState *)v5 notInUserAlbum]) && (v19 = [(PXContentFilterState *)self showOnlyScreenshots], v19 == [(PXContentFilterState *)v5 showOnlyScreenshots]) && (v20 = [(PXContentFilterState *)self showOnlySharedWithYou], v20 == [(PXContentFilterState *)v5 showOnlySharedWithYou]) && (v21 = [(PXContentFilterState *)self showOnlyFromMyMac], v21 == [(PXContentFilterState *)v5 showOnlyFromMyMac]))
      {
        v24 = [(PXContentFilterState *)self keywords];
        v25 = [(PXContentFilterState *)v5 keywords];
        if (v24 == v25 || [v24 isEqual:v25])
        {
          v26 = [(PXContentFilterState *)self uuids];
          v27 = [(PXContentFilterState *)v5 uuids];
          if ((v26 == v27 || [v26 isEqual:v27]) && (v28 = -[PXContentFilterState showOnlySentICloudLinks](self, "showOnlySentICloudLinks"), v28 == -[PXContentFilterState showOnlySentICloudLinks](v5, "showOnlySentICloudLinks")) && (v29 = -[PXContentFilterState showOnlyReceivedICloudLinks](self, "showOnlyReceivedICloudLinks"), v29 == -[PXContentFilterState showOnlyReceivedICloudLinks](v5, "showOnlyReceivedICloudLinks")))
          {
            v30 = [(PXContentFilterState *)self includeOthersInSocialGroupAssets];
            v22 = v30 ^ [(PXContentFilterState *)v5 includeOthersInSocialGroupAssets]^ 1;
          }

          else
          {
            LOBYTE(v22) = 0;
          }
        }

        else
        {
          LOBYTE(v22) = 0;
        }
      }

      else
      {
        LOBYTE(v22) = 0;
      }
    }

    else
    {
      LOBYTE(v22) = 0;
    }
  }

  return v22;
}

- (unint64_t)hash
{
  v3 = [(PXContentFilterState *)self saved];
  v4 = [(PXContentFilterState *)self unsaved];
  v5 = 2;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = v5 | v3;
  if ([(PXContentFilterState *)self favorite])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PXContentFilterState *)self edited];
  v9 = 8;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = v6 | v7 | v9;
  if ([(PXContentFilterState *)self image])
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(PXContentFilterState *)self video];
  v13 = 32;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = v11 | v13;
  v15 = [(PXContentFilterState *)self live];
  v16 = 64;
  if (!v15)
  {
    v16 = 0;
  }

  v17 = v10 | v14 | v16;
  if ([(PXContentFilterState *)self portrait])
  {
    v18 = 128;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(PXContentFilterState *)self showOnlyScreenshots];
  v20 = 256;
  if (!v19)
  {
    v20 = 0;
  }

  v21 = v18 ^ v20;
  v22 = [(PXContentFilterState *)self showOnlySharedWithYou];
  v23 = 512;
  if (!v22)
  {
    v23 = 0;
  }

  v24 = v21 ^ v23;
  v25 = [(PXContentFilterState *)self showOnlyFromMyMac];
  v26 = 1024;
  if (!v25)
  {
    v26 = 0;
  }

  v27 = v17 ^ v24 ^ v26;
  v28 = [(PXContentFilterState *)self keywords];
  v29 = v27 ^ ([v28 hash] << 11);

  v30 = [(PXContentFilterState *)self uuids];
  v31 = v29 ^ ([v30 hash] << 12);

  if ([(PXContentFilterState *)self showOnlySentICloudLinks])
  {
    v32 = 0x2000;
  }

  else
  {
    v32 = 0;
  }

  v33 = [(PXContentFilterState *)self showOnlyReceivedICloudLinks];
  v34 = 0x4000;
  if (!v33)
  {
    v34 = 0;
  }

  v35 = v32 ^ v34;
  v36 = [(PXContentFilterState *)self includeOthersInSocialGroupAssets];
  v37 = 0x8000;
  if (!v36)
  {
    v37 = 0;
  }

  v38 = v35 ^ v37;
  v39 = [(PXContentFilterState *)self notInUserAlbum];
  v40 = 0x10000;
  if (!v39)
  {
    v40 = 0;
  }

  v41 = v38 ^ v40;
  v42 = [(PXContentFilterState *)self inUserAlbum];
  v43 = 0x20000;
  if (!v42)
  {
    v43 = 0;
  }

  return v31 ^ v41 ^ v43;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PXContentSyndicationConfigurationProvider *)self->_contentSyndicationConfigurationProvider contentSyndicationIsAvailable])
  {
    if ([(PXContentFilterState *)self includeSharedWithYou])
    {
      [v3 addObject:@"include items shared with you"];
    }

    if ([(PXContentFilterState *)self saved])
    {
      [v3 addObject:@"saved items"];
    }

    if ([(PXContentFilterState *)self unsaved])
    {
      [v3 addObject:@"unsaved items"];
    }

    if ([(PXContentFilterState *)self showOnlySharedWithYou])
    {
      [v3 addObject:@"sharedWithYou"];
    }
  }

  if ([(PXContentFilterState *)self includeScreenshots])
  {
    [v3 addObject:@"include screenshots"];
  }

  if ([(PXContentFilterState *)self includeFromMyMac])
  {
    [v3 addObject:@"include from my Mac"];
  }

  if ([(PXContentFilterState *)self favorite])
  {
    [v3 addObject:@"favorited"];
  }

  if ([(PXContentFilterState *)self edited])
  {
    [v3 addObject:@"edited"];
  }

  if ([(PXContentFilterState *)self image])
  {
    [v3 addObject:@"image"];
  }

  if ([(PXContentFilterState *)self video])
  {
    [v3 addObject:@"video"];
  }

  if ([(PXContentFilterState *)self live])
  {
    [v3 addObject:@"live"];
  }

  if ([(PXContentFilterState *)self portrait])
  {
    [v3 addObject:@"portrait"];
  }

  if ([(PXContentFilterState *)self inUserAlbum])
  {
    [v3 addObject:@"in user album"];
  }

  if ([(PXContentFilterState *)self notInUserAlbum])
  {
    [v3 addObject:@"not in user album"];
  }

  if ([(PXContentFilterState *)self showOnlyScreenshots])
  {
    [v3 addObject:@"screenshot"];
  }

  if ([(PXContentFilterState *)self showOnlyFromMyMac])
  {
    [v3 addObject:@"from my Mac"];
  }

  v4 = [(PXContentFilterState *)self keywords];
  v5 = [v4 count];

  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [(PXContentFilterState *)self keywords];
    v8 = [v6 stringWithFormat:@"keywords: %@", v7];
    [v3 addObject:v8];
  }

  v9 = [(PXContentFilterState *)self uuids];
  v10 = [v9 count];

  if (v10)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = [(PXContentFilterState *)self uuids];
    v13 = [v11 stringWithFormat:@"uuids: %@", v12];
    [v3 addObject:v13];
  }

  if ([(PXContentFilterState *)self showOnlySentICloudLinks])
  {
    [v3 addObject:@"showOnlySentICloudLinks"];
  }

  if ([(PXContentFilterState *)self showOnlyReceivedICloudLinks])
  {
    [v3 addObject:@"showOnlyReceivedICloudLinks"];
  }

  if ([(PXContentFilterState *)self includeOthersInSocialGroupAssets])
  {
    [v3 addObject:@"includeOthersInSocialGroupAssets"];
  }

  v14 = MEMORY[0x1E696AEC0];
  v15 = objc_opt_class();
  v16 = [v3 componentsJoinedByString:{@", "}];
  v17 = [v14 stringWithFormat:@"<%@: filter criteria: [%@]>", v15, v16];

  return v17;
}

- (BOOL)isContentFilterActive:(int64_t)a3
{
  v3 = 0;
  switch(a3)
  {
    case 1:
      return [(PXContentFilterState *)self hash]== 0;
    case 2:
      v5 = [(PXContentFilterState *)self shouldExcludeScreenshots];
      return !v5;
    case 3:

      return [(PXContentFilterState *)self includeSharedWithYou];
    case 4:
      v5 = [(PXContentFilterState *)self shouldExcludeFromMyMac];
      return !v5;
    case 5:

      return [(PXContentFilterState *)self saved];
    case 6:

      return [(PXContentFilterState *)self unsaved];
    case 8:

      return [(PXContentFilterState *)self image];
    case 9:

      return [(PXContentFilterState *)self video];
    case 10:

      return [(PXContentFilterState *)self edited];
    case 11:

      return [(PXContentFilterState *)self favorite];
    case 12:

      return [(PXContentFilterState *)self inUserAlbum];
    case 13:

      return [(PXContentFilterState *)self notInUserAlbum];
    case 14:

      return [(PXContentFilterState *)self live];
    case 15:

      return [(PXContentFilterState *)self portrait];
    case 16:

      return [(PXContentFilterState *)self showOnlyScreenshots];
    case 17:

      return [(PXContentFilterState *)self showOnlySharedWithYou];
    case 18:

      return [(PXContentFilterState *)self showOnlyFromMyMac];
    case 22:

      return [(PXContentFilterState *)self showOnlySentICloudLinks];
    case 23:

      return [(PXContentFilterState *)self showOnlyReceivedICloudLinks];
    case 24:

      return [(PXContentFilterState *)self includeOthersInSocialGroupAssets];
    default:
      return v3;
  }
}

- (PXContentFilterState)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXContentFilterState;
  v6 = [(PXContentFilterState *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
    if (v5)
    {
      v8 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:v7->_photoLibrary];
      contentSyndicationConfigurationProvider = v7->_contentSyndicationConfigurationProvider;
      v7->_contentSyndicationConfigurationProvider = v8;
    }
  }

  return v7;
}

- (PXContentFilterState)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXContentFilterState.m" lineNumber:39 description:{@"%s is not available as initializer", "-[PXContentFilterState init]"}];

  abort();
}

+ (id)defaultFilterStateForContainerCollection:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [off_1E7721948 standardUserDefaults];
  v8 = [[PXContentFilterState alloc] initWithPhotoLibrary:v6];

  if ([v5 px_isAllPhotosSmartAlbum])
  {
    v9 = [v7 includeScreenshots];
    -[PXContentFilterState setIncludeScreenshots:](v8, "setIncludeScreenshots:", [v9 BOOLValue]);
  }

  else
  {
    [(PXContentFilterState *)v8 setIncludeScreenshots:1];
  }

  if ([v5 px_isAllPhotosSmartAlbum])
  {
    v10 = [v7 includeFromMyMac];
    -[PXContentFilterState setIncludeFromMyMac:](v8, "setIncludeFromMyMac:", [v10 BOOLValue]);
  }

  else
  {
    [(PXContentFilterState *)v8 setIncludeFromMyMac:1];
  }

  if (([v5 px_isContentSyndicationAlbum] & 1) != 0 || objc_msgSend(v5, "px_isFeaturedPhotosCollection"))
  {
    [(PXContentFilterState *)v8 setIncludeSharedWithYou:1];
  }

  else
  {
    v11 = [v7 includeSharedWithYou];
    -[PXContentFilterState setIncludeSharedWithYou:](v8, "setIncludeSharedWithYou:", [v11 BOOLValue]);
  }

  return v8;
}

+ (id)defaultAllPhotosFilterStateForPhotoLibrary:(id)a3
{
  v3 = [a1 defaultFilterStateForPhotoLibrary:a3];
  v4 = [off_1E7721948 standardUserDefaults];
  v5 = [v4 includeScreenshots];
  [v3 setIncludeScreenshots:{objc_msgSend(v5, "BOOLValue")}];

  v6 = [off_1E7721948 standardUserDefaults];
  v7 = [v6 includeFromMyMac];
  [v3 setIncludeFromMyMac:{objc_msgSend(v7, "BOOLValue")}];

  return v3;
}

@end