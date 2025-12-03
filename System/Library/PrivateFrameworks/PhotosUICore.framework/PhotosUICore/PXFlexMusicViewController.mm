@interface PXFlexMusicViewController
- (PXFlexMusicViewController)initWithCoder:(id)coder;
- (PXFlexMusicViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation PXFlexMusicViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PXFlexMusicViewController();
  v2 = v4.receiver;
  [(PXFlexMusicViewController *)&v4 viewDidLoad];
  v3 = sub_1A524C634();
  [v2 setTitle_];

  sub_1A4173078();
}

- (PXFlexMusicViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1A524C674();
    *(&self->super.super.super.isa + OBJC_IVAR___PXFlexMusicViewController_player) = 0;
    v6 = self + OBJC_IVAR___PXFlexMusicViewController_pickerView;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    v6[32] = 0;
    bundleCopy = bundle;
    v8 = sub_1A524C634();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR___PXFlexMusicViewController_player) = 0;
    v9 = self + OBJC_IVAR___PXFlexMusicViewController_pickerView;
    *v9 = 0u;
    *(v9 + 1) = 0u;
    v9[32] = 0;
    bundleCopy2 = bundle;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for PXFlexMusicViewController();
  v11 = [(PXFlexMusicViewController *)&v13 initWithNibName:v8 bundle:bundle];

  return v11;
}

- (PXFlexMusicViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___PXFlexMusicViewController_player) = 0;
  v4 = self + OBJC_IVAR___PXFlexMusicViewController_pickerView;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PXFlexMusicViewController();
  coderCopy = coder;
  v6 = [(PXFlexMusicViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end