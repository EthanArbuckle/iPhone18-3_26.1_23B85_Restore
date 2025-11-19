@interface _UIAlertControllerInterfaceActionGroupView
- (BOOL)_shouldShowSeparatorAboveActionsSequenceView;
- (UIAlertController)alertController;
- (_UIAlertControllerInterfaceActionGroupView)initWithAlertController:(id)a3 actionGroup:(id)a4 actionHandlerInvocationDelegate:(id)a5;
- (id)_alertController;
- (id)defaultVisualStyleForTraitCollection:(id)a3 presentationStyle:(int64_t)a4;
@end

@implementation _UIAlertControllerInterfaceActionGroupView

- (_UIAlertControllerInterfaceActionGroupView)initWithAlertController:(id)a3 actionGroup:(id)a4 actionHandlerInvocationDelegate:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = _UIAlertControllerInterfaceActionGroupView;
  v9 = [(UIInterfaceActionGroupView *)&v12 initWithActionGroup:a4 actionHandlerInvocationDelegate:a5];
  v10 = v9;
  if (v9)
  {
    [(_UIAlertControllerInterfaceActionGroupView *)v9 setAlertController:v8];
  }

  return v10;
}

- (id)_alertController
{
  WeakRetained = objc_loadWeakRetained(&self->_alertController);

  return WeakRetained;
}

- (id)defaultVisualStyleForTraitCollection:(id)a3 presentationStyle:(int64_t)a4
{
  v6 = a3;
  v7 = [(_UIAlertControllerInterfaceActionGroupView *)self _alertController];
  v8 = [v7 _visualStyle];

  if (v8)
  {
    v9 = [v8 interfaceActionVisualStyle];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _UIAlertControllerInterfaceActionGroupView;
    v9 = [(UIInterfaceActionGroupView *)&v12 defaultVisualStyleForTraitCollection:v6 presentationStyle:a4];
  }

  v10 = v9;

  return v10;
}

- (BOOL)_shouldShowSeparatorAboveActionsSequenceView
{
  v5.receiver = self;
  v5.super_class = _UIAlertControllerInterfaceActionGroupView;
  v3 = [(UIInterfaceActionGroupView *)&v5 _shouldShowSeparatorAboveActionsSequenceView];
  if (v3)
  {
    LOBYTE(v3) = [(_UIAlertControllerInterfaceActionGroupView *)self scrollableHeaderViewHasRealContent];
  }

  return v3;
}

- (UIAlertController)alertController
{
  WeakRetained = objc_loadWeakRetained(&self->_alertController);

  return WeakRetained;
}

@end