@interface _TIPreference
+ (id)preferenceWithKey:(id)a3 domain:(id)a4 defaultValue:(id)a5 fallbackKey:(id)a6 isAnalyzed:(BOOL)a7;
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

+ (id)preferenceWithKey:(id)a3 domain:(id)a4 defaultValue:(id)a5 fallbackKey:(id)a6 isAnalyzed:(BOOL)a7
{
  v7 = a7;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc_init(objc_opt_class());
  [v15 setKey:v14];

  [v15 setDomain:v13];
  [v15 setDefaultValue:v12];

  [v15 setFallbackKey:v11];
  [v15 setIsAnalyzed:v7];

  return v15;
}

@end