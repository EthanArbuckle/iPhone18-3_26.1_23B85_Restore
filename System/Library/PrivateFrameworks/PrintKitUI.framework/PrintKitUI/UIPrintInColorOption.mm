@interface UIPrintInColorOption
- (BOOL)printInColor;
- (BOOL)shouldShow;
- (UIPrintInColorOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)createPrintOptionTableViewCell;
- (id)summary;
- (void)changePrintInColor:(id)color;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setPrintInColor:(BOOL)color;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintInColorOption

- (UIPrintInColorOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  v12.receiver = self;
  v12.super_class = UIPrintInColorOption;
  v4 = [(UIPrintOption *)&v12 initWithPrintInfo:info printPanelViewController:controller];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"Print in Color" value:@"Print in Color" table:@"Localizable"];
    [(UIPrintOption *)v4 setTitle:v6];

    printPanelViewController = [(UIPrintOption *)v4 printPanelViewController];
    printInteractionController = [printPanelViewController printInteractionController];
    -[UIPrintInColorOption setCanShowColor:](v4, "setCanShowColor:", [printInteractionController _canShowColor]);

    [(UIPrintInColorOption *)v4 setSavedOutputType:-1];
    printInfo = [(UIPrintOption *)v4 printInfo];
    [printInfo addObserver:v4 forKeyPath:0x2871AF0B0 options:0 context:0];

    printInfo2 = [(UIPrintOption *)v4 printInfo];
    [printInfo2 addObserver:v4 forKeyPath:0x2871AF150 options:0 context:0];
  }

  return v4;
}

- (void)dealloc
{
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF0B0];

  printInfo2 = [(UIPrintOption *)self printInfo];
  [printInfo2 removeObserver:self forKeyPath:0x2871AF150];

  v5.receiver = self;
  v5.super_class = UIPrintInColorOption;
  [(UIPrintInColorOption *)&v5 dealloc];
}

- (BOOL)shouldShow
{
  printInfo = [(UIPrintOption *)self printInfo];
  currentPrinter = [printInfo currentPrinter];
  supportsColor = [currentPrinter supportsColor];

  return supportsColor;
}

- (id)createPrintOptionTableViewCell
{
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];
  v5 = [printOptionsTableView dequeueReusableCellWithIdentifier:@"UIPrintOptionCell"];

  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  title = [(UIPrintOption *)self title];
  [valueCellConfiguration setText:title];

  [valueCellConfiguration setSecondaryText:0];
  [v5 setContentConfiguration:valueCellConfiguration];
  [v5 setSelectionStyle:0];
  v8 = objc_alloc(MEMORY[0x277D75AE8]);
  v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(UIPrintInColorOption *)self setPrintInColorSwitch:v9];

  printPanelViewController2 = [(UIPrintOption *)self printPanelViewController];
  controlTintColor = [printPanelViewController2 controlTintColor];
  printInColorSwitch = [(UIPrintInColorOption *)self printInColorSwitch];
  [printInColorSwitch setOnTintColor:controlTintColor];

  printInColor = [(UIPrintInColorOption *)self printInColor];
  printInColorSwitch2 = [(UIPrintInColorOption *)self printInColorSwitch];
  [printInColorSwitch2 setOn:printInColor];

  printInColorSwitch3 = [(UIPrintInColorOption *)self printInColorSwitch];
  [printInColorSwitch3 addTarget:self action:sel_changePrintInColor_ forControlEvents:4096];

  printInColorSwitch4 = [(UIPrintInColorOption *)self printInColorSwitch];
  [v5 setAccessoryView:printInColorSwitch4];

  [(UIPrintOption *)self setTableViewCell:v5];

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (![path isEqualToString:{0x2871AF150, object, change, context}])
  {
    goto LABEL_12;
  }

  if ([(UIPrintInColorOption *)self canShowColor])
  {
    printInfo = [(UIPrintOption *)self printInfo];
    currentPrinter = [printInfo currentPrinter];
    -[UIPrintOption setShouldShow:](self, "setShouldShow:", [currentPrinter supportsColor]);
  }

  else
  {
    [(UIPrintOption *)self setShouldShow:0];
  }

  printInfo2 = [(UIPrintOption *)self printInfo];
  currentPrinter2 = [printInfo2 currentPrinter];
  if (currentPrinter2)
  {
    v11 = currentPrinter2;
    printInfo3 = [(UIPrintOption *)self printInfo];
    currentPrinter3 = [printInfo3 currentPrinter];
    supportsColor = [currentPrinter3 supportsColor];

    if (!supportsColor)
    {
      if ([(UIPrintInColorOption *)self savedOutputType]== -1)
      {
        printInfo4 = [(UIPrintOption *)self printInfo];
        -[UIPrintInColorOption setSavedOutputType:](self, "setSavedOutputType:", [printInfo4 outputType]);

        printInfo5 = [(UIPrintOption *)self printInfo];
        [printInfo5 setOutputType:2];
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  if ([(UIPrintInColorOption *)self savedOutputType]!= -1)
  {
    savedOutputType = [(UIPrintInColorOption *)self savedOutputType];
    printInfo6 = [(UIPrintOption *)self printInfo];
    [printInfo6 setOutputType:savedOutputType];

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
  printInfo = [(UIPrintOption *)self printInfo];
  currentPrinter = [printInfo currentPrinter];
  if (currentPrinter)
  {
    printInfo2 = [(UIPrintOption *)self printInfo];
    currentPrinter2 = [printInfo2 currentPrinter];
    if (![currentPrinter2 supportsColor])
    {
      v7 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  printInfo3 = [(UIPrintOption *)self printInfo];
  if ([printInfo3 outputType] == 1)
  {
    v7 = 1;
  }

  else
  {
    printInfo4 = [(UIPrintOption *)self printInfo];
    v7 = [printInfo4 outputType] == 0;
  }

  if (currentPrinter)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

- (void)setPrintInColor:(BOOL)color
{
  colorCopy = color;
  printInfo = [(UIPrintOption *)self printInfo];
  outputType = [printInfo outputType];

  printInfo2 = [(UIPrintOption *)self printInfo];
  v12 = printInfo2;
  if (outputType != 1 || colorCopy)
  {
    outputType2 = [printInfo2 outputType];

    printInfo2 = [(UIPrintOption *)self printInfo];
    v12 = printInfo2;
    if (outputType2 == 3 && colorCopy)
    {
      v8 = 1;
    }

    else
    {
      outputType3 = [printInfo2 outputType];

      printInfo2 = [(UIPrintOption *)self printInfo];
      v12 = printInfo2;
      if (outputType3 || colorCopy)
      {
        outputType4 = [printInfo2 outputType];

        if (outputType4 != 2 || !colorCopy)
        {
          return;
        }

        printInfo2 = [(UIPrintOption *)self printInfo];
        v12 = printInfo2;
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

  [printInfo2 setOutputType:v8];
}

- (void)changePrintInColor:(id)color
{
  isOn = [color isOn];

  [(UIPrintInColorOption *)self setPrintInColor:isOn];
}

- (void)updateFromPrintInfo
{
  printInColor = [(UIPrintInColorOption *)self printInColor];
  printInColorSwitch = [(UIPrintInColorOption *)self printInColorSwitch];
  [printInColorSwitch setOn:printInColor];
}

- (id)summary
{
  printInColor = [(UIPrintInColorOption *)self printInColor];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (printInColor)
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