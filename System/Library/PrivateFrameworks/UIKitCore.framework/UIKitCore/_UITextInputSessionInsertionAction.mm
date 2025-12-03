@interface _UITextInputSessionInsertionAction
- (int64_t)mergeActionIfPossible:(id)possible;
@end

@implementation _UITextInputSessionInsertionAction

- (int64_t)mergeActionIfPossible:(id)possible
{
  possibleCopy = possible;
  if ([(_UITextInputSessionAction *)self isMergeableWith:possibleCopy])
  {
    asInsertion = [possibleCopy asInsertion];
    if (!asInsertion)
    {
      v10 = 0;
LABEL_13:

      goto LABEL_14;
    }

    -[_UITextInputSessionAction setInsertedTextLengthWithoutTracking:](self, "setInsertedTextLengthWithoutTracking:", [asInsertion insertedTextLength] + -[_UITextInputSessionAction insertedTextLength](self, "insertedTextLength"));
    -[_UITextInputSessionAction setInputActionCountFromMergedActions:](self, "setInputActionCountFromMergedActions:", -[_UITextInputSessionAction inputActionCountFromMergedActions](self, "inputActionCountFromMergedActions") + [asInsertion inputActionCount]);
    -[_UITextInputSessionInsertionAction setWithAlternativesCount:](self, "setWithAlternativesCount:", -[_UITextInputSessionInsertionAction withAlternativesCount](self, "withAlternativesCount") + [asInsertion withAlternativesCount]);
    -[_UITextInputSessionInsertionAction setOptions:](self, "setOptions:", [asInsertion options] | -[_UITextInputSessionInsertionAction options](self, "options"));
    -[_UITextInputSessionAction setInsertedEmojiCount:](self, "setInsertedEmojiCount:", -[_UITextInputSessionAction insertedEmojiCount](self, "insertedEmojiCount") + [asInsertion insertedEmojiCount]);
    -[_UITextInputSessionAction setInsertedPunctuationCount:](self, "setInsertedPunctuationCount:", -[_UITextInputSessionAction insertedPunctuationCount](self, "insertedPunctuationCount") + [asInsertion insertedPunctuationCount]);
    largestSingleInsertionLength = [(_UITextInputSessionAction *)self largestSingleInsertionLength];
    insertedTextLength = [asInsertion insertedTextLength];
    if (largestSingleInsertionLength <= insertedTextLength)
    {
      v8 = insertedTextLength;
    }

    else
    {
      v8 = largestSingleInsertionLength;
    }

    [(_UITextInputSessionAction *)self setLargestSingleInsertionLength:v8];
    language = [possibleCopy language];
    if (language)
    {
    }

    else
    {
      region = [possibleCopy region];

      if (!region)
      {
LABEL_12:
        v10 = 1;
        goto LABEL_13;
      }
    }

    language2 = [possibleCopy language];
    [(_UITextInputSessionAction *)self setLanguage:language2];

    region2 = [possibleCopy region];
    [(_UITextInputSessionAction *)self setRegion:region2];

    keyboardVariant = [possibleCopy keyboardVariant];
    [(_UITextInputSessionAction *)self setKeyboardVariant:keyboardVariant];

    keyboardLayout = [possibleCopy keyboardLayout];
    [(_UITextInputSessionAction *)self setKeyboardLayout:keyboardLayout];

    keyboardType = [possibleCopy keyboardType];
    [(_UITextInputSessionAction *)self setKeyboardType:keyboardType];

    goto LABEL_12;
  }

  v10 = 0;
LABEL_14:

  return v10;
}

@end