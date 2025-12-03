@interface _UIAlertControllerInterfaceActionGroupView
- (BOOL)_shouldShowSeparatorAboveActionsSequenceView;
- (UIAlertController)alertController;
- (_UIAlertControllerInterfaceActionGroupView)initWithAlertController:(id)controller actionGroup:(id)group actionHandlerInvocationDelegate:(id)delegate;
- (id)_alertController;
- (id)defaultVisualStyleForTraitCollection:(id)collection presentationStyle:(int64_t)style;
@end

@implementation _UIAlertControllerInterfaceActionGroupView

- (_UIAlertControllerInterfaceActionGroupView)initWithAlertController:(id)controller actionGroup:(id)group actionHandlerInvocationDelegate:(id)delegate
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = _UIAlertControllerInterfaceActionGroupView;
  v9 = [(UIInterfaceActionGroupView *)&v12 initWithActionGroup:group actionHandlerInvocationDelegate:delegate];
  v10 = v9;
  if (v9)
  {
    [(_UIAlertControllerInterfaceActionGroupView *)v9 setAlertController:controllerCopy];
  }

  return v10;
}

- (id)_alertController
{
  WeakRetained = objc_loadWeakRetained(&self->_alertController);

  return WeakRetained;
}

- (id)defaultVisualStyleForTraitCollection:(id)collection presentationStyle:(int64_t)style
{
  collectionCopy = collection;
  _alertController = [(_UIAlertControllerInterfaceActionGroupView *)self _alertController];
  _visualStyle = [_alertController _visualStyle];

  if (_visualStyle)
  {
    interfaceActionVisualStyle = [_visualStyle interfaceActionVisualStyle];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _UIAlertControllerInterfaceActionGroupView;
    interfaceActionVisualStyle = [(UIInterfaceActionGroupView *)&v12 defaultVisualStyleForTraitCollection:collectionCopy presentationStyle:style];
  }

  v10 = interfaceActionVisualStyle;

  return v10;
}

- (BOOL)_shouldShowSeparatorAboveActionsSequenceView
{
  v5.receiver = self;
  v5.super_class = _UIAlertControllerInterfaceActionGroupView;
  _shouldShowSeparatorAboveActionsSequenceView = [(UIInterfaceActionGroupView *)&v5 _shouldShowSeparatorAboveActionsSequenceView];
  if (_shouldShowSeparatorAboveActionsSequenceView)
  {
    LOBYTE(_shouldShowSeparatorAboveActionsSequenceView) = [(_UIAlertControllerInterfaceActionGroupView *)self scrollableHeaderViewHasRealContent];
  }

  return _shouldShowSeparatorAboveActionsSequenceView;
}

- (UIAlertController)alertController
{
  WeakRetained = objc_loadWeakRetained(&self->_alertController);

  return WeakRetained;
}

@end