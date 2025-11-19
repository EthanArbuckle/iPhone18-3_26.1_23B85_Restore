@interface _TVFocusRedirectView
- (_TVFocusRedirectView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation _TVFocusRedirectView

- (_TVFocusRedirectView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _TVFocusRedirectView;
  v3 = [(_TVFocusRedirectView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D754F8]);
    containerGuide = v3->_containerGuide;
    v3->_containerGuide = v4;

    [(_TVFocusRedirectView *)v3 addLayoutGuide:v3->_containerGuide];
    v6 = v3->_containerGuide;
    [(_TVFocusRedirectView *)v3 bounds];
    [(UIFocusContainerGuide *)v6 _setManualLayoutFrame:?];
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _TVFocusRedirectView;
  [(_TVFocusRedirectView *)&v4 layoutSubviews];
  containerGuide = self->_containerGuide;
  [(_TVFocusRedirectView *)self bounds];
  [(UIFocusContainerGuide *)containerGuide _setManualLayoutFrame:?];
}

@end