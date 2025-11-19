@interface SKUIMenuBarTemplateDocumentViewControllerEmbeddedPaletteHost
- (void)layoutSubviews;
- (void)setTitleView:(id)a3;
@end

@implementation SKUIMenuBarTemplateDocumentViewControllerEmbeddedPaletteHost

- (void)setTitleView:(id)a3
{
  v5 = a3;
  titleView = self->_titleView;
  v8 = v5;
  if (titleView)
  {
    [(UIView *)titleView removeFromSuperview];
    v7 = self->_titleView;
    self->_titleView = 0;

    v5 = v8;
  }

  if (v5)
  {
    [(SKUIMenuBarTemplateDocumentViewControllerEmbeddedPaletteHost *)self addSubview:v8];
    objc_storeStrong(&self->_titleView, a3);
    v5 = v8;
  }

  MEMORY[0x2821F96F8](titleView, v5);
}

- (void)layoutSubviews
{
  *&rect.origin.y = self;
  *&rect.size.width = SKUIMenuBarTemplateDocumentViewControllerEmbeddedPaletteHost;
  [(CGFloat *)&rect.origin.y layoutSubviews];
  [(SKUIMenuBarTemplateDocumentViewControllerEmbeddedPaletteHost *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_titleView frame];
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  rect.origin.x = v23.origin.x;
  v14 = CGRectGetWidth(v23);
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  if (v14 >= CGRectGetWidth(v24))
  {
    v25.origin.x = v4;
    v25.origin.y = v6;
    v25.size.width = v8;
    v25.size.height = v10;
    width = CGRectGetWidth(v25);
  }

  v26.origin.x = rect.origin.x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v15 = CGRectGetHeight(v26);
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  v16 = CGRectGetHeight(v27);
  if (v15 >= v16)
  {
    v28.origin.x = v4;
    v28.origin.y = v6;
    v28.size.width = v8;
    v28.size.height = v10;
    v16 = CGRectGetHeight(v28);
  }

  v17 = [(SKUIMenuBarTemplateDocumentViewControllerEmbeddedPaletteHost *)self traitCollection];
  [v17 displayScale];
  v19 = v18;
  if (v18 < 0.00000011920929)
  {
    v20 = [MEMORY[0x277D759A0] mainScreen];
    [v20 scale];
    v19 = v21;
  }

  UIRectCenteredXInRectScale();
  UIRectCenteredYInRectScale();
  [(UIView *)self->_titleView setFrame:*&v19];
}

@end