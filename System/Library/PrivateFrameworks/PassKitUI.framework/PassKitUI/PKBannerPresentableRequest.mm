@interface PKBannerPresentableRequest
+ (id)createWithPresentable:(id)presentable context:(id)context;
@end

@implementation PKBannerPresentableRequest

+ (id)createWithPresentable:(id)presentable context:(id)context
{
  contextCopy = context;
  presentableCopy = presentable;
  v8 = [PKBannerPresentableRequest alloc];
  v9 = presentableCopy;
  result = contextCopy;
  v11 = result;
  if (v8)
  {
    if (!v9)
    {
      __break(1u);
      return result;
    }

    v13.receiver = v8;
    v13.super_class = PKBannerPresentableRequest;
    v12 = objc_msgSendSuper2(&v13, sel_init);
    v8 = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 1, presentable);
      objc_storeStrong(&v8->_context, context);
    }
  }

  return v8;
}

@end