@interface UIPrinterAccessoryView
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIPrinterAccessoryView)initWithFrame:(CGRect)a3;
- (UIPrinterAccessoryViewDelegate)delegate;
- (void)infoButtonPressed:(id)a3;
- (void)layoutSubviews;
- (void)setPrinterState:(int)a3;
@end

@implementation UIPrinterAccessoryView

- (UIPrinterAccessoryView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = UIPrinterAccessoryView;
  v3 = [(UIPrinterAccessoryView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:3];
    infoButton = v3->_infoButton;
    v3->_infoButton = v4;

    [(UIButton *)v3->_infoButton addTarget:v3 action:sel_infoButtonPressed_ forControlEvents:64];
    [(UIPrinterAccessoryView *)v3 addSubview:v3->_infoButton];
    v3->_printerState = 0;
  }

  return v3;
}

- (void)infoButtonPressed:(id)a3
{
  v4 = [(UIPrinterAccessoryView *)self delegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 printerAccessoryViewInfoButtonPressed:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)setPrinterState:(int)a3
{
  if (self->_printerState == a3)
  {
    return;
  }

  self->_printerState = a3;
  v4 = [(UIPrinterAccessoryView *)self statusView];

  if (v4)
  {
    v5 = [(UIPrinterAccessoryView *)self statusView];
    [v5 removeFromSuperview];

    [(UIPrinterAccessoryView *)self setStatusView:0];
  }

  printerState = self->_printerState;
  switch(printerState)
  {
    case 4:
      v11 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:3];
      [v11 startAnimating];
      goto LABEL_11;
    case 2:
      v7 = objc_alloc(MEMORY[0x277D755E8]);
      v8 = MEMORY[0x277D755B8];
      v9 = @"lock.open.fill";
      goto LABEL_9;
    case 1:
      v7 = objc_alloc(MEMORY[0x277D755E8]);
      v8 = MEMORY[0x277D755B8];
      v9 = @"lock.fill";
LABEL_9:
      v10 = [v8 systemImageNamed:v9];
      v11 = [v7 initWithImage:v10];

LABEL_11:
      [(UIPrinterAccessoryView *)self setStatusView:v11];

      break;
  }

  v12 = [(UIPrinterAccessoryView *)self statusView];

  if (v12)
  {
    v13 = [(UIPrinterAccessoryView *)self statusView];
    [(UIPrinterAccessoryView *)self addSubview:v13];
  }

  [(UIPrinterAccessoryView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v3 = [(UIPrinterAccessoryView *)self infoButton];
  if (!v3 || (v4 = v3, [(UIPrinterAccessoryView *)self statusView], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v8 = [(UIPrinterAccessoryView *)self infoButton];
    [v8 bounds];
    v10 = v9;
    v12 = v11;

    v24 = [(UIPrinterAccessoryView *)self infoButton];
    [v24 setFrame:{0.0, 0.0, v10, v12}];
    goto LABEL_15;
  }

  v6 = [MEMORY[0x277D75128] sharedApplication];
  v7 = [v6 userInterfaceLayoutDirection];

  if (v7)
  {
    v24 = [(UIPrinterAccessoryView *)self infoButton];
    [(UIPrinterAccessoryView *)self statusView];
  }

  else
  {
    v24 = [(UIPrinterAccessoryView *)self statusView];
    [(UIPrinterAccessoryView *)self infoButton];
  }
  v13 = ;
  if (!v24 || !v13)
  {
    [UIPrinterAccessoryView layoutSubviews];
  }

  [v24 frame];
  v15 = v14;
  v17 = v16;
  [v13 frame];
  v20 = v19;
  v21 = v18;
  if (v17 > v18)
  {
    v22 = (v17 - v18) * 0.5;
LABEL_13:
    v23 = 0.0;
    goto LABEL_14;
  }

  v22 = 0.0;
  if (v18 <= v17)
  {
    goto LABEL_13;
  }

  v23 = (v18 - v17) * 0.5;
LABEL_14:
  [v24 setFrame:{0.0, v23, v15, v17}];
  [v13 setFrame:{v15 + 10.0, v22, v20, v21}];

LABEL_15:
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(UIPrinterAccessoryView *)self subviews];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        v20 = v7;
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v21 + 1) + 8 * i) frame];
        x = v28.origin.x;
        y = v28.origin.y;
        width = v28.size.width;
        height = v28.size.height;
        MinX = CGRectGetMinX(v28);
        v29.origin.x = x;
        v29.origin.y = y;
        v29.size.width = width;
        v29.size.height = height;
        MaxX = CGRectGetMaxX(v29);
        v30.origin.x = x;
        v30.origin.y = y;
        v30.size.width = width;
        v30.size.height = height;
        v17 = CGRectGetHeight(v30);
        if (MinX < v9)
        {
          v9 = MinX;
        }

        if (MaxX > v8)
        {
          v8 = MaxX;
        }

        v7 = v20;
        if (v17 > v20)
        {
          v7 = v17;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  v18 = v8 - v9;
  v19 = v7;
  result.height = v19;
  result.width = v18;
  return result;
}

- (UIPrinterAccessoryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end