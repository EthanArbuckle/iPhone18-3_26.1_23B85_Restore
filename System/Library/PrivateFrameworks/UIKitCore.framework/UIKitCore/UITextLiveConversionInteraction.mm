@interface UITextLiveConversionInteraction
- (UITextLiveConversionInteraction)initWithTextInput:(id)input;
- (double)pointSize;
- (id)_liveConversionPanGestureRecognizer;
- (id)_liveConversionTapGestureRecognizer;
- (void)_pan:(id)_pan;
- (void)_tap:(id)_tap;
- (void)willMoveToView:(id)view;
@end

@implementation UITextLiveConversionInteraction

- (UITextLiveConversionInteraction)initWithTextInput:(id)input
{
  inputCopy = input;
  v9.receiver = self;
  v9.super_class = UITextLiveConversionInteraction;
  v6 = [(UITextInteraction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textInput, input);
  }

  return v7;
}

- (void)willMoveToView:(id)view
{
  v6.receiver = self;
  v6.super_class = UITextLiveConversionInteraction;
  [(UITextInteraction *)&v6 willMoveToView:view];
  self->_panOffset = 0;
  _liveConversionTapGestureRecognizer = [(UITextLiveConversionInteraction *)self _liveConversionTapGestureRecognizer];
  [(UITextInteraction *)self addGestureRecognizer:_liveConversionTapGestureRecognizer withName:0x1EFBA7750];

  _liveConversionPanGestureRecognizer = [(UITextLiveConversionInteraction *)self _liveConversionPanGestureRecognizer];
  [(UITextInteraction *)self addGestureRecognizer:_liveConversionPanGestureRecognizer withName:0x1EFBA7770];
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

- (void)_tap:(id)_tap
{
  v49 = *MEMORY[0x1E69E9840];
  _tapCopy = _tap;
  _proxyTextInput = [(UITextInput *)self->_textInput _proxyTextInput];
  v6 = +[UIKeyboardImpl activeInstance];
  textInputView = [_proxyTextInput textInputView];
  [_tapCopy centroid];
  v9 = v8;
  v11 = v10;
  view = [_tapCopy view];
  [textInputView convertPoint:view fromView:{v9, v11}];
  v14 = v13;
  v16 = v15;

  markedTextRange = [_proxyTextInput markedTextRange];
  if (markedTextRange)
  {
    v18 = [_proxyTextInput closestPositionToPoint:markedTextRange withinRange:{v14, v16}];
    [_proxyTextInput selectionRectsForRange:markedTextRange];
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

            start = [markedTextRange start];
            selectedTextRange = [_proxyTextInput selectedTextRange];
            start2 = [selectedTextRange start];
            v40 = [_proxyTextInput offsetFromPosition:start toPosition:start2];

            start3 = [markedTextRange start];
            v29 = [_proxyTextInput offsetFromPosition:start3 toPosition:v18];

            v24 = [_proxyTextInput textRangeFromPosition:v18 toPosition:v18];
            textInputView2 = [_proxyTextInput textInputView];
            v31 = objc_opt_respondsToSelector();

            if (v31)
            {
              textInputView3 = [_proxyTextInput textInputView];
              v33 = [textInputView3 performSelector:sel_attributedSubstringForMarkedRange];

              if (v29 < [v33 length])
              {
                *buf = 0;
                v43 = 0;
                v34 = [v33 attribute:*off_1E70EC968 atIndex:v29 effectiveRange:buf];
                if (v43 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v29 = *buf + v43;
                  start4 = [markedTextRange start];
                  v36 = [_proxyTextInput positionFromPosition:start4 offset:v29];

                  v37 = [_proxyTextInput textRangeFromPosition:v36 toPosition:v36];

                  v24 = v37;
                }
              }

              v38 = v40;
            }

            else
            {
              v38 = v40;
            }

            [_proxyTextInput setSelectedTextRange:{v24, v40}];
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

- (void)_pan:(id)_pan
{
  _panCopy = _pan;
  v11 = +[UIKeyboardImpl activeInstance];
  view = [_panCopy view];
  [_panCopy translationInView:view];
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
  _proxyTextInput = [(UITextInput *)self->_textInput _proxyTextInput];
  _fontForCaretSelection = [_proxyTextInput _fontForCaretSelection];
  [_fontForCaretSelection pointSize];
  v5 = v4;

  if (v5 <= 0.0)
  {
    [off_1E70ECC18 systemFontSize];
    v5 = v6;
  }

  return v5;
}

@end