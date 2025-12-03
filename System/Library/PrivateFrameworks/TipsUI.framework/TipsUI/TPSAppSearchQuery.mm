@interface TPSAppSearchQuery
+ (id)queryWithSearchTerm:(id)term origin:(int64_t)origin;
- (NSString)identifier;
- (NSString)searchTerm;
- (TPSAppSearchQuery)init;
- (TPSAppSearchQuery)initWithSearchTerm:(id)term origin:(int64_t)origin identifier:(id)identifier;
- (int64_t)origin;
- (void)setOrigin:(int64_t)origin;
- (void)setSearchTerm:(id)term;
@end

@implementation TPSAppSearchQuery

- (NSString)identifier
{

  v2 = sub_220BCDB70();

  return v2;
}

- (NSString)searchTerm
{
  v3 = sub_220BCDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___TPSAppSearchQuery__searchTerm;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  sub_220BCDA10();
  (*(v4 + 8))(v6, v3);
  v8 = sub_220BCDB70();

  return v8;
}

- (void)setSearchTerm:(id)term
{
  sub_220BCDBA0();
  swift_beginAccess();
  selfCopy = self;
  sub_220BCDA20();
  swift_endAccess();
}

- (int64_t)origin
{
  v3 = OBJC_IVAR___TPSAppSearchQuery_origin;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setOrigin:(int64_t)origin
{
  v5 = OBJC_IVAR___TPSAppSearchQuery_origin;
  swift_beginAccess();
  *(self + v5) = origin;
}

- (TPSAppSearchQuery)initWithSearchTerm:(id)term origin:(int64_t)origin identifier:(id)identifier
{
  v7 = sub_220BCDBA0();
  if (identifier)
  {
    v9 = v7;
    v10 = v8;
    v11 = sub_220BCDBA0();
    v7 = v9;
    v13 = v12;
    v8 = v10;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  return TPSAppSearchQuery.init(searchTerm:origin:identifier:)(v7, v8, origin, v11, v13);
}

+ (id)queryWithSearchTerm:(id)term origin:(int64_t)origin
{
  v5 = sub_220BCDBA0();
  v7 = v6;
  v8 = objc_allocWithZone(type metadata accessor for TPSAppSearchQuery());
  v9 = TPSAppSearchQuery.init(searchTerm:origin:identifier:)(v5, v7, origin, 0, 0);

  return v9;
}

- (TPSAppSearchQuery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end