@interface _UITextInputControllerTokenizer
- (BOOL)_isDownstreamForDirection:(int64_t)direction atPosition:(id)position;
- (_UITextInputControllerTokenizer)initWithTextInputController:(id)controller;
- (id)_closestTokenSubrangeForPosition:(id)position granularity:(int64_t)granularity downstream:(BOOL)downstream;
- (id)_positionFromPosition:(id)position offset:(unint64_t)offset affinity:(int64_t)affinity;
- (int64_t)_indexForTextPosition:(id)position;
- (void)dealloc;
- (void)setTokenizer:(uint64_t)tokenizer forGranularity:;
@end

@implementation _UITextInputControllerTokenizer

- (_UITextInputControllerTokenizer)initWithTextInputController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = _UITextInputControllerTokenizer;
  v5 = [(UITextInputStringTokenizer *)&v9 initWithTextInput:controllerCopy];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_textInput, controllerCopy);
    v6->_tokenizerRange = xmmword_18A678470;
    v6->_wordTokenizerRange = xmmword_18A678470;
    v7 = v6;
  }

  return v6;
}

- (void)dealloc
{
  tokenizer = self->_tokenizer;
  if (tokenizer)
  {
    CFRelease(tokenizer);
  }

  wordTokenizer = self->_wordTokenizer;
  if (wordTokenizer)
  {
    CFRelease(wordTokenizer);
  }

  v5.receiver = self;
  v5.super_class = _UITextInputControllerTokenizer;
  [(_UITextInputControllerTokenizer *)&v5 dealloc];
}

- (void)setTokenizer:(uint64_t)tokenizer forGranularity:
{
  if (self)
  {
    if (tokenizer == 1)
    {
      v5 = &OBJC_IVAR____UITextInputControllerTokenizer__wordTokenizer;
    }

    else
    {
      v5 = &OBJC_IVAR____UITextInputControllerTokenizer__tokenizer;
    }

    v6 = *v5;
    v7 = *(self + v6);
    if (v7)
    {
      CFRelease(v7);
      v6 = *v5;
    }

    *(self + v6) = a2;
  }
}

- (BOOL)_isDownstreamForDirection:(int64_t)direction atPosition:(id)position
{
  positionCopy = position;
  if ((direction - 3) < 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    v8 = [WeakRetained writingDirectionAtPosition:positionCopy] == 1;
  }

  else
  {
    if (direction != 5 && direction != 2)
    {
      v11.receiver = self;
      v11.super_class = _UITextInputControllerTokenizer;
      v9 = [(UITextInputStringTokenizer *)&v11 _isDownstreamForDirection:direction atPosition:positionCopy];
      goto LABEL_10;
    }

    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    v8 = [WeakRetained writingDirectionAtPosition:positionCopy] == 0;
  }

  v9 = v8;

LABEL_10:
  return v9;
}

- (id)_positionFromPosition:(id)position offset:(unint64_t)offset affinity:(int64_t)affinity
{
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  textLayoutController = [WeakRetained textLayoutController];
  v11 = [textLayoutController positionFromPosition:positionCopy offset:offset affinity:affinity];

  return v11;
}

- (int64_t)_indexForTextPosition:(id)position
{
  positionCopy = position;
  v5 = objc_loadWeakRetained(&self->_textInput);
  beginningOfDocument = [v5 beginningOfDocument];
  v7 = [v5 offsetFromPosition:beginningOfDocument toPosition:positionCopy];

  return v7;
}

- (id)_closestTokenSubrangeForPosition:(id)position granularity:(int64_t)granularity downstream:(BOOL)downstream
{
  positionCopy = position;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3010000000;
  v49 = "";
  v50 = xmmword_18A678470;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__215;
  v44 = __Block_byref_object_dispose__215;
  v45 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  v10 = WeakRetained;
  granularityCopy = granularity;
  if (!granularity)
  {
    goto LABEL_6;
  }

  if (granularity != 4)
  {
    granularityCopy = [(UITextInputStringTokenizer *)self _distanceForTokenizerWithGranularity:granularity];
LABEL_6:
    _textStorage = [v10 _textStorage];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __91___UITextInputControllerTokenizer__closestTokenSubrangeForPosition_granularity_downstream___block_invoke;
    v33[3] = &unk_1E7126C98;
    v35 = &v40;
    v33[4] = self;
    v37 = granularityCopy;
    granularityCopy2 = granularity;
    v34 = positionCopy;
    v36 = &v46;
    downstreamCopy = downstream;
    [_textStorage coordinateReading:v33];

    goto LABEL_14;
  }

  textLayoutController = [WeakRetained textLayoutController];
  if (dyld_program_sdk_at_least())
  {
    v13 = [textLayoutController affinityForPosition:positionCopy];
  }

  else if (downstream)
  {
    v13 = 0;
  }

  else
  {
    v15 = objc_loadWeakRetained(&self->_textInput);
    v13 = [v15 selectionAffinity] == 1;
  }

  v16 = [textLayoutController textRangeForLineEnclosingPosition:positionCopy effectiveAffinity:v13];
  v17 = [textLayoutController characterRangeForTextRange:v16];
  v18 = v47;
  v47[4] = v17;
  v18[5] = v19;
  v20 = [textLayoutController attributedTextInRange:v16];
  string = [v20 string];
  v22 = v41[5];
  v41[5] = string;

  if (v47[5])
  {
    newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v24 = [newlineCharacterSet longCharacterIsMember:{objc_msgSend(v41[5], "_lastLongCharacter")}];

    if (v24)
    {
      v25 = v47[5];
      [v41[5] _rangeOfLongCharacterAtIndex:{objc_msgSend(v41[5], "length") - 1}];
      v47[5] = v25 - v26;
      _stringByTrimmingLastCharacter = [v41[5] _stringByTrimmingLastCharacter];
      v28 = v41[5];
      v41[5] = _stringByTrimmingLastCharacter;
    }
  }

LABEL_14:
  v29 = [_UITextInputStringTokenizerSubrange subrangeWithSubstring:v41[5] basePosition:positionCopy];
  v30 = objc_loadWeakRetained(&self->_textInput);
  beginningOfDocument = [v30 beginningOfDocument];
  [v29 setIndexOfBase:{objc_msgSend(v30, "offsetFromPosition:toPosition:", beginningOfDocument, positionCopy)}];

  [v29 setRelevantRange:{v47[4], v47[5]}];
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);

  return v29;
}

@end