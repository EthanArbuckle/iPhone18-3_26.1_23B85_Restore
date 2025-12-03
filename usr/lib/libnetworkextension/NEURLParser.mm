@interface NEURLParser
+ (id)matchingStringsForURL:(const char *)l;
@end

@implementation NEURLParser

+ (id)matchingStringsForURL:(const char *)l
{
  v76 = *MEMORY[0x1E69E9840];
  if (l)
  {
    v4 = objc_alloc(MEMORY[0x1E695DFF8]);
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:l];
    v6 = [v4 initWithString:v5];

    v7 = MEMORY[0x1E695DFA8];
    pathComponents = [v6 pathComponents];
    v9 = [v7 setWithCapacity:{objc_msgSend(pathComponents, "count")}];

    host = [v6 host];

    if (host)
    {
      lCopy = l;
      host2 = [v6 host];
      if (([host2 hasPrefix:@"www."] & 1) == 0)
      {
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", @"www.", host2];

        host2 = v12;
      }

      v13 = host2;
      objc_opt_self();
      v68 = v13;
      v69 = v6;
      if (v13)
      {
        v14 = [v13 componentsSeparatedByString:@"."];
        v15 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v14, "count")}];
        if ([v14 count])
        {
          v16 = 0;
          v17 = 0;
          do
          {
            v18 = [v14 subarrayWithRange:{v17, objc_msgSend(v14, "count") + v16}];
            v19 = [v18 componentsJoinedByString:@"."];
            [v15 addObject:v19];
            if (([v19 hasSuffix:@"/"] & 1) == 0)
            {
              v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", v19, @"/"];
              [v15 addObject:v20];
            }

            ++v17;
            --v16;
          }

          while (v17 < [v14 count]);
        }

        if (v15)
        {
          v21 = [v15 copy];
        }

        else
        {
          v21 = 0;
        }

        v6 = v69;

        v13 = v68;
      }

      else
      {
        v21 = 0;
      }

      allObjects = [v21 allObjects];
      [v9 addObjectsFromArray:allObjects];

      v23 = [v13 stringByReplacingOccurrencesOfString:@"www." withString:&stru_1F403BB50];
      if (v23)
      {
        [v9 addObject:v23];
        if (([v23 hasSuffix:@"/"] & 1) == 0)
        {
          v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", v23, @"/"];
          [v9 addObject:v24];
        }

        v65 = v23;
        v66 = v21;
        v25 = v23;
        v26 = v13;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        obj = [v6 pathComponents];
        v27 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v72;
          do
          {
            v30 = 0;
            v31 = v26;
            v32 = v25;
            do
            {
              if (*v72 != v29)
              {
                objc_enumerationMutation(obj);
              }

              v33 = *(*(&v71 + 1) + 8 * v30);
              v25 = [v32 stringByAppendingPathComponent:v33];

              v26 = [v31 stringByAppendingPathComponent:v33];

              v34 = [v25 copy];
              [v9 addObject:v34];

              v35 = [v26 copy];
              [v9 addObject:v35];

              if (([v25 hasSuffix:@"/"] & 1) == 0)
              {
                v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", v25, @"/"];
                [v9 addObject:v36];
              }

              if (([v26 hasSuffix:@"/"] & 1) == 0)
              {
                v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", v26, @"/"];
                [v9 addObject:v37];
              }

              ++v30;
              v31 = v26;
              v32 = v25;
            }

            while (v28 != v30);
            v28 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
          }

          while (v28);
        }

        v6 = v69;
        query = [v69 query];

        if (query)
        {
          v39 = MEMORY[0x1E696AEC0];
          query2 = [v69 query];
          v41 = [v39 stringWithFormat:@"?%@", query2];

          v42 = [v25 stringByAppendingString:v41];

          v43 = [v26 stringByAppendingString:v41];

          v44 = [v42 copy];
          [v9 addObject:v44];

          v45 = [v43 copy];
          [v9 addObject:v45];

          if (([v42 hasSuffix:@"/"] & 1) == 0)
          {
            v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", v42, @"/"];
            [v9 addObject:v46];
          }

          v47 = lCopy;
          if (([v43 hasSuffix:@"/"] & 1) == 0)
          {
            v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", v43, @"/"];
            [v9 addObject:v48];
          }
        }

        else
        {
          v43 = v26;
          v42 = v25;
          v47 = lCopy;
        }

        fragment = [v69 fragment];

        if (fragment)
        {
          v50 = MEMORY[0x1E696AEC0];
          fragment2 = [v69 fragment];
          v52 = [v50 stringWithFormat:@"#%@", fragment2];

          v53 = [v42 stringByAppendingString:v52];

          v54 = [v43 stringByAppendingString:v52];

          v55 = [v53 copy];
          [v9 addObject:v55];

          v56 = [v54 copy];
          [v9 addObject:v56];

          if (([v53 hasSuffix:@"/"] & 1) == 0)
          {
            v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", v53, @"/"];
            [v9 addObject:v57];
          }

          v13 = v68;
          v21 = v66;
          if (([v54 hasSuffix:@"/"] & 1) == 0)
          {
            v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", v54, @"/"];
            [v9 addObject:v58];
          }
        }

        else
        {
          v54 = v43;
          v53 = v42;
          v13 = v68;
          v21 = v66;
        }

        v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v47];
        v60 = [v59 rangeOfString:@"://"];
        if (v60 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v62 = [v59 substringFromIndex:v60 + v61];
          [v9 addObject:v62];
        }

        if (v9)
        {
          host = [v9 copy];
        }

        else
        {
          host = 0;
        }

        v23 = v65;
      }

      else
      {
        host = 0;
      }
    }
  }

  else
  {
    host = 0;
  }

  v63 = *MEMORY[0x1E69E9840];

  return host;
}

@end