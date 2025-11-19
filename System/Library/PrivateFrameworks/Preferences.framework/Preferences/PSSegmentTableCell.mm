@interface PSSegmentTableCell
- (BOOL)canReload;
- (PSSegmentTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)controlValue;
- (id)newControl;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setValue:(id)a3;
- (void)setValues:(id)a3 titleDictionary:(id)a4;
@end

@implementation PSSegmentTableCell

- (PSSegmentTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = PSSegmentTableCell;
  v4 = [(PSControlTableCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(PSControlTableCell *)v4 control];
    [v6 _setAutosizeText:1];

    v7 = [(PSSegmentTableCell *)v5 textLabel];
    [v7 setHidden:1];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(PSControlTableCell *)self control];
  v6 = [(PSControlTableCell *)self control];
  v18 = [v6 selectedSegmentIndex];

  [v5 removeAllSegments];
  v7 = [v4 values];
  v8 = [v4 titleDictionary];
  v9 = [v7 count];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = [v7 objectAtIndex:i];
      v13 = [v8 objectForKey:v12];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v12;
      }

      [v5 insertSegmentWithTitle:v15 atIndex:objc_msgSend(v5 animated:{"numberOfSegments"), 0}];
    }
  }

  v16 = [v4 values];
  v17 = [v4 titleDictionary];
  [(PSSegmentTableCell *)self setValues:v16 titleDictionary:v17];

  [v5 setSelectedSegmentIndex:v18];
  v19.receiver = self;
  v19.super_class = PSSegmentTableCell;
  [(PSControlTableCell *)&v19 refreshCellContentsWithSpecifier:v4];
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

- (void)setValues:(id)a3 titleDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  values = self->_values;
  self->_values = v6;
  v10 = v6;

  titleDict = self->_titleDict;
  self->_titleDict = v7;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = PSSegmentTableCell;
  [(PSTableCell *)&v20 layoutSubviews];
  v3 = [(PSTableCell *)self specifier];
  v4 = [v3 propertyForKey:@"alwaysShowSeparator"];

  if (!v4)
  {
    [(PSSegmentTableCell *)self setSeparatorStyle:0];
  }

  v5 = [(PSSegmentTableCell *)self contentView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  v10 = [(PSControlTableCell *)self control];
  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v13 scale];
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

  [v10 setFrame:{x, y, width, height}];
}

- (id)controlValue
{
  v3 = [(UIControl *)self->super._control selectedSegmentIndex];
  if ((v3 & 0x8000000000000000) != 0 || (v4 = v3, v3 >= [(NSArray *)self->_values count]))
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_values objectAtIndex:v4];
  }

  return v5;
}

- (void)setValue:(id)a3
{
  v5 = a3;
  if (self->super.super._value != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->super.super._value, a3);
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
    v5 = v8;
  }
}

@end