@interface UILabel.MarkdownTapDetector
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtCE8RemoteUICSo7UILabel19MarkdownTapDetector)init;
- (void)didTapLabel:(id)label;
@end

@implementation UILabel.MarkdownTapDetector

- (void)didTapLabel:(id)label
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_21BA864AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x78);
  labelCopy = label;
  selfCopy = self;
  v12(labelCopy);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_21B9CD454(v7);
  }

  else
  {
    v15 = (*(v9 + 32))(v11, v7, v8);
    v16 = (*((*MEMORY[0x277D85000] & selfCopy->super.isa) + 0x58))(v15);
    v16(v11);

    (*(v9 + 8))(v11, v8);
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x78);
  beginCopy = begin;
  selfCopy = self;
  v8(beginCopy);

  v11 = sub_21BA864AC();
  LOBYTE(beginCopy) = (*(*(v11 - 8) + 48))(v7, 1, v11) != 1;
  sub_21B9CD454(v7);
  return beginCopy;
}

- (_TtCE8RemoteUICSo7UILabel19MarkdownTapDetector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end