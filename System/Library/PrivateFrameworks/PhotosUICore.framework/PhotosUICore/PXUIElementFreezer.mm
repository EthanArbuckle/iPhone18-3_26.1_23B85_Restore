@interface PXUIElementFreezer
+ (PXUIElementFreezer)defaultFreezer;
- (PXUIElementFreezer)init;
- (id)freezeContentOfViewController:(id)controller timeout:(double)timeout;
- (id)freezeMainWindowWithTimeout:(double)timeout;
- (id)freezeView:(id)view timeout:(double)timeout;
- (id)freezeWindowContainingViewController:(id)controller timeout:(double)timeout;
@end

@implementation PXUIElementFreezer

+ (PXUIElementFreezer)defaultFreezer
{
  v2 = [objc_allocWithZone(PXUIElementFreezer) init];

  return v2;
}

- (id)freezeView:(id)view timeout:(double)timeout
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1A45FEE18(view);

  return v8;
}

- (id)freezeContentOfViewController:(id)controller timeout:(double)timeout
{
  controllerCopy = controller;
  selfCopy = self;
  viewIfLoaded = [controllerCopy viewIfLoaded];
  v9 = [(PXUIElementFreezer *)selfCopy freezeView:viewIfLoaded timeout:timeout];

  return v9;
}

- (id)freezeWindowContainingViewController:(id)controller timeout:(double)timeout
{
  v7 = objc_opt_self();
  controllerCopy = controller;
  selfCopy = self;
  v10 = [v7 px:controllerCopy windowContainingViewController:?];
  v11 = [(PXUIElementFreezer *)selfCopy freezeView:v10 timeout:timeout];

  return v11;
}

- (id)freezeMainWindowWithTimeout:(double)timeout
{
  v5 = objc_opt_self();
  selfCopy = self;
  v7 = [v5 px:0 windowContainingViewController:?];
  v8 = [(PXUIElementFreezer *)selfCopy freezeView:v7 timeout:timeout];

  return v8;
}

- (PXUIElementFreezer)init
{
  v3.receiver = self;
  v3.super_class = PXUIElementFreezer;
  return [(PXUIElementFreezer *)&v3 init];
}

@end