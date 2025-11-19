@interface PKPGVTransitionState
+ (PKPGVTransitionState)_createWithSourceLayoutState:(void *)a3 inReferenceView:;
+ (PKPGVTransitionState)createWithSourceLayoutState:(void *)a3 inReferenceView:;
- (PKPGVTransitionState)_stateWithDestinationLayoutState:(PKPGVTransitionState *)a1;
@end

@implementation PKPGVTransitionState

+ (PKPGVTransitionState)_createWithSourceLayoutState:(void *)a3 inReferenceView:
{
  v5 = a3;
  v6 = a2;
  objc_opt_self();
  v7 = [PKPGVTransitionState alloc];
  v8 = v6;
  result = v5;
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
      objc_storeStrong(&v11->_referenceView, a3);
      objc_storeStrong(&v7->_sourceLayoutState, a2);
      objc_storeStrong(&v7->_destinationLayoutState, a2);
    }

LABEL_6:

    return v7;
  }

  __break(1u);
  return result;
}

+ (PKPGVTransitionState)createWithSourceLayoutState:(void *)a3 inReferenceView:
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = [(PKPGVTransitionState *)v6 _createWithSourceLayoutState:v5 inReferenceView:v4];

  return v7;
}

- (PKPGVTransitionState)_stateWithDestinationLayoutState:(PKPGVTransitionState *)a1
{
  result = a2;
  v5 = result;
  if (!a1)
  {
    goto LABEL_4;
  }

  if (result)
  {
    a1 = [PKPGVTransitionState _createWithSourceLayoutState:a1->_referenceView inReferenceView:?];
    objc_storeStrong(&a1->_destinationLayoutState, a2);
LABEL_4:

    return a1;
  }

  __break(1u);
  return result;
}

@end