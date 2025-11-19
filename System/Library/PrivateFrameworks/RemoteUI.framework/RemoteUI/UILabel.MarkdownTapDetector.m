@interface UILabel.MarkdownTapDetector
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtCE8RemoteUICSo7UILabel19MarkdownTapDetector)init;
- (void)didTapLabel:(id)a3;
@end

@implementation UILabel.MarkdownTapDetector

- (void)didTapLabel:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_21BA864AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x78);
  v13 = a3;
  v14 = self;
  v12(v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_21B9CD454(v7);
  }

  else
  {
    v15 = (*(v9 + 32))(v11, v7, v8);
    v16 = (*((*MEMORY[0x277D85000] & v14->super.isa) + 0x58))(v15);
    v16(v11);

    (*(v9 + 8))(v11, v8);
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x78);
  v9 = a3;
  v10 = self;
  v8(v9);

  v11 = sub_21BA864AC();
  LOBYTE(v9) = (*(*(v11 - 8) + 48))(v7, 1, v11) != 1;
  sub_21B9CD454(v7);
  return v9;
}

- (_TtCE8RemoteUICSo7UILabel19MarkdownTapDetector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end