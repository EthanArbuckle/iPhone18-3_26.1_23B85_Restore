@interface _UITextInputSessionDeletionAction
- (id)description;
- (int64_t)mergeActionIfPossible:(id)possible;
@end

@implementation _UITextInputSessionDeletionAction

- (int64_t)mergeActionIfPossible:(id)possible
{
  possibleCopy = possible;
  if ([(_UITextInputSessionAction *)self isMergeableWith:possibleCopy])
  {
    asDeletion = [possibleCopy asDeletion];
    if (!asDeletion)
    {
      v10 = 0;
LABEL_13:

      goto LABEL_14;
    }

    -[_UITextInputSessionAction setRemovedTextLengthWithoutTracking:](self, "setRemovedTextLengthWithoutTracking:", [asDeletion removedTextLength] + -[_UITextInputSessionAction removedTextLength](self, "removedTextLength"));
    -[_UITextInputSessionAction setInputActionCountFromMergedActions:](self, "setInputActionCountFromMergedActions:", -[_UITextInputSessionAction inputActionCountFromMergedActions](self, "inputActionCountFromMergedActions") + [asDeletion inputActionCount]);
    -[_UITextInputSessionDeletionAction setOptions:](self, "setOptions:", [asDeletion options] | -[_UITextInputSessionDeletionAction options](self, "options"));
    -[_UITextInputSessionAction setRemovedEmojiCount:](self, "setRemovedEmojiCount:", -[_UITextInputSessionAction removedEmojiCount](self, "removedEmojiCount") + [asDeletion removedEmojiCount]);
    largestSingleDeletionLength = [(_UITextInputSessionAction *)self largestSingleDeletionLength];
    removedTextLength = [asDeletion removedTextLength];
    if (largestSingleDeletionLength <= removedTextLength)
    {
      v8 = removedTextLength;
    }

    else
    {
      v8 = largestSingleDeletionLength;
    }

    [(_UITextInputSessionAction *)self setLargestSingleDeletionLength:v8];
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

- (id)description
{
  v10.receiver = self;
  v10.super_class = _UITextInputSessionDeletionAction;
  v3 = [(_UITextInputSessionAction *)&v10 description];
  array = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"removedTextLength=%lu", -[_UITextInputSessionAction removedTextLength](self, "removedTextLength")];
  [array addObject:v5];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"removedEmojiCount=%lu", -[_UITextInputSessionAction removedEmojiCount](self, "removedEmojiCount")];
  [array addObject:v6];

  v7 = [array componentsJoinedByString:{@", "}];
  v8 = [v3 stringByAppendingFormat:@", %@", v7];

  return v8;
}

@end