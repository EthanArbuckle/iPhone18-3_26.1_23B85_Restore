@interface WiFiStatMO
+ (id)generateInstance:(id)instance;
@end

@implementation WiFiStatMO

+ (id)generateInstance:(id)instance
{
  instanceCopy = instance;
  v4 = +[WiFiStatMO entityName];
  v5 = [AnalyticsStoreProxy createEntity:v4 moc:instanceCopy];

  return v5;
}

@end