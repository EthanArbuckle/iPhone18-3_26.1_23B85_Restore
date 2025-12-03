@interface UIPrintMoreOptionsSection
- (BOOL)keyboardShowing;
- (BOOL)updatePrintOptionsList;
- (UIPrintMoreOptionsSection)initWithPrintInfo:(id)info printPanelViewController:(id)controller;
- (void)dismissKeyboard;
@end

@implementation UIPrintMoreOptionsSection

- (UIPrintMoreOptionsSection)initWithPrintInfo:(id)info printPanelViewController:(id)controller
{
  infoCopy = info;
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = UIPrintMoreOptionsSection;
  v8 = [(UIPrintOptionSection *)&v20 initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
  v9 = v8;
  if (v8)
  {
    [(UIPrintOptionSection *)v8 setTitle:&stru_2871AE610];
    v10 = [[UIPrintCopiesOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIPrintMoreOptionsSection *)v9 setCopiesOption:v10];

    v11 = [[UIPrintPageRangeOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIPrintMoreOptionsSection *)v9 setPageRangeOption:v11];

    v12 = [[UIPrintInColorOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIPrintMoreOptionsSection *)v9 setBlackWhiteOption:v12];

    v13 = [[UIPrintTwoSidedOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIPrintMoreOptionsSection *)v9 setTwoSidedOption:v13];

    v14 = [[UIPrintPaperSizeOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIPrintMoreOptionsSection *)v9 setPaperSizePrintOption:v14];

    v15 = [[UIPrintOrientationOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIPrintMoreOptionsSection *)v9 setOrientationPrintOption:v15];

    v16 = [[UIPrintScalingOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIPrintMoreOptionsSection *)v9 setScalingPrintOption:v16];

    v17 = [[UIPrintImagePDFAnnotationsOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIPrintMoreOptionsSection *)v9 setImagePDFAnnotationsPrintOption:v17];

    v18 = [[UIPrintAccountInfoOption alloc] initWithPrintInfo:infoCopy printPanelViewController:controllerCopy];
    [(UIPrintMoreOptionsSection *)v9 setAccountInfoPrintOption:v18];

    [(UIPrintMoreOptionsSection *)v9 updatePrintOptionsList];
  }

  return v9;
}

- (BOOL)updatePrintOptionsList
{
  array = [MEMORY[0x277CBEB18] array];
  copiesOption = [(UIPrintMoreOptionsSection *)self copiesOption];
  shouldShow = [copiesOption shouldShow];

  if (shouldShow)
  {
    copiesOption2 = [(UIPrintMoreOptionsSection *)self copiesOption];
    [array addObject:copiesOption2];
  }

  pageRangeOption = [(UIPrintMoreOptionsSection *)self pageRangeOption];
  shouldShow2 = [pageRangeOption shouldShow];

  if (shouldShow2)
  {
    pageRangeOption2 = [(UIPrintMoreOptionsSection *)self pageRangeOption];
    [array addObject:pageRangeOption2];
  }

  blackWhiteOption = [(UIPrintMoreOptionsSection *)self blackWhiteOption];
  shouldShow3 = [blackWhiteOption shouldShow];

  if (shouldShow3)
  {
    blackWhiteOption2 = [(UIPrintMoreOptionsSection *)self blackWhiteOption];
    [array addObject:blackWhiteOption2];
  }

  twoSidedOption = [(UIPrintMoreOptionsSection *)self twoSidedOption];
  shouldShow4 = [twoSidedOption shouldShow];

  if (shouldShow4)
  {
    twoSidedOption2 = [(UIPrintMoreOptionsSection *)self twoSidedOption];
    [array addObject:twoSidedOption2];
  }

  paperSizePrintOption = [(UIPrintMoreOptionsSection *)self paperSizePrintOption];
  shouldShow5 = [paperSizePrintOption shouldShow];

  if (shouldShow5)
  {
    paperSizePrintOption2 = [(UIPrintMoreOptionsSection *)self paperSizePrintOption];
    [array addObject:paperSizePrintOption2];
  }

  orientationPrintOption = [(UIPrintMoreOptionsSection *)self orientationPrintOption];
  shouldShow6 = [orientationPrintOption shouldShow];

  if (shouldShow6)
  {
    orientationPrintOption2 = [(UIPrintMoreOptionsSection *)self orientationPrintOption];
    [array addObject:orientationPrintOption2];
  }

  scalingPrintOption = [(UIPrintMoreOptionsSection *)self scalingPrintOption];
  shouldShow7 = [scalingPrintOption shouldShow];

  if (shouldShow7)
  {
    scalingPrintOption2 = [(UIPrintMoreOptionsSection *)self scalingPrintOption];
    [array addObject:scalingPrintOption2];
  }

  imagePDFAnnotationsPrintOption = [(UIPrintMoreOptionsSection *)self imagePDFAnnotationsPrintOption];
  shouldShow8 = [imagePDFAnnotationsPrintOption shouldShow];

  if (shouldShow8)
  {
    imagePDFAnnotationsPrintOption2 = [(UIPrintMoreOptionsSection *)self imagePDFAnnotationsPrintOption];
    [array addObject:imagePDFAnnotationsPrintOption2];
  }

  accountInfoPrintOption = [(UIPrintMoreOptionsSection *)self accountInfoPrintOption];
  shouldShow9 = [accountInfoPrintOption shouldShow];

  if (shouldShow9)
  {
    accountInfoPrintOption2 = [(UIPrintMoreOptionsSection *)self accountInfoPrintOption];
    [array addObject:accountInfoPrintOption2];
  }

  printOptions = [(UIPrintOptionSection *)self printOptions];
  v32 = [printOptions isEqualToArray:array];

  if ((v32 & 1) == 0)
  {
    [(UIPrintOptionSection *)self setPrintOptions:array];
  }

  return v32 ^ 1;
}

- (BOOL)keyboardShowing
{
  copiesOption = [(UIPrintMoreOptionsSection *)self copiesOption];
  if ([copiesOption keyboardShowing])
  {
    keyboardShowing = 1;
  }

  else
  {
    scalingPrintOption = [(UIPrintMoreOptionsSection *)self scalingPrintOption];
    keyboardShowing = [scalingPrintOption keyboardShowing];
  }

  return keyboardShowing;
}

- (void)dismissKeyboard
{
  copiesOption = [(UIPrintMoreOptionsSection *)self copiesOption];
  [copiesOption dismissKeyboard];

  scalingPrintOption = [(UIPrintMoreOptionsSection *)self scalingPrintOption];
  [scalingPrintOption dismissKeyboard];
}

@end