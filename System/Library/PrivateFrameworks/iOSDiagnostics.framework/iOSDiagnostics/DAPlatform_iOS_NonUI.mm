@interface DAPlatform_iOS_NonUI
+ (id)sharedInstance;
@end

@implementation DAPlatform_iOS_NonUI

+ (id)sharedInstance
{
  if (qword_1000263D8 != -1)
  {
    sub_10000E218();
  }

  v3 = qword_1000263D0;

  return v3;
}

@end