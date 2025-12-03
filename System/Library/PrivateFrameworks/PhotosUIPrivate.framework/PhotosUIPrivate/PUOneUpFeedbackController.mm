@interface PUOneUpFeedbackController
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUOneUpFeedbackController

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  selfCopy = self;
  sub_1B372BCC4(model, change);
}

@end