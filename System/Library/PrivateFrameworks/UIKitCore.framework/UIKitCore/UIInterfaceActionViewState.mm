@interface UIInterfaceActionViewState
+ (id)_nullViewStateForActionType:(int64_t)a3;
+ (id)viewStateForActionRepresentationView:(id)a3 action:(id)a4;
+ (id)viewStateForActionRepresentationViewDescendantView:(id)a3 action:(id)a4;
+ (id)viewStateForAlertControllerActionView:(id)a3;
+ (id)viewStateRepresentingDefaultAction;
+ (id)viewStateRepresentingPreferredAction;
- (BOOL)_stateEqualToActionViewState:(id)a3;
- (BOOL)isEqual:(id)a3;
- (UIInterfaceActionViewState)initWithPropertiesFromActionRepresentationView:(id)a3 groupView:(id)a4 action:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_collectStateForDefaultState;
- (void)_collectStateFromAction:(id)a3;
- (void)_collectStateFromActionRepresentationView:(id)a3;
- (void)_collectStateFromActionViewState:(id)a3;
@end

@implementation UIInterfaceActionViewState

+ (id)_nullViewStateForActionType:(int64_t)a3
{
  v4 = [UIInterfaceAction actionWithTitle:&stru_1EFB14550 type:a3 handler:0];
  v5 = [[a1 alloc] initWithPropertiesFromActionRepresentationView:0 groupView:0 action:v4];

  return v5;
}

+ (id)viewStateForActionRepresentationView:(id)a3 action:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 _enclosingInterfaceActionGroupView];
  v9 = [[a1 alloc] initWithPropertiesFromActionRepresentationView:v7 groupView:v8 action:v6];

  return v9;
}

+ (id)viewStateForActionRepresentationViewDescendantView:(id)a3 action:(id)a4
{
  v6 = a4;
  v7 = [a3 _enclosingInterfaceActionRepresentationView];
  v8 = [a1 viewStateForActionRepresentationView:v7 action:v6];

  return v8;
}

+ (id)viewStateForAlertControllerActionView:(id)a3
{
  v4 = a3;
  v5 = [v4 _enclosingInterfaceActionRepresentationView];
  v6 = [v4 action];
  v7 = [v6 _interfaceActionRepresentation];
  v8 = [a1 viewStateForActionRepresentationView:v5 action:v7];

  if (!v5)
  {
    v9 = [v4 tintColor];
    [v8 setTintColor:v9];
  }

  return v8;
}

+ (id)viewStateRepresentingDefaultAction
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (id)viewStateRepresentingPreferredAction
{
  result = [a1 viewStateRepresentingDefaultAction];
  *(result + 35) = 1;
  return result;
}

- (UIInterfaceActionViewState)initWithPropertiesFromActionRepresentationView:(id)a3 groupView:(id)a4 action:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = UIInterfaceActionViewState;
  v10 = [(UIInterfaceActionVisualStyleViewState *)&v13 initWithPropertiesFromTopLevelView:a4];
  v11 = v10;
  if (v10)
  {
    [(UIInterfaceActionViewState *)v10 _collectStateForDefaultState];
    [(UIInterfaceActionViewState *)v11 _collectStateFromActionRepresentationView:v8];
    [(UIInterfaceActionViewState *)v11 _collectStateFromAction:v9];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = UIInterfaceActionViewState;
  v4 = [(UIInterfaceActionVisualStyleViewState *)&v6 copyWithZone:a3];
  [v4 _collectStateFromActionViewState:self];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(UIInterfaceActionViewState *)self _stateEqualToActionViewState:v4];

  return v5;
}

- (void)_collectStateForDefaultState
{
  v3 = [UIInterfaceAction actionWithTitle:&stru_1EFB14550 type:0 handler:0];
  action = self->_action;
  self->_action = v3;

  self->_isHighlighted = 0;
  self->_isPressed = 0;
  self->_isFocused = 0;
  self->_isPreferred = 0;
  actionViewStateContext = self->_actionViewStateContext;
  self->_actionViewStateContext = 0;
}

- (void)_collectStateFromActionRepresentationView:(id)a3
{
  v4 = a3;
  self->_isHighlighted = [v4 isHighlighted];
  self->_isPressed = [v4 isPressed];
  self->_isFocused = [v4 isFocused];
  v5 = [v4 actionViewStateContext];
  actionViewStateContext = self->_actionViewStateContext;
  self->_actionViewStateContext = v5;

  v7 = [v4 visualCornerPosition];
  self->_visualCornerPosition = v7;
}

- (void)_collectStateFromAction:(id)a3
{
  objc_storeStrong(&self->_action, a3);
  v5 = a3;
  v6 = [(UIInterfaceAction *)self->_action _isPreferred];

  self->_isPreferred = v6;
}

- (void)_collectStateFromActionViewState:(id)a3
{
  v4 = a3;
  v5 = [v4 action];
  action = self->_action;
  self->_action = v5;

  self->_isHighlighted = [v4 isHighlighted];
  self->_isPressed = [v4 isPressed];
  self->_isFocused = [v4 isFocused];
  self->_isPreferred = [v4 isPreferred];
  v7 = [v4 actionViewStateContext];
  actionViewStateContext = self->_actionViewStateContext;
  self->_actionViewStateContext = v7;

  v9 = [v4 visualCornerPosition];
  self->_visualCornerPosition = v9;
}

- (BOOL)_stateEqualToActionViewState:(id)a3
{
  v4 = a3;
  action = self->_action;
  v6 = [v4 action];
  if ([(UIInterfaceAction *)action isEqual:v6])
  {
    isHighlighted = self->_isHighlighted;
    if (isHighlighted == [v4 isHighlighted])
    {
      isPressed = self->_isPressed;
      if (isPressed == [v4 isPressed])
      {
        isFocused = self->_isFocused;
        if (isFocused == [v4 isFocused])
        {
          isPreferred = self->_isPreferred;
          if (isPreferred == [v4 isPreferred])
          {
            v11 = 48;
            actionViewStateContext = self->_actionViewStateContext;
            v13 = [v4 actionViewStateContext];
            if (actionViewStateContext == v13 || (v14 = self->_actionViewStateContext, [v4 actionViewStateContext], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "isEqual:", v11)))
            {
              visualCornerPosition = self->_visualCornerPosition;
              v15 = visualCornerPosition == [v4 visualCornerPosition];
              if (actionViewStateContext == v13)
              {
LABEL_13:

                goto LABEL_10;
              }
            }

            else
            {
              v15 = 0;
            }

            goto LABEL_13;
          }
        }
      }
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

@end