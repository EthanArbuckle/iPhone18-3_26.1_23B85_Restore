@interface SSScriptURLHandler
+ (BOOL)shouldHandleSafariScriptURL:(id)l;
@end

@implementation SSScriptURLHandler

+ (BOOL)shouldHandleSafariScriptURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v5 = [host length];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AF20] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"name=%@", @"action"];
    queryItems = [v7 queryItems];
    v10 = [queryItems mutableCopy];

    v11 = [v10 filteredArrayUsingPredicate:v8];
    firstObject = [v11 firstObject];

    if (firstObject)
    {
      value = [firstObject value];
      v6 = [value isEqualToString:@"safariscriptdataupdate"];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end