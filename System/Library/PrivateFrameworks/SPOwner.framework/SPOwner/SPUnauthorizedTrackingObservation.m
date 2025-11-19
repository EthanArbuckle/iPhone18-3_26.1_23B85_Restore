@interface SPUnauthorizedTrackingObservation
- (BOOL)isEqual:(id)a3;
- (SPUnauthorizedTrackingObservation)initWithAction:(int64_t)a3 type:(int64_t)a4 trackingIdentifier:(id)a5 observedLocations:(id)a6;
- (SPUnauthorizedTrackingObservation)initWithCoder:(id)a3;
- (SPUnauthorizedTrackingObservation)initWithCurrentAdvertisementAndLocationHistory:(id)a3 observedLocations:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPUnauthorizedTrackingObservation

- (SPUnauthorizedTrackingObservation)initWithCurrentAdvertisementAndLocationHistory:(id)a3 observedLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SPUnauthorizedTrackingObservation;
  v8 = [(SPUnauthorizedTrackingObservation *)&v13 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAD78] UUID];
    [(SPUnauthorizedTrackingObservation *)v8 setIdentifier:v9];

    [(SPUnauthorizedTrackingObservation *)v8 setAction:1];
    [(SPUnauthorizedTrackingObservation *)v8 setType:0];
    [(SPUnauthorizedTrackingObservation *)v8 setTrackingIdentifier:v6];
    [(SPUnauthorizedTrackingObservation *)v8 setObservedLocations:v7];
    v10 = [v7 lastObject];
    v11 = [v10 timestamp];
    [(SPUnauthorizedTrackingObservation *)v8 setObservedAt:v11];
  }

  return v8;
}

- (SPUnauthorizedTrackingObservation)initWithAction:(int64_t)a3 type:(int64_t)a4 trackingIdentifier:(id)a5 observedLocations:(id)a6
{
  v10 = a5;
  v11 = a6;
  v17.receiver = self;
  v17.super_class = SPUnauthorizedTrackingObservation;
  v12 = [(SPUnauthorizedTrackingObservation *)&v17 init];
  if (v12)
  {
    v13 = [MEMORY[0x277CCAD78] UUID];
    [(SPUnauthorizedTrackingObservation *)v12 setIdentifier:v13];

    [(SPUnauthorizedTrackingObservation *)v12 setAction:a3];
    [(SPUnauthorizedTrackingObservation *)v12 setType:a4];
    [(SPUnauthorizedTrackingObservation *)v12 setTrackingIdentifier:v10];
    [(SPUnauthorizedTrackingObservation *)v12 setObservedLocations:v11];
    v14 = [v11 lastObject];
    v15 = [v14 timestamp];
    [(SPUnauthorizedTrackingObservation *)v12 setObservedAt:v15];
  }

  return v12;
}

- (SPUnauthorizedTrackingObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [(SPUnauthorizedTrackingObservation *)self setIdentifier:v5];

  -[SPUnauthorizedTrackingObservation setAction:](self, "setAction:", [v4 decodeIntegerForKey:@"action"]);
  -[SPUnauthorizedTrackingObservation setType:](self, "setType:", [v4 decodeIntegerForKey:@"type"]);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trackingIdentifier"];
  [(SPUnauthorizedTrackingObservation *)self setTrackingIdentifier:v6];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"observedLocations"];
  [(SPUnauthorizedTrackingObservation *)self setObservedLocations:v11];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"observedAt"];

  [(SPUnauthorizedTrackingObservation *)self setObservedAt:v12];
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SPUnauthorizedTrackingObservation *)self action];
      if (v6 == [(SPUnauthorizedTrackingObservation *)v5 action])
      {
        v7 = [(SPUnauthorizedTrackingObservation *)self trackingIdentifier];
        v8 = [(SPUnauthorizedTrackingObservation *)v5 trackingIdentifier];
        if ([v7 isEqual:v8])
        {
          v9 = [(SPUnauthorizedTrackingObservation *)self observedLocations];
          v10 = [(SPUnauthorizedTrackingObservation *)v5 observedLocations];
          if ([v9 isEqualToArray:v10])
          {
            v11 = [(SPUnauthorizedTrackingObservation *)self observedAt];
            v12 = [(SPUnauthorizedTrackingObservation *)v5 observedAt];
            v13 = [v11 isEqualToDate:v12];
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
  v3 = [(SPUnauthorizedTrackingObservation *)self trackingIdentifier];
  v4 = [v3 hash];
  v5 = [(SPUnauthorizedTrackingObservation *)self observedLocations];
  v6 = [v5 hash] ^ v4;
  v7 = [(SPUnauthorizedTrackingObservation *)self observedAt];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPUnauthorizedTrackingObservation *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  [v4 encodeInteger:-[SPUnauthorizedTrackingObservation action](self forKey:{"action"), @"action"}];
  [v4 encodeInteger:-[SPUnauthorizedTrackingObservation type](self forKey:{"type"), @"type"}];
  v6 = [(SPUnauthorizedTrackingObservation *)self trackingIdentifier];
  [v4 encodeObject:v6 forKey:@"trackingIdentifier"];

  v7 = [(SPUnauthorizedTrackingObservation *)self observedLocations];
  [v4 encodeObject:v7 forKey:@"observedLocations"];

  v8 = [(SPUnauthorizedTrackingObservation *)self observedAt];
  [v4 encodeObject:v8 forKey:@"observedAt"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SPUnauthorizedTrackingObservation *)self identifier];
  v5 = [(SPUnauthorizedTrackingObservation *)self trackingIdentifier];
  v6 = [v5 advertisementData];
  v7 = [v6 fm_hexString];
  v8 = [v3 stringWithFormat:@"SPUnauthorizedTrackingIdentifier %@ %@", v4, v7];

  return v8;
}

@end