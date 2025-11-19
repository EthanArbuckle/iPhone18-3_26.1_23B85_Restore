@interface PLLocationOfInterestVisit
- (BOOL)isEqual:(id)a3;
- (PLLocationOfInterest)locationOfInterest;
- (PLLocationOfInterestVisit)initWithCoder:(id)a3;
- (PLLocationOfInterestVisit)initWithIdentifier:(id)a3 visitInterval:(id)a4 confidence:(double)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setLocationOfInterest:(id)a3;
@end

@implementation PLLocationOfInterestVisit

- (PLLocationOfInterest)locationOfInterest
{
  WeakRetained = objc_loadWeakRetained(&self->_locationOfInterest);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PLLocationOfInterestVisit;
  v4 = [(PLLocationOfInterestVisit *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ - %@", v4, self->_visitInterval];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = [(PLLocationOfInterestVisit *)v4 identifier];
      v7 = [(NSUUID *)identifier isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)setLocationOfInterest:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_locationOfInterest);
  if (WeakRetained != obj || ([obj isEqual:WeakRetained] & 1) == 0)
  {
    [WeakRetained removeVisit:self];
    objc_storeWeak(&self->_locationOfInterest, obj);
    [obj addVisit:self];
  }
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_visitInterval forKey:@"visitInterval"];
  [v5 encodeDouble:@"confidence" forKey:self->_confidence];
  WeakRetained = objc_loadWeakRetained(&self->_locationOfInterest);
  [v5 encodeObject:WeakRetained forKey:@"locationOfInterest"];
}

- (PLLocationOfInterestVisit)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"visitInterval"];
  [v4 decodeDoubleForKey:@"confidence"];
  v7 = [(PLLocationOfInterestVisit *)self initWithIdentifier:v5 visitInterval:v6 confidence:?];
  if (v7)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationOfInterest"];
    [v8 addVisit:v7];
  }

  return v7;
}

- (PLLocationOfInterestVisit)initWithIdentifier:(id)a3 visitInterval:(id)a4 confidence:(double)a5
{
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PLLocationOfInterestVisit.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PLLocationOfInterestVisit.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"visitInterval != nil"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PLLocationOfInterestVisit;
  v13 = [(PLLocationOfInterestVisit *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, a3);
    objc_storeStrong(&v14->_visitInterval, a4);
    v14->_confidence = a5;
  }

  return v14;
}

@end