@interface LinkedStockProviderFactory
- (_TtC8StocksUI26LinkedStockProviderFactory)init;
- (id)createLinkedContentProviderForArticle:(id)article;
@end

@implementation LinkedStockProviderFactory

- (id)createLinkedContentProviderForArticle:(id)article
{
  sub_22046DA2C(self + OBJC_IVAR____TtC8StocksUI26LinkedStockProviderFactory_metadataManager, v13);
  v5 = type metadata accessor for LinkedStockProvider();
  v6 = objc_allocWithZone(v5);
  v7 = OBJC_IVAR____TtC8StocksUI19LinkedStockProvider_stocks;
  articleCopy = article;
  selfCopy = self;
  sub_2205CF8EC(MEMORY[0x277D84F90]);
  sub_2206F1048();
  swift_allocObject();
  *&v6[v7] = sub_220888D2C();
  sub_22046DA2C(v13, &v6[OBJC_IVAR____TtC8StocksUI19LinkedStockProvider_metadataManager]);
  v12.receiver = v6;
  v12.super_class = v5;
  v10 = [(LinkedStockProviderFactory *)&v12 init];
  __swift_destroy_boxed_opaque_existential_1(v13);

  return v10;
}

- (_TtC8StocksUI26LinkedStockProviderFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end