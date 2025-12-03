@interface PPTextUnderstandingExtraction
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTextUnderstandingExtraction:(id)extraction;
- (PPTextUnderstandingExtraction)initWithCoder:(id)coder;
- (PPTextUnderstandingExtraction)initWithNamedEntities:(id)entities topics:(id)topics topicAlgorithm:(unint64_t)algorithm;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPTextUnderstandingExtraction

- (BOOL)isEqualToTextUnderstandingExtraction:(id)extraction
{
  extractionCopy = extraction;
  v5 = extractionCopy;
  if (!extractionCopy || self->_topicAlgorithm != extractionCopy[3])
  {
    goto LABEL_5;
  }

  v6 = self->_namedEntities;
  v7 = v6;
  if (v6 == v5[1])
  {
  }

  else
  {
    v8 = [(NSArray *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
LABEL_5:
      v9 = 0;
      goto LABEL_11;
    }
  }

  v10 = self->_topics;
  v11 = v10;
  if (v10 == v5[2])
  {
    v9 = 1;
  }

  else
  {
    v9 = [(NSArray *)v10 isEqual:?];
  }

LABEL_11:
  return v9;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPTextUnderstandingExtraction *)self isEqualToTextUnderstandingExtraction:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = [(NSArray *)self->_namedEntities copy];
    v6 = v4[1];
    v4[1] = v5;

    v7 = [(NSArray *)self->_topics copy];
    v8 = v4[2];
    v4[2] = v7;

    v4[3] = self->_topicAlgorithm;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  namedEntities = self->_namedEntities;
  coderCopy = coder;
  [coderCopy encodeObject:namedEntities forKey:@"nes"];
  [coderCopy encodeObject:self->_topics forKey:@"top"];
  [coderCopy encodeInt32:LODWORD(self->_topicAlgorithm) forKey:@"tal"];
}

- (PPTextUnderstandingExtraction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"nes"];

  v11 = objc_autoreleasePoolPush();
  v12 = objc_alloc(MEMORY[0x1E695DFD8]);
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v12 initWithObjects:{v13, v14, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v11);
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"top"];

  v17 = -[PPTextUnderstandingExtraction initWithNamedEntities:topics:topicAlgorithm:](self, "initWithNamedEntities:topics:topicAlgorithm:", v10, v16, [coderCopy decodeInt32ForKey:@"tal"]);
  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_namedEntities hash];
  v4 = [(NSArray *)self->_topics hash];
  return self->_topicAlgorithm - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPTextUnderstandingExtraction n:%tu t:%tu ta:%tu>", -[NSArray count](self->_namedEntities, "count"), -[NSArray count](self->_topics, "count"), self->_topicAlgorithm];

  return v2;
}

- (PPTextUnderstandingExtraction)initWithNamedEntities:(id)entities topics:(id)topics topicAlgorithm:(unint64_t)algorithm
{
  entitiesCopy = entities;
  topicsCopy = topics;
  v16.receiver = self;
  v16.super_class = PPTextUnderstandingExtraction;
  v10 = [(PPTextUnderstandingExtraction *)&v16 init];
  if (v10)
  {
    v11 = [entitiesCopy copy];
    namedEntities = v10->_namedEntities;
    v10->_namedEntities = v11;

    v13 = [topicsCopy copy];
    topics = v10->_topics;
    v10->_topics = v13;

    v10->_topicAlgorithm = algorithm;
  }

  return v10;
}

@end