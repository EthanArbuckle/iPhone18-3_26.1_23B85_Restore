@interface DADeviceConnectionConfigurator
+ (id)sharedInstance;
- (int)mode;
@end

@implementation DADeviceConnectionConfigurator

+ (id)sharedInstance
{
  if (qword_100026398 != -1)
  {
    sub_10000DB48();
  }

  v3 = qword_100026390;

  return v3;
}

- (int)mode
{
  if ([(DADeviceConnectionConfigurator *)self isSessionModeOveridden])
  {

    return [(DADeviceConnectionConfigurator *)self overrideSessionMode];
  }

  else if (+[CBSUtilities isSSRBootIntentSet])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

@end