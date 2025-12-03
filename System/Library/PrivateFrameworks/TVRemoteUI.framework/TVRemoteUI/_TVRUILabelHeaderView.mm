@interface _TVRUILabelHeaderView
- (_TVRUILabelHeaderView)initWithFrame:(CGRect)frame;
- (void)_configureHierarchy;
- (void)prepareForReuse;
- (void)setTitle:(id)title;
@end

@implementation _TVRUILabelHeaderView

- (_TVRUILabelHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVRUILabelHeaderView;
  v3 = [(_TVRUILabelHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  titleLabel = [(_TVRUILabelHeaderView *)self titleLabel];
  [titleLabel setText:titleCopy];
}

- (void)_configureHierarchy
{
  v35 = *MEMORY[0x277D85DE8];
  contentView = [(_TVRUILabelHeaderView *)self contentView];
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)v3 setFont:v4];

  lightTextColor = [MEMORY[0x277D75348] lightTextColor];
  [(UILabel *)v3 setTextColor:lightTextColor];

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
        [contentView addSubview:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v8);
  }

  v21 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UILabel *)v3 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v32[0] = v24;
  trailingAnchor = [(UILabel *)v3 trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-0.0];
  v32[1] = v12;
  topAnchor = [(UILabel *)v3 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:2.0];
  v32[2] = v15;
  bottomAnchor = [(UILabel *)v3 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-2.0];
  v32[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  [v21 activateConstraints:v19];

  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;
}

@end