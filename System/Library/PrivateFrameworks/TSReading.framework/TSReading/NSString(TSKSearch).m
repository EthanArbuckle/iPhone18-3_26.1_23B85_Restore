@interface NSString(TSKSearch)
+ (uint64_t)regexStringForSearchString:()TSKSearch options:;
- (id)stringByCapitalizingToMatchString:()TSKSearch range:searchOptions:;
- (id)stringByReplacingOccurrencesOfString:()TSKSearch withString:searchOptions:range:replacementCount:;
- (uint64_t)rangeOfString:()TSKSearch searchOptions:updatingSearchRange:;
@end

@implementation NSString(TSKSearch)

+ (uint64_t)regexStringForSearchString:()TSKSearch options:
{
  v6 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"*?+[(){}^$|\\./"];
  v7 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"“”"];
  v8 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"'‘’"];
  v9 = [MEMORY[0x277CCAB68] string];
  if ([a3 length])
  {
    for (i = 0; i < [a3 length]; ++i)
    {
      v11 = [a3 characterAtIndex:i];
      if ([v6 characterIsMember:v11])
      {
        [v9 appendFormat:@"\\%C", v11];
      }

      else
      {
        if ((a4 & 0x10) != 0)
        {
          if ([v7 characterIsMember:v11])
          {
            v12 = v9;
            v13 = @"[“”]";
LABEL_11:
            [v12 appendFormat:v13, v25];
            continue;
          }

          if ([v8 characterIsMember:v11])
          {
            v12 = v9;
            v13 = @"['‘’]";
            goto LABEL_11;
          }
        }

        [v9 appendFormat:@"%C", v11];
      }
    }
  }

  if ((a4 & 8) == 0)
  {
    return v9;
  }

  v14 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\b" options:0 error:0];
  if (!v14)
  {
    return v9;
  }

  v15 = v14;
  v16 = [a3 tsu_range];
  v18 = [v15 matchesInString:a3 options:0 range:{v16, v17}];
  if ([v18 count])
  {
    v19 = [objc_msgSend(v18 objectAtIndex:{0), "range"}];
    if (!(v19 | v20))
    {
      v9 = [MEMORY[0x277CCAB68] stringWithFormat:@"\\b%@", v9];
    }
  }

  if ([v18 count] && (v21 = objc_msgSend(objc_msgSend(v18, "lastObject"), "range"), v23 = v22, v21 == objc_msgSend(a3, "length")) && !v23)
  {
    return [MEMORY[0x277CCAB68] stringWithFormat:@"%@\\b", v9];
  }

  else
  {
    return v9;
  }
}

- (uint64_t)rangeOfString:()TSKSearch searchOptions:updatingSearchRange:
{
  v6 = a1;
  v7 = a4 & 1;
  if ((a4 & 4) != 0)
  {
    v8 = v7 | 4;
  }

  else
  {
    a3 = [objc_opt_class() regexStringForSearchString:a3 options:a4];
    v8 = v7 | 0x400;
    a1 = v6;
  }

  return [a1 tsu_rangeOfString:a3 options:v8 updatingSearchRange:a5];
}

- (id)stringByCapitalizingToMatchString:()TSKSearch range:searchOptions:
{
  v11 = a1;
  v12 = [a1 length];
  if ((a6 & 1) != 0 && v12 >= 2 && a5 >= 2)
  {
    v13 = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
    v14 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    v15 = [a1 characterAtIndex:0];
    v16 = [a3 characterAtIndex:a4];
    if ([v13 characterIsMember:v15])
    {
      if ([v14 characterIsMember:v16])
      {
        v17 = [objc_msgSend(a1 substringWithRange:{0, 1), "capitalizedString"}];
        if ([v17 length])
        {
          v11 = [a1 mutableCopy];
          [v11 replaceCharactersInRange:0 withString:{1, v17}];
        }
      }
    }
  }

  return v11;
}

- (id)stringByReplacingOccurrencesOfString:()TSKSearch withString:searchOptions:range:replacementCount:
{
  v13 = a1;
  v14 = v13;
  v24 = a6;
  v25 = a7;
  v15 = 0;
  if (a7)
  {
    a7 = 0;
    v16 = v13;
    do
    {
      v17 = [v16 rangeOfString:a3 searchOptions:a5 updatingSearchRange:&v24];
      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = v17;
        v20 = v18;
        if (!a7)
        {
          a7 = [v16 mutableCopy];
          v16 = a7;
        }

        [a7 replaceCharactersInRange:v19 withString:{v20, objc_msgSend(a4, "stringByCapitalizingToMatchString:range:searchOptions:", v16, v19, v20, a5)}];
        ++v15;
        v21 = [a4 length];
        v24 += v21 - v20;
      }
    }

    while (v25);
  }

  if (a8)
  {
    *a8 = v15;
  }

  if (a7)
  {
    return a7;
  }

  else
  {
    return v14;
  }
}

@end