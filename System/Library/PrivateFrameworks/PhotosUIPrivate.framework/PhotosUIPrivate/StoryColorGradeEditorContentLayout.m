@interface StoryColorGradeEditorContentLayout
- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)selectedSpriteIndexesInLayout:(id)a3;
- (int64_t)overallSelectionOrderAtSpriteIndex:(unsigned int)a3 inLayout:(id)a4;
@end

@implementation StoryColorGradeEditorContentLayout

- (id)selectedSpriteIndexesInLayout:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB858130);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = a3;
  v9 = self;
  sub_1B37A1DE0(v7);

  v10 = sub_1B3C98248();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) != 1)
  {
    v11 = sub_1B3C981E8();
    (*(*(v10 - 8) + 8))(v7, v10);
  }

  return v11;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = sub_1B37A200C();
  result.var3 = v7;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (int64_t)overallSelectionOrderAtSpriteIndex:(unsigned int)a3 inLayout:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = sub_1B37A2038();

  return v7;
}

@end