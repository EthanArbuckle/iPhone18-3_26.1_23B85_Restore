@interface NSBundle
+ (id)tsu_resourcesBundle;
@end

@implementation NSBundle

+ (id)tsu_resourcesBundle
{
  if (qword_1001EB048 != -1)
  {
    sub_100160004();
  }

  v3 = qword_1001EB040;

  return v3;
}

@end