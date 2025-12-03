@interface UISelectionTapRecognizer
- (BOOL)isCloseToSelection;
- (void)setState:(int64_t)state;
@end

@implementation UISelectionTapRecognizer

- (BOOL)isCloseToSelection
{
  v72 = *MEMORY[0x1E69E9840];
  textView = [(UISelectionTapRecognizer *)self textView];
  interactionAssistant = [textView interactionAssistant];
  activeSelection = [interactionAssistant activeSelection];

  selectedRange = [activeSelection selectedRange];

  if (selectedRange)
  {
    selectedRange2 = [activeSelection selectedRange];
    isEmpty = [selectedRange2 isEmpty];

    if (isEmpty)
    {
      [activeSelection caretRect];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      textView2 = [(UISelectionTapRecognizer *)self textView];
      _proxyTextInput = [textView2 _proxyTextInput];
      textInputView = [_proxyTextInput textInputView];
      view = [(UIGestureRecognizer *)self view];
      [textInputView convertRect:view toView:{v10, v12, v14, v16}];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      [(UITapGestureRecognizer *)self centroid];
      v31 = sqrt((v22 + v26 * 0.5 - v29) * (v22 + v26 * 0.5 - v29) + (v24 + v28 * 0.5 - v30) * (v24 + v28 * 0.5 - v30)) < 50.0;
    }

    else
    {
      selectionRects = [activeSelection selectionRects];
      if ([selectionRects count])
      {
        v33 = *MEMORY[0x1E695F058];
        v34 = *(MEMORY[0x1E695F058] + 8);
        v35 = *(MEMORY[0x1E695F058] + 16);
        v36 = *(MEMORY[0x1E695F058] + 24);
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v37 = selectionRects;
        v38 = [v37 countByEnumeratingWithState:&v67 objects:v71 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = 0;
          v41 = *v68;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v68 != v41)
              {
                objc_enumerationMutation(v37);
              }

              [*(*(&v67 + 1) + 8 * i) rect];
              v47 = v43;
              v48 = v44;
              v49 = v45;
              v50 = v46;
              if (-v40 != i)
              {
                v73.origin.x = v33;
                v73.origin.y = v34;
                v73.size.width = v35;
                v73.size.height = v36;
                *&v43 = CGRectUnion(v73, *&v47);
              }

              v33 = v43;
              v34 = v44;
              v35 = v45;
              v36 = v46;
            }

            v40 += v39;
            v39 = [v37 countByEnumeratingWithState:&v67 objects:v71 count:16];
          }

          while (v39);
        }

        textView3 = [(UISelectionTapRecognizer *)self textView];
        _proxyTextInput2 = [textView3 _proxyTextInput];
        textInputView2 = [_proxyTextInput2 textInputView];
        view2 = [(UIGestureRecognizer *)self view];
        [textInputView2 convertRect:view2 toView:{v33, v34, v35, v36}];
        v56 = v55;
        v58 = v57;
        v60 = v59;
        v62 = v61;

        [(UITapGestureRecognizer *)self centroid];
        UIDistanceBetweenPointAndRect(v63, v64, v56, v58, v60, v62);
        v31 = v65 < 20.0;
      }

      else
      {
        v31 = 0;
      }
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (void)setState:(int64_t)state
{
  if (self)
  {
    v5 = ([(UIGestureRecognizer *)self _state]- 1) < 3;
  }

  else
  {
    v5 = 0;
  }

  if ((state - 4) >= 0xFFFFFFFFFFFFFFFDLL && !v5 && ![(UISelectionTapRecognizer *)self isCloseToSelection])
  {
    state = 5;
  }

  v6.receiver = self;
  v6.super_class = UISelectionTapRecognizer;
  [(UIGestureRecognizer *)&v6 setState:state];
}

@end