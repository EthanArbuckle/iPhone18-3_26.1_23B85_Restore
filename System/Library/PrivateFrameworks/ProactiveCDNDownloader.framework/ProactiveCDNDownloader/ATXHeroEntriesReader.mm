@interface ATXHeroEntriesReader
+ (BOOL)validateReader:(id)a3 pbEntries:(id)a4;
+ (id)appAndClipEntryFromPbEntries:(id)a3 position:(unint64_t)a4;
+ (id)loadAppAndClipEntriesFromData:(id)a3;
+ (id)loadAppAndClipEntriesFromFileURL:(id)a3;
@end

@implementation ATXHeroEntriesReader

+ (id)appAndClipEntryFromPbEntries:(id)a3 position:(unint64_t)a4
{
  v5 = a3;
  v6 = *([v5 deltaLatitudes] + 4 * a4);
  v7 = (v6 + [v5 tileLatitudeE7]) / 10000000.0;
  v8 = *([v5 deltaLongitudes] + 4 * a4);
  v9 = [v5 tileLongitudeE7];
  if (fabs(v7) > 90.0 || (v10 = (v8 + v9) / 10000000.0, fabs(v10) > 180.0))
  {
    v18 = __atxlog_handle_hero();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [ATXHeroEntriesReader appAndClipEntryFromPbEntries:a4 position:v18];
    }

    v19 = 0;
  }

  else
  {
    v11 = *([v5 adamIds] + 4 * a4);
    if ([v5 urlHashsCount] && (objc_msgSend(v5, "urlHashs"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "objectAtIndexedSubscript:", a4), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, v12, v14 == 32))
    {
      v15 = [v5 urlHashs];
      v16 = [v15 objectAtIndexedSubscript:a4];
      v17 = [ATXDigestConverter binToHex:v16];
    }

    else
    {
      v17 = 0;
    }

    if ([v5 radiusCount])
    {
      v20 = *([v5 radius] + 4 * a4);
    }

    else
    {
      v20 = 0;
    }

    if ([v5 ranksCount])
    {
      v21 = *([v5 ranks] + 4 * a4);
    }

    else
    {
      v21 = 1;
    }

    if ([v5 isTouristAppsCount])
    {
      v22 = *([v5 isTouristApps] + a4);
    }

    else
    {
      v22 = 0;
    }

    v23 = [v5 poiCategorys];
    v24 = [v23 objectAtIndexedSubscript:a4];

    if ([v5 muidsCount])
    {
      v25 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLongLong:{*(objc_msgSend(v5, "muids") + 8 * a4)}];
    }

    else
    {
      v25 = 0;
    }

    v19 = [[ATXHeroEntry alloc] initWithAdamId:v11 urlHash:v17 location:v20 radiusInMeters:v21 rank:v22 isTouristApp:v24 poiCategory:v7 poiMuid:v10, v25];
  }

  return v19;
}

+ (BOOL)validateReader:(id)a3 pbEntries:(id)a4
{
  v5 = a4;
  if ((ATXHeroEntriesPbReadFrom(v5, a3) & 1) == 0)
  {
    v9 = __atxlog_handle_hero();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[ATXHeroEntriesReader validateReader:pbEntries:];
    }

    goto LABEL_22;
  }

  v6 = [v5 deltaLatitudesCount];
  if ((v6 - 100001) < 0xFFFFFFFFFFFE7960 || (v7 = v6, [v5 deltaLongitudesCount] != v6))
  {
    v9 = __atxlog_handle_hero();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[ATXHeroEntriesReader validateReader:pbEntries:];
    }

    goto LABEL_22;
  }

  if ([v5 adamIdsCount] != v7)
  {
    v9 = __atxlog_handle_hero();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[ATXHeroEntriesReader validateReader:pbEntries:];
    }

    goto LABEL_22;
  }

  if ([v5 radiusCount] && (objc_msgSend(v5, "radiusCount") > 0x186A0 || v7 != objc_msgSend(v5, "radiusCount")))
  {
    v9 = __atxlog_handle_hero();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[ATXHeroEntriesReader validateReader:pbEntries:];
    }

    goto LABEL_22;
  }

  if ([v5 ranksCount] && (objc_msgSend(v5, "ranksCount") > 0x186A0 || v7 != objc_msgSend(v5, "ranksCount")))
  {
    v9 = __atxlog_handle_hero();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[ATXHeroEntriesReader validateReader:pbEntries:];
    }

    goto LABEL_22;
  }

  if ([v5 urlHashsCount] && (objc_msgSend(v5, "urlHashsCount") > 0x186A0 || v7 != objc_msgSend(v5, "urlHashsCount")))
  {
    v9 = __atxlog_handle_hero();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[ATXHeroEntriesReader validateReader:pbEntries:];
    }

    goto LABEL_22;
  }

  if ([v5 poiCategorysCount] && (objc_msgSend(v5, "poiCategorysCount") > 0x186A0 || v7 != objc_msgSend(v5, "poiCategorysCount")))
  {
    v9 = __atxlog_handle_hero();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[ATXHeroEntriesReader validateReader:pbEntries:];
    }

LABEL_22:

    v8 = 0;
    goto LABEL_23;
  }

  v8 = 1;
LABEL_23:

  return v8;
}

+ (id)loadAppAndClipEntriesFromFileURL:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v3 options:1 error:&v10];
  v5 = v10;
  if (v4 && [v4 length])
  {
    v6 = [objc_opt_class() loadAppAndClipEntriesFromData:v4];
  }

  else
  {
    v7 = __atxlog_handle_hero();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_260C92000, v7, OS_LOG_TYPE_DEFAULT, "ATXCDN: Ignore reading nil or 0-byte file %@: %@", buf, 0x16u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)loadAppAndClipEntriesFromData:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ATXHeroEntriesPb);
  v6 = [objc_alloc(MEMORY[0x277D43170]) initWithData:v4];
  if ([a1 validateReader:v6 pbEntries:v5])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[ATXHeroEntriesPb adamIdsCount](v5, "adamIdsCount")}];
    if ([(ATXHeroEntriesPb *)v5 adamIdsCount])
    {
      v8 = 0;
      do
      {
        v9 = objc_autoreleasePoolPush();
        v10 = [a1 appAndClipEntryFromPbEntries:v5 position:v8];
        if (v10)
        {
          [v7 addObject:v10];
        }

        objc_autoreleasePoolPop(v9);
        ++v8;
      }

      while (v8 < [(ATXHeroEntriesPb *)v5 adamIdsCount]);
    }

    if ([v7 count])
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)appAndClipEntryFromPbEntries:(uint64_t)a1 position:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_260C92000, a2, OS_LOG_TYPE_DEBUG, "ATXCDN: Skipping malformed entry at position: %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end