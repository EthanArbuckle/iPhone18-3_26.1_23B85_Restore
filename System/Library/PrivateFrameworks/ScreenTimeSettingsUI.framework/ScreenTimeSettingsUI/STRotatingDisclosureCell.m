@interface STRotatingDisclosureCell
- (STRotatingDisclosureCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_userPressed:(id)a3;
- (void)layoutSubviews;
- (void)setSpecifier:(id)a3;
@end

@implementation STRotatingDisclosureCell

- (STRotatingDisclosureCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v18.receiver = self;
  v18.super_class = STRotatingDisclosureCell;
  v4 = [(PSTableCell *)&v18 initWithStyle:a3 reuseIdentifier:a4];
  v5 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
  v6 = [v5 fontDescriptorWithSymbolicTraits:2];

  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];
  v8 = [MEMORY[0x277D755D0] configurationWithFont:v7 scale:1];
  v9 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward"];
  v10 = [v9 imageWithConfiguration:v8];

  v11 = [MEMORY[0x277D75348] tertiaryLabelColor];
  v12 = [v10 imageWithTintColor:v11];
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
  v3 = [(STRotatingDisclosureCell *)self longPressGestureRecognizer];
  v4 = [(STRotatingDisclosureCell *)self gestureRecognizers];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0)
  {
    [(STRotatingDisclosureCell *)self addGestureRecognizer:v3];
  }

  v6 = [(PSTableCell *)self specifier];
  v7 = [v6 performGetter];
  v8 = [(STRotatingDisclosureCell *)self detailTextLabel];
  [v8 setText:v7];
}

- (void)setSpecifier:(id)a3
{
  v16.receiver = self;
  v16.super_class = STRotatingDisclosureCell;
  v4 = a3;
  [(PSTableCell *)&v16 setSpecifier:v4];
  v5 = [v4 objectForKeyedSubscript:@"RotationDirection"];

  v6 = [v5 integerValue];
  v7 = [(STRotatingDisclosureCell *)self editingAccessoryView];
  v8 = v7;
  if (v7)
  {
    [v7 transform];
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
    if (v6 == 1)
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

  else if (!v6)
  {
    *&t1.a = v12;
    *&t1.c = v11;
    v9 = v10;
    goto LABEL_9;
  }
}

- (void)_userPressed:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    v5 = [(PSTableCell *)self specifier];
    v6 = [v5 objectForKeyedSubscript:@"HidesEditControl"];
    v7 = [v6 BOOLValue];

    v8 = [(STRotatingDisclosureCell *)self effectiveUserInterfaceLayoutDirection];
    [v4 locationInView:self];
    v10 = v9;
    v11 = [(STRotatingDisclosureCell *)self imageView];
    [v11 frame];
    if (v8 == 1)
    {
      v16 = v10 > CGRectGetMinX(*&v12);
    }

    else
    {
      v16 = v10 < CGRectGetMaxX(*&v12);
    }

    if (v7 & 1 | !v16)
    {
      memset(&v30, 0, sizeof(v30));
      v17 = [v5 objectForKeyedSubscript:@"RotationDirection"];
      v18 = [v17 integerValue];

      if (v18 == 1)
      {
        v19 = 0;
        v21 = *(MEMORY[0x277CBF2C0] + 16);
        *&v30.a = *MEMORY[0x277CBF2C0];
        *&v30.c = v21;
        *&v30.tx = *(MEMORY[0x277CBF2C0] + 32);
      }

      else if (v18)
      {
        v19 = 0;
      }

      else
      {
        CGAffineTransformMakeRotation(&v30, dbl_264CD1AF0[v8 == 1]);
        v19 = 1;
      }

      v22 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
      [v5 setObject:v22 forKeyedSubscript:@"RotationDirection"];

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
      v26 = self;
      v27 = v19;
      v25 = v5;
      [v23 animateWithDuration:v28 animations:v24 completion:0.1];
    }

    else
    {
      v20 = [v5 objectForKeyedSubscript:@"SelectionHandler"];
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