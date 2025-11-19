@interface SMSessionStateEnumerationOptions
- (SMSessionStateEnumerationOptions)initWithBatchSize:(unint64_t)a3 fetchLimit:(unint64_t)a4 sortByCreationDate:(BOOL)a5 ascending:(BOOL)a6 dateInterval:(id)a7 sessionState:(unint64_t)a8 locationBoundingBox:(id)a9 boundingBoxRadius:(id)a10 sessionIdentifier:(id)a11;
- (SMSessionStateEnumerationOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMSessionStateEnumerationOptions

- (SMSessionStateEnumerationOptions)initWithBatchSize:(unint64_t)a3 fetchLimit:(unint64_t)a4 sortByCreationDate:(BOOL)a5 ascending:(BOOL)a6 dateInterval:(id)a7 sessionState:(unint64_t)a8 locationBoundingBox:(id)a9 boundingBoxRadius:(id)a10 sessionIdentifier:(id)a11
{
  v14 = a7;
  v15 = a9;
  v16 = a10;
  v17 = a11;
  v28.receiver = self;
  v28.super_class = SMSessionStateEnumerationOptions;
  v18 = [(SMSessionStateEnumerationOptions *)&v28 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_7;
  }

  v18->_batchSize = a3;
  v18->_fetchLimit = a4;
  v18->_sortByCreationDate = a5;
  v18->_ascending = a6;
  objc_storeStrong(&v18->_dateInterval, a7);
  v19->_sessionState = a8;
  objc_storeStrong(&v19->_locationBoundingBox, a9);
  objc_storeStrong(&v19->_sessionIdentifier, a11);
  objc_storeStrong(&v19->_boundingBoxRadius, a10);
  if (v16)
  {
    goto LABEL_7;
  }

  if (v19->_locationBoundingBox)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: boundingBoxRadius != nil", buf, 2u);
    }

    v21 = 0;
  }

  else
  {
LABEL_7:
    v21 = v19;
  }

  return v21;
}

- (id)description
{
  batchSize = self->_batchSize;
  fetchLimit = self->_fetchLimit;
  sortByCreationDate = self->_sortByCreationDate;
  v6 = MEMORY[0x277CCACA8];
  ascending = self->_ascending;
  v8 = [(NSDateInterval *)self->_dateInterval description];
  v9 = [SMSessionManagerState convertSessionStateToString:self->_sessionState];
  [(CLLocation *)self->_locationBoundingBox coordinate];
  v11 = v10;
  [(CLLocation *)self->_locationBoundingBox coordinate];
  v13 = v12;
  [(NSNumber *)self->_boundingBoxRadius doubleValue];
  v15 = v14;
  v16 = [(NSUUID *)self->_sessionIdentifier description];
  v17 = [v6 stringWithFormat:@"{batchSize:%lu, fetchLimit:%lu, sortByCreationDate:%d, ascending:%d, dateInterval:%@, sessionState:%@, locationBoundingBox.latitude:%f, locationBoundingBox.longitude:%f, boundingBoxRadius:%.3f, sessionIdentifier:%@}", batchSize, fetchLimit, sortByCreationDate, ascending, v8, v9, v11, v13, v15, v16];

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  boundingBoxRadius = self->_boundingBoxRadius;
  return [v4 initWithBatchSize:self->_batchSize fetchLimit:self->_fetchLimit sortByCreationDate:self->_sortByCreationDate ascending:self->_ascending dateInterval:self->_dateInterval sessionState:self->_sessionState locationBoundingBox:self->_locationBoundingBox boundingBoxRadius:boundingBoxRadius sessionIdentifier:self->_sessionIdentifier];
}

- (void)encodeWithCoder:(id)a3
{
  batchSize = self->_batchSize;
  v5 = a3;
  [v5 encodeInteger:batchSize forKey:@"batchSize"];
  [v5 encodeInteger:self->_fetchLimit forKey:@"fetchLimit"];
  [v5 encodeBool:self->_sortByCreationDate forKey:@"sortByCreationDate"];
  [v5 encodeBool:self->_ascending forKey:@"ascending"];
  [v5 encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [v5 encodeInteger:self->_sessionState forKey:@"sessionState"];
  [v5 encodeObject:self->_locationBoundingBox forKey:@"locationBoundingBox"];
  [v5 encodeObject:self->_boundingBoxRadius forKey:@"boundingBoxRadius"];
  [v5 encodeObject:self->_sessionIdentifier forKey:@"sessionIdentifier"];
}

- (SMSessionStateEnumerationOptions)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeIntegerForKey:@"batchSize"];
  v5 = [v3 decodeIntegerForKey:@"fetchLimit"];
  v6 = [v3 decodeBoolForKey:@"sortByCreationDate"];
  v7 = [v3 decodeBoolForKey:@"ascending"];
  v8 = [v3 decodeObjectForKey:@"dateInterval"];
  v9 = [v3 decodeIntegerForKey:@"sessionState"];
  v10 = [v3 decodeObjectForKey:@"locationBoundingBox"];
  v11 = [v3 decodeObjectForKey:@"boundingBoxRadius"];
  v12 = [v3 decodeObjectForKey:@"sessionIdentifier"];

  v13 = [(SMSessionStateEnumerationOptions *)self initWithBatchSize:v4 fetchLimit:v5 sortByCreationDate:v6 ascending:v7 dateInterval:v8 sessionState:v9 locationBoundingBox:v10 boundingBoxRadius:v11 sessionIdentifier:v12];
  return v13;
}

@end