@interface NSString(UIWebViewAdditions)
- (id)_uikit_stringByRemovingFirstMatchFromPrefixes:()UIWebViewAdditions;
- (id)_uikit_stringByTrimmingWhitespaceAndNewlines;
- (id)_uikit_stringWithWritingDirection:()UIWebViewAdditions asOverride:;
@end

@implementation NSString(UIWebViewAdditions)

- (id)_uikit_stringByTrimmingWhitespaceAndNewlines
{
  v2 = [a1 length];
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  v4 = v2 + 1;
  do
  {
    v5 = v4 - 1;
    if (v4 == 1)
    {
      v7 = 0;
      goto LABEL_10;
    }

    [a1 characterAtIndex:v4 - 2];
    IsMemberOf = CFUniCharIsMemberOf();
    v4 = v5;
  }

  while ((IsMemberOf & 1) != 0);
  v7 = 0;
  do
  {
    [a1 characterAtIndex:v7];
    if (!CFUniCharIsMemberOf())
    {
      break;
    }

    ++v7;
    --v5;
  }

  while (v5);
LABEL_10:
  if (v3 != v5)
  {
    v8 = [a1 substringWithRange:{v7, v5}];
  }

  else
  {
LABEL_11:
    v8 = a1;
  }

  return v8;
}

- (id)_uikit_stringWithWritingDirection:()UIWebViewAdditions asOverride:
{
  v7 = [a1 length];
  if (a3 != -1 && v7)
  {
    if (a4)
    {
      LODWORD(v8) = 8237;
      v9 = 8238;
LABEL_5:
      if (a3)
      {
        v8 = v9;
      }

      else
      {
        v8 = v8;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C%@%C", v8, a1, 8236];
      goto LABEL_14;
    }

    v11 = MEMORY[0x18CFEA880]([a1 characterAtIndex:0]);
    if (a3 || v11)
    {
      LODWORD(v8) = 8234;
      v9 = 8235;
      if (a3 != 1 || v11 != 1)
      {
        goto LABEL_5;
      }
    }
  }

  v10 = a1;
LABEL_14:

  return v10;
}

- (id)_uikit_stringByRemovingFirstMatchFromPrefixes:()UIWebViewAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 length])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([a1 hasPrefix:{v10, v13}])
          {
            v11 = [a1 substringFromIndex:{objc_msgSend(v10, "length")}];

            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  v11 = a1;
LABEL_13:

  return v11;
}

@end