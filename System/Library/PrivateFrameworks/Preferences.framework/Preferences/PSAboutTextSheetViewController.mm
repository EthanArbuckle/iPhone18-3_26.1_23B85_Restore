@interface PSAboutTextSheetViewController
+ (void)presentAboutSheetTitled:(id)titled attributedText:(id)text fromViewController:(id)controller;
- (void)donePressed;
- (void)loadView;
- (void)setAttributedText:(id)text;
@end

@implementation PSAboutTextSheetViewController

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD168]);
  v5 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v5 setAutoresizingMask:18];
  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
  [v5 setFont:v4];

  [v5 setEditable:0];
  [(PSAboutTextSheetViewController *)self setView:v5];
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  view = [(PSAboutTextSheetViewController *)self view];
  [view setAttributedText:textCopy];
}

- (void)donePressed
{
  parentViewController = [(PSAboutTextSheetViewController *)self parentViewController];
  [parentViewController dismissViewControllerAnimated:1 completion:0];
}

+ (void)presentAboutSheetTitled:(id)titled attributedText:(id)text fromViewController:(id)controller
{
  controllerCopy = controller;
  textCopy = text;
  titledCopy = titled;
  v14 = objc_alloc_init(self);
  [v14 setTitle:titledCopy];

  [v14 setAttributedText:textCopy];
  v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v14];
  [v11 setModalPresentationStyle:2];
  v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v14 action:sel_donePressed];
  navigationItem = [v14 navigationItem];
  [navigationItem setRightBarButtonItem:v12];

  [controllerCopy presentViewController:v11 animated:1 completion:0];
}

@end