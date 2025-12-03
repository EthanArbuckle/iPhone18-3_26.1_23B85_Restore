@interface PSSegmentTableCell
- (BOOL)canReload;
- (PSSegmentTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)controlValue;
- (id)newControl;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setValue:(id)value;
- (void)setValues:(id)values titleDictionary:(id)dictionary;
@end

@implementation PSSegmentTableCell

- (PSSegmentTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = PSSegmentTableCell;
  v4 = [(PSControlTableCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    control = [(PSControlTableCell *)v4 control];
    [control _setAutosizeText:1];

    textLabel = [(PSSegmentTableCell *)v5 textLabel];
    [textLabel setHidden:1];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  control = [(PSControlTableCell *)self control];
  control2 = [(PSControlTableCell *)self control];
  selectedSegmentIndex = [control2 selectedSegmentIndex];

  [control removeAllSegments];
  values = [specifierCopy values];
  titleDictionary = [specifierCopy titleDictionary];
  v9 = [values count];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = [values objectAtIndex:i];
      v13 = [titleDictionary objectForKey:v12];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v12;
      }

      [control insertSegmentWithTitle:v15 atIndex:objc_msgSend(control animated:{"numberOfSegments"), 0}];
    }
  }

  values2 = [specifierCopy values];
  titleDictionary2 = [specifierCopy titleDictionary];
  [(PSSegmentTableCell *)self setValues:values2 titleDictionary:titleDictionary2];

  [control setSelectedSegmentIndex:selectedSegmentIndex];
  v19.receiver = self;
  v19.super_class = PSSegmentTableCell;
  [(PSControlTableCell *)&v19 refreshCellContentsWithSpecifier:specifierCopy];
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = PSSegmentTableCell;
  [(PSTableCell *)&v2 prepareForReuse];
}

- (id)newControl
{
  v2 = objc_alloc(MEMORY[0x1E69DCF38]);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObject:&stru_1EFE45030];
  v4 = [v2 initWithItems:v3];

  return v4;
}

- (BOOL)canReload
{
  v3 = [(PSSegmentTableCell *)self isMemberOfClass:objc_opt_class()];
  if (v3)
  {
    LOBYTE(v3) = [(PSSegmentTableCell *)self tag]== 9;
  }

  return v3;
}

- (void)setValues:(id)values titleDictionary:(id)dictionary
{
  valuesCopy = values;
  dictionaryCopy = dictionary;
  values = self->_values;
  self->_values = valuesCopy;
  v10 = valuesCopy;

  titleDict = self->_titleDict;
  self->_titleDict = dictionaryCopy;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = PSSegmentTableCell;
  [(PSTableCell *)&v20 layoutSubviews];
  specifier = [(PSTableCell *)self specifier];
  v4 = [specifier propertyForKey:@"alwaysShowSeparator"];

  if (!v4)
  {
    [(PSSegmentTableCell *)self setSeparatorStyle:0];
  }

  contentView = [(PSSegmentTableCell *)self contentView];
  [contentView bounds];
  v7 = v6;
  v9 = v8;

  control = [(PSControlTableCell *)self control];
  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  if (v14 == 2.0)
  {
    v15 = 7.5;
  }

  else
  {
    v15 = 7.0;
  }

  v21.origin.x = v11;
  v21.origin.y = v12;
  v21.size.width = v7;
  v21.size.height = v9;
  v22 = CGRectInset(v21, 5.0, v15);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;

  [control setFrame:{x, y, width, height}];
}

- (id)controlValue
{
  selectedSegmentIndex = [(UIControl *)self->super._control selectedSegmentIndex];
  if ((selectedSegmentIndex & 0x8000000000000000) != 0 || (v4 = selectedSegmentIndex, selectedSegmentIndex >= [(NSArray *)self->_values count]))
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_values objectAtIndex:v4];
  }

  return v5;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  if (self->super.super._value != valueCopy)
  {
    v8 = valueCopy;
    objc_storeStrong(&self->super.super._value, value);
    v6 = [(NSArray *)self->_values indexOfObject:v8];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    [(UIControl *)self->super._control setSelectedSegmentIndex:v7];
    valueCopy = v8;
  }
}

@end