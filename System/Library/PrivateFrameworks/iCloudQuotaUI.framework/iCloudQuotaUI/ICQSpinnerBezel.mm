@interface ICQSpinnerBezel
- (ICQSpinnerBezel)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ICQSpinnerBezel

- (ICQSpinnerBezel)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = ICQSpinnerBezel;
  v3 = [(ICQSpinnerBezel *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
    spinner = v3->_spinner;
    v3->_spinner = v4;

    v6 = v3->_spinner;
    v7 = [MEMORY[0x277D75348] whiteColor];
    [(UIActivityIndicatorView *)v6 setColor:v7];

    [(UIActivityIndicatorView *)v3->_spinner startAnimating];
    [(ICQSpinnerBezel *)v3 addSubview:v3->_spinner];
    v8 = [MEMORY[0x277D75348] clearColor];
    [(ICQSpinnerBezel *)v3 setBackgroundColor:v8];
  }

  return v3;
}

- (void)layoutSubviews
{
  [(ICQSpinnerBezel *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIActivityIndicatorView *)self->_spinner frame];
  v8 = (v4 - v7) * 0.5;
  v9 = floorf(v8);
  v11 = v6 * 0.5 - v10;
  spinner = self->_spinner;
  v13 = floorf(v11);

  [(UIActivityIndicatorView *)spinner setFrame:v9, v13];
}

- (void)drawRect:(CGRect)a3
{
  [(ICQSpinnerBezel *)self bounds:a3.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v16 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:? cornerRadius:?];
  v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.699999988];
  [v10 set];

  [v16 fill];
  v11 = [MEMORY[0x277D75348] whiteColor];
  [v11 set];

  v12 = v9 * 0.5;
  v13 = floorf(v12);
  bezelText = self->_bezelText;
  v15 = [MEMORY[0x277D74300] boldSystemFontOfSize:22.0];
  [(NSString *)bezelText _legacy_drawInRect:v15 withFont:0 lineBreakMode:1 alignment:v5, v13 + 10.0, v7, v13];
}

@end