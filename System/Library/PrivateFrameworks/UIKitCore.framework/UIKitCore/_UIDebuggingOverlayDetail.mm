@interface _UIDebuggingOverlayDetail
+ (id)detailWithTitle:(id)title detail:(id)detail;
@end

@implementation _UIDebuggingOverlayDetail

+ (id)detailWithTitle:(id)title detail:(id)detail
{
  titleCopy = title;
  detailCopy = detail;
  v9 = objc_alloc_init(objc_opt_class());
  v10 = v9;
  if (self)
  {
    objc_storeStrong(v9 + 1, title);
    objc_storeStrong(v10 + 2, detail);
  }

  return v10;
}

@end