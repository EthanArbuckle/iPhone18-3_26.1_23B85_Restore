@interface RUIHTMLHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (RUIHTMLHeaderView)initWithAttributes:(id)a3;
- (RUIHeaderDelegate)delegate;
- (double)_topPadding;
- (double)headerHeightForWidth:(double)a3 inView:(id)a4;
- (double)webViewWidth;
- (id)quoteEncodedStringWithString:(id)a3;
- (void)layoutSubviews;
- (void)setFooterStyleText:(id)a3 attributes:(id)a4;
- (void)setHTMLContent:(id)a3 toElementsMatchingQuery:(id)a4;
- (void)setSectionIsFirst:(BOOL)a3;
- (void)setText:(id)a3 attributes:(id)a4;
- (void)webContainerView:(id)a3 didClickLinkWithURL:(id)a4;
- (void)webContainerViewContentDidChange:(id)a3;
@end

@implementation RUIHTMLHeaderView

- (RUIHTMLHeaderView)initWithAttributes:(id)a3
{
  v4.receiver = self;
  v4.super_class = RUIHTMLHeaderView;
  return [(RUIHTMLHeaderView *)&v4 initWithFrame:a3, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
}

- (void)setText:(id)a3 attributes:(id)a4
{
  v14 = a3;
  [(RUIWebContainerView *)self->_webContainerView removeFromSuperview];
  webContainerView = self->_webContainerView;
  self->_webContainerView = 0;

  if (v14)
  {
    v6 = [RUIWebContainerView alloc];
    v7 = [v14 dataUsingEncoding:4];
    v8 = [(RUIHTMLHeaderView *)self baseURL];
    v9 = [(RUIWebContainerView *)v6 initWithContent:v7 baseURL:v8];
    v10 = self->_webContainerView;
    self->_webContainerView = v9;

    [(RUIWebContainerView *)self->_webContainerView setDelegate:self];
    v11 = MEMORY[0x277CCACA8];
    v12 = RemoteUIHeaderCSSTextColor();
    v13 = [v11 stringWithFormat:@"body { color: %@ font: -apple-system-footnote; line-height: 1.2em; } html { -webkit-text-size-adjust: none; }", v12];;

    [(RUIWebContainerView *)self->_webContainerView setUserStyleSheet:v13];
    [(RUIHTMLHeaderView *)self addSubview:self->_webContainerView];
  }
}

- (void)setFooterStyleText:(id)a3 attributes:(id)a4
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
      v11 = [(RUIHTMLHeaderView *)self baseURL];
      v12 = [(RUIWebContainerView *)v9 initWithContent:v10 baseURL:v11];
      v13 = self->_webContainerView;
      self->_webContainerView = v12;

      [(RUIWebContainerView *)self->_webContainerView setDelegate:self];
      v14 = self->_webContainerView;
      v15 = MEMORY[0x277CCACA8];
      v16 = RemoteUIFooterCSSTextColor();
      v17 = [v15 stringWithFormat:@"body { color: %@ font: -apple-system-footnote; } html { -webkit-text-size-adjust: none; }", v16];;
      [(RUIWebContainerView *)v14 setUserStyleSheet:v17];

      [(RUIHTMLHeaderView *)self addSubview:self->_webContainerView];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(RUIHTMLHeaderView *)self headerHeightForWidth:0 inView:a3.width, a3.height];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (double)headerHeightForWidth:(double)a3 inView:(id)a4
{
  webContainerView = self->_webContainerView;
  [(RUIHTMLHeaderView *)self webViewWidthForWidth:a4, a3];
  [(RUIWebContainerView *)webContainerView heightForWidth:?];
  v7 = v6;
  [(RUIHTMLHeaderView *)self _topPadding];
  return v7 + v8 + 6.0;
}

- (void)setSectionIsFirst:(BOOL)a3
{
  if (self->_isFirstSection != a3)
  {
    self->_isFirstSection = a3;
    [(RUIHTMLHeaderView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = RUIHTMLHeaderView;
  [(RUIHTMLHeaderView *)&v8 layoutSubviews];
  [(RUIWebContainerView *)self->_webContainerView frame];
  [(RUIHTMLHeaderView *)self webViewWidth];
  v4 = v3;
  [(RUIWebContainerView *)self->_webContainerView heightForWidth:?];
  v6 = v5;
  [(RUIHTMLHeaderView *)self _topPadding];
  [(RUIWebContainerView *)self->_webContainerView setFrame:0.0, v7, v4, v6];
}

- (double)_topPadding
{
  result = 16.0;
  if (self->_isFirstSection)
  {
    return 22.0;
  }

  return result;
}

- (id)quoteEncodedStringWithString:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277CCAAA0];
    v12[0] = v3;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v7 = [v5 dataWithJSONObject:v6 options:0 error:0];

    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
      v9 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"[] "];
      v10 = [v8 stringByTrimmingCharactersInSet:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setHTMLContent:(id)a3 toElementsMatchingQuery:(id)a4
{
  v6 = a4;
  v11 = [(RUIHTMLHeaderView *)self quoteEncodedStringWithString:a3];
  v7 = [(RUIHTMLHeaderView *)self quoteEncodedStringWithString:v6];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(function(){ document.querySelectorAll(%@).forEach(function(element) {element.innerHTML = %@}) })()", v7, v11];;
  v9 = [(RUIWebContainerView *)self->_webContainerView webView];
  v10 = [v9 stringByEvaluatingJavaScriptFromString:v8];

  [(RUIHTMLHeaderView *)self setNeedsLayout];
}

- (double)webViewWidth
{
  [(RUIHTMLHeaderView *)self bounds];

  [(RUIHTMLHeaderView *)self webViewWidthForWidth:v3];
  return result;
}

- (void)webContainerViewContentDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 headerViewDidChange:self];
  }
}

- (void)webContainerView:(id)a3 didClickLinkWithURL:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained headerView:self activatedLinkWithURL:v5];
}

- (RUIHeaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end