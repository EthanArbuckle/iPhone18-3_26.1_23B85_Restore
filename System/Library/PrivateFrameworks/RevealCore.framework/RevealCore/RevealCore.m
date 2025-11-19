id convertResultToObjCInArrayIfNecessary(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = [v1 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v4 = [v1 copy];
    }

    else
    {
      v4 = [MEMORY[0x277D04218] resultsFromCoreResults:v1];
    }
  }

  else
  {
    v4 = v1;
  }

  v5 = v4;

  return v5;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x28211F860](aString);
  result.length = v2;
  result.location = v1;
  return result;
}