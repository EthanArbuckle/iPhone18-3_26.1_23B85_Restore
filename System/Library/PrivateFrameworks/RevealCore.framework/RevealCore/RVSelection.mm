@interface RVSelection
+ (_NSRange)revealRangeAtIndex:(unint64_t)index selectedRanges:(id)ranges shouldUpdateSelection:(BOOL *)selection;
+ (_NSRange)searchRangeForString:(id)string aroundLocation:(unint64_t)location;
@end

@implementation RVSelection

+ (_NSRange)searchRangeForString:(id)string aroundLocation:(unint64_t)location
{
  stringCopy = string;
  v6 = [stringCopy length];
  locationCopy = v6 - 1;
  if (v6 > location)
  {
    locationCopy = location;
  }

  if (!location)
  {
    locationCopy = 0;
  }

  if (locationCopy >= 0x12D)
  {
    v8 = locationCopy - 300;
  }

  else
  {
    v8 = 0;
  }

  v9 = locationCopy + 200;
  if (locationCopy + 200 >= v6)
  {
    v9 = v6;
  }

  if (locationCopy >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10 - v8;
  if (v10 != v8)
  {
    while (([stringCopy characterAtIndex:v8] & 0xFC00) == 0xDC00)
    {
      ++v8;
      if (!--v11)
      {
        goto LABEL_22;
      }
    }

    v12 = v10 - 1;
    while (([stringCopy characterAtIndex:v12] & 0xFC00) == 0xD800)
    {
      --v12;
      if (!--v11)
      {
        goto LABEL_22;
      }
    }

    location = v8;
  }

LABEL_22:

  locationCopy2 = location;
  v14 = v11;
  result.length = v14;
  result.location = locationCopy2;
  return result;
}

+ (_NSRange)revealRangeAtIndex:(unint64_t)index selectedRanges:(id)ranges shouldUpdateSelection:(BOOL *)selection
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  rangesCopy = ranges;
  v8 = [rangesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(rangesCopy);
        }

        rangeValue = [*(*(&v19 + 1) + 8 * i) rangeValue];
        if (index >= rangeValue && index - rangeValue < v12)
        {
          indexCopy2 = rangeValue;
          v15 = v12;
          LODWORD(v8) = 1;
          goto LABEL_14;
        }
      }

      v8 = [rangesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = 0;
  indexCopy2 = index;
LABEL_14:

  if (selection)
  {
    *selection = v8 ^ 1;
  }

  if (!v8 || [rangesCopy count] > 1 || v15 >= 0x1F4)
  {
    v15 = 0;
    indexCopy2 = index;
  }

  v16 = *MEMORY[0x277D85DE8];
  v17 = indexCopy2;
  v18 = v15;
  result.length = v18;
  result.location = v17;
  return result;
}

@end