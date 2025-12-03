@interface RTLocationOfInterestVisit(RTExtensions)
- (uint64_t)initWithLearnedVisit:()RTExtensions;
@end

@implementation RTLocationOfInterestVisit(RTExtensions)

- (uint64_t)initWithLearnedVisit:()RTExtensions
{
  v4 = a3;
  identifier = [v4 identifier];
  entryDate = [v4 entryDate];
  exitDate = [v4 exitDate];
  location = [v4 location];
  v8Location = [location location];
  [v4 placeConfidence];
  v11 = v10;
  placeSource = [v4 placeSource];

  v13 = [self initWithIdentifier:identifier entry:entryDate exit:exitDate location:v8Location locationOfInterestConfidence:placeSource locationOfInterestSource:v11];
  return v13;
}

@end