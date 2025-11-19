@interface GeoTagMO
+ (BOOL)isNetworkWithinRangeOfLocation:(id)a3 range:(double)a4 location:(id)a5 container:(id)a6 count:(unint64_t *)a7;
+ (id)generateInstance:(id)a3;
+ (id)geoTagsAtLocation:(id)a3 withinDistance:(double)a4 inBand:(unsigned int)a5 container:(id)a6;
+ (id)geoTagsForNetwork:(id)a3 container:(id)a4;
+ (id)geoTagsInBand:(unsigned int)a3 ssid:(id)a4 moc:(id)a5;
@end

@implementation GeoTagMO

+ (id)generateInstance:(id)a3
{
  v3 = a3;
  v4 = +[GeoTagMO entity];
  v5 = [v4 name];
  v6 = [AnalyticsStoreProxy createEntity:v5 moc:v3];

  return v6;
}

+ (id)geoTagsForNetwork:(id)a3 container:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[GeoTagMO entity];
  v8 = [v7 name];
  v9 = [AnalyticsStoreProxy fetchRequestForEntity:v8];

  [v9 setFetchLimit:10];
  [v9 setRelationshipKeyPathsForPrefetching:&unk_1F483E518];
  v10 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v26[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [v9 setSortDescriptors:v11];

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", v5];
  v13 = [v6 viewContext];

  v14 = [AnalyticsStoreProxy fetch:v9 withPredicate:v12 moc:v13];

  if (v14)
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v19 = "+[GeoTagMO geoTagsForNetwork:container:]";
      v20 = 1024;
      v21 = 47;
      v22 = 2048;
      v23 = [v14 count];
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEBUG, "%{public}s::%d:ResultCount:%lu ssid:%@", buf, 0x26u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)geoTagsInBand:(unsigned int)a3 ssid:(id)a4 moc:(id)a5
{
  v35[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = +[GeoTagMO entity];
  v10 = [v9 name];
  v11 = [AnalyticsStoreProxy fetchRequestForEntity:v10];

  [v11 setFetchLimit:10];
  [v11 setRelationshipKeyPathsForPrefetching:&unk_1F483E530];
  v12 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v35[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  [v11 setSortDescriptors:v13];

  if (a3 == 2)
  {
    v14 = MEMORY[0x1E696AB28];
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.mostRecentChannel > %d", 14];
    v33[0] = v15;
    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", v7];
    v33[1] = v16;
    v17 = MEMORY[0x1E695DEC8];
    v18 = v33;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v14 = MEMORY[0x1E696AB28];
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.mostRecentChannel <= %d", 14];
    v34[0] = v15;
    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", v7];
    v34[1] = v16;
    v17 = MEMORY[0x1E695DEC8];
    v18 = v34;
LABEL_5:
    v19 = [v17 arrayWithObjects:v18 count:2];
    v20 = [v14 andPredicateWithSubpredicates:v19];

    goto LABEL_7;
  }

  v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", v7];
LABEL_7:
  v21 = [AnalyticsStoreProxy fetch:v11 withPredicate:v20 moc:v8];

  if (v21)
  {
    v22 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v26 = "+[GeoTagMO geoTagsInBand:ssid:moc:]";
      v27 = 1024;
      v28 = 87;
      v29 = 2048;
      v30 = [v21 count];
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_DEBUG, "%{public}s::%d:ResultCount:%lu ssid:%@", buf, 0x26u);
    }
  }

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)geoTagsAtLocation:(id)a3 withinDistance:(double)a4 inBand:(unsigned int)a5 container:(id)a6
{
  v90 = *MEMORY[0x1E69E9840];
  v64 = a3;
  v8 = a6;
  v54 = [MEMORY[0x1E695DF70] array];
  v56 = v8;
  v9 = [v8 viewContext];
  v10 = [NetworkMO allStoredSsids:v9];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v10;
  v57 = [obj countByEnumeratingWithState:&v76 objects:v89 count:16];
  if (v57)
  {
    v55 = *v77;
    do
    {
      v11 = 0;
      do
      {
        if (*v77 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v62 = v11;
        v12 = *(*(&v76 + 1) + 8 * v11);
        context = objc_autoreleasePoolPush();
        v13 = [v56 viewContext];
        v58 = v12;
        v14 = [GeoTagMO geoTagsInBand:a5 ssid:*&v12 moc:v13];

        v15 = [MEMORY[0x1E696AD60] string];
        v66 = [MEMORY[0x1E696AD60] string];
        v60 = [MEMORY[0x1E695DF00] date];
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v65 = v14;
        v68 = [v65 countByEnumeratingWithState:&v72 objects:v88 count:16];
        if (v68)
        {
          v67 = *v73;
          v63 = v15;
          while (2)
          {
            for (i = 0; i != v68; ++i)
            {
              if (*v73 != v67)
              {
                objc_enumerationMutation(v65);
              }

              v17 = *(*(&v72 + 1) + 8 * i);
              v18 = objc_autoreleasePoolPush();
              if (v17)
              {
                v19 = objc_alloc(MEMORY[0x1E6985C38]);
                [v17 latitude];
                v21 = v20;
                [v17 longitude];
                v23 = [v19 initWithLatitude:v21 longitude:v22];
                [v23 distanceFromLocation:v64];
                v25 = v24;
                if (a4 != 0.0 && v24 < a4)
                {
                  [v54 addObject:v17];
                  v35 = [v17 bss];
                  v71 = [v35 network];
                  v36 = [v71 ssid];
                  v37 = [v17 bss];
                  v38 = [v37 bssid];
                  v39 = [v17 bss];
                  v40 = [v39 network];
                  v41 = [v40 authFlags];
                  v42 = [v17 bss];
                  v52 = v41;
                  v15 = v63;
                  [v63 appendFormat:@"[ssid: %@[%@] {auth:%d, chan:%d, %fm away}], ", v36, v38, v52, objc_msgSend(v42, "mostRecentChannel"), *&v25];

                  objc_autoreleasePoolPop(v18);
                  goto LABEL_21;
                }

                v69 = [v17 bss];
                v26 = [v69 network];
                v27 = [v26 ssid];
                v28 = [v17 bss];
                v29 = [v28 bssid];
                [v17 bss];
                v30 = v70 = v18;
                v31 = [v30 network];
                v32 = v23;
                v33 = [v31 authFlags];
                v34 = [v17 bss];
                [v66 appendFormat:@"[ssid: %@[%@] {auth:%d, chan:%d, %fm away}], ", v27, v29, v33, objc_msgSend(v34, "mostRecentChannel"), *&v25];

                v18 = v70;
              }

              else
              {
                v32 = WALogCategoryDeviceStoreHandle();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446466;
                  v81 = "+[GeoTagMO geoTagsAtLocation:withinDistance:inBand:container:]";
                  v82 = 1024;
                  v83 = 115;
                  _os_log_impl(&dword_1C8460000, v32, OS_LOG_TYPE_ERROR, "%{public}s::%d:geoTag nil", buf, 0x12u);
                }
              }

              objc_autoreleasePoolPop(v18);
            }

            v15 = v63;
            v68 = [v65 countByEnumeratingWithState:&v72 objects:v88 count:16];
            if (v68)
            {
              continue;
            }

            break;
          }
        }

LABEL_21:

        v43 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          [v60 timeIntervalSinceNow];
          v45 = v44;
          v46 = [v65 count];
          *buf = 136447234;
          v81 = "+[GeoTagMO geoTagsAtLocation:withinDistance:inBand:container:]";
          v82 = 1024;
          v83 = 140;
          v84 = 2112;
          v85 = v58;
          v86 = 2048;
          *v87 = v45;
          *&v87[8] = 2048;
          *&v87[10] = v46;
          _os_log_impl(&dword_1C8460000, v43, OS_LOG_TYPE_DEBUG, "%{public}s::%d:GeoTag operation for %@ took %f for %lu objects", buf, 0x30u);
        }

        v47 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136447234;
          v81 = "+[GeoTagMO geoTagsAtLocation:withinDistance:inBand:container:]";
          v82 = 1024;
          v83 = 141;
          v84 = 2048;
          v85 = a4;
          v86 = 1024;
          *v87 = a5;
          *&v87[4] = 2112;
          *&v87[6] = v15;
          _os_log_impl(&dword_1C8460000, v47, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Networks within %fm of geotag in band :%d - %@", buf, 0x2Cu);
        }

        v48 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          v81 = "+[GeoTagMO geoTagsAtLocation:withinDistance:inBand:container:]";
          v82 = 1024;
          v83 = 142;
          v84 = 2048;
          v85 = a4;
          v86 = 2112;
          *v87 = v66;
          _os_log_impl(&dword_1C8460000, v48, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Networks NOT within %fm of geotag - %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(context);
        v11 = v62 + 1;
      }

      while (v62 + 1 != v57);
      v57 = [obj countByEnumeratingWithState:&v76 objects:v89 count:16];
    }

    while (v57);
  }

  v49 = v54;
  if (![v54 count])
  {

    v49 = 0;
  }

  v50 = *MEMORY[0x1E69E9840];

  return v49;
}

+ (BOOL)isNetworkWithinRangeOfLocation:(id)a3 range:(double)a4 location:(id)a5 container:(id)a6 count:(unint64_t *)a7
{
  v64[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = +[GeoTagMO entity];
  v15 = [v14 name];
  v16 = [AnalyticsStoreProxy fetchRequestForEntity:v15];

  [v16 setFetchLimit:10];
  v17 = [MEMORY[0x1E695DEC8] arrayWithObject:@"geoTag.bss.bssid"];
  [v16 setRelationshipKeyPathsForPrefetching:v17];

  v18 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v64[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:1];
  [v16 setSortDescriptors:v19];

  v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", v11];
  v21 = [v13 viewContext];
  v22 = [AnalyticsStoreProxy fetch:v16 withPredicate:v20 moc:v21];

  if (!v22)
  {
    v23 = 0;
    v37 = 0;
    if (!a7)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v47 = v13;
  v48 = a7;
  v23 = [v22 count];
  v24 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446978;
    v54 = "+[GeoTagMO isNetworkWithinRangeOfLocation:range:location:container:count:]";
    v55 = 1024;
    v56 = 175;
    v57 = 2048;
    v58 = v23;
    v59 = 2112;
    v60 = v11;
    _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_DEBUG, "%{public}s::%d:ResultCount:%lu ssid:%@", buf, 0x26u);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v25 = v22;
  v26 = [v25 countByEnumeratingWithState:&v49 objects:v63 count:16];
  if (v26)
  {
    v27 = v26;
    v44 = v23;
    v45 = v20;
    v46 = v11;
    v28 = *v50;
    while (2)
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v50 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v49 + 1) + 8 * i);
        v31 = objc_alloc(MEMORY[0x1E6985C38]);
        [v30 latitude];
        v33 = v32;
        [v30 longitude];
        v35 = [v31 initWithLatitude:v33 longitude:v34];
        [v35 distanceFromLocation:v12];
        if (v36 < a4)
        {
          v38 = v36;
          v39 = WALogCategoryDeviceStoreHandle();
          v11 = v46;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            v40 = [v30 bss];
            v41 = [v40 bssid];
            *buf = 136447234;
            v54 = "+[GeoTagMO isNetworkWithinRangeOfLocation:range:location:container:count:]";
            v55 = 1024;
            v56 = 181;
            v57 = 2112;
            v58 = v41;
            v59 = 2112;
            v60 = v46;
            v61 = 2048;
            v62 = v38;
            _os_log_impl(&dword_1C8460000, v39, OS_LOG_TYPE_DEBUG, "%{public}s::%d:GeoTag for %@[%@] is %f away", buf, 0x30u);
          }

          v37 = 1;
          goto LABEL_16;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v49 objects:v63 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }

    v37 = 0;
    v11 = v46;
LABEL_16:
    v20 = v45;
    v23 = v44;
  }

  else
  {
    v37 = 0;
  }

  v13 = v47;
  a7 = v48;
  if (v48)
  {
LABEL_21:
    *a7 = v23;
  }

LABEL_22:

  v42 = *MEMORY[0x1E69E9840];
  return v37;
}

@end