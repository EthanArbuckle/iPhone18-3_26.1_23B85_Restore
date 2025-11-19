@interface NSNotificationCenter(SBLeafIconDataSource)
+ (id)sbh_leafIconDataSourceNotificationCenter;
@end

@implementation NSNotificationCenter(SBLeafIconDataSource)

+ (id)sbh_leafIconDataSourceNotificationCenter
{
  if (sbh_leafIconDataSourceNotificationCenter_onceToken != -1)
  {
    +[NSNotificationCenter(SBLeafIconDataSource) sbh_leafIconDataSourceNotificationCenter];
  }

  v1 = sbh_leafIconDataSourceNotificationCenter_sbh_leafIconDataSourceNotificationCenter;

  return v1;
}

@end