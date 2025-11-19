@interface PSAboutTextSheetViewController
+ (void)presentAboutSheetTitled:(id)a3 attributedText:(id)a4 fromViewController:(id)a5;
- (void)donePressed;
- (void)loadView;
- (void)setAttributedText:(id)a3;
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

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  v5 = [(PSAboutTextSheetViewController *)self view];
  [v5 setAttributedText:v4];
}

- (void)donePressed
{
  v2 = [(PSAboutTextSheetViewController *)self parentViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

+ (void)presentAboutSheetTitled:(id)a3 attributedText:(id)a4 fromViewController:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = objc_alloc_init(a1);
  [v14 setTitle:v10];

  [v14 setAttributedText:v9];
  v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v14];
  [v11 setModalPresentationStyle:2];
  v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v14 action:sel_donePressed];
  v13 = [v14 navigationItem];
  [v13 setRightBarButtonItem:v12];

  [v8 presentViewController:v11 animated:1 completion:0];
}

@end