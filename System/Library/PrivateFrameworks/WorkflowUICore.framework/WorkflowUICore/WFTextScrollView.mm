@interface WFTextScrollView
- (BOOL)respondsToSelector:(SEL)selector;
- (CGSize)intrinsicContentSize;
- (UITextViewDelegate)textViewDelegate;
- (WFTextScrollView)initWithTextView:(id)view;
- (_NSRange)selectedRange;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)layoutSubviews;
- (void)textUpdated;
- (void)textViewDidChangeSelection:(id)selection;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation WFTextScrollView

- (_NSRange)selectedRange
{
  p_selectedRange = &self->_selectedRange;
  location = self->_selectedRange.location;
  length = p_selectedRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (UITextViewDelegate)textViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textViewDelegate);

  return WeakRetained;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v8.receiver = self;
  v8.super_class = WFTextScrollView;
  if (-[WFTextScrollView respondsToSelector:](&v8, sel_respondsToSelector_, [invocationCopy selector]))
  {
    [invocationCopy invokeWithTarget:self];
  }

  else
  {
    textViewDelegate = [(WFTextScrollView *)self textViewDelegate];
    [invocationCopy selector];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      textViewDelegate2 = [(WFTextScrollView *)self textViewDelegate];
      [invocationCopy invokeWithTarget:textViewDelegate2];
    }
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = WFTextScrollView;
  if ([(WFTextScrollView *)&v9 respondsToSelector:?])
  {
    v8.receiver = self;
    v8.super_class = WFTextScrollView;
    v5 = [(WFTextScrollView *)&v8 methodSignatureForSelector:selector];
  }

  else
  {
    textViewDelegate = [(WFTextScrollView *)self textViewDelegate];
    v5 = [textViewDelegate methodSignatureForSelector:selector];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = WFTextScrollView;
  if ([(WFTextScrollView *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    textViewDelegate = [(WFTextScrollView *)self textViewDelegate];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  textViewDelegate = [(WFTextScrollView *)self textViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    textViewDelegate2 = [(WFTextScrollView *)self textViewDelegate];
    [textViewDelegate2 textViewDidEndEditing:editingCopy];
  }

  if ([(WFTextScrollView *)self isFirstResponder])
  {
    [(WFTextScrollView *)self resignFirstResponder];
  }
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  textViewDelegate = [(WFTextScrollView *)self textViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    textViewDelegate2 = [(WFTextScrollView *)self textViewDelegate];
    [textViewDelegate2 textViewDidChangeSelection:selectionCopy];
  }

  if (!self->_adjustmentEnabled)
  {
    [(WFTextScrollView *)self setContentOffset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    goto LABEL_12;
  }

  selectedRange = [(WFTextScrollView *)self selectedRange];
  selectedRange2 = [selectionCopy selectedRange];
  [(WFTextScrollView *)self setSelectedRange:selectedRange2, v9];
  selectedRange3 = [(WFTextScrollView *)self selectedRange];
  selectedTextRange = [selectionCopy selectedTextRange];
  v12 = selectedTextRange;
  if (selectedRange3 >= selectedRange)
  {
    v17 = [selectedTextRange end];
    v14 = [selectionCopy positionFromPosition:v17 offset:1];

    if (!v14)
    {
      selectedTextRange2 = [selectionCopy selectedTextRange];
      start2 = [selectedTextRange2 end];
      goto LABEL_10;
    }
  }

  else
  {
    start = [selectedTextRange start];
    v14 = [selectionCopy positionFromPosition:start offset:-1];

    if (!v14)
    {
      selectedTextRange2 = [selectionCopy selectedTextRange];
      start2 = [selectedTextRange2 start];
LABEL_10:
      v14 = start2;
    }
  }

  [selectionCopy caretRectForPosition:v14];
  [(WFTextScrollView *)self scrollRectToVisible:0 animated:?];

LABEL_12:
}

- (void)textUpdated
{
  [(WFTextScrollView *)self invalidateIntrinsicContentSize];
  if (self->_adjustmentEnabled)
  {
    [(WFTextScrollView *)self setNeedsLayout];

    [(WFTextScrollView *)self layoutIfNeeded];
  }
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = WFTextScrollView;
  [(WFTextScrollView *)&v31 layoutSubviews];
  if (!self->_adjustmentEnabled)
  {
    [(WFTextScrollView *)self frame];
    [(WFTextScrollView *)self setContentSize:v25, v26];
    [(WFTextScrollView *)self frame];
    v28 = v27;
    [(WFTextScrollView *)self frame];
    v30 = v29;
    textView = [(WFTextScrollView *)self textView];
    textView2 = textView;
    v21 = 0.0;
    v22 = 0.0;
    v23 = v28;
    v24 = v30;
    goto LABEL_13;
  }

  [(WFTextScrollView *)self bounds];
  v4 = v3;
  v6 = v5;
  textView2 = [(WFTextScrollView *)self textView];
  textView3 = [(WFTextScrollView *)self textView];
  attributedText = [textView3 attributedText];
  [attributedText size];
  v11 = v10 + 10.0;

  if (v11 >= v4)
  {
    v12 = v11;
  }

  else
  {
    v12 = v4;
  }

  v32.size.width = ceil(v12);
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.height = v6;
  v33 = CGRectIntegral(v32);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  [(WFTextScrollView *)self contentSize];
  if (width != v18 || v6 != v17)
  {
    [(WFTextScrollView *)self setContentSize:width, v6];
  }

  [textView2 frame];
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  if (!CGRectEqualToRect(v34, v35))
  {
    textView = textView2;
    v21 = x;
    v22 = y;
    v23 = width;
    v24 = height;
LABEL_13:
    [textView setFrame:{v21, v22, v23, v24}];
  }
}

- (CGSize)intrinsicContentSize
{
  textView = [(WFTextScrollView *)self textView];
  [textView intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D77218] object:self->_textView];

  v4.receiver = self;
  v4.super_class = WFTextScrollView;
  [(WFTextScrollView *)&v4 dealloc];
}

- (WFTextScrollView)initWithTextView:(id)view
{
  viewCopy = view;
  v6 = [(WFTextScrollView *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textView, view);
    v7->_adjustmentEnabled = 1;
    [viewCopy setDelegate:v7];
    [(WFTextScrollView *)v7 addSubview:viewCopy];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_textUpdated name:*MEMORY[0x277D77218] object:viewCopy];

    [(WFTextScrollView *)v7 setScrollEnabled:0];
    [(WFTextScrollView *)v7 setScrollsToTop:0];
    LODWORD(v9) = 1132068864;
    [(WFTextScrollView *)v7 setContentCompressionResistancePriority:0 forAxis:v9];
    v10 = v7;
  }

  return v7;
}

@end