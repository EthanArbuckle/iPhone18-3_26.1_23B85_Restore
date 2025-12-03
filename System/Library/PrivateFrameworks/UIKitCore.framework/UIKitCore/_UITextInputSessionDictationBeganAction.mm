@interface _UITextInputSessionDictationBeganAction
- (id)description;
- (int64_t)mergeActionIfPossible:(id)possible;
@end

@implementation _UITextInputSessionDictationBeganAction

- (int64_t)mergeActionIfPossible:(id)possible
{
  possibleCopy = possible;
  source = [(_UITextInputSessionAction *)self source];
  if (source == [possibleCopy source])
  {
    asDictationBegan = [possibleCopy asDictationBegan];
    v7 = asDictationBegan;
    if (asDictationBegan)
    {
      -[_UITextInputSessionDictationBeganAction setDictationBeganCount:](self, "setDictationBeganCount:", -[_UITextInputSessionDictationBeganAction dictationBeganCount](self, "dictationBeganCount") + [asDictationBegan dictationBeganCount]);
      -[_UITextInputSessionDictationBeganAction setModelessUsedAtLeastOnceCount:](self, "setModelessUsedAtLeastOnceCount:", -[_UITextInputSessionDictationBeganAction modelessUsedAtLeastOnceCount](self, "modelessUsedAtLeastOnceCount") + [v7 modelessUsedAtLeastOnceCount]);
      -[_UITextInputSessionDictationBeganAction setMultiModalDictationBeganCount:](self, "setMultiModalDictationBeganCount:", -[_UITextInputSessionDictationBeganAction multiModalDictationBeganCount](self, "multiModalDictationBeganCount") + [v7 multiModalDictationBeganCount]);
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = _UITextInputSessionDictationBeganAction;
  v3 = [(_UITextInputSessionAction *)&v11 description];
  array = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dictationBeganCount=%lu", -[_UITextInputSessionDictationBeganAction dictationBeganCount](self, "dictationBeganCount")];
  [array addObject:v5];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"modelessUsedAtLeastOnceCount=%lu", -[_UITextInputSessionDictationBeganAction modelessUsedAtLeastOnceCount](self, "modelessUsedAtLeastOnceCount")];
  [array addObject:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"multiModalDictationBeganCount=%lu", -[_UITextInputSessionDictationBeganAction multiModalDictationBeganCount](self, "multiModalDictationBeganCount")];
  [array addObject:v7];

  v8 = [array componentsJoinedByString:{@", "}];
  v9 = [v3 stringByAppendingFormat:@", %@", v8];

  return v9;
}

@end