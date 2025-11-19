@interface SFShowPhotosOneUpViewCommand(SearchUICommandClass)
- (id)_matchedPerson;
@end

@implementation SFShowPhotosOneUpViewCommand(SearchUICommandClass)

- (id)_matchedPerson
{
  v2 = [a1 matchedPeople];
  if ([v2 count] == 1)
  {
    v3 = [a1 matchedPeople];
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end