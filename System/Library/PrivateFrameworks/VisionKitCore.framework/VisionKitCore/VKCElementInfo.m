@interface VKCElementInfo
+ (id)infoWithText:(id)a3 parent:(id)a4;
@end

@implementation VKCElementInfo

+ (id)infoWithText:(id)a3 parent:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(VKCElementInfo);
  [(VKCElementInfo *)v7 setText:v6];

  [(VKCBaseElement *)v7 setParent:v5];

  return v7;
}

@end