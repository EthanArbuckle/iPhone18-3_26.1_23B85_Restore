@interface GeoTagMO
+ (BOOL)isNetworkWithinRangeOfLocation:(id)location range:(double)range location:(id)a5 container:(id)container count:(unint64_t *)count;
+ (id)generateInstance:(id)instance;
+ (id)geoTagsAtLocation:(id)location withinDistance:(double)distance inBand:(unsigned int)band container:(id)container;
+ (id)geoTagsForNetwork:(id)network container:(id)container;
+ (id)geoTagsInBand:(unsigned int)band ssid:(id)ssid moc:(id)moc;
@end

@implementation GeoTagMO

+ (id)generateInstance:(id)instance
{
  instanceCopy = instance;
  v4 = +[GeoTagMO entity];
  name = [v4 name];
  v6 = [AnalyticsStoreProxy createEntity:name moc:instanceCopy];

  return v6;
}

+ (id)geoTagsForNetwork:(id)network container:(id)container
{
  v26[1] = *MEMORY[0x1E69E9840];
  networkCopy = network;
  containerCopy = container;
  v7 = +[GeoTagMO entity];
  name = [v7 name];
  v9 = [AnalyticsStoreProxy fetchRequestForEntity:name];

  [v9 setFetchLimit:10];
  [v9 setRelationshipKeyPathsForPrefetching:&unk_1F483E518];
  v10 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v26[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [v9 setSortDescriptors:v11];

  networkCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", networkCopy];
  viewContext = [containerCopy viewContext];

  v14 = [AnalyticsStoreProxy fetch:v9 withPredicate:networkCopy moc:viewContext];

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
      v25 = networkCopy;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEBUG, "%{public}s::%d:ResultCount:%lu ssid:%@", buf, 0x26u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)geoTagsInBand:(unsigned int)band ssid:(id)ssid moc:(id)moc
{
  v35[1] = *MEMORY[0x1E69E9840];
  ssidCopy = ssid;
  mocCopy = moc;
  v9 = +[GeoTagMO entity];
  name = [v9 name];
  v11 = [AnalyticsStoreProxy fetchRequestForEntity:name];

  [v11 setFetchLimit:10];
  [v11 setRelationshipKeyPathsForPrefetching:&unk_1F483E530];
  v12 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v35[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  [v11 setSortDescriptors:v13];

  if (band == 2)
  {
    v14 = MEMORY[0x1E696AB28];
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.mostRecentChannel > %d", 14];
    v33[0] = v15;
    ssidCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", ssidCopy];
    v33[1] = ssidCopy;
    v17 = MEMORY[0x1E695DEC8];
    v18 = v33;
    goto LABEL_5;
  }

  if (band == 1)
  {
    v14 = MEMORY[0x1E696AB28];
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.mostRecentChannel <= %d", 14];
    v34[0] = v15;
    ssidCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", ssidCopy];
    v34[1] = ssidCopy;
    v17 = MEMORY[0x1E695DEC8];
    v18 = v34;
LABEL_5:
    v19 = [v17 arrayWithObjects:v18 count:2];
    ssidCopy2 = [v14 andPredicateWithSubpredicates:v19];

    goto LABEL_7;
  }

  ssidCopy2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", ssidCopy];
LABEL_7:
  v21 = [AnalyticsStoreProxy fetch:v11 withPredicate:ssidCopy2 moc:mocCopy];

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
      v32 = ssidCopy;
      _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_DEBUG, "%{public}s::%d:ResultCount:%lu ssid:%@", buf, 0x26u);
    }
  }

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)geoTagsAtLocation:(id)location withinDistance:(double)distance inBand:(unsigned int)band container:(id)container
{
  v90 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  containerCopy = container;
  array = [MEMORY[0x1E695DF70] array];
  v56 = containerCopy;
  viewContext = [containerCopy viewContext];
  v10 = [NetworkMO allStoredSsids:viewContext];

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
        viewContext2 = [v56 viewContext];
        v58 = v12;
        v14 = [GeoTagMO geoTagsInBand:band ssid:*&v12 moc:viewContext2];

        string = [MEMORY[0x1E696AD60] string];
        string2 = [MEMORY[0x1E696AD60] string];
        date = [MEMORY[0x1E695DF00] date];
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v65 = v14;
        v68 = [v65 countByEnumeratingWithState:&v72 objects:v88 count:16];
        if (v68)
        {
          v67 = *v73;
          v63 = string;
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
                [v23 distanceFromLocation:locationCopy];
                v25 = v24;
                if (distance != 0.0 && v24 < distance)
                {
                  [array addObject:v17];
                  v35 = [v17 bss];
                  network = [v35 network];
                  ssid = [network ssid];
                  v37 = [v17 bss];
                  bssid = [v37 bssid];
                  v39 = [v17 bss];
                  network2 = [v39 network];
                  authFlags = [network2 authFlags];
                  v42 = [v17 bss];
                  v52 = authFlags;
                  string = v63;
                  [v63 appendFormat:@"[ssid: %@[%@] {auth:%d, chan:%d, %fm away}], ", ssid, bssid, v52, objc_msgSend(v42, "mostRecentChannel"), *&v25];

                  objc_autoreleasePoolPop(v18);
                  goto LABEL_21;
                }

                v69 = [v17 bss];
                network3 = [v69 network];
                ssid2 = [network3 ssid];
                v28 = [v17 bss];
                bssid2 = [v28 bssid];
                [v17 bss];
                v30 = v70 = v18;
                network4 = [v30 network];
                v32 = v23;
                authFlags2 = [network4 authFlags];
                v34 = [v17 bss];
                [string2 appendFormat:@"[ssid: %@[%@] {auth:%d, chan:%d, %fm away}], ", ssid2, bssid2, authFlags2, objc_msgSend(v34, "mostRecentChannel"), *&v25];

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

            string = v63;
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
          [date timeIntervalSinceNow];
          v45 = v44;
          v46 = [v65 count];
          *buf = 136447234;
          v81 = "+[GeoTagMO geoTagsAtLocation:withinDistance:inBand:container:]";
          v82 = 1024;
          v83 = 140;
          v84 = 2112;
          distanceCopy2 = v58;
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
          distanceCopy2 = distance;
          v86 = 1024;
          *v87 = band;
          *&v87[4] = 2112;
          *&v87[6] = string;
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
          distanceCopy2 = distance;
          v86 = 2112;
          *v87 = string2;
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

  v49 = array;
  if (![array count])
  {

    v49 = 0;
  }

  v50 = *MEMORY[0x1E69E9840];

  return v49;
}

+ (BOOL)isNetworkWithinRangeOfLocation:(id)location range:(double)range location:(id)a5 container:(id)container count:(unint64_t *)count
{
  v64[1] = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v12 = a5;
  containerCopy = container;
  v14 = +[GeoTagMO entity];
  name = [v14 name];
  v16 = [AnalyticsStoreProxy fetchRequestForEntity:name];

  [v16 setFetchLimit:10];
  v17 = [MEMORY[0x1E695DEC8] arrayWithObject:@"geoTag.bss.bssid"];
  [v16 setRelationshipKeyPathsForPrefetching:v17];

  v18 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v64[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:1];
  [v16 setSortDescriptors:v19];

  locationCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"bss.network.ssid == %@", locationCopy];
  viewContext = [containerCopy viewContext];
  v22 = [AnalyticsStoreProxy fetch:v16 withPredicate:locationCopy moc:viewContext];

  if (!v22)
  {
    v23 = 0;
    v37 = 0;
    if (!count)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v47 = containerCopy;
  countCopy = count;
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
    v60 = locationCopy;
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
    v45 = locationCopy;
    v46 = locationCopy;
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
        if (v36 < range)
        {
          v38 = v36;
          v39 = WALogCategoryDeviceStoreHandle();
          locationCopy = v46;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            v40 = [v30 bss];
            bssid = [v40 bssid];
            *buf = 136447234;
            v54 = "+[GeoTagMO isNetworkWithinRangeOfLocation:range:location:container:count:]";
            v55 = 1024;
            v56 = 181;
            v57 = 2112;
            v58 = bssid;
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
    locationCopy = v46;
LABEL_16:
    locationCopy = v45;
    v23 = v44;
  }

  else
  {
    v37 = 0;
  }

  containerCopy = v47;
  count = countCopy;
  if (countCopy)
  {
LABEL_21:
    *count = v23;
  }

LABEL_22:

  v42 = *MEMORY[0x1E69E9840];
  return v37;
}

@end