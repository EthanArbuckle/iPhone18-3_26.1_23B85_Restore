@interface RRAnnotatedEntity
- (BOOL)isEqual:(id)equal;
- (NSData)data;
- (NSDate)saliencyComputedAt;
- (NSString)description;
- (void)setDateAnnotationWithKey:(id)key value:(id)value;
- (void)setUserId:(id)id;
@end

@implementation RRAnnotatedEntity

- (NSString)description
{
  selfCopy = self;
  sub_268C64C1C();

  v3 = sub_268C88C74();

  return v3;
}

- (NSData)data
{
  v2 = RRAnnotatedEntity.data.getter();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    v4 = sub_268C88984();
    sub_268C65EE0(v5, v6);
  }

  return v4;
}

- (NSDate)saliencyComputedAt
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_268C6B8A4(&v9 - v4);
  v6 = sub_268C889E4();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    v7 = sub_268C889B4();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  return v7;
}

- (void)setUserId:(id)id
{
  if (id)
  {
    v4 = sub_268C88C84();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_268C74DBC(v4, v6);
}

- (void)setDateAnnotationWithKey:(id)key value:(id)value
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_268C88C84();
  v12 = v11;
  if (value)
  {
    sub_268C889D4();
    v13 = sub_268C889E4();
    v14 = 0;
  }

  else
  {
    v13 = sub_268C889E4();
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v14, 1, v13);
  selfCopy = self;
  sub_268C679A4(v10, v12, v9);

  sub_268C65E88(v9, &qword_2802D47B8, &unk_268C8A5B8);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_268C88DC4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_268C77058(v8);

  sub_268C65E88(v8, &qword_2802D4820, &unk_268C8AA40);
  return v6 & 1;
}

@end