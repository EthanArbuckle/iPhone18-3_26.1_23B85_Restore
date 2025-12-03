@interface VKUserReportedTrafficIncident
- (VKUserReportedTrafficIncident)initWithIncidentType:(int64_t)type uniqueIdentifier:(id)identifier position:(id)position onRoute:(id)route;
@end

@implementation VKUserReportedTrafficIncident

- (VKUserReportedTrafficIncident)initWithIncidentType:(int64_t)type uniqueIdentifier:(id)identifier position:(id)position onRoute:(id)route
{
  v11.receiver = self;
  v11.super_class = VKUserReportedTrafficIncident;
  v7 = [(VKTrafficFeature *)&v11 initWithFeatureType:4 uniqueIdentifier:identifier position:route onRoute:position.var0, position.var1, position.var2];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = v7;
  }

  return v8;
}

@end