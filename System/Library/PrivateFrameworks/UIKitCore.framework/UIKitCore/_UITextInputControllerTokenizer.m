@interface _UITextInputControllerTokenizer
- (BOOL)_isDownstreamForDirection:(int64_t)a3 atPosition:(id)a4;
- (_UITextInputControllerTokenizer)initWithTextInputController:(id)a3;
- (id)_closestTokenSubrangeForPosition:(id)a3 granularity:(int64_t)a4 downstream:(BOOL)a5;
- (id)_positionFromPosition:(id)a3 offset:(unint64_t)a4 affinity:(int64_t)a5;
- (int64_t)_indexForTextPosition:(id)a3;
- (void)dealloc;
- (void)setTokenizer:(uint64_t)a3 forGranularity:;
@end

@implementation _UITextInputControllerTokenizer

- (_UITextInputControllerTokenizer)initWithTextInputController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UITextInputControllerTokenizer;
  v5 = [(UITextInputStringTokenizer *)&v9 initWithTextInput:v4];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_textInput, v4);
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

- (void)setTokenizer:(uint64_t)a3 forGranularity:
{
  if (a1)
  {
    if (a3 == 1)
    {
      v5 = &OBJC_IVAR____UITextInputControllerTokenizer__wordTokenizer;
    }

    else
    {
      v5 = &OBJC_IVAR____UITextInputControllerTokenizer__tokenizer;
    }

    v6 = *v5;
    v7 = *(a1 + v6);
    if (v7)
    {
      CFRelease(v7);
      v6 = *v5;
    }

    *(a1 + v6) = a2;
  }
}

- (BOOL)_isDownstreamForDirection:(int64_t)a3 atPosition:(id)a4
{
  v6 = a4;
  if ((a3 - 3) < 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    v8 = [WeakRetained writingDirectionAtPosition:v6] == 1;
  }

  else
  {
    if (a3 != 5 && a3 != 2)
    {
      v11.receiver = self;
      v11.super_class = _UITextInputControllerTokenizer;
      v9 = [(UITextInputStringTokenizer *)&v11 _isDownstreamForDirection:a3 atPosition:v6];
      goto LABEL_10;
    }

    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    v8 = [WeakRetained writingDirectionAtPosition:v6] == 0;
  }

  v9 = v8;

LABEL_10:
  return v9;
}

- (id)_positionFromPosition:(id)a3 offset:(unint64_t)a4 affinity:(int64_t)a5
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  v10 = [WeakRetained textLayoutController];
  v11 = [v10 positionFromPosition:v8 offset:a4 affinity:a5];

  return v11;
}

- (int64_t)_indexForTextPosition:(id)a3
{
  v4 = a3;
  v5 = objc_loadWeakRetained(&self->_textInput);
  v6 = [v5 beginningOfDocument];
  v7 = [v5 offsetFromPosition:v6 toPosition:v4];

  return v7;
}

- (id)_closestTokenSubrangeForPosition:(id)a3 granularity:(int64_t)a4 downstream:(BOOL)a5
{
  v8 = a3;
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
  v11 = a4;
  if (!a4)
  {
    goto LABEL_6;
  }

  if (a4 != 4)
  {
    v11 = [(UITextInputStringTokenizer *)self _distanceForTokenizerWithGranularity:a4];
LABEL_6:
    v14 = [v10 _textStorage];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __91___UITextInputControllerTokenizer__closestTokenSubrangeForPosition_granularity_downstream___block_invoke;
    v33[3] = &unk_1E7126C98;
    v35 = &v40;
    v33[4] = self;
    v37 = v11;
    v38 = a4;
    v34 = v8;
    v36 = &v46;
    v39 = a5;
    [v14 coordinateReading:v33];

    goto LABEL_14;
  }

  v12 = [WeakRetained textLayoutController];
  if (dyld_program_sdk_at_least())
  {
    v13 = [v12 affinityForPosition:v8];
  }

  else if (a5)
  {
    v13 = 0;
  }

  else
  {
    v15 = objc_loadWeakRetained(&self->_textInput);
    v13 = [v15 selectionAffinity] == 1;
  }

  v16 = [v12 textRangeForLineEnclosingPosition:v8 effectiveAffinity:v13];
  v17 = [v12 characterRangeForTextRange:v16];
  v18 = v47;
  v47[4] = v17;
  v18[5] = v19;
  v20 = [v12 attributedTextInRange:v16];
  v21 = [v20 string];
  v22 = v41[5];
  v41[5] = v21;

  if (v47[5])
  {
    v23 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v24 = [v23 longCharacterIsMember:{objc_msgSend(v41[5], "_lastLongCharacter")}];

    if (v24)
    {
      v25 = v47[5];
      [v41[5] _rangeOfLongCharacterAtIndex:{objc_msgSend(v41[5], "length") - 1}];
      v47[5] = v25 - v26;
      v27 = [v41[5] _stringByTrimmingLastCharacter];
      v28 = v41[5];
      v41[5] = v27;
    }
  }

LABEL_14:
  v29 = [_UITextInputStringTokenizerSubrange subrangeWithSubstring:v41[5] basePosition:v8];
  v30 = objc_loadWeakRetained(&self->_textInput);
  v31 = [v30 beginningOfDocument];
  [v29 setIndexOfBase:{objc_msgSend(v30, "offsetFromPosition:toPosition:", v31, v8)}];

  [v29 setRelevantRange:{v47[4], v47[5]}];
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);

  return v29;
}

@end