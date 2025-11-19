void sub_1BF4(id a1, UIImageView *a2, UIImage *a3)
{
  if (a3)
  {
    [(UIImageView *)a2 setImage:?];
  }
}

void sub_1F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1F20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _totalSizeForAllDownloads];
  obj = WeakRetained;
  objc_sync_enter(obj);
  if (obj)
  {
    *&v3 = v2;
    [obj[2] setTotalSize:v3];
  }

  objc_sync_exit(obj);
}

TVUsageEntityItem *sub_2FA0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 representativeItem];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;
  v6 = objc_alloc_init(TVUsageEntityItem);
  v7 = [v5 valueForProperty:*(a1 + 32)];
  [(TVUsageEntityItem *)v6 setTitle:v7];

  v8 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    v9 = NSStringFromSelector(*(a1 + 40));
    v10 = [v3 valueForKey:v9];
    [(TVUsageEntityItem *)v6 setArtworkCatalog:v10];

    v11 = [v5 mediaType];
    if (qword_11E30 != -1)
    {
      sub_6A30();
    }

    v12 = qword_11E28;
    v13 = [NSNumber numberWithUnsignedInteger:v11];
    v14 = [v12 objectForKey:v13];

    if (!v14)
    {
      v15 = [MPPlaceholderArtwork noArtPlaceholderImageForMediaType:v11];
      [v15 scale];
      v17 = v16;
      v26.width = 44.0;
      v26.height = 44.0;
      UIGraphicsBeginImageContextWithOptions(v26, 1, v17);
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationHigh);
      [v15 drawInRect:{0.0, 0.0, 44.0, 44.0}];
      v14 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      v19 = qword_11E28;
      v20 = [NSNumber numberWithUnsignedInteger:v11];
      [v19 setObject:v14 forKey:v20];
    }

    [(TVUsageEntityItem *)v6 setPlaceholderImage:v14];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [v3 valueForProperty:MPMediaItemPropertyFileSize];
    v22 = [v21 unsignedLongLongValue];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = sub_594C(v3);
    }

    else
    {
      v22 = 0;
    }
  }

  v23 = [NSByteCountFormatter stringFromByteCount:v22 countStyle:2];
  [(TVUsageEntityItem *)v6 setFileSizeString:v23];

  return v6;
}

void sub_3268(id a1)
{
  qword_11E28 = +[NSMutableDictionary dictionary];

  _objc_release_x1();
}

TVUsageEntityItem *__cdecl sub_32A8(id a1, MPMediaQuery *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(TVUsageEntityItem);
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.VideosUsage"];
  v5 = [v4 localizedStringForKey:@"SEASONS_HEADER" value:&stru_C6C0 table:@"VideosUsage"];
  v6 = +[NSLocale currentLocale];
  v7 = [v5 uppercaseStringWithLocale:v6];
  [(TVUsageEntityItem *)v3 setTitle:v7];

  v8 = [(MPMediaQuery *)v2 valueForAggregateFunction:MPMediaQueryAggregateFunctionTotal onItemsForProperty:MPMediaItemPropertyFileSize];

  v9 = [v8 unsignedLongLongValue];
  v10 = [NSByteCountFormatter stringFromByteCount:v9 countStyle:2];
  [(TVUsageEntityItem *)v3 setFileSizeString:v10];

  return v3;
}

TVUsageEntityItem *__cdecl sub_33F0(id a1, MPMediaQuery *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(TVUsageEntityItem);
  v4 = [(MPMediaQuery *)v2 items];
  v5 = [v4 firstObject];

  v6 = [v5 artworkCatalog];
  [(TVUsageEntityItem *)v3 setArtworkCatalog:v6];

  v7 = [v5 valueForProperty:MPMediaItemPropertySeriesName];
  [(TVUsageEntityItem *)v3 setTitle:v7];

  v8 = [(MPMediaQuery *)v2 items];
  v9 = [v8 count];

  v10 = [NSBundle bundleWithIdentifier:@"com.apple.VideosUsage"];
  v11 = [v10 localizedStringForKey:@"EPISODE_COUNT_SUBTITLE_FORMAT" value:&stru_C6C0 table:@"VideosUsage"];
  v12 = [NSString localizedStringWithFormat:v11, v9];

  [(TVUsageEntityItem *)v3 setSubtitle:v12];
  v13 = [(MPMediaQuery *)v2 valueForAggregateFunction:MPMediaQueryAggregateFunctionTotal onItemsForProperty:MPMediaItemPropertyFileSize];

  v14 = [v13 unsignedLongLongValue];
  v15 = [NSByteCountFormatter stringFromByteCount:v14 countStyle:2];
  [(TVUsageEntityItem *)v3 setFileSizeString:v15];

  return v3;
}

TVUsageEntityItem *__cdecl sub_35C8(id a1, MPMediaEntity *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(TVUsageEntityItem);
  v4 = [(MPMediaEntity *)v2 valueForProperty:MPMediaItemPropertyTitle];
  [(TVUsageEntityItem *)v3 setTitle:v4];

  v5 = [(MPMediaEntity *)v2 valueForProperty:MPMediaItemPropertyEpisodeNumber];
  v6 = [(MPMediaEntity *)v2 valueForProperty:MPMediaItemPropertyPlaybackDuration];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (v5)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      v10 = 0;
      goto LABEL_13;
    }

    [0 doubleValue];
    v13 = sub_382C(v17);
    v14 = [NSBundle bundleWithIdentifier:@"com.apple.VideosUsage"];
    v15 = [v14 localizedStringForKey:@"EPISODE_SUBTITLE_WITHOUT_NUMBER_WITH_DURATION" value:&stru_C6C0 table:@"VideosUsage"];
    v16 = [NSString stringWithFormat:v15, v13];
  }

  else
  {
    v11 = [v5 unsignedIntegerValue];
    [v7 doubleValue];
    v13 = sub_382C(v12);
    v14 = [NSBundle bundleWithIdentifier:@"com.apple.VideosUsage"];
    v15 = [v14 localizedStringForKey:@"EPISODE_SUBTITLE_WITH_NUMBER_WITH_DURATION" value:&stru_C6C0 table:@"VideosUsage"];
    v16 = [NSString localizedStringWithFormat:v15, v11, v13];
  }

  v10 = v16;

LABEL_13:
  [(TVUsageEntityItem *)v3 setSubtitle:v10];
  v18 = [(MPMediaEntity *)v2 valueForProperty:MPMediaItemPropertyFileSize];
  v19 = [v18 unsignedLongLongValue];

  v20 = [NSByteCountFormatter stringFromByteCount:v19 countStyle:2];
  [(TVUsageEntityItem *)v3 setFileSizeString:v20];

  return v3;
}

id sub_382C(double a1)
{
  if (qword_11E50 != -1)
  {
    sub_6A44();
  }

  v2 = objc_opt_new();
  [v2 setSecond:a1];
  v3 = [qword_11E38 dateFromComponents:v2];
  v4 = [qword_11E38 components:32 fromDate:v3];

  v5 = [v4 hour];
  v6 = &qword_11E40;
  if (v5 <= 0)
  {
    v6 = &qword_11E48;
  }

  v7 = *v6;
  v8 = [v7 stringFromDate:v3];

  return v8;
}

void sub_391C(id a1)
{
  v1 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v2 = qword_11E38;
  qword_11E38 = v1;

  v3 = objc_alloc_init(NSDateFormatter);
  v4 = qword_11E40;
  qword_11E40 = v3;

  v5 = qword_11E40;
  v6 = +[NSLocale currentLocale];
  v7 = [NSDateFormatter dateFormatFromTemplate:@"Hmm" options:0 locale:v6];
  [v5 setDateFormat:v7];

  v8 = objc_alloc_init(NSDateFormatter);
  v9 = qword_11E48;
  qword_11E48 = v8;

  v10 = qword_11E48;
  v12 = +[NSLocale currentLocale];
  v11 = [NSDateFormatter dateFormatFromTemplate:@"mmss" options:0 locale:v12];
  [v10 setDateFormat:v11];
}

void sub_460C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [v9 item];
    v7 = *(a1 + 32);

    if (v6 == v7)
    {
      v8 = [v9 imageView];
      [v8 setImage:v5];

      [v9 setNeedsUpdateConstraints];
    }
  }
}

uint64_t sub_4B98(uint64_t a1, uint64_t a2, void *a3)
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

void sub_4D84(id a1)
{
  qword_11E58 = [[TVUsageTableViewSectionHeaderView alloc] initWithReuseIdentifier:@"VideosUsageHSizingHeaderView"];

  _objc_release_x1();
}

id sub_58FC(void *a1)
{
  v1 = [a1 valueForAggregateFunction:MPMediaQueryAggregateFunctionTotal onItemsForProperty:MPMediaItemPropertyFileSize];
  v2 = [v1 unsignedLongLongValue];

  return v2;
}

char *sub_594C(void *a1)
{
  v1 = a1;
  v2 = [v1 itemsQuery];

  if (v2)
  {
    v3 = [v1 itemsQuery];
    v4 = sub_58FC(v3);
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

void sub_5CCC(id a1)
{
  qword_11E68 = [[TVUsageTableViewSectionHeaderView alloc] initWithReuseIdentifier:@"VideosUsageHSizingHeaderView"];

  _objc_release_x1();
}