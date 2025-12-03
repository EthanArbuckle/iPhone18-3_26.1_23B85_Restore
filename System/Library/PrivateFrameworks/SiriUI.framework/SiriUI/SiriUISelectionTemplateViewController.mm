@interface SiriUISelectionTemplateViewController
- (BOOL)selected;
- (void)_didSelectChoiceFromSender:(id)sender;
- (void)loadView;
- (void)setSelected:(BOOL)selected;
@end

@implementation SiriUISelectionTemplateViewController

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = SiriUISelectionTemplateViewController;
  [(SiriUIBaseTemplateViewController *)&v4 loadView];
  view = [(SiriUISelectionTemplateViewController *)self view];
  [view addTargetForSelectionEvent:self action:sel__didSelectChoiceFromSender_];
}

- (void)_didSelectChoiceFromSender:(id)sender
{
  delegate = [(SiriUITemplateViewController *)self delegate];
  [delegate selectionTemplateViewControllerWasSelected:self];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  templateModel = [(SiriUITemplateViewController *)self templateModel];
  [templateModel setSelected:selectedCopy];

  view = [(SiriUISelectionTemplateViewController *)self view];
  [view reloadData];
}

- (BOOL)selected
{
  templateModel = [(SiriUITemplateViewController *)self templateModel];
  selected = [templateModel selected];

  return selected;
}

@end