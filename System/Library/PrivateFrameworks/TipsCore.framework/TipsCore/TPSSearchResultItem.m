@interface TPSSearchResultItem
- (TPSSearchResultItem)init;
- (TPSSearchResultItem)initWithIdentifier:(id)a3 collectionIdentifier:(id)a4;
- (double)relevance;
- (void)encodeWithCoder:(id)a3;
- (void)setRelevance:(double)a3;
@end

@implementation TPSSearchResultItem

- (double)relevance
{
  v3 = OBJC_IVAR___TPSSearchResultItem_relevance;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRelevance:(double)a3
{
  v5 = OBJC_IVAR___TPSSearchResultItem_relevance;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (TPSSearchResultItem)initWithIdentifier:(id)a3 collectionIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  v6 = sub_1C014C230();
  v8 = v7;
  v9 = sub_1C014C230();
  v10 = (self + OBJC_IVAR___TPSSearchResultItem_correlationIdentifier);
  *v10 = 0;
  v10[1] = 0;
  v11 = (self + OBJC_IVAR___TPSSearchResultItem_contentType);
  *v11 = 0;
  v11[1] = 0;
  v12 = (self + OBJC_IVAR___TPSSearchResultItem_title);
  *v12 = 0;
  v12[1] = 0;
  v13 = (self + OBJC_IVAR___TPSSearchResultItem_body);
  *v13 = 0;
  v13[1] = 0;
  *(self + OBJC_IVAR___TPSSearchResultItem_relevance) = 0x3FF0000000000000;
  v14 = (self + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
  *v14 = v6;
  v14[1] = v8;
  v15 = (self + OBJC_IVAR___TPSSearchResultItem_collectionIdentifier);
  *v15 = v9;
  v15[1] = v16;
  v18.receiver = self;
  v18.super_class = ObjectType;
  return [(TPSSearchResultItem *)&v18 init];
}

- (TPSSearchResultItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SearchResult.Item.encode(with:)(v4);
}

@end