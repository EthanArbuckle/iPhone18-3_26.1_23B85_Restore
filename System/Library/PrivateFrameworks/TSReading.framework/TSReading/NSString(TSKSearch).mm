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
  string = [MEMORY[0x277CCAB68] string];
  if ([a3 length])
  {
    for (i = 0; i < [a3 length]; ++i)
    {
      v11 = [a3 characterAtIndex:i];
      if ([v6 characterIsMember:v11])
      {
        [string appendFormat:@"\\%C", v11];
      }

      else
      {
        if ((a4 & 0x10) != 0)
        {
          if ([v7 characterIsMember:v11])
          {
            v12 = string;
            v13 = @"[“”]";
LABEL_11:
            [v12 appendFormat:v13, v25];
            continue;
          }

          if ([v8 characterIsMember:v11])
          {
            v12 = string;
            v13 = @"['‘’]";
            goto LABEL_11;
          }
        }

        [string appendFormat:@"%C", v11];
      }
    }
  }

  if ((a4 & 8) == 0)
  {
    return string;
  }

  v14 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\b" options:0 error:0];
  if (!v14)
  {
    return string;
  }

  v15 = v14;
  tsu_range = [a3 tsu_range];
  v18 = [v15 matchesInString:a3 options:0 range:{tsu_range, v17}];
  if ([v18 count])
  {
    v19 = [objc_msgSend(v18 objectAtIndex:{0), "range"}];
    if (!(v19 | v20))
    {
      string = [MEMORY[0x277CCAB68] stringWithFormat:@"\\b%@", string];
    }
  }

  if ([v18 count] && (v21 = objc_msgSend(objc_msgSend(v18, "lastObject"), "range"), v23 = v22, v21 == objc_msgSend(a3, "length")) && !v23)
  {
    return [MEMORY[0x277CCAB68] stringWithFormat:@"%@\\b", string];
  }

  else
  {
    return string;
  }
}

- (uint64_t)rangeOfString:()TSKSearch searchOptions:updatingSearchRange:
{
  selfCopy = self;
  v7 = a4 & 1;
  if ((a4 & 4) != 0)
  {
    v8 = v7 | 4;
  }

  else
  {
    a3 = [objc_opt_class() regexStringForSearchString:a3 options:a4];
    v8 = v7 | 0x400;
    self = selfCopy;
  }

  return [self tsu_rangeOfString:a3 options:v8 updatingSearchRange:a5];
}

- (id)stringByCapitalizingToMatchString:()TSKSearch range:searchOptions:
{
  selfCopy = self;
  v12 = [self length];
  if ((a6 & 1) != 0 && v12 >= 2 && a5 >= 2)
  {
    lowercaseLetterCharacterSet = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
    uppercaseLetterCharacterSet = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    v15 = [self characterAtIndex:0];
    v16 = [a3 characterAtIndex:a4];
    if ([lowercaseLetterCharacterSet characterIsMember:v15])
    {
      if ([uppercaseLetterCharacterSet characterIsMember:v16])
      {
        v17 = [objc_msgSend(self substringWithRange:{0, 1), "capitalizedString"}];
        if ([v17 length])
        {
          selfCopy = [self mutableCopy];
          [selfCopy replaceCharactersInRange:0 withString:{1, v17}];
        }
      }
    }
  }

  return selfCopy;
}

- (id)stringByReplacingOccurrencesOfString:()TSKSearch withString:searchOptions:range:replacementCount:
{
  selfCopy = self;
  v14 = selfCopy;
  v24 = a6;
  v25 = a7;
  v15 = 0;
  if (a7)
  {
    a7 = 0;
    v16 = selfCopy;
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