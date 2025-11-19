@interface SSQueryUnderstandingUtilities
+ (id)queryUnderstandingParseWithQueryUnderstanding:(id)a3;
+ (int)spotlightQueryIntent:(id)a3;
@end

@implementation SSQueryUnderstandingUtilities

+ (id)queryUnderstandingParseWithQueryUnderstanding:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69CA330]);
  v5 = [v3 objectForKeyedSubscript:@"kQPQUIntentIds"];
  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 intValue];

    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_7;
      }

      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    [v4 setQueryIntentType:v8];
  }

LABEL_7:
  v9 = [v3 objectForKeyedSubscript:@"kQPQUOutputTokenInfo"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v19 + 1) + 8 * i) objectForKeyedSubscript:@"kQPQUOutputTokenArgIds"];
        if ([v14 count])
        {
          v15 = [v14 objectAtIndexedSubscript:0];
          v16 = [v15 intValue];
          if (v16 <= 7)
          {
            if (v16 > 2)
            {
              switch(v16)
              {
                case 3:
                  [v4 setHasPersonSenderTokens:1];
                  break;
                case 5:
                  [v4 setHasNounTokens:1];
                  break;
                case 7:
                  [v4 setHasVisualQualityTokens:1];
                  break;
              }
            }

            else if (v16)
            {
              if (v16 == 1)
              {
                [v4 setHasMediaTypeTokens:1];
              }

              else if (v16 == 2)
              {
                [v4 setHasPersonTokens:1];
              }
            }

            else
            {
              [v4 setHasUnspecifiedTokens:1];
            }
          }

          else if (v16 <= 10)
          {
            if (v16 == 8)
            {
              [v4 setHasTimeTokens:1];
            }

            else if (v16 == 9)
            {
              [v4 setHasEventTokens:1];
            }

            else
            {
              [v4 setHasLocationTokens:1];
            }
          }

          else if (v16 > 20)
          {
            if (v16 == 21)
            {
              [v4 setHasFavoritedTokens:1];
            }

            else if (v16 == 50)
            {
              [v4 setHasSortCriteriaTokens:1];
            }
          }

          else if (v16 == 11)
          {
            [v4 setHasGenericLocationTokens:1];
          }

          else if (v16 == 12)
          {
            [v4 setHasSourceAppTokens:1];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (int)spotlightQueryIntent:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = +[SSQueryIntent intentStrength:](SSQueryIntent, "intentStrength:", [v3 intentType]);
    if (v5 >= 5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end