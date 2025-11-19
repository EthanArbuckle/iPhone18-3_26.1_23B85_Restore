@interface UAFExperimentalAssetsConfiguration
+ (BOOL)isValid:(id)a3 error:(id *)a4;
- (UAFExperimentalAssetsConfiguration)initWithDictionary:(id)a3;
@end

@implementation UAFExperimentalAssetsConfiguration

+ (BOOL)isValid:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [UAFConfiguration isValidValue:v5 key:@"TrialProject" kind:objc_opt_class() required:1 error:a4]&& [UAFConfiguration isValidValue:v5 key:@"TrialNamespace" kind:objc_opt_class() required:1 error:a4]&& [UAFConfiguration isValidValue:v5 key:@"TrialFactor" kind:objc_opt_class() required:1 error:a4];

  return v6;
}

- (UAFExperimentalAssetsConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UAFExperimentalAssetsConfiguration;
  v5 = [(UAFExperimentalAssetsConfiguration *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"TrialProject"];
    trialProject = v5->_trialProject;
    v5->_trialProject = v6;

    v8 = [v4 objectForKeyedSubscript:@"TrialNamespace"];
    trialNamespace = v5->_trialNamespace;
    v5->_trialNamespace = v8;

    v10 = [v4 objectForKeyedSubscript:@"TrialFactor"];
    trialFactor = v5->_trialFactor;
    v5->_trialFactor = v10;

    v12 = v5;
  }

  return v5;
}

@end