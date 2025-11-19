@interface _TVRUITabSelectorControlCell
- (_TVRUITabSelectorControlCell)initWithFrame:(CGRect)a3;
- (void)_configure;
- (void)_configureBackgroundCornerRadius;
- (void)_updateForSelectedState:(BOOL)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation _TVRUITabSelectorControlCell

- (_TVRUITabSelectorControlCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVRUITabSelectorControlCell;
  v3 = [(_TVRUITabSelectorControlCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUITabSelectorControlCell *)v3 _configure];
  }

  return v4;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = _TVRUITabSelectorControlCell;
  [(_TVRUITabSelectorControlCell *)&v4 prepareForReuse];
  v3 = [(_TVRUITabSelectorControlCell *)self label];
  [v3 setText:0];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _TVRUITabSelectorControlCell;
  [(_TVRUITabSelectorControlCell *)&v5 setSelected:?];
  [(_TVRUITabSelectorControlCell *)self _updateForSelectedState:v3];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _TVRUITabSelectorControlCell;
  [(_TVRUITabSelectorControlCell *)&v5 setHighlighted:?];
  [(_TVRUITabSelectorControlCell *)self _updateForSelectedState:v3];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _TVRUITabSelectorControlCell;
  [(_TVRUITabSelectorControlCell *)&v3 layoutSubviews];
  [(_TVRUITabSelectorControlCell *)self _configureBackgroundCornerRadius];
}

- (void)_configure
{
  v36[4] = *MEMORY[0x277D85DE8];
  v3 = +[TVRUIFeatures isSolariumEnabled];
  v4 = [MEMORY[0x277D75348] whiteColor];
  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v5 setBackgroundColor:v4];
  if (!v3)
  {
    v6 = [MEMORY[0x277D75348] colorWithWhite:0.1 alpha:1.0];
    v7 = [v6 CGColor];
    v8 = [v5 layer];
    [v8 setBorderColor:v7];
  }

  [(_TVRUITabSelectorControlCell *)self setSelectedBackgroundView:v5];
  v9 = objc_alloc_init(MEMORY[0x277D75D18]);
  v10 = v9;
  v34 = v4;
  v35 = v5;
  if (v3)
  {
    v11 = [MEMORY[0x277D75348] colorWithWhite:0.175 alpha:1.0];
    [v10 setBackgroundColor:v11];
  }

  else
  {
    v12 = [v9 layer];
    [v12 setBorderWidth:1.0];

    v13 = [v4 CGColor];
    v11 = [v10 layer];
    [v11 setBorderColor:v13];
  }

  [(_TVRUITabSelectorControlCell *)self setBackgroundView:v10];
  v14 = [(_TVRUITabSelectorControlCell *)self contentView];
  v15 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(UILabel *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v15 setTextAlignment:1];
  v16 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769D0] variant:1024];
  [(UILabel *)v15 setFont:v16];

  [(UILabel *)v15 setAdjustsFontForContentSizeCategory:1];
  [v14 addSubview:v15];
  v27 = MEMORY[0x277CCAAD0];
  v33 = [(UILabel *)v15 leadingAnchor];
  v32 = [v14 leadingAnchor];
  v30 = [v33 constraintEqualToAnchor:v32 constant:11.0];
  v36[0] = v30;
  v29 = [(UILabel *)v15 trailingAnchor];
  v28 = [v14 trailingAnchor];
  v26 = [v29 constraintEqualToAnchor:v28 constant:-11.0];
  v36[1] = v26;
  [(UILabel *)v15 topAnchor];
  v17 = v31 = v10;
  v18 = [v14 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:5.0];
  v36[2] = v19;
  [(UILabel *)v15 bottomAnchor];
  v21 = v20 = self;
  v22 = [v14 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-5.0];
  v36[3] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
  [v27 activateConstraints:v24];

  label = v20->_label;
  v20->_label = v15;

  [(_TVRUITabSelectorControlCell *)v20 _updateForSelectedState:0];
}

- (void)_configureBackgroundCornerRadius
{
  if (+[TVRUIFeatures isSolariumEnabled])
  {
    [(UIView *)self tvrui_makeCapsuleCorners];
    v3 = [(_TVRUITabSelectorControlCell *)self backgroundView];
    [v3 tvrui_makeCapsuleCorners];

    v5 = [(_TVRUITabSelectorControlCell *)self selectedBackgroundView];
    [v5 tvrui_makeCapsuleCorners];
  }

  else
  {
    v4 = [(_TVRUITabSelectorControlCell *)self backgroundView];
    [v4 _setContinuousCornerRadius:7.0];

    v5 = [(_TVRUITabSelectorControlCell *)self selectedBackgroundView];
    [v5 _setContinuousCornerRadius:7.0];
  }
}

- (void)_updateForSelectedState:(BOOL)a3
{
  if (a3)
  {
    [MEMORY[0x277D75348] darkTextColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v5 = ;
  v4 = [(_TVRUITabSelectorControlCell *)self label];
  [v4 setTextColor:v5];
}

@end