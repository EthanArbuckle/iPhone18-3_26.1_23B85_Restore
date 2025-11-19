@interface MOEventPeopleDiscovery
- (MOEventPeopleDiscovery)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventPeopleDiscovery

- (void)encodeWithCoder:(id)a3
{
  isGComplete = self->_isGComplete;
  v5 = a3;
  [v5 encodeBool:isGComplete forKey:@"isGComplete"];
  [v5 encodeInteger:self->_gaPR forKey:@"gPRelationship"];
  [v5 encodeObject:self->_pCount forKey:@"pC"];
  [v5 encodeObject:self->_densityScore forKey:@"densityScore"];
  [v5 encodeObject:self->_densityScanDuration forKey:@"densityScanDuration"];
}

- (MOEventPeopleDiscovery)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MOEventPeopleDiscovery;
  v5 = [(MOEventPeopleDiscovery *)&v13 init];
  if (v5)
  {
    v5->_isGComplete = [v4 decodeBoolForKey:@"isGComplete"];
    v5->_gaPR = [v4 decodeIntegerForKey:@"gPRelationship"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pC"];
    pCount = v5->_pCount;
    v5->_pCount = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"densityScore"];
    densityScore = v5->_densityScore;
    v5->_densityScore = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"densityScanDuration"];
    densityScanDuration = v5->_densityScanDuration;
    v5->_densityScanDuration = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MOEventPeopleDiscovery);
  v4->_isGComplete = self->_isGComplete;
  v4->_gaPR = self->_gaPR;
  objc_storeStrong(&v4->_pCount, self->_pCount);
  objc_storeStrong(&v4->_densityScore, self->_densityScore);
  objc_storeStrong(&v4->_densityScanDuration, self->_densityScanDuration);
  return v4;
}

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"isGComplete, %d, pr, %lu, social context count, %@, density score, %@, scan duration, %@", self->_isGComplete, self->_gaPR, self->_pCount, self->_densityScore, self->_densityScanDuration];

  return v2;
}

@end