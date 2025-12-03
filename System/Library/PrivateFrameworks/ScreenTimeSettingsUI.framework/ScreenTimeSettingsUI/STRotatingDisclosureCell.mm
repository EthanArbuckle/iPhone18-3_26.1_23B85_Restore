@interface STRotatingDisclosureCell
- (STRotatingDisclosureCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_userPressed:(id)pressed;
- (void)layoutSubviews;
- (void)setSpecifier:(id)specifier;
@end

@implementation STRotatingDisclosureCell

- (STRotatingDisclosureCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v18.receiver = self;
  v18.super_class = STRotatingDisclosureCell;
  v4 = [(PSTableCell *)&v18 initWithStyle:style reuseIdentifier:identifier];
  v5 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
  v6 = [v5 fontDescriptorWithSymbolicTraits:2];

  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];
  v8 = [MEMORY[0x277D755D0] configurationWithFont:v7 scale:1];
  v9 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward"];
  v10 = [v9 imageWithConfiguration:v8];

  tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
  v12 = [v10 imageWithTintColor:tertiaryLabelColor];
  v13 = [v12 imageWithRenderingMode:1];

  v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v13];
  [v14 setContentMode:4];
  [(STRotatingDisclosureCell *)v4 setEditingAccessoryView:v14];
  v15 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v4 action:sel__userPressed_];
  longPressGestureRecognizer = v4->_longPressGestureRecognizer;
  v4->_longPressGestureRecognizer = v15;

  [(UILongPressGestureRecognizer *)v4->_longPressGestureRecognizer setDelegate:v4];
  [(UILongPressGestureRecognizer *)v4->_longPressGestureRecognizer setMinimumPressDuration:0.0];

  return v4;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = STRotatingDisclosureCell;
  [(PSTableCell *)&v9 layoutSubviews];
  longPressGestureRecognizer = [(STRotatingDisclosureCell *)self longPressGestureRecognizer];
  gestureRecognizers = [(STRotatingDisclosureCell *)self gestureRecognizers];
  v5 = [gestureRecognizers containsObject:longPressGestureRecognizer];

  if ((v5 & 1) == 0)
  {
    [(STRotatingDisclosureCell *)self addGestureRecognizer:longPressGestureRecognizer];
  }

  specifier = [(PSTableCell *)self specifier];
  performGetter = [specifier performGetter];
  detailTextLabel = [(STRotatingDisclosureCell *)self detailTextLabel];
  [detailTextLabel setText:performGetter];
}

- (void)setSpecifier:(id)specifier
{
  v16.receiver = self;
  v16.super_class = STRotatingDisclosureCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v16 setSpecifier:specifierCopy];
  v5 = [specifierCopy objectForKeyedSubscript:@"RotationDirection"];

  integerValue = [v5 integerValue];
  editingAccessoryView = [(STRotatingDisclosureCell *)self editingAccessoryView];
  v8 = editingAccessoryView;
  if (editingAccessoryView)
  {
    [editingAccessoryView transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v11 = *(MEMORY[0x277CBF2C0] + 16);
  v12 = *MEMORY[0x277CBF2C0];
  *&t2.a = *MEMORY[0x277CBF2C0];
  *&t2.c = v11;
  v10 = *(MEMORY[0x277CBF2C0] + 32);
  *&t2.tx = v10;
  if (CGAffineTransformEqualToTransform(&t1, &t2))
  {
    if (integerValue == 1)
    {
      CGAffineTransformMakeRotation(&v13, dbl_264CD1AF0[[(STRotatingDisclosureCell *)self effectiveUserInterfaceLayoutDirection]== 1]);
      *&t1.a = *&v13.a;
      *&t1.c = *&v13.c;
      v9 = *&v13.tx;
LABEL_9:
      *&t1.tx = v9;
      [v8 setTransform:{&t1, v10, v11, v12}];
    }
  }

  else if (!integerValue)
  {
    *&t1.a = v12;
    *&t1.c = v11;
    v9 = v10;
    goto LABEL_9;
  }
}

- (void)_userPressed:(id)pressed
{
  pressedCopy = pressed;
  if ([pressedCopy state] == 3)
  {
    specifier = [(PSTableCell *)self specifier];
    v6 = [specifier objectForKeyedSubscript:@"HidesEditControl"];
    bOOLValue = [v6 BOOLValue];

    effectiveUserInterfaceLayoutDirection = [(STRotatingDisclosureCell *)self effectiveUserInterfaceLayoutDirection];
    [pressedCopy locationInView:self];
    v10 = v9;
    imageView = [(STRotatingDisclosureCell *)self imageView];
    [imageView frame];
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v16 = v10 > CGRectGetMinX(*&v12);
    }

    else
    {
      v16 = v10 < CGRectGetMaxX(*&v12);
    }

    if (bOOLValue & 1 | !v16)
    {
      memset(&v30, 0, sizeof(v30));
      v17 = [specifier objectForKeyedSubscript:@"RotationDirection"];
      integerValue = [v17 integerValue];

      if (integerValue == 1)
      {
        v19 = 0;
        v21 = *(MEMORY[0x277CBF2C0] + 16);
        *&v30.a = *MEMORY[0x277CBF2C0];
        *&v30.c = v21;
        *&v30.tx = *(MEMORY[0x277CBF2C0] + 32);
      }

      else if (integerValue)
      {
        v19 = 0;
      }

      else
      {
        CGAffineTransformMakeRotation(&v30, dbl_264CD1AF0[effectiveUserInterfaceLayoutDirection == 1]);
        v19 = 1;
      }

      v22 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
      [specifier setObject:v22 forKeyedSubscript:@"RotationDirection"];

      v23 = MEMORY[0x277D75D18];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v29 = v30;
      v28[2] = __41__STRotatingDisclosureCell__userPressed___block_invoke;
      v28[3] = &unk_279B7E100;
      v28[4] = self;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __41__STRotatingDisclosureCell__userPressed___block_invoke_2;
      v24[3] = &unk_279B7E128;
      selfCopy = self;
      v27 = v19;
      v25 = specifier;
      [v23 animateWithDuration:v28 animations:v24 completion:0.1];
    }

    else
    {
      v20 = [specifier objectForKeyedSubscript:@"SelectionHandler"];
      if (v20)
      {
        v20[2](v20, [(STRotatingDisclosureCell *)self isSelected]^ 1);
      }
    }
  }
}

void __41__STRotatingDisclosureCell__userPressed___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) editingAccessoryView];
  [v1 setTransform:&v2];
}

void __41__STRotatingDisclosureCell__userPressed___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"RotationHandler"];
  if (v2)
  {
    v3 = v2;
    v3[2](v3, *(a1 + 48), [*(a1 + 40) isSelected]);
    v2 = v3;
  }
}

@end