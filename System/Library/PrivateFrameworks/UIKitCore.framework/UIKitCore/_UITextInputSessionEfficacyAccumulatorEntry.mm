@interface _UITextInputSessionEfficacyAccumulatorEntry
+ (id)generateAccumulatorEntryFromAction:(id)action;
- (void)increaseWithEntry:(id)entry;
@end

@implementation _UITextInputSessionEfficacyAccumulatorEntry

+ (id)generateAccumulatorEntryFromAction:(id)action
{
  actionCopy = action;
  v4 = objc_alloc_init(_UITextInputSessionEfficacyAccumulatorEntry);
  [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setNetCharacters:0];
  [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setUserRemovedCharacters:0];
  [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setNetEmojiCharacters:0];
  [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setUserRemovedEmojiCharacters:0];
  -[_UITextInputSessionEfficacyAccumulatorEntry setInputActions:](v4, "setInputActions:", [actionCopy inputActionCount]);
  asInsertion = [actionCopy asInsertion];
  v6 = asInsertion;
  if (asInsertion)
  {
    -[_UITextInputSessionEfficacyAccumulatorEntry setNetCharacters:](v4, "setNetCharacters:", [asInsertion insertedTextLength] - objc_msgSend(asInsertion, "insertedEmojiCount"));
    [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setUserRemovedCharacters:0];
    -[_UITextInputSessionEfficacyAccumulatorEntry setNetEmojiCharacters:](v4, "setNetEmojiCharacters:", [v6 insertedEmojiCount]);
    [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setUserRemovedEmojiCharacters:0];
    v7 = v4;
  }

  else
  {
    asDeletion = [actionCopy asDeletion];
    v9 = asDeletion;
    if (asDeletion)
    {
      removedTextLength = [asDeletion removedTextLength];
      v11 = removedTextLength - [v9 removedEmojiCount];
      [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setNetCharacters:-v11];
      [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setUserRemovedCharacters:v11];
      -[_UITextInputSessionEfficacyAccumulatorEntry setNetEmojiCharacters:](v4, "setNetEmojiCharacters:", -[v9 removedEmojiCount]);
      -[_UITextInputSessionEfficacyAccumulatorEntry setUserRemovedEmojiCharacters:](v4, "setUserRemovedEmojiCharacters:", [v9 removedEmojiCount]);
      v12 = v4;
    }

    else
    {
      asReplaceText = [actionCopy asReplaceText];
      v14 = asReplaceText;
      if (asReplaceText)
      {
        -[_UITextInputSessionEfficacyAccumulatorEntry setNetCharacters:](v4, "setNetCharacters:", [asReplaceText insertedTextLength] - (objc_msgSend(asReplaceText, "insertedEmojiCount") + objc_msgSend(asReplaceText, "removedTextLength")) + objc_msgSend(asReplaceText, "removedEmojiCount"));
        [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setUserRemovedCharacters:0];
        -[_UITextInputSessionEfficacyAccumulatorEntry setNetEmojiCharacters:](v4, "setNetEmojiCharacters:", [v14 insertedEmojiCount] - objc_msgSend(v14, "removedEmojiCount"));
        [(_UITextInputSessionEfficacyAccumulatorEntry *)v4 setUserRemovedEmojiCharacters:0];
      }

      v15 = v4;
    }
  }

  return v4;
}

- (void)increaseWithEntry:(id)entry
{
  entryCopy = entry;
  self->_netCharacters += [entryCopy netCharacters];
  self->_userRemovedCharacters += [entryCopy userRemovedCharacters];
  self->_netEmojiCharacters += [entryCopy netEmojiCharacters];
  self->_userRemovedEmojiCharacters += [entryCopy userRemovedEmojiCharacters];
  inputActions = [entryCopy inputActions];

  self->_inputActions += inputActions;
}

@end