@interface Spatial3DCuration.WallpaperSuggester.SuggestionCandidate
- (BOOL)isEqual:(id)equal;
- (NSDate)creationDate;
- (int64_t)hash;
@end

@implementation Spatial3DCuration.WallpaperSuggester.SuggestionCandidate

- (NSDate)creationDate
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  Spatial3DCuration.WallpaperSuggester.SuggestionCandidate.creationDate.getter(&v8 - v3);
  v5 = sub_1C754DF6C();
  v6 = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
  {
    v6 = sub_1C754DECC();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1C7205618();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C75515CC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1C72059DC(v8);

  sub_1C7030CDC(v8, &qword_1EC219770);
  return v6 & 1;
}

@end