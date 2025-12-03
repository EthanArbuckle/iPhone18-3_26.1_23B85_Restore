@interface SPUnauthorizedTrackingObservation
- (BOOL)isEqual:(id)equal;
- (SPUnauthorizedTrackingObservation)initWithAction:(int64_t)action type:(int64_t)type trackingIdentifier:(id)identifier observedLocations:(id)locations;
- (SPUnauthorizedTrackingObservation)initWithCoder:(id)coder;
- (SPUnauthorizedTrackingObservation)initWithCurrentAdvertisementAndLocationHistory:(id)history observedLocations:(id)locations;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPUnauthorizedTrackingObservation

- (SPUnauthorizedTrackingObservation)initWithCurrentAdvertisementAndLocationHistory:(id)history observedLocations:(id)locations
{
  historyCopy = history;
  locationsCopy = locations;
  v13.receiver = self;
  v13.super_class = SPUnauthorizedTrackingObservation;
  v8 = [(SPUnauthorizedTrackingObservation *)&v13 init];
  if (v8)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(SPUnauthorizedTrackingObservation *)v8 setIdentifier:uUID];

    [(SPUnauthorizedTrackingObservation *)v8 setAction:1];
    [(SPUnauthorizedTrackingObservation *)v8 setType:0];
    [(SPUnauthorizedTrackingObservation *)v8 setTrackingIdentifier:historyCopy];
    [(SPUnauthorizedTrackingObservation *)v8 setObservedLocations:locationsCopy];
    lastObject = [locationsCopy lastObject];
    timestamp = [lastObject timestamp];
    [(SPUnauthorizedTrackingObservation *)v8 setObservedAt:timestamp];
  }

  return v8;
}

- (SPUnauthorizedTrackingObservation)initWithAction:(int64_t)action type:(int64_t)type trackingIdentifier:(id)identifier observedLocations:(id)locations
{
  identifierCopy = identifier;
  locationsCopy = locations;
  v17.receiver = self;
  v17.super_class = SPUnauthorizedTrackingObservation;
  v12 = [(SPUnauthorizedTrackingObservation *)&v17 init];
  if (v12)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(SPUnauthorizedTrackingObservation *)v12 setIdentifier:uUID];

    [(SPUnauthorizedTrackingObservation *)v12 setAction:action];
    [(SPUnauthorizedTrackingObservation *)v12 setType:type];
    [(SPUnauthorizedTrackingObservation *)v12 setTrackingIdentifier:identifierCopy];
    [(SPUnauthorizedTrackingObservation *)v12 setObservedLocations:locationsCopy];
    lastObject = [locationsCopy lastObject];
    timestamp = [lastObject timestamp];
    [(SPUnauthorizedTrackingObservation *)v12 setObservedAt:timestamp];
  }

  return v12;
}

- (SPUnauthorizedTrackingObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [(SPUnauthorizedTrackingObservation *)self setIdentifier:v5];

  -[SPUnauthorizedTrackingObservation setAction:](self, "setAction:", [coderCopy decodeIntegerForKey:@"action"]);
  -[SPUnauthorizedTrackingObservation setType:](self, "setType:", [coderCopy decodeIntegerForKey:@"type"]);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackingIdentifier"];
  [(SPUnauthorizedTrackingObservation *)self setTrackingIdentifier:v6];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"observedLocations"];
  [(SPUnauthorizedTrackingObservation *)self setObservedLocations:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"observedAt"];

  [(SPUnauthorizedTrackingObservation *)self setObservedAt:v12];
  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      action = [(SPUnauthorizedTrackingObservation *)self action];
      if (action == [(SPUnauthorizedTrackingObservation *)v5 action])
      {
        trackingIdentifier = [(SPUnauthorizedTrackingObservation *)self trackingIdentifier];
        trackingIdentifier2 = [(SPUnauthorizedTrackingObservation *)v5 trackingIdentifier];
        if ([trackingIdentifier isEqual:trackingIdentifier2])
        {
          observedLocations = [(SPUnauthorizedTrackingObservation *)self observedLocations];
          observedLocations2 = [(SPUnauthorizedTrackingObservation *)v5 observedLocations];
          if ([observedLocations isEqualToArray:observedLocations2])
          {
            observedAt = [(SPUnauthorizedTrackingObservation *)self observedAt];
            observedAt2 = [(SPUnauthorizedTrackingObservation *)v5 observedAt];
            v13 = [observedAt isEqualToDate:observedAt2];
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  trackingIdentifier = [(SPUnauthorizedTrackingObservation *)self trackingIdentifier];
  v4 = [trackingIdentifier hash];
  observedLocations = [(SPUnauthorizedTrackingObservation *)self observedLocations];
  v6 = [observedLocations hash] ^ v4;
  observedAt = [(SPUnauthorizedTrackingObservation *)self observedAt];
  v8 = [observedAt hash];

  return v6 ^ v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SPUnauthorizedTrackingObservation *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeInteger:-[SPUnauthorizedTrackingObservation action](self forKey:{"action"), @"action"}];
  [coderCopy encodeInteger:-[SPUnauthorizedTrackingObservation type](self forKey:{"type"), @"type"}];
  trackingIdentifier = [(SPUnauthorizedTrackingObservation *)self trackingIdentifier];
  [coderCopy encodeObject:trackingIdentifier forKey:@"trackingIdentifier"];

  observedLocations = [(SPUnauthorizedTrackingObservation *)self observedLocations];
  [coderCopy encodeObject:observedLocations forKey:@"observedLocations"];

  observedAt = [(SPUnauthorizedTrackingObservation *)self observedAt];
  [coderCopy encodeObject:observedAt forKey:@"observedAt"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(SPUnauthorizedTrackingObservation *)self identifier];
  trackingIdentifier = [(SPUnauthorizedTrackingObservation *)self trackingIdentifier];
  advertisementData = [trackingIdentifier advertisementData];
  fm_hexString = [advertisementData fm_hexString];
  v8 = [v3 stringWithFormat:@"SPUnauthorizedTrackingIdentifier %@ %@", identifier, fm_hexString];

  return v8;
}

@end