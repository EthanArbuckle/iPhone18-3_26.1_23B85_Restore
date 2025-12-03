@interface ImportantEntitiesTuning
+ (BOOL)evaluateChildrenAndPetsInferenceAcrossParametersInGraph:(id)graph photoLibrary:(id)library progressReporter:(id)reporter error:(id *)error;
- (_TtC11PhotosGraph23ImportantEntitiesTuning)init;
@end

@implementation ImportantEntitiesTuning

+ (BOOL)evaluateChildrenAndPetsInferenceAcrossParametersInGraph:(id)graph photoLibrary:(id)library progressReporter:(id)reporter error:(id *)error
{
  graphCopy = graph;
  libraryCopy = library;
  reporterCopy = reporter;
  sub_22F1DABD0(graphCopy, libraryCopy, reporterCopy);

  return 1;
}

- (_TtC11PhotosGraph23ImportantEntitiesTuning)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ImportantEntitiesTuning();
  return [(ImportantEntitiesTuning *)&v3 init];
}

@end