@interface PearlIDAboutController
- (PearlIDAboutController)initWithTitle:(id)a3 content:(id)a4;
- (void)backgrounded:(id)a3;
- (void)donePressed;
@end

@implementation PearlIDAboutController

- (PearlIDAboutController)initWithTitle:(id)a3 content:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = PearlIDAboutController;
  v8 = [(PearlIDAboutController *)&v18 init];
  v9 = v8;
  if (v8)
  {
    [(PearlIDAboutController *)v8 setTitle:v6];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v9 selector:sel_backgrounded_ name:*MEMORY[0x277D76660] object:0];

    v11 = objc_alloc(MEMORY[0x277D75C40]);
    v12 = [v11 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v12 setText:v7];
    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v12 setFont:v13];

    [v12 setEditable:0];
    [v12 textContainerInset];
    [v12 setContentOffset:0 animated:{0.0, -v14}];
    [(PearlIDAboutController *)v9 setView:v12];
    v15 = [(PearlIDAboutController *)v9 navigationItem];
    v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v9 action:sel_donePressed];
    [v15 setRightBarButtonItem:v16];
  }

  return v9;
}

- (void)backgrounded:(id)a3
{
  v3 = [(PearlIDAboutController *)self parentViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)donePressed
{
  v2 = [(PearlIDAboutController *)self parentViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

@end