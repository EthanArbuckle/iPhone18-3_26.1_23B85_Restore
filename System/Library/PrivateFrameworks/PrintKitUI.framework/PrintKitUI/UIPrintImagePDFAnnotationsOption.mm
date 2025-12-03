@interface UIPrintImagePDFAnnotationsOption
- (BOOL)shouldShow;
- (UIPrintImagePDFAnnotationsOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (id)createPrintOptionTableViewCell;
- (id)summary;
- (void)changeImagePDFAnnotations:(id)annotations;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintImagePDFAnnotationsOption

- (UIPrintImagePDFAnnotationsOption)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  v8.receiver = self;
  v8.super_class = UIPrintImagePDFAnnotationsOption;
  v4 = [(UIPrintOption *)&v8 initWithPrintInfo:info printPanelViewController:controller];
  v5 = v4;
  if (v4)
  {
    printInfo = [(UIPrintOption *)v4 printInfo];
    [printInfo addObserver:v5 forKeyPath:0x2871AF130 options:0 context:0];
  }

  return v5;
}

- (void)dealloc
{
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo removeObserver:self forKeyPath:0x2871AF130];

  v4.receiver = self;
  v4.super_class = UIPrintImagePDFAnnotationsOption;
  [(UIPrintImagePDFAnnotationsOption *)&v4 dealloc];
}

- (BOOL)shouldShow
{
  printInfo = [(UIPrintOption *)self printInfo];
  pdfAnnotationsAvailable = [printInfo pdfAnnotationsAvailable];

  return pdfAnnotationsAvailable;
}

- (id)createPrintOptionTableViewCell
{
  printPanelViewController = [(UIPrintOption *)self printPanelViewController];
  printOptionsTableView = [printPanelViewController printOptionsTableView];
  v5 = [printOptionsTableView dequeueReusableCellWithIdentifier:@"UIPrintOptionCell"];

  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Print PDF Annotations" value:@"Print PDF Annotations" table:@"Localizable"];
  [valueCellConfiguration setText:v8];

  [v5 setContentConfiguration:valueCellConfiguration];
  [v5 setSelectionStyle:0];
  v9 = objc_alloc(MEMORY[0x277D75AE8]);
  v10 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(UIPrintImagePDFAnnotationsOption *)self setImagePDFAnnotationsSwitch:v10];

  printPanelViewController2 = [(UIPrintOption *)self printPanelViewController];
  controlTintColor = [printPanelViewController2 controlTintColor];
  imagePDFAnnotationsSwitch = [(UIPrintImagePDFAnnotationsOption *)self imagePDFAnnotationsSwitch];
  [imagePDFAnnotationsSwitch setOnTintColor:controlTintColor];

  printInfo = [(UIPrintOption *)self printInfo];
  imagePDFAnnotations = [printInfo imagePDFAnnotations];
  imagePDFAnnotationsSwitch2 = [(UIPrintImagePDFAnnotationsOption *)self imagePDFAnnotationsSwitch];
  [imagePDFAnnotationsSwitch2 setOn:imagePDFAnnotations];

  imagePDFAnnotationsSwitch3 = [(UIPrintImagePDFAnnotationsOption *)self imagePDFAnnotationsSwitch];
  [imagePDFAnnotationsSwitch3 addTarget:self action:sel_changeImagePDFAnnotations_ forControlEvents:4096];

  imagePDFAnnotationsSwitch4 = [(UIPrintImagePDFAnnotationsOption *)self imagePDFAnnotationsSwitch];
  [v5 setAccessoryView:imagePDFAnnotationsSwitch4];

  [(UIPrintOption *)self setTableViewCell:v5];

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__UIPrintImagePDFAnnotationsOption_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)updateFromPrintInfo
{
  printInfo = [(UIPrintOption *)self printInfo];
  imagePDFAnnotations = [printInfo imagePDFAnnotations];
  imagePDFAnnotationsSwitch = [(UIPrintImagePDFAnnotationsOption *)self imagePDFAnnotationsSwitch];
  [imagePDFAnnotationsSwitch setOn:imagePDFAnnotations];
}

- (void)changeImagePDFAnnotations:(id)annotations
{
  isOn = [annotations isOn];
  printInfo = [(UIPrintOption *)self printInfo];
  [printInfo setImagePDFAnnotations:isOn];
}

- (id)summary
{
  printInfo = [(UIPrintOption *)self printInfo];
  if ([printInfo imagePDFAnnotations])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"Print PDF Annotations" value:@"Print PDF Annotations" table:@"Localizable"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end