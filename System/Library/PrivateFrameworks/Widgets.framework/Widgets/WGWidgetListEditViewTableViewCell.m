@interface WGWidgetListEditViewTableViewCell
- (UIButton)insertWidgetAccessoryButton;
- (WGWidgetListEditViewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setWidgetEnabled:(BOOL)a3;
@end

@implementation WGWidgetListEditViewTableViewCell

- (WGWidgetListEditViewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v16.receiver = self;
  v16.super_class = WGWidgetListEditViewTableViewCell;
  v4 = [(WGWidgetListEditViewTableViewCell *)&v16 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(WGWidgetListEditViewTableViewCell *)v4 contentView];
    v7 = [MEMORY[0x277D75348] _systemGroupBackgroundCellColor];
    [v6 setBackgroundColor:v7];

    v8 = [(WGWidgetListEditViewTableViewCell *)v5 textLabel];
    [v8 _setDrawsAsBackdropOverlay:0];
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"circle.fill"];
    v10 = [MEMORY[0x277D75348] colorWithRed:0.525490196 green:0.941176471 blue:1.0 alpha:1.0];
    v11 = [v9 _flatImageWithColor:v10];

    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithSize:{6.0, 6.0}];
    dotImageView = v5->_dotImageView;
    v5->_dotImageView = v12;

    [(UIImageView *)v5->_dotImageView setImage:v11];
    v14 = [(WGWidgetListEditViewTableViewCell *)v5 contentView];
    [v14 addSubview:v5->_dotImageView];
  }

  return v5;
}

- (void)setWidgetEnabled:(BOOL)a3
{
  self->_widgetEnabled = a3;
  v4 = [(WGWidgetListEditViewTableViewCell *)self showsDot]& !a3;

  [(WGWidgetListEditViewTableViewCell *)self setShowsDot:v4];
}

- (void)layoutSubviews
{
  v45.receiver = self;
  v45.super_class = WGWidgetListEditViewTableViewCell;
  [(WGWidgetListEditViewTableViewCell *)&v45 layoutSubviews];
  v3 = [(WGWidgetListEditViewTableViewCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

  v6 = [(WGWidgetListEditViewTableViewCell *)self contentView];
  [v6 bounds];
  v8 = v7;
  v43 = v10;
  v44 = v9;
  rect = v11;

  v12 = [(WGWidgetListEditViewTableViewCell *)self imageView];
  [v12 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v12 image];

  v41 = v8;
  if (v21)
  {
    BSRectWithSize();
    if ([(WGWidgetListEditViewTableViewCell *)self _shouldReverseLayoutDirection])
    {
      v46.origin.x = v8;
      v46.size.width = v43;
      v46.origin.y = v44;
      v46.size.height = rect;
      CGRectGetMaxX(v46);
    }

    if ((IsAccessibilityContentSizeCategory & 1) == 0)
    {
      v47.origin.x = v8;
      v47.size.width = v43;
      v47.origin.y = v44;
      v47.size.height = rect;
      CGRectGetHeight(v47);
    }

    v22 = [v12 image];
    [v22 size];
    BSRectWithSize();
    v40 = _WGMainScreenScale();
    UIRectCenteredIntegralRectScale();
    v14 = v23;
    v16 = v24;
    v18 = v25;
    v20 = v26;

    [v12 setContentMode:{9, *&v40}];
    [v12 setFrame:{v14, v16, v18, v20}];
  }

  v27 = [(WGWidgetListEditViewTableViewCell *)self textLabel];
  [v27 frame];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if ([(WGWidgetListEditViewTableViewCell *)self _shouldReverseLayoutDirection])
  {
    v48.origin.x = v8;
    v48.size.width = v43;
    v48.origin.y = v44;
    v48.size.height = rect;
    v34 = CGRectGetMaxX(v48) - v31 + -12.0;
    v35 = [v12 image];

    if (v35)
    {
      v34 = v34 + -32.0;
    }
  }

  else
  {
    v34 = 12.0;
    if ((IsAccessibilityContentSizeCategory & 1) == 0)
    {
      v36 = [v12 image];
      if (v36)
      {
        v49.origin.x = v14;
        v49.origin.y = v16;
        v49.size.width = v18;
        v49.size.height = v20;
        v34 = CGRectGetMaxX(v49) + 12.0;
      }
    }
  }

  [v27 setFrame:{v34, v29, v31, v33}];
  v37 = 5.0;
  if ([(WGWidgetListEditViewTableViewCell *)self _shouldReverseLayoutDirection])
  {
    v50.origin.x = v41;
    v50.size.width = v43;
    v50.origin.y = v44;
    v50.size.height = rect;
    v37 = CGRectGetMaxX(v50) + -5.0;
  }

  dotImageView = self->_dotImageView;
  v51.origin.x = v14;
  v51.origin.y = v16;
  v51.size.width = v18;
  v51.size.height = v20;
  CGRectGetMidY(v51);
  WGRoundToMainScreenScale();
  [(UIImageView *)dotImageView setCenter:v37, v39];
  v52.origin.x = v41;
  v52.size.width = v43;
  v52.origin.y = v44;
  v52.size.height = rect;
  [(WGWidgetListEditViewTableViewCell *)self setSeparatorInset:*MEMORY[0x277D76F30], CGRectGetMinX(v52) + 12.0, *MEMORY[0x277D76F30], *MEMORY[0x277D76F30]];
}

- (UIButton)insertWidgetAccessoryButton
{
  WeakRetained = objc_loadWeakRetained(&self->_insertWidgetAccessoryButton);

  return WeakRetained;
}

@end