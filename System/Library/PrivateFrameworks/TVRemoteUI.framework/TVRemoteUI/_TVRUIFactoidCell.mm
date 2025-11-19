@interface _TVRUIFactoidCell
- (_TVRUIFactoidCell)initWithFrame:(CGRect)a3;
- (void)_configureHierarchy;
- (void)_updateFromItem:(id)a3;
- (void)prepareForReuse;
- (void)setItem:(id)a3;
@end

@implementation _TVRUIFactoidCell

- (_TVRUIFactoidCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVRUIFactoidCell;
  v3 = [(_TVRUIFactoidCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUIFactoidCell *)v3 _configureHierarchy];
  }

  return v4;
}

- (void)setItem:(id)a3
{
  objc_storeStrong(&self->_item, a3);
  v5 = a3;
  [(_TVRUIFactoidCell *)self _updateFromItem:v5];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = _TVRUIFactoidCell;
  [(_TVRUIFactoidCell *)&v3 prepareForReuse];
  [(_TVRUIFactoidCell *)self _updateFromItem:0];
}

- (void)_configureHierarchy
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)v3 setFont:v4];

  [(UILabel *)v3 setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v3 setNumberOfLines:0];
  v27 = self;
  v5 = [(_TVRUIFactoidCell *)self contentView];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
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
        [v5 addSubview:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v8);
  }

  v21 = MEMORY[0x277CCAAD0];
  v26 = [(UILabel *)v3 leadingAnchor];
  v25 = [v5 leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25 constant:20.0];
  v32[0] = v24;
  v23 = [(UILabel *)v3 trailingAnchor];
  v22 = [v5 trailingAnchor];
  v12 = [v23 constraintEqualToAnchor:v22 constant:-20.0];
  v32[1] = v12;
  v13 = [(UILabel *)v3 topAnchor];
  v14 = [v5 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:5.0];
  v32[2] = v15;
  v16 = [(UILabel *)v3 bottomAnchor];
  v17 = [v5 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-5.0];
  v32[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  [v21 activateConstraints:v19];

  factoidLabel = v27->_factoidLabel;
  v27->_factoidLabel = v3;
}

- (void)_updateFromItem:(id)a3
{
  v4 = a3;
  v5 = [v4 factoidText];
  v6 = [(_TVRUIFactoidCell *)self factoidLabel];
  [v6 setText:v5];

  LOBYTE(v5) = [v4 factoidOptions];
  v7 = [v4 factoidOptions];
  v8 = [v4 factoidOptions];

  v9 = [(_TVRUIFactoidCell *)self isExpanded];
  if (v5)
  {
    v10 = 1;
  }

  else
  {
    v10 = 4;
  }

  v11 = [(_TVRUIFactoidCell *)self factoidLabel];
  [v11 setTextAlignment:v10];

  v12 = MEMORY[0x277D76918];
  if ((v7 & 2) == 0)
  {
    v12 = MEMORY[0x277D76938];
  }

  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*v12];
  v14 = [(_TVRUIFactoidCell *)self factoidLabel];
  [v14 setFont:v13];

  if ((v8 & 4) == 0 || v9)
  {
    v15 = 0;
  }

  else
  {
    v15 = 10;
  }

  v16 = [(_TVRUIFactoidCell *)self factoidLabel];
  [v16 setNumberOfLines:v15];
}

@end