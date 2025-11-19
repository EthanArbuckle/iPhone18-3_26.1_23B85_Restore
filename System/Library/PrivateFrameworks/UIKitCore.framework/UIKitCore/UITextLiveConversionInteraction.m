@interface UITextLiveConversionInteraction
- (UITextLiveConversionInteraction)initWithTextInput:(id)a3;
- (double)pointSize;
- (id)_liveConversionPanGestureRecognizer;
- (id)_liveConversionTapGestureRecognizer;
- (void)_pan:(id)a3;
- (void)_tap:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation UITextLiveConversionInteraction

- (UITextLiveConversionInteraction)initWithTextInput:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UITextLiveConversionInteraction;
  v6 = [(UITextInteraction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textInput, a3);
  }

  return v7;
}

- (void)willMoveToView:(id)a3
{
  v6.receiver = self;
  v6.super_class = UITextLiveConversionInteraction;
  [(UITextInteraction *)&v6 willMoveToView:a3];
  self->_panOffset = 0;
  v4 = [(UITextLiveConversionInteraction *)self _liveConversionTapGestureRecognizer];
  [(UITextInteraction *)self addGestureRecognizer:v4 withName:0x1EFBA7750];

  v5 = [(UITextLiveConversionInteraction *)self _liveConversionPanGestureRecognizer];
  [(UITextInteraction *)self addGestureRecognizer:v5 withName:0x1EFBA7770];
}

- (id)_liveConversionTapGestureRecognizer
{
  v2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__tap_];

  return v2;
}

- (id)_liveConversionPanGestureRecognizer
{
  v2 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__pan_];

  return v2;
}

- (void)_tap:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UITextInput *)self->_textInput _proxyTextInput];
  v6 = +[UIKeyboardImpl activeInstance];
  v7 = [v5 textInputView];
  [v4 centroid];
  v9 = v8;
  v11 = v10;
  v12 = [v4 view];
  [v7 convertPoint:v12 fromView:{v9, v11}];
  v14 = v13;
  v16 = v15;

  v17 = [v5 markedTextRange];
  if (v17)
  {
    v18 = [v5 closestPositionToPoint:v17 withinRange:{v14, v16}];
    [v5 selectionRectsForRange:v17];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v19 = v47 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v45;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v45 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v44 + 1) + 8 * i) rect];
          v52 = CGRectInset(v51, -22.0, -22.0);
          v50.x = v14;
          v50.y = v16;
          if (CGRectContainsPoint(v52, v50))
          {
            v41 = v6;

            v25 = [v17 start];
            v26 = [v5 selectedTextRange];
            v27 = [v26 start];
            v40 = [v5 offsetFromPosition:v25 toPosition:v27];

            v28 = [v17 start];
            v29 = [v5 offsetFromPosition:v28 toPosition:v18];

            v24 = [v5 textRangeFromPosition:v18 toPosition:v18];
            v30 = [v5 textInputView];
            v31 = objc_opt_respondsToSelector();

            if (v31)
            {
              v32 = [v5 textInputView];
              v33 = [v32 performSelector:sel_attributedSubstringForMarkedRange];

              if (v29 < [v33 length])
              {
                *buf = 0;
                v43 = 0;
                v34 = [v33 attribute:*off_1E70EC968 atIndex:v29 effectiveRange:buf];
                if (v43 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v29 = *buf + v43;
                  v35 = [v17 start];
                  v36 = [v5 positionFromPosition:v35 offset:v29];

                  v37 = [v5 textRangeFromPosition:v36 toPosition:v36];

                  v24 = v37;
                }
              }

              v38 = v40;
            }

            else
            {
              v38 = v40;
            }

            [v5 setSelectedTextRange:{v24, v40}];
            if (v29 == v38)
            {
              v6 = v41;
            }

            else
            {
              v6 = v41;
              [v41 didChangePhraseBoundary];
            }

            goto LABEL_23;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v24 = +[UIKeyboard activeKeyboard];
    [v24 acceptAutocorrectionWithCompletionHandler:0];
LABEL_23:

    goto LABEL_24;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v18 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "markedTextRange should not be nil", buf, 2u);
    }

LABEL_24:

    goto LABEL_25;
  }

  v39 = *(__UILogGetCategoryCachedImpl("Assert", &_tap____s_category) + 8);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v39, OS_LOG_TYPE_ERROR, "markedTextRange should not be nil", buf, 2u);
  }

LABEL_25:
}

- (void)_pan:(id)a3
{
  v4 = a3;
  v11 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 view];
  [v4 translationInView:v5];
  v7 = v6;

  [(UITextLiveConversionInteraction *)self pointSize];
  v9 = (v7 / v8);
  panOffset = self->_panOffset;
  if (v9 != panOffset)
  {
    [v11 adjustSegmentSize:v9 - panOffset];
    self->_panOffset = v9;
  }
}

- (double)pointSize
{
  v2 = [(UITextInput *)self->_textInput _proxyTextInput];
  v3 = [v2 _fontForCaretSelection];
  [v3 pointSize];
  v5 = v4;

  if (v5 <= 0.0)
  {
    [off_1E70ECC18 systemFontSize];
    v5 = v6;
  }

  return v5;
}

@end