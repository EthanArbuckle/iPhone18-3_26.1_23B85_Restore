@interface PCContextAnnotationUtilities
+ (id)annotateEventBundle:(id)a3 visitEvents:(id)a4;
+ (id)extractActivityType:(id)a3;
+ (id)groupedEventsFromEvents:(id)a3 nestedPropertyPath:(id)a4;
+ (id)groupedEventsFromEvents:(id)a3 propertyPath:(id)a4;
+ (id)predicateWithStartDate:(id)a3 endDate:(id)a4 distanceThreshold:(double)a5;
@end

@implementation PCContextAnnotationUtilities

+ (id)groupedEventsFromEvents:(id)a3 propertyPath:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v13 valueForKey:v6];
          if (v14)
          {
            v15 = [v7 objectForKey:v14];
            if (!v15)
            {
              v15 = objc_opt_new();
            }

            [v15 addObject:v13];
            [v7 setObject:v15 forKey:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v16 = [v7 copy];
    v5 = v19;
  }

  else
  {
    v16 = MEMORY[0x1E695E0F8];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)groupedEventsFromEvents:(id)a3 nestedPropertyPath:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count] && objc_msgSend(v6, "count"))
  {
    v31 = v5;
    v7 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v30 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v37;
      do
      {
        v13 = 0;
        v14 = v11;
        do
        {
          if (*v37 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v36 + 1) + 8 * v13);
          v16 = [v8 firstObject];
          v17 = [v15 isEqual:v16];

          if (v17)
          {
            v18 = v15;
          }

          else
          {
            v18 = [v14 stringByAppendingFormat:@".%@", v15];
          }

          v11 = v18;

          ++v13;
          v14 = v11;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = v31;
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v33;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v32 + 1) + 8 * i);
          v26 = [v25 valueForKeyPath:v11];
          if (v26)
          {
            v27 = [v7 objectForKey:v26];
            if (!v27)
            {
              v27 = objc_opt_new();
            }

            [v27 addObject:v25];
            [v7 setObject:v27 forKey:v26];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v22);
    }

    v19 = [v7 copy];
    v6 = v30;
    v5 = v31;
  }

  else
  {
    v19 = MEMORY[0x1E695E0F8];
  }

  v28 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)annotateEventBundle:(id)a3 visitEvents:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          if ([v13 category] == 1)
          {
            v14 = [v13 routineEvent];
            v15 = [v14 location];
            [v5 setLocation:v15];

            v16 = [v13 routineEvent];
            v17 = [v16 placeName];

            if (v17)
            {
              v18 = [v13 routineEvent];
              v19 = [v18 placeName];
              [v5 setPlaceName:v19];

              [v5 setEnclosingArea:0];
              v20 = [v13 routineEvent];
              [v5 setPlaceType:{objc_msgSend(v20, "mapItemPlaceType")}];

              v21 = [v13 routineEvent];
              [v5 setPlaceUserType:{objc_msgSend(v21, "placeUserType")}];

              v22 = [v13 routineEvent];
              v23 = [v22 poiCategory];
              [v5 setPoiCategory:v23];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }

    v24 = [v7 copy];
  }

  else
  {
    v24 = MEMORY[0x1E695E0F0];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)predicateWithStartDate:(id)a3 endDate:(id)a4 distanceThreshold:(double)a5
{
  v7 = MEMORY[0x1E696AB80];
  v8 = a4;
  v9 = a3;
  v10 = [[v7 alloc] initWithStartDate:v9 endDate:v8];

  v11 = MEMORY[0x1E696AE18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__PCContextAnnotationUtilities_predicateWithStartDate_endDate_distanceThreshold___block_invoke;
  v15[3] = &unk_1E83B82E0;
  v16 = v10;
  v17 = a5;
  v12 = v10;
  v13 = [v11 predicateWithBlock:v15];

  return v13;
}

BOOL __81__PCContextAnnotationUtilities_predicateWithStartDate_endDate_distanceThreshold___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AB80];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 startDate];
  v7 = [v4 endDate];

  v8 = [v5 initWithStartDate:v6 endDate:v7];
  v9 = [*(a1 + 32) intersectionWithDateInterval:v8];
  [v9 duration];
  v11 = v10;
  [*(a1 + 32) duration];
  v13 = v12;
  [*(a1 + 32) duration];
  v15 = v14;
  [v8 duration];
  if (v15 > v16)
  {
    [v8 duration];
    v13 = v17;
  }

  v18 = v13 <= 0.0 || v11 / v13 >= *(a1 + 40);

  return v18;
}

+ (id)extractActivityType:(id)a3
{
  v3 = [a3 firstObject];
  v4 = v3;
  if (v3 && [v3 category] == 2)
  {
    v5 = [v4 workoutEvent];
    v6 = [v5 workoutType];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end