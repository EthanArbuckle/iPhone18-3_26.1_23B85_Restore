@interface _PSMessagesPinningUtilities
+ (id)actionTypeToString:(int64_t)a3;
+ (id)chatGuidsFromSuggestions:(id)a3;
+ (id)dateToString:(id)a3;
+ (id)interactionMethodToString:(int64_t)a3;
+ (id)intersectionsOfActualPinnings:(id)a3 fromTopN:(unint64_t)a4 suggestions:(id)a5;
+ (id)startOfDayForDate:(id)a3;
+ (id)suggestionsToString:(id)a3;
@end

@implementation _PSMessagesPinningUtilities

+ (id)actionTypeToString:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7C258A8[a3];
  }
}

+ (id)interactionMethodToString:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7C258D0[a3];
  }
}

+ (id)startOfDayForDate:(id)a3
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 startOfDayForDate:v4];

  return v6;
}

+ (id)chatGuidsFromSuggestions:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) chatGuid];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)suggestionsToString:(id)a3
{
  v3 = [a1 chatGuidsFromSuggestions:a3];
  v4 = [v3 componentsJoinedByString:@" "];

  return v4;
}

+ (id)dateToString:(id)a3
{
  v3 = MEMORY[0x1E696AB78];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"EE, d LLLL yyyy HH:mm"];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

+ (id)intersectionsOfActualPinnings:(id)a3 fromTopN:(unint64_t)a4 suggestions:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = [v8 count];
  if (v9 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 subarrayWithRange:{0, v10}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v15 += [v11 containsObject:{*(*(&v21 + 1) + 8 * i), v21}];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

@end