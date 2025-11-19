@interface STUpdateMonitor
+ (id)sharedMonitor;
@end

@implementation STUpdateMonitor

+ (id)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    +[STUpdateMonitor sharedMonitor];
  }

  return 0;
}

@end