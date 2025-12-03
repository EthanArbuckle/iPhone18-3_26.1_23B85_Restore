@interface PPScoredLocation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScoredLocation:(id)location;
- (PPScoredLocation)initWithCoder:(id)coder;
- (PPScoredLocation)initWithLocation:(id)location score:(double)score sentimentScore:(double)sentimentScore;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPScoredLocation

- (unint64_t)hash
{
  v3 = [(PPLocation *)self->_location hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  v5 = [v4 hash] - v3 + 32 * v3;

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_sentimentScore];
  v7 = [v6 hash] - v5 + 32 * v5;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPScoredLocation *)self isEqualToScoredLocation:v5];
  }

  return v6;
}

- (BOOL)isEqualToScoredLocation:(id)location
{
  locationCopy = location;
  v5 = locationCopy && [(PPLocation *)self->_location isEqualToLocation:*(locationCopy + 1)]&& self->_score == locationCopy[2] && self->_sentimentScore == locationCopy[3];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  location = self->_location;
  coderCopy = coder;
  [coderCopy encodeObject:location forKey:@"loc"];
  [coderCopy encodeDouble:@"scr" forKey:self->_score];
  [coderCopy encodeDouble:@"sent" forKey:self->_sentimentScore];
}

- (PPScoredLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"loc"];
  [coderCopy decodeDoubleForKey:@"scr"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"sent"];
  v9 = v8;

  if (v5)
  {
    self = [(PPScoredLocation *)self initWithLocation:v5 score:v7 sentimentScore:v9];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PPScoredLocation)initWithLocation:(id)location score:(double)score sentimentScore:(double)sentimentScore
{
  locationCopy = location;
  if (!locationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPScoredLocation.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"location"}];
  }

  v15.receiver = self;
  v15.super_class = PPScoredLocation;
  v11 = [(PPScoredLocation *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_location, location);
    v12->_score = score;
    v12->_sentimentScore = sentimentScore;
  }

  return v12;
}

@end