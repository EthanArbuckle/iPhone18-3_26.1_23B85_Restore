@interface RMLog(profilesAdapter)
+ (id)profilesAdapter;
@end

@implementation RMLog(profilesAdapter)

+ (id)profilesAdapter
{
  if (profilesAdapter_onceToken != -1)
  {
    +[RMLog(profilesAdapter) profilesAdapter];
  }

  v1 = profilesAdapter_result;

  return v1;
}

@end