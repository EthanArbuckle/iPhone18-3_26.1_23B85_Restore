@interface PKBannerPresentableRequest
+ (id)createWithPresentable:(id)a3 context:(id)a4;
@end

@implementation PKBannerPresentableRequest

+ (id)createWithPresentable:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [PKBannerPresentableRequest alloc];
  v9 = v7;
  result = v6;
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
      objc_storeStrong(v12 + 1, a3);
      objc_storeStrong(&v8->_context, a4);
    }
  }

  return v8;
}

@end