@interface CNVCardLineFactory
+ (id)version21LineFactory;
+ (id)version30LineFactory;
@end

@implementation CNVCardLineFactory

+ (id)version30LineFactory
{
  v2 = objc_alloc_init(CNVCardLineFactory);

  return v2;
}

+ (id)version21LineFactory
{
  v2 = objc_alloc_init(CNVCardLineFactory);

  return v2;
}

@end