@interface NSString(TSUNSStringPathExtensions)
- (BOOL)tsu_isPathCreatedByAppendingPathComponent:()TSUNSStringPathExtensions insideBasePath:;
- (id)tsu_pathToRelativeComponentPath:()TSUNSStringPathExtensions;
- (uint64_t)tsu_rangeOfString:()TSUNSStringPathExtensions options:updatingSearchRange:;
- (void)tsu_enumerateRangesOfCharactersInSet:()TSUNSStringPathExtensions usingBlock:;
@end

@implementation NSString(TSUNSStringPathExtensions)

- (uint64_t)tsu_rangeOfString:()TSUNSStringPathExtensions options:updatingSearchRange:
{
  if (a5)
  {
    v9 = *a5;
    v10 = a5[1];
    result = [a1 rangeOfString:a3 options:a4 range:{*a5, v10}];
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      *a5 = NSInvalidRange;
    }

    else if ((a4 & 4) != 0)
    {
      *a5 = v9;
      a5[1] = result - v9;
    }

    else
    {
      *a5 = result + v12;
      a5[1] = v10 + v9 - (result + v12);
    }
  }

  else
  {
    v13 = [a3 length];

    return [a1 rangeOfString:a3 options:a4 range:{0, v13}];
  }

  return result;
}

- (void)tsu_enumerateRangesOfCharactersInSet:()TSUNSStringPathExtensions usingBlock:
{
  v6 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:a1];
  [v6 setCaseSensitive:1];
  [v6 setCharactersToBeSkipped:0];
  if (([v6 isAtEnd] & 1) == 0)
  {
    do
    {
      v7 = [v6 scanLocation];
      if ([v6 scanCharactersFromSet:a3 intoString:0])
      {
        v8 = [v6 scanLocation];
        v9 = 0;
        (*(a4 + 16))(a4, v7, v8 - v7, &v9);
        if (v9)
        {
          break;
        }
      }

      if (([v6 isAtEnd] & 1) == 0)
      {
        [v6 scanUpToCharactersFromSet:a3 intoString:0];
      }
    }

    while (![v6 isAtEnd]);
  }
}

- (id)tsu_pathToRelativeComponentPath:()TSUNSStringPathExtensions
{
  if (a3)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [a3 pathComponents];
    v7 = [v6 count];
    v8 = objc_alloc_init(MEMORY[0x277CCA8B0]);
    if (v7)
    {
      v9 = 1;
      v10 = v7;
      while (1)
      {
        if ([v5 fileExistsAtPath:{objc_msgSend(a1, "stringByAppendingPathComponent:", objc_msgSend(v6, "objectAtIndex:", --v10))}])
        {
          v11 = a1;
          if (v10 < v7)
          {
            v12 = v9;
            v13 = v10;
            v11 = a1;
            do
            {
              v11 = [v11 stringByAppendingPathComponent:{objc_msgSend(v6, "objectAtIndex:", v13++)}];
              --v12;
            }

            while (v12);
          }

          if ([v5 fileExistsAtPath:v11])
          {
            break;
          }
        }

        ++v9;
        if (!v10)
        {
          goto LABEL_10;
        }
      }

      v14 = v11;
    }

    else
    {
LABEL_10:
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)tsu_isPathCreatedByAppendingPathComponent:()TSUNSStringPathExtensions insideBasePath:
{
  v7 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v8 = [a1 stringByStandardizingPath];
  v9 = [objc_msgSend(objc_msgSend(v8 stringByAppendingPathComponent:{a3), "stringByStandardizingPath"), "pathComponents"}];
  if (a1 != a4)
  {
    v8 = [a4 stringByStandardizingPath];
  }

  v10 = [v8 pathComponents];
  v11 = [v9 count];
  v12 = [v10 count];
  if (v12 <= v11)
  {
    v14 = 0;
    v15 = v12;
    if (v12)
    {
      v16 = 1;
      do
      {
        if (([objc_msgSend(v10 objectAtIndex:{v14), "isEqualToString:", objc_msgSend(v9, "objectAtIndex:", v14)}] & 1) == 0)
        {
          break;
        }

        v14 = v16;
      }

      while (v15 > v16++);
    }

    v13 = v15 == v14;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end