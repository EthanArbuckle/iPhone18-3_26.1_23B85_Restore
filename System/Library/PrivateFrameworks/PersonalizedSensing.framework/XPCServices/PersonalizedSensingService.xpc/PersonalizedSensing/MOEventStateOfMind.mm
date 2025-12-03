@interface MOEventStateOfMind
- (MOEventStateOfMind)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventStateOfMind

- (void)encodeWithCoder:(id)coder
{
  reflectiveInterval = self->_reflectiveInterval;
  coderCopy = coder;
  [coderCopy encodeDouble:@"reflectiveInterval" forKey:reflectiveInterval];
  [coderCopy encodeDouble:@"valence" forKey:self->_valence];
  [coderCopy encodeDouble:@"valenceClassification" forKey:self->_valenceClassification];
  [coderCopy encodeObject:self->_labels forKey:@"labels"];
  [coderCopy encodeObject:self->_domains forKey:@"domains"];
}

- (MOEventStateOfMind)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = MOEventStateOfMind;
  v5 = [(MOEventStateOfMind *)&v22 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"reflectiveInterval"];
    v5->_reflectiveInterval = v6;
    [coderCopy decodeDoubleForKey:@"valence"];
    v5->_valence = v7;
    [coderCopy decodeDoubleForKey:@"valenceClassification"];
    v5->_valenceClassification = v8;
    v9 = objc_autoreleasePoolPush();
    v10 = [NSSet alloc];
    v11 = objc_opt_class();
    v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v9);
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"labels"];
    labels = v5->_labels;
    v5->_labels = v13;

    v15 = objc_autoreleasePoolPush();
    v16 = [NSSet alloc];
    v17 = objc_opt_class();
    v18 = [v16 initWithObjects:{v17, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v15);
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"domains"];
    domains = v5->_domains;
    v5->_domains = v19;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MOEventStateOfMind);
  v4->_reflectiveInterval = self->_reflectiveInterval;
  v4->_valenceClassification = self->_valenceClassification;
  v4->_valence = self->_valence;
  objc_storeStrong(&v4->_labels, self->_labels);
  objc_storeStrong(&v4->_domains, self->_domains);
  return v4;
}

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"valence, %f", *&self->_valence];

  return v2;
}

@end