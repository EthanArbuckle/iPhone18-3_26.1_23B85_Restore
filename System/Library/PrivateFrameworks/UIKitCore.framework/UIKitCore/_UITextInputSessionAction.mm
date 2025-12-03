@interface _UITextInputSessionAction
- (BOOL)isMergeableWith:(id)with;
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
- (void)setInsertedEmojiCount:(unint64_t)count;
- (void)setInsertedPunctuationCount:(unint64_t)count;
- (void)setInsertedTextLength:(unint64_t)length;
- (void)setInsertedTextLengthWithoutTracking:(unint64_t)tracking;
- (void)setRemovedEmojiCount:(unint64_t)count;
- (void)setRemovedPunctuationCount:(unint64_t)count;
- (void)setRemovedTextLength:(unint64_t)length;
- (void)setRemovedTextLengthWithoutTracking:(unint64_t)tracking;
- (void)setSource:(int64_t)source;
@end

@implementation _UITextInputSessionAction

- (_UITextInputSessionBeganAction)asBegan
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UITextInputSessionEndAction)asEnd
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UITextInputSessionInsertionAction)asInsertion
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UITextInputSessionDeletionAction)asDeletion
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UITextInputSessionSelectionAction)asSelection
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UITextInputSessionCopyAction)asCopy
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UITextInputSessionCutAction)asCut
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UITextInputSessionPasteAction)asPaste
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UITextInputSessionUndoAction)asUndo
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UITextInputSessionRedoAction)asRedo
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UITextInputSessionKeyboardDockItemButtonPressAction)asKeyboardDockItemButtonPress
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UITextInputSessionDictationBeganAction)asDictationBegan
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UITextInputSessionDictationEndedAction)asDictationEnded
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UITextInputSessionReplaceWithCandidateAction)asReplaceWithCandidate
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UITextInputSessionReplaceTextAction)asReplaceText
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  array = [MEMORY[0x1E695DF70] array];
  v6 = MEMORY[0x1E696AEC0];
  appBundleId = [(_UITextInputSessionAction *)self appBundleId];
  v8 = [v6 stringWithFormat:@"appBundleId=%@", appBundleId];
  [array addObject:v8];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [UITextInputSessionActionAnalytics stringValueForSource:[(_UITextInputSessionAction *)self source]];
  v11 = [v9 stringWithFormat:@"source=%@", v10];
  [array addObject:v11];

  v12 = MEMORY[0x1E696AEC0];
  v13 = _UITextInputActionsSourceString([(_UITextInputSessionAction *)self textInputActionsSource]);
  v14 = [v12 stringWithFormat:@"textInputActionsSource=%@", v13];
  [array addObject:v14];

  v15 = MEMORY[0x1E696AEC0];
  v16 = _UITextInputActionsTypeString([(_UITextInputSessionAction *)self textInputActionsType]);
  v17 = [v15 stringWithFormat:@"textInputActionsType=%@", v16];
  [array addObject:v17];

  if ([(_UITextInputSessionAction *)self changedContent])
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"removedTextLength=%lu", -[_UITextInputSessionAction removedTextLength](self, "removedTextLength")];
    [array addObject:v18];

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"insertedTextLength=%lu", -[_UITextInputSessionAction insertedTextLength](self, "insertedTextLength")];
    [array addObject:v19];

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"removedEmojiCount=%lu", -[_UITextInputSessionAction removedEmojiCount](self, "removedEmojiCount")];
    [array addObject:v20];

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"insertedEmojiCount=%lu", -[_UITextInputSessionAction insertedEmojiCount](self, "insertedEmojiCount")];
    [array addObject:v21];

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"removedPunctuationCount=%lu", -[_UITextInputSessionAction removedPunctuationCount](self, "removedPunctuationCount")];
    [array addObject:v22];

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"insertedPunctuationCount=%lu", -[_UITextInputSessionAction insertedPunctuationCount](self, "insertedPunctuationCount")];
    [array addObject:v23];

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"largestSingleDeletionLength=%lu", -[_UITextInputSessionAction largestSingleDeletionLength](self, "largestSingleDeletionLength")];
    [array addObject:v24];

    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"largestSingleInsertionLength=%lu", -[_UITextInputSessionAction largestSingleInsertionLength](self, "largestSingleInsertionLength")];
    [array addObject:v25];
  }

  language = [(_UITextInputSessionAction *)self language];
  if (language || ([(_UITextInputSessionAction *)self region], (language = objc_claimAutoreleasedReturnValue()) != 0) || ([(_UITextInputSessionAction *)self keyboardVariant], (language = objc_claimAutoreleasedReturnValue()) != 0) || ([(_UITextInputSessionAction *)self keyboardLayout], (language = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_8:
    v27 = MEMORY[0x1E696AEC0];
    inputModeUniqueString = [(_UITextInputSessionAction *)self inputModeUniqueString];
    v29 = [v27 stringWithFormat:@"inputMode=%@", inputModeUniqueString];
    [array addObject:v29];

    goto LABEL_9;
  }

  keyboardType = [(_UITextInputSessionAction *)self keyboardType];

  if (keyboardType)
  {
    goto LABEL_8;
  }

LABEL_9:
  if ([(_UITextInputSessionAction *)self flagOptions])
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"flagOptions=%lu", -[_UITextInputSessionAction flagOptions](self, "flagOptions")];
    [array addObject:v30];
  }

  if ([(_UITextInputSessionAction *)self inputActionCount])
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputActionCount=%lu", -[_UITextInputSessionAction inputActionCount](self, "inputActionCount")];
    [array addObject:v31];
  }

  if ([(_UITextInputSessionAction *)self relativeRangeBefore]|| ([(_UITextInputSessionAction *)self relativeRangeBefore], v32))
  {
    v33 = MEMORY[0x1E696AEC0];
    v41.location = [(_UITextInputSessionAction *)self relativeRangeBefore];
    v34 = NSStringFromRange(v41);
    v35 = [v33 stringWithFormat:@"relativeRangeBefore=%@", v34];
    [array addObject:v35];
  }

  v36 = [array componentsJoinedByString:{@", "}];
  v37 = [v4 stringByAppendingFormat:@": %@", v36];

  return v37;
}

- (void)setSource:(int64_t)source
{
  if (self->_source != source)
  {
    self->_source = source;
  }

  [(_UITextInputSessionAction *)self setTextInputActionsSource:_UITextInputActionsSourceFromTextInputSource(source)];
  v5 = _UITextInputActionsTypeFromTextInputSource(source);

  [(_UITextInputSessionAction *)self setTextInputActionsType:v5];
}

- (void)setInsertedTextLength:(unint64_t)length
{
  if (length && ![(_UITextInputSessionAction *)self changedContent])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextInputSessionAction.m" lineNumber:150 description:{@"Attempted to set insertedTextLength on an action of class %@, which does not support changing content", v9}];
  }

  self->_insertedTextLength = length;
  v6 = length - [(_UITextInputSessionAction *)self removedTextLength];
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

- (void)setRemovedTextLength:(unint64_t)length
{
  if (length && ![(_UITextInputSessionAction *)self changedContent])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextInputSessionAction.m" lineNumber:171 description:{@"Attempted to set removedTextLength on an action of class %@, which does not support changing content", v9}];
  }

  self->_removedTextLength = length;
  v6 = [(_UITextInputSessionAction *)self insertedTextLength]- length;
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

- (void)setInsertedTextLengthWithoutTracking:(unint64_t)tracking
{
  if (tracking && ![(_UITextInputSessionAction *)self changedContent])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextInputSessionAction.m" lineNumber:190 description:{@"Attempted to set insertedTextLength on an action of class %@, which does not support changing content", v8}];
  }

  self->_insertedTextLength = tracking;
}

- (void)setRemovedTextLengthWithoutTracking:(unint64_t)tracking
{
  if (tracking && ![(_UITextInputSessionAction *)self changedContent])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextInputSessionAction.m" lineNumber:198 description:{@"Attempted to set removedTextLength on an action of class %@, which does not support changing content", v8}];
  }

  self->_removedTextLength = tracking;
}

- (void)setInsertedEmojiCount:(unint64_t)count
{
  if (count && ![(_UITextInputSessionAction *)self changedContent])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextInputSessionAction.m" lineNumber:206 description:{@"Attempted to set insertedEmojiCount on an action of class %@, which does not support changing content", v8}];
  }

  self->_insertedEmojiCount = count;
}

- (void)setRemovedEmojiCount:(unint64_t)count
{
  if (count && ![(_UITextInputSessionAction *)self changedContent])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextInputSessionAction.m" lineNumber:214 description:{@"Attempted to set removedEmojiCount on an action of class %@, which does not support changing content", v8}];
  }

  self->_removedEmojiCount = count;
}

- (void)setInsertedPunctuationCount:(unint64_t)count
{
  if (count && ![(_UITextInputSessionAction *)self changedContent])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextInputSessionAction.m" lineNumber:222 description:{@"Attempted to set insertedPunctuationCount on an action of class %@, which does not support changing content", v8}];
  }

  self->_insertedPunctuationCount = count;
}

- (void)setRemovedPunctuationCount:(unint64_t)count
{
  if (count && ![(_UITextInputSessionAction *)self changedContent])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextInputSessionAction.m" lineNumber:230 description:{@"Attempted to set removedPunctuationCount on an action of class %@, which does not support changing content", v8}];
  }

  self->_removedPunctuationCount = count;
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

- (BOOL)isMergeableWith:(id)with
{
  withCopy = with;
  source = [(_UITextInputSessionAction *)self source];
  if (source == [withCopy source] && (v6 = -[_UITextInputSessionAction flagOptions](self, "flagOptions"), v6 == objc_msgSend(withCopy, "flagOptions")) && (v7 = -[_UITextInputSessionAction textInputActionsSource](self, "textInputActionsSource"), v7 == objc_msgSend(withCopy, "textInputActionsSource")) && (v8 = -[_UITextInputSessionAction textInputActionsType](self, "textInputActionsType"), v8 == objc_msgSend(withCopy, "textInputActionsType")))
  {
    inputModeUniqueString = [(_UITextInputSessionAction *)self inputModeUniqueString];
    inputModeUniqueString2 = [withCopy inputModeUniqueString];
    if ([inputModeUniqueString isEqualToString:inputModeUniqueString2])
    {
      appBundleId = [(_UITextInputSessionAction *)self appBundleId];
      appBundleId2 = [withCopy appBundleId];
      v13 = [appBundleId isEqualToString:appBundleId2];
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