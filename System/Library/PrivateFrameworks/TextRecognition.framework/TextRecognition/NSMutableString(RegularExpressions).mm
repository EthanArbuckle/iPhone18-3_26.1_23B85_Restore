@interface NSMutableString(RegularExpressions)
- (id)applyRegex:()RegularExpressions withReplacementTemplate:;
@end

@implementation NSMutableString(RegularExpressions)

- (id)applyRegex:()RegularExpressions withReplacementTemplate:
{
  v45 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v31 = a4;
  v27 = a1;
  v6 = [MEMORY[0x1E696AD60] stringWithString:a1];
  v39 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "length")}];
  if ([v6 length])
  {
    v7 = 0;
    do
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:v7];
      [v39 addObject:v8];

      ++v7;
    }

    while ([v6 length] > v7);
  }

  [v29 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v32 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v32)
  {
    v9 = 0;
    v30 = *v41;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        v12 = v31[2](v31, v11);
        if (v12)
        {
          v34 = i;
          v13 = [v11 range];
          v15 = v14;
          v38 = v11;
          v33 = v12;
          v16 = [v29 replacementStringForResult:v11 inString:v6 offset:v9 template:v12];
          v35 = v9;
          v17 = v13 + v9;
          if (v15 != [v16 length] && objc_msgSend(v16, "length") | v15)
          {
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v36 = v15;
            while (1)
            {
              if ([v16 length] > v19 && v18 + v17 < objc_msgSend(v6, "length"))
              {
                v37 = v20;
                v23 = [v16 characterAtIndex:v19];
                v24 = v23 == [v6 characterAtIndex:v18 + v17];
                v15 = v36;
                v20 = v37;
                if (v24)
                {
                  goto LABEL_20;
                }
              }

              if ([v16 length] - v19 <= v15 - v18)
              {
                break;
              }

              v25 = [v39 objectAtIndexedSubscript:{objc_msgSend(v38, "range") + v18}];
              [v39 insertObject:v25 atIndex:v18 + v17 + v20];

LABEL_21:
              ++v21;
LABEL_22:
              v19 = v21;
              v18 = v22;
              if ([v16 length] <= v21 && v15 <= v22)
              {
                goto LABEL_24;
              }
            }

            if ([v16 length] - v19 < v15 - v18)
            {
              [v39 removeObjectAtIndex:v18 + v17 + v20--];
              ++v22;
              goto LABEL_22;
            }

LABEL_20:
            ++v22;
            goto LABEL_21;
          }

LABEL_24:
          [v6 replaceCharactersInRange:v17 withString:{v15, v16}];
          v9 = v35 - v15 + [v16 length];

          v12 = v33;
          i = v34;
        }
      }

      v32 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v32);
  }

  [v27 replaceCharactersInRange:0 withString:{objc_msgSend(v27, "length"), v6}];

  return v39;
}

@end