@interface PearlIDAboutController
- (PearlIDAboutController)initWithTitle:(id)title content:(id)content;
- (void)backgrounded:(id)backgrounded;
- (void)donePressed;
@end

@implementation PearlIDAboutController

- (PearlIDAboutController)initWithTitle:(id)title content:(id)content
{
  titleCopy = title;
  contentCopy = content;
  v18.receiver = self;
  v18.super_class = PearlIDAboutController;
  v8 = [(PearlIDAboutController *)&v18 init];
  v9 = v8;
  if (v8)
  {
    [(PearlIDAboutController *)v8 setTitle:titleCopy];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel_backgrounded_ name:*MEMORY[0x277D76660] object:0];

    v11 = objc_alloc(MEMORY[0x277D75C40]);
    v12 = [v11 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v12 setText:contentCopy];
    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v12 setFont:v13];

    [v12 setEditable:0];
    [v12 textContainerInset];
    [v12 setContentOffset:0 animated:{0.0, -v14}];
    [(PearlIDAboutController *)v9 setView:v12];
    navigationItem = [(PearlIDAboutController *)v9 navigationItem];
    v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v9 action:sel_donePressed];
    [navigationItem setRightBarButtonItem:v16];
  }

  return v9;
}

- (void)backgrounded:(id)backgrounded
{
  parentViewController = [(PearlIDAboutController *)self parentViewController];
  [parentViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)donePressed
{
  parentViewController = [(PearlIDAboutController *)self parentViewController];
  [parentViewController dismissViewControllerAnimated:1 completion:0];
}

@end