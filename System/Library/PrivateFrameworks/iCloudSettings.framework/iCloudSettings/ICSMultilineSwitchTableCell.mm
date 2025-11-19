@interface ICSMultilineSwitchTableCell
- (BOOL)loading;
- (ICSMultilineSwitchTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (ICSMultilineSwitchTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)controlValue;
- (id)newControl;
- (void)controlChanged:(id)a3;
- (void)dealloc;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setControl:(id)a3;
- (void)setLoading:(BOOL)a3;
- (void)setValue:(id)a3;
@end

@implementation ICSMultilineSwitchTableCell

- (ICSMultilineSwitchTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = ICSMultilineSwitchTableCell;
  v4 = [(PSTableCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(ICSMultilineSwitchTableCell *)v4 setSelectionStyle:0];
    [(ICSMultilineSwitchTableCell *)v5 setAccessoryType:0];
    v6 = [(ICSMultilineSwitchTableCell *)v5 newControl];
    [(ICSMultilineSwitchTableCell *)v5 setControl:v6];
    [v6 addTarget:v5 action:sel_controlChanged_ forControlEvents:4096];
    v7 = [(ICSMultilineSwitchTableCell *)v5 control];
    [(ICSMultilineSwitchTableCell *)v5 setAccessoryView:v7];
  }

  return v5;
}

- (ICSMultilineSwitchTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v6.receiver = self;
  v6.super_class = ICSMultilineSwitchTableCell;
  return [(ICSDataclassWithSubtitleTableViewCell *)&v6 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = ICSMultilineSwitchTableCell;
  [(PSTableCell *)&v25 refreshCellContentsWithSpecifier:v4];
  v5 = [(ICSMultilineSwitchTableCell *)self control];
  [v4 setProperty:v5 forKey:*MEMORY[0x277D3FEB0]];

  v6 = [v4 propertyForKey:*MEMORY[0x277D3FEA8]];
  v7 = v6;
  if (v6)
  {
    -[ICSMultilineSwitchTableCell setLoading:](self, "setLoading:", [v6 BOOLValue]);
  }

  v8 = [v4 name];
  v9 = [(ICSDataclassWithSubtitleTableViewCell *)self primaryLabel];
  [v9 setText:v8];

  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277D40160]];
  v11 = [(ICSDataclassWithSubtitleTableViewCell *)self secondaryLabel];
  [v11 setText:v10];

  v12 = [(ICSDataclassWithSubtitleTableViewCell *)self secondaryLabel];
  v13 = [v12 text];
  if (v13)
  {
    v14 = v13;
    v15 = [(ICSDataclassWithSubtitleTableViewCell *)self secondaryLabel];
    v16 = [v15 text];
    v17 = [v16 length] == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = [(ICSDataclassWithSubtitleTableViewCell *)self secondaryLabel];
  [v18 setHidden:v17];

  if ([v4 hasValidGetter])
  {
    v19 = [v4 performGetter];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [(ICSDataclassWithSubtitleTableViewCell *)self tertiaryLabel];
      [v20 setHidden:0];

      v21 = [(ICSDataclassWithSubtitleTableViewCell *)self tertiaryLabel];
      [v21 setText:v19];

      [(ICSMultilineSwitchTableCell *)self setAccessoryView:0];
      v22 = [(ICSMultilineSwitchTableCell *)self control];
      v23 = v22;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v22 = [(ICSDataclassWithSubtitleTableViewCell *)self tertiaryLabel];
      v23 = v22;
      if ((isKindOfClass & 1) == 0)
      {
        [v22 setText:&stru_288487370];
        goto LABEL_13;
      }
    }

    [v22 setHidden:1];
LABEL_13:

    goto LABEL_14;
  }

  v19 = [(ICSDataclassWithSubtitleTableViewCell *)self tertiaryLabel];
  [v19 setText:&stru_288487370];
LABEL_14:

  [(ICSMultilineSwitchTableCell *)self setNeedsLayout];
}

- (void)dealloc
{
  [(PSTableCell *)self setCellTarget:0];
  v3 = [(ICSMultilineSwitchTableCell *)self control];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(ICSMultilineSwitchTableCell *)self control];
    [v5 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  }

  v6.receiver = self;
  v6.super_class = ICSMultilineSwitchTableCell;
  [(PSTableCell *)&v6 dealloc];
}

- (void)setControl:(id)a3
{
  v5 = a3;
  if (self->_control != v5)
  {
    v8 = v5;
    v6 = [(ICSMultilineSwitchTableCell *)self contentView];
    [v6 addSubview:v8];

    control = self->_control;
    if (control)
    {
      [(UIControl *)control removeFromSuperview];
    }

    objc_storeStrong(&self->_control, a3);
    v5 = v8;
  }
}

- (void)controlChanged:(id)a3
{
  v4 = [(PSTableCell *)self cellTarget];
  if (v4)
  {
    v5 = v4;
    v6 = [(PSTableCell *)self specifier];

    if (v6)
    {
      [(PSTableCell *)self cellAction];
      v10 = [(PSTableCell *)self cellTarget];
      v7 = [(ICSMultilineSwitchTableCell *)self controlValue];
      v8 = [(PSTableCell *)self specifier];
      v9 = SFPerformSelector2();
    }
  }
}

- (void)prepareForReuse
{
  [(ICSMultilineSwitchTableCell *)self setLoading:0];
  v4.receiver = self;
  v4.super_class = ICSMultilineSwitchTableCell;
  [(PSTableCell *)&v4 prepareForReuse];
  v3 = [(ICSMultilineSwitchTableCell *)self control];
  [(ICSMultilineSwitchTableCell *)self setAccessoryView:v3];
}

- (id)newControl
{
  v2 = objc_alloc(MEMORY[0x277D75AE8]);

  return [v2 initWithFrame:{0.0, 0.0, 51.0, 31.0}];
}

- (BOOL)loading
{
  v2 = [(ICSMultilineSwitchTableCell *)self activityIndicator];
  v3 = v2 != 0;

  return v3;
}

- (void)setLoading:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICSMultilineSwitchTableCell *)self activityIndicator];

  if (!v3)
  {
    if (!v5)
    {
      return;
    }

    v26 = [(ICSMultilineSwitchTableCell *)self activityIndicator];
    [v26 removeFromSuperview];

    [(ICSMultilineSwitchTableCell *)self setActivityIndicator:0];
    v27 = [(ICSMultilineSwitchTableCell *)self control];

    if (!v27)
    {
      return;
    }

    if ([(ICSMultilineSwitchTableCell *)self tag]!= 6)
    {
      v30 = [(ICSMultilineSwitchTableCell *)self contentView];
      v29 = [(ICSMultilineSwitchTableCell *)self control];
      [v30 addSubview:v29];

      goto LABEL_17;
    }

    v28 = [(ICSMultilineSwitchTableCell *)self control];
    [(ICSMultilineSwitchTableCell *)self setAccessoryView:v28];

    v24 = [(ICSMultilineSwitchTableCell *)self control];
    v30 = v24;
    v25 = 0;
LABEL_13:
    [v24 setHidden:v25];
LABEL_17:

    return;
  }

  if (!v5)
  {
    v6 = [(ICSMultilineSwitchTableCell *)self contentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;

    [MEMORY[0x277D750E8] defaultSizeForStyle:{-[ICSMultilineSwitchTableCell spinnerStyle](self, "spinnerStyle")}];
    v12 = v11;
    v14 = v13;
    v15 = [(ICSMultilineSwitchTableCell *)self _shouldReverseLayoutDirection]? 9.0 : v8 + -9.0 - v12;
    v16 = (v10 - v14) * 0.5;
    v17 = ceilf(v16);
    v18 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:{-[ICSMultilineSwitchTableCell spinnerStyle](self, "spinnerStyle")}];
    [(ICSMultilineSwitchTableCell *)self setActivityIndicator:v18];

    v19 = [(ICSMultilineSwitchTableCell *)self activityIndicator];
    [v19 setFrame:{v15, v17, v12, v14}];

    v20 = [(ICSMultilineSwitchTableCell *)self activityIndicator];
    [v20 startAnimating];

    v21 = [(ICSMultilineSwitchTableCell *)self contentView];
    v22 = [(ICSMultilineSwitchTableCell *)self activityIndicator];
    [v21 addSubview:v22];

    v23 = [(ICSMultilineSwitchTableCell *)self control];

    if (v23)
    {
      if ([(ICSMultilineSwitchTableCell *)self tag]!= 6)
      {
        v30 = [(ICSMultilineSwitchTableCell *)self control];
        [v30 removeFromSuperview];
        goto LABEL_17;
      }

      [(ICSMultilineSwitchTableCell *)self setAccessoryView:0];
      v24 = [(ICSMultilineSwitchTableCell *)self control];
      v30 = v24;
      v25 = 1;
      goto LABEL_13;
    }
  }
}

- (id)controlValue
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(ICSMultilineSwitchTableCell *)self control];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "isOn")}];

  return v4;
}

- (void)setValue:(id)a3
{
  v5 = a3;
  v6 = *MEMORY[0x277D3FCE8];
  if (*(&self->super.super.super.super.super.super.isa + v6) != v5)
  {
    v8 = v5;
    objc_storeStrong((&self->super.super.super.super.super.super.isa + v6), a3);
    v7 = [(ICSMultilineSwitchTableCell *)self control];
    [v7 setOn:{-[objc_class intValue](v8, "intValue") != 0}];

    v5 = v8;
  }
}

@end