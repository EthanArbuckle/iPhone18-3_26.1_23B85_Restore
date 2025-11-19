@interface _TVRUILabelHeaderView
- (_TVRUILabelHeaderView)initWithFrame:(CGRect)a3;
- (void)_configureHierarchy;
- (void)prepareForReuse;
- (void)setTitle:(id)a3;
@end

@implementation _TVRUILabelHeaderView

- (_TVRUILabelHeaderView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVRUILabelHeaderView;
  v3 = [(_TVRUILabelHeaderView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUILabelHeaderView *)v3 _configureHierarchy];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = _TVRUILabelHeaderView;
  [(_TVRUILabelHeaderView *)&v3 prepareForReuse];
  [(_TVRUILabelHeaderView *)self setTitle:0];
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  v6 = [(_TVRUILabelHeaderView *)self titleLabel];
  [v6 setText:v5];
}

- (void)_configureHierarchy
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [(_TVRUILabelHeaderView *)self contentView];
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)v3 setFont:v4];

  v5 = [MEMORY[0x277D75348] lightTextColor];
  [(UILabel *)v3 setTextColor:v5];

  [(UILabel *)v3 setAdjustsFontForContentSizeCategory:1];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v33 = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v2 addSubview:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v8);
  }

  v21 = MEMORY[0x277CCAAD0];
  v26 = [(UILabel *)v3 leadingAnchor];
  v25 = [v2 leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25 constant:0.0];
  v32[0] = v24;
  v23 = [(UILabel *)v3 trailingAnchor];
  v22 = [v2 trailingAnchor];
  v12 = [v23 constraintEqualToAnchor:v22 constant:-0.0];
  v32[1] = v12;
  v13 = [(UILabel *)v3 topAnchor];
  v14 = [v2 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:2.0];
  v32[2] = v15;
  v16 = [(UILabel *)v3 bottomAnchor];
  v17 = [v2 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-2.0];
  v32[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  [v21 activateConstraints:v19];

  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;
}

@end