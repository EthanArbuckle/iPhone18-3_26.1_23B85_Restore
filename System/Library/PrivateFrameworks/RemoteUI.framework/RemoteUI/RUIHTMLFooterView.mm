@interface RUIHTMLFooterView
- (CGSize)sizeThatFits:(CGSize)fits;
- (RUIHTMLFooterView)initWithAttributes:(id)attributes;
- (RUITableFooterDelegate)delegate;
- (void)layoutSubviews;
- (void)setText:(id)text attributes:(id)attributes;
- (void)webContainerView:(id)view didClickLinkWithURL:(id)l;
@end

@implementation RUIHTMLFooterView

- (RUIHTMLFooterView)initWithAttributes:(id)attributes
{
  v4.receiver = self;
  v4.super_class = RUIHTMLFooterView;
  return [(RUIHTMLFooterView *)&v4 initWithFrame:attributes, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
}

- (void)setText:(id)text attributes:(id)attributes
{
  textCopy = text;
  attributesCopy = attributes;
  if (textCopy)
  {
    webContainerView = self->_webContainerView;
    if (webContainerView)
    {
      v8 = [textCopy dataUsingEncoding:4];
      [(RUIWebContainerView *)webContainerView updateContent:v8];
    }

    else
    {
      v9 = [RUIWebContainerView alloc];
      v10 = [textCopy dataUsingEncoding:4];
      baseURL = [(RUIHTMLFooterView *)self baseURL];
      v12 = [(RUIWebContainerView *)v9 initWithContent:v10 baseURL:baseURL];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(RUIHTMLFooterView *)self footerHeightForWidth:self inView:fits.width, fits.height];
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

- (void)webContainerView:(id)view didClickLinkWithURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained footerView:self activatedLinkWithURL:lCopy];
}

- (RUITableFooterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end