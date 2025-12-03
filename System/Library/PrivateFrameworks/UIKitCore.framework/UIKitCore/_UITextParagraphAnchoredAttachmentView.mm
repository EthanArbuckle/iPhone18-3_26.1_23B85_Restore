@interface _UITextParagraphAnchoredAttachmentView
- (NSTextLayoutFragment)textLayoutFragment;
- (NSTextParagraphAnchoredAttachment)anchoredAttachment;
- (_UITextParagraphAnchoredAttachmentView)initWithTextLayoutCanvasView:(id)view anchoredAttachment:(id)attachment;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setTextLayoutFragment:(id)fragment;
@end

@implementation _UITextParagraphAnchoredAttachmentView

- (NSTextLayoutFragment)textLayoutFragment
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutFragment);

  return WeakRetained;
}

- (void)setTextLayoutFragment:(id)fragment
{
  obj = fragment;
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutFragment);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_textLayoutFragment, obj);
    [(UIView *)self setNeedsLayout];
    [(UIView *)self setNeedsDisplay];
    v5 = obj;
  }
}

- (_UITextParagraphAnchoredAttachmentView)initWithTextLayoutCanvasView:(id)view anchoredAttachment:(id)attachment
{
  viewCopy = view;
  attachmentCopy = attachment;
  [viewCopy bounds];
  v11.receiver = self;
  v11.super_class = _UITextParagraphAnchoredAttachmentView;
  v8 = [(UIView *)&v11 initWithFrame:?];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_textLayoutCanvasView, viewCopy);
    objc_storeWeak(&v9->_anchoredAttachment, attachmentCopy);
    [(UIView *)v9 setOpaque:0];
    [(UIView *)v9 setClipsToBounds:1];
    [(UIView *)v9 _setHostsLayoutEngine:1];
  }

  return v9;
}

- (void)layoutSubviews
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutFragment);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_textLayoutCanvasView);
    v5 = objc_loadWeakRetained(&self->_anchoredAttachment);
    v6 = objc_loadWeakRetained(&self->_textLayoutFragment);
    [v4 frameForAnchoredTextAttachment:v5 associatedLayoutFragment:v6];
    [(UIView *)self setFrame:?];

    v17.receiver = self;
    v17.super_class = _UITextParagraphAnchoredAttachmentView;
    [(UIView *)&v17 layoutSubviews];
    attachmentViewProvider = self->_attachmentViewProvider;
    if (attachmentViewProvider || (v8 = objc_loadWeakRetained(&self->_textLayoutFragment), v9 = objc_loadWeakRetained(&self->_anchoredAttachment), [v8 textAttachmentViewProviderForTextParagraphAnchoredAttachment:v9], v10 = objc_claimAutoreleasedReturnValue(), v11 = self->_attachmentViewProvider, self->_attachmentViewProvider = v10, v11, v9, v8, (attachmentViewProvider = self->_attachmentViewProvider) != 0))
    {
      view = [(NSTextAttachmentViewProvider *)attachmentViewProvider view];
      v13 = view;
      if (view)
      {
        superview = [view superview];

        if (superview != self)
        {
          [(UIView *)self addSubview:v13];
        }
      }

      [(UIView *)self bounds];
      [v13 setFrame:?];
    }
  }

  else
  {
    v15 = self->_attachmentViewProvider;
    self->_attachmentViewProvider = 0;

    v16.receiver = self;
    v16.super_class = _UITextParagraphAnchoredAttachmentView;
    [(UIView *)&v16 layoutSubviews];
  }
}

- (void)drawRect:(CGRect)rect
{
  WeakRetained = objc_loadWeakRetained(&self->_textLayoutFragment);
  v4 = objc_loadWeakRetained(&self->_anchoredAttachment);
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  [WeakRetained drawTextParagraphAnchoredAttachment:v4 bounds:v14 context:{v6, v8, v10, v12}];
}

- (NSTextParagraphAnchoredAttachment)anchoredAttachment
{
  WeakRetained = objc_loadWeakRetained(&self->_anchoredAttachment);

  return WeakRetained;
}

@end