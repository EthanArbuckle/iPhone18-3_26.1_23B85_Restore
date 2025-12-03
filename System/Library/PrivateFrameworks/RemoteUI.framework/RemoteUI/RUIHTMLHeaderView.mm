@interface RUIHTMLHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (RUIHTMLHeaderView)initWithAttributes:(id)attributes;
- (RUIHeaderDelegate)delegate;
- (double)_topPadding;
- (double)headerHeightForWidth:(double)width inView:(id)view;
- (double)webViewWidth;
- (id)quoteEncodedStringWithString:(id)string;
- (void)layoutSubviews;
- (void)setFooterStyleText:(id)text attributes:(id)attributes;
- (void)setHTMLContent:(id)content toElementsMatchingQuery:(id)query;
- (void)setSectionIsFirst:(BOOL)first;
- (void)setText:(id)text attributes:(id)attributes;
- (void)webContainerView:(id)view didClickLinkWithURL:(id)l;
- (void)webContainerViewContentDidChange:(id)change;
@end

@implementation RUIHTMLHeaderView

- (RUIHTMLHeaderView)initWithAttributes:(id)attributes
{
  v4.receiver = self;
  v4.super_class = RUIHTMLHeaderView;
  return [(RUIHTMLHeaderView *)&v4 initWithFrame:attributes, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
}

- (void)setText:(id)text attributes:(id)attributes
{
  textCopy = text;
  [(RUIWebContainerView *)self->_webContainerView removeFromSuperview];
  webContainerView = self->_webContainerView;
  self->_webContainerView = 0;

  if (textCopy)
  {
    v6 = [RUIWebContainerView alloc];
    v7 = [textCopy dataUsingEncoding:4];
    baseURL = [(RUIHTMLHeaderView *)self baseURL];
    v9 = [(RUIWebContainerView *)v6 initWithContent:v7 baseURL:baseURL];
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

- (void)setFooterStyleText:(id)text attributes:(id)attributes
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
      baseURL = [(RUIHTMLHeaderView *)self baseURL];
      v12 = [(RUIWebContainerView *)v9 initWithContent:v10 baseURL:baseURL];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(RUIHTMLHeaderView *)self headerHeightForWidth:0 inView:fits.width, fits.height];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (double)headerHeightForWidth:(double)width inView:(id)view
{
  webContainerView = self->_webContainerView;
  [(RUIHTMLHeaderView *)self webViewWidthForWidth:view, width];
  [(RUIWebContainerView *)webContainerView heightForWidth:?];
  v7 = v6;
  [(RUIHTMLHeaderView *)self _topPadding];
  return v7 + v8 + 6.0;
}

- (void)setSectionIsFirst:(BOOL)first
{
  if (self->_isFirstSection != first)
  {
    self->_isFirstSection = first;
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

- (id)quoteEncodedStringWithString:(id)string
{
  v12[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    v5 = MEMORY[0x277CCAAA0];
    v12[0] = stringCopy;
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

- (void)setHTMLContent:(id)content toElementsMatchingQuery:(id)query
{
  queryCopy = query;
  v11 = [(RUIHTMLHeaderView *)self quoteEncodedStringWithString:content];
  v7 = [(RUIHTMLHeaderView *)self quoteEncodedStringWithString:queryCopy];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(function(){ document.querySelectorAll(%@).forEach(function(element) {element.innerHTML = %@}) })()", v7, v11];;
  webView = [(RUIWebContainerView *)self->_webContainerView webView];
  v10 = [webView stringByEvaluatingJavaScriptFromString:v8];

  [(RUIHTMLHeaderView *)self setNeedsLayout];
}

- (double)webViewWidth
{
  [(RUIHTMLHeaderView *)self bounds];

  [(RUIHTMLHeaderView *)self webViewWidthForWidth:v3];
  return result;
}

- (void)webContainerViewContentDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 headerViewDidChange:self];
  }
}

- (void)webContainerView:(id)view didClickLinkWithURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained headerView:self activatedLinkWithURL:lCopy];
}

- (RUIHeaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end