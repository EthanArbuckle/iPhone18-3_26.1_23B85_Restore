@interface SMSessionStateEnumerationOptions
- (SMSessionStateEnumerationOptions)initWithBatchSize:(unint64_t)size fetchLimit:(unint64_t)limit sortByCreationDate:(BOOL)date ascending:(BOOL)ascending dateInterval:(id)interval sessionState:(unint64_t)state locationBoundingBox:(id)box boundingBoxRadius:(id)self0 sessionIdentifier:(id)self1;
- (SMSessionStateEnumerationOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSessionStateEnumerationOptions

- (SMSessionStateEnumerationOptions)initWithBatchSize:(unint64_t)size fetchLimit:(unint64_t)limit sortByCreationDate:(BOOL)date ascending:(BOOL)ascending dateInterval:(id)interval sessionState:(unint64_t)state locationBoundingBox:(id)box boundingBoxRadius:(id)self0 sessionIdentifier:(id)self1
{
  intervalCopy = interval;
  boxCopy = box;
  radiusCopy = radius;
  identifierCopy = identifier;
  v28.receiver = self;
  v28.super_class = SMSessionStateEnumerationOptions;
  v18 = [(SMSessionStateEnumerationOptions *)&v28 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_7;
  }

  v18->_batchSize = size;
  v18->_fetchLimit = limit;
  v18->_sortByCreationDate = date;
  v18->_ascending = ascending;
  objc_storeStrong(&v18->_dateInterval, interval);
  v19->_sessionState = state;
  objc_storeStrong(&v19->_locationBoundingBox, box);
  objc_storeStrong(&v19->_sessionIdentifier, identifier);
  objc_storeStrong(&v19->_boundingBoxRadius, radius);
  if (radiusCopy)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  boundingBoxRadius = self->_boundingBoxRadius;
  return [v4 initWithBatchSize:self->_batchSize fetchLimit:self->_fetchLimit sortByCreationDate:self->_sortByCreationDate ascending:self->_ascending dateInterval:self->_dateInterval sessionState:self->_sessionState locationBoundingBox:self->_locationBoundingBox boundingBoxRadius:boundingBoxRadius sessionIdentifier:self->_sessionIdentifier];
}

- (void)encodeWithCoder:(id)coder
{
  batchSize = self->_batchSize;
  coderCopy = coder;
  [coderCopy encodeInteger:batchSize forKey:@"batchSize"];
  [coderCopy encodeInteger:self->_fetchLimit forKey:@"fetchLimit"];
  [coderCopy encodeBool:self->_sortByCreationDate forKey:@"sortByCreationDate"];
  [coderCopy encodeBool:self->_ascending forKey:@"ascending"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [coderCopy encodeInteger:self->_sessionState forKey:@"sessionState"];
  [coderCopy encodeObject:self->_locationBoundingBox forKey:@"locationBoundingBox"];
  [coderCopy encodeObject:self->_boundingBoxRadius forKey:@"boundingBoxRadius"];
  [coderCopy encodeObject:self->_sessionIdentifier forKey:@"sessionIdentifier"];
}

- (SMSessionStateEnumerationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeIntegerForKey:@"batchSize"];
  v5 = [coderCopy decodeIntegerForKey:@"fetchLimit"];
  v6 = [coderCopy decodeBoolForKey:@"sortByCreationDate"];
  v7 = [coderCopy decodeBoolForKey:@"ascending"];
  v8 = [coderCopy decodeObjectForKey:@"dateInterval"];
  v9 = [coderCopy decodeIntegerForKey:@"sessionState"];
  v10 = [coderCopy decodeObjectForKey:@"locationBoundingBox"];
  v11 = [coderCopy decodeObjectForKey:@"boundingBoxRadius"];
  v12 = [coderCopy decodeObjectForKey:@"sessionIdentifier"];

  v13 = [(SMSessionStateEnumerationOptions *)self initWithBatchSize:v4 fetchLimit:v5 sortByCreationDate:v6 ascending:v7 dateInterval:v8 sessionState:v9 locationBoundingBox:v10 boundingBoxRadius:v11 sessionIdentifier:v12];
  return v13;
}

@end