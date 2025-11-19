@interface screentimediagnose
+ (screentimediagnose)shared;
- (screentimediagnose)init;
@end

@implementation screentimediagnose

- (screentimediagnose)init
{
  v3.receiver = self;
  v3.super_class = screentimediagnose;
  return [(screentimediagnose *)&v3 init];
}

+ (screentimediagnose)shared
{
  if (qword_1000157C8 != -1)
  {
    sub_100007C20();
  }

  v3 = qword_1000157D0;

  return v3;
}

@end