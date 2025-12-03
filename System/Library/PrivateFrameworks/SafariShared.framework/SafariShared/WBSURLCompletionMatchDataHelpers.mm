@interface WBSURLCompletionMatchDataHelpers
+ (BOOL)typedStringMatchesTitleAndURLAutocompleteTriggers:(id)triggers title:(id)title urlString:(id)string autoCompleteTriggers:(id)completeTriggers isStrengthened:(BOOL)strengthened;
@end

@implementation WBSURLCompletionMatchDataHelpers

+ (BOOL)typedStringMatchesTitleAndURLAutocompleteTriggers:(id)triggers title:(id)title urlString:(id)string autoCompleteTriggers:(id)completeTriggers isStrengthened:(BOOL)strengthened
{
  strengthenedCopy = strengthened;
  v33 = *MEMORY[0x1E69E9840];
  triggersCopy = triggers;
  titleCopy = title;
  stringCopy = string;
  completeTriggersCopy = completeTriggers;
  if (+[WBSURLCompletionMatchDataHelpers typedStringMatchesTitleAndURLAutocompleteTriggers:title:urlString:autoCompleteTriggers:isStrengthened:]::onceToken != -1)
  {
    +[WBSURLCompletionMatchDataHelpers typedStringMatchesTitleAndURLAutocompleteTriggers:title:urlString:autoCompleteTriggers:isStrengthened:];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = completeTriggersCopy;
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
      if (([(__CFString *)v18 safari_hasPrefix:triggersCopy]& 1) != 0)
      {
        goto LABEL_24;
      }

      if ([(NSString *)triggersCopy safari_hasPrefix:v18])
      {
        if (!strengthenedCopy || (typedStringMatchesTitleOrURLWithAutocompleteTrigger(triggersCopy, titleCopy, stringCopy, &v18->isa, +[WBSURLCompletionMatchDataHelpers typedStringMatchesTitleAndURLAutocompleteTriggers:title:urlString:autoCompleteTriggers:isStrengthened:]::delimiters) & 1) != 0)
        {
          goto LABEL_24;
        }
      }

      else if (!strengthenedCopy)
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

      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v24 = [(__CFString *)v18 safari_stringByRemovingCharactersInSet:whitespaceCharacterSet];

      if ([(NSString *)triggersCopy safari_hasPrefix:v24]&& (typedStringMatchesTitleOrURLWithAutocompleteTrigger(triggersCopy, titleCopy, stringCopy, v24, +[WBSURLCompletionMatchDataHelpers typedStringMatchesTitleAndURLAutocompleteTriggers:title:urlString:autoCompleteTriggers:isStrengthened:]::delimiters) & 1) != 0)
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