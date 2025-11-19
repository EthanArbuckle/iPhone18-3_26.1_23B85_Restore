@interface VKUserReportedTrafficIncident
- (VKUserReportedTrafficIncident)initWithIncidentType:(int64_t)a3 uniqueIdentifier:(id)a4 position:(id)a5 onRoute:(id)a6;
@end

@implementation VKUserReportedTrafficIncident

- (VKUserReportedTrafficIncident)initWithIncidentType:(int64_t)a3 uniqueIdentifier:(id)a4 position:(id)a5 onRoute:(id)a6
{
  v11.receiver = self;
  v11.super_class = VKUserReportedTrafficIncident;
  v7 = [(VKTrafficFeature *)&v11 initWithFeatureType:4 uniqueIdentifier:a4 position:a6 onRoute:a5.var0, a5.var1, a5.var2];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v9 = v7;
  }

  return v8;
}

@end