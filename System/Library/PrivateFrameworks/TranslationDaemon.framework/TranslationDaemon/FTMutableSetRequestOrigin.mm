@interface FTMutableSetRequestOrigin
- (BOOL)enable_geo_location_features;
- (FTMutableSetRequestOrigin)init;
- (double)latitude;
- (double)longitude;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setLatitude:(double)a3;
- (void)setLongitude:(double)a3;
@end

@implementation FTMutableSetRequestOrigin

- (FTMutableSetRequestOrigin)init
{
  v6.receiver = self;
  v6.super_class = FTMutableSetRequestOrigin;
  v2 = [(FTMutableSetRequestOrigin *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (double)latitude
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"latitude"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setLatitude:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)longitude
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"longitude"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setLongitude:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)enable_geo_location_features
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_geo_location_features"];
  v3 = [v2 BOOLValue];

  return v3;
}

@end