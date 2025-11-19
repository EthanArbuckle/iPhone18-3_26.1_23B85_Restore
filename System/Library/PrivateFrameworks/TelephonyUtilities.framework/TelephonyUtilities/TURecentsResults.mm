@interface TURecentsResults
- (id)allSearchItems;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TURecentsResults

- (id)allSearchItems
{
  if ([(TUSearchResults *)self numberOfSections]< 1)
  {
    v5 = 0;
  }

  else
  {
    v3 = [(TUSearchResults *)self resultGroups];
    v4 = [v3 objectAtIndex:0];

    v5 = [v4 results];
    v6 = [v5 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v8.receiver = self;
  v8.super_class = TURecentsResults;
  v6 = [(TUSearchResults *)&v8 copyWithZone:a3];
  if (v6)
  {
    [v5 addSearchResults:v6];
  }

  return v5;
}

@end