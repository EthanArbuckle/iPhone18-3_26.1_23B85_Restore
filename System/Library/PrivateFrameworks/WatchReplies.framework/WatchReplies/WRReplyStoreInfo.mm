@interface WRReplyStoreInfo
+ (id)infoForCategory:(unint64_t)category;
@end

@implementation WRReplyStoreInfo

+ (id)infoForCategory:(unint64_t)category
{
  v3 = category - 1;
  if (category - 1 <= 7 && ((0x8Fu >> v3) & 1) != 0)
  {
    v4 = *off_279E66AF0[v3];
    v5 = objc_opt_class();
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc_init(v5);

  return v6;
}

@end