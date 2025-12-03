@interface PLLocationOfInterestVisit
- (BOOL)isEqual:(id)equal;
- (PLLocationOfInterest)locationOfInterest;
- (PLLocationOfInterestVisit)initWithCoder:(id)coder;
- (PLLocationOfInterestVisit)initWithIdentifier:(id)identifier visitInterval:(id)interval confidence:(double)confidence;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setLocationOfInterest:(id)interest;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      identifier = [(PLLocationOfInterestVisit *)equalCopy identifier];
      v7 = [(NSUUID *)identifier isEqual:identifier];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)setLocationOfInterest:(id)interest
{
  obj = interest;
  WeakRetained = objc_loadWeakRetained(&self->_locationOfInterest);
  if (WeakRetained != obj || ([obj isEqual:WeakRetained] & 1) == 0)
  {
    [WeakRetained removeVisit:self];
    objc_storeWeak(&self->_locationOfInterest, obj);
    [obj addVisit:self];
  }
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_visitInterval forKey:@"visitInterval"];
  [coderCopy encodeDouble:@"confidence" forKey:self->_confidence];
  WeakRetained = objc_loadWeakRetained(&self->_locationOfInterest);
  [coderCopy encodeObject:WeakRetained forKey:@"locationOfInterest"];
}

- (PLLocationOfInterestVisit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visitInterval"];
  [coderCopy decodeDoubleForKey:@"confidence"];
  v7 = [(PLLocationOfInterestVisit *)self initWithIdentifier:v5 visitInterval:v6 confidence:?];
  if (v7)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationOfInterest"];
    [v8 addVisit:v7];
  }

  return v7;
}

- (PLLocationOfInterestVisit)initWithIdentifier:(id)identifier visitInterval:(id)interval confidence:(double)confidence
{
  identifierCopy = identifier;
  intervalCopy = interval;
  v12 = intervalCopy;
  if (identifierCopy)
  {
    if (intervalCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLLocationOfInterestVisit.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLLocationOfInterestVisit.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"visitInterval != nil"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PLLocationOfInterestVisit;
  v13 = [(PLLocationOfInterestVisit *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeStrong(&v14->_visitInterval, interval);
    v14->_confidence = confidence;
  }

  return v14;
}

@end