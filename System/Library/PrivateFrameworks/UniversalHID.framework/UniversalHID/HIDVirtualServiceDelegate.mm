@interface HIDVirtualServiceDelegate
- (BOOL)setOutputEvent:(id)a3 forService:(id)a4;
- (BOOL)setProperty:(id)a3 forKey:(id)a4 forService:(id)a5;
- (id)copyEventMatching:(id)a3 forService:(id)a4;
- (id)propertyForKey:(id)a3 forService:(id)a4;
- (void)notification:(int64_t)a3 withProperty:(id)a4 forService:(id)a5;
@end

@implementation HIDVirtualServiceDelegate

- (BOOL)setProperty:(id)a3 forKey:(id)a4 forService:(id)a5
{
  if (a3)
  {
    v7 = a4;
    swift_unknownObjectRetain();
    v8 = self;
    swift_unknownObjectRetain();
    sub_2707A8A20();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v17, 0, sizeof(v17));
    v9 = a4;
    swift_unknownObjectRetain();
    v10 = self;
  }

  v11 = sub_2707A85D0();
  v13 = v12;

  sub_2707A8A20();
  swift_unknownObjectRelease();
  v14 = sub_27077D410(v17, v11, v13);

  __swift_destroy_boxed_opaque_existential_1(&v16);
  sub_27077E8F8(v17, &qword_280829D68);
  return v14 & 1;
}

- (id)propertyForKey:(id)a3 forService:(id)a4
{
  sub_2707A85D0();
  swift_unknownObjectRetain();
  v5 = self;
  sub_2707A8A20();
  swift_unknownObjectRelease();
  sub_27077D5B8(&v14);

  __swift_destroy_boxed_opaque_existential_1(v13);
  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(&v14, v15);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7, v7);
    v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v10);
    v11 = sub_2707A8E90();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyEventMatching:(id)a3 forService:(id)a4
{
  if (a3)
  {
    sub_2707A8500();
  }

  swift_unknownObjectRetain();
  v5 = self;
  sub_2707A8A20();
  swift_unknownObjectRelease();
  v6 = OUTLINED_FUNCTION_3_0();

  __swift_destroy_boxed_opaque_existential_1(&v8);
  return v6;
}

- (BOOL)setOutputEvent:(id)a3 forService:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_2707A8A20();
  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_1_0();

  __swift_destroy_boxed_opaque_existential_1(&v9);
  return v7 & 1;
}

- (void)notification:(int64_t)a3 withProperty:(id)a4 forService:(id)a5
{
  if (a4)
  {
    v7 = sub_2707A8500();
  }

  else
  {
    v7 = 0;
  }

  swift_unknownObjectRetain();
  v8 = self;
  sub_2707A8A20();
  swift_unknownObjectRelease();
  nullsub_1(a3, v7, v9);

  __swift_destroy_boxed_opaque_existential_1(v9);
}

@end