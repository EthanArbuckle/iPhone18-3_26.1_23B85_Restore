@interface TPSSearchItemIndexer
+ (TPSSearchItemIndexer)default;
- (TPSSearchItemIndexer)init;
- (void)deleteAllItemsWithQualityOfService:(int64_t)a3 completionHandler:(id)a4;
- (void)indexSupportFlows:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5;
- (void)indexTips:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5;
- (void)indexUserGuides:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5;
- (void)reindexCollections:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5;
- (void)reindexTips:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5;
- (void)reindexUserGuides:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation TPSSearchItemIndexer

+ (TPSSearchItemIndexer)default
{
  if (qword_2814E82E0 != -1)
  {
    swift_once();
  }

  v3 = qword_2814E82E8;

  return v3;
}

- (TPSSearchItemIndexer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)indexTips:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  sub_232DB3688(0, &qword_2814E7BC8, 0x277D717B0);
  v8 = sub_232E015D0();
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v7 = sub_232DE8344;
  }

  else
  {
    v9 = 0;
  }

  v10 = self;
  SearchItemIndexer.indexTips(_:qualityOfService:completionHandler:)(v8, a4, v7, v9);
  sub_232DE8110(v7);
}

- (void)indexSupportFlows:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  sub_232DB3688(0, &qword_2814E7C18, 0x277D716D8);
  v8 = sub_232E015D0();
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v7 = sub_232DE8344;
  }

  else
  {
    v9 = 0;
  }

  v10 = self;
  SearchItemIndexer.indexSupportFlows(_:qualityOfService:completionHandler:)(v8, a4, v7, v9);
  sub_232DE8110(v7);
}

- (void)indexUserGuides:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  sub_232E013F0();
  v8 = sub_232E015D0();
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v7 = sub_232DE8344;
  }

  else
  {
    v9 = 0;
  }

  v10 = self;
  SearchItemIndexer.indexUserGuides(_:qualityOfService:completionHandler:)(v8, a4, v7, v9);
  sub_232DE8110(v7);
}

- (void)reindexTips:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  sub_232DB3688(0, &qword_2814E7BC8, 0x277D717B0);
  v8 = sub_232E015D0();
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v7 = sub_232DE8344;
  }

  else
  {
    v9 = 0;
  }

  v10 = self;
  SearchItemIndexer.reindexTips(_:qualityOfService:completionHandler:)(v8, a4, v7, v9);
  sub_232DE8110(v7);
}

- (void)reindexCollections:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  sub_232DB3688(0, &qword_2814E7C18, 0x277D716D8);
  v8 = sub_232E015D0();
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v7 = sub_232DE8344;
  }

  else
  {
    v9 = 0;
  }

  v10 = self;
  SearchItemIndexer.reindexCollections(_:qualityOfService:completionHandler:)(v8, a4, v7, v9);
  sub_232DE8110(v7);
}

- (void)reindexUserGuides:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  sub_232E013F0();
  v8 = sub_232E015D0();
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v7 = sub_232DE8344;
  }

  else
  {
    v9 = 0;
  }

  v10 = self;
  SearchItemIndexer.reindexUserGuides(_:qualityOfService:completionHandler:)(v8, a4, v7, v9);
  sub_232DE8110(v7);
}

- (void)deleteAllItemsWithQualityOfService:(int64_t)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_232DE8120;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  SearchItemIndexer.deleteAllItems(qualityOfService:completionHandler:)(a3, v6, v7);
  sub_232DE8110(v6);
}

@end