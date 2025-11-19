@interface UIPrintImagePDFAnnotationsOption
- (BOOL)shouldShow;
- (UIPrintImagePDFAnnotationsOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (id)createPrintOptionTableViewCell;
- (id)summary;
- (void)changeImagePDFAnnotations:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateFromPrintInfo;
@end

@implementation UIPrintImagePDFAnnotationsOption

- (UIPrintImagePDFAnnotationsOption)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v8.receiver = self;
  v8.super_class = UIPrintImagePDFAnnotationsOption;
  v4 = [(UIPrintOption *)&v8 initWithPrintInfo:a3 printPanelViewController:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(UIPrintOption *)v4 printInfo];
    [v6 addObserver:v5 forKeyPath:0x2871AF130 options:0 context:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(UIPrintOption *)self printInfo];
  [v3 removeObserver:self forKeyPath:0x2871AF130];

  v4.receiver = self;
  v4.super_class = UIPrintImagePDFAnnotationsOption;
  [(UIPrintImagePDFAnnotationsOption *)&v4 dealloc];
}

- (BOOL)shouldShow
{
  v2 = [(UIPrintOption *)self printInfo];
  v3 = [v2 pdfAnnotationsAvailable];

  return v3;
}

- (id)createPrintOptionTableViewCell
{
  v3 = [(UIPrintOption *)self printPanelViewController];
  v4 = [v3 printOptionsTableView];
  v5 = [v4 dequeueReusableCellWithIdentifier:@"UIPrintOptionCell"];

  v6 = [MEMORY[0x277D756E0] valueCellConfiguration];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Print PDF Annotations" value:@"Print PDF Annotations" table:@"Localizable"];
  [v6 setText:v8];

  [v5 setContentConfiguration:v6];
  [v5 setSelectionStyle:0];
  v9 = objc_alloc(MEMORY[0x277D75AE8]);
  v10 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(UIPrintImagePDFAnnotationsOption *)self setImagePDFAnnotationsSwitch:v10];

  v11 = [(UIPrintOption *)self printPanelViewController];
  v12 = [v11 controlTintColor];
  v13 = [(UIPrintImagePDFAnnotationsOption *)self imagePDFAnnotationsSwitch];
  [v13 setOnTintColor:v12];

  v14 = [(UIPrintOption *)self printInfo];
  v15 = [v14 imagePDFAnnotations];
  v16 = [(UIPrintImagePDFAnnotationsOption *)self imagePDFAnnotationsSwitch];
  [v16 setOn:v15];

  v17 = [(UIPrintImagePDFAnnotationsOption *)self imagePDFAnnotationsSwitch];
  [v17 addTarget:self action:sel_changeImagePDFAnnotations_ forControlEvents:4096];

  v18 = [(UIPrintImagePDFAnnotationsOption *)self imagePDFAnnotationsSwitch];
  [v5 setAccessoryView:v18];

  [(UIPrintOption *)self setTableViewCell:v5];

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
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
  v5 = [(UIPrintOption *)self printInfo];
  v3 = [v5 imagePDFAnnotations];
  v4 = [(UIPrintImagePDFAnnotationsOption *)self imagePDFAnnotationsSwitch];
  [v4 setOn:v3];
}

- (void)changeImagePDFAnnotations:(id)a3
{
  v4 = [a3 isOn];
  v5 = [(UIPrintOption *)self printInfo];
  [v5 setImagePDFAnnotations:v4];
}

- (id)summary
{
  v2 = [(UIPrintOption *)self printInfo];
  if ([v2 imagePDFAnnotations])
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