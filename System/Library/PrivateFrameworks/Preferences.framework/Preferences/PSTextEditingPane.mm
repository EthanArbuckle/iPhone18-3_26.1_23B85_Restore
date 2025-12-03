@interface PSTextEditingPane
- (PSTextEditingPane)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setPreferenceSpecifier:(id)specifier;
@end

@implementation PSTextEditingPane

- (PSTextEditingPane)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v16.receiver = self;
  v16.super_class = PSTextEditingPane;
  v7 = [(PSEditingPane *)&v16 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    *(&v7->super + 424) |= 1u;
    v9 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:1 style:{x, y, width, height}];
    table = v8->_table;
    v8->_table = v9;

    [(UITableView *)v8->_table setDataSource:v8];
    [(UITableView *)v8->_table setScrollEnabled:0];
    [(UITableView *)v8->_table setAllowsSelection:0];
    [(UITableView *)v8->_table reloadData];
    [(PSTextEditingPane *)v8 addSubview:v8->_table];
    v11 = [[PSTextEditingCell alloc] initWithStyle:1000 reuseIdentifier:&stru_1EFE45030];
    cell = v8->_cell;
    v8->_cell = v11;

    [(PSTextEditingCell *)v8->_cell setOpaque:0];
    editableTextField = [(PSTextEditingCell *)v8->_cell editableTextField];
    textField = v8->_textField;
    v8->_textField = editableTextField;
  }

  return v8;
}

- (void)dealloc
{
  [(UITableView *)self->_table setDataSource:0];
  v3.receiver = self;
  v3.super_class = PSTextEditingPane;
  [(PSTextEditingPane *)&v3 dealloc];
}

- (void)layoutSubviews
{
  [(PSTextEditingPane *)self frame];
  [(UITableView *)self->_table setFrame:?];
  [(UITableView *)self->_table frame];
  v4 = v3;
  [(UITableView *)self->_table rectForSection:0];
  v6 = v4 - v5;
  [MEMORY[0x1E69DCBB8] defaultSize];
  table = self->_table;
  v9 = floor((v6 - v7) * 0.5);

  [(UITableView *)table setContentInset:v9, 0.0, 0.0, 0.0];
}

- (void)setPreferenceSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v11.receiver = self;
  v11.super_class = PSTextEditingPane;
  [(PSEditingPane *)&v11 setPreferenceSpecifier:specifierCopy];
  [(UITextField *)self->_textField setClearButtonStyle:2];
  [(UITextField *)self->_textField setClearButtonOffset:0.0, -1.0];
  textField = self->_textField;
  if (specifierCopy[12])
  {
    [(UITextField *)textField setAutocorrectionType:1];
    [(UITextField *)self->_textField setAutocapitalizationType:0];
    v6 = specifierCopy[12];
    if (v6 > 3)
    {
      if (v6 == 4 || v6 == 5)
      {
        v7 = self->_textField;
        v8 = 7;
      }

      else
      {
        if (v6 != 6)
        {
          goto LABEL_21;
        }

        v7 = self->_textField;
        v8 = 8;
      }
    }

    else
    {
      switch(v6)
      {
        case 1:
          v7 = self->_textField;
          v8 = 3;
          break;
        case 2:
          v7 = self->_textField;
          v8 = 11;
          break;
        case 3:
          v7 = self->_textField;
          v8 = 2;
          break;
        default:
          goto LABEL_21;
      }
    }

    [(UITextField *)v7 setKeyboardType:v8];
  }

  else
  {
    if ([(UITextField *)textField autocapitalizationType]!= specifierCopy[10])
    {
      [(UITextField *)self->_textField setAutocapitalizationType:?];
    }

    if ([(UITextField *)self->_textField keyboardType]!= specifierCopy[9])
    {
      [(UITextField *)self->_textField setKeyboardType:?];
    }

    if ([(UITextField *)self->_textField autocorrectionType]!= specifierCopy[11])
    {
      [(UITextField *)self->_textField setAutocorrectionType:?];
    }
  }

LABEL_21:
  v9 = [specifierCopy propertyForKey:@"noAutoCorrect"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    [(UITextField *)self->_textField setAutocorrectionType:1];
    [(UITextField *)self->_textField setAutocapitalizationType:0];
  }
}

@end