@interface VSSpinnerTitleView
- (CGSize)sizeThatFits:(CGSize)a3;
- (VSSpinnerTitleView)initWithTitle:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation VSSpinnerTitleView

- (VSSpinnerTitleView)initWithTitle:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VSSpinnerTitleView;
  v5 = [(VSSpinnerTitleView *)&v13 initWithFrame:0.0, 0.0, 0.0, 22.0];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D756B8]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    titleView = v5->_titleView;
    v5->_titleView = v7;

    [(UILabel *)v5->_titleView setText:v4];
    v9 = [MEMORY[0x277D74300] boldSystemFontOfSize:18.0];
    [(UILabel *)v5->_titleView setFont:v9];

    v10 = objc_alloc_init(MEMORY[0x277D750E8]);
    spinner = v5->_spinner;
    v5->_spinner = v10;

    [(VSSpinnerTitleView *)v5 addSubview:v5->_titleView];
    [(VSSpinnerTitleView *)v5 addSubview:v5->_spinner];
  }

  return v5;
}

- (void)dealloc
{
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  v3.receiver = self;
  v3.super_class = VSSpinnerTitleView;
  [(VSSpinnerTitleView *)&v3 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_titleView sizeToFit:a3.width];
  [(UIActivityIndicatorView *)self->_spinner sizeToFit];
  [(UILabel *)self->_titleView frame];
  v5 = v4;
  [(UIActivityIndicatorView *)self->_spinner frame];
  if (v5 < v6)
  {
    v5 = v6;
  }

  [(UILabel *)self->_titleView frame];
  v8 = v7 + 10.0;
  [(UIActivityIndicatorView *)self->_spinner frame];
  v10 = v8 + v9 + 10.0;
  [(UIActivityIndicatorView *)self->_spinner frame];
  v12 = v10 + v11;
  v13 = v5;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = VSSpinnerTitleView;
  [(VSSpinnerTitleView *)&v11 layoutSubviews];
  [(UILabel *)self->_titleView sizeToFit];
  [(UIActivityIndicatorView *)self->_spinner sizeToFit];
  [(VSSpinnerTitleView *)self bounds];
  v4 = v3;
  [(UIActivityIndicatorView *)self->_spinner frame];
  [(UIActivityIndicatorView *)self->_spinner setFrame:?];
  [(UILabel *)self->_titleView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIActivityIndicatorView *)self->_spinner frame];
  [(UILabel *)self->_titleView setFrame:CGRectGetMaxX(v12) + 10.0, v6 + floor((v4 - v10) * 0.5), v8, v10];
}

- (void)didMoveToWindow
{
  v3 = [(VSSpinnerTitleView *)self window];

  spinner = self->_spinner;
  if (v3)
  {

    [(UIActivityIndicatorView *)spinner startAnimating];
  }

  else
  {

    [(UIActivityIndicatorView *)spinner stopAnimating];
  }
}

@end