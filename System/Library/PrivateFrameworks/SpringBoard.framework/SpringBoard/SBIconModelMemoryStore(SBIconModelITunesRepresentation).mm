@interface SBIconModelMemoryStore(SBIconModelITunesRepresentation)
- (id)initWithITunesRepresentation:()SBIconModelITunesRepresentation;
@end

@implementation SBIconModelMemoryStore(SBIconModelITunesRepresentation)

- (id)initWithITunesRepresentation:()SBIconModelITunesRepresentation
{
  v2 = [SBIconStateArchiver rootArchiveFromITunesRepresentation:?];
  v3 = [SBIconStateArchiver modernizeRootArchive:v2];

  if (v3)
  {
    self = [self initWithCurrentState:v3 desiredState:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end