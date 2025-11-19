@interface ProblemReportingAboutController
- (ProblemReportingAboutController)initWithTitle:(id)a3 content:(id)a4;
- (void)donePressed;
@end

@implementation ProblemReportingAboutController

- (ProblemReportingAboutController)initWithTitle:(id)a3 content:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = ProblemReportingAboutController;
  v8 = [(ProblemReportingAboutController *)&v17 init];
  v9 = v8;
  if (v8)
  {
    [(ProblemReportingAboutController *)v8 setTitle:v6];
    v10 = objc_alloc(MEMORY[0x277D75C40]);
    v11 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v11 setText:v7];
    v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v11 setFont:v12];

    [v11 setEditable:0];
    [v11 textContainerInset];
    [v11 setContentOffset:0 animated:{0.0, -v13}];
    [(ProblemReportingAboutController *)v9 setView:v11];
    v14 = [(ProblemReportingAboutController *)v9 navigationItem];
    v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v9 action:sel_donePressed];
    [v14 setRightBarButtonItem:v15];
  }

  return v9;
}

- (void)donePressed
{
  v2 = [(ProblemReportingAboutController *)self parentViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

@end