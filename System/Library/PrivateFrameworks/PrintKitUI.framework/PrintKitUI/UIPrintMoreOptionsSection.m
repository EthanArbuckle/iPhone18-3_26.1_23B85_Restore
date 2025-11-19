@interface UIPrintMoreOptionsSection
- (BOOL)keyboardShowing;
- (BOOL)updatePrintOptionsList;
- (UIPrintMoreOptionsSection)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4;
- (void)dismissKeyboard;
@end

@implementation UIPrintMoreOptionsSection

- (UIPrintMoreOptionsSection)initWithPrintInfo:(id)a3 printPanelViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = UIPrintMoreOptionsSection;
  v8 = [(UIPrintOptionSection *)&v20 initWithPrintInfo:v6 printPanelViewController:v7];
  v9 = v8;
  if (v8)
  {
    [(UIPrintOptionSection *)v8 setTitle:&stru_2871AE610];
    v10 = [[UIPrintCopiesOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIPrintMoreOptionsSection *)v9 setCopiesOption:v10];

    v11 = [[UIPrintPageRangeOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIPrintMoreOptionsSection *)v9 setPageRangeOption:v11];

    v12 = [[UIPrintInColorOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIPrintMoreOptionsSection *)v9 setBlackWhiteOption:v12];

    v13 = [[UIPrintTwoSidedOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIPrintMoreOptionsSection *)v9 setTwoSidedOption:v13];

    v14 = [[UIPrintPaperSizeOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIPrintMoreOptionsSection *)v9 setPaperSizePrintOption:v14];

    v15 = [[UIPrintOrientationOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIPrintMoreOptionsSection *)v9 setOrientationPrintOption:v15];

    v16 = [[UIPrintScalingOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIPrintMoreOptionsSection *)v9 setScalingPrintOption:v16];

    v17 = [[UIPrintImagePDFAnnotationsOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIPrintMoreOptionsSection *)v9 setImagePDFAnnotationsPrintOption:v17];

    v18 = [[UIPrintAccountInfoOption alloc] initWithPrintInfo:v6 printPanelViewController:v7];
    [(UIPrintMoreOptionsSection *)v9 setAccountInfoPrintOption:v18];

    [(UIPrintMoreOptionsSection *)v9 updatePrintOptionsList];
  }

  return v9;
}

- (BOOL)updatePrintOptionsList
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(UIPrintMoreOptionsSection *)self copiesOption];
  v5 = [v4 shouldShow];

  if (v5)
  {
    v6 = [(UIPrintMoreOptionsSection *)self copiesOption];
    [v3 addObject:v6];
  }

  v7 = [(UIPrintMoreOptionsSection *)self pageRangeOption];
  v8 = [v7 shouldShow];

  if (v8)
  {
    v9 = [(UIPrintMoreOptionsSection *)self pageRangeOption];
    [v3 addObject:v9];
  }

  v10 = [(UIPrintMoreOptionsSection *)self blackWhiteOption];
  v11 = [v10 shouldShow];

  if (v11)
  {
    v12 = [(UIPrintMoreOptionsSection *)self blackWhiteOption];
    [v3 addObject:v12];
  }

  v13 = [(UIPrintMoreOptionsSection *)self twoSidedOption];
  v14 = [v13 shouldShow];

  if (v14)
  {
    v15 = [(UIPrintMoreOptionsSection *)self twoSidedOption];
    [v3 addObject:v15];
  }

  v16 = [(UIPrintMoreOptionsSection *)self paperSizePrintOption];
  v17 = [v16 shouldShow];

  if (v17)
  {
    v18 = [(UIPrintMoreOptionsSection *)self paperSizePrintOption];
    [v3 addObject:v18];
  }

  v19 = [(UIPrintMoreOptionsSection *)self orientationPrintOption];
  v20 = [v19 shouldShow];

  if (v20)
  {
    v21 = [(UIPrintMoreOptionsSection *)self orientationPrintOption];
    [v3 addObject:v21];
  }

  v22 = [(UIPrintMoreOptionsSection *)self scalingPrintOption];
  v23 = [v22 shouldShow];

  if (v23)
  {
    v24 = [(UIPrintMoreOptionsSection *)self scalingPrintOption];
    [v3 addObject:v24];
  }

  v25 = [(UIPrintMoreOptionsSection *)self imagePDFAnnotationsPrintOption];
  v26 = [v25 shouldShow];

  if (v26)
  {
    v27 = [(UIPrintMoreOptionsSection *)self imagePDFAnnotationsPrintOption];
    [v3 addObject:v27];
  }

  v28 = [(UIPrintMoreOptionsSection *)self accountInfoPrintOption];
  v29 = [v28 shouldShow];

  if (v29)
  {
    v30 = [(UIPrintMoreOptionsSection *)self accountInfoPrintOption];
    [v3 addObject:v30];
  }

  v31 = [(UIPrintOptionSection *)self printOptions];
  v32 = [v31 isEqualToArray:v3];

  if ((v32 & 1) == 0)
  {
    [(UIPrintOptionSection *)self setPrintOptions:v3];
  }

  return v32 ^ 1;
}

- (BOOL)keyboardShowing
{
  v3 = [(UIPrintMoreOptionsSection *)self copiesOption];
  if ([v3 keyboardShowing])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UIPrintMoreOptionsSection *)self scalingPrintOption];
    v4 = [v5 keyboardShowing];
  }

  return v4;
}

- (void)dismissKeyboard
{
  v3 = [(UIPrintMoreOptionsSection *)self copiesOption];
  [v3 dismissKeyboard];

  v4 = [(UIPrintMoreOptionsSection *)self scalingPrintOption];
  [v4 dismissKeyboard];
}

@end