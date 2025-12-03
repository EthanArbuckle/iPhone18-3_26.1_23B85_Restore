@interface StoryViewControllerDefaultChromeBarsController
- (void)initialSetupForNavigationItem:(id)item viewModel:(id)model;
@end

@implementation StoryViewControllerDefaultChromeBarsController

- (void)initialSetupForNavigationItem:(id)item viewModel:(id)model
{
  itemCopy = item;
  modelCopy = model;
  selfCopy = self;
  sub_1A42ABC84(itemCopy, modelCopy);
}

@end