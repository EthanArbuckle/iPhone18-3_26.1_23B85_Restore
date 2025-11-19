@interface IntentDispatcher
- (_TtC12SeymourMedia16IntentDispatcher)init;
- (id)handlerForIntent:(id)a3;
@end

@implementation IntentDispatcher

- (_TtC12SeymourMedia16IntentDispatcher)init
{
  sub_20C4B3570();
  v3 = sub_20C5A08EC();
  sub_20C4744A8(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4958);
  sub_20C59D9EC();

  sub_20C4780E8(&v6, self + OBJC_IVAR____TtC12SeymourMedia16IntentDispatcher_sessionClient);
  v5.receiver = self;
  v5.super_class = type metadata accessor for IntentDispatcher();
  return [(IntentDispatcher *)&v5 init];
}

- (id)handlerForIntent:(id)a3
{
  v4 = a3;
  v5 = self;
  IntentDispatcher.handler(for:)(v4, v13);

  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_20C5A0E8C();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end