@interface WRReplyStoreInfo
+ (id)infoForCategory:(unint64_t)a3;
@end

@implementation WRReplyStoreInfo

+ (id)infoForCategory:(unint64_t)a3
{
  v3 = a3 - 1;
  if (a3 - 1 <= 7 && ((0x8Fu >> v3) & 1) != 0)
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