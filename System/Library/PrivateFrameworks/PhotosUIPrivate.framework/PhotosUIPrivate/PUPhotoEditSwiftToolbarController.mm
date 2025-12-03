@interface PUPhotoEditSwiftToolbarController
- (PUPhotoEditSwiftToolbarController)initWithNibName:(id)name bundle:(id)bundle;
- (void)selectToolController:(id)controller;
- (void)updateForToolControllers:(id)controllers;
- (void)viewDidLoad;
@end

@implementation PUPhotoEditSwiftToolbarController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1B382902C();
}

- (void)updateForToolControllers:(id)controllers
{
  sub_1B3710718(0, &unk_1EB84F170);
  v4 = sub_1B3C9C788();
  selfCopy = self;
  sub_1B382952C(v4);
}

- (void)selectToolController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1B38298BC();
}

- (PUPhotoEditSwiftToolbarController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1B3C9C5E8();
  }

  bundleCopy = bundle;
  sub_1B382A6AC();
}

@end