@interface PLChangeNotification
+ (id)notificationWithName:(id)a3 object:(id)a4 userInfo:(id)a5;
@end

@implementation PLChangeNotification

+ (id)notificationWithName:(id)a3 object:(id)a4 userInfo:(id)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:a1 file:@"PLChangeNotification.m" lineNumber:24 description:{@"Cannot create a PLChangeNotification via %s", "+[PLChangeNotification notificationWithName:object:userInfo:]"}];

  v8 = objc_alloc_init(a1);

  return v8;
}

@end