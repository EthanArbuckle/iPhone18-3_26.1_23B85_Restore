@interface APPCContentDepiction
- (APPCContentDepiction)init;
- (APPCContentDepiction)initWithIdentifier:(id)identifier adjacentPosition:(unint64_t)position placement:(int64_t)placement language:(id)language locale:(id)locale searchTerms:(id)terms keywords:(id)keywords categories:(id)self0;
- (APPCContentDepiction)initWithIdentifier:(id)identifier placement:(int64_t)placement language:(id)language locale:(id)locale searchTerms:(id)terms keywords:(id)keywords categories:(id)categories;
@end

@implementation APPCContentDepiction

- (APPCContentDepiction)initWithIdentifier:(id)identifier placement:(int64_t)placement language:(id)language locale:(id)locale searchTerms:(id)terms keywords:(id)keywords categories:(id)categories
{
  v9 = sub_1C1B94D88();
  v11 = v10;
  v12 = sub_1C1B94D88();
  v14 = v13;
  v15 = sub_1C1B94D88();
  v17 = v16;
  v18 = sub_1C1B94EC8();
  v19 = sub_1C1B94EC8();
  v20 = sub_1C1B94EC8();
  return ContentDepiction.init(identifier:placement:language:locale:searchTerms:keywords:categories:)(v9, v11, placement, v12, v14, v15, v17, v18, v19, v20);
}

- (APPCContentDepiction)initWithIdentifier:(id)identifier adjacentPosition:(unint64_t)position placement:(int64_t)placement language:(id)language locale:(id)locale searchTerms:(id)terms keywords:(id)keywords categories:(id)self0
{
  v11 = sub_1C1B94D88();
  v13 = v12;
  v26 = sub_1C1B94D88();
  v15 = v14;
  v16 = sub_1C1B94D88();
  v18 = v17;
  v19 = sub_1C1B94EC8();
  v20 = sub_1C1B94EC8();
  v21 = sub_1C1B94EC8();
  v22 = (self + OBJC_IVAR___APPCContentDepiction_identifier);
  *v22 = v11;
  v22[1] = v13;
  *(self + OBJC_IVAR___APPCContentDepiction_adjacentPosition) = position;
  *(self + OBJC_IVAR___APPCContentDepiction_placement) = placement;
  v23 = (self + OBJC_IVAR___APPCContentDepiction_language);
  *v23 = v26;
  v23[1] = v15;
  v24 = (self + OBJC_IVAR___APPCContentDepiction_locale);
  *v24 = v16;
  v24[1] = v18;
  *(self + OBJC_IVAR___APPCContentDepiction_searchTerms) = v19;
  *(self + OBJC_IVAR___APPCContentDepiction_keywords) = v20;
  *(self + OBJC_IVAR___APPCContentDepiction_categories) = v21;
  v29.receiver = self;
  v29.super_class = type metadata accessor for ContentDepiction();
  return [(APPCContentDepiction *)&v29 init];
}

- (APPCContentDepiction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end