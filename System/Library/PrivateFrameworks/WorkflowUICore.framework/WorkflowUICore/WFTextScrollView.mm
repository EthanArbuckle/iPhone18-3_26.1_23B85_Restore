@interface WFTextScrollView
- (BOOL)respondsToSelector:(SEL)a3;
- (CGSize)intrinsicContentSize;
- (UITextViewDelegate)textViewDelegate;
- (WFTextScrollView)initWithTextView:(id)a3;
- (_NSRange)selectedRange;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
- (void)layoutSubviews;
- (void)textUpdated;
- (void)textViewDidChangeSelection:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
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

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFTextScrollView;
  if (-[WFTextScrollView respondsToSelector:](&v8, sel_respondsToSelector_, [v4 selector]))
  {
    [v4 invokeWithTarget:self];
  }

  else
  {
    v5 = [(WFTextScrollView *)self textViewDelegate];
    [v4 selector];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(WFTextScrollView *)self textViewDelegate];
      [v4 invokeWithTarget:v7];
    }
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v9.receiver = self;
  v9.super_class = WFTextScrollView;
  if ([(WFTextScrollView *)&v9 respondsToSelector:?])
  {
    v8.receiver = self;
    v8.super_class = WFTextScrollView;
    v5 = [(WFTextScrollView *)&v8 methodSignatureForSelector:a3];
  }

  else
  {
    v6 = [(WFTextScrollView *)self textViewDelegate];
    v5 = [v6 methodSignatureForSelector:a3];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = WFTextScrollView;
  if ([(WFTextScrollView *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(WFTextScrollView *)self textViewDelegate];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)textViewDidEndEditing:(id)a3
{
  v7 = a3;
  v4 = [(WFTextScrollView *)self textViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFTextScrollView *)self textViewDelegate];
    [v6 textViewDidEndEditing:v7];
  }

  if ([(WFTextScrollView *)self isFirstResponder])
  {
    [(WFTextScrollView *)self resignFirstResponder];
  }
}

- (void)textViewDidChangeSelection:(id)a3
{
  v18 = a3;
  v4 = [(WFTextScrollView *)self textViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFTextScrollView *)self textViewDelegate];
    [v6 textViewDidChangeSelection:v18];
  }

  if (!self->_adjustmentEnabled)
  {
    [(WFTextScrollView *)self setContentOffset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    goto LABEL_12;
  }

  v7 = [(WFTextScrollView *)self selectedRange];
  v8 = [v18 selectedRange];
  [(WFTextScrollView *)self setSelectedRange:v8, v9];
  v10 = [(WFTextScrollView *)self selectedRange];
  v11 = [v18 selectedTextRange];
  v12 = v11;
  if (v10 >= v7)
  {
    v17 = [v11 end];
    v14 = [v18 positionFromPosition:v17 offset:1];

    if (!v14)
    {
      v15 = [v18 selectedTextRange];
      v16 = [v15 end];
      goto LABEL_10;
    }
  }

  else
  {
    v13 = [v11 start];
    v14 = [v18 positionFromPosition:v13 offset:-1];

    if (!v14)
    {
      v15 = [v18 selectedTextRange];
      v16 = [v15 start];
LABEL_10:
      v14 = v16;
    }
  }

  [v18 caretRectForPosition:v14];
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
    v20 = [(WFTextScrollView *)self textView];
    v7 = v20;
    v21 = 0.0;
    v22 = 0.0;
    v23 = v28;
    v24 = v30;
    goto LABEL_13;
  }

  [(WFTextScrollView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(WFTextScrollView *)self textView];
  v8 = [(WFTextScrollView *)self textView];
  v9 = [v8 attributedText];
  [v9 size];
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

  [v7 frame];
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  if (!CGRectEqualToRect(v34, v35))
  {
    v20 = v7;
    v21 = x;
    v22 = y;
    v23 = width;
    v24 = height;
LABEL_13:
    [v20 setFrame:{v21, v22, v23, v24}];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = [(WFTextScrollView *)self textView];
  [v2 intrinsicContentSize];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D77218] object:self->_textView];

  v4.receiver = self;
  v4.super_class = WFTextScrollView;
  [(WFTextScrollView *)&v4 dealloc];
}

- (WFTextScrollView)initWithTextView:(id)a3
{
  v5 = a3;
  v6 = [(WFTextScrollView *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textView, a3);
    v7->_adjustmentEnabled = 1;
    [v5 setDelegate:v7];
    [(WFTextScrollView *)v7 addSubview:v5];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel_textUpdated name:*MEMORY[0x277D77218] object:v5];

    [(WFTextScrollView *)v7 setScrollEnabled:0];
    [(WFTextScrollView *)v7 setScrollsToTop:0];
    LODWORD(v9) = 1132068864;
    [(WFTextScrollView *)v7 setContentCompressionResistancePriority:0 forAxis:v9];
    v10 = v7;
  }

  return v7;
}

@end