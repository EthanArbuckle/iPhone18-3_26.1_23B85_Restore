@interface DBSDisplayNameLabel
- (CGSize)intrinsicContentSize;
- (DBSDisplayNameLabel)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)textMargins;
- (void)drawTextInRect:(CGRect)a3;
@end

@implementation DBSDisplayNameLabel

- (DBSDisplayNameLabel)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = DBSDisplayNameLabel;
  v3 = [(DBSDisplayNameLabel *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(DBSDisplayNameLabel *)v3 setTextMargins:3.0, 10.0, 3.0, 10.0];
    v5 = [(DBSDisplayNameLabel *)v4 layer];
    [v5 setMasksToBounds:1];

    v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
    [(DBSDisplayNameLabel *)v4 setBackgroundColor:v6];

    v7 = [MEMORY[0x277D75348] whiteColor];
    [(DBSDisplayNameLabel *)v4 setTextColor:v7];

    v8 = MEMORY[0x277D74300];
    [MEMORY[0x277D74300] systemFontSize];
    v9 = [v8 systemFontOfSize:?];
    [(DBSDisplayNameLabel *)v4 setFont:v9];

    [(DBSDisplayNameLabel *)v4 intrinsicContentSize];
    v11 = v10 * 0.5;
    v12 = [(DBSDisplayNameLabel *)v4 layer];
    [v12 setCornerRadius:v11];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(DBSDisplayNameLabel *)self text];

  if (!v3)
  {
    [(DBSDisplayNameLabel *)self setText:@"Sizing"];
  }

  v17.receiver = self;
  v17.super_class = DBSDisplayNameLabel;
  [(DBSDisplayNameLabel *)&v17 intrinsicContentSize];
  v5 = v4;
  v7 = v6;
  if (!v3)
  {
    [(DBSDisplayNameLabel *)self setText:0];
  }

  [(DBSDisplayNameLabel *)self textMargins];
  v9 = v7 + v8;
  [(DBSDisplayNameLabel *)self textMargins];
  v11 = v9 + v10;
  [(DBSDisplayNameLabel *)self textMargins];
  v13 = v5 + v12;
  [(DBSDisplayNameLabel *)self textMargins];
  v15 = v13 + v14;
  v16 = v11;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)drawTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(DBSDisplayNameLabel *)self textMargins];
  v12.receiver = self;
  v12.super_class = DBSDisplayNameLabel;
  [(DBSDisplayNameLabel *)&v12 drawTextInRect:x + v11, y + v8, width - (v11 + v9), height - (v8 + v10)];
}

- (UIEdgeInsets)textMargins
{
  top = self->_textMargins.top;
  left = self->_textMargins.left;
  bottom = self->_textMargins.bottom;
  right = self->_textMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end