@interface PGCameraStyleableSuggestionGenerator
- (PGCameraStyleableSuggestionGenerator)init;
- (id)generateSuggestionsWithGraphManager:(id)manager progressReporter:(id)reporter;
@end

@implementation PGCameraStyleableSuggestionGenerator

- (id)generateSuggestionsWithGraphManager:(id)manager progressReporter:(id)reporter
{
  managerCopy = manager;
  reporterCopy = reporter;
  selfCopy = self;
  sub_22FB5990C(managerCopy, reporterCopy);

  v9 = sub_22FCC8C24();

  return v9;
}

- (PGCameraStyleableSuggestionGenerator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CameraStyleableSuggestionGenerator();
  return [(PGCameraStyleableSuggestionGenerator *)&v3 init];
}

@end