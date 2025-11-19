@interface TPSUserGuide
+ (NSString)topicIdentifierKey;
+ (id)getUserGuideFromURL:(id)a3;
+ (id)privateURLWithBookIdentifier:(id)a3 topicIdentifier:(id)a4 version:(id)a5 referrer:(id)a6;
+ (id)urlWithBook:(id)a3 topic:(id)a4 anchor:(id)a5 version:(id)a6 referrer:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSArray)gradientColorStrings;
- (NSString)platform;
- (NSString)topicIdentifier;
- (TPSUserGuide)init;
- (TPSUserGuide)initWithIdentifier:(id)a3 version:(id)a4 text:(id)a5 symbol:(id)a6 platform:(id)a7 platformIndependent:(BOOL)a8 gradientColorStrings:(id)a9;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setTopicIdentifier:(id)a3;
@end

@implementation TPSUserGuide

+ (NSString)topicIdentifierKey
{
  v2 = sub_1C014C200();

  return v2;
}

+ (id)getUserGuideFromURL:(id)a3
{
  v3 = sub_1C014BC50();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C014BBC0();
  v8 = _s8TipsCore9UserGuideC03getcD7FromURL0G0ACSg10FoundationAEV_tFZ_0();
  (*(v4 + 8))(v7, v3);

  return v8;
}

+ (id)privateURLWithBookIdentifier:(id)a3 topicIdentifier:(id)a4 version:(id)a5 referrer:(id)a6
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v30 - v12;
  if (a3)
  {
    sub_1C014C230();
    a3 = v14;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else if (a4)
  {
LABEL_3:
    v15 = sub_1C014C230();
    a4 = v16;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_8:
    v17 = 0;
    v19 = a6;
    if (v19)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  v15 = 0;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v17 = sub_1C014C230();
  a5 = v18;
  v19 = a6;
  if (v19)
  {
LABEL_5:
    v20 = v19;
    v21 = sub_1C014C230();
    v23 = v22;

    goto LABEL_10;
  }

LABEL_9:
  v21 = 0;
  v23 = 0;
LABEL_10:
  static UserGuide.privateURL(bookIdentifier:topicIdentifier:version:referrer:)(a3, v15, a4, v17, a5, v21, v23, v13);

  v24 = sub_1C014BC50();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 48))(v13, 1, v24);
  v27 = 0;
  if (v26 != 1)
  {
    v28 = sub_1C014BBB0();
    (*(v25 + 8))(v13, v24);
    v27 = v28;
  }

  return v27;
}

+ (id)urlWithBook:(id)a3 topic:(id)a4 anchor:(id)a5 version:(id)a6 referrer:(id)a7
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v35 - v14;
  if (a3)
  {
    v36 = sub_1C014C230();
    a3 = v16;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v35 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v36 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v35 = sub_1C014C230();
  a4 = v17;
  if (a5)
  {
LABEL_4:
    v18 = sub_1C014C230();
    a5 = v19;
    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
LABEL_8:
  v20 = a6;
  v21 = a7;
  v22 = v21;
  if (v20)
  {
    v23 = sub_1C014C230();
    v25 = v24;

    if (v22)
    {
LABEL_10:
      v26 = sub_1C014C230();
      v28 = v27;

      goto LABEL_13;
    }
  }

  else
  {
    v23 = 0;
    v25 = 0;
    if (v21)
    {
      goto LABEL_10;
    }
  }

  v26 = 0;
  v28 = 0;
LABEL_13:
  static UserGuide.url(book:topic:anchor:version:referrer:)(a3, v35, a4, v18, a5, v23, v25, v15, v26, v28);

  v29 = sub_1C014BC50();
  v30 = *(v29 - 8);
  v31 = (*(v30 + 48))(v15, 1, v29);
  v32 = 0;
  if (v31 != 1)
  {
    v33 = sub_1C014BBB0();
    (*(v30 + 8))(v15, v29);
    v32 = v33;
  }

  return v32;
}

- (NSArray)gradientColorStrings
{
  v2 = *(self + OBJC_IVAR___TPSUserGuide_gradientColorStrings);

  v3 = sub_1C014C3B0();

  return v3;
}

- (NSString)platform
{
  if (*(self + OBJC_IVAR___TPSUserGuide_platform + 8))
  {
    v2 = *(self + OBJC_IVAR___TPSUserGuide_platform);
    v3 = *(self + OBJC_IVAR___TPSUserGuide_platform + 8);

    v4 = sub_1C014C200();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)topicIdentifier
{
  swift_getKeyPath();
  sub_1C011A644();
  v3 = self;
  sub_1C014BF00();

  v4 = (v3 + OBJC_IVAR___TPSUserGuide__topicIdentifier);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  if (v5)
  {
    v7 = sub_1C014C200();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setTopicIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_1C014C230();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  UserGuide.topicIdentifier.setter(v4, v6);
}

- (TPSUserGuide)initWithIdentifier:(id)a3 version:(id)a4 text:(id)a5 symbol:(id)a6 platform:(id)a7 platformIndependent:(BOOL)a8 gradientColorStrings:(id)a9
{
  v27 = sub_1C014C230();
  v13 = v12;
  if (a4)
  {
    v14 = sub_1C014C230();
    v16 = v15;
    if (a5)
    {
LABEL_3:
      v17 = sub_1C014C230();
      v19 = v18;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
  v19 = 0;
LABEL_6:
  v20 = sub_1C014C230();
  v22 = v21;
  if (a7)
  {
    a7 = sub_1C014C230();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_1C014C3C0();
  return UserGuide.init(identifier:version:text:symbol:platform:platformIndependent:gradientColorStrings:)(v27, v13, v14, v16, v17, v19, v20, v22, a7, v24, a8, v25);
}

- (TPSUserGuide)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  UserGuide.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_1C014C9E0();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  UserGuide.encode(with:)(v4);
}

- (int64_t)hash
{
  v2 = *(self + OBJC_IVAR___TPSUserGuide_identifier);
  v3 = *(self + OBJC_IVAR___TPSUserGuide_identifier + 8);
  v4 = self;
  v5 = MEMORY[0x1C68D6B80](v2, v3);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C014C6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = UserGuide.isEqual(_:)(v8);

  sub_1C00F98F4(v8, &qword_1EBE06490, &qword_1C0155FA0);
  return v6 & 1;
}

@end