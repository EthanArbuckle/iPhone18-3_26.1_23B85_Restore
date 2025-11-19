@interface WFWidgetEmptyStateView
- (WFWidgetEmptyStateView)initWithTitle:(id)a3;
- (WFWidgetEmptyStateViewDelegate)delegate;
- (void)handleTapGesture;
- (void)layoutSubviews;
- (void)setTitleString:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WFWidgetEmptyStateView

- (WFWidgetEmptyStateViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WFWidgetEmptyStateView;
  [(WFWidgetEmptyStateView *)&v13 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];
  v6 = [(WFWidgetEmptyStateView *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = v7;
  if (v5 == v7)
  {
  }

  else
  {
    v9 = [v4 preferredContentSizeCategory];
    v10 = [(WFWidgetEmptyStateView *)self traitCollection];
    v11 = [v10 preferredContentSizeCategory];
    v12 = [v9 isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      [(WFWidgetEmptyStateView *)self setNeedsLayout];
    }
  }
}

- (void)setTitleString:(id)a3
{
  v4 = a3;
  v5 = [(WFWidgetEmptyStateView *)self titleLabel];
  v6 = [v5 text];
  v10 = v4;
  v7 = v6;
  if (v7 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [v10 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    v9 = [(WFWidgetEmptyStateView *)self titleLabel];
    [v9 setText:v10];

    [(WFWidgetEmptyStateView *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)handleTapGesture
{
  v3 = [(WFWidgetEmptyStateView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFWidgetEmptyStateView *)self delegate];
    [v5 emptyStateViewWasTapped:self];
  }
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = WFWidgetEmptyStateView;
  [(WFWidgetEmptyStateView *)&v26 layoutSubviews];
  v3 = [(WFWidgetEmptyStateView *)self titleLabel];
  [v3 sizeToFit];

  v4 = [(WFWidgetEmptyStateView *)self iconView];
  v5 = [v4 image];
  [v5 size];
  v7 = v6;

  v8 = [(WFWidgetEmptyStateView *)self iconView];
  v9 = [v8 image];
  [v9 size];
  v11 = v10;

  v12 = [(WFWidgetEmptyStateView *)self titleLabel];
  [v12 frame];
  v14 = v13;

  [(WFWidgetEmptyStateView *)self bounds];
  v15 = [(WFWidgetEmptyStateView *)self traitCollection];
  [v15 displayScale];
  BSFloatRoundForScale();
  v17 = v16;

  [(WFWidgetEmptyStateView *)self bounds];
  v18 = [(WFWidgetEmptyStateView *)self traitCollection];
  [v18 displayScale];
  BSFloatRoundForScale();
  v20 = v19;

  v21 = [(WFWidgetEmptyStateView *)self iconView];
  [v21 setFrame:{v20, v17, v7, v11}];

  v22 = v11 + v17 + 9.0;
  [(WFWidgetEmptyStateView *)self bounds];
  v24 = v23;
  v25 = [(WFWidgetEmptyStateView *)self titleLabel];
  [v25 setFrame:{0.0, v22, v24, v14}];
}

- (WFWidgetEmptyStateView)initWithTitle:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = WFWidgetEmptyStateView;
  v5 = [(WFWidgetEmptyStateView *)&v27 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(UIImageView *)v6 setContentMode:1];
    v7 = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v6 setTintColor:v7];

    [(UIImageView *)v6 setClipsToBounds:1];
    [(WFWidgetEmptyStateView *)v5 addSubview:v6];
    iconView = v5->_iconView;
    v5->_iconView = v6;
    v9 = v6;

    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v11 = [v4 copy];
    [(UILabel *)v10 setText:v11];

    v12 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v10 setTextColor:v12];

    [(UILabel *)v10 setNumberOfLines:2];
    [(UILabel *)v10 setTextAlignment:1];
    [(UILabel *)v10 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
    [(UILabel *)v10 setAdjustsFontForContentSizeCategory:1];
    v13 = objc_alloc(MEMORY[0x1E69DCA40]);
    v14 = *MEMORY[0x1E69DDD28];
    v15 = [v13 initForTextStyle:*MEMORY[0x1E69DDD28]];
    v16 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v14 weight:*MEMORY[0x1E69DB980]];
    v17 = [v15 scaledFontForFont:v16];
    [(UILabel *)v10 setFont:v17];

    [(WFWidgetEmptyStateView *)v5 addSubview:v10];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v10;
    v19 = v10;

    v20 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:34.0];
    v21 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"app.2.stack.3d"];
    v22 = [v21 imageWithConfiguration:v20];
    v23 = [(WFWidgetEmptyStateView *)v5 iconView];
    [v23 setImage:v22];

    v24 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v5 action:sel_handleTapGesture];
    [(WFWidgetEmptyStateView *)v5 addGestureRecognizer:v24];

    v25 = v5;
  }

  return v5;
}

@end