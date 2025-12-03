@interface ATXScoreNormalizationArtifactsArchive
- (ATXScoreNormalizationArtifactsArchive)initWithCoder:(id)coder;
- (ATXScoreNormalizationArtifactsArchive)initWithScoreNormalizationModelsDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXScoreNormalizationArtifactsArchive

- (ATXScoreNormalizationArtifactsArchive)initWithScoreNormalizationModelsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ATXScoreNormalizationArtifactsArchive;
  v6 = [(ATXScoreNormalizationArtifactsArchive *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scoreNormalizationModelsDict, dictionary);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  scoreNormalizationModelsDict = [(ATXScoreNormalizationArtifactsArchive *)self scoreNormalizationModelsDict];
  v6 = [v4 initWithScoreNormalizationModelsDictionary:scoreNormalizationModelsDict];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  scoreNormalizationModelsDict = [(ATXScoreNormalizationArtifactsArchive *)self scoreNormalizationModelsDict];
  [coderCopy encodeObject:scoreNormalizationModelsDict forKey:@"scoreNormalizationModelsDict"];
}

- (ATXScoreNormalizationArtifactsArchive)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"scoreNormalizationModelsDict"];

  if (v10)
  {
    self = [(ATXScoreNormalizationArtifactsArchive *)self initWithScoreNormalizationModelsDictionary:v10];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end