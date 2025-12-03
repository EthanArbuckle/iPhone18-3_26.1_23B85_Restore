@interface _TIPreferenceDomain
+ (id)domainWithName:(id)name notification:(id)notification;
@end

@implementation _TIPreferenceDomain

+ (id)domainWithName:(id)name notification:(id)notification
{
  notificationCopy = notification;
  nameCopy = name;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setDomain:nameCopy];

  [v7 setNotification:notificationCopy];

  return v7;
}

@end