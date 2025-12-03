@interface WFWidgetEmptyStateView
- (WFWidgetEmptyStateView)initWithTitle:(id)title;
- (WFWidgetEmptyStateViewDelegate)delegate;
- (void)handleTapGesture;
- (void)layoutSubviews;
- (void)setTitleString:(id)string;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WFWidgetEmptyStateView

- (WFWidgetEmptyStateViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = WFWidgetEmptyStateView;
  [(WFWidgetEmptyStateView *)&v13 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
  traitCollection = [(WFWidgetEmptyStateView *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  v8 = preferredContentSizeCategory2;
  if (preferredContentSizeCategory == preferredContentSizeCategory2)
  {
  }

  else
  {
    preferredContentSizeCategory3 = [changeCopy preferredContentSizeCategory];
    traitCollection2 = [(WFWidgetEmptyStateView *)self traitCollection];
    preferredContentSizeCategory4 = [traitCollection2 preferredContentSizeCategory];
    v12 = [preferredContentSizeCategory3 isEqualToString:preferredContentSizeCategory4];

    if ((v12 & 1) == 0)
    {
      [(WFWidgetEmptyStateView *)self setNeedsLayout];
    }
  }
}

- (void)setTitleString:(id)string
{
  stringCopy = string;
  titleLabel = [(WFWidgetEmptyStateView *)self titleLabel];
  text = [titleLabel text];
  v10 = stringCopy;
  v7 = text;
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
    titleLabel2 = [(WFWidgetEmptyStateView *)self titleLabel];
    [titleLabel2 setText:v10];

    [(WFWidgetEmptyStateView *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)handleTapGesture
{
  delegate = [(WFWidgetEmptyStateView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFWidgetEmptyStateView *)self delegate];
    [delegate2 emptyStateViewWasTapped:self];
  }
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = WFWidgetEmptyStateView;
  [(WFWidgetEmptyStateView *)&v26 layoutSubviews];
  titleLabel = [(WFWidgetEmptyStateView *)self titleLabel];
  [titleLabel sizeToFit];

  iconView = [(WFWidgetEmptyStateView *)self iconView];
  image = [iconView image];
  [image size];
  v7 = v6;

  iconView2 = [(WFWidgetEmptyStateView *)self iconView];
  image2 = [iconView2 image];
  [image2 size];
  v11 = v10;

  titleLabel2 = [(WFWidgetEmptyStateView *)self titleLabel];
  [titleLabel2 frame];
  v14 = v13;

  [(WFWidgetEmptyStateView *)self bounds];
  traitCollection = [(WFWidgetEmptyStateView *)self traitCollection];
  [traitCollection displayScale];
  BSFloatRoundForScale();
  v17 = v16;

  [(WFWidgetEmptyStateView *)self bounds];
  traitCollection2 = [(WFWidgetEmptyStateView *)self traitCollection];
  [traitCollection2 displayScale];
  BSFloatRoundForScale();
  v20 = v19;

  iconView3 = [(WFWidgetEmptyStateView *)self iconView];
  [iconView3 setFrame:{v20, v17, v7, v11}];

  v22 = v11 + v17 + 9.0;
  [(WFWidgetEmptyStateView *)self bounds];
  v24 = v23;
  titleLabel3 = [(WFWidgetEmptyStateView *)self titleLabel];
  [titleLabel3 setFrame:{0.0, v22, v24, v14}];
}

- (WFWidgetEmptyStateView)initWithTitle:(id)title
{
  titleCopy = title;
  v27.receiver = self;
  v27.super_class = WFWidgetEmptyStateView;
  v5 = [(WFWidgetEmptyStateView *)&v27 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(UIImageView *)v6 setContentMode:1];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v6 setTintColor:labelColor];

    [(UIImageView *)v6 setClipsToBounds:1];
    [(WFWidgetEmptyStateView *)v5 addSubview:v6];
    iconView = v5->_iconView;
    v5->_iconView = v6;
    v9 = v6;

    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v11 = [titleCopy copy];
    [(UILabel *)v10 setText:v11];

    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v10 setTextColor:labelColor2];

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
    iconView = [(WFWidgetEmptyStateView *)v5 iconView];
    [iconView setImage:v22];

    v24 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v5 action:sel_handleTapGesture];
    [(WFWidgetEmptyStateView *)v5 addGestureRecognizer:v24];

    v25 = v5;
  }

  return v5;
}

@end