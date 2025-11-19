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
  if ([a1 isEqualToString:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [a1 length];
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
          v19 = [a1 characterAtIndex:v16];
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
    v7 = [a1 stringByTrimmingCharactersInSet:v6];
  }

  else
  {
    v7 = a1;
    if (a4)
    {
      v8 = [v6 invertedSet];
      v9 = [v7 rangeOfCharacterFromSet:v8];

      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = &stru_2843F5C58;
      }

      else
      {
        v10 = [v7 substringFromIndex:v9];
      }

      v7 = v10;
    }

    if ((a4 & 2) != 0)
    {
      v11 = [v6 invertedSet];
      v12 = [v7 rangeOfCharacterFromSet:v11 options:4];

      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = &stru_2843F5C58;
      }

      else
      {
        v13 = [v7 substringToIndex:v12 + 1];
      }

      v7 = v13;
    }
  }

  return v7;
}

- (id)pg_stringByRemovingDates
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CCA948]) initWithTypes:8 error:0];
  v3 = [v2 matchesInString:v1 options:0 range:{0, objc_msgSend(v1, "length")}];
  if ([v3 count])
  {
    v4 = [v1 mutableCopy];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [v3 reverseObjectEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v16 + 1) + 8 * i) range];
          [v4 replaceCharactersInRange:v10 withString:{v11, &stru_2843F5C58}];
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v12 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v13 = [v4 pg_stringByTrailingCharactersInSet:v12 options:3];

    v1 = v13;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v1;
}

- (id)_pg_stringByRemovingRegExPattern:()PGNSStringExtensions
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v27 = 0;
  v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:a3 options:0 error:&v27];
  v6 = v27;
  if (v6)
  {
    v7 = +[PGLogging sharedLogging];
    v8 = [v7 loggingConnection];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v6;
      _os_log_error_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_ERROR, "Error when creating regex pattern: %@", buf, 0xCu);
    }

    v9 = v4;
  }

  else
  {
    v10 = [v5 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
    if ([v10 count])
    {
      v11 = [v4 mutableCopy];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v12 = [v10 reverseObjectEnumerator];
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v23 + 1) + 8 * i) range];
            [v11 replaceCharactersInRange:v17 withString:{v18, &stru_2843F5C58}];
          }

          v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v14);
      }

      v19 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v20 = [v11 pg_stringByTrailingCharactersInSet:v19 options:3];

      v4 = v20;
    }

    v9 = v4;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)pg_stringByRemovingParentheses
{
  v1 = [a1 _pg_stringByRemovingRegExPattern:@" \\([^()]*\\)"];
  v2 = [v1 _pg_stringByRemovingRegExPattern:@" \\(.*?\\)"];

  return v2;
}

@end