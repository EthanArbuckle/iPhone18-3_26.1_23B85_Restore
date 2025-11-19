@interface TVLToneProvider
+ (id)provideToneWithIdentifier:(id)a3 error:(id *)a4;
+ (id)urlForResource:(id)a3;
@end

@implementation TVLToneProvider

+ (id)provideToneWithIdentifier:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CB8398];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = [TVLToneProvider urlForResource:v6];

  v9 = [v7 initForReading:v8 error:a4];

  return v9;
}

+ (id)urlForResource:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleWithIdentifier:@"com.apple.tvlatency"];
  v6 = [v5 pathForResource:@"Tones" ofType:@"bundle"];
  v7 = [v3 bundleWithPath:v6];
  v8 = [v7 URLForResource:v4 withExtension:0];

  return v8;
}

@end