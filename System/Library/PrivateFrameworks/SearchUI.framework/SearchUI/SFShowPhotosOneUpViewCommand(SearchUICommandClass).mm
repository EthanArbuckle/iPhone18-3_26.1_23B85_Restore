@interface SFShowPhotosOneUpViewCommand(SearchUICommandClass)
- (id)_matchedPerson;
@end

@implementation SFShowPhotosOneUpViewCommand(SearchUICommandClass)

- (id)_matchedPerson
{
  matchedPeople = [self matchedPeople];
  if ([matchedPeople count] == 1)
  {
    matchedPeople2 = [self matchedPeople];
    firstObject = [matchedPeople2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end