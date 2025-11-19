@interface WebViewControllerFactory
- (_TtC8StocksUI24WebViewControllerFactory)init;
- (id)createViewControllerForURL:(id)a3;
@end

@implementation WebViewControllerFactory

- (id)createViewControllerForURL:(id)a3
{
  v4 = sub_220884E9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220884E4C();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v9 = self;
  v10 = sub_220663D20(v8, v12);

  sub_22061550C(v12);
  (*(v5 + 8))(v8, v4);

  return v10;
}

- (_TtC8StocksUI24WebViewControllerFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end