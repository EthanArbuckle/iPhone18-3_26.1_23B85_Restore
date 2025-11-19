id MusicUsageFileSizeForMediaQuery(void *a1)
{
  v1 = [a1 valueForAggregateFunction:MPMediaQueryAggregateFunctionTotal onItemsForProperty:MPMediaItemPropertyFileSize];
  v2 = [v1 unsignedLongLongValue];

  return v2;
}

char *MusicUsageFileSizeForMediaItemCollection(void *a1)
{
  v1 = a1;
  v2 = [v1 itemsQuery];

  if (v2)
  {
    v3 = [v1 itemsQuery];
    v4 = MusicUsageFileSizeForMediaQuery(v3);
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [v1 items];
    v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v4 = 0;
      v7 = *v13;
      v8 = MPMediaItemPropertyFileSize;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) valueForProperty:v8];
          v4 = &v4[[v10 longLongValue]];
        }

        v6 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

CGFloat MusicRectByApplyingUserInterfaceLayoutDirectionInRect(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1 == 1)
  {
    v17.origin.x = a6;
    v17.origin.y = a7;
    v17.size.width = a8;
    v17.size.height = a9;
    MaxX = CGRectGetMaxX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    v14 = MaxX - CGRectGetMinX(v18);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    v15 = v14 - CGRectGetWidth(v19);
    v20.origin.x = a2;
    v20.origin.y = a3;
    v20.size.width = a4;
    v20.size.height = a5;
    CGRectGetMinY(v20);
    v21.origin.x = a2;
    v21.origin.y = a3;
    v21.size.width = a4;
    v21.size.height = a5;
    CGRectGetWidth(v21);
    v22.origin.x = a2;
    v22.origin.y = a3;
    v22.size.width = a4;
    v22.size.height = a5;
    CGRectGetHeight(v22);
    return v15;
  }

  return a2;
}

CGFloat MusicRectByRemovingUserInterfaceLayoutDirectionInRect(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1 == 1)
  {
    v16.origin.x = a6;
    v16.origin.y = a7;
    v16.size.width = a8;
    v16.size.height = a9;
    MaxX = CGRectGetMaxX(v16);
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    v14 = MaxX - CGRectGetMaxX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    CGRectGetMinY(v18);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    CGRectGetWidth(v19);
    v20.origin.x = a2;
    v20.origin.y = a3;
    v20.size.width = a4;
    v20.size.height = a5;
    CGRectGetHeight(v20);
    return v14;
  }

  return a2;
}

CGFloat MusicRectByApplyingUserInterfaceLayoutDirectionInView(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  v10 = [v9 effectiveUserInterfaceLayoutDirection];
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  return MusicRectByApplyingUserInterfaceLayoutDirectionInRect(v10, a2, a3, a4, a5, v12, v14, v16, v18);
}

BOOL MusicFloatEqualToFloat(double a1, double a2)
{
  v2 = a2 - a1;
  if (v2 < 0.0)
  {
    v2 = -v2;
  }

  return v2 < 0.00000011920929;
}

BOOL MusicFloatGreaterThanOrEqualToFloat(double a1, double a2)
{
  if (a1 > a2)
  {
    return 1;
  }

  v3 = a2 - a1;
  if (v3 < 0.0)
  {
    v3 = -v3;
  }

  return v3 < 0.00000011920929;
}

double MusicSafeDisplayScale(double result)
{
  v1 = 0.0 - result;
  if (0.0 - result < 0.0)
  {
    v1 = -(0.0 - result);
  }

  if (v1 < 0.00000011920929 || result < 0.0)
  {
    return 1.0;
  }

  return result;
}

double sub_1E78(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  y = CGRectZero.origin.y;
  v8 = *(*(a1 + 40) + 8);
  v9 = v8[4];
  v10 = v8[5];
  v11 = v8[6];
  v12 = v8[7];
  v13 = a2;
  v27.origin.x = v9;
  v27.origin.y = v10;
  v27.size.width = v11;
  v27.size.height = v12;
  CGRectGetMinX(v27);
  v14 = *(*(a1 + 40) + 8);
  v15 = v14[4];
  v16 = v14[5];
  v17 = v14[6];
  v18 = v14[7];
  v26 = *(a1 + 48);
  UIRectCenteredYInRectScale();
  [v13 setFrame:{MusicRectByApplyingUserInterfaceLayoutDirectionInRect(objc_msgSend(*(a1 + 32), "effectiveUserInterfaceLayoutDirection", v26), v19, v20, v21, v22, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80))}];

  v23 = a5 + 0.0 + 8.0;
  *(*(*(a1 + 40) + 8) + 32) = v23 + *(*(*(a1 + 40) + 8) + 32);
  v24 = *(*(a1 + 40) + 8);
  result = *(v24 + 48) - v23;
  *(v24 + 48) = result;
  return result;
}

void sub_25E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25FC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6 && v6[21] == *(a1 + 32))
  {
    [v6 _handleArtworkImageUpdate:v5 idealArtworkSize:{*(a1 + 48), *(a1 + 56)}];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_40BC(uint64_t a1)
{
  v10 = [*(a1 + 32) usageGroup];
  [v10 updateGroupSize];
  v2 = *(a1 + 40);
  v3 = [v10 groupSpecifierIdentifier];
  v4 = [v2 specifierForID:v3];

  v5 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [v10 groupSize], 2);
  v6 = [v4 propertyForKey:PSHeaderViewKey];
  [v6 setSize:v5];

  v7 = [*(a1 + 32) childUsageGroup];
  v8 = [v7 numberOfUsageItems];

  if (v8)
  {
    [*(a1 + 40) reloadSpecifier:*(a1 + 48)];
  }

  else
  {
    [v10 removeUsageItem:*(a1 + 32)];
    [*(a1 + 40) removeSpecifier:*(a1 + 48) animated:1];
    if (![v10 numberOfUsageItems])
    {
      [*(a1 + 40) removeSpecifier:v4];
    }
  }

  v9 = *(*(a1 + 40) + 144);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

MPArtworkCatalog *__cdecl sub_4C2C(id a1, MPMediaItemCollection *a2)
{
  v2 = [(MPMediaItemCollection *)a2 artworkCatalog];
  if (!v2)
  {
    v3 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
    v4 = [UIImage imageNamed:@"MissingArtworkMusicNote96" inBundle:v3];
    v2 = [MPArtworkCatalog staticArtworkCatalogWithImage:v4];
  }

  return v2;
}

NSString *__cdecl sub_4CD4(id a1, MPMediaItemCollection *a2)
{
  v2 = [(MPMediaItemCollection *)a2 items];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndex:0];
    v4 = [v3 valueForProperty:MPMediaItemPropertyTitle];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_5DA0(id a1, UIImageView *a2, UIImage *a3)
{
  if (a3)
  {
    [(UIImageView *)a2 setImage:?];
  }
}

void sub_6004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6028(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_6694(uint64_t a1)
{
  v9 = [*(a1 + 32) usageGroup];
  [v9 updateGroupSize];
  v2 = *(a1 + 40);
  v3 = [v9 groupSpecifierIdentifier];
  v4 = [v2 specifierForID:v3];

  v5 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [v9 groupSize], 2);
  v6 = [v4 propertyForKey:PSHeaderViewKey];
  [v6 setSize:v5];

  v7 = [*(a1 + 32) childUsageGroup];
  v8 = [v7 numberOfUsageItems];

  if (v8)
  {
    [*(a1 + 40) reloadSpecifier:*(a1 + 48)];
  }

  else
  {
    [v9 removeUsageItem:*(a1 + 32)];
    [*(a1 + 40) removeSpecifier:*(a1 + 48) animated:1];
    if (![v9 numberOfUsageItems])
    {
      [*(*(a1 + 40) + 144) removeObject:v9];
      [*(a1 + 40) removeSpecifier:v4];
    }
  }

  [*(a1 + 40) updateLocalSongsGroupSize];
}

NSString *__cdecl sub_7BE8(id a1, MPMediaItemCollection *a2)
{
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
  v3 = [v2 localizedStringForKey:@"ALL_MUSIC_CELL_NAME" value:&stru_108A0 table:@"MusicUsage"];

  return v3;
}

NSString *__cdecl sub_7C5C(id a1, MPMediaItemCollection *a2)
{
  v2 = [(MPMediaItemCollection *)a2 representativeItem];
  v3 = [v2 valueForProperty:MPMediaItemPropertyAlbumArtist];

  return v3;
}

NSArray *__cdecl sub_7CB8(id a1, MPMediaItemCollection *a2)
{
  v2 = [(MPMediaItemCollection *)a2 persistentID];
  v3 = +[MPMediaQuery albumsQuery];
  [v3 setIgnoreSystemFilterPredicates:1];
  [v3 setIgnoreRestrictionsPredicates:1];
  [v3 setShouldIncludeNonLibraryEntities:1];
  v4 = [NSNumber numberWithUnsignedLongLong:v2];
  v5 = [MPMediaPropertyPredicate predicateWithValue:v4 forProperty:MPMediaItemPropertyAlbumArtistPersistentID];
  [v3 addFilterPredicate:v5];

  v6 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyHasNonPurgeableAsset];
  [v3 addFilterPredicate:v6];

  v7 = [v3 collections];
  v8 = sub_7DDC(v7);

  return v8;
}

id sub_7DDC(void *a1)
{
  v1 = a1;
  if (![v1 count])
  {
    v11 = 0;
    goto LABEL_15;
  }

  v2 = [v1 count];
  v3 = [v1 firstObject];
  v4 = [v3 representativeItem];
  v5 = [v4 valueForProperty:MPMediaItemPropertyAlbumTitle];
  if (![v5 length])
  {
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
    v7 = [v6 localizedStringForKey:@"ARTIST_DETAIL_CELL_SUBTITLE_ALBUM_UNKNOWN" value:&stru_108A0 table:@"MusicUsage"];

    v5 = v7;
  }

  if (v2 == &dword_0 + 2)
  {
    v32 = [v1 objectAtIndexedSubscript:1];
    v12 = [v32 representativeItem];
    v10 = [v12 valueForProperty:MPMediaItemPropertyAlbumTitle];
    v28 = v4;
    v29 = v3;
    v30 = v12;
    if (![v10 length])
    {
      v13 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
      v14 = [v13 localizedStringForKey:@"ARTIST_DETAIL_CELL_SUBTITLE_ALBUM_UNKNOWN" value:&stru_108A0 table:@"MusicUsage"];

      v10 = v14;
    }

    v27 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
    v26 = [v27 localizedStringForKey:@"ARTIST_DETAIL_CELL_SUBTITLE_ALBUM_AND_ALBUM" value:&stru_108A0 table:@"MusicUsage"];
    v25 = [NSString localizedStringWithFormat:v26, v5, v10];
    v35[0] = v25;
    v15 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
    v16 = [v15 localizedStringForKey:@"ARTIST_DETAIL_CELL_SUBTITLE_ALBUM_AND_N_MORE" value:&stru_108A0 table:@"MusicUsage"];
    v17 = [NSString localizedStringWithFormat:v16, v5, 1];
    v35[1] = v17;
    v18 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
    v19 = [v18 localizedStringForKey:@"ARTIST_DETAIL_CELL_SUBTITLE_ALBUM_COUNT" value:&stru_108A0 table:@"MusicUsage"];
    v20 = [NSString localizedStringWithFormat:v19, 2];
    v35[2] = v20;
    v11 = [NSArray arrayWithObjects:v35 count:3];

    v4 = v28;
    v3 = v29;
    v9 = v30;
    v8 = v32;
  }

  else if (v2 == &dword_0 + 1)
  {
    v36[0] = v5;
    v8 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
    v9 = [v8 localizedStringForKey:@"ARTIST_DETAIL_CELL_SUBTITLE_ALBUM_COUNT" value:&stru_108A0 table:@"MusicUsage"];
    v10 = [NSString localizedStringWithFormat:v9, 1];
    v36[1] = v10;
    v11 = [NSArray arrayWithObjects:v36 count:2];
  }

  else
  {
    if (v2 < 3)
    {
      v11 = 0;
      goto LABEL_14;
    }

    v33 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
    v31 = [v33 localizedStringForKey:@"ARTIST_DETAIL_CELL_SUBTITLE_ALBUM_AND_N_MORE" value:&stru_108A0 table:@"MusicUsage"];
    v10 = [NSString localizedStringWithFormat:v31, v5, v2 - 1];
    v34[0] = v10;
    v21 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
    v22 = [v21 localizedStringForKey:@"ARTIST_DETAIL_CELL_SUBTITLE_ALBUM_COUNT" value:&stru_108A0 table:@"MusicUsage"];
    v23 = [NSString localizedStringWithFormat:v22, v2];
    v34[1] = v23;
    v11 = [NSArray arrayWithObjects:v34 count:2];

    v9 = v31;
    v8 = v33;
  }

LABEL_14:
LABEL_15:

  return v11;
}

id sub_82DC(uint64_t a1, void *a2)
{
  v3 = [a2 albumArtistArtworkCatalog];
  if (!v3)
  {
    v3 = [*(a1 + 32) _placeholderAlbumArtistArtworkCatalog];
  }

  return v3;
}

NSString *__cdecl sub_8328(id a1, MPMediaItemCollection *a2)
{
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
  v3 = [v2 localizedStringForKey:@"UNKNOWN_ARTIST_TITLE" value:&stru_108A0 table:@"MusicUsage"];

  return v3;
}

NSArray *__cdecl sub_839C(id a1, MPMediaItemCollection *a2)
{
  v2 = [(MPMediaItemCollection *)a2 persistentID];
  v3 = +[MPMediaQuery albumsQuery];
  [v3 setIgnoreSystemFilterPredicates:1];
  [v3 setIgnoreRestrictionsPredicates:1];
  [v3 setShouldIncludeNonLibraryEntities:1];
  v4 = [NSNumber numberWithUnsignedLongLong:v2];
  v5 = [MPMediaPropertyPredicate predicateWithValue:v4 forProperty:MPMediaItemPropertyAlbumArtistPersistentID];
  [v3 addFilterPredicate:v5];

  v6 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyHasNonPurgeableAsset];
  [v3 addFilterPredicate:v6];

  v7 = [v3 collections];
  v8 = sub_7DDC(v7);

  return v8;
}

id sub_84C8(uint64_t a1, void *a2)
{
  v3 = [a2 representativeItem];
  v4 = [v3 valueForProperty:*(a1 + 32)];

  return v4;
}

NSString *__cdecl sub_8DDC(id a1, MPMediaItemCollection *a2)
{
  v2 = [(MPMediaItemCollection *)a2 representativeItem];
  v3 = [v2 valueForProperty:MPMediaItemPropertyAlbumTitle];

  if (![v3 length])
  {
    v4 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
    v5 = [v4 localizedStringForKey:@"ARTIST_DETAIL_CELL_SUBTITLE_ALBUM_UNKNOWN" value:&stru_108A0 table:@"MusicUsage"];

    v3 = v5;
  }

  return v3;
}

NSArray *__cdecl sub_8E98(id a1, MPMediaItemCollection *a2)
{
  v2 = a2;
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.MusicUsage"];
  v4 = [v3 localizedStringForKey:@"ALBUM_DETAIL_CELL_SUBTITLE_SONG_COUNT" value:&stru_108A0 table:@"MusicUsage"];
  v5 = [(MPMediaItemCollection *)v2 items];

  v6 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v4, [v5 count]);
  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  return v7;
}

int64_t sub_8FCC(id a1, MusicUsageItem *a2, MusicUsageItem *a3)
{
  v4 = a3;
  v5 = [(MusicUsageItem *)a2 itemCollection];
  v6 = MusicUsageFileSizeForMediaItemCollection(v5);

  v7 = [(MusicUsageItem *)v4 itemCollection];

  v8 = MusicUsageFileSizeForMediaItemCollection(v7);
  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_9158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_9170(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_9188(uint64_t a1)
{
  v20.width = 48.0;
  v20.height = 48.0;
  UIGraphicsBeginImageContextWithOptions(v20, 1, 0.0);
  v18 = [UIColor colorWithRed:0.65 green:0.67 blue:0.72 alpha:1.0];
  v2 = [UIColor colorWithRed:0.52 green:0.54 blue:0.58 alpha:1.0];
  v3 = [UIImage _backgroundGradientWithStartColor:v18 andEndColor:v2];
  [v3 drawInRect:0 blendMode:0.0 alpha:{0.0, 48.0, 48.0, 1.0}];
  v4 = [UIImageSymbolConfiguration configurationWithPointSize:24.0];
  v5 = [UIImage systemImageNamed:@"music.mic" withConfiguration:v4];

  v6 = +[UIColor whiteColor];
  v7 = [v5 _flatImageWithColor:v6];

  UIRectGetCenter();
  v9 = v8;
  [v7 size];
  v11 = v9 - v10 * 0.5;
  UIRectGetCenter();
  v13 = v12;
  [v7 size];
  [v7 drawAtPoint:0 blendMode:v11 alpha:{v13 - v14 * 0.5, 1.0}];
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  v16 = *(*(a1 + 32) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  UIGraphicsEndImageContext();
}

uint64_t sub_993C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 sizeForCategory:a2];
  v8 = v7;
  [*(a1 + 32) sizeForCategory:v6];
  v10 = v9;

  if (v8 <= v10)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}