@interface CDMCATIBloomFilterUtils
+ (id)getCATIBloomFiltersFromFileURL:(id)l error:(id *)error;
@end

@implementation CDMCATIBloomFilterUtils

+ (id)getCATIBloomFiltersFromFileURL:(id)l error:(id *)error
{
  v11 = 0;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:l options:1 error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = [[FLTCDMCATIBloomFilters alloc] initWithFlatbuffData:v5];
  }

  else if (error)
  {
    v9 = v6;
    v8 = 0;
    *error = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end