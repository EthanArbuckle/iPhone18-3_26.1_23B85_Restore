@interface SSScriptURLHandler
+ (BOOL)shouldHandleSafariScriptURL:(id)a3;
@end

@implementation SSScriptURLHandler

+ (BOOL)shouldHandleSafariScriptURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  v5 = [v4 length];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AF20] componentsWithURL:v3 resolvingAgainstBaseURL:0];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"name=%@", @"action"];
    v9 = [v7 queryItems];
    v10 = [v9 mutableCopy];

    v11 = [v10 filteredArrayUsingPredicate:v8];
    v12 = [v11 firstObject];

    if (v12)
    {
      v13 = [v12 value];
      v6 = [v13 isEqualToString:@"safariscriptdataupdate"];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end