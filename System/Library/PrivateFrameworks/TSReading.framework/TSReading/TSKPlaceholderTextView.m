@interface TSKPlaceholderTextView
- (BOOL)becomeFirstResponder;
- (TSKPlaceholderTextView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)p_textDidChange:(id)a3;
- (void)removeFromSuperview;
- (void)setFont:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setPlaceholder:(id)a3;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextColor:(id)a3;
@end

@implementation TSKPlaceholderTextView

- (TSKPlaceholderTextView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TSKPlaceholderTextView;
  v3 = [(TSKPlaceholderTextView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    -[TSKPlaceholderTextView setFont:](v3, "setFont:", [MEMORY[0x277D74300] systemFontOfSize:17.0]);
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel_p_textDidChange_ name:*MEMORY[0x277D77218] object:v3];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D77218] object:self];

  self->mPlaceholderView = 0;
  v4.receiver = self;
  v4.super_class = TSKPlaceholderTextView;
  [(TSKPlaceholderTextView *)&v4 dealloc];
}

- (void)setPlaceholder:(id)a3
{
  mPlaceholderView = self->mPlaceholderView;
  if (!mPlaceholderView)
  {
    [(TSKPlaceholderTextView *)self frame];
    v10 = CGRectInset(v9, 2.0, 0.0);
    self->mPlaceholderView = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10.origin.x, v10.origin.y, v10.size.width, v10.size.height}];
    [(UILabel *)self->mPlaceholderView setTextAlignment:[(TSKPlaceholderTextView *)self textAlignment]];
    [(UILabel *)self->mPlaceholderView setFont:[(TSKPlaceholderTextView *)self font]];
    [(UILabel *)self->mPlaceholderView setTextColor:[(TSKPlaceholderTextView *)self textColor]];
    [(UILabel *)self->mPlaceholderView setAlpha:0.600000024];
    [(UILabel *)self->mPlaceholderView setOpaque:0];
    -[UILabel setBackgroundColor:](self->mPlaceholderView, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    [(UILabel *)self->mPlaceholderView setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->mPlaceholderView setMinimumFontSize:12.0];
    [-[TSKPlaceholderTextView superview](self "superview")];
    mPlaceholderView = self->mPlaceholderView;
  }

  [(UILabel *)mPlaceholderView setText:a3];
  v6 = [-[TSKPlaceholderTextView text](self "text")] != 0;
  v7 = self->mPlaceholderView;

  [(UILabel *)v7 setHidden:v6];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = TSKPlaceholderTextView;
  [(TSKPlaceholderTextView *)&v8 setFrame:?];
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  v10 = CGRectInset(v9, 6.0, 0.0);
  [(UILabel *)self->mPlaceholderView setFrame:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];
}

- (void)setTextAlignment:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = TSKPlaceholderTextView;
  [(TSKPlaceholderTextView *)&v5 setTextAlignment:?];
  [(UILabel *)self->mPlaceholderView setTextAlignment:a3];
}

- (void)setFont:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSKPlaceholderTextView;
  [(TSKPlaceholderTextView *)&v5 setFont:?];
  [(UILabel *)self->mPlaceholderView setFont:a3];
}

- (void)setTextColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSKPlaceholderTextView;
  [(TSKPlaceholderTextView *)&v5 setTextColor:?];
  [(UILabel *)self->mPlaceholderView setTextColor:a3];
}

- (void)removeFromSuperview
{
  [(UILabel *)self->mPlaceholderView removeFromSuperview];
  v3.receiver = self;
  v3.super_class = TSKPlaceholderTextView;
  [(TSKPlaceholderTextView *)&v3 removeFromSuperview];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = TSKPlaceholderTextView;
  [(TSKPlaceholderTextView *)&v3 didMoveToSuperview];
  [-[TSKPlaceholderTextView superview](self "superview")];
}

- (void)setText:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSKPlaceholderTextView;
  [(TSKPlaceholderTextView *)&v4 setText:a3];
  -[UILabel setHidden:](self->mPlaceholderView, "setHidden:", [-[TSKPlaceholderTextView text](self "text")] != 0);
}

- (void)p_textDidChange:(id)a3
{
  v4 = [-[TSKPlaceholderTextView text](self text] != 0;
  mPlaceholderView = self->mPlaceholderView;

  [(UILabel *)mPlaceholderView setHidden:v4];
}

- (BOOL)becomeFirstResponder
{
  v3 = [(TSKPlaceholderTextView *)self isUserInteractionEnabled];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = TSKPlaceholderTextView;
    LOBYTE(v3) = [(TSKPlaceholderTextView *)&v5 becomeFirstResponder];
  }

  return v3;
}

@end