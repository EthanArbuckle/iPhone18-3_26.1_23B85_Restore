@interface _PSAutocompleteSearchUtilities
+ (BOOL)searchString:(id)string containsOnlyCharactersInSet:(id)set;
+ (_NSRange)rangeForSearchTerm:(id)term inTarget:(id)target tokenizedByCharacterSet:(id)set;
+ (id)emojiCharacterSet;
@end

@implementation _PSAutocompleteSearchUtilities

+ (_NSRange)rangeForSearchTerm:(id)term inTarget:(id)target tokenizedByCharacterSet:(id)set
{
  v37 = *MEMORY[0x1E69E9840];
  termCopy = term;
  targetCopy = target;
  [targetCopy componentsSeparatedByCharactersInSet:set];
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
        whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v16 = [v14 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

        v17 = [targetCopy rangeOfString:v16];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = v17;
          if (v17 + v18 <= [targetCopy length])
          {
            v20 = [targetCopy substringWithRange:{v19, objc_msgSend(targetCopy, "length") - v19}];
            whitespaceCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
            v22 = [v20 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];
            v23 = [v22 rangeOfString:termCopy options:393];
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

+ (BOOL)searchString:(id)string containsOnlyCharactersInSet:(id)set
{
  stringCopy = string;
  setCopy = set;
  if ([stringCopy length])
  {
    v7 = 0;
    do
    {
      v8 = [setCopy characterIsMember:{objc_msgSend(stringCopy, "characterAtIndex:", v7)}];
      if ((v8 & 1) == 0)
      {
        break;
      }

      ++v7;
    }

    while ([stringCopy length] > v7);
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end