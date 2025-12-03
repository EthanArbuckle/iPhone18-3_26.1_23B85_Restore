@interface TVLToneProvider
+ (id)provideToneWithIdentifier:(id)identifier error:(id *)error;
+ (id)urlForResource:(id)resource;
@end

@implementation TVLToneProvider

+ (id)provideToneWithIdentifier:(id)identifier error:(id *)error
{
  v5 = MEMORY[0x277CB8398];
  identifierCopy = identifier;
  v7 = [v5 alloc];
  v8 = [TVLToneProvider urlForResource:identifierCopy];

  v9 = [v7 initForReading:v8 error:error];

  return v9;
}

+ (id)urlForResource:(id)resource
{
  v3 = MEMORY[0x277CCA8D8];
  resourceCopy = resource;
  v5 = [v3 bundleWithIdentifier:@"com.apple.tvlatency"];
  v6 = [v5 pathForResource:@"Tones" ofType:@"bundle"];
  v7 = [v3 bundleWithPath:v6];
  v8 = [v7 URLForResource:resourceCopy withExtension:0];

  return v8;
}

@end