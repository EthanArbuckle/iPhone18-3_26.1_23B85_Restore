@interface RUIHTMLFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (RUIHTMLFooterView)initWithAttributes:(id)a3;
- (RUITableFooterDelegate)delegate;
- (void)layoutSubviews;
- (void)setText:(id)a3 attributes:(id)a4;
- (void)webContainerView:(id)a3 didClickLinkWithURL:(id)a4;
@end

@implementation RUIHTMLFooterView

- (RUIHTMLFooterView)initWithAttributes:(id)a3
{
  v4.receiver = self;
  v4.super_class = RUIHTMLFooterView;
  return [(RUIHTMLFooterView *)&v4 initWithFrame:a3, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
}

- (void)setText:(id)a3 attributes:(id)a4
{
  v18 = a3;
  v6 = a4;
  if (v18)
  {
    webContainerView = self->_webContainerView;
    if (webContainerView)
    {
      v8 = [v18 dataUsingEncoding:4];
      [(RUIWebContainerView *)webContainerView updateContent:v8];
    }

    else
    {
      v9 = [RUIWebContainerView alloc];
      v10 = [v18 dataUsingEncoding:4];
      v11 = [(RUIHTMLFooterView *)self baseURL];
      v12 = [(RUIWebContainerView *)v9 initWithContent:v10 baseURL:v11];
      v13 = self->_webContainerView;
      self->_webContainerView = v12;

      [(RUIWebContainerView *)self->_webContainerView setDelegate:self];
      v14 = self->_webContainerView;
      v15 = MEMORY[0x277CCACA8];
      v16 = RemoteUIFooterCSSTextColor();
      v17 = [v15 stringWithFormat:@"body { color: %@ font: -apple-system-footnote; line-height: 1.2em; } * { -webkit-text-size-adjust: none; } ", v16];;
      [(RUIWebContainerView *)v14 setUserStyleSheet:v17];

      [(RUIHTMLFooterView *)self addSubview:self->_webContainerView];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(RUIHTMLFooterView *)self footerHeightForWidth:self inView:a3.width, a3.height];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = RUIHTMLFooterView;
  [(RUIHTMLFooterView *)&v8 layoutSubviews];
  [(RUIWebContainerView *)self->_webContainerView frame];
  v4 = v3;
  [(RUIHTMLFooterView *)self bounds];
  v6 = v5;
  [(RUIWebContainerView *)self->_webContainerView heightForWidth:v5];
  [(RUIWebContainerView *)self->_webContainerView setFrame:v4, 8.0, v6, v7];
}

- (void)webContainerView:(id)a3 didClickLinkWithURL:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained footerView:self activatedLinkWithURL:v5];
}

- (RUITableFooterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end