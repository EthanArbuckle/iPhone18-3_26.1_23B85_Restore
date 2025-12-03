@interface PPSpotlightAttributes
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSpotlightAttributes:(id)attributes;
- (PPSpotlightAttributes)initWithCoder:(id)coder;
- (PPSpotlightAttributes)initWithStaticScore:(double)score featureVector:(id)vector featureVectorVersion:(id)version namedEntityScores:(id)scores;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSpotlightAttributes

- (BOOL)isEqualToSpotlightAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (!attributesCopy || self->_staticScore != *(attributesCopy + 1))
  {
    goto LABEL_9;
  }

  v6 = self->_featureVector;
  v7 = v6;
  if (v6 == v5[2])
  {
  }

  else
  {
    v8 = [(NSData *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v9 = self->_featureVectorVersion;
  v10 = v9;
  if (v9 == v5[3])
  {
  }

  else
  {
    v11 = [(NSNumber *)v9 isEqual:?];

    if ((v11 & 1) == 0)
    {
LABEL_9:
      v12 = 0;
      goto LABEL_10;
    }
  }

  v14 = self->_namedEntityScores;
  v15 = v14;
  if (v14 == v5[4])
  {
    v12 = 1;
  }

  else
  {
    v12 = [(NSDictionary *)v14 isEqual:?];
  }

LABEL_10:
  return v12;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPSpotlightAttributes *)self isEqualToSpotlightAttributes:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = self->_staticScore;
    v6 = [(NSData *)self->_featureVector copy];
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(NSNumber *)self->_featureVectorVersion copy];
    v9 = v5[3];
    v5[3] = v8;

    v10 = [(NSDictionary *)self->_namedEntityScores copy];
    v11 = v5[4];
    v5[4] = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  staticScore = self->_staticScore;
  coderCopy = coder;
  [coderCopy encodeDouble:@"ssc" forKey:staticScore];
  [coderCopy encodeObject:self->_featureVector forKey:@"fev"];
  [coderCopy encodeObject:self->_featureVectorVersion forKey:@"fvv"];
  [coderCopy encodeObject:self->_namedEntityScores forKey:@"nes"];
}

- (PPSpotlightAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"ssc"];
  v6 = v5;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fev"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ssc"];
  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc(MEMORY[0x1E695DFD8]);
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 initWithObjects:{v11, v12, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v9);
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"nes"];

  v15 = [(PPSpotlightAttributes *)self initWithStaticScore:v7 featureVector:v8 featureVectorVersion:v14 namedEntityScores:v6];
  return v15;
}

- (unint64_t)hash
{
  staticScore = self->_staticScore;
  v4 = [(NSData *)self->_featureVector hash]- staticScore + 32 * staticScore;
  v5 = [(NSNumber *)self->_featureVectorVersion hash]- v4 + 32 * v4;
  return [(NSDictionary *)self->_namedEntityScores hash]- v5 + 32 * v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  staticScore = self->_staticScore;
  v5 = [(NSData *)self->_featureVector hash];
  [(NSNumber *)self->_featureVectorVersion doubleValue];
  v7 = [v3 initWithFormat:@"<PPSpotlightAttributes s:%f f:%tu v:%f ne:%tu>", *&staticScore, v5, v6, -[NSDictionary count](self->_namedEntityScores, "count")];

  return v7;
}

- (PPSpotlightAttributes)initWithStaticScore:(double)score featureVector:(id)vector featureVectorVersion:(id)version namedEntityScores:(id)scores
{
  vectorCopy = vector;
  versionCopy = version;
  scoresCopy = scores;
  v20.receiver = self;
  v20.super_class = PPSpotlightAttributes;
  v13 = [(PPSpotlightAttributes *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_staticScore = score;
    v15 = [vectorCopy copy];
    featureVector = v14->_featureVector;
    v14->_featureVector = v15;

    objc_storeStrong(&v14->_featureVectorVersion, version);
    v17 = [scoresCopy copy];
    namedEntityScores = v14->_namedEntityScores;
    v14->_namedEntityScores = v17;
  }

  return v14;
}

@end