@interface PXModelDeliveryProgressViewController
- (_TtC12PhotosUICore37PXModelDeliveryProgressViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)reportProgress:(double)progress stage:(unint64_t)stage;
- (void)setErrorState:(int64_t)state;
- (void)setIsiPadConfiguration:(BOOL)configuration;
- (void)viewDidLoad;
@end

@implementation PXModelDeliveryProgressViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PXModelDeliveryProgressViewController(0);
  v2 = v3.receiver;
  [(PXModelDeliveryProgressViewController *)&v3 viewDidLoad];
  sub_1A41C7BA0();
}

- (void)reportProgress:(double)progress stage:(unint64_t)stage
{
  selfCopy = self;
  sub_1A41C7F80(stage, progress);
}

- (void)setIsiPadConfiguration:(BOOL)configuration
{
  selfCopy = self;
  sub_1A41C84EC(configuration);
}

- (void)setErrorState:(int64_t)state
{
  selfCopy = self;
  sub_1A41C85F4(state);
}

- (_TtC12PhotosUICore37PXModelDeliveryProgressViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1A524C674();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1A41C87F0(v5, v7, bundle);
}

@end