@interface PKPGVTransitionCoordinatorRequest
- (id)initToConnectLayout:(void *)a3 sender:(void *)a4 receiver:(void *)a5 forViewController:(void *)a6 parentViewController:(void *)a7 withNavigationItem:(void *)a8 passGroupView:(void *)a9 completion:;
- (void)setTransitionContext:(uint64_t)a1;
@end

@implementation PKPGVTransitionCoordinatorRequest

- (id)initToConnectLayout:(void *)a3 sender:(void *)a4 receiver:(void *)a5 forViewController:(void *)a6 parentViewController:(void *)a7 withNavigationItem:(void *)a8 passGroupView:(void *)a9 completion:
{
  v17 = a2;
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  obj = a7;
  v18 = a7;
  v28 = a8;
  v19 = a8;
  result = a9;
  v21 = result;
  if (!a1)
  {
    goto LABEL_11;
  }

  if (v17 && v32 && v31 && v30 && v29 && v18 && v19)
  {
    v33.receiver = a1;
    v33.super_class = PKPGVTransitionCoordinatorRequest;
    v22 = objc_msgSendSuper2(&v33, sel_init);
    a1 = v22;
    if (v22)
    {
      objc_storeStrong(v22 + 2, a5);
      objc_storeStrong(a1 + 1, a6);
      objc_storeStrong(a1 + 3, a2);
      objc_storeStrong(a1 + 4, a3);
      objc_storeStrong(a1 + 5, a4);
      objc_storeStrong(a1 + 6, obj);
      objc_storeStrong(a1 + 7, v28);
      v23 = [PKPGVTransitionContext _createForAnimatedTransition:0 withPassContext:0 beginTerminal:?];
      v24 = a1[8];
      a1[8] = v23;

      v25 = _Block_copy(v21);
      v26 = a1[9];
      a1[9] = v25;
    }

LABEL_11:

    return a1;
  }

  __break(1u);
  return result;
}

- (void)setTransitionContext:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    if (!v4)
    {
      __break(1u);
      return;
    }

    objc_storeStrong((a1 + 64), a2);
    v4 = v5;
  }
}

@end