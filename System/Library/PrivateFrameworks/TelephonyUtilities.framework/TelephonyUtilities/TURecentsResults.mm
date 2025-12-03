@interface TURecentsResults
- (id)allSearchItems;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TURecentsResults

- (id)allSearchItems
{
  if ([(TUSearchResults *)self numberOfSections]< 1)
  {
    results = 0;
  }

  else
  {
    resultGroups = [(TUSearchResults *)self resultGroups];
    v4 = [resultGroups objectAtIndex:0];

    results = [v4 results];
    firstObject = [results firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {

      results = 0;
    }
  }

  return results;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v8.receiver = self;
  v8.super_class = TURecentsResults;
  v6 = [(TUSearchResults *)&v8 copyWithZone:zone];
  if (v6)
  {
    [v5 addSearchResults:v6];
  }

  return v5;
}

@end