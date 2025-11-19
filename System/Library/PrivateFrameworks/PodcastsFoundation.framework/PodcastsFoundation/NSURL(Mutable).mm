@interface NSURL(Mutable)
- (id)pf_URLByAppendingQueryParameterKey:()Mutable value:;
- (id)pf_URLByAppendingQueryParameters:()Mutable;
- (id)pf_URLByRemovingQueryParameters:()Mutable;
- (id)pf_queryAsDictionary;
@end

@implementation NSURL(Mutable)

- (id)pf_queryAsDictionary
{
  v1 = [a1 query];
  v2 = [NSURLUtil queryStringToQueryDictionary:v1];

  return v2;
}

- (id)pf_URLByAppendingQueryParameters:()Mutable
{
  v4 = a3;
  v5 = [a1 pf_components];
  v6 = [v5 query];
  v7 = [NSURLUtil queryStringToQueryDictionary:v6];

  [v7 addEntriesFromDictionary:v4];
  v8 = [NSURLUtil dictionaryToQueryString:v7];
  [v5 setQuery:v8];

  v9 = [v5 URL];

  return v9;
}

- (id)pf_URLByRemovingQueryParameters:()Mutable
{
  v4 = a3;
  v5 = [a1 pf_components];
  v6 = [v5 query];
  v7 = [NSURLUtil queryStringToQueryDictionary:v6];

  [v7 removeObjectsForKeys:v4];
  v8 = [NSURLUtil dictionaryToQueryString:v7];
  [v5 setQuery:v8];

  v9 = [v5 URL];

  return v9;
}

- (id)pf_URLByAppendingQueryParameterKey:()Mutable value:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v10 = [a1 pf_URLByAppendingQueryParameters:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end