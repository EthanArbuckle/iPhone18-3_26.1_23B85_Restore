@interface APPCContentDepiction
- (APPCContentDepiction)init;
- (APPCContentDepiction)initWithIdentifier:(id)a3 adjacentPosition:(unint64_t)a4 placement:(int64_t)a5 language:(id)a6 locale:(id)a7 searchTerms:(id)a8 keywords:(id)a9 categories:(id)a10;
- (APPCContentDepiction)initWithIdentifier:(id)a3 placement:(int64_t)a4 language:(id)a5 locale:(id)a6 searchTerms:(id)a7 keywords:(id)a8 categories:(id)a9;
@end

@implementation APPCContentDepiction

- (APPCContentDepiction)initWithIdentifier:(id)a3 placement:(int64_t)a4 language:(id)a5 locale:(id)a6 searchTerms:(id)a7 keywords:(id)a8 categories:(id)a9
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
  return ContentDepiction.init(identifier:placement:language:locale:searchTerms:keywords:categories:)(v9, v11, a4, v12, v14, v15, v17, v18, v19, v20);
}

- (APPCContentDepiction)initWithIdentifier:(id)a3 adjacentPosition:(unint64_t)a4 placement:(int64_t)a5 language:(id)a6 locale:(id)a7 searchTerms:(id)a8 keywords:(id)a9 categories:(id)a10
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
  *(self + OBJC_IVAR___APPCContentDepiction_adjacentPosition) = a4;
  *(self + OBJC_IVAR___APPCContentDepiction_placement) = a5;
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