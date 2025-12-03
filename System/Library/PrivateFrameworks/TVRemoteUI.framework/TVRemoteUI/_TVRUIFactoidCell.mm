@interface _TVRUIFactoidCell
- (_TVRUIFactoidCell)initWithFrame:(CGRect)frame;
- (void)_configureHierarchy;
- (void)_updateFromItem:(id)item;
- (void)prepareForReuse;
- (void)setItem:(id)item;
@end

@implementation _TVRUIFactoidCell

- (_TVRUIFactoidCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVRUIFactoidCell;
  v3 = [(_TVRUIFactoidCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUIFactoidCell *)v3 _configureHierarchy];
  }

  return v4;
}

- (void)setItem:(id)item
{
  objc_storeStrong(&self->_item, item);
  itemCopy = item;
  [(_TVRUIFactoidCell *)self _updateFromItem:itemCopy];
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
  selfCopy = self;
  contentView = [(_TVRUIFactoidCell *)self contentView];
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
        [contentView addSubview:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v8);
  }

  v21 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UILabel *)v3 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v32[0] = v24;
  trailingAnchor = [(UILabel *)v3 trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  v32[1] = v12;
  topAnchor = [(UILabel *)v3 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
  v32[2] = v15;
  bottomAnchor = [(UILabel *)v3 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
  v32[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  [v21 activateConstraints:v19];

  factoidLabel = selfCopy->_factoidLabel;
  selfCopy->_factoidLabel = v3;
}

- (void)_updateFromItem:(id)item
{
  itemCopy = item;
  factoidText = [itemCopy factoidText];
  factoidLabel = [(_TVRUIFactoidCell *)self factoidLabel];
  [factoidLabel setText:factoidText];

  LOBYTE(factoidText) = [itemCopy factoidOptions];
  factoidOptions = [itemCopy factoidOptions];
  factoidOptions2 = [itemCopy factoidOptions];

  isExpanded = [(_TVRUIFactoidCell *)self isExpanded];
  if (factoidText)
  {
    v10 = 1;
  }

  else
  {
    v10 = 4;
  }

  factoidLabel2 = [(_TVRUIFactoidCell *)self factoidLabel];
  [factoidLabel2 setTextAlignment:v10];

  v12 = MEMORY[0x277D76918];
  if ((factoidOptions & 2) == 0)
  {
    v12 = MEMORY[0x277D76938];
  }

  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*v12];
  factoidLabel3 = [(_TVRUIFactoidCell *)self factoidLabel];
  [factoidLabel3 setFont:v13];

  if ((factoidOptions2 & 4) == 0 || isExpanded)
  {
    v15 = 0;
  }

  else
  {
    v15 = 10;
  }

  factoidLabel4 = [(_TVRUIFactoidCell *)self factoidLabel];
  [factoidLabel4 setNumberOfLines:v15];
}

@end