@interface SXPlaceholderArticleThumbnailComponentView
- (SXPlaceholderArticleThumbnailComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory;
- (void)layoutSubviews;
- (void)loadComponent:(id)component;
@end

@implementation SXPlaceholderArticleThumbnailComponentView

- (SXPlaceholderArticleThumbnailComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory
{
  v11.receiver = self;
  v11.super_class = SXPlaceholderArticleThumbnailComponentView;
  v6 = [(SXComponentView *)&v11 initWithDOMObjectProvider:provider viewport:viewport presentationDelegate:delegate componentStyleRendererFactory:factory];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v6->_label;
    v6->_label = v7;

    [(UILabel *)v6->_label setNumberOfLines:0];
    [(UILabel *)v6->_label setTextAlignment:1];
    contentView = [(SXComponentView *)v6 contentView];
    [contentView addSubview:v6->_label];
  }

  return v6;
}

- (void)loadComponent:(id)component
{
  v7.receiver = self;
  v7.super_class = SXPlaceholderArticleThumbnailComponentView;
  componentCopy = component;
  [(SXComponentView *)&v7 loadComponent:componentCopy];
  label = self->_label;
  identifier = [componentCopy identifier];

  [(UILabel *)label setText:identifier];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SXPlaceholderArticleThumbnailComponentView;
  [(SXPlaceholderArticleThumbnailComponentView *)&v4 layoutSubviews];
  label = self->_label;
  [(SXPlaceholderArticleThumbnailComponentView *)self bounds];
  [(UILabel *)label setFrame:?];
}

@end