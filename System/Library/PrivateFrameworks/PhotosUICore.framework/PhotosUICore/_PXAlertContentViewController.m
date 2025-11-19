@interface _PXAlertContentViewController
- (_PXAlertContentViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation _PXAlertContentViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = _PXAlertContentViewController;
  [(_PXAlertContentViewController *)&v9 viewDidLoad];
  v3 = [(_PXAlertContentViewController *)self view];
  [v3 addSubview:self->_contentView];
  [v3 bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MidX = CGRectGetMidX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  [(UIView *)self->_contentView setCenter:MidX, CGRectGetMidY(v11)];
  [(UIView *)self->_contentView setAutoresizingMask:45];
}

- (_PXAlertContentViewController)initWithContentView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _PXAlertContentViewController;
  v6 = [(_PXAlertContentViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentView, a3);
  }

  return v7;
}

@end