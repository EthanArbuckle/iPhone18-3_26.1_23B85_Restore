@interface _UITextViewSearchableObject
- ($96EE1C12479E9B303E9C2794B92A11A2)_wordTerminationCharacteristicsForRange:(_NSRange)range;
- (BOOL)_usesTransientHighlightBehavior;
- (BOOL)supportsTextReplacement;
- (UITextRange)selectedTextRange;
- (UITextView)textView;
- (_UITextViewSearchableObject)initWithTextView:(id)view;
- (id)_activeFindSession;
- (id)_rangeProvider;
- (id)targetedPreviewForHighlightRange:(id)range;
- (int64_t)compareFoundRange:(id)range toRange:(id)toRange inDocument:(id)document;
- (void)_ensureSubviewOrder;
- (void)_performTextSearchWithQueryString:(id)string usingOptions:(id)options resultHandler:(id)handler;
- (void)_setDimmingViewVisible:(BOOL)visible;
- (void)_setHighlightViewVisible:(BOOL)visible;
- (void)_updateHighlightLabelForMatchedRange:(id)range;
- (void)clearAllDecoratedFoundText;
- (void)decorateFoundTextRange:(id)range inDocument:(id)document usingStyle:(int64_t)style;
- (void)didEndFindSession;
- (void)layoutManagedSubviews;
- (void)performTextSearchWithQueryString:(id)string usingOptions:(id)options resultAggregator:(id)aggregator;
- (void)replaceAllOccurrencesOfQueryString:(id)string usingOptions:(id)options withText:(id)text;
- (void)replaceFoundTextInRange:(id)range inDocument:(id)document withText:(id)text;
- (void)scrollRangeToVisible:(id)visible inDocument:(id)document;
- (void)useSelectionForFind;
@end

@implementation _UITextViewSearchableObject

- (void)layoutManagedSubviews
{
  selfCopy3 = self;
  v121 = *MEMORY[0x1E69E9840];
  if (self->_highlightedTextRange)
  {
    [(_UITextViewSearchableObject *)self _setHighlightViewVisible:1];
    objc_storeStrong(&selfCopy3->_visuallyHighlightedTextRange, selfCopy3->_highlightedTextRange);
    WeakRetained = objc_loadWeakRetained(&selfCopy3->_textView);
    v4 = [WeakRetained _textLineRectsForRange:selfCopy3->_highlightedTextRange];

    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v114 objects:v120 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v115;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v115 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v114 + 1) + 8 * i) CGRectValue];
          v131.origin.x = v14;
          v131.origin.y = v15;
          v131.size.width = v16;
          v131.size.height = v17;
          v124.origin.x = x;
          v124.origin.y = y;
          v124.size.width = width;
          v124.size.height = height;
          v125 = CGRectUnion(v124, v131);
          x = v125.origin.x;
          y = v125.origin.y;
          width = v125.size.width;
          height = v125.size.height;
        }

        v11 = [v9 countByEnumeratingWithState:&v114 objects:v120 count:16];
      }

      while (v11);
    }

    v18 = [UITextHighlightView preferredPreviewParametersForTextLineRects:v9];
    [(UITextHighlightView *)self->_highlightView setOverriddenPreviewParameters:v18];
    [v18 _textPathInsets];
    v20 = x + v19;
    v22 = y + v21;
    v24 = width - (v19 + v23);
    v26 = height - (v21 + v25);
    v27 = objc_loadWeakRetained(&self->_textView);
    [v27 contentScaleFactor];
    v29 = UIRectIntegralWithScale(v20, v22, v24, v26, v28);
    v31 = v30;
    v33 = v32;
    v35 = v34;

    selfCopy3 = self;
    [(UIView *)self->_highlightView frame];
    v132.origin.x = v29;
    v132.origin.y = v31;
    v132.size.width = v33;
    v132.size.height = v35;
    if (!CGRectEqualToRect(v126, v132))
    {
      [(UIView *)self->_highlightView setFrame:v29, v31, v33, v35];
      [(UITextHighlightView *)self->_highlightView invalidateContentView];
    }
  }

  else
  {
    [(_UITextViewSearchableObject *)self _setHighlightViewVisible:0];
  }

  if ([(NSMutableSet *)selfCopy3->_decoratedTextRanges count]&& ![(_UITextViewSearchableObject *)selfCopy3 _usesTransientHighlightBehavior])
  {
    [(_UITextViewSearchableObject *)selfCopy3 _setDimmingViewVisible:1];
    v36 = objc_loadWeakRetained(&selfCopy3->_textView);
    v98 = [v36 _visibleRangeWithLayout:0];
    v38 = v37;

    v97 = v38;
    if (!v38)
    {
      v39 = objc_loadWeakRetained(&selfCopy3->_textView);
      [v39 visibleRect];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v127.origin.x = v41;
      v127.origin.y = v43;
      v127.size.width = v45;
      v127.size.height = v47;
      MinX = CGRectGetMinX(v127);
      v128.origin.x = v41;
      v128.origin.y = v43;
      v128.size.width = v45;
      v128.size.height = v47;
      MinY = CGRectGetMinY(v128);
      v129.origin.x = v41;
      v129.origin.y = v43;
      v129.size.width = v45;
      v129.size.height = v47;
      MaxX = CGRectGetMaxX(v129);
      v130.origin.x = v41;
      v130.origin.y = v43;
      v130.size.width = v45;
      v130.size.height = v47;
      MaxY = CGRectGetMaxY(v130);
      v52 = objc_loadWeakRetained(&selfCopy3->_textView);
      v53 = [v52 closestPositionToPoint:{MinX, MinY}];

      v54 = objc_loadWeakRetained(&selfCopy3->_textView);
      v55 = [v54 closestPositionToPoint:{MaxX, MaxY}];

      v56 = objc_loadWeakRetained(&selfCopy3->_textView);
      v57 = [v56 textRangeFromPosition:v53 toPosition:v55];

      _rangeProvider = [(_UITextViewSearchableObject *)selfCopy3 _rangeProvider];
      v59 = [_rangeProvider _nsrangeForTextRange:v57];
      v97 = v60;
      v98 = v59;
    }

    array = [MEMORY[0x1E695DF70] array];
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    obj = selfCopy3->_decoratedTextRanges;
    v62 = [(NSMutableSet *)obj countByEnumeratingWithState:&v110 objects:v119 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v111;
      do
      {
        for (j = 0; j != v63; ++j)
        {
          if (*v111 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v66 = *(*(&v110 + 1) + 8 * j);
          _rangeProvider2 = [(_UITextViewSearchableObject *)selfCopy3 _rangeProvider];
          v68 = [_rangeProvider2 _nsrangeForTextRange:v66];
          v70 = v69;

          v122.location = v68;
          v122.length = v70;
          v123.length = v97;
          v123.location = v98;
          if (NSIntersectionRange(v122, v123).length)
          {
            v71 = objc_loadWeakRetained(&selfCopy3->_textView);
            v72 = [v71 selectionRectsForRange:v66];

            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v73 = v72;
            v74 = [v73 countByEnumeratingWithState:&v106 objects:v118 count:16];
            if (v74)
            {
              v75 = v74;
              v76 = *v107;
              do
              {
                for (k = 0; k != v75; ++k)
                {
                  if (*v107 != v76)
                  {
                    objc_enumerationMutation(v73);
                  }

                  v78 = MEMORY[0x1E696B098];
                  [*(*(&v106 + 1) + 8 * k) rect];
                  v79 = [v78 valueWithCGRect:?];
                  [array addObject:v79];
                }

                v75 = [v73 countByEnumeratingWithState:&v106 objects:v118 count:16];
              }

              while (v75);
            }

            selfCopy3 = self;
          }
        }

        v63 = [(NSMutableSet *)obj countByEnumeratingWithState:&v110 objects:v119 count:16];
      }

      while (v63);
    }

    v80 = objc_loadWeakRetained(&selfCopy3->_textView);
    [v80 contentSize];
    v82 = v81;

    v83 = objc_loadWeakRetained(&selfCopy3->_textView);
    [v83 bounds];
    v85 = v84;

    if (v82 >= v85)
    {
      v86 = v82;
    }

    else
    {
      v86 = v85;
    }

    v87 = objc_loadWeakRetained(&selfCopy3->_textView);
    [v87 contentSize];
    v89 = v88;

    v90 = objc_loadWeakRetained(&selfCopy3->_textView);
    [v90 bounds];
    v92 = v91;

    if (v89 >= v92)
    {
      v93 = v89;
    }

    else
    {
      v93 = v92;
    }

    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __52___UITextViewSearchableObject_layoutManagedSubviews__block_invoke;
    v99[3] = &unk_1E70F8980;
    v101 = vdupq_n_s64(0xC089000000000000);
    v102 = v101;
    v99[4] = selfCopy3;
    v100 = array;
    v103 = v101;
    v104 = v86 + 1600.0;
    v105 = v93 + 1600.0;
    v94 = array;
    [UIView performWithoutAnimation:v99];
  }

  else
  {
    [(_UITextViewSearchableObject *)selfCopy3 _setDimmingViewVisible:0];
  }
}

- (_UITextViewSearchableObject)initWithTextView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = _UITextViewSearchableObject;
  v5 = [(_UITextViewSearchableObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_textView, viewCopy);
  }

  return v6;
}

- (id)_activeFindSession
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  findInteraction = [WeakRetained findInteraction];
  activeFindSession = [findInteraction activeFindSession];

  return activeFindSession;
}

- (id)_rangeProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

- (UITextRange)selectedTextRange
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  selectedTextRange = [WeakRetained selectedTextRange];

  return selectedTextRange;
}

- (int64_t)compareFoundRange:(id)range toRange:(id)toRange inDocument:(id)document
{
  if (range == toRange)
  {
    return 0;
  }

  toRangeCopy = toRange;
  start = [range start];
  start2 = [toRangeCopy start];

  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v11 = [WeakRetained comparePosition:start toPosition:start2];

  return v11;
}

- ($96EE1C12479E9B303E9C2794B92A11A2)_wordTerminationCharacteristicsForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@".!?։۔।።᙮‼‽⁈⁉。！．？｡, '’“”"}];
  if (location && (WeakRetained = objc_loadWeakRetained(&self->_textView), [WeakRetained textStorage], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "string"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "characterAtIndex:", location - 1), v10, v9, WeakRetained, (objc_msgSend(whitespaceAndNewlineCharacterSet, "characterIsMember:", v11) & 1) == 0))
  {
    v12 = [v7 characterIsMember:v11];
  }

  else
  {
    v12 = 1;
  }

  v13 = location + length;
  v14 = objc_loadWeakRetained(&self->_textView);
  textStorage = [v14 textStorage];
  v16 = [textStorage length];

  v17 = objc_loadWeakRetained(&self->_textView);
  textStorage2 = [v17 textStorage];
  v19 = textStorage2;
  if (v13 >= v16)
  {
    v22 = [textStorage2 length];

    if (v13 == v22)
    {
      goto LABEL_9;
    }

LABEL_11:
    v23 = 0;
    return (v23 | v12);
  }

  string = [textStorage2 string];
  v21 = [string characterAtIndex:v13];

  if (![whitespaceAndNewlineCharacterSet characterIsMember:v21])
  {
    v24 = [v7 characterIsMember:v21];

    if (v24)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

LABEL_9:
  v23 = 256;
  return (v23 | v12);
}

- (void)_performTextSearchWithQueryString:(id)string usingOptions:(id)options resultHandler:(id)handler
{
  stringCopy = string;
  optionsCopy = options;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  textStorage = [WeakRetained textStorage];
  string = [textStorage string];

  v13 = [string length];
  for (i = 0; i != 0x7FFFFFFFFFFFFFFFLL; v13 = [string length] - i)
  {
    v15 = [string rangeOfString:stringCopy options:objc_msgSend(optionsCopy range:{"stringCompareOptions"), i, v13}];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v17 = v15;
    v18 = v16;
    if ([optionsCopy wordMatchMethod] != 2 && objc_msgSend(optionsCopy, "wordMatchMethod") != 1)
    {
      goto LABEL_10;
    }

    v19 = [(_UITextViewSearchableObject *)self _wordTerminationCharacteristicsForRange:v17, v18];
    if ([optionsCopy wordMatchMethod] == 2)
    {
      if ((*&v19 & 0x100) == 0)
      {
        goto LABEL_11;
      }
    }

    else if ([optionsCopy wordMatchMethod] != 1)
    {
      goto LABEL_10;
    }

    if (v19.var0)
    {
LABEL_10:
      _rangeProvider = [(_UITextViewSearchableObject *)self _rangeProvider];
      v21 = [_rangeProvider _textRangeFromNSRange:{v17, v18}];

      handlerCopy[2](handlerCopy, v21);
    }

LABEL_11:
    i = v17 + v18;
  }
}

- (void)performTextSearchWithQueryString:(id)string usingOptions:(id)options resultAggregator:(id)aggregator
{
  stringCopy = string;
  aggregatorCopy = aggregator;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __94___UITextViewSearchableObject_performTextSearchWithQueryString_usingOptions_resultAggregator___block_invoke;
  v15 = &unk_1E70F88B8;
  v16 = aggregatorCopy;
  v17 = stringCopy;
  v10 = stringCopy;
  v11 = aggregatorCopy;
  [(_UITextViewSearchableObject *)self _performTextSearchWithQueryString:v10 usingOptions:options resultHandler:&v12];
  [v11 finishedSearching];
}

- (BOOL)supportsTextReplacement
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  isEditable = [WeakRetained isEditable];

  return isEditable;
}

- (void)replaceFoundTextInRange:(id)range inDocument:(id)document withText:(id)text
{
  textCopy = text;
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  [WeakRetained replaceRange:rangeCopy withText:textCopy];
}

- (void)replaceAllOccurrencesOfQueryString:(id)string usingOptions:(id)options withText:(id)text
{
  v32 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  optionsCopy = options;
  textCopy = text;
  array = [MEMORY[0x1E695DF70] array];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __88___UITextViewSearchableObject_replaceAllOccurrencesOfQueryString_usingOptions_withText___block_invoke;
  v29[3] = &unk_1E70F88E0;
  v12 = array;
  v30 = v12;
  v24 = stringCopy;
  [(_UITextViewSearchableObject *)self _performTextSearchWithQueryString:stringCopy usingOptions:optionsCopy resultHandler:v29];
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  undoManager = [WeakRetained undoManager];
  [undoManager beginUndoGrouping];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  reverseObjectEnumerator = [v12 reverseObjectEnumerator];
  v16 = [reverseObjectEnumerator countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      v19 = 0;
      do
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v20 = *(*(&v25 + 1) + 8 * v19);
        v21 = objc_loadWeakRetained(&self->_textView);
        [v21 replaceRange:v20 withText:textCopy];

        ++v19;
      }

      while (v17 != v19);
      v17 = [reverseObjectEnumerator countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v17);
  }

  v22 = objc_loadWeakRetained(&self->_textView);
  undoManager2 = [v22 undoManager];
  [undoManager2 endUndoGrouping];
}

- (void)decorateFoundTextRange:(id)range inDocument:(id)document usingStyle:(int64_t)style
{
  rangeCopy = range;
  documentCopy = document;
  if (!self->_decoratedTextRanges)
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    decoratedTextRanges = self->_decoratedTextRanges;
    self->_decoratedTextRanges = v9;
  }

  if (style == 2)
  {
    [(_UITextViewSearchableObject *)self _updateHighlightLabelForMatchedRange:rangeCopy];
  }

  else
  {
    if (![(_UITextViewSearchableObject *)self compareFoundRange:self->_highlightedTextRange toRange:rangeCopy inDocument:documentCopy])
    {
      highlightedTextRange = self->_highlightedTextRange;
      self->_highlightedTextRange = 0;
    }

    v12 = self->_decoratedTextRanges;
    if (style)
    {
      [(NSMutableSet *)v12 addObject:rangeCopy];
    }

    else
    {
      [(NSMutableSet *)v12 removeObject:rangeCopy];
    }

    WeakRetained = objc_loadWeakRetained(&self->_textView);
    [WeakRetained setNeedsLayout];
  }
}

- (void)clearAllDecoratedFoundText
{
  highlightedTextRange = self->_highlightedTextRange;
  self->_highlightedTextRange = 0;

  [(NSMutableSet *)self->_decoratedTextRanges removeAllObjects];
  _activeFindSession = [(_UITextViewSearchableObject *)self _activeFindSession];
  isSearching = [_activeFindSession isSearching];

  if (isSearching)
  {
    _activeFindSession2 = [(_UITextViewSearchableObject *)self _activeFindSession];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57___UITextViewSearchableObject_clearAllDecoratedFoundText__block_invoke;
    v8[3] = &unk_1E70F3590;
    v8[4] = self;
    [_activeFindSession2 _performBlockWhenSearchResultsAreAvailable:v8];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_textView);
    [WeakRetained setNeedsLayout];
  }
}

- (void)didEndFindSession
{
  highlightedTextRange = self->_highlightedTextRange;
  self->_highlightedTextRange = 0;

  [(NSMutableSet *)self->_decoratedTextRanges removeAllObjects];
  [(_UITextViewSearchableObject *)self _setHighlightViewVisible:0];

  [(_UITextViewSearchableObject *)self _setDimmingViewVisible:0];
}

- (void)useSelectionForFind
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  selectedText = [WeakRetained selectedText];

  if ([selectedText length])
  {
    v4 = objc_loadWeakRetained(&self->_textView);
    findInteraction = [v4 findInteraction];
    [findInteraction setSearchText:selectedText];

    [UIFindInteraction _setGlobalFindBuffer:selectedText];
  }
}

- (void)scrollRangeToVisible:(id)visible inDocument:(id)document
{
  visibleCopy = visible;
  _rangeProvider = [(_UITextViewSearchableObject *)self _rangeProvider];
  v7 = [_rangeProvider _nsrangeForTextRange:visibleCopy];
  v9 = v8;

  WeakRetained = objc_loadWeakRetained(&self->_textView);
  [WeakRetained scrollRangeToVisible:{v7, v9}];
}

- (void)_ensureSubviewOrder
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  subviews = [WeakRetained subviews];
  v5 = [subviews countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v5)
  {
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [subviews countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = objc_loadWeakRetained(&self->_textView);
  subviews2 = [v9 subviews];
  v11 = objc_loadWeakRetained(&self->_textView);
  _containerView = [v11 _containerView];
  v13 = [subviews2 indexOfObject:_containerView];

  if (self->_dimmingViewVisible)
  {
    dimmingView = self->_dimmingView;
  }

  else
  {
    dimmingView = 0;
  }

  v21[0] = dimmingView;
  if (self->_highlightViewVisible)
  {
    highlightView = self->_highlightView;
  }

  else
  {
    highlightView = 0;
  }

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13 + 1;
  }

  v21[1] = highlightView;
  v21[2] = v5;
  [WeakRetained _ensureViewsAreInstalledInRelativeOrder:v21 viewCount:3 insertionStartIndex:v16];
}

- (void)_setDimmingViewVisible:(BOOL)visible
{
  if (self->_dimmingViewVisible != visible)
  {
    self->_dimmingViewVisible = visible;
    if (visible)
    {
      if (!self->_dimmingView)
      {
        v4 = [UITextSearchingDimmingView alloc];
        v5 = [(UITextSearchingDimmingView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        dimmingView = self->_dimmingView;
        self->_dimmingView = v5;

        [(UIView *)self->_dimmingView setAlpha:0.0];
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __54___UITextViewSearchableObject__setDimmingViewVisible___block_invoke;
      v16[3] = &unk_1E70F3590;
      v16[4] = self;
      [UIView animateWithDuration:4 delay:v16 options:0 animations:0.2 completion:0.0];
      [(_UITextViewSearchableObject *)self _ensureSubviewOrder];
    }

    else
    {
      objc_initWeak(&location, self);
      v7 = self->_dimmingView;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __54___UITextViewSearchableObject__setDimmingViewVisible___block_invoke_2;
      v13[3] = &unk_1E70F3590;
      v8 = v7;
      v14 = v8;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54___UITextViewSearchableObject__setDimmingViewVisible___block_invoke_3;
      v10[3] = &unk_1E70F8908;
      objc_copyWeak(&v12, &location);
      v10[4] = self;
      v9 = v8;
      v11 = v9;
      [UIView animateWithDuration:4 delay:v13 options:v10 animations:0.2 completion:0.0];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_setHighlightViewVisible:(BOOL)visible
{
  if (self->_highlightViewVisible != visible)
  {
    self->_highlightViewVisible = visible;
    if (visible)
    {
      if (!self->_highlightView)
      {
        objc_initWeak(&location, self);
        v4 = [UITextHighlightView alloc];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __56___UITextViewSearchableObject__setHighlightViewVisible___block_invoke;
        v13[3] = &unk_1E70F8930;
        objc_copyWeak(&v14, &location);
        v5 = [(UITextHighlightView *)v4 initWithPreviewProvider:v13];
        highlightView = self->_highlightView;
        self->_highlightView = v5;

        WeakRetained = objc_loadWeakRetained(&self->_textView);
        matchHighlightColor = [WeakRetained matchHighlightColor];
        [(UITextHighlightView *)self->_highlightView setFillColor:matchHighlightColor];

        objc_destroyWeak(&v14);
        objc_destroyWeak(&location);
      }

      [(_UITextViewSearchableObject *)self _ensureSubviewOrder];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __56___UITextViewSearchableObject__setHighlightViewVisible___block_invoke_2;
      v12[3] = &unk_1E70F3590;
      v12[4] = self;
      [UIView animateWithDuration:4 delay:v12 options:0 animations:0.2 completion:0.0];
    }

    else
    {
      objc_initWeak(&location, self);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __56___UITextViewSearchableObject__setHighlightViewVisible___block_invoke_3;
      v11[3] = &unk_1E70F3590;
      v11[4] = self;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __56___UITextViewSearchableObject__setHighlightViewVisible___block_invoke_4;
      v9[3] = &unk_1E70F8958;
      objc_copyWeak(&v10, &location);
      v9[4] = self;
      [UIView animateWithDuration:4 delay:v11 options:v9 animations:0.2 completion:0.0];
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

- (BOOL)_usesTransientHighlightBehavior
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  findInteraction = [WeakRetained findInteraction];
  isFindNavigatorVisible = [findInteraction isFindNavigatorVisible];

  return isFindNavigatorVisible ^ 1;
}

- (void)_updateHighlightLabelForMatchedRange:(id)range
{
  rangeCopy = range;
  objc_storeStrong(&self->_highlightedTextRange, range);
  if ([(_UITextViewSearchableObject *)self _usesTransientHighlightBehavior])
  {
    v6 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_textView);
    v6 = [WeakRetained _range:rangeCopy isEqualToRange:self->_visuallyHighlightedTextRange] ^ 1;
  }

  v8 = objc_loadWeakRetained(&self->_textView);
  [v8 setSelectedTextRange:rangeCopy];

  v9 = objc_loadWeakRetained(&self->_textView);
  _textInteraction = [v9 _textInteraction];
  assistantDelegate = [_textInteraction assistantDelegate];

  if ([(_UITextViewSearchableObject *)self _usesTransientHighlightBehavior])
  {
    grabberSuppressionAssertion = [assistantDelegate grabberSuppressionAssertion];

    if (!grabberSuppressionAssertion)
    {
      obtainSelectionGrabberSuppressionAssertion = [assistantDelegate obtainSelectionGrabberSuppressionAssertion];
      [assistantDelegate setGrabberSuppressionAssertion:obtainSelectionGrabberSuppressionAssertion];
    }
  }

  [(_UITextViewSearchableObject *)self layoutManagedSubviews];
  if (v6)
  {
    highlightView = self->_highlightView;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68___UITextViewSearchableObject__updateHighlightLabelForMatchedRange___block_invoke;
    v15[3] = &unk_1E70F3590;
    v15[4] = self;
    [(UITextHighlightView *)highlightView animateWithCompletion:v15];
  }
}

- (id)targetedPreviewForHighlightRange:(id)range
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = *off_1E70EC920;
  rangeCopy = range;
  v5 = +[UIColor blackColor];
  v12[0] = v5;
  v11[1] = *off_1E70EC8D0;
  v6 = +[UIColor clearColor];
  v12[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v9 = [WeakRetained _targetedPreviewForRange:rangeCopy withRenderingAttributes:v7];

  return v9;
}

- (UITextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

@end