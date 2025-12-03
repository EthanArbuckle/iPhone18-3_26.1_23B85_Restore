@interface NSString(PGNSStringExtensions)
- (id)_pg_stringByRemovingRegExPattern:()PGNSStringExtensions;
- (id)pg_stringByRemovingDates;
- (id)pg_stringByRemovingParentheses;
- (id)pg_stringByTrailingCharactersInSet:()PGNSStringExtensions options:;
- (unint64_t)pg_levenshteinDistanceToString:()PGNSStringExtensions;
@end

@implementation NSString(PGNSStringExtensions)

- (unint64_t)pg_levenshteinDistanceToString:()PGNSStringExtensions
{
  v4 = a3;
  if ([self isEqualToString:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [self length];
    v7 = [v4 length];
    v5 = v7;
    v29 = v6;
    if (v6)
    {
      if (v7)
      {
        v8 = v7 == -1;
        v9 = malloc_type_calloc(v7 + 1, 8uLL, 0x100004000313F17uLL);
        v10 = malloc_type_calloc(v5 + 1, 8uLL, 0x100004000313F17uLL);
        if (!v8)
        {
          v11 = 0;
          v12 = vdupq_n_s64(v5);
          v13 = xmmword_22F783EE0;
          v14 = vdupq_n_s64(2uLL);
          do
          {
            v15 = vmovn_s64(vcgeq_u64(v12, v13));
            if (v15.i8[0])
            {
              v9[v11] = v11;
            }

            if (v15.i8[4])
            {
              v9[v11 + 1] = v11 + 1;
            }

            v11 += 2;
            v13 = vaddq_s64(v13, v14);
          }

          while ((v5 & 0xFFFFFFFFFFFFFFFELL) + 2 != v11);
        }

        v16 = 0;
        v17 = v29 - 1;
        do
        {
          v18 = v16 + 1;
          *v10 = v16 + 1;
          v19 = [self characterAtIndex:v16];
          v20 = 0;
          do
          {
            v21 = [v4 characterAtIndex:v20];
            v22 = &v10[v20];
            v23 = *v22 + 1;
            v24 = v20 + 1;
            v25 = v9[v20];
            v26 = v9[v20 + 1];
            if (v19 != v21)
            {
              ++v25;
            }

            if (v23 >= v26 + 1)
            {
              v23 = v26 + 1;
            }

            if (v23 >= v25)
            {
              v23 = v25;
            }

            v22[1] = v23;
            ++v20;
          }

          while (v5 != v24);
          if (v16 >= v17)
          {
            v27 = v10;
          }

          else
          {
            v27 = v9;
          }

          if (v16 < v17)
          {
            v9 = v10;
          }

          v10 = v27;
          ++v16;
        }

        while (v18 != v29);
        v5 = v27[v5];
        free(v9);
        free(v27);
      }

      else
      {
        v5 = v6;
      }
    }
  }

  return v5;
}

- (id)pg_stringByTrailingCharactersInSet:()PGNSStringExtensions options:
{
  v6 = a3;
  if (!a4 || (a4 & 4) != 0)
  {
    selfCopy = [self stringByTrimmingCharactersInSet:v6];
  }

  else
  {
    selfCopy = self;
    if (a4)
    {
      invertedSet = [v6 invertedSet];
      v9 = [selfCopy rangeOfCharacterFromSet:invertedSet];

      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = &stru_2843F5C58;
      }

      else
      {
        v10 = [selfCopy substringFromIndex:v9];
      }

      selfCopy = v10;
    }

    if ((a4 & 2) != 0)
    {
      invertedSet2 = [v6 invertedSet];
      v12 = [selfCopy rangeOfCharacterFromSet:invertedSet2 options:4];

      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = &stru_2843F5C58;
      }

      else
      {
        v13 = [selfCopy substringToIndex:v12 + 1];
      }

      selfCopy = v13;
    }
  }

  return selfCopy;
}

- (id)pg_stringByRemovingDates
{
  v21 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v2 = [objc_alloc(MEMORY[0x277CCA948]) initWithTypes:8 error:0];
  v3 = [v2 matchesInString:selfCopy options:0 range:{0, objc_msgSend(selfCopy, "length")}];
  if ([v3 count])
  {
    v4 = [selfCopy mutableCopy];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    reverseObjectEnumerator = [v3 reverseObjectEnumerator];
    v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          range = [*(*(&v16 + 1) + 8 * i) range];
          [v4 replaceCharactersInRange:range withString:{v11, &stru_2843F5C58}];
        }

        v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v13 = [v4 pg_stringByTrailingCharactersInSet:whitespaceCharacterSet options:3];

    selfCopy = v13;
  }

  v14 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (id)_pg_stringByRemovingRegExPattern:()PGNSStringExtensions
{
  v31 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v27 = 0;
  v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:a3 options:0 error:&v27];
  v6 = v27;
  if (v6)
  {
    v7 = +[PGLogging sharedLogging];
    loggingConnection = [v7 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v6;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error when creating regex pattern: %@", buf, 0xCu);
    }

    v9 = selfCopy;
  }

  else
  {
    v10 = [v5 matchesInString:selfCopy options:0 range:{0, objc_msgSend(selfCopy, "length")}];
    if ([v10 count])
    {
      v11 = [selfCopy mutableCopy];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      reverseObjectEnumerator = [v10 reverseObjectEnumerator];
      v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v24;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            range = [*(*(&v23 + 1) + 8 * i) range];
            [v11 replaceCharactersInRange:range withString:{v18, &stru_2843F5C58}];
          }

          v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v14);
      }

      whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v20 = [v11 pg_stringByTrailingCharactersInSet:whitespaceCharacterSet options:3];

      selfCopy = v20;
    }

    v9 = selfCopy;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)pg_stringByRemovingParentheses
{
  v1 = [self _pg_stringByRemovingRegExPattern:@" \\([^()]*\\)"];
  v2 = [v1 _pg_stringByRemovingRegExPattern:@" \\(.*?\\)"];

  return v2;
}

@end