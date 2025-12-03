@interface PPTopic
+ (id)clusterIdentifierFromTopicId:(id)id;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTopic:(id)topic;
- (NSSet)featureNames;
- (PPTopic)initWithCoder:(id)coder;
- (PPTopic)initWithTopicIdentifier:(id)identifier mostRelevantRecord:(id)record;
- (id)description;
- (id)featureValueForName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPTopic

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"topicId"])
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPTopic *)self isEqualToTopic:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToTopic:(id)topic
{
  topicCopy = topic;
  v5 = topicCopy;
  if (topicCopy == self)
  {
    v9 = 1;
  }

  else if (topicCopy)
  {
    v6 = self->_topicIdentifier;
    topicIdentifier = [(PPTopic *)v5 topicIdentifier];
    v8 = topicIdentifier;
    if (v6 | topicIdentifier)
    {
      v9 = 0;
      if (v6 && topicIdentifier)
      {
        v9 = [v6 isEqualToString:topicIdentifier];
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

- (void)encodeWithCoder:(id)coder
{
  topicIdentifier = self->_topicIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:topicIdentifier forKey:@"id"];
  mostRelevantRecord = [(PPTopic *)self mostRelevantRecord];
  [coderCopy encodeObject:mostRelevantRecord forKey:@"rec"];
}

- (PPTopic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rec"];

  if (v5)
  {
    self = [(PPTopic *)self initWithTopicIdentifier:v5 mostRelevantRecord:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v8 = selfCopy;

  return v8;
}

- (PPTopic)initWithTopicIdentifier:(id)identifier mostRelevantRecord:(id)record
{
  identifierCopy = identifier;
  recordCopy = record;
  v10 = recordCopy;
  if (identifierCopy)
  {
    if (recordCopy)
    {
LABEL_3:
      v11 = [[PPTopicWithRecord alloc] initWithTopicIdentifier:identifierCopy mostRelevantRecord:v10];
      goto LABEL_8;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPTopic.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"topicIdentifier"}];

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
    objc_storeStrong(&v13->_topicIdentifier, identifier);
    v15 = [PPTopic clusterIdentifierFromTopicId:identifierCopy];
    clusterIdentifier = v14->_clusterIdentifier;
    v14->_clusterIdentifier = v15;
  }

  v11 = v14;
  self = &v11->super;
LABEL_8:
  p_super = &v11->super;

  return p_super;
}

+ (id)clusterIdentifierFromTopicId:(id)id
{
  idCopy = id;
  v4 = objc_autoreleasePoolPush();
  v5 = idCopy;
  objc_autoreleasePoolPop(v4);

  return v5;
}

@end