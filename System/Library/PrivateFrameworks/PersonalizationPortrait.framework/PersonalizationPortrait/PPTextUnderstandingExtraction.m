@interface PPTextUnderstandingExtraction
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTextUnderstandingExtraction:(id)a3;
- (PPTextUnderstandingExtraction)initWithCoder:(id)a3;
- (PPTextUnderstandingExtraction)initWithNamedEntities:(id)a3 topics:(id)a4 topicAlgorithm:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPTextUnderstandingExtraction

- (BOOL)isEqualToTextUnderstandingExtraction:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || self->_topicAlgorithm != v4[3])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPTextUnderstandingExtraction *)self isEqualToTextUnderstandingExtraction:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  namedEntities = self->_namedEntities;
  v5 = a3;
  [v5 encodeObject:namedEntities forKey:@"nes"];
  [v5 encodeObject:self->_topics forKey:@"top"];
  [v5 encodeInt32:LODWORD(self->_topicAlgorithm) forKey:@"tal"];
}

- (PPTextUnderstandingExtraction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"nes"];

  v11 = objc_autoreleasePoolPush();
  v12 = objc_alloc(MEMORY[0x1E695DFD8]);
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v12 initWithObjects:{v13, v14, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v11);
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"top"];

  v17 = -[PPTextUnderstandingExtraction initWithNamedEntities:topics:topicAlgorithm:](self, "initWithNamedEntities:topics:topicAlgorithm:", v10, v16, [v4 decodeInt32ForKey:@"tal"]);
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

- (PPTextUnderstandingExtraction)initWithNamedEntities:(id)a3 topics:(id)a4 topicAlgorithm:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = PPTextUnderstandingExtraction;
  v10 = [(PPTextUnderstandingExtraction *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    namedEntities = v10->_namedEntities;
    v10->_namedEntities = v11;

    v13 = [v9 copy];
    topics = v10->_topics;
    v10->_topics = v13;

    v10->_topicAlgorithm = a5;
  }

  return v10;
}

@end