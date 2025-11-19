@interface RTMapItem(RTExtensions)
+ (id)heaviestMapItemFrom:()RTExtensions closestToLocation:distanceCalculator:error:;
- (id)appendSource:()RTExtensions;
- (id)mergeWithMapItem:()RTExtensions preservingProperties:;
- (id)removeSource:()RTExtensions;
@end

@implementation RTMapItem(RTExtensions)

- (id)appendSource:()RTExtensions
{
  if ((a3 & ~[a1 source]) != 0)
  {
    [a1 setSource:{(objc_msgSend(a1, "source") | a3) & 0xFFFFFFFFFFFFFFFELL}];
  }

  return a1;
}

- (id)removeSource:()RTExtensions
{
  if (([a1 source] & a3) != 0)
  {
    [a1 setSource:{objc_msgSend(a1, "source") & ~a3}];
  }

  return a1;
}

- (id)mergeWithMapItem:()RTExtensions preservingProperties:
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = [a1 copy];
    outCount = 0;
    v9 = objc_opt_class();
    v10 = class_copyPropertyList(v9, &outCount);
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        Name = property_getName(v10[i]);
        if (Name)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:Name];
          if (([&unk_2845A12C8 containsObject:v13] & 1) == 0 && (objc_msgSend(v7, "containsObject:", v13) & 1) == 0)
          {
            v14 = [v6 valueForKey:v13];
            [v8 setValue:v14 forKey:v13];
          }
        }
      }
    }

    free(v10);
  }

  else
  {
    v8 = [v6 copy];
  }

  return v8;
}

+ (id)heaviestMapItemFrom:()RTExtensions closestToLocation:distanceCalculator:error:
{
  v56 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 count] > 1)
  {
    v13 = [v9 valueForKeyPath:@"@max.self"];
    [v13 weight];
    v15 = v14;

    v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"weight = %lf", v15];
    v17 = [v9 filteredArrayUsingPredicate:v16];

    v18 = [v17 count];
    if (v10 && v18 > 1)
    {
      v42 = a6;
      v43 = v17;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v19 = v17;
      v20 = [v19 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v51;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v51 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v50 + 1) + 8 * i);
            v25 = [v24 geoMapItemHandle];
            if (v25)
            {
              v26 = v25;
              v27 = [v24 mapItemPlaceType];

              if (v27 == 1)
              {
                v12 = v24;

                v17 = v43;
                goto LABEL_33;
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v50 objects:v55 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = v19;
      v28 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = 0;
        v31 = *v47;
        v32 = INFINITY;
        while (2)
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v47 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v46 + 1) + 8 * j);
            v35 = [v34 location];
            v45 = 0;
            [v11 distanceFromLocation:v10 toLocation:v35 error:&v45];
            v37 = v36;
            v38 = v45;

            if (v38)
            {
              if (v42)
              {
                v40 = v38;
                *v42 = v38;
              }

              v12 = 0;
              goto LABEL_32;
            }

            if (v37 < v32)
            {
              v39 = v34;

              v32 = v37;
              v30 = v39;
            }
          }

          v29 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
          if (v29)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v30 = 0;
      }

      v30 = v30;
      v12 = v30;
LABEL_32:
      v17 = v43;
    }

    else
    {
      v12 = [v17 firstObject];
    }

LABEL_33:
  }

  else
  {
    v12 = [v9 firstObject];
  }

  return v12;
}

@end