@interface _PSMessagesPinningUtilities
+ (id)actionTypeToString:(int64_t)string;
+ (id)chatGuidsFromSuggestions:(id)suggestions;
+ (id)dateToString:(id)string;
+ (id)interactionMethodToString:(int64_t)string;
+ (id)intersectionsOfActualPinnings:(id)pinnings fromTopN:(unint64_t)n suggestions:(id)suggestions;
+ (id)startOfDayForDate:(id)date;
+ (id)suggestionsToString:(id)string;
@end

@implementation _PSMessagesPinningUtilities

+ (id)actionTypeToString:(int64_t)string
{
  if (string > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7C258A8[string];
  }
}

+ (id)interactionMethodToString:(int64_t)string
{
  if (string > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7C258D0[string];
  }
}

+ (id)startOfDayForDate:(id)date
{
  v3 = MEMORY[0x1E695DEE8];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar startOfDayForDate:dateCopy];

  return v6;
}

+ (id)chatGuidsFromSuggestions:(id)suggestions
{
  v19 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(suggestionsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = suggestionsCopy;
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

        chatGuid = [*(*(&v14 + 1) + 8 * i) chatGuid];
        [v4 addObject:chatGuid];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)suggestionsToString:(id)string
{
  v3 = [self chatGuidsFromSuggestions:string];
  v4 = [v3 componentsJoinedByString:@" "];

  return v4;
}

+ (id)dateToString:(id)string
{
  v3 = MEMORY[0x1E696AB78];
  stringCopy = string;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"EE, d LLLL yyyy HH:mm"];
  v6 = [v5 stringFromDate:stringCopy];

  return v6;
}

+ (id)intersectionsOfActualPinnings:(id)pinnings fromTopN:(unint64_t)n suggestions:(id)suggestions
{
  v26 = *MEMORY[0x1E69E9840];
  pinningsCopy = pinnings;
  suggestionsCopy = suggestions;
  v9 = [suggestionsCopy count];
  if (v9 >= n)
  {
    nCopy = n;
  }

  else
  {
    nCopy = v9;
  }

  v11 = [suggestionsCopy subarrayWithRange:{0, nCopy}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = pinningsCopy;
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