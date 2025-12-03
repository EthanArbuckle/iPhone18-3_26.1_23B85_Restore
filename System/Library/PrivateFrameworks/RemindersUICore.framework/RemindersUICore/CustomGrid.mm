@interface CustomGrid
- (CGSize)intrinsicContentSize;
- (_TtC15RemindersUICoreP33_34792CABF8531B98D43671B0DD1043EB10CustomGrid)initWithArrangedSubviewRows:(id)rows;
@end

@implementation CustomGrid

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  v3 = *MEMORY[0x277D77260];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC15RemindersUICoreP33_34792CABF8531B98D43671B0DD1043EB10CustomGrid)initWithArrangedSubviewRows:(id)rows
{
  ObjectType = swift_getObjectType();
  if (rows)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
    sub_21DBFA5EC();
    rows = sub_21DBFA5DC();
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(NUIContainerGridView *)&v8 initWithArrangedSubviewRows:rows];

  return v6;
}

@end