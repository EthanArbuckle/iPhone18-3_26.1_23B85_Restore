@interface StoryColorGradeEditorContentLayout
- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)index inLayout:(id)layout;
- (id)selectedSpriteIndexesInLayout:(id)layout;
- (int64_t)overallSelectionOrderAtSpriteIndex:(unsigned int)index inLayout:(id)layout;
@end

@implementation StoryColorGradeEditorContentLayout

- (id)selectedSpriteIndexesInLayout:(id)layout
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB858130);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  layoutCopy = layout;
  selfCopy = self;
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

- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = sub_1B37A200C();
  result.var3 = v7;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (int64_t)overallSelectionOrderAtSpriteIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  v7 = sub_1B37A2038();

  return v7;
}

@end