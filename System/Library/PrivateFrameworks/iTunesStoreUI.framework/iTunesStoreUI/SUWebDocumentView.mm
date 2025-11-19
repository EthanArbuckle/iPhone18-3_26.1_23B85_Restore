@interface SUWebDocumentView
- (SUWebDocumentView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)setHTMLFragment:(id)a3;
- (void)setPlaintextString:(id)a3;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 request:(id)a5 frame:(id)a6 decisionListener:(id)a7;
- (void)webView:(id)a3 didFinishLoadForFrame:(id)a4;
@end

@implementation SUWebDocumentView

- (SUWebDocumentView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SUWebDocumentView;
  v3 = [(UIWebTiledView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x1E69DD868];
    [*(&v3->super.super.super.super.super.isa + v5) setFrameLoadDelegate:v3];
    [*(&v4->super.super.super.super.super.isa + v5) setPolicyDelegate:v4];
    [(SUWebDocumentView *)v4 setAutoresizes:1];
    [(UIWebTiledView *)v4 setTilingEnabled:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69DD868];
  [*(&self->super.super.super.super.super.isa + v3) setFrameLoadDelegate:0];
  [*(&self->super.super.super.super.super.isa + v3) setPolicyDelegate:0];

  self->_stylesheet = 0;
  v4.receiver = self;
  v4.super_class = SUWebDocumentView;
  [(UIWebTiledView *)&v4 dealloc];
}

- (void)setPlaintextString:(id)a3
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_1F41B3660;
  }

  v5 = SUCreateHTMLForPlainText(v4, self->_stylesheet);
  [(SUWebDocumentView *)self loadHTMLString:v5 baseURL:0];
}

- (void)setHTMLFragment:(id)a3
{
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"<html>"];
  stylesheet = self->_stylesheet;
  v8 = v5;
  if (stylesheet)
  {
    [v5 appendFormat:@"<head><style type=text/css>%@</style></head>", stylesheet];
    v5 = v8;
  }

  v7 = &stru_1F41B3660;
  if (a3)
  {
    v7 = a3;
  }

  [v5 appendFormat:@"<body>%@</body></html>", v7];
  [(SUWebDocumentView *)self loadHTMLString:v8 baseURL:0];
}

- (void)webView:(id)a3 didFinishLoadForFrame:(id)a4
{
  if ([*(&self->super.super.super.super.super.isa + *MEMORY[0x1E69DD868]) mainFrame] == a4)
  {
    loadDelegate = self->_loadDelegate;

    [loadDelegate webViewDidFinishLoading:self];
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 request:(id)a5 frame:(id)a6 decisionListener:(id)a7
{
  if ([objc_msgSend(a4 objectForKey:{*MEMORY[0x1E69E2FD0]), "integerValue"}])
  {

    [a7 use];
  }

  else
  {
    [a7 ignore];
    v9 = [a5 URL];
    v10 = +[SUClientDispatch clientInterface];

    SUOpenExternalURL(v9, v10);
  }
}

@end