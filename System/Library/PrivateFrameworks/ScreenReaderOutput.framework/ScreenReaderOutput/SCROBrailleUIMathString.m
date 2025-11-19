@interface SCROBrailleUIMathString
- (NSString)calculateRepresentation;
- (NSString)latexRepresentation;
- (NSString)mathMLRepresentation;
- (SCROBrailleUIMathString)init;
@end

@implementation SCROBrailleUIMathString

- (NSString)latexRepresentation
{
  v2 = (&self->super.isa + OBJC_IVAR___SCROBrailleUIMathString_content);
  v3 = v2[3];
  v4 = v2[4];
  v5 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v6 = *(v3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v5, v8);
  v10 = &v13 - v9;
  (*(v6 + 16))(&v13 - v9);
  (*(v4 + 8))(v3, v4);
  (*(v6 + 8))(v10, v3);
  v11 = sub_264982774();

  return v11;
}

- (NSString)mathMLRepresentation
{
  v2 = (&self->super.isa + OBJC_IVAR___SCROBrailleUIMathString_content);
  v3 = v2[3];
  v4 = v2[4];
  v5 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v6 = *(v3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v5, v8);
  v10 = &v13 - v9;
  (*(v6 + 16))(&v13 - v9);
  (*(v4 + 16))(v3, v4);
  (*(v6 + 8))(v10, v3);
  v11 = sub_264982774();

  return v11;
}

- (NSString)calculateRepresentation
{
  v2 = (&self->super.isa + OBJC_IVAR___SCROBrailleUIMathString_content);
  v3 = v2[3];
  v4 = v2[4];
  v5 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v6 = *(v3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v5, v8);
  v10 = &v13 - v9;
  (*(v6 + 16))(&v13 - v9);
  (*(v4 + 24))(v3, v4);
  (*(v6 + 8))(v10, v3);
  v11 = sub_264982774();

  return v11;
}

- (SCROBrailleUIMathString)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end