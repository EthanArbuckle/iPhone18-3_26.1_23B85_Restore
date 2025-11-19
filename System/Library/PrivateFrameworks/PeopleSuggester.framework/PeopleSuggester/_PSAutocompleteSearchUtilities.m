@interface _PSAutocompleteSearchUtilities
+ (BOOL)searchString:(id)a3 containsOnlyCharactersInSet:(id)a4;
+ (_NSRange)rangeForSearchTerm:(id)a3 inTarget:(id)a4 tokenizedByCharacterSet:(id)a5;
+ (id)emojiCharacterSet;
@end

@implementation _PSAutocompleteSearchUtilities

+ (_NSRange)rangeForSearchTerm:(id)a3 inTarget:(id)a4 tokenizedByCharacterSet:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v7 = a4;
  [v7 componentsSeparatedByCharactersInSet:a5];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v35 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v9)
  {
    v11 = v9;
    v29 = v8;
    v30 = 0;
    v12 = *v33;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v16 = [v14 stringByTrimmingCharactersInSet:v15];

        v17 = [v7 rangeOfString:v16];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = v17;
          if (v17 + v18 <= [v7 length])
          {
            v20 = [v7 substringWithRange:{v19, objc_msgSend(v7, "length") - v19}];
            v21 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
            v22 = [v20 stringByTrimmingCharactersInSet:v21];
            v23 = [v22 rangeOfString:v31 options:393];
            v30 = v24;

            if (v23 != 0x7FFFFFFFFFFFFFFFLL)
            {

              v10 = v23;
              v8 = v29;
              goto LABEL_14;
            }

            v8 = v29;
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:
    v25 = v30;
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  v27 = v10;
  v28 = v25;
  result.length = v28;
  result.location = v27;
  return result;
}

+ (id)emojiCharacterSet
{
  v2 = CEMCreateEmojiCharacterSet();

  return v2;
}

+ (BOOL)searchString:(id)a3 containsOnlyCharactersInSet:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = 0;
    do
    {
      v8 = [v6 characterIsMember:{objc_msgSend(v5, "characterAtIndex:", v7)}];
      if ((v8 & 1) == 0)
      {
        break;
      }

      ++v7;
    }

    while ([v5 length] > v7);
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end