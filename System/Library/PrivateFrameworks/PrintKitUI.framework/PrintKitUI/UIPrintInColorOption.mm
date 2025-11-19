@interface UIPrintInColorOption
- (BOOL)printInColor;
- (BOOL)shouldShow;
- (UIPrintInColorOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)createPrintOptionTableViewCell;
- (id)summary;
- (void)changePrintInColor:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setPrintInColor:(BOOL)a3;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintInColorOption

- (UIPrintInColorOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v12.receiver = self;
  v12.super_class = UIPrintInColorOption;
  v4 = [(UIPrintOption *)&v12 initWithPrintInfo:a3 printPanelViewController:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"Print in Color" value:@"Print in Color" table:@"Localizable"];
    [(UIPrintOption *)v4 setTitle:v6];

    v7 = [(UIPrintOption *)v4 printPanelViewController];
    v8 = [v7 printInteractionController];
    -[UIPrintInColorOption setCanShowColor:](v4, "setCanShowColor:", [v8 _canShowColor]);

    [(UIPrintInColorOption *)v4 setSavedOutputType:-1];
    v9 = [(UIPrintOption *)v4 printInfo];
    [v9 addObserver:v4 forKeyPath:0x2871AF0B0 options:0 context:0];

    v10 = [(UIPrintOption *)v4 printInfo];
    [v10 addObserver:v4 forKeyPath:0x2871AF150 options:0 context:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF0B0];

  v4 = [(UIPrintOption *)self printInfo];
  [v4 removeObserver:self forKeyPath:0x2871AF150];

  v5.receiver = self;
  v5.super_class = UIPrintInColorOption;
  [(UIPrintInColorOption *)&v5 dealloc];
}

- (BOOL)shouldShow
{
  v2 = [(UIPrintOption *)self printInfo];
  v3 = [v2 currentPrinter];
  v4 = [v3 supportsColor];

  return v4;
}

- (id)createPrintOptionTableViewCell
{
  v3 = [(UIPrintOption *)self printPanelViewController];
  v4 = [v3 printOptionsTableView];
  v5 = [v4 dequeueReusableCellWithIdentifier:@"UIPrintOptionCell"];

  v6 = [MEMORY[0x277D756E0] valueCellConfiguration];
  v7 = [(UIPrintOption *)self title];
  [v6 setText:v7];

  [v6 setSecondaryText:0];
  [v5 setContentConfiguration:v6];
  [v5 setSelectionStyle:0];
  v8 = objc_alloc(MEMORY[0x277D75AE8]);
  v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(UIPrintInColorOption *)self setPrintInColorSwitch:v9];

  v10 = [(UIPrintOption *)self printPanelViewController];
  v11 = [v10 controlTintColor];
  v12 = [(UIPrintInColorOption *)self printInColorSwitch];
  [v12 setOnTintColor:v11];

  v13 = [(UIPrintInColorOption *)self printInColor];
  v14 = [(UIPrintInColorOption *)self printInColorSwitch];
  [v14 setOn:v13];

  v15 = [(UIPrintInColorOption *)self printInColorSwitch];
  [v15 addTarget:self action:sel_changePrintInColor_ forControlEvents:4096];

  v16 = [(UIPrintInColorOption *)self printInColorSwitch];
  [v5 setAccessoryView:v16];

  [(UIPrintOption *)self setTableViewCell:v5];

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (![a3 isEqualToString:{0x2871AF150, a4, a5, a6}])
  {
    goto LABEL_12;
  }

  if ([(UIPrintInColorOption *)self canShowColor])
  {
    v7 = [(UIPrintOption *)self printInfo];
    v8 = [v7 currentPrinter];
    -[UIPrintOption setShouldShow:](self, "setShouldShow:", [v8 supportsColor]);
  }

  else
  {
    [(UIPrintOption *)self setShouldShow:0];
  }

  v9 = [(UIPrintOption *)self printInfo];
  v10 = [v9 currentPrinter];
  if (v10)
  {
    v11 = v10;
    v12 = [(UIPrintOption *)self printInfo];
    v13 = [v12 currentPrinter];
    v14 = [v13 supportsColor];

    if (!v14)
    {
      if ([(UIPrintInColorOption *)self savedOutputType]== -1)
      {
        v15 = [(UIPrintOption *)self printInfo];
        -[UIPrintInColorOption setSavedOutputType:](self, "setSavedOutputType:", [v15 outputType]);

        v16 = [(UIPrintOption *)self printInfo];
        [v16 setOutputType:2];
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  if ([(UIPrintInColorOption *)self savedOutputType]!= -1)
  {
    v17 = [(UIPrintInColorOption *)self savedOutputType];
    v18 = [(UIPrintOption *)self printInfo];
    [v18 setOutputType:v17];

    [(UIPrintInColorOption *)self setSavedOutputType:-1];
  }

LABEL_12:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__UIPrintInColorOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)printInColor
{
  v5 = [(UIPrintOption *)self printInfo];
  v6 = [v5 currentPrinter];
  if (v6)
  {
    v2 = [(UIPrintOption *)self printInfo];
    v3 = [v2 currentPrinter];
    if (![v3 supportsColor])
    {
      v7 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v8 = [(UIPrintOption *)self printInfo];
  if ([v8 outputType] == 1)
  {
    v7 = 1;
  }

  else
  {
    v9 = [(UIPrintOption *)self printInfo];
    v7 = [v9 outputType] == 0;
  }

  if (v6)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

- (void)setPrintInColor:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIPrintOption *)self printInfo];
  v6 = [v5 outputType];

  v7 = [(UIPrintOption *)self printInfo];
  v12 = v7;
  if (v6 != 1 || v3)
  {
    v9 = [v7 outputType];

    v7 = [(UIPrintOption *)self printInfo];
    v12 = v7;
    if (v9 == 3 && v3)
    {
      v8 = 1;
    }

    else
    {
      v10 = [v7 outputType];

      v7 = [(UIPrintOption *)self printInfo];
      v12 = v7;
      if (v10 || v3)
      {
        v11 = [v7 outputType];

        if (v11 != 2 || !v3)
        {
          return;
        }

        v7 = [(UIPrintOption *)self printInfo];
        v12 = v7;
        v8 = 0;
      }

      else
      {
        v8 = 2;
      }
    }
  }

  else
  {
    v8 = 3;
  }

  [v7 setOutputType:v8];
}

- (void)changePrintInColor:(id)a3
{
  v4 = [a3 isOn];

  [(UIPrintInColorOption *)self setPrintInColor:v4];
}

- (void)updateFromPrintInfo
{
  v3 = [(UIPrintInColorOption *)self printInColor];
  v4 = [(UIPrintInColorOption *)self printInColorSwitch];
  [v4 setOn:v3];
}

- (id)summary
{
  v2 = [(UIPrintInColorOption *)self printInColor];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
  {
    v5 = @"Color";
  }

  else
  {
    v5 = @"Black & White";
  }

  v6 = [v3 localizedStringForKey:v5 value:v5 table:@"Localizable"];

  return v6;
}

@end