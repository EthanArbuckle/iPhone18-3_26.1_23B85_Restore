@interface UICustomViewMenuElement
+ (id)elementWithViewProvider:(id)provider;
- (BOOL)_acceptBoolMenuVisit:(id)visit commandVisit:(id)commandVisit actionVisit:(id)actionVisit;
- (BOOL)_acceptBoolMenuVisit:(id)visit leafVisit:(id)leafVisit;
- (UICustomViewMenuElement)initWithMenuElement:(id)element;
- (UIView)contentView;
- (void)_acceptMenuVisit:(id)visit commandVisit:(id)commandVisit actionVisit:(id)actionVisit deferredElementVisit:(id)elementVisit;
- (void)_acceptMenuVisit:(id)visit leafVisit:(id)leafVisit;
- (void)performWithSender:(id)sender target:(id)target;
@end

@implementation UICustomViewMenuElement

+ (id)elementWithViewProvider:(id)provider
{
  providerCopy = provider;
  v5 = [self alloc];
  string = [MEMORY[0x1E696AEC0] string];
  v7 = [v5 initWithTitle:string image:0 imageName:0];

  [v7 setViewProvider:providerCopy];

  return v7;
}

- (UICustomViewMenuElement)initWithMenuElement:(id)element
{
  elementCopy = element;
  v11.receiver = self;
  v11.super_class = UICustomViewMenuElement;
  v5 = [(UIMenuElement *)&v11 initWithTitle:&stru_1EFB14550 image:0 imageName:0];
  if (v5)
  {
    v6 = _Block_copy(*(elementCopy + 17));
    viewProvider = v5->_viewProvider;
    v5->_viewProvider = v6;

    objc_storeStrong(&v5->_menuElementRepresentation, *(elementCopy + 15));
    v8 = _Block_copy(*(elementCopy + 16));
    primaryActionHandler = v5->_primaryActionHandler;
    v5->_primaryActionHandler = v8;

    v5->_forceCustomViewSupport = *(elementCopy + 72);
  }

  return v5;
}

- (UIView)contentView
{
  viewProvider = [(UICustomViewMenuElement *)self viewProvider];

  if (viewProvider)
  {
    viewProvider2 = [(UICustomViewMenuElement *)self viewProvider];
    v5 = (viewProvider2)[2](viewProvider2, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_acceptMenuVisit:(id)visit commandVisit:(id)commandVisit actionVisit:(id)actionVisit deferredElementVisit:(id)elementVisit
{
  visitCopy = visit;
  commandVisitCopy = commandVisit;
  actionVisitCopy = actionVisit;
  elementVisitCopy = elementVisit;
  menuElementRepresentation = [(UICustomViewMenuElement *)self menuElementRepresentation];

  if (menuElementRepresentation)
  {
    menuElementRepresentation2 = [(UICustomViewMenuElement *)self menuElementRepresentation];
    [menuElementRepresentation2 _acceptMenuVisit:visitCopy commandVisit:commandVisitCopy actionVisit:actionVisitCopy deferredElementVisit:elementVisitCopy];
  }
}

- (void)_acceptMenuVisit:(id)visit leafVisit:(id)leafVisit
{
  if (leafVisit)
  {
    (*(leafVisit + 2))(leafVisit, self);
  }
}

- (BOOL)_acceptBoolMenuVisit:(id)visit leafVisit:(id)leafVisit
{
  if (leafVisit)
  {
    return (*(leafVisit + 2))(leafVisit, self);
  }

  else
  {
    return 0;
  }
}

- (BOOL)_acceptBoolMenuVisit:(id)visit commandVisit:(id)commandVisit actionVisit:(id)actionVisit
{
  visitCopy = visit;
  commandVisitCopy = commandVisit;
  actionVisitCopy = actionVisit;
  menuElementRepresentation = [(UICustomViewMenuElement *)self menuElementRepresentation];

  if (menuElementRepresentation)
  {
    menuElementRepresentation2 = [(UICustomViewMenuElement *)self menuElementRepresentation];
    v13 = [menuElementRepresentation2 _acceptBoolMenuVisit:visitCopy commandVisit:commandVisitCopy actionVisit:actionVisitCopy];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (void)performWithSender:(id)sender target:(id)target
{
  v5 = [(UICustomViewMenuElement *)self primaryActionHandler:sender];

  if (v5)
  {
    primaryActionHandler = [(UICustomViewMenuElement *)self primaryActionHandler];
    primaryActionHandler[2](primaryActionHandler, self);
  }
}

@end