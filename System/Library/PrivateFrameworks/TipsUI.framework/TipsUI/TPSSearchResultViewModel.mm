@interface TPSSearchResultViewModel
- (BOOL)hasStartedSearch;
- (TPSAppSearchQuery)searchQuery;
- (id)footerForTip:(id)tip;
- (id)tipActionHandler;
- (void)reset;
- (void)setSearchQuery:(id)query;
- (void)setTipActionHandler:(id)handler;
@end

@implementation TPSSearchResultViewModel

- (TPSAppSearchQuery)searchQuery
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_220BCC4C0();

  v4 = OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchQuery;
  swift_beginAccess();
  v5 = *(v7 + v4);

  return v5;
}

- (void)setSearchQuery:(id)query
{
  swift_getKeyPath();
  swift_getKeyPath();
  queryCopy = query;
  selfCopy = self;
  sub_220BCC4C0();

  sub_220BA9234(query);
}

- (BOOL)hasStartedSearch
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_220BCC4C0();

  v5 = sub_220BA9DC8(v4);

  return v5 & 1;
}

- (id)tipActionHandler
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_220BCC4C0();

  v4 = aBlock[0] + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_tipActionHandler;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  sub_220B3A13C(v5);

  if (v5)
  {
    aBlock[4] = v5;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_220B54B5C;
    aBlock[3] = &block_descriptor_11;
    v5 = _Block_copy(aBlock);
  }

  return v5;
}

- (void)setTipActionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_220BC7D10;
  }

  else
  {
    v5 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_220BCC4C0();

  v7 = (v9 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_tipActionHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v4;
  v7[1] = v5;
  sub_220B3A128(v8);
}

- (void)reset
{
  selfCopy = self;
  sub_220BC5198();
}

- (id)footerForTip:(id)tip
{
  tipCopy = tip;
  selfCopy = self;
  SearchResultsViewModel.footer(for:)(tipCopy);
  v7 = v6;

  if (v7)
  {
    v8 = sub_220BCDB70();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end