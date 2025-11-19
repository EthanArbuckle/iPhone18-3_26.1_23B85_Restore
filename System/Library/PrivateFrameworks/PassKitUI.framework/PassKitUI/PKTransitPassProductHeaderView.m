@interface PKTransitPassProductHeaderView
- (PKTransitPassProductHeaderView)initWithReuseIdentifier:(id)a3;
- (void)layoutSubviews;
- (void)setHeaderLabelText:(id)a3;
@end

@implementation PKTransitPassProductHeaderView

- (PKTransitPassProductHeaderView)initWithReuseIdentifier:(id)a3
{
  v11.receiver = self;
  v11.super_class = PKTransitPassProductHeaderView;
  v3 = [(PKTransitPassProductHeaderView *)&v11 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    labelView = v3->_labelView;
    v3->_labelView = v5;

    v7 = v3->_labelView;
    v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDC0], *MEMORY[0x1E69DDC58], 2, 0);
    [(UILabel *)v7 setFont:v8];

    v9 = [(PKTransitPassProductHeaderView *)v3 contentView];
    [v9 addSubview:v3->_labelView];
  }

  return v3;
}

- (void)setHeaderLabelText:(id)a3
{
  objc_storeStrong(&self->_headerLabelText, a3);
  v5 = a3;
  [(UILabel *)self->_labelView setText:v5];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PKTransitPassProductHeaderView;
  [(PKTransitPassProductHeaderView *)&v14 layoutSubviews];
  v3 = [(PKTransitPassProductHeaderView *)self contentView];
  v4 = [v3 _shouldReverseLayoutDirection];
  v5 = *MEMORY[0x1E69DDCE0];
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  if (v4)
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 24) + 6.0;
  }

  else
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  if (v4)
  {
    v8 = *(MEMORY[0x1E69DDCE0] + 8);
  }

  else
  {
    v8 = *(MEMORY[0x1E69DDCE0] + 8) + 6.0;
  }

  labelView = self->_labelView;
  [v3 bounds];
  [(UILabel *)labelView setFrame:v8 + v10, v5 + v11, v12 - (v8 + v7), v13 - (v5 + v6)];
}

@end