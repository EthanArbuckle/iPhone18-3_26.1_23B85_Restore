@interface WBSURLCompletionMatchDataHelpers
+ (BOOL)typedStringMatchesTitleAndURLAutocompleteTriggers:(id)a3 title:(id)a4 urlString:(id)a5 autoCompleteTriggers:(id)a6 isStrengthened:(BOOL)a7;
@end

@implementation WBSURLCompletionMatchDataHelpers

+ (BOOL)typedStringMatchesTitleAndURLAutocompleteTriggers:(id)a3 title:(id)a4 urlString:(id)a5 autoCompleteTriggers:(id)a6 isStrengthened:(BOOL)a7
{
  v7 = a7;
  v33 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v27 = a4;
  v12 = a5;
  v13 = a6;
  if (+[WBSURLCompletionMatchDataHelpers typedStringMatchesTitleAndURLAutocompleteTriggers:title:urlString:autoCompleteTriggers:isStrengthened:]::onceToken != -1)
  {
    +[WBSURLCompletionMatchDataHelpers typedStringMatchesTitleAndURLAutocompleteTriggers:title:urlString:autoCompleteTriggers:isStrengthened:];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v15)
  {
    v25 = 0;
    goto LABEL_25;
  }

  v16 = *v29;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v29 != v16)
      {
        objc_enumerationMutation(v14);
      }

      v18 = *(*(&v28 + 1) + 8 * i);
      if (([(__CFString *)v18 safari_hasPrefix:v11]& 1) != 0)
      {
        goto LABEL_24;
      }

      if ([(NSString *)v11 safari_hasPrefix:v18])
      {
        if (!v7 || (typedStringMatchesTitleOrURLWithAutocompleteTrigger(v11, v27, v12, &v18->isa, +[WBSURLCompletionMatchDataHelpers typedStringMatchesTitleAndURLAutocompleteTriggers:title:urlString:autoCompleteTriggers:isStrengthened:]::delimiters) & 1) != 0)
        {
          goto LABEL_24;
        }
      }

      else if (!v7)
      {
        continue;
      }

      v19 = +[WBSURLCompletionMatchDataHelpers typedStringMatchesTitleAndURLAutocompleteTriggers:title:urlString:autoCompleteTriggers:isStrengthened:]::delimiters;
      CharacterAtIndex = CFStringGetCharacterAtIndex(v18, 0);
      if (!CFCharacterSetIsCharacterMember(v19, CharacterAtIndex))
      {
        v21 = +[WBSURLCompletionMatchDataHelpers typedStringMatchesTitleAndURLAutocompleteTriggers:title:urlString:autoCompleteTriggers:isStrengthened:]::delimiters;
        v22 = CFStringGetCharacterAtIndex(v18, [(__CFString *)v18 length]- 1);
        if (!CFCharacterSetIsCharacterMember(v21, v22))
        {
          continue;
        }
      }

      v23 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v24 = [(__CFString *)v18 safari_stringByRemovingCharactersInSet:v23];

      if ([(NSString *)v11 safari_hasPrefix:v24]&& (typedStringMatchesTitleOrURLWithAutocompleteTrigger(v11, v27, v12, v24, +[WBSURLCompletionMatchDataHelpers typedStringMatchesTitleAndURLAutocompleteTriggers:title:urlString:autoCompleteTriggers:isStrengthened:]::delimiters) & 1) != 0)
      {

LABEL_24:
        v25 = 1;
        goto LABEL_25;
      }
    }

    v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    v25 = 0;
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_25:

  return v25;
}

CFCharacterSetRef __138__WBSURLCompletionMatchDataHelpers_typedStringMatchesTitleAndURLAutocompleteTriggers_title_urlString_autoCompleteTriggers_isStrengthened___block_invoke()
{
  result = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  +[WBSURLCompletionMatchDataHelpers typedStringMatchesTitleAndURLAutocompleteTriggers:title:urlString:autoCompleteTriggers:isStrengthened:]::delimiters = result;
  return result;
}

@end