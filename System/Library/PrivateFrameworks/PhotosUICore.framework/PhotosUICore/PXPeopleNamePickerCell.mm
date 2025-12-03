@interface PXPeopleNamePickerCell
- (PXPeopleNamePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UILabel)titleLabel;
- (void)prepareForReuse;
@end

@implementation PXPeopleNamePickerCell

- (UILabel)titleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLabel);

  return WeakRetained;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PXPeopleNamePickerCell;
  [(PXPeopleNamePickerCell *)&v3 prepareForReuse];
  [(PXPeopleNamePickerCell *)self setNeedsUpdateConstraints];
}

- (PXPeopleNamePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = PXPeopleNamePickerCell;
  v4 = [(PXPeopleNamePickerCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    contentView = [(PXPeopleNamePickerCell *)v4 contentView];
    [contentView addSubview:v5];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x1E69DB878] systemFontOfSize:20.0 weight:*MEMORY[0x1E69DB970]];
    [v5 setFont:v7];

    v8 = MEMORY[0x1E696ACD8];
    v9 = _NSDictionaryOfVariableBindings(&cfstr_Titlelabel.isa, v5, 0);
    v10 = [v8 constraintsWithVisualFormat:@"|-[titleLabel]-|" options:1024 metrics:0 views:v9];

    [contentView addConstraints:v10];
    baseConstraints = v4->_baseConstraints;
    v4->_baseConstraints = v10;

    objc_storeWeak(&v4->_titleLabel, v5);
  }

  return v4;
}

@end