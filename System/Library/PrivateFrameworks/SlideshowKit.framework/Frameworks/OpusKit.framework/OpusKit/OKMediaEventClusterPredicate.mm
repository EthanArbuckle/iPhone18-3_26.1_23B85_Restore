@interface OKMediaEventClusterPredicate
- (OKMediaEventClusterPredicate)initWithType:(unint64_t)type;
- (double)floatingAverageDistanceDeltaForItem:(id)item inArray:(id)array;
- (double)floatingAverageTimeDeltaForItem:(id)item inArray:(id)array;
- (double)maximumDistanceBetweenLocations:(id)locations;
- (id)barycenterOfLocations:(id)locations;
- (id)clusterDateStringForPeriodFrom:(id)from to:(id)to;
- (id)clusterLocationStringForLocations:(id)locations;
- (id)evaluateItems:(id)items progressBlock:(id)block;
- (id)eventNameForDate:(id)date;
- (id)title;
- (void)dealloc;
@end

@implementation OKMediaEventClusterPredicate

- (OKMediaEventClusterPredicate)initWithType:(unint64_t)type
{
  v14.receiver = self;
  v14.super_class = OKMediaEventClusterPredicate;
  v4 = [(OKMediaClusterPredicate *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    -[OKMediaClusterPredicate setUniqueID:](v4, "setUniqueID:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%lu", @"event", type]);
    [(OKMediaClusterPredicate *)v5 setCategory:6];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v7 = *MEMORY[0x277CBE690];
    v8 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
    -[OKMediaEventClusterPredicate setCountryName:](v5, "setCountryName:", [currentLocale displayNameForKey:v7 value:v8]);
    v9 = MEMORY[0x277D62808];
    if (*MEMORY[0x277D62808] >= 7)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Clusters/OKMediaEventClusterPredicate.m" line:62 andFormat:@"Device is set up to country %@ (%@)", -[OKMediaEventClusterPredicate countryName](v5, "countryName"), v8];
    }

    if ([(OKMediaEventClusterPredicate *)v5 countryName])
    {
      v10 = [+[OKRuntime opusKitBundle](OKRuntime "opusKitBundle")];
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v10];
      [(OKMediaEventClusterPredicate *)v5 setCalendarEventsDictionary:v11];
      if (!v11 && *v9 >= 4)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Clusters/OKMediaEventClusterPredicate.m" line:71 andFormat:@"The application has no information about %@ calendar year", -[OKMediaEventClusterPredicate countryName](v5, "countryName")];
      }
    }

    if (![(OKMediaEventClusterPredicate *)v5 calendarEventsDictionary])
    {
      v12 = [+[OKRuntime opusKitBundle](OKRuntime "opusKitBundle")];
      -[OKMediaEventClusterPredicate setCalendarEventsDictionary:](v5, "setCalendarEventsDictionary:", [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v12]);
    }
  }

  return v5;
}

- (void)dealloc
{
  countryName = self->_countryName;
  if (countryName)
  {

    self->_countryName = 0;
  }

  calendarEventsDictionary = self->_calendarEventsDictionary;
  if (calendarEventsDictionary)
  {

    self->_calendarEventsDictionary = 0;
  }

  v5.receiver = self;
  v5.super_class = OKMediaEventClusterPredicate;
  [(OKMediaClusterPredicate *)&v5 dealloc];
}

- (id)eventNameForDate:(id)date
{
  if (![(OKMediaEventClusterPredicate *)self calendarEventsDictionary])
  {
    return 0;
  }

  v5 = [objc_msgSend(MEMORY[0x277CBEA80] "currentCalendar")];
  calendarEventsDictionary = [(OKMediaEventClusterPredicate *)self calendarEventsDictionary];
  v7 = -[NSDictionary objectForKey:](calendarEventsDictionary, "objectForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v5, "year")]);
  if (!v7)
  {
    return 0;
  }

  v8 = [v7 objectForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%02ld", objc_msgSend(v5, "month"))}];
  if (!v8)
  {
    return 0;
  }

  v9 = [v8 objectForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%02ld", objc_msgSend(v5, "day"))}];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (![v9 count])
  {
    return 0;
  }

  return [v10 firstObject];
}

- (id)clusterDateStringForPeriodFrom:(id)from to:(id)to
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(OKMediaEventClusterPredicate *)self calendarEventsDictionary])
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v9 = [currentCalendar components:30 fromDate:from];
    v10 = [currentCalendar components:30 fromDate:to];
    [v9 setTimeZone:{objc_msgSend(MEMORY[0x277CBEBB0], "timeZoneWithName:", @"GMT"}];
    [v10 setTimeZone:{objc_msgSend(MEMORY[0x277CBEBB0], "timeZoneWithName:", @"GMT"}];
    v11 = [currentCalendar dateFromComponents:v9];
    v12 = [objc_msgSend(currentCalendar dateFromComponents:{v10), "dateByAddingTimeInterval:", 86400.0}];
    if (([objc_msgSend(v11 earlierDate:{v12), "isEqualToDate:", v12}] & 1) == 0)
    {
      do
      {
        v13 = [(OKMediaEventClusterPredicate *)self eventNameForDate:v11];
        if (v13)
        {
          [array addObject:v13];
        }

        v11 = [v11 dateByAddingTimeInterval:86400.0];
      }

      while (![objc_msgSend(v11 earlierDate:{v12), "isEqualToDate:", v12}]);
    }
  }

  if ([array count])
  {

    return [array firstObject];
  }

  else
  {
    currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
    v16 = [currentCalendar2 components:28 fromDate:from];
    v17 = [currentCalendar2 components:28 fromDate:to];
    shortWeekDescription = [from shortWeekDescription];
    v19 = shortWeekDescription;
    if (!shortWeekDescription)
    {
      v20 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v20 setDateFormat:@"MMMM dd"];
      v19 = [v20 stringFromDate:from];
    }

    year = [v16 year];
    if (year == [v17 year] && (v22 = objc_msgSend(v16, "month"), v22 == objc_msgSend(v17, "month")) && (v23 = objc_msgSend(v16, "day"), v23 == objc_msgSend(v17, "day")))
    {
      if (shortWeekDescription)
      {
        return v19;
      }

      v28 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v28 setDateFormat:@"yyyy"];
      v30 = MEMORY[0x277CCACA8];
      v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v32 = @"%@, %@";
    }

    else
    {
      shortWeekDescription2 = [to shortWeekDescription];
      if (shortWeekDescription2)
      {
        return [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"%@ to %@", @"%@ to %@", @"Localizable", v19, shortWeekDescription2];
      }

      month = [v16 month];
      month2 = [v17 month];
      v27 = objc_alloc_init(MEMORY[0x277CCA968]);
      v28 = v27;
      if (month == month2)
      {
        v29 = @"dd, yyyy";
      }

      else
      {
        v29 = @"MMMM dd, yyyy";
      }

      [v27 setDateFormat:v29];
      v30 = MEMORY[0x277CCACA8];
      v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v32 = @"%@ to %@";
    }

    v33 = [v30 stringWithFormat:objc_msgSend(v31, "localizedStringForKey:value:table:", v32, v32, @"Localizable", v19, objc_msgSend(v28, "stringFromDate:", to)];

    return v33;
  }
}

- (double)maximumDistanceBetweenLocations:(id)locations
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = 0.0;
  if ([locations count])
  {
    v5 = CLLocationCoordinate2DMake(NAN, NAN);
    latitude = v5.latitude;
    longitude = v5.longitude;
    v8 = CLLocationCoordinate2DMake(NAN, NAN);
    v9 = v8.latitude;
    v10 = v8.longitude;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v11 = [locations countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(locations);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          [v15 coordinate];
          if (CLLocationCoordinate2DIsValid(v43))
          {
            [v15 coordinate];
            [v15 coordinate];
            [v15 coordinate];
            latitude = v16;
            longitude = v17;
            [v15 coordinate];
            v9 = v18;
            v10 = v19;
            goto LABEL_11;
          }
        }

        v12 = [locations countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v12);
    }

LABEL_11:
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = [locations countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(locations);
          }

          v24 = *(*(&v32 + 1) + 8 * j);
          [v24 coordinate];
          if (CLLocationCoordinate2DIsValid(v44))
          {
            [v24 coordinate];
            [v24 coordinate];
            [v24 coordinate];
            longitude = fmin(longitude, v25);
            [v24 coordinate];
            latitude = fmax(latitude, v26);
            [v24 coordinate];
            v10 = fmax(v10, v27);
            [v24 coordinate];
            v9 = fmin(v9, v28);
          }
        }

        v21 = [locations countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v21);
    }

    v45.latitude = latitude;
    v45.longitude = longitude;
    if (CLLocationCoordinate2DIsValid(v45))
    {
      v46.latitude = v9;
      v46.longitude = v10;
      if (CLLocationCoordinate2DIsValid(v46))
      {
        v29 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude longitude:longitude];
        [v29 distanceFromLocation:{objc_msgSend(objc_alloc(MEMORY[0x277CE41F8]), "initWithLatitude:longitude:", v9, v10)}];
        return v30;
      }
    }
  }

  return v4;
}

- (id)clusterLocationStringForLocations:(id)locations
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  if ([locations count])
  {
    [(OKMediaEventClusterPredicate *)self maximumDistanceBetweenLocations:locations];
    v6 = v5;
    firstObject = [locations firstObject];
    v8 = MEMORY[0x277D62788];
    [MEMORY[0x277D62788] recommendedAccuracy];
    v9 = [v8 operationWithLocation:firstObject accuracy:?];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__OKMediaEventClusterPredicate_clusterLocationStringForLocations___block_invoke;
    v12[3] = &unk_279C8FB68;
    v12[5] = v6;
    v12[4] = &v13;
    [v9 setFinishBlock:v12];
    [v9 performSynchronously:0];
  }

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);
  return v10;
}

uint64_t __66__OKMediaEventClusterPredicate_clusterLocationStringForLocations___block_invoke(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(a2 "placemarks")];
  if ([v3 country] || objc_msgSend(v3, "administrativeArea") || objc_msgSend(v3, "subAdministrativeArea") || (result = objc_msgSend(v3, "locality")) != 0)
  {
    v5 = *(a1 + 40);
    if (v5 <= 20000.0)
    {
      if ([v3 locality])
      {
        v6 = [v3 locality];
        goto LABEL_15;
      }
    }

    else if (v5 > 100000.0)
    {
LABEL_12:
      if ([v3 administrativeArea])
      {
        v6 = [v3 administrativeArea];
      }

      else
      {
        v6 = [v3 country];
      }

      goto LABEL_15;
    }

    if (![v3 subAdministrativeArea])
    {
      goto LABEL_12;
    }

    v6 = [v3 subAdministrativeArea];
LABEL_15:
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v6];
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

- (id)title
{
  type = self->_type;
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (type)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = @"Smart Events";
  }

  return [v3 localizedStringForKey:v4 value:v4 table:@"Localizable"];
}

- (double)floatingAverageTimeDeltaForItem:(id)item inArray:(id)array
{
  v6 = [array indexOfObject:?];
  v7 = [objc_msgSend(objc_msgSend(item "metadata")];
  v8 = [objc_msgSend(objc_msgSend(item "metadata")];
  if (v6)
  {
    v9 = v6;
    do
    {
      if ([objc_msgSend(objc_msgSend(objc_msgSend(array objectAtIndex:{v9), "metadata"), "creationDate"), "compare:", v7}] != 1)
      {
        break;
      }

      --v9;
    }

    while (v9);
  }

  else
  {
    v9 = 0;
  }

  while (v6 < [array count] - 1 && objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(array, "objectAtIndex:", v6), "metadata"), "creationDate"), "compare:", v8) == -1)
  {
    ++v6;
  }

  v10 = 0.0;
  if (v9 < v6 - 1)
  {
    v11 = v9;
    do
    {
      [objc_msgSend(objc_msgSend(objc_msgSend(array objectAtIndex:{v11 + 1), "metadata"), "creationDate"), "timeIntervalSinceDate:", objc_msgSend(objc_msgSend(objc_msgSend(array, "objectAtIndex:", v11), "metadata"), "creationDate")}];
      v10 = v10 + fabs(v12);
      ++v11;
    }

    while (v6 - 1 != v11);
  }

  return v10 / (v6 + -1.0 - v9);
}

- (double)floatingAverageDistanceDeltaForItem:(id)item inArray:(id)array
{
  v6 = [array indexOfObject:?];
  v7 = [objc_msgSend(objc_msgSend(item "metadata")];
  v8 = [objc_msgSend(objc_msgSend(item "metadata")];
  if (v6)
  {
    v9 = v6;
    do
    {
      if ([objc_msgSend(objc_msgSend(objc_msgSend(array objectAtIndex:{v9), "metadata"), "creationDate"), "compare:", v7}] != 1)
      {
        break;
      }

      --v9;
    }

    while (v9);
  }

  else
  {
    v9 = 0;
  }

  while (v6 < [array count] - 1 && objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(array, "objectAtIndex:", v6), "metadata"), "creationDate"), "compare:", v8) == -1)
  {
    ++v6;
  }

  v10 = 0.0;
  if (v9 < v6 - 1)
  {
    v11 = v9;
    do
    {
      [objc_msgSend(objc_msgSend(objc_msgSend(array objectAtIndex:{v11 + 1), "metadata"), "location"), "distanceFromLocation:", objc_msgSend(objc_msgSend(objc_msgSend(array, "objectAtIndex:", v11), "metadata"), "location")}];
      v10 = v10 + v12;
      ++v11;
    }

    while (v6 - 1 != v11);
  }

  return v10 / (v6 + -1.0 - v9);
}

- (id)barycenterOfLocations:(id)locations
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = [locations countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v5 = result;
    v6 = 0;
    v7 = *v15;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(locations);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([objc_msgSend(v11 "metadata")])
        {
          [objc_msgSend(objc_msgSend(v11 "metadata")];
          if (CLLocationCoordinate2DIsValid(v20))
          {
            [objc_msgSend(objc_msgSend(v11 "metadata")];
            v9 = v9 + v12;
            [objc_msgSend(objc_msgSend(v11 "metadata")];
            v8 = v8 + v13;
            ++v6;
          }
        }
      }

      v5 = [locations countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
    if (v6)
    {
      return [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v9 / v6 longitude:v8 / v6];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)evaluateItems:(id)items progressBlock:(id)block
{
  v118 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"creationDate" ascending:1];
  v9 = [items sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v8)}];
  if (!self->_type)
  {
    v10 = v9;
    v82 = v7;
    selfCopy = self;
    v11 = objc_alloc_init(OKMediaCluster);
    if ([v10 count] >= 2)
    {
      v12 = 1;
      do
      {
        v13 = [v10 objectAtIndex:v12];
        v14 = v12 - 1;
        [objc_msgSend(objc_msgSend(v13 "metadata")];
        v16 = v15;
        [(OKMediaEventClusterPredicate *)self floatingAverageTimeDeltaForItem:v13 inArray:v10];
        if (v16 >= v17)
        {
          [v6 addObject:v11];

          v11 = objc_alloc_init(OKMediaCluster);
        }

        [(NSMutableArray *)[(OKMediaCluster *)v11 items] addObject:v13];
        v12 = v14 + 2;
      }

      while (v12 < [v10 count]);
    }

    v86 = v10;
    [v6 addObject:v11];

    array = [MEMORY[0x277CBEB18] array];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v19 = [v6 countByEnumeratingWithState:&v108 objects:v117 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v109;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v109 != v21)
          {
            objc_enumerationMutation(v6);
          }

          v23 = *(*(&v108 + 1) + 8 * i);
          if ([objc_msgSend(v23 "items")] == 2)
          {
            [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v23 "items")];
            if (v24 > 43200.0)
            {
              [array addObject:v23];
            }
          }
        }

        v20 = [v6 countByEnumeratingWithState:&v108 objects:v117 count:16];
      }

      while (v20);
    }

    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v25 = [array countByEnumeratingWithState:&v104 objects:v116 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v105;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v105 != v27)
          {
            objc_enumerationMutation(array);
          }

          v29 = *(*(&v104 + 1) + 8 * j);
          if (*MEMORY[0x277D62808] >= 7)
          {
            [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Clusters/OKMediaEventClusterPredicate.m" line:494 andFormat:@"Splitting... 2 element clusters"];
          }

          v30 = [v6 indexOfObject:v29];
          v31 = objc_alloc_init(OKMediaCluster);
          -[NSMutableArray addObject:](-[OKMediaCluster items](v31, "items"), "addObject:", [objc_msgSend(v29 "items")]);
          [v6 replaceObjectAtIndex:v30 withObject:v31];

          v32 = objc_alloc_init(OKMediaCluster);
          -[NSMutableArray addObject:](-[OKMediaCluster items](v32, "items"), "addObject:", [objc_msgSend(v29 "items")]);
          [v6 insertObject:v32 atIndex:v30 + 1];
        }

        v26 = [array countByEnumeratingWithState:&v104 objects:v116 count:16];
      }

      while (v26);
    }

    if ([v6 count] >= 3 && objc_msgSend(v6, "count") >= 3)
    {
      v33 = 2;
      do
      {
        v34 = -[OKMediaEventClusterPredicate barycenterOfLocations:](self, "barycenterOfLocations:", [objc_msgSend(v6 objectAtIndex:{v33), "items"}]);
        v35 = -[OKMediaEventClusterPredicate barycenterOfLocations:](self, "barycenterOfLocations:", [objc_msgSend(v6 objectAtIndex:{v33 - 1), "items"}]);
        v36 = -[OKMediaEventClusterPredicate barycenterOfLocations:](self, "barycenterOfLocations:", [objc_msgSend(v6 objectAtIndex:{v33 - 2), "items"}]);
        if (v34)
        {
          if (v35)
          {
            v37 = v36;
            if (v36)
            {
              [v34 distanceFromLocation:v35];
              v39 = v38;
              -[OKMediaEventClusterPredicate floatingAverageDistanceDeltaForItem:inArray:](self, "floatingAverageDistanceDeltaForItem:inArray:", [objc_msgSend(objc_msgSend(v6 objectAtIndex:{v33), "items"), "objectAtIndex:", 0}], v86);
              if (v39 < v40)
              {
                [v34 distanceFromLocation:v37];
                v42 = v41;
                -[OKMediaEventClusterPredicate floatingAverageDistanceDeltaForItem:inArray:](self, "floatingAverageDistanceDeltaForItem:inArray:", [objc_msgSend(objc_msgSend(v6 objectAtIndex:{v33), "items"), "objectAtIndex:", 0}], v86);
                if (v42 > v43)
                {
                  [v34 distanceFromLocation:v37];
                  v45 = v44;
                  [v35 distanceFromLocation:v37];
                  if (v45 > v46 * 0.5)
                  {
                    [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v6 objectAtIndex:{v33 - 1), "items"), "lastObject"), "metadata"), "creationDate"), "timeIntervalSinceDate:", objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v6, "objectAtIndex:", v33), "items"), "firstObject"), "metadata"), "creationDate")}];
                    v48 = v47;
                    -[OKMediaEventClusterPredicate floatingAverageTimeDeltaForItem:inArray:](self, "floatingAverageTimeDeltaForItem:inArray:", [objc_msgSend(objc_msgSend(v6 objectAtIndex:{v33), "items"), "firstObject"}], v86);
                    v50 = *MEMORY[0x277D62808];
                    if (v48 >= v49 + v49)
                    {
                      if (v50 >= 7)
                      {
                        [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Clusters/OKMediaEventClusterPredicate.m" line:532 andFormat:@"Too distant in time to merge..."];
                      }
                    }

                    else
                    {
                      if (v50 >= 7)
                      {
                        [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Clusters/OKMediaEventClusterPredicate.m" line:526 andFormat:@"Merging..."];
                      }

                      [objc_msgSend(objc_msgSend(v6 objectAtIndex:{v33 - 1), "items"), "addObjectsFromArray:", objc_msgSend(objc_msgSend(v6, "objectAtIndex:", v33), "items")}];
                      [v6 removeObjectAtIndex:v33];
                    }
                  }
                }
              }
            }
          }
        }

        ++v33;
      }

      while (v33 < [v6 count]);
    }

    array2 = [MEMORY[0x277CBEB18] array];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v52 = [v6 countByEnumeratingWithState:&v100 objects:v115 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v101;
      do
      {
        for (k = 0; k != v53; ++k)
        {
          if (*v101 != v54)
          {
            objc_enumerationMutation(v6);
          }

          v56 = *(*(&v100 + 1) + 8 * k);
          if ([objc_msgSend(v56 "items")] == 2)
          {
            [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v56 "items")];
            if (v57 > 43200.0)
            {
              [array2 addObject:v56];
            }
          }
        }

        v53 = [v6 countByEnumeratingWithState:&v100 objects:v115 count:16];
      }

      while (v53);
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v58 = [array2 countByEnumeratingWithState:&v96 objects:v114 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v97;
      do
      {
        for (m = 0; m != v59; ++m)
        {
          if (*v97 != v60)
          {
            objc_enumerationMutation(array2);
          }

          v62 = *(*(&v96 + 1) + 8 * m);
          if (*MEMORY[0x277D62808] >= 7)
          {
            [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Clusters/OKMediaEventClusterPredicate.m" line:553 andFormat:@"Splitting... 2 element clusters"];
          }

          v63 = [v6 indexOfObject:v62];
          v64 = objc_alloc_init(OKMediaCluster);
          -[NSMutableArray addObject:](-[OKMediaCluster items](v64, "items"), "addObject:", [objc_msgSend(v62 "items")]);
          [v6 replaceObjectAtIndex:v63 withObject:v64];

          v65 = objc_alloc_init(OKMediaCluster);
          -[NSMutableArray addObject:](-[OKMediaCluster items](v65, "items"), "addObject:", [objc_msgSend(v62 "items")]);
          [v6 insertObject:v65 atIndex:v63 + 1];
        }

        v59 = [array2 countByEnumeratingWithState:&v96 objects:v114 count:16];
      }

      while (v59);
    }

    array3 = [MEMORY[0x277CBEB18] array];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v87 = [v6 countByEnumeratingWithState:&v92 objects:v113 count:16];
    if (v87)
    {
      v85 = *v93;
      do
      {
        for (n = 0; n != v87; ++n)
        {
          if (*v93 != v85)
          {
            objc_enumerationMutation(v6);
          }

          v67 = *(*(&v92 + 1) + 8 * n);
          if ([objc_msgSend(v67 "items")])
          {
            v68 = -[OKMediaEventClusterPredicate clusterDateStringForPeriodFrom:to:](self, "clusterDateStringForPeriodFrom:to:", [objc_msgSend(objc_msgSend(objc_msgSend(v67 "items")], objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v67, "items"), "lastObject"), "metadata"), "creationDate"));
            v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v88 = 0u;
            v89 = 0u;
            v90 = 0u;
            v91 = 0u;
            items = [v67 items];
            v71 = [items countByEnumeratingWithState:&v88 objects:v112 count:16];
            if (v71)
            {
              v72 = v71;
              v73 = *v89;
              do
              {
                for (ii = 0; ii != v72; ++ii)
                {
                  if (*v89 != v73)
                  {
                    objc_enumerationMutation(items);
                  }

                  v75 = *(*(&v88 + 1) + 8 * ii);
                  if ([objc_msgSend(v75 "metadata")])
                  {
                    [v69 addObject:{objc_msgSend(objc_msgSend(v75, "metadata"), "location")}];
                  }
                }

                v72 = [items countByEnumeratingWithState:&v88 objects:v112 count:16];
              }

              while (v72);
            }

            self = selfCopy;
            v76 = [(OKMediaEventClusterPredicate *)selfCopy clusterLocationStringForLocations:v69];

            if (v76)
            {
              v77 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"%@ in %@", @"%@ in %@", @"Localizable", v68, v76];
              v78 = v67;
            }

            else
            {
              v78 = v67;
              v77 = v68;
            }

            [v78 setTitle:v77];
          }

          else
          {
            [array3 addObject:v67];
          }
        }

        v87 = [v6 countByEnumeratingWithState:&v92 objects:v113 count:16];
      }

      while (v87);
    }

    [v6 removeObjectsInArray:array3];
    v7 = v82;
  }

  objc_autoreleasePoolPop(v7);
  array4 = [MEMORY[0x277CBEB18] array];
  v80 = [v6 count] - 1;
  if (v80 >= 0)
  {
    do
    {
      [array4 addObject:{objc_msgSend(v6, "objectAtIndex:", v80--)}];
    }

    while (v80 != -1);
  }

  return array4;
}

@end