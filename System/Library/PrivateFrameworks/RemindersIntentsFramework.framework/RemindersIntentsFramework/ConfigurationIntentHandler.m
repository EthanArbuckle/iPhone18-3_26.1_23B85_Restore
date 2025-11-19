@interface ConfigurationIntentHandler
- (_TtC25RemindersIntentsFramework26ConfigurationIntentHandler)init;
- (id)defaultListForConfiguration:(id)a3;
- (void)handleConfiguration:(id)a3 completion:(id)a4;
- (void)provideListOptionsCollectionForConfiguration:(id)a3 searchTerm:(id)a4 withCompletion:(id)a5;
- (void)provideListOptionsForConfiguration:(id)a3 searchTerm:(id)a4 withCompletion:(id)a5;
@end

@implementation ConfigurationIntentHandler

- (void)handleConfiguration:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_261D80B2C(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)provideListOptionsForConfiguration:(id)a3 searchTerm:(id)a4 withCompletion:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = sub_261D86534();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = a3;
  v13 = self;
  sub_261D7C740(v12, v9, a4, sub_261D80DF8, v11);
}

- (void)provideListOptionsCollectionForConfiguration:(id)a3 searchTerm:(id)a4 withCompletion:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = sub_261D86534();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = a3;
  v13 = self;
  sub_261D7C740(v12, v9, a4, sub_261D802F4, v11);
}

- (id)defaultListForConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_261D7F490(v4);

  return v6;
}

- (_TtC25RemindersIntentsFramework26ConfigurationIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end