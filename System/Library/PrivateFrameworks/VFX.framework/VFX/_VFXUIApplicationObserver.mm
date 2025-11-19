@interface _VFXUIApplicationObserver
+ (id)sharedInstance;
@end

@implementation _VFXUIApplicationObserver

+ (id)sharedInstance
{
  if (qword_1EB658838 != -1)
  {
    sub_1AFDF3B0C();
  }

  return qword_1EB658830;
}

@end