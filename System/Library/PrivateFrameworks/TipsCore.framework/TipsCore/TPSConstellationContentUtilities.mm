@interface TPSConstellationContentUtilities
+ (BOOL)contentContainsInlineIcon:(id)a3;
+ (BOOL)contentContainsLink:(id)a3;
+ (id)altTextRepresentationForContent:(id)a3;
+ (id)contentClasses;
+ (id)hrefForLinkMark:(id)a3;
+ (id)textContentWithText:(id)a3;
+ (id)textRepresentationForContent:(id)a3;
+ (int64_t)contentTypeForContentDictionary:(id)a3;
+ (int64_t)markTypeForMarkDictionary:(id)a3;
@end

@implementation TPSConstellationContentUtilities

+ (BOOL)contentContainsLink:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__TPSConstellationContentUtilities_contentContainsLink___block_invoke;
    v8[3] = &unk_1E8101B70;
    v8[4] = &v9;
    v8[5] = a1;
    [v4 enumerateObjectsUsingBlock:v8];
    v6 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void __56__TPSConstellationContentUtilities_contentContainsLink___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (![*(a1 + 40) contentTypeForContentDictionary:v6])
  {
    v7 = [v6 TPSSafeArrayForKey:@"marks"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__TPSConstellationContentUtilities_contentContainsLink___block_invoke_2;
    v10[3] = &unk_1E8101B70;
    v11 = *(a1 + 32);
    [v7 enumerateObjectsUsingBlock:v10];
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *a4 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [v6 TPSSafeArrayForKey:@"content"];
    *(*(*(a1 + 32) + 8) + 24) = [v8 contentContainsLink:v9];
  }
}

uint64_t __56__TPSConstellationContentUtilities_contentContainsLink___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 40) markTypeForMarkDictionary:a2];
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

+ (BOOL)contentContainsInlineIcon:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      v9 = @"content";
      v21 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = v9;
          v12 = [*(*(&v26 + 1) + 8 * i) TPSSafeArrayForKey:v9];
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v23;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v23 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                if ([a1 contentTypeForContentDictionary:*(*(&v22 + 1) + 8 * j)] == 3)
                {

                  v18 = 1;
                  goto LABEL_21;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          v9 = v11;
          v8 = v21;
        }

        v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
        v18 = 0;
      }

      while (v7);
    }

    else
    {
      v18 = 0;
    }

LABEL_21:
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (id)textRepresentationForContent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count] == 1)
  {
    v6 = [v5 firstObject];
    v7 = [v6 TPSSafeArrayForKey:@"content"];
    if ([v7 count] == 1)
    {
      v8 = [v7 firstObject];
      if ([a1 contentTypeForContentDictionary:v8])
      {
        v9 = 0;
      }

      else
      {
        v9 = [v8 TPSSafeStringForKey:@"text"];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)altTextRepresentationForContent:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v25 = v4;
    obj = v4;
    v27 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (!v27)
    {
      goto LABEL_29;
    }

    v26 = *v35;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v6;
        v7 = *(*(&v34 + 1) + 8 * v6);
        v8 = [obj firstObject];

        if (v7 != v8 && [a1 contentTypeForContentDictionary:v7] == 1)
        {
          [v5 appendString:@" "];
        }

        v9 = [v7 TPSSafeArrayForKey:@"content"];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v39 = v7;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
        }

        v12 = v11;

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v31;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v30 + 1) + 8 * i);
              v19 = [a1 contentTypeForContentDictionary:v18];
              if ((v19 - 2) >= 2)
              {
                if (v19)
                {
                  continue;
                }

                v20 = [a1 textForContentNode:v18];
                [v5 appendString:v20];
              }

              else
              {
                v20 = [v18 TPSSafeDictionaryForKey:@"attrs"];
                v21 = [v20 TPSSafeStringForKey:@"alt"];
                if ([v21 length])
                {
                  [v5 appendString:v21];
                }
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v15);
        }

        v6 = v29 + 1;
      }

      while (v29 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (!v27)
      {
LABEL_29:

        if (v5)
        {
          v22 = [v5 copy];
        }

        else
        {
          v22 = 0;
        }

        v4 = v25;
        goto LABEL_34;
      }
    }
  }

  v22 = 0;
LABEL_34:

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (int64_t)contentTypeForContentDictionary:(id)a3
{
  v3 = [a3 TPSSafeStringForKey:@"type"];
  if ([v3 isEqualToString:@"text"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"p"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"symbol"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"inlineIcon"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"personalizedText"])
  {
    v4 = 4;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

+ (int64_t)markTypeForMarkDictionary:(id)a3
{
  v3 = [a3 TPSSafeStringForKey:@"type"];
  if ([v3 isEqualToString:@"a"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"strong"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"em"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"accentColor"])
  {
    v4 = 3;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

+ (id)textContentWithText:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v10 = @"type";
  v11 = @"text";
  v3 = &stru_1F3F2F4B8;
  if (a3)
  {
    v3 = a3;
  }

  v12 = @"text";
  v13 = v3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:&v12 forKeys:&v10 count:2];
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:{1, v10, v11, v12, v13}];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)hrefForLinkMark:(id)a3
{
  v3 = [a3 TPSSafeDictionaryForKey:@"attrs"];
  v4 = [v3 TPSSafeStringForKey:@"href"];

  return v4;
}

+ (id)contentClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, objc_opt_class(), 0}];
}

@end