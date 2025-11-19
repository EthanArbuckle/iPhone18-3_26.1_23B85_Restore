@interface SUGradientButton
- (SUGradientButton)initWithFrame:(CGRect)a3;
- (void)sendAction:(SEL)a3 to:(id)a4 forEvent:(id)a5;
- (void)sizeToFit;
@end

@implementation SUGradientButton

- (SUGradientButton)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SUGradientButton;
  v3 = [(SUGradientButton *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    -[SUGradientButton setBackgroundImage:forState:](v3, "setBackgroundImage:forState:", [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:@"GradientButtonBackground.png" inBundle:{v4), "stretchableImageWithLeftCapWidth:topCapHeight:", 7, 0}], 0);
    -[SUGradientButton setTitleColor:forState:](v3, "setTitleColor:forState:", [MEMORY[0x1E69DC888] blackColor], 0);
    v5 = [objc_msgSend(MEMORY[0x1E69DCAB8] imageNamed:@"GradientButtonBackgroundPressed.png" inBundle:{v4), "stretchableImageWithLeftCapWidth:topCapHeight:", 7, 0}];
    [(SUGradientButton *)v3 setBackgroundImage:v5 forState:1];
    [(SUGradientButton *)v3 setBackgroundImage:v5 forState:4];
    -[SUGradientButton setTitleColor:forState:](v3, "setTitleColor:forState:", [MEMORY[0x1E69DC888] whiteColor], 1);
    -[SUGradientButton setTitleColor:forState:](v3, "setTitleColor:forState:", [MEMORY[0x1E69DC888] whiteColor], 4);
    v6 = [(SUGradientButton *)v3 titleLabel];
    [v6 setTextAlignment:1];
    [v6 setFont:{objc_msgSend(MEMORY[0x1E69DB878], "boldSystemFontOfSize:", 15.0)}];
    [v6 setLineBreakMode:0];
    [v6 setNumberOfLines:2];
    [(SUGradientButton *)v3 contentEdgeInsets];
    [(SUGradientButton *)v3 setContentEdgeInsets:5.0, 7.0, 5.0, 7.0];
  }

  return v3;
}

- (void)sendAction:(SEL)a3 to:(id)a4 forEvent:(id)a5
{
  [(SUGradientButton *)self setSelected:1];
  v9.receiver = self;
  v9.super_class = SUGradientButton;
  [(SUGradientButton *)&v9 sendAction:a3 to:a4 forEvent:a5];
}

- (void)sizeToFit
{
  v3.receiver = self;
  v3.super_class = SUGradientButton;
  [(SUGradientButton *)&v3 sizeToFit];
  [(SUGradientButton *)self frame];
  [(SUGradientButton *)self setFrame:?];
}

@end