@interface ResourcesDirector
- (NSString)description;
- (void)photoLibraryDidBecomeUnavailable:(id)unavailable;
@end

@implementation ResourcesDirector

- (NSString)description
{
  swift_getObjectType();
  sub_22FCC9904();
  v2 = sub_22FCC8A54();

  return v2;
}

- (void)photoLibraryDidBecomeUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;

  sub_22FC1C2A4(unavailableCopy);
}

@end