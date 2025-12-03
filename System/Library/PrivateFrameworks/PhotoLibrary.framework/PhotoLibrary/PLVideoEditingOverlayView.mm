@interface PLVideoEditingOverlayView
- (PLVideoEditingOverlayView)initWithFrame:(CGRect)frame;
- (void)setBody:(id)body;
- (void)setTitle:(id)title;
@end

@implementation PLVideoEditingOverlayView

- (void)setBody:(id)body
{
  [(UITextView *)self->_bodyLabel setText:body];

  [(PLVideoEditingOverlayView *)self setNeedsLayout];
}

- (void)setTitle:(id)title
{
  [(UILabel *)self->_titleLabel setText:title];

  [(PLVideoEditingOverlayView *)self setNeedsLayout];
}

- (PLVideoEditingOverlayView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = PLVideoEditingOverlayView;
  v3 = [(PLVideoEditingOverlayView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PLVideoEditingOverlayView *)v3 bounds];
    x = v15.origin.x;
    y = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
    v9 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 16.0, CGRectGetWidth(v15), 32.0}];
    v4->_titleLabel = v9;
    [(UILabel *)v9 setOpaque:0];
    -[UILabel setBackgroundColor:](v4->_titleLabel, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    -[UILabel setFont:](v4->_titleLabel, "setFont:", [MEMORY[0x277D74300] boldSystemFontOfSize:18.0]);
    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    [(PLVideoEditingOverlayView *)v4 addSubview:v4->_titleLabel];
    [(UILabel *)v4->_titleLabel setAutoresizingMask:34];

    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v10 = CGRectGetWidth(v16);
    [(PLVideoEditingOverlayView *)v4 bounds];
    v11 = [objc_alloc(MEMORY[0x277D75C40]) initWithFrame:0 textContainer:{0.0, 48.0, v10, CGRectGetMaxY(v17) + -48.0}];
    v4->_bodyLabel = v11;
    [(UITextView *)v11 setEditable:0];
    [(UITextView *)v4->_bodyLabel setSelectable:0];
    [(UITextView *)v4->_bodyLabel setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(UITextView *)v4->_bodyLabel setOpaque:0];
    -[UITextView setBackgroundColor:](v4->_bodyLabel, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    -[UITextView setFont:](v4->_bodyLabel, "setFont:", [MEMORY[0x277D74300] systemFontOfSize:14.0]);
    [(UITextView *)v4->_bodyLabel setTextAlignment:1];
    [(PLVideoEditingOverlayView *)v4 addSubview:v4->_bodyLabel];
    [(UITextView *)v4->_bodyLabel setAutoresizingMask:34];

    [(PLVideoEditingOverlayView *)v4 setOpaque:0];
    v12 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2020];
    [(PLVideoEditingOverlayView *)v4 addSubview:v12];
    [(PLVideoEditingOverlayView *)v4 sendSubviewToBack:v12];
    [(PLVideoEditingOverlayView *)v4 setClipsToBounds:1];
    [-[PLVideoEditingOverlayView layer](v4 "layer")];
  }

  return v4;
}

@end