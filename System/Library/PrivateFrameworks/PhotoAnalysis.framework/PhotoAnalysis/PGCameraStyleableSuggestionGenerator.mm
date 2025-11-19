@interface PGCameraStyleableSuggestionGenerator
- (PGCameraStyleableSuggestionGenerator)init;
- (id)generateSuggestionsWithGraphManager:(id)a3 progressReporter:(id)a4;
@end

@implementation PGCameraStyleableSuggestionGenerator

- (id)generateSuggestionsWithGraphManager:(id)a3 progressReporter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22FB5990C(v6, v7);

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