@interface VKCElementInfo
+ (id)infoWithText:(id)text parent:(id)parent;
@end

@implementation VKCElementInfo

+ (id)infoWithText:(id)text parent:(id)parent
{
  parentCopy = parent;
  textCopy = text;
  v7 = objc_alloc_init(VKCElementInfo);
  [(VKCElementInfo *)v7 setText:textCopy];

  [(VKCBaseElement *)v7 setParent:parentCopy];

  return v7;
}

@end