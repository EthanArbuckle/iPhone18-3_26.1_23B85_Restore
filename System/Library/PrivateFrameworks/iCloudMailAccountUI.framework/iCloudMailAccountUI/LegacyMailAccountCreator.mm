@interface LegacyMailAccountCreator
- (_TtC19iCloudMailAccountUI24LegacyMailAccountCreator)init;
- (id)parentViewControllerForObjectModel:(id)model;
- (id)sessionConfigurationForLoader:(id)loader;
- (void)loader:(id)loader didReceiveHTTPResponse:(id)response forRequest:(id)request;
- (void)loader:(id)loader receivedObjectModel:(id)model topActionSignal:(id)signal;
- (void)objectModel:(id)model pressedButton:(id)button attributes:(id)attributes;
- (void)objectModel:(id)model pressedLink:(id)link httpMethod:(id)method;
@end

@implementation LegacyMailAccountCreator

- (_TtC19iCloudMailAccountUI24LegacyMailAccountCreator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)loader:(id)loader didReceiveHTTPResponse:(id)response forRequest:(id)request
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  if (request)
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

  loaderCopy = loader;
  responseCopy = response;
  selfCopy = self;
  sub_2755465EC(response, v12);

  sub_275514DA8(v12, &qword_2809F60B8, &qword_2755513B8);
}

- (id)sessionConfigurationForLoader:(id)loader
{
  defaultSessionConfiguration = [objc_opt_self() defaultSessionConfiguration];
  v4 = [objc_allocWithZone(MEMORY[0x277CF0188]) init];
  [defaultSessionConfiguration set:v4 appleIDContext:?];

  return defaultSessionConfiguration;
}

- (void)loader:(id)loader receivedObjectModel:(id)model topActionSignal:(id)signal
{
  loaderCopy = loader;
  modelCopy = model;
  signalCopy = signal;
  selfCopy = self;
  sub_275546CA8(model, signal);
}

- (void)objectModel:(id)model pressedLink:(id)link httpMethod:(id)method
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B0, &qword_2755513B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  if (link)
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

  if (method)
  {
    v15 = sub_27554D338();
    method = v16;
  }

  else
  {
    v15 = 0;
  }

  modelCopy = model;
  selfCopy = self;
  sub_275545434(model, v12, v15, method);

  sub_275514DA8(v12, &qword_2809F60B0, &qword_2755513B0);
}

- (void)objectModel:(id)model pressedButton:(id)button attributes:(id)attributes
{
  if (button)
  {
    v8 = sub_27554D338();
    v10 = v9;
    if (!attributes)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  v10 = 0;
  if (attributes)
  {
LABEL_3:
    sub_27554D2F8();
  }

LABEL_4:
  modelCopy = model;
  selfCopy = self;
  sub_2755473F4(v8, v10);
}

- (id)parentViewControllerForObjectModel:(id)model
{
  selfCopy = self;
  v4 = sub_2755421B8();

  return v4;
}

@end