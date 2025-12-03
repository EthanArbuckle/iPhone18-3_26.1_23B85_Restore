@interface TPSSearchItemIndexer
+ (TPSSearchItemIndexer)default;
- (TPSSearchItemIndexer)init;
- (void)deleteAllItemsWithQualityOfService:(int64_t)service completionHandler:(id)handler;
- (void)indexSupportFlows:(id)flows qualityOfService:(int64_t)service completionHandler:(id)handler;
- (void)indexTips:(id)tips qualityOfService:(int64_t)service completionHandler:(id)handler;
- (void)indexUserGuides:(id)guides qualityOfService:(int64_t)service completionHandler:(id)handler;
- (void)reindexCollections:(id)collections qualityOfService:(int64_t)service completionHandler:(id)handler;
- (void)reindexTips:(id)tips qualityOfService:(int64_t)service completionHandler:(id)handler;
- (void)reindexUserGuides:(id)guides qualityOfService:(int64_t)service completionHandler:(id)handler;
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

- (void)indexTips:(id)tips qualityOfService:(int64_t)service completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
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

  selfCopy = self;
  SearchItemIndexer.indexTips(_:qualityOfService:completionHandler:)(v8, service, v7, v9);
  sub_232DE8110(v7);
}

- (void)indexSupportFlows:(id)flows qualityOfService:(int64_t)service completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
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

  selfCopy = self;
  SearchItemIndexer.indexSupportFlows(_:qualityOfService:completionHandler:)(v8, service, v7, v9);
  sub_232DE8110(v7);
}

- (void)indexUserGuides:(id)guides qualityOfService:(int64_t)service completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
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

  selfCopy = self;
  SearchItemIndexer.indexUserGuides(_:qualityOfService:completionHandler:)(v8, service, v7, v9);
  sub_232DE8110(v7);
}

- (void)reindexTips:(id)tips qualityOfService:(int64_t)service completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
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

  selfCopy = self;
  SearchItemIndexer.reindexTips(_:qualityOfService:completionHandler:)(v8, service, v7, v9);
  sub_232DE8110(v7);
}

- (void)reindexCollections:(id)collections qualityOfService:(int64_t)service completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
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

  selfCopy = self;
  SearchItemIndexer.reindexCollections(_:qualityOfService:completionHandler:)(v8, service, v7, v9);
  sub_232DE8110(v7);
}

- (void)reindexUserGuides:(id)guides qualityOfService:(int64_t)service completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
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

  selfCopy = self;
  SearchItemIndexer.reindexUserGuides(_:qualityOfService:completionHandler:)(v8, service, v7, v9);
  sub_232DE8110(v7);
}

- (void)deleteAllItemsWithQualityOfService:(int64_t)service completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
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

  selfCopy = self;
  SearchItemIndexer.deleteAllItems(qualityOfService:completionHandler:)(service, v6, v7);
  sub_232DE8110(v6);
}

@end