@interface SUMarkupCell
- (SUMarkupCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)dealloc;
- (void)setBackgroundColor:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation SUMarkupCell

- (SUMarkupCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = SUMarkupCell;
  v4 = [(SUTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(SUTableCellContentView *)v4->super._configurationView removeFromSuperview];
  }

  return v5;
}

- (void)dealloc
{
  self->_webView = 0;
  v3.receiver = self;
  v3.super_class = SUMarkupCell;
  [(SUTableCell *)&v3 dealloc];
}

- (void)setBackgroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = SUMarkupCell;
  [(SUMarkupCell *)&v5 setBackgroundColor:?];
  [(SUWebDocumentView *)self->_webView setBackgroundColor:a3];
}

- (void)setConfiguration:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SUMarkupCell *)a2 setConfiguration:?];
  }

  v8.receiver = self;
  v8.super_class = SUMarkupCell;
  [(SUTableCell *)&v8 setConfiguration:a3];
  v6 = [objc_msgSend(a3 "context")];
  webView = self->_webView;
  if (v6 != webView)
  {
    [(SUWebDocumentView *)webView removeFromSuperview];

    self->_webView = v6;
    [(SUWebDocumentView *)self->_webView setBackgroundColor:[(SUMarkupCell *)self backgroundColor]];
    if (self->_webView)
    {
      [-[SUMarkupCell contentView](self "contentView")];
    }
  }
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = SUMarkupCell;
  [(SUTableCell *)&v4 setHighlighted:0 animated:0];
}

- (uint64_t)setConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUMarkupCell.m" lineNumber:40 description:@"Configuration for markup cell must be markup configuration"];
}

@end