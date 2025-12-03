@interface SUGradientButton
- (SUGradientButton)initWithFrame:(CGRect)frame;
- (void)sendAction:(SEL)action to:(id)to forEvent:(id)event;
- (void)sizeToFit;
@end

@implementation SUGradientButton

- (SUGradientButton)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SUGradientButton;
  v3 = [(SUGradientButton *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    titleLabel = [(SUGradientButton *)v3 titleLabel];
    [titleLabel setTextAlignment:1];
    [titleLabel setFont:{objc_msgSend(MEMORY[0x1E69DB878], "boldSystemFontOfSize:", 15.0)}];
    [titleLabel setLineBreakMode:0];
    [titleLabel setNumberOfLines:2];
    [(SUGradientButton *)v3 contentEdgeInsets];
    [(SUGradientButton *)v3 setContentEdgeInsets:5.0, 7.0, 5.0, 7.0];
  }

  return v3;
}

- (void)sendAction:(SEL)action to:(id)to forEvent:(id)event
{
  [(SUGradientButton *)self setSelected:1];
  v9.receiver = self;
  v9.super_class = SUGradientButton;
  [(SUGradientButton *)&v9 sendAction:action to:to forEvent:event];
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