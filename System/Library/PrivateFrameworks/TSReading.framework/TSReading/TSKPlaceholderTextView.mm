@interface TSKPlaceholderTextView
- (BOOL)becomeFirstResponder;
- (TSKPlaceholderTextView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)p_textDidChange:(id)change;
- (void)removeFromSuperview;
- (void)setFont:(id)font;
- (void)setFrame:(CGRect)frame;
- (void)setPlaceholder:(id)placeholder;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextColor:(id)color;
@end

@implementation TSKPlaceholderTextView

- (TSKPlaceholderTextView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TSKPlaceholderTextView;
  v3 = [(TSKPlaceholderTextView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    -[TSKPlaceholderTextView setFont:](v3, "setFont:", [MEMORY[0x277D74300] systemFontOfSize:17.0]);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_p_textDidChange_ name:*MEMORY[0x277D77218] object:v3];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D77218] object:self];

  self->mPlaceholderView = 0;
  v4.receiver = self;
  v4.super_class = TSKPlaceholderTextView;
  [(TSKPlaceholderTextView *)&v4 dealloc];
}

- (void)setPlaceholder:(id)placeholder
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

  [(UILabel *)mPlaceholderView setText:placeholder];
  v6 = [-[TSKPlaceholderTextView text](self "text")] != 0;
  v7 = self->mPlaceholderView;

  [(UILabel *)v7 setHidden:v6];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setTextAlignment:(int64_t)alignment
{
  v5.receiver = self;
  v5.super_class = TSKPlaceholderTextView;
  [(TSKPlaceholderTextView *)&v5 setTextAlignment:?];
  [(UILabel *)self->mPlaceholderView setTextAlignment:alignment];
}

- (void)setFont:(id)font
{
  v5.receiver = self;
  v5.super_class = TSKPlaceholderTextView;
  [(TSKPlaceholderTextView *)&v5 setFont:?];
  [(UILabel *)self->mPlaceholderView setFont:font];
}

- (void)setTextColor:(id)color
{
  v5.receiver = self;
  v5.super_class = TSKPlaceholderTextView;
  [(TSKPlaceholderTextView *)&v5 setTextColor:?];
  [(UILabel *)self->mPlaceholderView setTextColor:color];
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

- (void)setText:(id)text
{
  v4.receiver = self;
  v4.super_class = TSKPlaceholderTextView;
  [(TSKPlaceholderTextView *)&v4 setText:text];
  -[UILabel setHidden:](self->mPlaceholderView, "setHidden:", [-[TSKPlaceholderTextView text](self "text")] != 0);
}

- (void)p_textDidChange:(id)change
{
  v4 = [-[TSKPlaceholderTextView text](self text] != 0;
  mPlaceholderView = self->mPlaceholderView;

  [(UILabel *)mPlaceholderView setHidden:v4];
}

- (BOOL)becomeFirstResponder
{
  isUserInteractionEnabled = [(TSKPlaceholderTextView *)self isUserInteractionEnabled];
  if (isUserInteractionEnabled)
  {
    v5.receiver = self;
    v5.super_class = TSKPlaceholderTextView;
    LOBYTE(isUserInteractionEnabled) = [(TSKPlaceholderTextView *)&v5 becomeFirstResponder];
  }

  return isUserInteractionEnabled;
}

@end