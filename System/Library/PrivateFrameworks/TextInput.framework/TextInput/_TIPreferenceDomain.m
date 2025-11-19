@interface _TIPreferenceDomain
+ (id)domainWithName:(id)a3 notification:(id)a4;
@end

@implementation _TIPreferenceDomain

+ (id)domainWithName:(id)a3 notification:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setDomain:v6];

  [v7 setNotification:v5];

  return v7;
}

@end