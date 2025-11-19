@interface _UITextInputSessionEfficacyAccumulatorEntry
+ (id)generateAccumulatorEntryFromAction:(id)a3;
- (void)increaseWithEntry:(id)a3;
@end

@implementation _UITextInputSessionEfficacyAccumulatorEntry

+ (id)generateAccumulatorEntryFromAction:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_UITextInputSessionEfficacyAccumulatorEntry);
  [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setNetCharacters:0];
  [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setUserRemovedCharacters:0];
  [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setNetEmojiCharacters:0];
  [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setUserRemovedEmojiCharacters:0];
  -[_UITextInputSessionEfficacyAccumulatorEntry setInputActions:](v4, "setInputActions:", [v3 inputActionCount]);
  v5 = [v3 asInsertion];
  v6 = v5;
  if (v5)
  {
    -[_UITextInputSessionEfficacyAccumulatorEntry setNetCharacters:](v4, "setNetCharacters:", [v5 insertedTextLength] - objc_msgSend(v5, "insertedEmojiCount"));
    [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setUserRemovedCharacters:0];
    -[_UITextInputSessionEfficacyAccumulatorEntry setNetEmojiCharacters:](v4, "setNetEmojiCharacters:", [v6 insertedEmojiCount]);
    [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setUserRemovedEmojiCharacters:0];
    v7 = v4;
  }

  else
  {
    v8 = [v3 asDeletion];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 removedTextLength];
      v11 = v10 - [v9 removedEmojiCount];
      [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setNetCharacters:-v11];
      [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setUserRemovedCharacters:v11];
      -[_UITextInputSessionEfficacyAccumulatorEntry setNetEmojiCharacters:](v4, "setNetEmojiCharacters:", -[v9 removedEmojiCount]);
      -[_UITextInputSessionEfficacyAccumulatorEntry setUserRemovedEmojiCharacters:](v4, "setUserRemovedEmojiCharacters:", [v9 removedEmojiCount]);
      v12 = v4;
    }

    else
    {
      v13 = [v3 asReplaceText];
      v14 = v13;
      if (v13)
      {
        -[_UITextInputSessionEfficacyAccumulatorEntry setNetCharacters:](v4, "setNetCharacters:", [v13 insertedTextLength] - (objc_msgSend(v13, "insertedEmojiCount") + objc_msgSend(v13, "removedTextLength")) + objc_msgSend(v13, "removedEmojiCount"));
        [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setUserRemovedCharacters:0];
        -[_UITextInputSessionEfficacyAccumulatorEntry setNetEmojiCharacters:](v4, "setNetEmojiCharacters:", [v14 insertedEmojiCount] - objc_msgSend(v14, "removedEmojiCount"));
        [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setUserRemovedEmojiCharacters:0];
      }

      v15 = v4;
    }
  }

  return v4;
}

- (void)increaseWithEntry:(id)a3
{
  v4 = a3;
  self->_netCharacters += [v4 netCharacters];
  self->_userRemovedCharacters += [v4 userRemovedCharacters];
  self->_netEmojiCharacters += [v4 netEmojiCharacters];
  self->_userRemovedEmojiCharacters += [v4 userRemovedEmojiCharacters];
  v5 = [v4 inputActions];

  self->_inputActions += v5;
}

@end