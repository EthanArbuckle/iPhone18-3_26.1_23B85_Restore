@interface OKNavigatorView
- (void)commonInit;
- (void)dealloc;
@end

@implementation OKNavigatorView

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = OKNavigatorView;
  [(OFUIView *)&v3 commonInit];
  -[OKNavigatorView setBackgroundColor:](self, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKNavigatorView;
  [(OFUIView *)&v2 dealloc];
}

@end