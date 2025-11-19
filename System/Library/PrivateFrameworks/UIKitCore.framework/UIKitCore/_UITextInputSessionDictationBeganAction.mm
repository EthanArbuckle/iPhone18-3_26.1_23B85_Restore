@interface _UITextInputSessionDictationBeganAction
- (id)description;
- (int64_t)mergeActionIfPossible:(id)a3;
@end

@implementation _UITextInputSessionDictationBeganAction

- (int64_t)mergeActionIfPossible:(id)a3
{
  v4 = a3;
  v5 = [(_UITextInputSessionAction *)self source];
  if (v5 == [v4 source])
  {
    v6 = [v4 asDictationBegan];
    v7 = v6;
    if (v6)
    {
      -[_UITextInputSessionDictationBeganAction setDictationBeganCount:](self, "setDictationBeganCount:", -[_UITextInputSessionDictationBeganAction dictationBeganCount](self, "dictationBeganCount") + [v6 dictationBeganCount]);
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
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dictationBeganCount=%lu", -[_UITextInputSessionDictationBeganAction dictationBeganCount](self, "dictationBeganCount")];
  [v4 addObject:v5];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"modelessUsedAtLeastOnceCount=%lu", -[_UITextInputSessionDictationBeganAction modelessUsedAtLeastOnceCount](self, "modelessUsedAtLeastOnceCount")];
  [v4 addObject:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"multiModalDictationBeganCount=%lu", -[_UITextInputSessionDictationBeganAction multiModalDictationBeganCount](self, "multiModalDictationBeganCount")];
  [v4 addObject:v7];

  v8 = [v4 componentsJoinedByString:{@", "}];
  v9 = [v3 stringByAppendingFormat:@", %@", v8];

  return v9;
}

@end