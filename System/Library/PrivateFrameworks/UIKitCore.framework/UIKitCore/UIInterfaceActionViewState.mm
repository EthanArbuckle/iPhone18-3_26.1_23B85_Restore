@interface UIInterfaceActionViewState
+ (id)_nullViewStateForActionType:(int64_t)type;
+ (id)viewStateForActionRepresentationView:(id)view action:(id)action;
+ (id)viewStateForActionRepresentationViewDescendantView:(id)view action:(id)action;
+ (id)viewStateForAlertControllerActionView:(id)view;
+ (id)viewStateRepresentingDefaultAction;
+ (id)viewStateRepresentingPreferredAction;
- (BOOL)_stateEqualToActionViewState:(id)state;
- (BOOL)isEqual:(id)equal;
- (UIInterfaceActionViewState)initWithPropertiesFromActionRepresentationView:(id)view groupView:(id)groupView action:(id)action;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_collectStateForDefaultState;
- (void)_collectStateFromAction:(id)action;
- (void)_collectStateFromActionRepresentationView:(id)view;
- (void)_collectStateFromActionViewState:(id)state;
@end

@implementation UIInterfaceActionViewState

+ (id)_nullViewStateForActionType:(int64_t)type
{
  v4 = [UIInterfaceAction actionWithTitle:&stru_1EFB14550 type:type handler:0];
  v5 = [[self alloc] initWithPropertiesFromActionRepresentationView:0 groupView:0 action:v4];

  return v5;
}

+ (id)viewStateForActionRepresentationView:(id)view action:(id)action
{
  actionCopy = action;
  viewCopy = view;
  _enclosingInterfaceActionGroupView = [viewCopy _enclosingInterfaceActionGroupView];
  v9 = [[self alloc] initWithPropertiesFromActionRepresentationView:viewCopy groupView:_enclosingInterfaceActionGroupView action:actionCopy];

  return v9;
}

+ (id)viewStateForActionRepresentationViewDescendantView:(id)view action:(id)action
{
  actionCopy = action;
  _enclosingInterfaceActionRepresentationView = [view _enclosingInterfaceActionRepresentationView];
  v8 = [self viewStateForActionRepresentationView:_enclosingInterfaceActionRepresentationView action:actionCopy];

  return v8;
}

+ (id)viewStateForAlertControllerActionView:(id)view
{
  viewCopy = view;
  _enclosingInterfaceActionRepresentationView = [viewCopy _enclosingInterfaceActionRepresentationView];
  action = [viewCopy action];
  _interfaceActionRepresentation = [action _interfaceActionRepresentation];
  v8 = [self viewStateForActionRepresentationView:_enclosingInterfaceActionRepresentationView action:_interfaceActionRepresentation];

  if (!_enclosingInterfaceActionRepresentationView)
  {
    tintColor = [viewCopy tintColor];
    [v8 setTintColor:tintColor];
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
  result = [self viewStateRepresentingDefaultAction];
  *(result + 35) = 1;
  return result;
}

- (UIInterfaceActionViewState)initWithPropertiesFromActionRepresentationView:(id)view groupView:(id)groupView action:(id)action
{
  viewCopy = view;
  actionCopy = action;
  v13.receiver = self;
  v13.super_class = UIInterfaceActionViewState;
  v10 = [(UIInterfaceActionVisualStyleViewState *)&v13 initWithPropertiesFromTopLevelView:groupView];
  v11 = v10;
  if (v10)
  {
    [(UIInterfaceActionViewState *)v10 _collectStateForDefaultState];
    [(UIInterfaceActionViewState *)v11 _collectStateFromActionRepresentationView:viewCopy];
    [(UIInterfaceActionViewState *)v11 _collectStateFromAction:actionCopy];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = UIInterfaceActionViewState;
  v4 = [(UIInterfaceActionVisualStyleViewState *)&v6 copyWithZone:zone];
  [v4 _collectStateFromActionViewState:self];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(UIInterfaceActionViewState *)self _stateEqualToActionViewState:equalCopy];

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

- (void)_collectStateFromActionRepresentationView:(id)view
{
  viewCopy = view;
  self->_isHighlighted = [viewCopy isHighlighted];
  self->_isPressed = [viewCopy isPressed];
  self->_isFocused = [viewCopy isFocused];
  actionViewStateContext = [viewCopy actionViewStateContext];
  actionViewStateContext = self->_actionViewStateContext;
  self->_actionViewStateContext = actionViewStateContext;

  visualCornerPosition = [viewCopy visualCornerPosition];
  self->_visualCornerPosition = visualCornerPosition;
}

- (void)_collectStateFromAction:(id)action
{
  objc_storeStrong(&self->_action, action);
  actionCopy = action;
  _isPreferred = [(UIInterfaceAction *)self->_action _isPreferred];

  self->_isPreferred = _isPreferred;
}

- (void)_collectStateFromActionViewState:(id)state
{
  stateCopy = state;
  action = [stateCopy action];
  action = self->_action;
  self->_action = action;

  self->_isHighlighted = [stateCopy isHighlighted];
  self->_isPressed = [stateCopy isPressed];
  self->_isFocused = [stateCopy isFocused];
  self->_isPreferred = [stateCopy isPreferred];
  actionViewStateContext = [stateCopy actionViewStateContext];
  actionViewStateContext = self->_actionViewStateContext;
  self->_actionViewStateContext = actionViewStateContext;

  visualCornerPosition = [stateCopy visualCornerPosition];
  self->_visualCornerPosition = visualCornerPosition;
}

- (BOOL)_stateEqualToActionViewState:(id)state
{
  stateCopy = state;
  action = self->_action;
  action = [stateCopy action];
  if ([(UIInterfaceAction *)action isEqual:action])
  {
    isHighlighted = self->_isHighlighted;
    if (isHighlighted == [stateCopy isHighlighted])
    {
      isPressed = self->_isPressed;
      if (isPressed == [stateCopy isPressed])
      {
        isFocused = self->_isFocused;
        if (isFocused == [stateCopy isFocused])
        {
          isPreferred = self->_isPreferred;
          if (isPreferred == [stateCopy isPreferred])
          {
            v11 = 48;
            actionViewStateContext = self->_actionViewStateContext;
            actionViewStateContext = [stateCopy actionViewStateContext];
            if (actionViewStateContext == actionViewStateContext || (v14 = self->_actionViewStateContext, [stateCopy actionViewStateContext], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "isEqual:", v11)))
            {
              visualCornerPosition = self->_visualCornerPosition;
              v15 = visualCornerPosition == [stateCopy visualCornerPosition];
              if (actionViewStateContext == actionViewStateContext)
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