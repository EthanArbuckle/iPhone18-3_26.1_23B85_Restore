@interface _UITextInputSessionAction
- (BOOL)isMergeableWith:(id)a3;
- (_NSRange)relativeRangeBefore;
- (_UITextInputSessionBeganAction)asBegan;
- (_UITextInputSessionCopyAction)asCopy;
- (_UITextInputSessionCutAction)asCut;
- (_UITextInputSessionDeletionAction)asDeletion;
- (_UITextInputSessionDictationBeganAction)asDictationBegan;
- (_UITextInputSessionDictationEndedAction)asDictationEnded;
- (_UITextInputSessionEndAction)asEnd;
- (_UITextInputSessionInsertionAction)asInsertion;
- (_UITextInputSessionKeyboardDockItemButtonPressAction)asKeyboardDockItemButtonPress;
- (_UITextInputSessionPasteAction)asPaste;
- (_UITextInputSessionRedoAction)asRedo;
- (_UITextInputSessionReplaceTextAction)asReplaceText;
- (_UITextInputSessionReplaceWithCandidateAction)asReplaceWithCandidate;
- (_UITextInputSessionSelectionAction)asSelection;
- (_UITextInputSessionUndoAction)asUndo;
- (id)description;
- (id)inputModeUniqueString;
- (void)setInsertedEmojiCount:(unint64_t)a3;
- (void)setInsertedPunctuationCount:(unint64_t)a3;
- (void)setInsertedTextLength:(unint64_t)a3;
- (void)setInsertedTextLengthWithoutTracking:(unint64_t)a3;
- (void)setRemovedEmojiCount:(unint64_t)a3;
- (void)setRemovedPunctuationCount:(unint64_t)a3;
- (void)setRemovedTextLength:(unint64_t)a3;
- (void)setRemovedTextLengthWithoutTracking:(unint64_t)a3;
- (void)setSource:(int64_t)a3;
@end

@implementation _UITextInputSessionAction

- (_UITextInputSessionBeganAction)asBegan
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UITextInputSessionEndAction)asEnd
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UITextInputSessionInsertionAction)asInsertion
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UITextInputSessionDeletionAction)asDeletion
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UITextInputSessionSelectionAction)asSelection
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UITextInputSessionCopyAction)asCopy
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UITextInputSessionCutAction)asCut
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UITextInputSessionPasteAction)asPaste
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UITextInputSessionUndoAction)asUndo
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UITextInputSessionRedoAction)asRedo
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UITextInputSessionKeyboardDockItemButtonPressAction)asKeyboardDockItemButtonPress
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UITextInputSessionDictationBeganAction)asDictationBegan
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UITextInputSessionDictationEndedAction)asDictationEnded
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UITextInputSessionReplaceWithCandidateAction)asReplaceWithCandidate
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UITextInputSessionReplaceTextAction)asReplaceText
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [(_UITextInputSessionAction *)self appBundleId];
  v8 = [v6 stringWithFormat:@"appBundleId=%@", v7];
  [v5 addObject:v8];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [UITextInputSessionActionAnalytics stringValueForSource:[(_UITextInputSessionAction *)self source]];
  v11 = [v9 stringWithFormat:@"source=%@", v10];
  [v5 addObject:v11];

  v12 = MEMORY[0x1E696AEC0];
  v13 = _UITextInputActionsSourceString([(_UITextInputSessionAction *)self textInputActionsSource]);
  v14 = [v12 stringWithFormat:@"textInputActionsSource=%@", v13];
  [v5 addObject:v14];

  v15 = MEMORY[0x1E696AEC0];
  v16 = _UITextInputActionsTypeString([(_UITextInputSessionAction *)self textInputActionsType]);
  v17 = [v15 stringWithFormat:@"textInputActionsType=%@", v16];
  [v5 addObject:v17];

  if ([(_UITextInputSessionAction *)self changedContent])
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"removedTextLength=%lu", -[_UITextInputSessionAction removedTextLength](self, "removedTextLength")];
    [v5 addObject:v18];

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"insertedTextLength=%lu", -[_UITextInputSessionAction insertedTextLength](self, "insertedTextLength")];
    [v5 addObject:v19];

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"removedEmojiCount=%lu", -[_UITextInputSessionAction removedEmojiCount](self, "removedEmojiCount")];
    [v5 addObject:v20];

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"insertedEmojiCount=%lu", -[_UITextInputSessionAction insertedEmojiCount](self, "insertedEmojiCount")];
    [v5 addObject:v21];

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"removedPunctuationCount=%lu", -[_UITextInputSessionAction removedPunctuationCount](self, "removedPunctuationCount")];
    [v5 addObject:v22];

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"insertedPunctuationCount=%lu", -[_UITextInputSessionAction insertedPunctuationCount](self, "insertedPunctuationCount")];
    [v5 addObject:v23];

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"largestSingleDeletionLength=%lu", -[_UITextInputSessionAction largestSingleDeletionLength](self, "largestSingleDeletionLength")];
    [v5 addObject:v24];

    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"largestSingleInsertionLength=%lu", -[_UITextInputSessionAction largestSingleInsertionLength](self, "largestSingleInsertionLength")];
    [v5 addObject:v25];
  }

  v26 = [(_UITextInputSessionAction *)self language];
  if (v26 || ([(_UITextInputSessionAction *)self region], (v26 = objc_claimAutoreleasedReturnValue()) != 0) || ([(_UITextInputSessionAction *)self keyboardVariant], (v26 = objc_claimAutoreleasedReturnValue()) != 0) || ([(_UITextInputSessionAction *)self keyboardLayout], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_8:
    v27 = MEMORY[0x1E696AEC0];
    v28 = [(_UITextInputSessionAction *)self inputModeUniqueString];
    v29 = [v27 stringWithFormat:@"inputMode=%@", v28];
    [v5 addObject:v29];

    goto LABEL_9;
  }

  v39 = [(_UITextInputSessionAction *)self keyboardType];

  if (v39)
  {
    goto LABEL_8;
  }

LABEL_9:
  if ([(_UITextInputSessionAction *)self flagOptions])
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"flagOptions=%lu", -[_UITextInputSessionAction flagOptions](self, "flagOptions")];
    [v5 addObject:v30];
  }

  if ([(_UITextInputSessionAction *)self inputActionCount])
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputActionCount=%lu", -[_UITextInputSessionAction inputActionCount](self, "inputActionCount")];
    [v5 addObject:v31];
  }

  if ([(_UITextInputSessionAction *)self relativeRangeBefore]|| ([(_UITextInputSessionAction *)self relativeRangeBefore], v32))
  {
    v33 = MEMORY[0x1E696AEC0];
    v41.location = [(_UITextInputSessionAction *)self relativeRangeBefore];
    v34 = NSStringFromRange(v41);
    v35 = [v33 stringWithFormat:@"relativeRangeBefore=%@", v34];
    [v5 addObject:v35];
  }

  v36 = [v5 componentsJoinedByString:{@", "}];
  v37 = [v4 stringByAppendingFormat:@": %@", v36];

  return v37;
}

- (void)setSource:(int64_t)a3
{
  if (self->_source != a3)
  {
    self->_source = a3;
  }

  [(_UITextInputSessionAction *)self setTextInputActionsSource:_UITextInputActionsSourceFromTextInputSource(a3)];
  v5 = _UITextInputActionsTypeFromTextInputSource(a3);

  [(_UITextInputSessionAction *)self setTextInputActionsType:v5];
}

- (void)setInsertedTextLength:(unint64_t)a3
{
  if (a3 && ![(_UITextInputSessionAction *)self changedContent])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"UITextInputSessionAction.m" lineNumber:150 description:{@"Attempted to set insertedTextLength on an action of class %@, which does not support changing content", v9}];
  }

  self->_insertedTextLength = a3;
  v6 = a3 - [(_UITextInputSessionAction *)self removedTextLength];
  [(_UITextInputSessionAction *)self setLargestSingleInsertionLength:0];
  [(_UITextInputSessionAction *)self setLargestSingleDeletionLength:0];
  if (v6 < 1)
  {
    if (v6 < 0)
    {

      [(_UITextInputSessionAction *)self setLargestSingleDeletionLength:-v6];
    }
  }

  else
  {

    [(_UITextInputSessionAction *)self setLargestSingleInsertionLength:v6];
  }
}

- (void)setRemovedTextLength:(unint64_t)a3
{
  if (a3 && ![(_UITextInputSessionAction *)self changedContent])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"UITextInputSessionAction.m" lineNumber:171 description:{@"Attempted to set removedTextLength on an action of class %@, which does not support changing content", v9}];
  }

  self->_removedTextLength = a3;
  v6 = [(_UITextInputSessionAction *)self insertedTextLength]- a3;
  [(_UITextInputSessionAction *)self setLargestSingleInsertionLength:0];
  [(_UITextInputSessionAction *)self setLargestSingleDeletionLength:0];
  if (v6 < 1)
  {
    if (v6 < 0)
    {

      [(_UITextInputSessionAction *)self setLargestSingleDeletionLength:-v6];
    }
  }

  else
  {

    [(_UITextInputSessionAction *)self setLargestSingleInsertionLength:v6];
  }
}

- (void)setInsertedTextLengthWithoutTracking:(unint64_t)a3
{
  if (a3 && ![(_UITextInputSessionAction *)self changedContent])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 handleFailureInMethod:a2 object:self file:@"UITextInputSessionAction.m" lineNumber:190 description:{@"Attempted to set insertedTextLength on an action of class %@, which does not support changing content", v8}];
  }

  self->_insertedTextLength = a3;
}

- (void)setRemovedTextLengthWithoutTracking:(unint64_t)a3
{
  if (a3 && ![(_UITextInputSessionAction *)self changedContent])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 handleFailureInMethod:a2 object:self file:@"UITextInputSessionAction.m" lineNumber:198 description:{@"Attempted to set removedTextLength on an action of class %@, which does not support changing content", v8}];
  }

  self->_removedTextLength = a3;
}

- (void)setInsertedEmojiCount:(unint64_t)a3
{
  if (a3 && ![(_UITextInputSessionAction *)self changedContent])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 handleFailureInMethod:a2 object:self file:@"UITextInputSessionAction.m" lineNumber:206 description:{@"Attempted to set insertedEmojiCount on an action of class %@, which does not support changing content", v8}];
  }

  self->_insertedEmojiCount = a3;
}

- (void)setRemovedEmojiCount:(unint64_t)a3
{
  if (a3 && ![(_UITextInputSessionAction *)self changedContent])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 handleFailureInMethod:a2 object:self file:@"UITextInputSessionAction.m" lineNumber:214 description:{@"Attempted to set removedEmojiCount on an action of class %@, which does not support changing content", v8}];
  }

  self->_removedEmojiCount = a3;
}

- (void)setInsertedPunctuationCount:(unint64_t)a3
{
  if (a3 && ![(_UITextInputSessionAction *)self changedContent])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 handleFailureInMethod:a2 object:self file:@"UITextInputSessionAction.m" lineNumber:222 description:{@"Attempted to set insertedPunctuationCount on an action of class %@, which does not support changing content", v8}];
  }

  self->_insertedPunctuationCount = a3;
}

- (void)setRemovedPunctuationCount:(unint64_t)a3
{
  if (a3 && ![(_UITextInputSessionAction *)self changedContent])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 handleFailureInMethod:a2 object:self file:@"UITextInputSessionAction.m" lineNumber:230 description:{@"Attempted to set removedPunctuationCount on an action of class %@, which does not support changing content", v8}];
  }

  self->_removedPunctuationCount = a3;
}

- (id)inputModeUniqueString
{
  keyboardType = @"None";
  language = self->_language;
  region = self->_region;
  if (!language)
  {
    language = @"None";
  }

  if (!region)
  {
    region = @"None";
  }

  keyboardVariant = self->_keyboardVariant;
  keyboardLayout = self->_keyboardLayout;
  if (!keyboardVariant)
  {
    keyboardVariant = @"None";
  }

  if (!keyboardLayout)
  {
    keyboardLayout = @"None";
  }

  if (self->_keyboardType)
  {
    keyboardType = self->_keyboardType;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@%@%@%@%@", language, @"|", region, @"|", keyboardVariant, @"|", keyboardLayout, @"|", keyboardType];
}

- (BOOL)isMergeableWith:(id)a3
{
  v4 = a3;
  v5 = [(_UITextInputSessionAction *)self source];
  if (v5 == [v4 source] && (v6 = -[_UITextInputSessionAction flagOptions](self, "flagOptions"), v6 == objc_msgSend(v4, "flagOptions")) && (v7 = -[_UITextInputSessionAction textInputActionsSource](self, "textInputActionsSource"), v7 == objc_msgSend(v4, "textInputActionsSource")) && (v8 = -[_UITextInputSessionAction textInputActionsType](self, "textInputActionsType"), v8 == objc_msgSend(v4, "textInputActionsType")))
  {
    v9 = [(_UITextInputSessionAction *)self inputModeUniqueString];
    v10 = [v4 inputModeUniqueString];
    if ([v9 isEqualToString:v10])
    {
      v11 = [(_UITextInputSessionAction *)self appBundleId];
      v12 = [v4 appBundleId];
      v13 = [v11 isEqualToString:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (_NSRange)relativeRangeBefore
{
  length = self->_relativeRangeBefore.length;
  location = self->_relativeRangeBefore.location;
  result.length = length;
  result.location = location;
  return result;
}

@end