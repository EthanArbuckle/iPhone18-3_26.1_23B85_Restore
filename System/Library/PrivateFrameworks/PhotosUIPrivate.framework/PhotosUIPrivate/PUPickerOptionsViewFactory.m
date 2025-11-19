@interface PUPickerOptionsViewFactory
+ (id)viewControllerWithConfiguration:(id)a3 selectionCoordinator:(id)a4 additionalSelectionState:(id)a5;
@end

@implementation PUPickerOptionsViewFactory

+ (id)viewControllerWithConfiguration:(id)a3 selectionCoordinator:(id)a4 additionalSelectionState:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_1B375AFB4(v7, v8, v9);

  return v10;
}

@end