@interface _UITextInputSessionDeletionAction
- (id)description;
- (int64_t)mergeActionIfPossible:(id)a3;
@end

@implementation _UITextInputSessionDeletionAction

- (int64_t)mergeActionIfPossible:(id)a3
{
  v4 = a3;
  if ([(_UITextInputSessionAction *)self isMergeableWith:v4])
  {
    v5 = [v4 asDeletion];
    if (!v5)
    {
      v10 = 0;
LABEL_13:

      goto LABEL_14;
    }

    -[_UITextInputSessionAction setRemovedTextLengthWithoutTracking:](self, "setRemovedTextLengthWithoutTracking:", [v5 removedTextLength] + -[_UITextInputSessionAction removedTextLength](self, "removedTextLength"));
    -[_UITextInputSessionAction setInputActionCountFromMergedActions:](self, "setInputActionCountFromMergedActions:", -[_UITextInputSessionAction inputActionCountFromMergedActions](self, "inputActionCountFromMergedActions") + [v5 inputActionCount]);
    -[_UITextInputSessionDeletionAction setOptions:](self, "setOptions:", [v5 options] | -[_UITextInputSessionDeletionAction options](self, "options"));
    -[_UITextInputSessionAction setRemovedEmojiCount:](self, "setRemovedEmojiCount:", -[_UITextInputSessionAction removedEmojiCount](self, "removedEmojiCount") + [v5 removedEmojiCount]);
    v6 = [(_UITextInputSessionAction *)self largestSingleDeletionLength];
    v7 = [v5 removedTextLength];
    if (v6 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    [(_UITextInputSessionAction *)self setLargestSingleDeletionLength:v8];
    v9 = [v4 language];
    if (v9)
    {
    }

    else
    {
      v11 = [v4 region];

      if (!v11)
      {
LABEL_12:
        v10 = 1;
        goto LABEL_13;
      }
    }

    v12 = [v4 language];
    [(_UITextInputSessionAction *)self setLanguage:v12];

    v13 = [v4 region];
    [(_UITextInputSessionAction *)self setRegion:v13];

    v14 = [v4 keyboardVariant];
    [(_UITextInputSessionAction *)self setKeyboardVariant:v14];

    v15 = [v4 keyboardLayout];
    [(_UITextInputSessionAction *)self setKeyboardLayout:v15];

    v16 = [v4 keyboardType];
    [(_UITextInputSessionAction *)self setKeyboardType:v16];

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
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"removedTextLength=%lu", -[_UITextInputSessionAction removedTextLength](self, "removedTextLength")];
  [v4 addObject:v5];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"removedEmojiCount=%lu", -[_UITextInputSessionAction removedEmojiCount](self, "removedEmojiCount")];
  [v4 addObject:v6];

  v7 = [v4 componentsJoinedByString:{@", "}];
  v8 = [v3 stringByAppendingFormat:@", %@", v7];

  return v8;
}

@end