@interface SiriUISelectionTemplateViewController
- (BOOL)selected;
- (void)_didSelectChoiceFromSender:(id)a3;
- (void)loadView;
- (void)setSelected:(BOOL)a3;
@end

@implementation SiriUISelectionTemplateViewController

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = SiriUISelectionTemplateViewController;
  [(SiriUIBaseTemplateViewController *)&v4 loadView];
  v3 = [(SiriUISelectionTemplateViewController *)self view];
  [v3 addTargetForSelectionEvent:self action:sel__didSelectChoiceFromSender_];
}

- (void)_didSelectChoiceFromSender:(id)a3
{
  v4 = [(SiriUITemplateViewController *)self delegate];
  [v4 selectionTemplateViewControllerWasSelected:self];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(SiriUITemplateViewController *)self templateModel];
  [v5 setSelected:v3];

  v6 = [(SiriUISelectionTemplateViewController *)self view];
  [v6 reloadData];
}

- (BOOL)selected
{
  v2 = [(SiriUITemplateViewController *)self templateModel];
  v3 = [v2 selected];

  return v3;
}

@end