@interface NSBundle
+ (id)PUID_mainBundle;
@end

@implementation NSBundle

+ (id)PUID_mainBundle
{
  if (qword_100059D10 != -1)
  {
    sub_1000287F0();
  }

  v4 = qword_100059D08;
  if (!qword_100059D08)
  {
    sub_100028804(a2, a1, &v6);
    v4 = v6;
  }

  return v4;
}

@end