@interface SUICStreamingTextView
- (CGImage)_imageRefForImage:(id)image;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUICStreamingTextView)initWithCoder:(id)coder;
- (SUICStreamingTextView)initWithFrame:(CGRect)frame;
- (SUICStreamingTextViewDelegate)streamingTextViewDelegate;
- (_NSRange)underlinedRange;
- (id)_createEditTextImage;
- (id)_createGlyphImage:(CGRect)image glyphRange:(_NSRange)range layoutManager:(id)manager isUnderlined:(BOOL)underlined;
- (id)_glyphImageForWord:(id)word frame:(CGRect)frame glyphRange:(_NSRange)range textColor:(id)color;
- (id)_substringRangesContainingEmojiInString:(id)string startingIndex:(int64_t)index;
- (void)_animateLayers;
- (void)_animateWordIn:(id)in;
- (void)_animateWordInSAE:(id)e displacement:(double)displacement;
- (void)_animateWordOut:(id)out;
- (void)_carouselWordOut:(id)out speed:(double)speed displacement:(double)displacement;
- (void)_layoutFrames;
- (void)_renderByWord;
- (void)_renderInFull;
- (void)_resetState;
- (void)_setShowEditTextImageWithoutRelayout:(BOOL)relayout;
- (void)_sharedInit;
- (void)_updateText:(id)text;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setEndTextColor:(id)color;
- (void)setFont:(id)font;
- (void)setFrame:(CGRect)frame;
- (void)setShowEditTextImage:(BOOL)image;
- (void)setUnderlinedRange:(_NSRange)range;
- (void)setWords:(id)words;
- (void)setWords:(id)words showEditImage:(BOOL)image useCarouselAnimation:(BOOL)animation;
- (void)updateLastWord;
@end

@implementation SUICStreamingTextView

- (SUICStreamingTextView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SUICStreamingTextView;
  v3 = [(SUICStreamingTextView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SUICStreamingTextView *)v3 _sharedInit];
  }

  return v4;
}

- (SUICStreamingTextView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SUICStreamingTextView;
  v3 = [(SUICStreamingTextView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(SUICStreamingTextView *)v3 _sharedInit];
  }

  return v4;
}

- (void)_sharedInit
{
  v3 = objc_alloc_init(_TtC10SiriUICore26SUICStreamingLayoutManager);
  layoutManager = self->_layoutManager;
  self->_layoutManager = v3;

  v5 = objc_alloc_init(MEMORY[0x1E69DB850]);
  textStorage = self->_textStorage;
  self->_textStorage = v5;

  [(SUICStreamingLayoutManager *)self->_layoutManager setTextStorage:self->_textStorage];
  [(NSTextStorage *)self->_textStorage addLayoutManager:self->_layoutManager];
  v7 = objc_alloc(MEMORY[0x1E69DB800]);
  [(SUICStreamingTextView *)self bounds];
  v8 = [v7 initWithSize:{CGRectGetWidth(v26), 1.79769313e308}];
  textContainer = self->_textContainer;
  self->_textContainer = v8;

  [(NSTextContainer *)self->_textContainer setLineFragmentPadding:0.0];
  [(SUICStreamingLayoutManager *)self->_layoutManager addTextContainer:self->_textContainer];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  words = self->_words;
  self->_words = v10;

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  wordsToShow = self->_wordsToShow;
  self->_wordsToShow = v12;

  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  wordsToDelete = self->_wordsToDelete;
  self->_wordsToDelete = v14;

  self->_centerAlign = 0;
  self->_renderEmojis = 1;
  self->_animationDuration = 0.4;
  self->_animated = 1;
  self->_showEditTextImage = 0;
  editTextSymbol = self->_editTextSymbol;
  self->_editTextSymbol = @"chevron.forward";

  self->_renderByWord = 1;
  v17 = [MEMORY[0x1E69DC888] colorWithRed:0.18 green:0.6 blue:0.82 alpha:1.0];
  startTextColor = self->_startTextColor;
  self->_startTextColor = v17;

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  endTextColor = self->_endTextColor;
  self->_endTextColor = whiteColor;

  v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  font = self->_font;
  self->_font = v21;

  layer = [MEMORY[0x1E6979398] layer];
  fullTextViewLayer = self->_fullTextViewLayer;
  self->_fullTextViewLayer = layer;

  [(SUICStreamingTextView *)self setHyphenationFactor:1.0];

  [(SUICStreamingTextView *)self _updateAnimatedInternal];
}

- (void)setWords:(id)words
{
  [(SUICStreamingTextView *)self _updateText:words];
  [(SUICStreamingTextView *)self setNeedsLayout];
  [(SUICStreamingTextView *)self layoutIfNeeded];

  [(SUICStreamingTextView *)self _resetState];
}

- (void)setWords:(id)words showEditImage:(BOOL)image useCarouselAnimation:(BOOL)animation
{
  imageCopy = image;
  wordsCopy = words;
  if (![wordsCopy isEqualToArray:self->_words] || self->_showEditTextImage != imageCopy)
  {
    self->_carouselWordsToDelete = animation;
    [(SUICStreamingTextView *)self _setShowEditTextImageWithoutRelayout:imageCopy];
    [(SUICStreamingTextView *)self setWords:wordsCopy];
  }
}

- (void)setEndTextColor:(id)color
{
  v20 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  self->_animatedInternal = 0;
  objc_storeStrong(&self->_endTextColor, color);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_wordsToShow;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        [v11 setInsertType:{1, v15}];
        wordLayer = [v11 wordLayer];
        [wordLayer removeFromSuperlayer];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([MEMORY[0x1E698D258] saeAvailable])
  {
    if ([(SUICStreamingTextView *)self showEditTextImage])
    {
      _createEditTextImage = [(SUICStreamingTextView *)self _createEditTextImage];
      editTextImage = self->_editTextImage;
      self->_editTextImage = _createEditTextImage;
    }

    [(SUICStreamingTextView *)self updateLastWord];
  }

  [(SUICStreamingTextView *)self setNeedsLayout];
  [(SUICStreamingTextView *)self layoutIfNeeded];
  [(SUICStreamingTextView *)self _updateAnimatedInternal];
}

- (void)setFont:(id)font
{
  fontCopy = font;
  v6 = fontCopy;
  if (self->_font != fontCopy)
  {
    v9 = fontCopy;
    objc_storeStrong(&self->_font, font);
    fontCopy = [(SUICStreamingTextView *)self showEditTextImage];
    v6 = v9;
    if (fontCopy)
    {
      _createEditTextImage = [(SUICStreamingTextView *)self _createEditTextImage];
      editTextImage = self->_editTextImage;
      self->_editTextImage = _createEditTextImage;

      v6 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](fontCopy, v6);
}

- (void)_setShowEditTextImageWithoutRelayout:(BOOL)relayout
{
  if (self->_showEditTextImage != relayout)
  {
    self->_showEditTextImage = relayout;
    if (relayout)
    {
      _createEditTextImage = [(SUICStreamingTextView *)self _createEditTextImage];
    }

    else
    {
      _createEditTextImage = 0;
    }

    editTextImage = self->_editTextImage;
    self->_editTextImage = _createEditTextImage;

    if (!self->_carouselWordsToDelete)
    {
      lastObject = [(NSMutableArray *)self->_wordsToShow lastObject];
      if (lastObject)
      {
        v7 = lastObject;
        [lastObject setInsertType:4];
        lastObject = v7;
      }
    }
  }
}

- (void)setShowEditTextImage:(BOOL)image
{
  if (self->_showEditTextImage != image)
  {
    self->_showEditTextImage = image;
    if (image)
    {
      _createEditTextImage = [(SUICStreamingTextView *)self _createEditTextImage];
    }

    else
    {
      _createEditTextImage = 0;
    }

    editTextImage = self->_editTextImage;
    self->_editTextImage = _createEditTextImage;

    [(SUICStreamingTextView *)self updateLastWord];
  }
}

- (void)updateLastWord
{
  lastObject = [(NSMutableArray *)self->_wordsToShow lastObject];
  if (lastObject)
  {
    v4 = lastObject;
    [lastObject setInsertType:4];
    [(SUICStreamingTextView *)self setWords:self->_words];
    lastObject = v4;
  }
}

- (void)setUnderlinedRange:(_NSRange)range
{
  v17 = *MEMORY[0x1E69E9840];
  if (range.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    length = range.length;
    location = range.location;
    if (range.location + range.length <= [(NSTextStorage *)self->_textStorage length]&& (location != self->_underlinedRange.location || length != self->_underlinedRange.length))
    {
      self->_underlinedRange.location = location;
      self->_underlinedRange.length = length;
      if (self->_renderByWord)
      {
        v14 = 0u;
        v15 = 0u;
        v12 = 0u;
        v13 = 0u;
        v6 = self->_wordsToShow;
        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v13;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v13 != v9)
              {
                objc_enumerationMutation(v6);
              }

              wordLayer = [*(*(&v12 + 1) + 8 * i) wordLayer];
              [wordLayer removeFromSuperlayer];
            }

            v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
          }

          while (v8);
        }
      }

      self->_renderByWord = 0;
      [(SUICStreamingTextView *)self setNeedsLayout];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(NSTextContainer *)self->_textContainer size:fits.width];
  v6 = v5;
  v8 = v7;
  [(NSTextContainer *)self->_textContainer setSize:width, 1.79769313e308];
  [(SUICStreamingLayoutManager *)self->_layoutManager ensureLayoutForTextContainer:self->_textContainer];
  [(SUICStreamingLayoutManager *)self->_layoutManager usedRectForTextContainer:self->_textContainer];
  v10 = v9;
  v12 = v11;
  [(NSTextContainer *)self->_textContainer setSize:v6, v8];
  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(NSTextContainer *)self->_textContainer setSize:CGRectGetWidth(frame), 1.79769313e308];
  v8.receiver = self;
  v8.super_class = SUICStreamingTextView;
  [(SUICStreamingTextView *)&v8 setFrame:x, y, width, height];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(NSTextContainer *)self->_textContainer setSize:CGRectGetWidth(bounds), 1.79769313e308];
  v8.receiver = self;
  v8.super_class = SUICStreamingTextView;
  [(SUICStreamingTextView *)&v8 setBounds:x, y, width, height];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SUICStreamingTextView;
  [(SUICStreamingTextView *)&v3 layoutSubviews];
  [(SUICStreamingTextView *)self _layoutFrames];
}

- (void)_updateText:(id)text
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = -1;
  v5 = [_SUICEditScriptIndexed editScriptFromArray:self->_words toArray:text orderAtomsAscending:1 operationPrecedence:-1];
  CompositionLanguageForLanguage = CTParagraphStyleGetCompositionLanguageForLanguage();
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __37__SUICStreamingTextView__updateText___block_invoke;
  v43[3] = &unk_1E81E8340;
  v43[4] = self;
  v31 = MEMORY[0x1C6937B00](v43);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __37__SUICStreamingTextView__updateText___block_invoke_2;
  v42[3] = &unk_1E81E8368;
  v42[4] = self;
  v7 = MEMORY[0x1C6937B00](v42);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __37__SUICStreamingTextView__updateText___block_invoke_3;
  v41[3] = &unk_1E81E8368;
  v41[4] = self;
  v8 = MEMORY[0x1C6937B00](v41);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v28 = v5;
  script = [v5 script];
  v10 = [script countByEnumeratingWithState:&v37 objects:v46 count:16];
  v29 = v8;
  v30 = v7;
  if (v10)
  {
    v11 = v10;
    v12 = *v38;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(script);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        editOperation = [v14 editOperation];
        if (editOperation == 3)
        {
          replacementText = [v14 replacementText];
          indexToEdit = [v14 indexToEdit];
          [(NSMutableArray *)self->_words replaceObjectAtIndex:indexToEdit withObject:replacementText];
          v31[2](v31, indexToEdit, 2);
          goto LABEL_12;
        }

        if (editOperation == 2)
        {
          replacementText = [v14 replacementText];
          indexToEdit = [v14 indexInArrayB];
          [(NSMutableArray *)self->_words insertObject:replacementText atIndex:indexToEdit];
          v29[2](v29, indexToEdit);
LABEL_12:

          goto LABEL_13;
        }

        if (editOperation != 1)
        {
          continue;
        }

        indexToEdit = [v14 indexToEdit];
        [(NSMutableArray *)self->_words removeObjectAtIndex:indexToEdit];
        v30[2](v30, indexToEdit);
LABEL_13:
        if (indexToEdit < v4)
        {
          v4 = indexToEdit;
        }

        if (CompositionLanguageForLanguage != 1 && indexToEdit - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v18 = [(NSMutableArray *)self->_wordsToShow objectAtIndexedSubscript:?];
          [v18 setInsertType:4];
        }
      }

      v11 = [script countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v11);
  }

  v19 = objc_alloc_init(MEMORY[0x1E696AD50]);
  while (v4 < [(NSMutableArray *)self->_wordsToShow count])
  {
    [v19 addIndex:v4++];
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __37__SUICStreamingTextView__updateText___block_invoke_4;
  v35[3] = &unk_1E81E8390;
  v35[4] = self;
  v20 = v31;
  v36 = v20;
  [v19 enumerateIndexesUsingBlock:v35];
  v21 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  if (self->_centerAlign)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2 * ([MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[SUICStreamingTextView semanticContentAttribute](self, "semanticContentAttribute")}] == 1);
  }

  [v21 setAlignment:v22];
  v44[0] = *MEMORY[0x1E69DB648];
  font = [(SUICStreamingTextView *)self font];
  v44[1] = *MEMORY[0x1E69DB688];
  v45[0] = font;
  v45[1] = v21;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];

  [(NSTextStorage *)self->_textStorage deleteCharactersInRange:0, [(NSTextStorage *)self->_textStorage length]];
  v25 = [(NSMutableArray *)self->_words count];
  words = self->_words;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __37__SUICStreamingTextView__updateText___block_invoke_5;
  v32[3] = &unk_1E81E83B8;
  v33 = v24;
  v34 = v25 - 1;
  v32[4] = self;
  v27 = v24;
  [(NSMutableArray *)words enumerateObjectsUsingBlock:v32];
}

void __37__SUICStreamingTextView__updateText___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [*(*(a1 + 32) + 440) objectAtIndexedSubscript:a2];
  v6 = objc_alloc_init(_SUICStreamingWord);
  [(_SUICStreamingWord *)v6 setPrevious:v7];
  [(_SUICStreamingWord *)v6 setInsertType:a3];
  [*(*(a1 + 32) + 440) replaceObjectAtIndex:a2 withObject:v6];
  [*(*(a1 + 32) + 448) addObject:v7];
}

void __37__SUICStreamingTextView__updateText___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 440) objectAtIndexedSubscript:a2];
  [*(*(a1 + 32) + 440) removeObjectAtIndex:a2];
  [*(*(a1 + 32) + 448) addObject:v4];
}

void __37__SUICStreamingTextView__updateText___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(_SUICStreamingWord);
  [(_SUICStreamingWord *)v4 setInsertType:1];
  [*(*(a1 + 32) + 440) insertObject:v4 atIndex:a2];
}

void __37__SUICStreamingTextView__updateText___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 440) objectAtIndexedSubscript:a2];
  if (![v3 insertType])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __37__SUICStreamingTextView__updateText___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v5 = [*(*(a1 + 32) + 440) objectAtIndexedSubscript:a3];
  if ([*(a1 + 32) showEditTextImage] && *(a1 + 48) == a3)
  {
    [v5 setTextRange:{objc_msgSend(*(*(a1 + 32) + 416), "length"), objc_msgSend(v13, "length") + 2}];
    v6 = [*(a1 + 32) _substringRangesContainingEmojiInString:v13 startingIndex:{objc_msgSend(*(*(a1 + 32) + 416), "length")}];
    [v5 setEmojiRangesInText:v6];

    v7 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v7 setImage:*(*(a1 + 32) + 464)];
    v8 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v13 attributes:*(a1 + 40)];
    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:*(a1 + 40)];
    [v8 appendAttributedString:v9];

    v10 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v7];
    [v8 appendAttributedString:v10];

    [*(*(a1 + 32) + 416) appendAttributedString:v8];
  }

  else
  {
    [v5 setTextRange:{objc_msgSend(*(*(a1 + 32) + 416), "length"), objc_msgSend(v13, "length")}];
    v11 = [*(a1 + 32) _substringRangesContainingEmojiInString:v13 startingIndex:{objc_msgSend(*(*(a1 + 32) + 416), "length")}];
    [v5 setEmojiRangesInText:v11];

    v12 = *(*(a1 + 32) + 416);
    v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v13 attributes:*(a1 + 40)];
    [v12 appendAttributedString:v7];
  }
}

- (void)_layoutFrames
{
  [(NSTextContainer *)self->_textContainer size];
  if (v3 == 0.0)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v6 = v5;

    textContainer = self->_textContainer;
    [(NSTextContainer *)textContainer size];
    [(NSTextContainer *)textContainer setSize:v6];
  }

  [(NSTextContainer *)self->_textContainer size];
  if (v8 == 0.0)
  {
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 bounds];

    v10 = self->_textContainer;
    [(NSTextContainer *)v10 size];
    [(NSTextContainer *)v10 setSize:?];
  }

  [(SUICStreamingLayoutManager *)self->_layoutManager ensureLayoutForTextContainer:self->_textContainer];
  if (self->_renderByWord)
  {

    [(SUICStreamingTextView *)self _renderByWord];
  }

  else
  {

    [(SUICStreamingTextView *)self _renderInFull];
  }
}

- (void)_renderByWord
{
  v65 = *MEMORY[0x1E69E9840];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = self->_wordsToShow;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v3)
  {
    v4 = v3;
    v54 = *v60;
    do
    {
      v5 = 0;
      do
      {
        if (*v60 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v59 + 1) + 8 * v5);
        layoutManager = self->_layoutManager;
        textRange = [v6 textRange];
        v10 = [(SUICStreamingLayoutManager *)layoutManager glyphRangeForCharacterRange:textRange actualCharacterRange:v9, 0];
        v12 = v11;
        [(SUICStreamingLayoutManager *)self->_layoutManager boundingRectForGlyphRange:v10 inTextContainer:v11, self->_textContainer];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        [(SUICStreamingLayoutManager *)self->_layoutManager locationForGlyphAtIndex:v10];
        v22 = v21;
        previous = [v6 previous];
        if (previous)
        {
          previous2 = [v6 previous];
        }

        else
        {
          previous2 = v6;
        }

        v25 = previous2;
        v26 = v22 - v14;
        v27 = roundf(v26);

        if ([(SUICStreamingTextView *)self showEditTextImage])
        {
          v28 = 0;
        }

        else
        {
          [v25 glyphLocationInWordX];
          v28 = vabdd_f64(v29, v27) < 0.00000011920929;
        }

        [v6 setGlyphLocationInWordX:v27];
        insertType = [v6 insertType];
        v31 = 0;
        if (insertType > 2)
        {
          if (insertType == 3)
          {
            if (v28)
            {
              previous3 = [v6 previous];
              beginImage = [previous3 beginImage];
              v31 = [beginImage copy];

              previous4 = [v6 previous];
              endImage = [previous4 endImage];
              v32 = [endImage copy];

              goto LABEL_23;
            }

LABEL_22:
            v31 = [(SUICStreamingTextView *)self _glyphImageForWord:v6 frame:v10 glyphRange:v12 textColor:self->_startTextColor, v14, v16, v18, v20];
            v32 = [(SUICStreamingTextView *)self _glyphImageForWord:v6 frame:v10 glyphRange:v12 textColor:self->_endTextColor, v14, v16, v18, v20];
            goto LABEL_23;
          }

          v32 = 0;
          if (insertType == 4)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if ((insertType - 1) < 2)
          {
            goto LABEL_22;
          }

          v32 = 0;
          if (!insertType)
          {
            if (v28)
            {
              v31 = 0;
              v32 = 0;
            }

            else
            {
              v31 = [(SUICStreamingTextView *)self _glyphImageForWord:v6 frame:v10 glyphRange:v12 textColor:self->_startTextColor, v14, v16, v18, v20];
              v32 = [(SUICStreamingTextView *)self _glyphImageForWord:v6 frame:v10 glyphRange:v12 textColor:self->_endTextColor, v14, v16, v18, v20];
              wordLayer = [v6 wordLayer];
              [wordLayer removeFromSuperlayer];

              layer = [MEMORY[0x1E6979398] layer];
              [v6 setWordLayer:layer];

              [v6 setInsertType:1];
            }
          }
        }

LABEL_23:
        wordLayer2 = [v6 wordLayer];
        [wordLayer2 setFrame:{v14, v16, v18, v20}];

        if (v31)
        {
          [v6 setBeginImage:v31];
        }

        if (v32)
        {
          [v6 setEndImage:v32];
          wordLayer3 = [v6 wordLayer];
          endImage2 = [v6 endImage];
          [wordLayer3 setContents:{-[SUICStreamingTextView _imageRefForImage:](self, "_imageRefForImage:", endImage2)}];
        }

        wordLayer4 = [v6 wordLayer];
        superlayer = [wordLayer4 superlayer];

        if (!superlayer)
        {
          layer2 = [(SUICStreamingTextView *)self layer];
          wordLayer5 = [v6 wordLayer];
          [layer2 addSublayer:wordLayer5];
        }

        ++v5;
      }

      while (v4 != v5);
      v46 = [(NSMutableArray *)obj countByEnumeratingWithState:&v59 objects:v64 count:16];
      v4 = v46;
    }

    while (v46);
  }

  if (self->_animatedInternal)
  {
    [(SUICStreamingTextView *)self _animateLayers];
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v47 = self->_wordsToDelete;
    v48 = [(NSMutableSet *)v47 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v56;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v56 != v50)
          {
            objc_enumerationMutation(v47);
          }

          wordLayer6 = [*(*(&v55 + 1) + 8 * i) wordLayer];
          [wordLayer6 removeFromSuperlayer];
        }

        v49 = [(NSMutableSet *)v47 countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v49);
    }
  }
}

- (void)_renderInFull
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = [(NSTextStorage *)self->_textStorage length];
  [(NSTextStorage *)self->_textStorage addAttribute:*MEMORY[0x1E69DB650] value:self->_endTextColor range:0, v3];
  v4 = [(UIColor *)self->_endTextColor colorWithAlphaComponent:0.5];
  v6 = *MEMORY[0x1E69DB750];
  v19[0] = *MEMORY[0x1E69DB758];
  v5 = v19[0];
  v19[1] = v6;
  v20[0] = &unk_1F43C7440;
  v20[1] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  [(NSTextStorage *)self->_textStorage removeAttribute:v5 range:0, v3];
  [(NSTextStorage *)self->_textStorage addAttributes:v7 range:self->_underlinedRange.location, self->_underlinedRange.length];
  [(SUICStreamingLayoutManager *)self->_layoutManager boundingRectForGlyphRange:0 inTextContainer:v3, self->_textContainer];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(SUICStreamingTextView *)self _createGlyphImage:0 glyphRange:v3 layoutManager:self->_layoutManager isUnderlined:self->_underlinedRange.length != 0];
  [(CALayer *)self->_fullTextViewLayer setFrame:v9, v11, v13, v15];
  [(CALayer *)self->_fullTextViewLayer setContents:[(SUICStreamingTextView *)self _imageRefForImage:v16]];
  superlayer = [(CALayer *)self->_fullTextViewLayer superlayer];

  if (!superlayer)
  {
    layer = [(SUICStreamingTextView *)self layer];
    [layer addSublayer:self->_fullTextViewLayer];
  }
}

- (void)_animateLayers
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_wordsToShow valueForKeyPath:@"@max.wordLayer.frame.size.height"];
  [v3 doubleValue];
  v5 = v4;

  v6 = [(NSMutableSet *)self->_wordsToDelete valueForKeyPath:@"@max.wordLayer.frame.origin.y"];
  [v6 doubleValue];
  v8 = v7;

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = self->_wordsToShow;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    v13 = v5 + v8 + 10.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        if (([v15 insertType] - 1) <= 2)
        {
          if ([MEMORY[0x1E698D258] saeAvailable])
          {
            [(SUICStreamingTextView *)self _animateWordInSAE:v15 displacement:v13];
          }

          else
          {
            [(SUICStreamingTextView *)self _animateWordIn:v15];
          }
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v11);
  }

  if ([(NSMutableSet *)self->_wordsToDelete count])
  {
    [MEMORY[0x1E6979518] begin];
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v17 = MEMORY[0x1E6979518];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __39__SUICStreamingTextView__animateLayers__block_invoke;
    v36[3] = &unk_1E81E7B88;
    v18 = v16;
    v37 = v18;
    [v17 setCompletionBlock:v36];
    v19 = [(NSMutableSet *)self->_wordsToDelete valueForKeyPath:@"@max.wordLayer.frame.size.height"];
    [v19 doubleValue];
    v21 = v20;

    animationDuration = self->_animationDuration;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = self->_wordsToDelete;
    v24 = [(NSMutableSet *)v23 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = (v8 + v21 + 10.0) / (animationDuration * 0.5);
      v27 = *v33;
      v28 = v21 + 10.0;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v30 = *(*(&v32 + 1) + 8 * j);
          if (self->_carouselWordsToDelete)
          {
            [(SUICStreamingTextView *)self _carouselWordOut:v30 speed:v26 displacement:v28];
          }

          else
          {
            [(SUICStreamingTextView *)self _animateWordOut:v30, v32];
          }

          wordLayer = [v30 wordLayer];
          [v18 addObject:wordLayer];
        }

        v25 = [(NSMutableSet *)v23 countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v25);
    }

    [MEMORY[0x1E6979518] commit];
    self->_carouselWordsToDelete = 0;
  }
}

void __39__SUICStreamingTextView__animateLayers__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) removeFromSuperlayer];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_animateWordIn:(id)in
{
  v4 = MEMORY[0x1E6979318];
  inCopy = in;
  v11 = [v4 animationWithKeyPath:@"contents"];
  [v11 setDuration:self->_animationDuration];
  beginImage = [inCopy beginImage];
  [v11 setFromValue:{-[SUICStreamingTextView _imageRefForImage:](self, "_imageRefForImage:", beginImage)}];

  endImage = [inCopy endImage];
  [v11 setToValue:{-[SUICStreamingTextView _imageRefForImage:](self, "_imageRefForImage:", endImage)}];

  wordLayer = [inCopy wordLayer];
  [wordLayer addAnimation:v11 forKey:@"contents"];

  v9 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v9 setDuration:self->_animationDuration];
  [v9 setFromValue:&unk_1F43C75A0];
  [v9 setToValue:&unk_1F43C75B0];
  wordLayer2 = [inCopy wordLayer];

  [wordLayer2 addAnimation:v9 forKey:@"opacity"];
}

- (void)_animateWordInSAE:(id)e displacement:(double)displacement
{
  eCopy = e;
  v13 = eCopy;
  if (self->_editTextImage && !self->_carouselWordsToDelete)
  {
    if ([eCopy insertType] != 1)
    {
      [(SUICStreamingTextView *)self _animateWordIn:v13];
    }
  }

  else
  {
    v7 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.blurFilter.inputRadius"];
    [v7 setAdditive:1];
    [v7 setDuration:self->_animationDuration];
    v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v7 setTimingFunction:v8];

    [v7 setFromValue:&unk_1F43C75C0];
    [v7 setToValue:&unk_1F43C7428];
    wordLayer = [v13 wordLayer];
    [wordLayer addAnimation:v7 forKey:@"blurIn"];

    v10 = [objc_alloc(MEMORY[0x1E69794A8]) initWithPerceptualDuration:self->_animationDuration bounce:0.35];
    [v10 setKeyPath:@"transform.translation.y"];
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:displacement];
    [v10 setFromValue:v11];

    [v10 setToValue:&unk_1F43C7428];
    wordLayer2 = [v13 wordLayer];
    [wordLayer2 addAnimation:v10 forKey:@"moveUp"];
  }
}

- (void)_animateWordOut:(id)out
{
  outCopy = out;
  if ([MEMORY[0x1E698D258] saeAvailable])
  {
    v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.blurFilter.inputRadius"];
    [v4 setAdditive:1];
    [v4 setDuration:self->_animationDuration];
    [v4 setByValue:&unk_1F43C75C0];
    wordLayer = [outCopy wordLayer];
    [wordLayer addAnimation:v4 forKey:@"blurOut"];
  }

  v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  wordLayer2 = [outCopy wordLayer];
  [wordLayer2 setOpacity:0.0];

  [v6 setDuration:self->_animationDuration];
  [v6 setFromValue:&unk_1F43C75B0];
  [v6 setToValue:&unk_1F43C75A0];
  wordLayer3 = [outCopy wordLayer];
  [wordLayer3 addAnimation:v6 forKey:@"opacity"];
}

- (void)_carouselWordOut:(id)out speed:(double)speed displacement:(double)displacement
{
  outCopy = out;
  wordLayer = [outCopy wordLayer];
  [wordLayer frame];
  v10 = -v9 - displacement;

  wordLayer2 = [outCopy wordLayer];
  [wordLayer2 frame];
  v13 = v12 + displacement;

  v14 = v13 / speed;
  v22 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.blurFilter.inputRadius"];
  [v22 setAdditive:1];
  [v22 setDuration:v14];
  [v22 setByValue:&unk_1F43C75C0];
  wordLayer3 = [outCopy wordLayer];
  [wordLayer3 addAnimation:v22 forKey:@"blurOut"];

  v16 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  wordLayer4 = [outCopy wordLayer];
  [wordLayer4 setOpacity:0.0];

  [v16 setDuration:v14];
  [v16 setFromValue:&unk_1F43C75B0];
  [v16 setToValue:&unk_1F43C75A0];
  wordLayer5 = [outCopy wordLayer];
  [wordLayer5 addAnimation:v16 forKey:@"opacity"];

  v19 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.y"];
  [v19 setDuration:v14];
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  [v19 setByValue:v20];

  wordLayer6 = [outCopy wordLayer];

  [wordLayer6 addAnimation:v19 forKey:@"moveOut"];
}

- (void)_resetState
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_wordsToShow;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setPrevious:{0, v9}];
        [v8 setInsertType:0];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_wordsToDelete removeAllObjects];
}

- (id)_substringRangesContainingEmojiInString:(id)string startingIndex:(int64_t)index
{
  stringCopy = string;
  v6 = [SUICUtilities substringRangesContainingEmojiInString:stringCopy];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2;
  v14 = __Block_byref_object_dispose__2;
  array = [MEMORY[0x1E695DF70] array];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__SUICStreamingTextView__substringRangesContainingEmojiInString_startingIndex___block_invoke;
  v9[3] = &unk_1E81E83E0;
  v9[4] = &v10;
  v9[5] = index;
  [v6 enumerateObjectsUsingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __79__SUICStreamingTextView__substringRangesContainingEmojiInString_startingIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = MEMORY[0x1E696B098];
  v5 = a2;
  v6 = [v5 rangeValue];
  v7 = *(a1 + 40);
  [v5 rangeValue];
  v9 = v8;

  v10 = [v4 valueWithRange:{v6 + v7, v9}];
  [v3 addObject:v10];
}

- (id)_glyphImageForWord:(id)word frame:(CGRect)frame glyphRange:(_NSRange)range textColor:(id)color
{
  length = range.length;
  location = range.location;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v59 = *MEMORY[0x1E69E9840];
  wordCopy = word;
  colorCopy = color;
  renderEmojisOnly = [(SUICStreamingTextView *)self renderEmojisOnly];
  textStorage = self->_textStorage;
  v18 = *MEMORY[0x1E69DB650];
  if (renderEmojisOnly)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    textRange = [wordCopy textRange];
    [(NSTextStorage *)textStorage addAttribute:v18 value:clearColor range:textRange, v21];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    emojiRangesInText = [wordCopy emojiRangesInText];
    v23 = [emojiRangesInText countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v23)
    {
      v24 = v23;
      v45 = wordCopy;
      v47 = location;
      v25 = *v54;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v54 != v25)
          {
            objc_enumerationMutation(emojiRangesInText);
          }

          v27 = self->_textStorage;
          rangeValue = [*(*(&v53 + 1) + 8 * i) rangeValue];
          [(NSTextStorage *)v27 addAttribute:v18 value:colorCopy range:rangeValue, v29];
        }

        v24 = [emojiRangesInText countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v24);
      wordCopy = v45;
      location = v47;
    }
  }

  else
  {
    textRange2 = [wordCopy textRange];
    [(NSTextStorage *)textStorage addAttribute:v18 value:colorCopy range:textRange2, v31];
    if ([(SUICStreamingTextView *)self renderEmojis])
    {
      goto LABEL_20;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    emojiRangesInText = [wordCopy emojiRangesInText];
    v32 = [emojiRangesInText countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v32)
    {
      v33 = v32;
      v43 = colorCopy;
      v44 = length;
      v46 = wordCopy;
      v48 = location;
      v34 = *v50;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v50 != v34)
          {
            objc_enumerationMutation(emojiRangesInText);
          }

          v36 = *(*(&v49 + 1) + 8 * j);
          v37 = self->_textStorage;
          clearColor2 = [MEMORY[0x1E69DC888] clearColor];
          rangeValue2 = [v36 rangeValue];
          [(NSTextStorage *)v37 addAttribute:v18 value:clearColor2 range:rangeValue2, v40];
        }

        v33 = [emojiRangesInText countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v33);
      length = v44;
      wordCopy = v46;
      location = v48;
      colorCopy = v43;
    }
  }

LABEL_20:
  height = [(SUICStreamingTextView *)self _createGlyphImage:location glyphRange:length layoutManager:self->_layoutManager isUnderlined:0, x, y, width, height];

  return height;
}

- (id)_createGlyphImage:(CGRect)image glyphRange:(_NSRange)range layoutManager:(id)manager isUnderlined:(BOOL)underlined
{
  underlinedCopy = underlined;
  length = range.length;
  location = range.location;
  height = image.size.height;
  width = image.size.width;
  y = image.origin.y;
  x = image.origin.x;
  managerCopy = manager;
  v14 = 0;
  if (underlinedCopy)
  {
    +[_TtC10SiriUICore26SUICStreamingLayoutManager underlineThickness];
    v14 = v15;
  }

  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v35 = CGRectIntegral(v34);
  v16 = v35.origin.x;
  v17 = v35.origin.y;
  v18 = v35.size.width;
  v19 = v35.size.height;
  v20 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v35.size.width, v35.size.height}];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __81__SUICStreamingTextView__createGlyphImage_glyphRange_layoutManager_isUnderlined___block_invoke;
  v24[3] = &unk_1E81E8408;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v30 = v14;
  v25 = managerCopy;
  v31 = location;
  v32 = length;
  v21 = managerCopy;
  v22 = [v20 imageWithActions:v24];

  return v22;
}

uint64_t __81__SUICStreamingTextView__createGlyphImage_glyphRange_layoutManager_isUnderlined___block_invoke(uint64_t a1, void *a2)
{
  CGContextTranslateCTM([a2 CGContext], -*(a1 + 40), -*(a1 + 48) - *(a1 + 72));
  v3 = *(a1 + 32);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);

  return [v3 drawGlyphsForGlyphRange:v4 atPoint:{v5, v6, v7}];
}

- (id)_createEditTextImage
{
  if ([MEMORY[0x1E698D258] saeAvailable])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = MEMORY[0x1E69DCAD8];
  font = [(SUICStreamingTextView *)self font];
  v6 = [v4 configurationWithFont:font scale:v3];

  if ([MEMORY[0x1E698D258] saeAvailable])
  {
    v7 = [MEMORY[0x1E69DCAD8] configurationWithHierarchicalColor:self->_endTextColor];
    v8 = [v6 configurationByApplyingConfiguration:v7];

    v6 = v8;
  }

  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:self->_editTextSymbol withConfiguration:v6];

  return v9;
}

- (CGImage)_imageRefForImage:(id)image
{
  imageCopy = image;

  return [imageCopy CGImage];
}

- (SUICStreamingTextViewDelegate)streamingTextViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_streamingTextViewDelegate);

  return WeakRetained;
}

- (_NSRange)underlinedRange
{
  p_underlinedRange = &self->_underlinedRange;
  location = self->_underlinedRange.location;
  length = p_underlinedRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end