@interface ImportantEntitiesTuning
+ (BOOL)evaluateChildrenAndPetsInferenceAcrossParametersInGraph:(id)a3 photoLibrary:(id)a4 progressReporter:(id)a5 error:(id *)a6;
- (_TtC11PhotosGraph23ImportantEntitiesTuning)init;
@end

@implementation ImportantEntitiesTuning

+ (BOOL)evaluateChildrenAndPetsInferenceAcrossParametersInGraph:(id)a3 photoLibrary:(id)a4 progressReporter:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sub_22F1DABD0(v8, v9, v10);

  return 1;
}

- (_TtC11PhotosGraph23ImportantEntitiesTuning)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ImportantEntitiesTuning();
  return [(ImportantEntitiesTuning *)&v3 init];
}

@end