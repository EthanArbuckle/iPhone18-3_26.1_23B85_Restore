@interface _TIPreference
+ (id)preferenceWithKey:(id)key domain:(id)domain defaultValue:(id)value fallbackKey:(id)fallbackKey isAnalyzed:(BOOL)analyzed;
- (NSString)analyzedAtKey;
- (NSString)buildAtChangeKey;
- (NSString)changedAtKey;
- (NSString)previousValueKey;
- (id)approxDateOfBuildInstall;
- (id)buildAtLastAnalysis;
@end

@implementation _TIPreference

- (NSString)changedAtKey
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(_TIPreference *)self key];
  v4 = [v2 stringWithFormat:@"%@_changedAt", v3];

  return v4;
}

- (id)buildAtLastAnalysis
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(_TIPreference *)self key];
  v4 = [v2 stringWithFormat:@"%@_buildAtLastAnalysis", v3];

  return v4;
}

- (NSString)analyzedAtKey
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(_TIPreference *)self key];
  v4 = [v2 stringWithFormat:@"%@_analyzedAt", v3];

  return v4;
}

- (NSString)previousValueKey
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(_TIPreference *)self key];
  v4 = [v2 stringWithFormat:@"%@_previousValue", v3];

  return v4;
}

- (id)approxDateOfBuildInstall
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(_TIPreference *)self key];
  v4 = [v2 stringWithFormat:@"%@_approxDateOfBuildInstall", v3];

  return v4;
}

- (NSString)buildAtChangeKey
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(_TIPreference *)self key];
  v4 = [v2 stringWithFormat:@"%@_buildAtChange", v3];

  return v4;
}

+ (id)preferenceWithKey:(id)key domain:(id)domain defaultValue:(id)value fallbackKey:(id)fallbackKey isAnalyzed:(BOOL)analyzed
{
  analyzedCopy = analyzed;
  fallbackKeyCopy = fallbackKey;
  valueCopy = value;
  domainCopy = domain;
  keyCopy = key;
  v15 = objc_alloc_init(objc_opt_class());
  [v15 setKey:keyCopy];

  [v15 setDomain:domainCopy];
  [v15 setDefaultValue:valueCopy];

  [v15 setFallbackKey:fallbackKeyCopy];
  [v15 setIsAnalyzed:analyzedCopy];

  return v15;
}

@end