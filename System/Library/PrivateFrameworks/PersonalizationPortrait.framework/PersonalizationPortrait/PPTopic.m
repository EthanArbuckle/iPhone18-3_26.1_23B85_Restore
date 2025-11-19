@interface PPTopic
+ (id)clusterIdentifierFromTopicId:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTopic:(id)a3;
- (NSSet)featureNames;
- (PPTopic)initWithCoder:(id)a3;
- (PPTopic)initWithTopicIdentifier:(id)a3 mostRelevantRecord:(id)a4;
- (id)description;
- (id)featureValueForName:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPTopic

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"topicId"])
  {
    v4 = [MEMORY[0x1E695FE60] featureValueWithString:self->_topicIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSSet)featureNames
{
  if (featureNames__pasOnceToken6_8479 != -1)
  {
    dispatch_once(&featureNames__pasOnceToken6_8479, &__block_literal_global_8480);
  }

  v3 = featureNames__pasExprOnceResult_8481;

  return v3;
}

void __23__PPTopic_featureNames__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"topicId", 0}];
  objc_autoreleasePoolPop(v1);
  v3 = featureNames__pasExprOnceResult_8481;
  featureNames__pasExprOnceResult_8481 = v2;

  objc_autoreleasePoolPop(v0);
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPTopic i:'%@'>", self->_topicIdentifier];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPTopic *)self isEqualToTopic:v4];
  }

  return v5;
}

- (BOOL)isEqualToTopic:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4)
  {
    v6 = self->_topicIdentifier;
    v7 = [(PPTopic *)v5 topicIdentifier];
    v8 = v7;
    if (v6 | v7)
    {
      v9 = 0;
      if (v6 && v7)
      {
        v9 = [v6 isEqualToString:v7];
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  topicIdentifier = self->_topicIdentifier;
  v5 = a3;
  [v5 encodeObject:topicIdentifier forKey:@"id"];
  v6 = [(PPTopic *)self mostRelevantRecord];
  [v5 encodeObject:v6 forKey:@"rec"];
}

- (PPTopic)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rec"];

  if (v5)
  {
    self = [(PPTopic *)self initWithTopicIdentifier:v5 mostRelevantRecord:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v8;
}

- (PPTopic)initWithTopicIdentifier:(id)a3 mostRelevantRecord:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
LABEL_3:
      v11 = [[PPTopicWithRecord alloc] initWithTopicIdentifier:v8 mostRelevantRecord:v10];
      goto LABEL_8;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PPTopic.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"topicIdentifier"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v19.receiver = self;
  v19.super_class = PPTopic;
  v13 = [(PPTopic *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_topicIdentifier, a3);
    v15 = [PPTopic clusterIdentifierFromTopicId:v8];
    clusterIdentifier = v14->_clusterIdentifier;
    v14->_clusterIdentifier = v15;
  }

  v11 = v14;
  self = &v11->super;
LABEL_8:
  p_super = &v11->super;

  return p_super;
}

+ (id)clusterIdentifierFromTopicId:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = v3;
  objc_autoreleasePoolPop(v4);

  return v5;
}

@end