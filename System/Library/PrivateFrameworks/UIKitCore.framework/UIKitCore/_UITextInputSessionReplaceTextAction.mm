@interface _UITextInputSessionReplaceTextAction
- (int64_t)mergeActionIfPossible:(id)possible;
@end

@implementation _UITextInputSessionReplaceTextAction

- (int64_t)mergeActionIfPossible:(id)possible
{
  possibleCopy = possible;
  if ([(_UITextInputSessionAction *)self isMergeableWith:possibleCopy])
  {
    asReplaceText = [possibleCopy asReplaceText];
    if (!asReplaceText)
    {
      v10 = 0;
LABEL_20:

      goto LABEL_21;
    }

    -[_UITextInputSessionAction setInsertedTextLengthWithoutTracking:](self, "setInsertedTextLengthWithoutTracking:", [asReplaceText insertedTextLength] + -[_UITextInputSessionAction insertedTextLength](self, "insertedTextLength"));
    -[_UITextInputSessionAction setRemovedTextLengthWithoutTracking:](self, "setRemovedTextLengthWithoutTracking:", [asReplaceText removedTextLength] + -[_UITextInputSessionAction removedTextLength](self, "removedTextLength"));
    -[_UITextInputSessionAction setInputActionCountFromMergedActions:](self, "setInputActionCountFromMergedActions:", -[_UITextInputSessionAction inputActionCountFromMergedActions](self, "inputActionCountFromMergedActions") + [asReplaceText inputActionCount]);
    -[_UITextInputSessionReplaceTextAction setOptions:](self, "setOptions:", [asReplaceText options] | -[_UITextInputSessionReplaceTextAction options](self, "options"));
    -[_UITextInputSessionAction setRemovedEmojiCount:](self, "setRemovedEmojiCount:", -[_UITextInputSessionAction removedEmojiCount](self, "removedEmojiCount") + [asReplaceText removedEmojiCount]);
    -[_UITextInputSessionAction setInsertedEmojiCount:](self, "setInsertedEmojiCount:", -[_UITextInputSessionAction insertedEmojiCount](self, "insertedEmojiCount") + [asReplaceText insertedEmojiCount]);
    -[_UITextInputSessionAction setRemovedPunctuationCount:](self, "setRemovedPunctuationCount:", -[_UITextInputSessionAction removedPunctuationCount](self, "removedPunctuationCount") + [asReplaceText removedPunctuationCount]);
    -[_UITextInputSessionAction setInsertedPunctuationCount:](self, "setInsertedPunctuationCount:", -[_UITextInputSessionAction insertedPunctuationCount](self, "insertedPunctuationCount") + [asReplaceText insertedPunctuationCount]);
    netCharacterCount = [asReplaceText netCharacterCount];
    v7 = netCharacterCount;
    if (netCharacterCount < 1)
    {
      if (netCharacterCount < 0)
      {
        largestSingleDeletionLength = [(_UITextInputSessionAction *)self largestSingleDeletionLength];
        if (largestSingleDeletionLength <= -v7)
        {
          v12 = -v7;
        }

        else
        {
          v12 = largestSingleDeletionLength;
        }

        [(_UITextInputSessionAction *)self setLargestSingleDeletionLength:v12];
      }
    }

    else
    {
      largestSingleInsertionLength = [(_UITextInputSessionAction *)self largestSingleInsertionLength];
      if (largestSingleInsertionLength <= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = largestSingleInsertionLength;
      }

      [(_UITextInputSessionAction *)self setLargestSingleInsertionLength:v9];
    }

    language = [possibleCopy language];
    if (language)
    {
    }

    else
    {
      region = [possibleCopy region];

      if (!region)
      {
LABEL_19:
        v10 = 1;
        goto LABEL_20;
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

    goto LABEL_19;
  }

  v10 = 0;
LABEL_21:

  return v10;
}

@end