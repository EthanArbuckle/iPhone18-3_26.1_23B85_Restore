@interface TPSUserGuideTopic
+ (BOOL)isValidIdentifier:(id)a3;
+ (NSString)uti;
- (NSString)identifier;
- (NSString)productId;
- (NSURL)supportSiteURL;
- (TPSUserGuideTopic)init;
- (TPSUserGuideTopic)initWithProductIdentifier:(id)a3 topicIdentifier:(id)a4 version:(id)a5;
- (id)searchableItemUniqueIdentifierWith:(id)a3;
- (void)setProductId:(id)a3;
@end

@implementation TPSUserGuideTopic

- (NSString)productId
{
  v2 = (self + OBJC_IVAR___TPSUserGuideTopic_productId);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_1C014C200();

  return v5;
}

- (void)setProductId:(id)a3
{
  v4 = sub_1C014C230();
  v6 = v5;
  v7 = (self + OBJC_IVAR___TPSUserGuideTopic_productId);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

+ (NSString)uti
{
  v2 = sub_1C014C200();

  return v2;
}

- (NSString)identifier
{
  v3 = sub_1C014BD80();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (self + OBJC_IVAR___TPSUserGuideTopic_topicId);
  swift_beginAccess();
  if (v8[1])
  {
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    v11 = self;
    sub_1C014BD70();
    sub_1C014BD50();

    (*(v4 + 8))(v7, v3);
  }

  v12 = sub_1C014C200();

  return v12;
}

+ (BOOL)isValidIdentifier:(id)a3
{
  v3 = sub_1C014C230();
  v4 = objc_allocWithZone(type metadata accessor for UserGuideTopic());
  v5 = UserGuideTopic.init(searchableItemUniqueIdentifier:)(v3);
  v6 = v5;
  if (v5)
  {
  }

  return v6 != 0;
}

- (id)searchableItemUniqueIdentifierWith:(id)a3
{
  v4 = sub_1C014C230();
  v6 = v5;
  v7 = self;
  sub_1C0133FEC(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1C014C200();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (TPSUserGuideTopic)initWithProductIdentifier:(id)a3 topicIdentifier:(id)a4 version:(id)a5
{
  v7 = sub_1C014C230();
  v9 = v8;
  if (!a4)
  {
    v11 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    v14 = 0;
    return UserGuideTopic.init(productIdentifier:topicIdentifier:version:)(v7, v9, a4, v11, v12, v14);
  }

  a4 = sub_1C014C230();
  v11 = v10;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_1C014C230();
  v14 = v13;
  return UserGuideTopic.init(productIdentifier:topicIdentifier:version:)(v7, v9, a4, v11, v12, v14);
}

- (TPSUserGuideTopic)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSURL)supportSiteURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = self;
  UserGuideTopic.supportSiteURL.getter(v6);

  v8 = sub_1C014BC50();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1C014BBB0();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

@end