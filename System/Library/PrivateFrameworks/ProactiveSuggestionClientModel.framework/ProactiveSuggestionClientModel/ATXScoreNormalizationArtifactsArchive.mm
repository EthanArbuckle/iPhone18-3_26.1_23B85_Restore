@interface ATXScoreNormalizationArtifactsArchive
- (ATXScoreNormalizationArtifactsArchive)initWithCoder:(id)a3;
- (ATXScoreNormalizationArtifactsArchive)initWithScoreNormalizationModelsDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXScoreNormalizationArtifactsArchive

- (ATXScoreNormalizationArtifactsArchive)initWithScoreNormalizationModelsDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXScoreNormalizationArtifactsArchive;
  v6 = [(ATXScoreNormalizationArtifactsArchive *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scoreNormalizationModelsDict, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(ATXScoreNormalizationArtifactsArchive *)self scoreNormalizationModelsDict];
  v6 = [v4 initWithScoreNormalizationModelsDictionary:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXScoreNormalizationArtifactsArchive *)self scoreNormalizationModelsDict];
  [v4 encodeObject:v5 forKey:@"scoreNormalizationModelsDict"];
}

- (ATXScoreNormalizationArtifactsArchive)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [v5 decodeObjectOfClasses:v9 forKey:@"scoreNormalizationModelsDict"];

  if (v10)
  {
    self = [(ATXScoreNormalizationArtifactsArchive *)self initWithScoreNormalizationModelsDictionary:v10];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end