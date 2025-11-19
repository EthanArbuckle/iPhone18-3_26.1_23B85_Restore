@interface SKUIComposeTextField
+ (id)labelFontForStyle:(int64_t)a3;
- (BOOL)textField:(id)a3 shouldInsertText:(id)a4 replacingRange:(_NSRange)a5;
- (SKUIComposeTextField)initWithConfiguration:(id)a3 style:(int64_t)a4;
- (id)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_textChanged:(id)a3;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setText:(id)a3;
@end

@implementation SKUIComposeTextField

- (SKUIComposeTextField)initWithConfiguration:(id)a3 style:(int64_t)a4
{
  v7 = a3;
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:44.0];
  v26.receiver = self;
  v26.super_class = SKUIComposeTextField;
  v9 = [(SKUIComposeTextField *)&v26 initWithFrame:0.0, 0.0, 0.0, v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    v10->_style = a4;
    v11 = [objc_opt_class() labelFontForStyle:a4];
    v12 = [(SKUIComposeTextFieldConfiguration *)v10->_configuration label];
    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x277D756B8]);
      label = v10->_label;
      v10->_label = v13;

      [(UILabel *)v10->_label setFont:v11];
      [(UILabel *)v10->_label setText:v12];
      v15 = v10->_label;
      v16 = [objc_opt_class() labelColorForStyle:a4];
      [(UILabel *)v15 setTextColor:v16];

      [(UILabel *)v10->_label sizeToFit];
      [(UILabel *)v10->_label setHoverStyle:0];
      [(SKUIComposeTextField *)v10 addSubview:v10->_label];
    }

    v17 = objc_alloc_init(MEMORY[0x277D75BB8]);
    textField = v10->_textField;
    v10->_textField = v17;

    [(UITextField *)v10->_textField addTarget:v10 action:sel__textChanged_ forControlEvents:0x20000];
    [(UITextField *)v10->_textField setAutocapitalizationType:2];
    [(UITextField *)v10->_textField setAutocorrectionType:0];
    [(UITextField *)v10->_textField setDelegate:v10];
    v19 = v10->_textField;
    v20 = [objc_opt_class() labelFontForStyle:v10->_style];
    [(UITextField *)v19 setFont:v20];

    [(UITextField *)v10->_textField setKeyboardType:0];
    v21 = v10->_textField;
    v22 = [v7 placeholder];
    [(UITextField *)v21 setPlaceholder:v22];

    [(UITextField *)v10->_textField setClipsToBounds:0];
    v23 = [(SKUIComposeTextFieldConfiguration *)v10->_configuration value];
    [(SKUIComposeTextField *)v10 setText:v23];

    [(SKUIComposeTextField *)v10 addSubview:v10->_textField];
    [(UITextField *)v10->_textField sizeToFit];
    [(UITextField *)v10->_textField setHoverStyle:0];
    v24 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SKUIComposeTextField *)v10 setBackgroundColor:v24];
  }

  return v10;
}

- (void)dealloc
{
  [(UITextField *)self->_textField removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SKUIComposeTextField;
  [(SKUIComposeTextField *)&v3 dealloc];
}

+ (id)labelFontForStyle:(int64_t)a3
{
  v3 = MEMORY[0x277D74300];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:{a3, 17.0}];

  return [v3 systemFontOfSize:?];
}

- (void)setText:(id)a3
{
  v7 = a3;
  v4 = [v7 length];
  if (v4 <= [(SKUIComposeTextFieldConfiguration *)self->_configuration maxLength])
  {
    v6 = v7;
  }

  else
  {
    v5 = [v7 substringToIndex:{-[SKUIComposeTextFieldConfiguration maxLength](self->_configuration, "maxLength")}];

    v6 = v5;
  }

  v8 = v6;
  [(UITextField *)self->_textField setText:v6];
  self->_currentTextLength = [v8 length];
}

- (void)drawRect:(CGRect)a3
{
  v4 = 0.0;
  if (![(SKUIComposeTextFieldConfiguration *)self->_configuration columnIndex:a3.origin.x])
  {
    [MEMORY[0x277CDD370] PPMScaledValueUsingValue:15.0];
    v4 = v5;
  }

  [(SKUIComposeTextFieldConfiguration *)self->_configuration borderInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(SKUIComposeTextField *)self bounds];
  v46 = v14;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [MEMORY[0x277D75348] labelColor];
  v22 = [v21 colorWithAlphaComponent:0.2];
  [v22 set];

  v23 = [(SKUIComposeTextField *)self effectiveUserInterfaceLayoutDirection];
  v24 = v23;
  if (v7 > 0.0)
  {
    v25 = v18 - v4;
    v26 = 0;
    v27 = v4;
    if (v23 == 1)
    {
      v27 = CGRectWithFlippedOriginRelativeToBoundingRect(v4, 0.0, v25, v7, v46, v16, v18, v20);
      v7 = v28;
    }

    v29 = v7;
    UIRectFillUsingBlendMode(*&v27, kCGBlendModeNormal);
  }

  if (v11 > 0.0)
  {
    v30 = v18 - v4;
    v31 = v20 - v11;
    if (v24 == 1)
    {
      v4 = CGRectWithFlippedOriginRelativeToBoundingRect(v4, v31, v30, v11, v46, v16, v18, v20);
      v11 = v32;
    }

    v33 = v4;
    v34 = v11;
    UIRectFillUsingBlendMode(*(&v31 - 1), kCGBlendModeNormal);
  }

  if (v9 > 0.0)
  {
    v35 = 0;
    if (v24 == 1)
    {
      v36 = CGRectWithFlippedOriginRelativeToBoundingRect(0.0, 0.0, v9, v20, v46, v16, v18, v20);
      v9 = v38;
    }

    else
    {
      v37 = v20;
      v36 = 0.0;
    }

    v39 = v9;
    UIRectFillUsingBlendMode(*(&v35 - 1), kCGBlendModeNormal);
  }

  if (v13 > 0.0)
  {
    v40 = v18 - v13;
    v41 = 0;
    if (v24 == 1)
    {
      v40 = CGRectWithFlippedOriginRelativeToBoundingRect(v40, 0.0, v13, v20, v46, v16, v18, v20);
      v13 = v42;
      v20 = v43;
    }

    v44 = v13;
    v45 = v20;

    UIRectFillUsingBlendMode(*&v40, kCGBlendModeNormal);
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = SKUIComposeTextField;
  v5 = [(SKUIComposeTextField *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self)
  {
    v6 = self->_textField;

    v5 = v6;
  }

  return v5;
}

- (void)layoutSubviews
{
  [(SKUIComposeTextField *)self bounds];
  v35 = v4;
  v36 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [(SKUIComposeTextField *)self effectiveUserInterfaceLayoutDirection];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:15.0];
  label = self->_label;
  if (label)
  {
    [(UILabel *)label frame];
    v13 = v12;
    v15 = v14;
    [MEMORY[0x277CDD370] PPMScaledValueUsingValue:15.0];
    v17 = v16;
    *&v16 = (v8 - v15) * 0.5;
    v18 = floorf(*&v16);
    v38.origin.x = v17;
    v38.origin.y = v18;
    v38.size.width = v13;
    v38.size.height = v15;
    MaxX = CGRectGetMaxX(v38);
    [MEMORY[0x277CDD370] PPMScaledValueUsingValue:4.0];
    v21 = v20;
    if (v9 == 1)
    {
      v17 = CGRectWithFlippedOriginRelativeToBoundingRect(v17, v18, v13, v15, v36, v35, v6, v8);
      v18 = v22;
      v13 = v23;
      v15 = v24;
    }

    v25 = MaxX + v21;
    [(UILabel *)self->_label setFrame:v17, v18, v13, v15];
  }

  else
  {
    v25 = v10;
  }

  [(UITextField *)self->_textField frame];
  v27 = v26;
  v28 = (v8 - v26) * 0.5;
  v29 = floorf(v28);
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:15.0];
  v31 = v6 - v30 - v25;
  if (v9 == 1)
  {
    v25 = CGRectWithFlippedOriginRelativeToBoundingRect(v25, v29, v31, v27, v36, v35, v6, v8);
    v29 = v32;
    v27 = v33;
  }

  textField = self->_textField;

  [(UITextField *)textField setFrame:v25, v29, v31, v27];
}

- (BOOL)textField:(id)a3 shouldInsertText:(id)a4 replacingRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v8 = a4;
  if (self->_currentTextLength <= location + length)
  {
    currentTextLength = location + length;
  }

  else
  {
    currentTextLength = self->_currentTextLength;
  }

  if ([(SKUIComposeTextFieldConfiguration *)self->_configuration maxLength])
  {
    v10 = [(SKUIComposeTextFieldConfiguration *)self->_configuration maxLength];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = [v8 length] - length + currentTextLength;
  if (v11 <= v10)
  {
    self->_currentTextLength = v11 & ~(v11 >> 63);
  }

  v12 = v11 <= v10;

  return v12;
}

- (void)_textChanged:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeTextFieldValidityChanged:self];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end