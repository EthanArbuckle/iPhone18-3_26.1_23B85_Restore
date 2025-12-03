@interface PLChangeNotification
+ (id)notificationWithName:(id)name object:(id)object userInfo:(id)info;
@end

@implementation PLChangeNotification

+ (id)notificationWithName:(id)name object:(id)object userInfo:(id)info
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLChangeNotification.m" lineNumber:24 description:{@"Cannot create a PLChangeNotification via %s", "+[PLChangeNotification notificationWithName:object:userInfo:]"}];

  v8 = objc_alloc_init(self);

  return v8;
}

@end