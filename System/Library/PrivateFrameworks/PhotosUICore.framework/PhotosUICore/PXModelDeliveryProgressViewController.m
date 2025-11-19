@interface PXModelDeliveryProgressViewController
- (_TtC12PhotosUICore37PXModelDeliveryProgressViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)reportProgress:(double)a3 stage:(unint64_t)a4;
- (void)setErrorState:(int64_t)a3;
- (void)setIsiPadConfiguration:(BOOL)a3;
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

- (void)reportProgress:(double)a3 stage:(unint64_t)a4
{
  v6 = self;
  sub_1A41C7F80(a4, a3);
}

- (void)setIsiPadConfiguration:(BOOL)a3
{
  v4 = self;
  sub_1A41C84EC(a3);
}

- (void)setErrorState:(int64_t)a3
{
  v4 = self;
  sub_1A41C85F4(a3);
}

- (_TtC12PhotosUICore37PXModelDeliveryProgressViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1A524C674();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1A41C87F0(v5, v7, a4);
}

@end