@interface Tokenizer
+ (id)getAllEmojis:(id)emojis;
+ (id)processMessagesWithCFStringTokenizer:(id)tokenizer;
+ (id)processMessagesWithPunctuationAndWhiteSpace:(id)space;
+ (id)tokenizeMessages:(id)messages withType:(int64_t)type;
@end

@implementation Tokenizer

+ (id)tokenizeMessages:(id)messages withType:(int64_t)type
{
  messagesCopy = messages;
  if (type)
  {
    if (type == 2)
    {
      [self getAllEmojis:messagesCopy];
    }

    else
    {
      [self processMessagesWithCFStringTokenizer:messagesCopy];
    }
    v7 = ;
  }

  else
  {
    v7 = [self processMessagesWithPunctuationAndWhiteSpace:messagesCopy];
  }

  v8 = v7;

  return v8;
}

+ (id)processMessagesWithPunctuationAndWhiteSpace:(id)space
{
  spaceCopy = space;
  v4 = +[NSMutableCharacterSet whitespaceAndNewlineCharacterSet];
  v5 = +[NSCharacterSet punctuationCharacterSet];
  [v4 formUnionWithCharacterSet:v5];

  [v4 removeCharactersInString:@"'-&"];
  v6 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = spaceCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) componentsSeparatedByCharactersInSet:{v4, v14}];
        [v6 addObjectsFromArray:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)processMessagesWithCFStringTokenizer:(id)tokenizer
{
  tokenizerCopy = tokenizer;
  v4 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = tokenizerCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v23.length = [(__CFString *)v10 length];
        v23.location = 0;
        v11 = CFStringTokenizerCreate(0, v10, v23, 4uLL, 0);
        for (j = v11; ; v11 = j)
        {
          Token = CFStringTokenizerAdvanceToNextToken(v11);
          if (!Token)
          {
            break;
          }

          if ((Token & 0x10) == 0)
          {
            CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(j);
            v15 = [(__CFString *)v10 substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
            [v4 addObject:v15];
          }
        }

        CFRelease(j);
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)getAllEmojis:(id)emojis
{
  emojisCopy = emojis;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10000DD58;
  v21 = sub_10000DD68;
  v22 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = emojisCopy;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v23 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 length];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10000DD70;
        v12[3] = &unk_10002C7D0;
        v12[4] = &v17;
        [v8 enumerateSubstringsInRange:0 options:v9 usingBlock:{2, v12}];
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v23 count:16];
    }

    while (v5);
  }

  v10 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v10;
}

@end