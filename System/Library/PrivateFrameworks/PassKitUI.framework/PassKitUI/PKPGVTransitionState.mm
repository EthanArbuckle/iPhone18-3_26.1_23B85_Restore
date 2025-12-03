@interface PKPGVTransitionState
+ (PKPGVTransitionState)_createWithSourceLayoutState:(void *)state inReferenceView:;
+ (PKPGVTransitionState)createWithSourceLayoutState:(void *)state inReferenceView:;
- (PKPGVTransitionState)_stateWithDestinationLayoutState:(PKPGVTransitionState *)state;
@end

@implementation PKPGVTransitionState

+ (PKPGVTransitionState)_createWithSourceLayoutState:(void *)state inReferenceView:
{
  stateCopy = state;
  v6 = a2;
  objc_opt_self();
  v7 = [PKPGVTransitionState alloc];
  v8 = v6;
  result = stateCopy;
  v10 = result;
  if (!v7)
  {
    goto LABEL_6;
  }

  if (v8 && result)
  {
    v12.receiver = v7;
    v12.super_class = PKPGVTransitionState;
    v11 = objc_msgSendSuper2(&v12, sel_init);
    v7 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_referenceView, state);
      objc_storeStrong(&v7->_sourceLayoutState, a2);
      objc_storeStrong(&v7->_destinationLayoutState, a2);
    }

LABEL_6:

    return v7;
  }

  __break(1u);
  return result;
}

+ (PKPGVTransitionState)createWithSourceLayoutState:(void *)state inReferenceView:
{
  stateCopy = state;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = [(PKPGVTransitionState *)v6 _createWithSourceLayoutState:v5 inReferenceView:stateCopy];

  return v7;
}

- (PKPGVTransitionState)_stateWithDestinationLayoutState:(PKPGVTransitionState *)state
{
  result = a2;
  v5 = result;
  if (!state)
  {
    goto LABEL_4;
  }

  if (result)
  {
    state = [PKPGVTransitionState _createWithSourceLayoutState:state->_referenceView inReferenceView:?];
    objc_storeStrong(&state->_destinationLayoutState, a2);
LABEL_4:

    return state;
  }

  __break(1u);
  return result;
}

@end