@interface WiFiStatMO
+ (id)generateInstance:(id)a3;
@end

@implementation WiFiStatMO

+ (id)generateInstance:(id)a3
{
  v3 = a3;
  v4 = +[WiFiStatMO entityName];
  v5 = [AnalyticsStoreProxy createEntity:v4 moc:v3];

  return v5;
}

@end