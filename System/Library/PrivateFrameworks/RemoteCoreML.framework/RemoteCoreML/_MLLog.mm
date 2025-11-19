@interface _MLLog
+ (id)clientFramework;
+ (id)common;
+ (id)daemon;
+ (id)serverFramework;
+ (id)tool;
@end

@implementation _MLLog

+ (id)common
{
  if (common_onceToken != -1)
  {
    +[_MLLog common];
  }

  v3 = common__common;

  return v3;
}

+ (id)clientFramework
{
  if (clientFramework_onceToken != -1)
  {
    +[_MLLog clientFramework];
  }

  v3 = clientFramework__framework;

  return v3;
}

+ (id)daemon
{
  if (daemon_onceToken != -1)
  {
    +[_MLLog daemon];
  }

  v3 = daemon__daemon;

  return v3;
}

+ (id)serverFramework
{
  if (serverFramework_onceToken != -1)
  {
    +[_MLLog serverFramework];
  }

  v3 = serverFramework__framework;

  return v3;
}

+ (id)tool
{
  if (tool_onceToken != -1)
  {
    +[_MLLog tool];
  }

  v3 = tool__tool;

  return v3;
}

@end