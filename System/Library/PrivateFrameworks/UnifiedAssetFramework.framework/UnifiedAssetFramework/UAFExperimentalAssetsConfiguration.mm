@interface UAFExperimentalAssetsConfiguration
+ (BOOL)isValid:(id)valid error:(id *)error;
- (UAFExperimentalAssetsConfiguration)initWithDictionary:(id)dictionary;
@end

@implementation UAFExperimentalAssetsConfiguration

+ (BOOL)isValid:(id)valid error:(id *)error
{
  validCopy = valid;
  v6 = [UAFConfiguration isValidValue:validCopy key:@"TrialProject" kind:objc_opt_class() required:1 error:error]&& [UAFConfiguration isValidValue:validCopy key:@"TrialNamespace" kind:objc_opt_class() required:1 error:error]&& [UAFConfiguration isValidValue:validCopy key:@"TrialFactor" kind:objc_opt_class() required:1 error:error];

  return v6;
}

- (UAFExperimentalAssetsConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = UAFExperimentalAssetsConfiguration;
  v5 = [(UAFExperimentalAssetsConfiguration *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"TrialProject"];
    trialProject = v5->_trialProject;
    v5->_trialProject = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"TrialNamespace"];
    trialNamespace = v5->_trialNamespace;
    v5->_trialNamespace = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"TrialFactor"];
    trialFactor = v5->_trialFactor;
    v5->_trialFactor = v10;

    v12 = v5;
  }

  return v5;
}

@end