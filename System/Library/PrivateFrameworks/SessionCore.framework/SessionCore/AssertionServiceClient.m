@interface AssertionServiceClient
- (BOOL)invalidate:(id)a3 error:(id *)a4;
- (_TtC11SessionCore22AssertionServiceClient)init;
- (void)didInvalidate:(id)a3;
@end

@implementation AssertionServiceClient

- (_TtC11SessionCore22AssertionServiceClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)invalidate:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_22D0141EC();
  v9 = v8;

  sub_22D00740C();
  sub_22CEE7524(v7, v9);
  return 1;
}

- (void)didInvalidate:(id)a3
{
  v5 = sub_22D0154AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3;
  v12 = self;
  v13 = sub_22D0141EC();
  v15 = v14;

  v16 = sub_22D0141DC();
  sub_22D01549C();

  sub_22D006D8C(v10);
  sub_22CEE7524(v13, v15);
  (*(v6 + 8))(v10, v5);
}

@end