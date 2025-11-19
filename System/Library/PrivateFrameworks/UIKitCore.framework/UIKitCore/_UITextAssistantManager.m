@interface _UITextAssistantManager
- (BOOL)performExternalEditsForWritingToolsSessionIdentifier:(id)a3 action:(int64_t)a4 usingBlock:(id)a5;
- (NSString)description;
- (UITextView)textView;
- (_NSRange)paragraphRangeForRange:(_NSRange)a3;
- (_UITextAssistantManager)initWithTextView:(id)a3;
- (id)_writingToolsCoordinator:(id)a3 textHighlightColorForScheme:(id)a4 inHighlightStyle:(id)a5;
- (id)contextForWritingToolsForScope:(int64_t)a3;
- (id)replaceRange:(id)a3 withWritingToolsReplacement:(id)a4;
- (void)_invalidateViewportLayoutForTextRange:(id)a3;
- (void)_writingToolsCoordinator:(id)a3 didReceiveContexts:(id)a4;
- (void)cleanUpAnimatedTextLayoutInfoIfNecessary;
- (void)dealloc;
- (void)finishUndoRedoChanges;
- (void)removeTextAnimationAttributesAtRange:(_NSRange)a3;
- (void)reportTextChunkVisibilityUpdateForDelivery:(id)a3 textRange:(id)a4 visible:(BOOL)a5;
- (void)sessionCleanup;
- (void)setUpTextAnimationContextForRange:(_NSRange)a3 animation:(int64_t)a4;
- (void)tearDownTextAnimationContextForAnimation:(int64_t)a3;
- (void)textViewDidReflowLayout;
- (void)updateForCharactersInRange:(_NSRange)a3 withReplacement:(id)a4 isUndoRedo:(BOOL)a5;
- (void)updateForPasteDelegateDidPasteText:(id)a3 toTextRange:(id)a4;
- (void)updateForPasteDelegateWillPasteText:(id)a3 toTextRange:(id)a4;
- (void)writingToolsCoordinator:(id)a3 finishTextAnimation:(int64_t)a4 forRange:(_NSRange)a5 inContext:(id)a6 completion:(id)a7;
- (void)writingToolsCoordinator:(id)a3 prepareForTextAnimation:(int64_t)a4 forRange:(_NSRange)a5 inContext:(id)a6 completion:(id)a7;
- (void)writingToolsCoordinator:(id)a3 replaceRange:(_NSRange)a4 inContext:(id)a5 proposedText:(id)a6 reason:(int64_t)a7 animationParameters:(id)a8 completion:(id)a9;
- (void)writingToolsCoordinator:(id)a3 requestsBoundingBezierPathsForRange:(_NSRange)a4 inContext:(id)a5 completion:(id)a6;
- (void)writingToolsCoordinator:(id)a3 requestsContextsForScope:(int64_t)a4 completion:(id)a5;
- (void)writingToolsCoordinator:(id)a3 requestsPreviewForTextAnimation:(int64_t)a4 ofRange:(_NSRange)a5 inContext:(id)a6 completion:(id)a7;
- (void)writingToolsCoordinator:(id)a3 requestsRangeInContextWithIdentifierForPoint:(CGPoint)a4 completion:(id)a5;
- (void)writingToolsCoordinator:(id)a3 requestsUnderlinePathsForRange:(_NSRange)a4 inContext:(id)a5 completion:(id)a6;
- (void)writingToolsCoordinator:(id)a3 selectRanges:(id)a4 inContext:(id)a5 completion:(id)a6;
- (void)writingToolsCoordinator:(id)a3 willChangeToState:(int64_t)a4 completion:(id)a5;
@end

@implementation _UITextAssistantManager

- (void)dealloc
{
  if (self->_viewportLayoutObservationToken)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self->_viewportLayoutObservationToken];

    viewportLayoutObservationToken = self->_viewportLayoutObservationToken;
    self->_viewportLayoutObservationToken = 0;
  }

  v5.receiver = self;
  v5.super_class = _UITextAssistantManager;
  [(_UITextAssistantManager *)&v5 dealloc];
}

- (_UITextAssistantManager)initWithTextView:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UITextAssistantManager;
  v5 = [(_UITextAssistantManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_textView, v4);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    textAnimationContextsByAnimationType = v6->_textAnimationContextsByAnimationType;
    v6->_textAnimationContextsByAnimationType = v7;
  }

  return v6;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = _UITextAssistantManager;
  v3 = [(_UITextAssistantManager *)&v7 description];
  v4 = [v3 mutableCopy];

  WeakRetained = objc_loadWeakRetained(&self->_textView);
  [v4 appendFormat:@" textView=%p", WeakRetained];

  return v4;
}

- (void)sessionCleanup
{
  v25 = *MEMORY[0x1E69E9840];
  activeContext = self->_activeContext;
  self->_activeContext = 0;

  WeakRetained = objc_loadWeakRetained(&self->_textView);
  [WeakRetained _setUniqueWritingToolsAnimatedLayoutInfo:0];

  pasteRangeInProgress = self->_pasteRangeInProgress;
  self->_pasteRangeInProgress = 0;

  pasteStringInProgress = self->_pasteStringInProgress;
  self->_pasteStringInProgress = 0;

  lastAnimatingReplacementRange = self->_lastAnimatingReplacementRange;
  self->_lastAnimatingReplacementRange = 0;

  [(_UIAssertion *)self->_grabberSuppression _invalidate];
  grabberSuppression = self->_grabberSuppression;
  self->_grabberSuppression = 0;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(NSMutableDictionary *)self->_textAnimationContextsByAnimationType keyEnumerator];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        -[_UITextAssistantManager tearDownTextAnimationContextForAnimation:](self, "tearDownTextAnimationContextForAnimation:", [*(*(&v20 + 1) + 8 * v14++) integerValue]);
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  if ([(NSMutableDictionary *)self->_textAnimationContextsByAnimationType count])
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_UITextAssistantManager.m" lineNumber:153 description:{@"Tear-down should have removed all the _UITextAnimationContexts, but look! _textAnimationContextsByAnimationType=%@", self->_textAnimationContextsByAnimationType}];
  }

  [(_UIInvalidatable *)self->_selectionUIHiddenAssertion _invalidate];
  selectionUIHiddenAssertion = self->_selectionUIHiddenAssertion;
  self->_selectionUIHiddenAssertion = 0;

  if (self->_viewportLayoutObservationToken)
  {
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 removeObserver:self->_viewportLayoutObservationToken];

    viewportLayoutObservationToken = self->_viewportLayoutObservationToken;
    self->_viewportLayoutObservationToken = 0;
  }

  self->_offsetToContextualRange = 0;
  initialSelectedRangeInDocument = self->_initialSelectedRangeInDocument;
  self->_initialSelectedRangeInDocument = 0;

  self->_externalEditAction = 0;
}

- (id)contextForWritingToolsForScope:(int64_t)a3
{
  v94 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v6 = [WeakRetained selectedTextRange];

  v7 = objc_loadWeakRetained(&self->_textView);
  v8 = [v7 textLayoutController];
  v9 = [v8 documentRange];

  if (v6)
  {
    v10 = objc_loadWeakRetained(&self->_textView);
    v11 = [v9 start];
    v12 = [v6 start];
    if ([v10 offsetFromPosition:v11 toPosition:v12] < 0)
    {
    }

    else
    {
      v76 = self;
      v13 = objc_loadWeakRetained(&self->_textView);
      v14 = [v6 end];
      v15 = [v9 end];
      v16 = [v13 offsetFromPosition:v14 toPosition:v15];

      if ((v16 & 0x8000000000000000) == 0)
      {
        if (a3 == 1)
        {
          v17 = v76;
          v18 = objc_loadWeakRetained(&v76->_textView);
          v19 = [v18 textLayoutController];
          v20 = v19;
        }

        else
        {
          v23 = [v6 isEmpty];
          v17 = v76;
          v18 = objc_loadWeakRetained(&v76->_textView);
          v19 = [v18 textLayoutController];
          v20 = v19;
          if (!v23)
          {
            v24 = [v19 _writingToolsMinimumContextualRangeForRange:v6];
LABEL_11:
            v22 = v24;

            if (!v22)
            {
              v22 = v6;
            }

            v25 = objc_loadWeakRetained(&v17->_textView);
            v26 = [v22 start];
            v27 = [v6 start];
            v28 = [v25 offsetFromPosition:v26 toPosition:v27];

            v29 = objc_loadWeakRetained(&v17->_textView);
            [v29 _nsrangeForTextRange:v6];
            v31 = v30;

            if ((v28 | v31) >= 0)
            {
              v32 = v28;
            }

            else
            {
              v32 = 0x7FFFFFFFFFFFFFFFLL;
            }

            if ((v28 | v31) >= 0)
            {
              v33 = v31;
            }

            else
            {
              v33 = 0;
            }

            v73 = v33;
            v74 = v32;
            v34 = objc_loadWeakRetained(&v17->_textView);
            v35 = [v34 textLayoutController];
            v36 = [v35 documentRange];
            v37 = [v36 start];
            v38 = [v22 start];
            v39 = [v34 offsetFromPosition:v37 toPosition:v38];

            v17->_offsetToContextualRange = v39;
            objc_storeStrong(&v17->_initialSelectedRangeInDocument, v6);
            v40 = objc_loadWeakRetained(&v17->_textView);
            v41 = [v40 attributedTextInRange:v22];

            v42 = objc_loadWeakRetained(&v17->_textView);
            LODWORD(v35) = [v42 _delegateSuppliesWritingToolsIgnoredRanges];

            if (!v35)
            {
              v68 = v74;
LABEL_40:
              if (v68 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v21 = 0;
              }

              else
              {
                v21 = [[UIWritingToolsCoordinatorContext alloc] initWithAttributedString:v41 range:v68, v73];
              }

              goto LABEL_44;
            }

            v72 = v9;
            v43 = objc_loadWeakRetained(&v17->_textView);
            v71 = v22;
            v44 = [v43 _nsrangeForTextRange:v22];
            v46 = v45;

            v47 = objc_loadWeakRetained(&v17->_textView);
            v48 = [v47 delegate];
            v49 = objc_loadWeakRetained(&v17->_textView);
            v50 = [v48 textView:v49 writingToolsIgnoredRangesInEnclosingRange:{v44, v46}];

            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v51 = v50;
            v52 = [v51 countByEnumeratingWithState:&v79 objects:v93 count:16];
            v75 = v51;
            if (v52)
            {
              v53 = v52;
              v70 = v6;
              v54 = 0;
              v78 = *v80;
              v77 = *MEMORY[0x1E69E3168];
              v55 = v51;
              do
              {
                for (i = 0; i != v53; ++i)
                {
                  if (*v80 != v78)
                  {
                    objc_enumerationMutation(v55);
                  }

                  v57 = *(*(&v79 + 1) + 8 * i);
                  v58 = [v57 rangeValue];
                  v60 = v59;
                  v96.location = [v57 rangeValue];
                  v97.location = 0;
                  v97.length = v46;
                  v61 = NSIntersectionRange(v96, v97);
                  if (v61.length < 1)
                  {
                    v62 = *(__UILogGetCategoryCachedImpl("WritingTools", &contextForWritingToolsForScope____s_category) + 8);
                    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                    {
                      v63 = v62;
                      v64 = objc_loadWeakRetained(&v76->_textView);
                      [v64 delegate];
                      v66 = v65 = v41;
                      *buf = 138413314;
                      v84 = v66;
                      v85 = 2048;
                      v86 = v58;
                      v87 = 2048;
                      v88 = v60;
                      v89 = 2048;
                      v90 = 0;
                      v91 = 2048;
                      v92 = v46;
                      _os_log_impl(&dword_188A29000, v63, OS_LOG_TYPE_ERROR, "Delegate, %@, requested range to ignore, {.location=%lu,.length=%lu}, does not intersect enclosing range, {.location=%lu,.length=%lu}", buf, 0x34u);

                      v41 = v65;
                      v55 = v75;
                    }
                  }

                  else
                  {
                    if (!v54)
                    {
                      v54 = [v41 mutableCopy];
                    }

                    [v54 addAttribute:v77 value:&unk_1EFE32158 range:{v61.location, v61.length}];
                  }
                }

                v53 = [v55 countByEnumeratingWithState:&v79 objects:v93 count:16];
              }

              while (v53);

              if (!v54)
              {
                v6 = v70;
                v22 = v71;
                v68 = v74;
                goto LABEL_39;
              }

              v67 = [v54 copy];

              v41 = v67;
              v6 = v70;
            }

            else
            {
              v54 = v51;
            }

            v22 = v71;
            v68 = v74;

LABEL_39:
            v9 = v72;
            goto LABEL_40;
          }
        }

        v24 = [v19 documentRange];
        goto LABEL_11;
      }
    }
  }

  v21 = 0;
  v22 = 0;
LABEL_44:

  return v21;
}

- (void)writingToolsCoordinator:(id)a3 requestsContextsForScope:(int64_t)a4 completion:(id)a5
{
  v11[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [(_UITextAssistantManager *)self contextForWritingToolsForScope:a4];
  v9 = v8;
  if (v8)
  {
    v11[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v7[2](v7, v10);
  }

  else
  {
    v7[2](v7, MEMORY[0x1E695E0F0]);
  }
}

- (void)writingToolsCoordinator:(id)a3 willChangeToState:(int64_t)a4 completion:(id)a5
{
  v16 = a3;
  v8 = a5;
  if (a4 == 3)
  {
    [(_UIInvalidatable *)self->_selectionUIHiddenAssertion _invalidate];
    WeakRetained = objc_loadWeakRetained(&self->_textView);
    v10 = [WeakRetained _selectionDisplayInteraction];
    v11 = [v10 _obtainSelectionUIHiddenAssertionForReason:@"Writing Tools Began Session" animated:1];
    selectionUIHiddenAssertion = self->_selectionUIHiddenAssertion;
    self->_selectionUIHiddenAssertion = v11;

    v13 = objc_loadWeakRetained(&self->_textView);
    [v13 _setWritingToolsStreamingReplacements:1];
  }

  if ([v16 state] == 3)
  {
    v14 = objc_loadWeakRetained(&self->_textView);
    [v14 _setWritingToolsStreamingReplacements:0];

    lastAnimatingReplacementRange = self->_lastAnimatingReplacementRange;
    self->_lastAnimatingReplacementRange = 0;
  }

  if (!a4)
  {
    [(_UITextAssistantManager *)self sessionCleanup];
  }

  v8[2](v8);
}

- (void)writingToolsCoordinator:(id)a3 replaceRange:(_NSRange)a4 inContext:(id)a5 proposedText:(id)a6 reason:(int64_t)a7 animationParameters:(id)a8 completion:(id)a9
{
  length = a4.length;
  v99 = a4.location;
  v112[1] = *MEMORY[0x1E69E9840];
  v97 = a3;
  v98 = a5;
  v102 = a6;
  v100 = a8;
  v101 = a9;
  offsetToContextualRange = self->_offsetToContextualRange;
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v16 = [WeakRetained textLayoutManager];

  if (v16)
  {
    v17 = objc_loadWeakRetained(&self->_textView);
    v96 = [v17 _NSTextRangeFromNSRange:{offsetToContextualRange + v99, length}];

    v18 = objc_loadWeakRetained(&self->_textView);
    v112[0] = v96;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:1];
    v20 = [v18 _rangeForTextKitRanges:v19];

    if (a7)
    {
      self->_isReplacingTextByRequest = 1;
      v21 = objc_loadWeakRetained(&self->_textView);
      v22 = [v21 _replaceRange:v20 withAttributedText:v102 updatingSelection:0];

      v23 = 0;
      self->_isReplacingTextByRequest = 0;
    }

    else
    {
      v32 = objc_loadWeakRetained(&self->_textView);
      v33 = [v20 start];
      v34 = [v20 start];
      v35 = [v32 textRangeFromPosition:v33 toPosition:v34];
      v36 = objc_loadWeakRetained(&self->_textView);
      [v36 setSelectedTextRange:v35];

      v37 = [(_UITextAssistantManager *)self paragraphRangeForRange:offsetToContextualRange + v99, length];
      v39 = v38;
      v40 = objc_loadWeakRetained(&self->_textView);
      v41 = [v40 _nonNullUITextRangeFromNSRange:{v37, v39}];
      [v40 _boundingRectForRange:v41];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;

      v115.origin.x = v43;
      v115.origin.y = v45;
      v115.size.width = v47;
      v115.size.height = v49;
      Height = CGRectGetHeight(v115);

      self->_isReplacingTextByRequest = 1;
      v51 = [(_UITextAssistantManager *)self replaceRange:v20 withWritingToolsReplacement:v102];
      v23 = v51;
      self->_isReplacingTextByRequest = 0;
      if (v51)
      {
        v52 = [v51 length];
      }

      else
      {
        v52 = [v102 length];
      }

      v61 = [(_UITextAssistantManager *)self paragraphRangeForRange:offsetToContextualRange + v99, v52];
      v63 = v62;
      v64 = objc_loadWeakRetained(&self->_textView);
      v65 = [v64 _nonNullUITextRangeFromNSRange:{v61, v63}];
      [v64 _boundingRectForRange:v65];
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;

      v116.origin.x = v67;
      v116.origin.y = v69;
      v116.size.width = v71;
      v116.size.height = v73;
      v74 = CGRectGetHeight(v116);

      v75 = [_UIAnimatedTextSpacer alloc];
      [v100 delay];
      v77 = v76;
      [v100 duration];
      v79 = [(_UIAnimatedTextSpacer *)v75 initWithSpringBehavior:0 delay:v77 duration:v78];
      v80 = objc_loadWeakRetained(&self->_textView);
      v81 = [v80 textLayoutManager];

      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __125___UITextAssistantManager_writingToolsCoordinator_replaceRange_inContext_proposedText_reason_animationParameters_completion___block_invoke;
      v110[3] = &unk_1E70F3590;
      v82 = v81;
      v111 = v82;
      [(_UIAnimatedTextSpacer *)v79 setLayoutInvalidator:v110];
      v83 = [_UIAnimatedTextLayoutInfo alloc];
      v84 = objc_loadWeakRetained(&self->_textView);
      v85 = [v84 _NSTextRangeFromNSRange:{v61, v63}];
      v86 = [(_UIAnimatedTextLayoutInfo *)v83 initWithAnimatedTextSpacer:v79 animatingTextRange:v85];
      v87 = objc_loadWeakRetained(&self->_textView);
      [v87 _setUniqueWritingToolsAnimatedLayoutInfo:v86];

      objc_initWeak(&location, self);
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __125___UITextAssistantManager_writingToolsCoordinator_replaceRange_inContext_proposedText_reason_animationParameters_completion___block_invoke_2;
      v107[3] = &unk_1E70F5A28;
      objc_copyWeak(&v108, &location);
      [(_UIAnimatedTextSpacer *)v79 setCompletionHandler:v107];
      v88 = [(_UIAnimatedTextSpacer *)v79 beginExplicitHeightAnimationFromSource:Height toDestination:v74];
      v105[0] = MEMORY[0x1E69E9820];
      v105[1] = 3221225472;
      v105[2] = __125___UITextAssistantManager_writingToolsCoordinator_replaceRange_inContext_proposedText_reason_animationParameters_completion___block_invoke_3;
      v105[3] = &unk_1E7119C78;
      v89 = v88;
      v106 = v89;
      [v100 setProgressHandler:v105];
      v103[0] = MEMORY[0x1E69E9820];
      v103[1] = 3221225472;
      v103[2] = __125___UITextAssistantManager_writingToolsCoordinator_replaceRange_inContext_proposedText_reason_animationParameters_completion___block_invoke_4;
      v103[3] = &unk_1E70F3590;
      v90 = v89;
      v104 = v90;
      [v100 setCompletionHandler:v103];

      objc_destroyWeak(&v108);
      objc_destroyWeak(&location);
    }

    v101[2]();
  }

  else
  {
    v24 = v102;
    v25 = v101;
    v26 = objc_loadWeakRetained(&self->_textView);
    v27 = [v26 textStorage];
    v114.length = [v27 length];
    v113.location = offsetToContextualRange + v99;
    v113.length = length;
    v114.location = 0;
    v28 = NSIntersectionRange(v113, v114);

    if (a7)
    {
      self->_isReplacingTextByRequest = 1;
      v29 = objc_loadWeakRetained(&self->_textView);
      v30 = [v29 textStorage];
      [v30 replaceCharactersInRange:v28.location withAttributedString:{v28.length, v24}];

      v31 = 0;
      self->_isReplacingTextByRequest = 0;
    }

    else
    {
      v53 = objc_loadWeakRetained(&self->_textView);
      v54 = [v53 _nonNullUITextRangeFromNSRange:{v28.location, v28.length}];

      v55 = objc_loadWeakRetained(&self->_textView);
      v56 = [v54 start];
      v57 = [v54 start];
      v58 = [v55 textRangeFromPosition:v56 toPosition:v57];
      v59 = objc_loadWeakRetained(&self->_textView);
      [v59 setSelectedTextRange:v58];

      self->_isReplacingTextByRequest = 1;
      v60 = [(_UITextAssistantManager *)self replaceRange:v54 withWritingToolsReplacement:v24];
      v31 = v60;
      self->_isReplacingTextByRequest = 0;
      if (!v60)
      {
        v60 = v24;
      }

      v91 = [v60 length];
      v92 = objc_loadWeakRetained(&self->_textView);
      v93 = [v92 _nonNullUITextRangeFromNSRange:{offsetToContextualRange + v99, v91}];
      lastAnimatingReplacementRange = self->_lastAnimatingReplacementRange;
      self->_lastAnimatingReplacementRange = v93;
    }

    if (v31)
    {
      v95 = v31;
    }

    else
    {
      v95 = v24;
    }

    (v25[2])(v25, v95);
  }
}

- (void)writingToolsCoordinator:(id)a3 selectRanges:(id)a4 inContext:(id)a5 completion:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a6;
  if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184) && [v8 count] >= 2 && os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
  {
    v23 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &writingToolsCoordinator_selectRanges_inContext_completion____s_category) + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412290;
      v25 = v8;
      _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "_UITextAssistantManager doesn't yet support more than one selection at a time. Only the first of these ranges will be applied. %@", &v24, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v11 = [WeakRetained interactionAssistant];
  v12 = [v11 _selectionViewManager];
  [v12 setActivated:1];

  if ([v8 count])
  {
    v13 = [v8 objectAtIndexedSubscript:0];
    v14 = [v13 rangeValue];
    v16 = v15;

    offsetToContextualRange = self->_offsetToContextualRange;
    v18 = objc_loadWeakRetained(&self->_textView);
    v19 = [v18 _nonNullUITextRangeFromNSRange:{offsetToContextualRange + v14, v16}];
  }

  else
  {
    v19 = 0;
  }

  v20 = objc_loadWeakRetained(&self->_textView);
  [v20 setSelectedTextRange:v19];

  v21 = objc_loadWeakRetained(&self->_textView);
  [v21 _scrollToCaretIfNeeded];

  [(_UIInvalidatable *)self->_selectionUIHiddenAssertion _invalidate];
  selectionUIHiddenAssertion = self->_selectionUIHiddenAssertion;
  self->_selectionUIHiddenAssertion = 0;

  v9[2](v9);
}

- (void)writingToolsCoordinator:(id)a3 requestsRangeInContextWithIdentifierForPoint:(CGPoint)a4 completion:(id)a5
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a5;
  v8 = [v6 UUID];
  (*(a5 + 2))(v7, 0x7FFFFFFFFFFFFFFFLL, 0, v8);
}

- (void)writingToolsCoordinator:(id)a3 requestsBoundingBezierPathsForRange:(_NSRange)a4 inContext:(id)a5 completion:(id)a6
{
  length = a4.length;
  location = a4.location;
  v51 = *MEMORY[0x1E69E9840];
  v9 = a6;
  if (self)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = self->_offsetToContextualRange + location;
    }
  }

  else
  {
    length = 0;
    v10 = 0;
  }

  v11 = objc_loadWeakRetained(&self->_textView);
  v12 = [v11 _nonNullUITextRangeFromNSRange:{v10, length}];
  v13 = [v11 selectionRectsForRange:v12];

  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v47;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v47 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v46 + 1) + 8 * i) rect];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        WeakRetained = objc_loadWeakRetained(&self->_textView);
        v29 = [WeakRetained textInputTraits];
        [v29 selectionEdgeInsets];
        v31 = v21 + v30;
        v33 = v23 + v32;
        v35 = v25 - (v30 + v34);
        v37 = v27 - (v32 + v36);

        v38 = objc_loadWeakRetained(&self->_textView);
        v39 = [v38 textInputTraits];
        [v39 selectionCornerRadius];
        v41 = v40;

        v52.origin.x = v31;
        v52.origin.y = v33;
        v52.size.width = v35;
        v52.size.height = v37;
        v42 = CGRectGetHeight(v52) * 0.5;
        if (v42 >= v41)
        {
          v43 = v41;
        }

        else
        {
          v43 = v42;
        }

        if (v43 <= 0.0)
        {
          [UIBezierPath bezierPathWithRect:v31, v33, v35, v37];
        }

        else
        {
          [UIBezierPath bezierPathWithRoundedRect:v31 cornerRadius:v33, v35, v37];
        }
        v44 = ;
        [v14 addObject:v44];
      }

      v17 = [v15 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v17);
  }

  v45 = [v14 copy];
  v9[2](v9, v45);
}

- (void)writingToolsCoordinator:(id)a3 requestsUnderlinePathsForRange:(_NSRange)a4 inContext:(id)a5 completion:(id)a6
{
  length = a4.length;
  location = a4.location;
  v63 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v45 = a5;
  v44 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v12 = [WeakRetained interactionAssistant];
  v13 = [v12 _selectionViewManager];

  if (self)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    if (location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = self->_offsetToContextualRange + location;
    }
  }

  else
  {
    length = 0;
    v14 = 0;
  }

  v15 = objc_loadWeakRetained(&self->_textView);
  v42 = v14;
  v43 = length;
  v16 = [v15 _nonNullUITextRangeFromNSRange:{v14, length}];
  v17 = [v13 _underlineRectsForRange:v16];

  v18 = [MEMORY[0x1E695DF70] array];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v51;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v51 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v50 + 1) + 8 * i);
        [v24 fullRect];
        x = v64.origin.x;
        y = v64.origin.y;
        width = v64.size.width;
        if (CGRectIsNull(v64))
        {
          if (self->_viewportLayoutObservationToken)
          {
            continue;
          }

          v28 = [MEMORY[0x1E696AD88] defaultCenter];
          v29 = [MEMORY[0x1E696ADC8] mainQueue];
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __103___UITextAssistantManager_writingToolsCoordinator_requestsUnderlinePathsForRange_inContext_completion___block_invoke;
          v47[3] = &unk_1E71152B8;
          v48 = v46;
          v49 = v45;
          v30 = [v28 addObserverForName:@"_UITextViewportLayoutControllerDidLayout" object:0 queue:v29 usingBlock:v47];
          viewportLayoutObservationToken = self->_viewportLayoutObservationToken;
          self->_viewportLayoutObservationToken = v30;

          v32 = v48;
        }

        else
        {
          [v24 baselineOffset];
          v32 = [UIBezierPath bezierPathWithRoundedRect:x cornerRadius:y + v33 + 2.0, width, 2.0, 1.0];
          [v18 addObject:v32];
          if (self->_viewportLayoutObservationToken)
          {
            v34 = [MEMORY[0x1E696AD88] defaultCenter];
            [v34 removeObserver:self->_viewportLayoutObservationToken];

            v35 = self->_viewportLayoutObservationToken;
            self->_viewportLayoutObservationToken = 0;
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v21);
  }

  if (os_variant_has_internal_diagnostics())
  {
    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0)
    {
      if (byte_1EA95E184)
      {
        v37 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &writingToolsCoordinator_requestsUnderlinePathsForRange_inContext_completion____s_category) + 8);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = v37;
          v39 = objc_loadWeakRetained(&self->_textView);
          v40 = [v39 _nonNullUITextRangeFromNSRange:{v42, v43}];
          v41 = [v39 textInRange:v40];

          *buf = 138413058;
          v55 = v18;
          v56 = 2112;
          v57 = v41;
          v58 = 2048;
          v59 = v42;
          v60 = 2048;
          v61 = v43;
          _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_ERROR, "Returning underlinePaths,\n%@\n\tfor %@\n\trange in text: {%lu, %lu}", buf, 0x2Au);
        }
      }
    }
  }

  v36 = [v18 copy];
  v44[2](v44, v36);
}

- (void)writingToolsCoordinator:(id)a3 prepareForTextAnimation:(int64_t)a4 forRange:(_NSRange)a5 inContext:(id)a6 completion:(id)a7
{
  length = a5.length;
  location = a5.location;
  v22 = *MEMORY[0x1E69E9840];
  v11 = a7;
  if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
  {
    v13 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &writingToolsCoordinator_prepareForTextAnimation_forRange_inContext_completion____s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = UIWritingToolsCoordinatorTextAnimationDebugDescription(a4);
      v16 = 138412802;
      v17 = v15;
      v18 = 2048;
      v19 = location;
      v20 = 2048;
      v21 = length;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "prepareForTextAnimation: %@, range={%lu, %lu}", &v16, 0x20u);
    }
  }

  offsetToContextualRange = self->_offsetToContextualRange;
  [(_UITextAssistantManager *)self removeTextAnimationAttributesAtRange:offsetToContextualRange + location, length];
  [(_UITextAssistantManager *)self setUpTextAnimationContextForRange:offsetToContextualRange + location animation:length, a4];
  v11[2](v11);
}

- (void)writingToolsCoordinator:(id)a3 requestsPreviewForTextAnimation:(int64_t)a4 ofRange:(_NSRange)a5 inContext:(id)a6 completion:(id)a7
{
  length = a5.length;
  location = a5.location;
  v40 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v30 = a6;
  v13 = a7;
  if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
  {
    v24 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &writingToolsCoordinator_requestsPreviewForTextAnimation_ofRange_inContext_completion____s_category) + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = v24;
      v26 = UIWritingToolsCoordinatorTextAnimationDebugDescription(a4);
      *buf = 138412802;
      *&buf[4] = v26;
      *&buf[12] = 2048;
      *&buf[14] = location;
      *&buf[22] = 2048;
      v37 = length;
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "previewForTextAnimation: %@, range={%lu, %lu}", buf, 0x20u);
    }
  }

  offsetToContextualRange = self->_offsetToContextualRange;
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v16 = UIWritingToolsCoordinatorTextAnimationDebugDescription(a4);
  v17 = [(NSMutableDictionary *)self->_textAnimationContextsByAnimationType objectForKeyedSubscript:v15];
  if (!v17)
  {
    [(_UITextAssistantManager *)self setUpTextAnimationContextForRange:offsetToContextualRange + location animation:length, a4];
    v17 = [(NSMutableDictionary *)self->_textAnimationContextsByAnimationType objectForKeyedSubscript:v15];
  }

  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v19 = [WeakRetained _nonNullUITextRangeFromNSRange:{offsetToContextualRange + location, length}];

  if (([(UITextRange *)self->_lastAnimatingReplacementRange isEqual:v19]& 1) != 0)
  {
    lastAnimatingReplacementRange = 0;
  }

  else
  {
    lastAnimatingReplacementRange = self->_lastAnimatingReplacementRange;
  }

  v21 = lastAnimatingReplacementRange;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v37 = __Block_byref_object_copy__146;
  v38 = __Block_byref_object_dispose__146;
  v39 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __112___UITextAssistantManager_writingToolsCoordinator_requestsPreviewForTextAnimation_ofRange_inContext_completion___block_invoke;
  v31[3] = &unk_1E7119CA0;
  v22 = v21;
  v32 = v22;
  v33 = self;
  v35 = buf;
  v23 = v19;
  v34 = v23;
  [v17 snapshotWithComponents:0xFFFFLL exclusiveComponents:0 usingBlock:v31];
  if (!*(*&buf[8] + 40))
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"_UITextAssistantManager.m" lineNumber:525 description:{@"Failed to create targetedPreview for %@ of %@", v16, v23}];
  }

  v13[2](v13);

  _Block_object_dispose(buf, 8);
}

- (void)writingToolsCoordinator:(id)a3 finishTextAnimation:(int64_t)a4 forRange:(_NSRange)a5 inContext:(id)a6 completion:(id)a7
{
  length = a5.length;
  location = a5.location;
  v21 = *MEMORY[0x1E69E9840];
  v11 = a7;
  if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
  {
    v12 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &writingToolsCoordinator_finishTextAnimation_forRange_inContext_completion____s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v14 = UIWritingToolsCoordinatorTextAnimationDebugDescription(a4);
      v15 = 138412802;
      v16 = v14;
      v17 = 2048;
      v18 = location;
      v19 = 2048;
      v20 = length;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "finishTextAnimation: %@ forRange: {%lu, %lu}", &v15, 0x20u);
    }
  }

  [(_UITextAssistantManager *)self tearDownTextAnimationContextForAnimation:a4];
  if (a4 == 2)
  {
    [(_UITextAssistantManager *)self cleanUpAnimatedTextLayoutInfoIfNecessary];
  }

  v11[2](v11);
}

- (void)removeTextAnimationAttributesAtRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v6 = [WeakRetained attributedText];
  v12 = [v6 mutableCopy];

  v7 = [v12 length];
  if (location + length <= v7)
  {
    v8 = length;
  }

  else
  {
    v8 = v7 - location;
  }

  if (v7 >= location)
  {
    v9 = location;
  }

  else
  {
    v8 = 0;
    v9 = v7;
  }

  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  [v12 removeAttribute:*off_1E70ECA08 range:{v11, v10}];
}

- (void)setUpTextAnimationContextForRange:(_NSRange)a3 animation:(int64_t)a4
{
  length = a3.length;
  location = a3.location;
  v30[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v9 = [WeakRetained textLayoutManager];

  if (v9)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v11 = UIWritingToolsCoordinatorTextAnimationDebugDescription(a4);
    v12 = objc_loadWeakRetained(&self->_textView);
    v13 = [v12 _NSTextRangeFromNSRange:{location, length}];

    v14 = [(NSMutableDictionary *)self->_textAnimationContextsByAnimationType objectForKeyedSubscript:v10];

    if (!v14)
    {
      v15 = [_UITextAnimationContext alloc];
      v16 = objc_loadWeakRetained(&self->_textView);
      v17 = [v16 textLayoutManager];
      v30[0] = v13;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      v19 = [(_UITextAnimationContext *)v15 initWithTextLayoutManager:v17 textRanges:v18 animationName:v11];

      [(NSMutableDictionary *)self->_textAnimationContextsByAnimationType setObject:v19 forKeyedSubscript:v10];
      if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
      {
        v23 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49FAD8) + 8);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = 138412802;
          v25 = v19;
          v26 = 2112;
          v27 = v13;
          v28 = 2112;
          v29 = v11;
          _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Created %@ with %@ for %@", &v24, 0x20u);
        }
      }
    }

    [(_UITextAssistantManager *)self _invalidateViewportLayoutForTextRange:v13];
  }

  else if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
  {
    v20 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_MergedGlobals_1225) + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
      v22 = UIWritingToolsCoordinatorTextAnimationDebugDescription(a4);
      v24 = 138412290;
      v25 = v22;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Skipping animation context setup for %@ in TextKit 1 mode - animation features not supported", &v24, 0xCu);
    }
  }
}

- (void)tearDownTextAnimationContextForAnimation:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v6 = UIWritingToolsCoordinatorTextAnimationDebugDescription(a3);
  v7 = [(NSMutableDictionary *)self->_textAnimationContextsByAnimationType objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    [v7 finalizeAnimation];
    [(NSMutableDictionary *)self->_textAnimationContextsByAnimationType removeObjectForKey:v5];
    v9 = [v8 enclosingTextRange];
    [(_UITextAssistantManager *)self _invalidateViewportLayoutForTextRange:v9];
    if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
    {
      v10 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49FAE0) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412802;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Finalized and released %@, invalidating layout for %@ for %@", &v12, 0x20u);
      }
    }
  }

  else if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
  {
    v11 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49FAE8) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "_UITextAnimationContext already finalized and released or never created for %@", &v12, 0xCu);
    }
  }
}

- (id)_writingToolsCoordinator:(id)a3 textHighlightColorForScheme:(id)a4 inHighlightStyle:(id)a5
{
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v10 = [WeakRetained _containerView];

  v11 = *off_1E70ECA40;
  v16[0] = *off_1E70ECA80;
  v16[1] = v11;
  v17[0] = v7;
  v17[1] = v8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v13 = [v10 textHighlightRenderingAttributesForAttributes:v12];

  v14 = [v13 objectForKeyedSubscript:*off_1E70EC920];

  return v14;
}

- (void)_writingToolsCoordinator:(id)a3 didReceiveContexts:(id)a4
{
  v5 = a4;
  if ([v5 count] >= 2)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "UITextView does not support more than one UIWritingToolsCoordinatorContext at a time", buf, 2u);
      }
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &_writingToolsCoordinator_didReceiveContexts____s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "UITextView does not support more than one UIWritingToolsCoordinatorContext at a time", v10, 2u);
      }
    }
  }

  v6 = [v5 firstObject];
  activeContext = self->_activeContext;
  self->_activeContext = v6;
}

- (void)cleanUpAnimatedTextLayoutInfoIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v4 = [WeakRetained _uniqueWritingToolsAnimatedLayoutInfo];

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_textView);
    [v5 _setUniqueWritingToolsAnimatedLayoutInfo:0];

    [(_UITextAssistantManager *)self _invalidateViewportLayoutForTextRange:0];
  }
}

- (void)_invalidateViewportLayoutForTextRange:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v6 = WeakRetained;
  if (v4)
  {
    v7 = [WeakRetained textLayoutController];

    v12[0] = v4;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v9 = [v7 textRangeForTextKit2Ranges:v8];

    [v7 invalidateLayoutForRange:v9];
  }

  else
  {
    v10 = [WeakRetained textContainer];
    v11 = [v10 textViewportLayoutController];
    [v11 setNeedsLayout];
  }
}

- (_NSRange)paragraphRangeForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v6 = [WeakRetained attributedText];
  v7 = [v6 string];

  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v16 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *v21 = 0;
        _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Paragraph range requested with NSNotFound location. Please file a radar on UIKit if you have repro steps", v21, 2u);
      }
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49FAF0) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Paragraph range requested with NSNotFound location. Please file a radar on UIKit if you have repro steps", buf, 2u);
      }
    }

    location = [v7 length];
    length = 0;
  }

  else if (location + length > [v7 length])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v17 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *v19 = 0;
        _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Paragraph range requested for range overflowing beyond length of text. Please file a radar on UIKit if you have repro steps", v19, 2u);
      }
    }

    else
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49FAF8) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v18[0] = 0;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Paragraph range requested for range overflowing beyond length of text. Please file a radar on UIKit if you have repro steps", v18, 2u);
      }
    }

    v10 = [v7 length];
    if (v10 < location)
    {
      location = v10;
    }

    length = v10 - location;
  }

  v11 = [v7 paragraphRangeForRange:{location, length}];
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.length = v15;
  result.location = v14;
  return result;
}

- (id)replaceRange:(id)a3 withWritingToolsReplacement:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v9 = [WeakRetained textStorage];
  v10 = [v9 length];

  v11 = objc_loadWeakRetained(&self->_textView);
  v12 = [v11 _replaceRange:v6 withAttributedText:v7 updatingSelection:0];

  v13 = objc_loadWeakRetained(&self->_textView);
  v14 = [v13 _textStorageOverridesReplaceCharactersInRangeWithAttributedString];

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = objc_loadWeakRetained(&self->_textView);
  v16 = [v15 textStorage];
  v17 = [v16 length] - v10;

  v18 = objc_loadWeakRetained(&self->_textView);
  v19 = [v18 _nsrangeForTextRange:v6];
  v21 = v20;

  v22 = v21 + v17;
  v23 = [v7 length];
  if (v22 != v23)
  {
    v24 = objc_loadWeakRetained(&self->_textView);
    v25 = [v24 _textRangeFromNSRange:{v19, v22}];

    v12 = v25;
  }

  v26 = objc_loadWeakRetained(&self->_textView);
  v27 = [v26 attributedTextInRange:v12];

  if (v22 == v23 && [v27 isEqualToAttributedString:v7])
  {

LABEL_7:
    v27 = 0;
  }

  lastAnimatingReplacementRange = self->_lastAnimatingReplacementRange;
  self->_lastAnimatingReplacementRange = v12;

  return v27;
}

- (void)textViewDidReflowLayout
{
  if (self->_activeContext)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textView);
    v3 = [WeakRetained writingToolsCoordinator];
    v4 = [(UIWritingToolsCoordinatorContext *)self->_activeContext identifier];
    [v3 updateForReflowedTextInContextWithIdentifier:v4];
  }
}

- (void)updateForPasteDelegateWillPasteText:(id)a3 toTextRange:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
  {
    v17 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49FB00) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
      v19 = [v6 string];
      *buf = 136315650;
      v27 = "[_UITextAssistantManager updateForPasteDelegateWillPasteText:toTextRange:]";
      v28 = 2112;
      v29 = v19;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "%s received with pasteText=%@ pasteTextRange=%@", buf, 0x20u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v9 = [WeakRetained writingToolsCoordinator];

  if (v7)
  {
    p_pasteRangeInProgress = &self->_pasteRangeInProgress;
    if ((self->_pasteRangeInProgress || self->_pasteStringInProgress) && os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
    {
      v20 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49FB08) + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *p_pasteRangeInProgress;
        if (*p_pasteRangeInProgress)
        {
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Previous paste range, %@, wasn't cleared. ", *p_pasteRangeInProgress];
        }

        else
        {
          v25 = &stru_1EFB14550;
        }

        if (self->_pasteStringInProgress)
        {
          pasteStringInProgress = self->_pasteStringInProgress;
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Previous paste string, %@, wasn't cleared.", pasteStringInProgress];
        }

        else
        {
          pasteStringInProgress = 0;
          v23 = &stru_1EFB14550;
        }

        *buf = 138412546;
        v27 = v25;
        v28 = 2112;
        v24 = v23;
        v29 = v23;
        _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "%@%@", buf, 0x16u);
        if (pasteStringInProgress)
        {
        }

        if (v21)
        {
        }
      }
    }

    v11 = objc_loadWeakRetained(&self->_textView);
    v12 = [v11 _nsRangeForNonNullUITextRange:v7];
    v14 = v13;

    [(_UITextAssistantManager *)self updateForCharactersInRange:v12 withReplacement:v14 isUndoRedo:v6, 0];
    objc_storeStrong(&self->_pasteRangeInProgress, a4);
    v15 = [v6 string];
    v16 = self->_pasteStringInProgress;
    self->_pasteStringInProgress = v15;
  }

  else
  {
    [v9 stopWritingTools];
  }
}

- (void)updateForPasteDelegateDidPasteText:(id)a3 toTextRange:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
  {
    if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
    {
      v14 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49FB10) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = [v6 string];
        v17 = 136315650;
        v18 = "[_UITextAssistantManager updateForPasteDelegateDidPasteText:toTextRange:]";
        v19 = 2112;
        v20 = v16;
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "%s received with paste string=%@ pasteTextRange=%@", &v17, 0x20u);
      }
    }

    v10 = [v6 string];
    v11 = _deferringTokenEqualToToken(v10, self->_pasteStringInProgress);

    if ((v11 & 1) == 0 && os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
    {
      v12 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49FB18) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        pasteStringInProgress = self->_pasteStringInProgress;
        v17 = 138412290;
        v18 = pasteStringInProgress;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Paste string doesn't match in progress string, %@", &v17, 0xCu);
      }
    }
  }

  pasteRangeInProgress = self->_pasteRangeInProgress;
  self->_pasteRangeInProgress = 0;

  v9 = self->_pasteStringInProgress;
  self->_pasteStringInProgress = 0;
}

- (void)updateForCharactersInRange:(_NSRange)a3 withReplacement:(id)a4 isUndoRedo:(BOOL)a5
{
  length = a3.length;
  location = a3.location;
  v56 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = v10;
  if (!self->_pasteRangeInProgress)
  {
LABEL_16:
    v51 = v11;
    v49 = a2;
    v21 = a5 || self->_externalEditAction == 1;
    v50 = v21;
    WeakRetained = objc_loadWeakRetained(&self->_textView);
    v23 = [WeakRetained writingToolsCoordinator];

    v24 = [(UIWritingToolsCoordinatorContext *)self->_activeContext identifier];
    v25 = [v23 _adjustedResolvedRangeForContextWithIdentifier:v24];
    v27 = v26;

    offsetToContextualRange = self->_offsetToContextualRange;
    v29 = [(UIWritingToolsCoordinatorContext *)self->_activeContext attributedString];
    v30 = [v29 length];
    v31 = [(UIWritingToolsCoordinatorContext *)self->_activeContext resolvedRange];
    v33 = v25 + v27 + v30 - (v32 + v31);

    v57.location = location;
    v57.length = length;
    v58.location = offsetToContextualRange;
    v58.length = v33;
    v34 = NSIntersectionRange(v57, v58);
    v35 = v34.length;

    v36 = objc_loadWeakRetained(&self->_textView);
    v37 = [v36 writingToolsCoordinator];

    v38 = [(UIWritingToolsCoordinatorContext *)self->_activeContext identifier];
    if (location + length <= offsetToContextualRange)
    {
      v11 = v51;
      v40 = self->_offsetToContextualRange + [v51 length] - length;
      self->_offsetToContextualRange = v40;
      if (v40 < 0)
      {
        v48 = [MEMORY[0x1E696AAA8] currentHandler];
        [v48 handleFailureInMethod:v49 object:self file:@"_UITextAssistantManager.m" lineNumber:895 description:@"Invalid character offset after text update"];
      }

      [v37 updateForReflowedTextInContextWithIdentifier:v38];
    }

    else if (location < offsetToContextualRange || location + length > v33 + offsetToContextualRange)
    {
      v11 = v51;
      if (v34.length)
      {
        v41 = v51;
        v42 = v41;
        v43 = self->_offsetToContextualRange;
        if (v50)
        {
          if (location - v43 >= 0x7FFFFFFFFFFFFFFFLL)
          {
            v44 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v44 = location - v43;
          }

          v45 = v41;
          v35 = length;
        }

        else
        {
          v44 = v34.location - v43;
          v46 = [v41 length];
          if (v44 >= v46)
          {
            v47 = v46;
          }

          else
          {
            v47 = v44;
          }

          v45 = [v42 attributedSubstringFromRange:{v47, objc_msgSend(v42, "length") - v47}];

          v43 = self->_offsetToContextualRange;
        }

        if (location < v43)
        {
          self->_offsetToContextualRange += [v42 length] - length;
        }

        [v37 updateRange:v44 withText:v35 reason:v45 forContextWithIdentifier:{v50, v38}];

        v11 = v51;
      }
    }

    else
    {
      if (location - self->_offsetToContextualRange >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v39 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = location - self->_offsetToContextualRange;
      }

      v11 = v51;
      [v37 updateRange:v39 withText:length reason:v51 forContextWithIdentifier:{v50, v38}];
    }

    goto LABEL_43;
  }

  v12 = [v10 string];
  pasteStringInProgress = self->_pasteStringInProgress;
  v14 = v12;
  v15 = pasteStringInProgress;
  v16 = v15;
  if (v14 == v15)
  {

    goto LABEL_8;
  }

  if (!v14 || !v15)
  {

    goto LABEL_16;
  }

  v17 = [(NSString *)v14 isEqual:v15];

  if (!v17)
  {
    goto LABEL_16;
  }

LABEL_8:
  if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
  {
    v18 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &updateForCharactersInRange_withReplacement_isUndoRedo____s_category) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      pasteRangeInProgress = self->_pasteRangeInProgress;
      v19 = self->_pasteStringInProgress;
      *buf = 138412546;
      v53 = v19;
      v54 = 2112;
      v55 = pasteRangeInProgress;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Ignoring redundant update for in-progress paste of %@ to %@", buf, 0x16u);
    }
  }

LABEL_43:
}

- (void)finishUndoRedoChanges
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v6 = [WeakRetained _writingToolsCoordinator];

  v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
  v5 = [(UIWritingToolsCoordinatorContext *)self->_activeContext identifier];
  [v6 updateRange:0 withText:0 reason:v4 forContextWithIdentifier:{0, v5}];
}

- (void)reportTextChunkVisibilityUpdateForDelivery:(id)a3 textRange:(id)a4 visible:(BOOL)a5
{
  v5 = a5;
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (v7)
  {
    if (has_internal_diagnostics && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
    {
      v10 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49FB20) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = @"hidden";
        v17 = 138412802;
        if (v5)
        {
          v11 = @"visible";
        }

        v18 = v11;
        v19 = 2112;
        v20 = v8;
        v21 = 2112;
        v22 = v7;
        v12 = "Updating chunk visibility to %@ on range %@ for replacement delivery: %@";
        v13 = v10;
        v14 = 32;
LABEL_21:
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, v12, &v17, v14);
      }
    }
  }

  else if (has_internal_diagnostics && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
  {
    v15 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &qword_1ED49FB28) + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = @"hidden";
      if (v5)
      {
        v16 = @"visible";
      }

      v17 = 138412546;
      v18 = v16;
      v19 = 2112;
      v20 = v8;
      v12 = "Updating chunk visibility to %@ on range %@ for pondering effect";
      v13 = v15;
      v14 = 22;
      goto LABEL_21;
    }
  }
}

- (BOOL)performExternalEditsForWritingToolsSessionIdentifier:(id)a3 action:(int64_t)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v11 = [WeakRetained _isWritingToolsStreamingReplacements];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    externalEditAction = self->_externalEditAction;
    self->_externalEditAction = a4;
    v14 = objc_loadWeakRetained(&self->_textView);
    v12 = v9[2](v9, v14, v8, a4);

    self->_externalEditAction = externalEditAction;
  }

  return v12;
}

- (UITextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

@end