@interface _UITextEmphasisBackgroundView
- (CGPoint)origin;
- (_UITextEmphasisBackgroundView)initWithTextView:(id)view;
- (void)drawRect:(CGRect)rect;
@end

@implementation _UITextEmphasisBackgroundView

- (_UITextEmphasisBackgroundView)initWithTextView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v8.receiver = self;
  v8.super_class = _UITextEmphasisBackgroundView;
  v5 = [(UIView *)&v8 initWithFrame:?];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_textView, viewCopy);
    [(UIView *)v6 setUserInteractionEnabled:0];
    [(UIView *)v6 setClipsToBounds:1];
    [(UIView *)v6 setAutoresizingMask:18];
    [(UIView *)v6 setOpaque:0];
  }

  return v6;
}

- (void)drawRect:(CGRect)rect
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  [WeakRetained drawTextHighlightBackgroundForTextRange:self->_textRange origin:{self->_origin.x, self->_origin.y}];
}

- (CGPoint)origin
{
  objc_copyStruct(v4, &self->_origin, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end