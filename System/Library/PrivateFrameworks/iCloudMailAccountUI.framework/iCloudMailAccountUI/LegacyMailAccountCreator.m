@interface LegacyMailAccountCreator
- (_TtC19iCloudMailAccountUI24LegacyMailAccountCreator)init;
- (id)parentViewControllerForObjectModel:(id)a3;
- (id)sessionConfigurationForLoader:(id)a3;
- (void)loader:(id)a3 didReceiveHTTPResponse:(id)a4 forRequest:(id)a5;
- (void)loader:(id)a3 receivedObjectModel:(id)a4 topActionSignal:(id)a5;
- (void)objectModel:(id)a3 pressedButton:(id)a4 attributes:(id)a5;
- (void)objectModel:(id)a3 pressedLink:(id)a4 httpMethod:(id)a5;
@end

@implementation LegacyMailAccountCreator

- (_TtC19iCloudMailAccountUI24LegacyMailAccountCreator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)loader:(id)a3 didReceiveHTTPResponse:(id)a4 forRequest:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  if (a5)
  {
    sub_27554C4A8();
    v13 = sub_27554C4D8();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = sub_27554C4D8();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  v15 = a3;
  v16 = a4;
  v17 = self;
  sub_2755465EC(a4, v12);

  sub_275514DA8(v12, &qword_2809F60B8, &qword_2755513B8);
}

- (id)sessionConfigurationForLoader:(id)a3
{
  v3 = [objc_opt_self() defaultSessionConfiguration];
  v4 = [objc_allocWithZone(MEMORY[0x277CF0188]) init];
  [v3 set:v4 appleIDContext:?];

  return v3;
}

- (void)loader:(id)a3 receivedObjectModel:(id)a4 topActionSignal:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_275546CA8(a4, a5);
}

- (void)objectModel:(id)a3 pressedLink:(id)a4 httpMethod:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B0, &qword_2755513B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  if (a4)
  {
    sub_27554C5C8();
    v13 = sub_27554C5F8();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = sub_27554C5F8();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  if (a5)
  {
    v15 = sub_27554D338();
    a5 = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = a3;
  v18 = self;
  sub_275545434(a3, v12, v15, a5);

  sub_275514DA8(v12, &qword_2809F60B0, &qword_2755513B0);
}

- (void)objectModel:(id)a3 pressedButton:(id)a4 attributes:(id)a5
{
  if (a4)
  {
    v8 = sub_27554D338();
    v10 = v9;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  v10 = 0;
  if (a5)
  {
LABEL_3:
    sub_27554D2F8();
  }

LABEL_4:
  v11 = a3;
  v12 = self;
  sub_2755473F4(v8, v10);
}

- (id)parentViewControllerForObjectModel:(id)a3
{
  v3 = self;
  v4 = sub_2755421B8();

  return v4;
}

@end