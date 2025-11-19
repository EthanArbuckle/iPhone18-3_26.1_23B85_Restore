@interface CDMCATIBloomFilterUtils
+ (id)getCATIBloomFiltersFromFileURL:(id)a3 error:(id *)a4;
@end

@implementation CDMCATIBloomFilterUtils

+ (id)getCATIBloomFiltersFromFileURL:(id)a3 error:(id *)a4
{
  v11 = 0;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a3 options:1 error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = [[FLTCDMCATIBloomFilters alloc] initWithFlatbuffData:v5];
  }

  else if (a4)
  {
    v9 = v6;
    v8 = 0;
    *a4 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end