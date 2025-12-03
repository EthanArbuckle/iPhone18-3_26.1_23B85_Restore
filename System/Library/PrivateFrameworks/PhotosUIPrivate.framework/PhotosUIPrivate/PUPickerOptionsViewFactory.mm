@interface PUPickerOptionsViewFactory
+ (id)viewControllerWithConfiguration:(id)configuration selectionCoordinator:(id)coordinator additionalSelectionState:(id)state;
@end

@implementation PUPickerOptionsViewFactory

+ (id)viewControllerWithConfiguration:(id)configuration selectionCoordinator:(id)coordinator additionalSelectionState:(id)state
{
  configurationCopy = configuration;
  coordinatorCopy = coordinator;
  stateCopy = state;
  v10 = sub_1B375AFB4(configurationCopy, coordinatorCopy, stateCopy);

  return v10;
}

@end