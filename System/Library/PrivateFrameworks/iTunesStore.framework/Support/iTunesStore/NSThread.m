@interface NSThread
+ (id)beginManagedContextSession;
+ (id)beginPrivateManagedContextSession;
+ (void)endManagedContextSession;
+ (void)endPrivateManagedContextSession;
@end

@implementation NSThread

+ (id)beginManagedContextSession
{
  v2 = sub_1000CDEFC(0);

  return [v2 beginThreadContextSession];
}

+ (id)beginPrivateManagedContextSession
{
  v2 = sub_1000CDEFC(1);

  return [v2 beginThreadContextSession];
}

+ (void)endManagedContextSession
{
  v2 = sub_1000CDEFC(0);

  [v2 endThreadContextSession];
}

+ (void)endPrivateManagedContextSession
{
  v2 = sub_1000CDEFC(1);

  [v2 endThreadContextSession];
}

@end