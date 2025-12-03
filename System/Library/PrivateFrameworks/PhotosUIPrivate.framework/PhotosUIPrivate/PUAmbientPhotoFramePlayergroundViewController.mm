@interface PUAmbientPhotoFramePlayergroundViewController
- (PUAmbientPhotoFramePlayergroundViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleLongPress:(id)press;
- (void)handleTap:(id)tap;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PUAmbientPhotoFramePlayergroundViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1B3895B4C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1B3895C34(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1B3895D24(disappear);
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_1B3896088(tapCopy);
}

- (void)handleLongPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  sub_1B38961E0(pressCopy);
}

- (PUAmbientPhotoFramePlayergroundViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1B3C9C5E8();
  }

  bundleCopy = bundle;
  sub_1B3898498();
}

@end