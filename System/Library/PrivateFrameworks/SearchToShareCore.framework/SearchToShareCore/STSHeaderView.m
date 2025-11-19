@interface STSHeaderView
- (STSHeaderView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInsets;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setTitle:(id)a3;
- (void)updateConstraints;
@end

@implementation STSHeaderView

- (STSHeaderView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = STSHeaderView;
  v3 = [(STSHeaderView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    label = v3->_label;
    v3->_label = v5;

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = v3->_label;
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769A0]];
    [(UILabel *)v7 setFont:v8];

    v9 = v3->_label;
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.4 alpha:1.0];
    [(UILabel *)v9 setTextColor:v10];

    [(STSHeaderView *)v3 addSubview:v3->_label];
    [(STSHeaderView *)v3 setNeedsUpdateConstraints];
  }

  return v3;
}

- (void)updateConstraints
{
  v14[4] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = STSHeaderView;
  [(STSHeaderView *)&v12 updateConstraints];
  if (self->_constraints)
  {
    [(STSHeaderView *)self removeConstraints:?];
  }

  v3 = _NSDictionaryOfVariableBindings(&cfstr_Label.isa, self->_label, 0);
  v13[0] = @"contentInsetsTop";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_contentInsets.top];
  v14[0] = v4;
  v13[1] = @"contentInsetsLeft";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_contentInsets.left];
  v14[1] = v5;
  v13[2] = @"contentInsetsBottom";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_contentInsets.bottom];
  v14[2] = v6;
  v13[3] = @"contentInsetsRight";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_contentInsets.right];
  v14[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v9 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(contentInsetsLeft)-[_label]-(contentInsetsRight)-|" options:0 metrics:v8 views:v3];
  [(STSHeaderView *)self addConstraints:v9];

  v10 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-(contentInsetsTop)-[_label]-(contentInsetsBottom)-|" options:0 metrics:v8 views:v3];
  [(STSHeaderView *)self addConstraints:v10];

  constraints = self->_constraints;
  self->_constraints = 0;
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    objc_storeStrong(&self->_title, a3);
    [(UILabel *)self->_label setText:self->_title];
  }
}

- (void)setContentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    [(STSHeaderView *)self setNeedsUpdateConstraints];
  }
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end