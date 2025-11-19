@interface CustomGrid
- (CGSize)intrinsicContentSize;
- (_TtC15RemindersUICoreP33_34792CABF8531B98D43671B0DD1043EB10CustomGrid)initWithArrangedSubviewRows:(id)a3;
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

- (_TtC15RemindersUICoreP33_34792CABF8531B98D43671B0DD1043EB10CustomGrid)initWithArrangedSubviewRows:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
    sub_21DBFA5EC();
    a3 = sub_21DBFA5DC();
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(NUIContainerGridView *)&v8 initWithArrangedSubviewRows:a3];

  return v6;
}

@end