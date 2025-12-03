@interface PKPGSVPresentationContext
+ (PKPGSVPresentationContext)createForAnimated:(void *)animated passContext:;
+ (void)createForTransitionContext:(void *)context externalVCContext:(void *)cContext priorExternalVCContext:;
+ (void)createForTransitionContext:(void *)context priorExternalVCContext:;
@end

@implementation PKPGSVPresentationContext

+ (PKPGSVPresentationContext)createForAnimated:(void *)animated passContext:
{
  animatedCopy = animated;
  objc_opt_self();
  v6 = [PKPGSVPresentationContext alloc];
  v7 = animatedCopy;
  if (v6)
  {
    v10.receiver = v6;
    v10.super_class = PKPGSVPresentationContext;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    v6 = v8;
    if (v8)
    {
      v8->_animated = a2;
      objc_storeStrong(&v8->_passContext, animated);
    }
  }

  return v6;
}

+ (void)createForTransitionContext:(void *)context externalVCContext:(void *)cContext priorExternalVCContext:
{
  v6 = a2;
  contextCopy = context;
  cContextCopy = cContext;
  result = objc_opt_self();
  if (v6 && contextCopy)
  {
    v10 = *(v6 + 8);
    v11 = *(v6 + 4);
    v12 = [PKPGSVPresentationContext createForAnimated:v10 passContext:v11];

    v13 = v12[3];
    v12[3] = v6;
    v14 = v6;

    v15 = v12[4];
    v12[4] = contextCopy;
    v16 = contextCopy;

    v17 = v12[5];
    v12[5] = cContextCopy;

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (void)createForTransitionContext:(void *)context priorExternalVCContext:
{
  v4 = a2;
  contextCopy = context;
  result = objc_opt_self();
  if (v4 && contextCopy)
  {
    v7 = *(v4 + 8);
    v8 = *(v4 + 4);
    v9 = [PKPGSVPresentationContext createForAnimated:v7 passContext:v8];

    v10 = v9[3];
    v9[3] = v4;
    v11 = v4;

    v12 = v9[5];
    v9[5] = contextCopy;

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end