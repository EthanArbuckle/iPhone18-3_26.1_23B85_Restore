@interface PUPhotoEditSwiftToolbarController
- (PUPhotoEditSwiftToolbarController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)selectToolController:(id)a3;
- (void)updateForToolControllers:(id)a3;
- (void)viewDidLoad;
@end

@implementation PUPhotoEditSwiftToolbarController

- (void)viewDidLoad
{
  v2 = self;
  sub_1B382902C();
}

- (void)updateForToolControllers:(id)a3
{
  sub_1B3710718(0, &unk_1EB84F170);
  v4 = sub_1B3C9C788();
  v5 = self;
  sub_1B382952C(v4);
}

- (void)selectToolController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B38298BC();
}

- (PUPhotoEditSwiftToolbarController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1B3C9C5E8();
  }

  v5 = a4;
  sub_1B382A6AC();
}

@end