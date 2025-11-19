@interface PUAmbientPhotoFramePlayergroundViewController
- (PUAmbientPhotoFramePlayergroundViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleLongPress:(id)a3;
- (void)handleTap:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PUAmbientPhotoFramePlayergroundViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1B3895B4C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1B3895C34(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1B3895D24(a3);
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B3896088(v4);
}

- (void)handleLongPress:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B38961E0(v4);
}

- (PUAmbientPhotoFramePlayergroundViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1B3C9C5E8();
  }

  v5 = a4;
  sub_1B3898498();
}

@end