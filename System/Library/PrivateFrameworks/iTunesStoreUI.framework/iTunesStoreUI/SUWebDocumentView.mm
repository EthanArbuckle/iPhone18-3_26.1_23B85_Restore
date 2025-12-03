@interface SUWebDocumentView
- (SUWebDocumentView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)setHTMLFragment:(id)fragment;
- (void)setPlaintextString:(id)string;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action request:(id)request frame:(id)frame decisionListener:(id)listener;
- (void)webView:(id)view didFinishLoadForFrame:(id)frame;
@end

@implementation SUWebDocumentView

- (SUWebDocumentView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SUWebDocumentView;
  v3 = [(UIWebTiledView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setPlaintextString:(id)string
{
  if (string)
  {
    stringCopy = string;
  }

  else
  {
    stringCopy = &stru_1F41B3660;
  }

  v5 = SUCreateHTMLForPlainText(stringCopy, self->_stylesheet);
  [(SUWebDocumentView *)self loadHTMLString:v5 baseURL:0];
}

- (void)setHTMLFragment:(id)fragment
{
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"<html>"];
  stylesheet = self->_stylesheet;
  v8 = v5;
  if (stylesheet)
  {
    [v5 appendFormat:@"<head><style type=text/css>%@</style></head>", stylesheet];
    v5 = v8;
  }

  fragmentCopy = &stru_1F41B3660;
  if (fragment)
  {
    fragmentCopy = fragment;
  }

  [v5 appendFormat:@"<body>%@</body></html>", fragmentCopy];
  [(SUWebDocumentView *)self loadHTMLString:v8 baseURL:0];
}

- (void)webView:(id)view didFinishLoadForFrame:(id)frame
{
  if ([*(&self->super.super.super.super.super.isa + *MEMORY[0x1E69DD868]) mainFrame] == frame)
  {
    loadDelegate = self->_loadDelegate;

    [loadDelegate webViewDidFinishLoading:self];
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action request:(id)request frame:(id)frame decisionListener:(id)listener
{
  if ([objc_msgSend(action objectForKey:{*MEMORY[0x1E69E2FD0]), "integerValue"}])
  {

    [listener use];
  }

  else
  {
    [listener ignore];
    v9 = [request URL];
    v10 = +[SUClientDispatch clientInterface];

    SUOpenExternalURL(v9, v10);
  }
}

@end