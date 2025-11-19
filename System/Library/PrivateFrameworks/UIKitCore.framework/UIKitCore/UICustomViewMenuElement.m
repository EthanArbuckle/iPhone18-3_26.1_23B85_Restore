@interface UICustomViewMenuElement
+ (id)elementWithViewProvider:(id)a3;
- (BOOL)_acceptBoolMenuVisit:(id)a3 commandVisit:(id)a4 actionVisit:(id)a5;
- (BOOL)_acceptBoolMenuVisit:(id)a3 leafVisit:(id)a4;
- (UICustomViewMenuElement)initWithMenuElement:(id)a3;
- (UIView)contentView;
- (void)_acceptMenuVisit:(id)a3 commandVisit:(id)a4 actionVisit:(id)a5 deferredElementVisit:(id)a6;
- (void)_acceptMenuVisit:(id)a3 leafVisit:(id)a4;
- (void)performWithSender:(id)a3 target:(id)a4;
@end

@implementation UICustomViewMenuElement

+ (id)elementWithViewProvider:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E696AEC0] string];
  v7 = [v5 initWithTitle:v6 image:0 imageName:0];

  [v7 setViewProvider:v4];

  return v7;
}

- (UICustomViewMenuElement)initWithMenuElement:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UICustomViewMenuElement;
  v5 = [(UIMenuElement *)&v11 initWithTitle:&stru_1EFB14550 image:0 imageName:0];
  if (v5)
  {
    v6 = _Block_copy(*(v4 + 17));
    viewProvider = v5->_viewProvider;
    v5->_viewProvider = v6;

    objc_storeStrong(&v5->_menuElementRepresentation, *(v4 + 15));
    v8 = _Block_copy(*(v4 + 16));
    primaryActionHandler = v5->_primaryActionHandler;
    v5->_primaryActionHandler = v8;

    v5->_forceCustomViewSupport = *(v4 + 72);
  }

  return v5;
}

- (UIView)contentView
{
  v3 = [(UICustomViewMenuElement *)self viewProvider];

  if (v3)
  {
    v4 = [(UICustomViewMenuElement *)self viewProvider];
    v5 = (v4)[2](v4, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_acceptMenuVisit:(id)a3 commandVisit:(id)a4 actionVisit:(id)a5 deferredElementVisit:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(UICustomViewMenuElement *)self menuElementRepresentation];

  if (v13)
  {
    v14 = [(UICustomViewMenuElement *)self menuElementRepresentation];
    [v14 _acceptMenuVisit:v15 commandVisit:v10 actionVisit:v11 deferredElementVisit:v12];
  }
}

- (void)_acceptMenuVisit:(id)a3 leafVisit:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, self);
  }
}

- (BOOL)_acceptBoolMenuVisit:(id)a3 leafVisit:(id)a4
{
  if (a4)
  {
    return (*(a4 + 2))(a4, self);
  }

  else
  {
    return 0;
  }
}

- (BOOL)_acceptBoolMenuVisit:(id)a3 commandVisit:(id)a4 actionVisit:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UICustomViewMenuElement *)self menuElementRepresentation];

  if (v11)
  {
    v12 = [(UICustomViewMenuElement *)self menuElementRepresentation];
    v13 = [v12 _acceptBoolMenuVisit:v8 commandVisit:v9 actionVisit:v10];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (void)performWithSender:(id)a3 target:(id)a4
{
  v5 = [(UICustomViewMenuElement *)self primaryActionHandler:a3];

  if (v5)
  {
    v6 = [(UICustomViewMenuElement *)self primaryActionHandler];
    v6[2](v6, self);
  }
}

@end