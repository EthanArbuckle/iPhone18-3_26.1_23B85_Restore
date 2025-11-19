@interface _UIDebuggingOverlayDetail
+ (id)detailWithTitle:(id)a3 detail:(id)a4;
@end

@implementation _UIDebuggingOverlayDetail

+ (id)detailWithTitle:(id)a3 detail:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(objc_opt_class());
  v10 = v9;
  if (a1)
  {
    objc_storeStrong(v9 + 1, a3);
    objc_storeStrong(v10 + 2, a4);
  }

  return v10;
}

@end