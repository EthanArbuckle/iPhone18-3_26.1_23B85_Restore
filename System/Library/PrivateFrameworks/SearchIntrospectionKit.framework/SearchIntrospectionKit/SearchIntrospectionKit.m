uint64_t sub_264E637FC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FFB71C0;
  return result;
}

uint64_t sub_264E63848(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FFB71C0 = v1;
  return result;
}

uint64_t sub_264E63890@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FFB7300;
  return result;
}

uint64_t sub_264E638DC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FFB7300 = v1;
  return result;
}

uint64_t sub_264E63924@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FFB7370;
  return result;
}

uint64_t sub_264E63970(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FFB7370 = v1;
  return result;
}

double sub_264E639F4@<D0>(_OWORD *a1@<X8>)
{
  result = 1.89253894e26;
  *a1 = xmmword_264E8BA90;
  return result;
}

__n128 sub_264E63A14(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_264E63A20@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

id sub_264E63A50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22SearchIntrospectionKit10SIResponse_query;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_264E63ABC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22SearchIntrospectionKit10SIResponse_resultSections;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_264E63B1C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FFB7790;
  return result;
}

uint64_t sub_264E63B68(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FFB7790 = v1;
  return result;
}

uint64_t sub_264E63BB0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FFB7830;
  return result;
}

uint64_t sub_264E63BFC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FFB7830 = v1;
  return result;
}

uint64_t sub_264E63C44@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FFB7870;
  return result;
}

uint64_t sub_264E63C90(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FFB7870 = v1;
  return result;
}

uint64_t sub_264E63CD8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FFB78C0;
  return result;
}

uint64_t sub_264E63D24(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FFB78C0 = v1;
  return result;
}

uint64_t sub_264E63D6C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264E63DBC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  sub_264E658D4(v0[6], v0[7]);
  v3 = v0[8];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_264E63EC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264E63F04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_264E63F44()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

double Duration.timeInterval.getter()
{
  v0 = sub_264E89F14();
  sub_264E89F14();
  return v1 / 1.0e18 + v0;
}

uint64_t Duration.init(timeInterval:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = trunc(a3);
  if (v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = (a3 - v3) * 1000000000.0 * 1000000000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 < 9.22337204e18)
  {
    return MEMORY[0x2821FE630](v3, v4);
  }

LABEL_12:
  __break(1u);
  return MEMORY[0x2821FE630](a1, a2);
}

uint64_t sub_264E640C0()
{
  sub_264E89EB4();
  sub_264E89A04();
  return sub_264E89EE4();
}

uint64_t sub_264E6413C()
{
  sub_264E89EB4();
  sub_264E89A04();
  return sub_264E89EE4();
}

uint64_t sub_264E64194@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_264E89D24();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_264E6422C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_264E89D24();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_264E64290(uint64_t a1)
{
  v2 = sub_264E647CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264E642CC(uint64_t a1)
{
  v2 = sub_264E647CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MailQuery.queryString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryString);
  v2 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryString + 8);

  return v1;
}

uint64_t MailQuery.queryIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryIdentifier + 8);

  return v1;
}

uint64_t static MailQuery.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FFB71C0 = a1;
  return result;
}

void *MailQuery.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB71D8, &qword_264E8AE50);
  v6 = *(v26 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v23 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264E647CC();
  sub_264E89EF4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v6;
    v13 = v26;
    v14 = sub_264E89D74();
    v16 = &v3[OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryString];
    *v16 = v14;
    v16[1] = v17;
    v18 = v14;
    v19 = v17;

    v24 = sub_264E6486C(v18, v19);
    v21 = v20;

    v22 = &v3[OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryIdentifier];
    *v22 = v24;
    v22[1] = v21;
    v25.receiver = v3;
    v25.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v25, sel_init);
    (*(v12 + 8))(v9, v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_264E647CC()
{
  result = qword_27FFB71E0;
  if (!qword_27FFB71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB71E0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_264E6486C(uint64_t a1, unint64_t a2)
{
  v4 = sub_264E89904();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_264E898F4();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = sub_264E6ADB4(a1, a2);
  v15 = v14;
  sub_264E65838(&qword_281228B98, 255, MEMORY[0x277CC5540]);
  sub_264E898E4();
  sub_264E65880(v13, v15);
  sub_264E6BDB8(v13, v15);
  sub_264E658D4(v13, v15);
  sub_264E898D4();
  (*(v5 + 8))(v8, v4);
  v20 = sub_264E6B2C4(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFB7290, &qword_264E8B058);
  sub_264E65928();
  v16 = sub_264E899A4();
  sub_264E658D4(v13, v15);
  (*(v9 + 8))(v12, v19);

  return v16;
}

uint64_t MailQuery.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB71E8, &qword_264E8AE58);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264E647CC();
  sub_264E89F04();
  v10 = *(v2 + OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryString);
  v11 = *(v2 + OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryString + 8);
  sub_264E89DC4();
  return (*(v5 + 8))(v8, v4);
}

id MailQuery.__allocating_init(withQueryString:)(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryString];
  *v6 = a1;
  v6[1] = a2;

  v7 = sub_264E6486C(a1, a2);
  v9 = v8;

  v10 = &v5[OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryIdentifier];
  *v10 = v7;
  v10[1] = v9;
  v12.receiver = v5;
  v12.super_class = v2;
  return objc_msgSendSuper2(&v12, sel_init);
}

id MailQuery.init(withQueryString:)(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryString];
  *v6 = a1;
  v6[1] = a2;

  v7 = sub_264E6486C(a1, a2);
  v9 = v8;

  v10 = &v2[OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryIdentifier];
  *v10 = v7;
  v10[1] = v9;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t MailQuery.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  objc_allocWithZone(v2);
  sub_264E64FA0();
  v4 = sub_264E89C04();
  if (v4)
  {
    v7 = 0;
    v5 = v4;
    sub_264E899C4();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t MailQuery.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_264E64FA0();
  v2 = sub_264E89C04();
  if (v2)
  {
    v5 = 0;
    v3 = v2;
    sub_264E899C4();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_264E64FA0()
{
  result = qword_27FFB71F0;
  if (!qword_27FFB71F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFB71F0);
  }

  return result;
}

Swift::Void __swiftcall MailQuery.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryString);
  v4 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryString + 8);
  v5 = sub_264E899B4();
  v6 = sub_264E899B4();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

id MailQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MailQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264E65284()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryString);
  v2 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryString + 8);

  return v1;
}

uint64_t sub_264E652C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryIdentifier + 8);

  return v1;
}

id sub_264E652FC(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryString];
  *v6 = a1;
  v6[1] = a2;

  v7 = sub_264E6486C(a1, a2);
  v9 = v8;

  v10 = &v5[OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryIdentifier];
  *v10 = v7;
  v10[1] = v9;
  v12.receiver = v5;
  v12.super_class = v2;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_264E6539C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_264E65838(&qword_27FFB71F8, a2, type metadata accessor for MailQuery);
  result = sub_264E65838(&unk_27FFB7200, v3, type metadata accessor for MailQuery);
  *(a1 + 16) = result;
  return result;
}

void *sub_264E65444@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = MailQuery.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_264E65494(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB71E8, &qword_264E8AE58);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264E647CC();
  sub_264E89F04();
  v10 = *(v8 + OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryString);
  v11 = *(v8 + OBJC_IVAR____TtC22SearchIntrospectionKit9MailQuery_queryString + 8);
  sub_264E89DC4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t getEnumTagSinglePayload for MailQuery.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MailQuery.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_264E65734()
{
  result = qword_27FFB7270;
  if (!qword_27FFB7270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7270);
  }

  return result;
}

unint64_t sub_264E6578C()
{
  result = qword_27FFB7278;
  if (!qword_27FFB7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7278);
  }

  return result;
}

unint64_t sub_264E657E4()
{
  result = qword_27FFB7280;
  if (!qword_27FFB7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7280);
  }

  return result;
}

uint64_t sub_264E65838(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_264E65880(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_264E658D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_264E65928()
{
  result = qword_281228B88;
  if (!qword_281228B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FFB7290, &qword_264E8B058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281228B88);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_264E659D8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_264E89D24();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_264E65A2C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_264E89D24();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_264E65A84(uint64_t a1)
{
  v2 = sub_264E65F30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264E65AC0(uint64_t a1)
{
  v2 = sub_264E65F30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SettingsQuery.queryString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryString);
  v2 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryString + 8);

  return v1;
}

uint64_t SettingsQuery.queryIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryIdentifier + 8);

  return v1;
}

uint64_t static SettingsQuery.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FFB7300 = a1;
  return result;
}

void *SettingsQuery.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7318, &qword_264E8B070);
  v6 = *(v26 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v23 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264E65F30();
  sub_264E89EF4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v6;
    v13 = v26;
    v14 = sub_264E89D74();
    v16 = &v3[OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryString];
    *v16 = v14;
    v16[1] = v17;
    v18 = v14;
    v19 = v17;

    v24 = sub_264E659D4(v18, v19);
    v21 = v20;

    v22 = &v3[OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryIdentifier];
    *v22 = v24;
    v22[1] = v21;
    v25.receiver = v3;
    v25.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v25, sel_init);
    (*(v12 + 8))(v9, v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

unint64_t sub_264E65F30()
{
  result = qword_27FFB7320;
  if (!qword_27FFB7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7320);
  }

  return result;
}

uint64_t SettingsQuery.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFB7328, &qword_264E8B078);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264E65F30();
  sub_264E89F04();
  v10 = *(v2 + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryString);
  v11 = *(v2 + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryString + 8);
  sub_264E89DC4();
  return (*(v5 + 8))(v8, v4);
}

id SettingsQuery.__allocating_init(withQueryString:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryString];
  *v6 = a1;
  *(v6 + 1) = a2;

  v7 = sub_264E659D4(a1, a2);
  v9 = v8;

  v10 = &v5[OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryIdentifier];
  *v10 = v7;
  v10[1] = v9;
  v12.receiver = v5;
  v12.super_class = v2;
  return objc_msgSendSuper2(&v12, sel_init);
}

id SettingsQuery.init(withQueryString:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryString];
  *v6 = a1;
  *(v6 + 1) = a2;

  v7 = sub_264E659D4(a1, a2);
  v9 = v8;

  v10 = &v2[OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryIdentifier];
  *v10 = v7;
  v10[1] = v9;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t SettingsQuery.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  objc_allocWithZone(v2);
  sub_264E64FA0();
  v4 = sub_264E89C04();
  if (v4)
  {
    v7 = 0;
    v5 = v4;
    sub_264E899C4();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t SettingsQuery.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_264E64FA0();
  v2 = sub_264E89C04();
  if (v2)
  {
    v5 = 0;
    v3 = v2;
    sub_264E899C4();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall SettingsQuery.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryString);
  v4 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryString + 8);
  v5 = sub_264E899B4();
  v6 = sub_264E899B4();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

id SettingsQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SettingsQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264E666D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryString);
  v2 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryString + 8);

  return v1;
}

uint64_t sub_264E6670C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryIdentifier + 8);

  return v1;
}

id sub_264E66748(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryString];
  *v6 = a1;
  *(v6 + 1) = a2;

  v7 = sub_264E659D4(a1, a2);
  v9 = v8;

  v10 = &v5[OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryIdentifier];
  *v10 = v7;
  v10[1] = v9;
  v12.receiver = v5;
  v12.super_class = v2;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_264E667E8(uint64_t a1)
{
  *(a1 + 8) = sub_264E66874(&qword_27FFB7338);
  result = sub_264E66874(&unk_27FFB7340);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_264E66874(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SettingsQuery();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_264E668B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = SettingsQuery.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_264E66904(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFB7328, &qword_264E8B078);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264E65F30();
  sub_264E89F04();
  v10 = *(v8 + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryString);
  v11 = *(v8 + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryString + 8);
  sub_264E89DC4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_264E66AC4()
{
  result = qword_27FFB7350;
  if (!qword_27FFB7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7350);
  }

  return result;
}

unint64_t sub_264E66B1C()
{
  result = qword_27FFB7358;
  if (!qword_27FFB7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7358);
  }

  return result;
}

unint64_t sub_264E66B74()
{
  result = qword_27FFB7360;
  if (!qword_27FFB7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7360);
  }

  return result;
}

uint64_t sub_264E66BC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6C6576654C706F74;
    }

    else
    {
      v4 = 0x7274537972657571;
    }

    if (v2)
    {
      v3 = 0xEE007265746C6946;
    }

    else
    {
      v3 = 0xEB00000000676E69;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xD000000000000012;
    v3 = 0x8000000264E8D690;
  }

  else if (a1 == 3)
  {
    v3 = 0x8000000264E8D6B0;
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x6C69467972657571;
    v3 = 0xEB00000000726574;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6C6576654C706F74;
    }

    else
    {
      v6 = 0x7274537972657571;
    }

    if (a2)
    {
      v5 = 0xEE007265746C6946;
    }

    else
    {
      v5 = 0xEB00000000676E69;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x8000000264E8D690;
    if (v4 != 0xD000000000000012)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x8000000264E8D6B0;
    if (v4 != 0xD000000000000013)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEB00000000726574;
    if (v4 != 0x6C69467972657571)
    {
LABEL_31:
      v7 = sub_264E89DF4();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_264E66DB4()
{
  v1 = *v0;
  sub_264E89EB4();
  sub_264E89A04();

  return sub_264E89EE4();
}

uint64_t sub_264E66EB8()
{
  *v0;
  *v0;
  *v0;
  sub_264E89A04();
}

uint64_t sub_264E66FA8()
{
  v1 = *v0;
  sub_264E89EB4();
  sub_264E89A04();

  return sub_264E89EE4();
}

uint64_t sub_264E670A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_264E68EFC();
  *a2 = result;
  return result;
}

void sub_264E670D8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000676E69;
  v4 = 0x7274537972657571;
  v5 = 0xD000000000000012;
  v6 = 0x8000000264E8D690;
  v7 = 0x8000000264E8D6B0;
  v8 = 0xD000000000000013;
  if (v2 != 3)
  {
    v8 = 0x6C69467972657571;
    v7 = 0xEB00000000726574;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C6576654C706F74;
    v3 = 0xEE007265746C6946;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_264E67198()
{
  v1 = *v0;
  v2 = 0x7274537972657571;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x6C69467972657571;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C6576654C706F74;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_264E67254@<X0>(_BYTE *a1@<X8>)
{
  result = sub_264E68EFC();
  *a1 = result;
  return result;
}

uint64_t sub_264E67288(uint64_t a1)
{
  v2 = sub_264E67C24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264E672C4(uint64_t a1)
{
  v2 = sub_264E67C24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SpotlightQuery.queryString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryString);
  v2 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryString + 8);

  return v1;
}

uint64_t SpotlightQuery.queryIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryIdentifier + 8);

  return v1;
}

uint64_t static SpotlightQuery.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FFB7370 = a1;
  return result;
}

uint64_t SpotlightQuery.queryFilter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryFilter;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;
  return sub_264E67544(v4, v5, v6);
}

uint64_t sub_264E67544(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_264E6755C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_264E6755C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_264E67568(a1, a2);
  }

  return a1;
}

uint64_t sub_264E67568(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
  }

  return result;
}

uint64_t SpotlightQuery.queryFilter.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryFilter;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = v2;
  *(v5 + 8) = v3;
  v8 = *(v5 + 16);
  *(v5 + 16) = v4;
  return sub_264E675EC(v6, v7, v8);
}

uint64_t sub_264E675EC(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_264E67604(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_264E67604(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_264E67610(a1, a2);
  }

  return a1;
}

uint64_t sub_264E67610(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
  }

  return result;
}

uint64_t SpotlightQuery.topLevelFilter.getter@<X0>(char *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryFilter);
  result = swift_beginAccess();
  v5 = *v3;
  if (v3[16])
  {
    v5 = 4;
  }

  *a1 = v5;
  return result;
}

uint64_t SpotlightQuery.spotlightQueryKind.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_spotlightQueryKind;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t SpotlightQuery.spotlightQueryKind.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_spotlightQueryKind;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

double SpotlightQuery.spotlightFilterType.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryFilter;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (v4 == 255 || (v4 & 1) == 0)
  {
    result = 0.0;
    *a1 = xmmword_264E8B280;
  }

  else
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    *a1 = *v3;
    *(a1 + 8) = v6;
    sub_264E6755C(v5, v6, 1);
  }

  return result;
}

id SpotlightQuery.init(from:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7398, &qword_264E8B2A0);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v36 - v7;
  v9 = &v1[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryFilter];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = -1;
  v10 = OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_spotlightQueryKind;
  v11 = v1;
  v1[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_spotlightQueryKind] = 0;
  v13 = a1[3];
  v12 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_264E67C24();
  v14 = v8;
  sub_264E89EF4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
    sub_264E675EC(*v9, *(v9 + 1), v9[16]);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v37 = v10;
    v46 = 0;
    v15 = v38;
    v16 = v8;
    v17 = sub_264E89D74();
    v19 = v11;
    v20 = &v11[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryString];
    *v20 = v17;
    v20[1] = v21;
    v22 = v17;
    v23 = v15;
    v24 = v21;

    v25 = sub_264E659D4(v22, v24);
    v27 = v26;
    v28 = v23;

    v29 = &v19[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryIdentifier];
    *v29 = v25;
    v29[1] = v27;
    v46 = 4;
    sub_264E67C78();
    sub_264E89D64();
    v36 = v29;
    v30 = v43;
    v31 = v44;
    LOBYTE(v27) = v45;
    swift_beginAccess();
    v32 = *v9;
    v33 = *(v9 + 1);
    *v9 = v30;
    *(v9 + 1) = v31;
    v34 = v9[16];
    v9[16] = v27;
    sub_264E675EC(v32, v33, v34);
    v47 = 2;
    sub_264E67CCC();
    sub_264E89D64();
    LOBYTE(v30) = v43;
    v35 = v37;
    swift_beginAccess();
    v19[v35] = v30 & 1;
    v42.receiver = v19;
    v42.super_class = ObjectType;
    v14 = objc_msgSendSuper2(&v42, sel_init);
    (*(v39 + 8))(v16, v28);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  return v14;
}

unint64_t sub_264E67C24()
{
  result = qword_27FFB73A0;
  if (!qword_27FFB73A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB73A0);
  }

  return result;
}

unint64_t sub_264E67C78()
{
  result = qword_27FFB73A8;
  if (!qword_27FFB73A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB73A8);
  }

  return result;
}

unint64_t sub_264E67CCC()
{
  result = qword_27FFB73B0;
  if (!qword_27FFB73B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB73B0);
  }

  return result;
}

uint64_t SpotlightQuery.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB73B8, &qword_264E8B2A8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264E67C24();
  sub_264E89F04();
  v11 = *(v3 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryString);
  v12 = *(v3 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryString + 8);
  v23 = 0;
  sub_264E89DC4();
  if (!v2)
  {
    v13 = v3 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryFilter;
    swift_beginAccess();
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v19 = *v13;
    v20 = v14;
    v21 = v15;
    v22 = 4;
    sub_264E67544(v19, v14, v15);
    sub_264E67F3C();
    sub_264E89DB4();
    sub_264E675EC(v19, v20, v21);
    v16 = OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_spotlightQueryKind;
    swift_beginAccess();
    v22 = *(v3 + v16);
    v18[7] = 2;
    sub_264E67F90();
    sub_264E89DD4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_264E67F3C()
{
  result = qword_27FFB73C0;
  if (!qword_27FFB73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB73C0);
  }

  return result;
}

unint64_t sub_264E67F90()
{
  result = qword_27FFB73C8;
  if (!qword_27FFB73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB73C8);
  }

  return result;
}

id SpotlightQuery.__allocating_init(withQueryString:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryFilter];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = -1;
  v5[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_spotlightQueryKind] = 0;
  v7 = &v5[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryString];
  *v7 = a1;
  v7[1] = a2;

  v8 = sub_264E659D4(a1, a2);
  v10 = v9;

  v11 = &v5[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryIdentifier];
  *v11 = v8;
  v11[1] = v10;
  v13.receiver = v5;
  v13.super_class = v2;
  return objc_msgSendSuper2(&v13, sel_init);
}

id SpotlightQuery.init(withQueryString:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryFilter];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = -1;
  v2[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_spotlightQueryKind] = 0;
  v7 = &v2[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryString];
  *v7 = a1;
  v7[1] = a2;

  v8 = sub_264E659D4(a1, a2);
  v10 = v9;

  v11 = &v2[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryIdentifier];
  *v11 = v8;
  v11[1] = v10;
  v13.receiver = v2;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t SpotlightQuery.init(coder:)(void *a1)
{
  swift_getObjectType();
  v3 = v1 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryFilter;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = -1;
  *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_spotlightQueryKind) = 0;
  sub_264E68514(0, &qword_27FFB71F0, 0x277CCACA8);
  v4 = sub_264E89C04();
  if (v4)
  {
    v7 = 0;
    v8 = 0;
    v5 = v4;
    sub_264E899C4();
  }

  sub_264E675EC(*v3, *(v3 + 8), *(v3 + 16));
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_264E68514(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_264E6855C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_264E658D4(a1, a2);
  }

  return a1;
}

Swift::Void __swiftcall SpotlightQuery.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryString);
  v4 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryString + 8);
  v5 = sub_264E899B4();
  v6 = sub_264E899B4();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_spotlightQueryKind;
  swift_beginAccess();
  *(v1 + v7);
  *(v1 + v7);
  v8 = sub_264E899B4();

  v9 = sub_264E899B4();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

  v10 = v1 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryFilter;
  swift_beginAccess();
  v11 = *(v10 + 16);
  if (v11 != 255)
  {
    v13 = *v10;
    v12 = *(v10 + 8);
    v14 = sub_264E89704();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_264E6755C(v13, v12, v11 & 1);
    sub_264E896F4();
    sub_264E67F3C();
    v17 = sub_264E896E4();
    v19 = v18;

    sub_264E675EC(v13, v12, v11);
    v20 = sub_264E89834();
    v21 = sub_264E899B4();
    [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];

    sub_264E658D4(v17, v19);
  }
}

id SpotlightQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpotlightQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264E689A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryString);
  v2 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryString + 8);

  return v1;
}

uint64_t sub_264E689E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryIdentifier + 8);

  return v1;
}

id sub_264E68A1C(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryFilter];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = -1;
  v5[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_spotlightQueryKind] = 0;
  v7 = &v5[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryString];
  *v7 = a1;
  v7[1] = a2;

  v8 = sub_264E659D4(a1, a2);
  v10 = v9;

  v11 = &v5[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryIdentifier];
  *v11 = v8;
  v11[1] = v10;
  v13.receiver = v5;
  v13.super_class = v2;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_264E68AE0(uint64_t a1)
{
  *(a1 + 8) = sub_264E68B6C(&qword_27FFB73D0);
  result = sub_264E68B6C(&unk_27FFB73D8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_264E68B6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SpotlightQuery();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_264E68BAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = SpotlightQuery.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpotlightQuery.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpotlightQuery.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264E68DF8()
{
  result = qword_27FFB73E8;
  if (!qword_27FFB73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB73E8);
  }

  return result;
}

unint64_t sub_264E68E50()
{
  result = qword_27FFB73F0;
  if (!qword_27FFB73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB73F0);
  }

  return result;
}

unint64_t sub_264E68EA8()
{
  result = qword_27FFB73F8;
  if (!qword_27FFB73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB73F8);
  }

  return result;
}

uint64_t sub_264E68EFC()
{
  v0 = sub_264E89D24();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_264E68F64()
{
  v1 = *v0;
  sub_264E89EB4();
  MEMORY[0x266751170](v1);
  return sub_264E89EE4();
}

uint64_t sub_264E68FD8()
{
  v1 = *v0;
  sub_264E89EB4();
  MEMORY[0x266751170](v1);
  return sub_264E89EE4();
}

uint64_t sub_264E6901C()
{
  if (*v0)
  {
    result = 0x6867696C746F7073;
  }

  else
  {
    result = 0x6C6576654C706F74;
  }

  *v0;
  return result;
}

uint64_t sub_264E69068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6576654C706F74 && a2 == 0xEE007265746C6946;
  if (v6 || (sub_264E89DF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6867696C746F7073 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264E89DF4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_264E69160(uint64_t a1)
{
  v2 = sub_264E69700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264E6919C(uint64_t a1)
{
  v2 = sub_264E69700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264E691E4(uint64_t a1)
{
  v2 = sub_264E69754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264E69220(uint64_t a1)
{
  v2 = sub_264E69754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264E6925C()
{
  sub_264E89EB4();
  MEMORY[0x266751170](0);
  return sub_264E89EE4();
}

uint64_t sub_264E692A0()
{
  sub_264E89EB4();
  MEMORY[0x266751170](0);
  return sub_264E89EE4();
}

uint64_t sub_264E692E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264E89DF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_264E69360(uint64_t a1)
{
  v2 = sub_264E697FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264E6939C(uint64_t a1)
{
  v2 = sub_264E697FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SpotlightQueryFilter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7400, &qword_264E8B4B0);
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7408, &qword_264E8B4B8);
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v22 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7410, &qword_264E8B4C0);
  v11 = *(v29 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v22 - v13;
  v15 = v1[1];
  v28 = *v1;
  v23 = v15;
  v16 = *(v1 + 16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264E69700();
  sub_264E89F04();
  if (v16)
  {
    LOBYTE(v30) = 1;
    sub_264E69754();
    v18 = v29;
    sub_264E89DA4();
    v30 = v28;
    v31 = v23;
    sub_264E697A8();
    v19 = v27;
    sub_264E89DD4();
    (*(v26 + 8))(v6, v19);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_264E697FC();
    v18 = v29;
    sub_264E89DA4();
    LOBYTE(v30) = v28;
    sub_264E69850();
    v20 = v25;
    sub_264E89DD4();
    (*(v24 + 8))(v10, v20);
  }

  return (*(v11 + 8))(v14, v18);
}

unint64_t sub_264E69700()
{
  result = qword_27FFB7418;
  if (!qword_27FFB7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7418);
  }

  return result;
}

unint64_t sub_264E69754()
{
  result = qword_27FFB7420;
  if (!qword_27FFB7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7420);
  }

  return result;
}

unint64_t sub_264E697A8()
{
  result = qword_27FFB7428;
  if (!qword_27FFB7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7428);
  }

  return result;
}

unint64_t sub_264E697FC()
{
  result = qword_27FFB7430;
  if (!qword_27FFB7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7430);
  }

  return result;
}

unint64_t sub_264E69850()
{
  result = qword_27FFB7438;
  if (!qword_27FFB7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7438);
  }

  return result;
}

uint64_t SpotlightQueryFilter.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7440, &qword_264E8B4C8);
  v32 = *(v3 - 8);
  v4 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v29[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7448, &qword_264E8B4D0);
  v31 = *(v7 - 8);
  v8 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v29[-v9];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7450, &qword_264E8B4D8);
  v11 = *(v34 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v29[-v13];
  v16 = a1[3];
  v15 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_264E69700();
  v17 = v35;
  sub_264E89EF4();
  if (!v17)
  {
    v35 = v11;
    v18 = v33;
    v19 = sub_264E89D94();
    if (*(v19 + 16) == 1)
    {
      v20 = v34;
      v30 = *(v19 + 32);
      if (v30)
      {
        LOBYTE(v36) = 1;
        sub_264E69754();
        sub_264E89D44();
        sub_264E69D6C();
        sub_264E89D84();
        (*(v32 + 8))(v6, v3);
        (*(v35 + 8))(v14, v20);
        swift_unknownObjectRelease();
        v21 = v36;
        v22 = v37;
      }

      else
      {
        LOBYTE(v36) = 0;
        sub_264E697FC();
        sub_264E89D44();
        sub_264E69DC0();
        sub_264E89D84();
        (*(v31 + 8))(v10, v7);
        (*(v35 + 8))(v14, v20);
        swift_unknownObjectRelease();
        v22 = 0;
        v21 = v36;
      }

      *v18 = v21;
      *(v18 + 8) = v22;
      *(v18 + 16) = v30;
    }

    else
    {
      v23 = sub_264E89CA4();
      swift_allocError();
      v25 = v24;
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7458, &qword_264E8B4E0) + 48);
      *v25 = &type metadata for SpotlightQueryFilter;
      v27 = v34;
      sub_264E89D54();
      sub_264E89C94();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v35 + 8))(v14, v27);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

unint64_t sub_264E69D6C()
{
  result = qword_27FFB7460;
  if (!qword_27FFB7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7460);
  }

  return result;
}

unint64_t sub_264E69DC0()
{
  result = qword_27FFB7468;
  if (!qword_27FFB7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7468);
  }

  return result;
}

uint64_t sub_264E69E14()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22SearchIntrospectionKit0A19SpotlightFilterTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_264E69EB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_264E69EF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchSpotlightQueryKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchSpotlightQueryKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264E6A0D8()
{
  result = qword_27FFB7470;
  if (!qword_27FFB7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7470);
  }

  return result;
}

unint64_t sub_264E6A130()
{
  result = qword_27FFB7478;
  if (!qword_27FFB7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7478);
  }

  return result;
}

unint64_t sub_264E6A188()
{
  result = qword_27FFB7480;
  if (!qword_27FFB7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7480);
  }

  return result;
}

unint64_t sub_264E6A1E0()
{
  result = qword_27FFB7488;
  if (!qword_27FFB7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7488);
  }

  return result;
}

unint64_t sub_264E6A238()
{
  result = qword_27FFB7490;
  if (!qword_27FFB7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7490);
  }

  return result;
}

unint64_t sub_264E6A290()
{
  result = qword_27FFB7498;
  if (!qword_27FFB7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7498);
  }

  return result;
}

unint64_t sub_264E6A2E8()
{
  result = qword_27FFB74A0;
  if (!qword_27FFB74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB74A0);
  }

  return result;
}

unint64_t sub_264E6A340()
{
  result = qword_27FFB74A8;
  if (!qword_27FFB74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB74A8);
  }

  return result;
}

unint64_t sub_264E6A398()
{
  result = qword_27FFB74B0;
  if (!qword_27FFB74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB74B0);
  }

  return result;
}

unint64_t ApplicationClient.bundleIdentifier.getter()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  if (v2 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

SearchIntrospectionKit::ApplicationClient_optional __swiftcall ApplicationClient.init(rawValue:)(Swift::UInt64 rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_264E6A49C()
{
  result = qword_27FFB74B8;
  if (!qword_27FFB74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB74B8);
  }

  return result;
}

uint64_t sub_264E6A4F0()
{
  v1 = *v0;
  sub_264E89EB4();
  MEMORY[0x266751180](v1);
  return sub_264E89EE4();
}

uint64_t sub_264E6A564()
{
  v1 = *v0;
  sub_264E89EB4();
  MEMORY[0x266751180](v1);
  return sub_264E89EE4();
}

unint64_t sub_264E6A5C0()
{
  result = qword_27FFB74C0;
  if (!qword_27FFB74C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB74C8, &qword_264E8BA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB74C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ApplicationClient(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationClient(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SearchQuery.queryIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 24))();
  v4 = sub_264E6AB38(v2, v3);

  return v4;
}

void (*sub_264E6A878(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = SearchQuery.timeout.modify(v2);
  return sub_264E6A8E0;
}

void sub_264E6A8E0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

BOOL SearchQuery.hasValidQueryString.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E89724();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = (*(a2 + 24))(a1, a2);
  v15[1] = v9;
  sub_264E89714();
  sub_264E6AA6C();
  v10 = sub_264E89C34();
  v12 = v11;
  (*(v5 + 8))(v8, v4);

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  return v13 != 0;
}

unint64_t sub_264E6AA6C()
{
  result = qword_27FFB74D0;
  if (!qword_27FFB74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB74D0);
  }

  return result;
}

uint64_t sub_264E6AB38(uint64_t a1, unint64_t a2)
{
  v4 = sub_264E89904();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_264E898F4();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = sub_264E6ADB4(a1, a2);
  v15 = v14;
  sub_264E6BF98(&qword_281228B98, MEMORY[0x277CC5540]);
  sub_264E898E4();
  sub_264E65880(v13, v15);
  sub_264E6BDB8(v13, v15);
  sub_264E658D4(v13, v15);
  sub_264E898D4();
  (*(v5 + 8))(v8, v4);
  v20 = sub_264E6B2C4(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFB7290, &qword_264E8B058);
  sub_264E65928();
  v16 = sub_264E899A4();
  sub_264E658D4(v13, v15);

  (*(v9 + 8))(v12, v19);
  return v16;
}

uint64_t sub_264E6ADB4(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB74E8, &qword_264E8BB10);
  if (swift_dynamicCast())
  {
    sub_264E6C3B8(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_264E897D4();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_264E6C0C4(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_264E89CB4();
  }

  sub_264E6B66C(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_264E6C2B0(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20]();
  v10 = sub_264E6B734(sub_264E6C350);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_264E89814();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_264E6C12C(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_264E89A24();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_264E89A54();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_264E89CB4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_264E6C12C(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_264E89A34();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_264E89824();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_264E89824();
    sub_264E6855C(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_264E6855C(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_264E65880(*&__src[0], *(&__src[0] + 1));

  sub_264E658D4(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_264E6B2C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264E898F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E6BF98(&qword_281228BA0, MEMORY[0x277CC5290]);
  v9 = sub_264E89A84();
  v39 = MEMORY[0x277D84F90];
  sub_264E6BC8C(0, v9 & ~(v9 >> 63), 0);
  v10 = v39;
  (*(v5 + 16))(v8, a1, v4);
  result = sub_264E89A74();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v12 = v38;
    if (v9)
    {
      v34 = v1;
      v13 = v37;
      *&v36 = *(v37 + 16);
      v35 = xmmword_264E8BAE0;
      v14 = v38;
      while (v36 != v14)
      {
        if (v12 < 0)
        {
          goto LABEL_21;
        }

        if (v14 >= *(v13 + 16))
        {
          goto LABEL_22;
        }

        v15 = *(v13 + 32 + v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB74D8, &qword_264E8BB00);
        v16 = swift_allocObject();
        *(v16 + 16) = v35;
        *(v16 + 56) = MEMORY[0x277D84B78];
        *(v16 + 64) = MEMORY[0x277D84BC0];
        *(v16 + 32) = v15;
        result = sub_264E899E4();
        v39 = v10;
        v19 = *(v10 + 16);
        v18 = *(v10 + 24);
        if (v19 >= v18 >> 1)
        {
          v33 = result;
          v21 = v17;
          sub_264E6BC8C((v18 > 1), v19 + 1, 1);
          v17 = v21;
          result = v33;
          v10 = v39;
        }

        *(v10 + 16) = v19 + 1;
        v20 = v10 + 16 * v19;
        *(v20 + 32) = result;
        *(v20 + 40) = v17;
        ++v14;
        if (!--v9)
        {
          v38 = v14;
          v2 = v34;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v14 = v38;
LABEL_12:
      v22 = v37;
      v23 = *(v37 + 16);
      if (v14 == v23)
      {
LABEL_13:

        return v10;
      }

      v36 = xmmword_264E8BAE0;
      while (v14 < v23)
      {
        v24 = v14 + 1;
        v25 = *(v22 + 32 + v14);
        v38 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB74D8, &qword_264E8BB00);
        v26 = swift_allocObject();
        *(v26 + 16) = v36;
        *(v26 + 56) = MEMORY[0x277D84B78];
        *(v26 + 64) = MEMORY[0x277D84BC0];
        *(v26 + 32) = v25;
        result = sub_264E899E4();
        v39 = v10;
        v29 = *(v10 + 16);
        v28 = *(v10 + 24);
        if (v29 >= v28 >> 1)
        {
          *&v35 = result;
          v31 = v2;
          v32 = v27;
          sub_264E6BC8C((v28 > 1), v29 + 1, 1);
          v27 = v32;
          v2 = v31;
          result = v35;
          v10 = v39;
        }

        *(v10 + 16) = v29 + 1;
        v30 = v10 + 16 * v29;
        *(v30 + 32) = result;
        *(v30 + 40) = v27;
        v23 = *(v22 + 16);
        v14 = v38;
        if (v38 == v23)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_264E6B66C@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_264E6C1F8(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_264E89794();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_264E89744();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_264E89804();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_264E6B734(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_264E658D4(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_264E658D4(v6, v5);
    *v3 = xmmword_264E8BAF0;
    sub_264E658D4(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_264E89754() && __OFSUB__(v6, sub_264E89784()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_264E89794();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_264E89734();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_264E6BBD8(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_264E658D4(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_264E8BAF0;
    sub_264E658D4(0, 0xC000000000000000);
    sub_264E897F4();
    result = sub_264E6BBD8(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_264E6BAD8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_264E6C1F8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_264E6C3D0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_264E6C44C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_264E6BB6C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_264E6BBD8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_264E89754();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_264E89784();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_264E89774();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_264E6BC8C(char *a1, int64_t a2, char a3)
{
  result = sub_264E6BCAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_264E6BCAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB74E0, &qword_264E8BB08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_264E6BDB8(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_264E89904();
      sub_264E6BF98(&qword_281228B98, MEMORY[0x277CC5540]);
      result = sub_264E898C4();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_264E6BFE4(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_264E6BF98(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_264E6BFE4(uint64_t a1, uint64_t a2)
{
  result = sub_264E89754();
  if (!result || (result = sub_264E89784(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_264E89774();
      sub_264E89904();
      sub_264E6BF98(&qword_281228B98, MEMORY[0x277CC5540]);
      return sub_264E898C4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_264E6C0C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB74F0, &qword_264E8BB18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264E6C12C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_264E89A64();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x266750CF0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_264E6C1A8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_264E89C84();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_264E6C1F8(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_264E6C2B0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_264E89794();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_264E89764();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_264E89804();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_264E6C350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_264E6BB6C(sub_264E6C4D0, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_264E6C3B8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_264E6C3D0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_264E89794();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_264E89744();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_264E89804();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_264E6C44C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_264E89794();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_264E89744();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t SearchSpotlightFilterType.filterTitle.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 <= 2)
  {
    switch(v2)
    {
      case 0:
        v3 = 0x73656C6946;
        goto LABEL_17;
      case 1:
        v3 = 0x746163696C707041;
        goto LABEL_17;
      case 2:
        v3 = 0x736E6F69746341;
        goto LABEL_17;
    }

LABEL_13:
    v3 = *v0;
    goto LABEL_17;
  }

  if (v2 > 4)
  {
    if (v2 == 5)
    {
      v3 = 4605008;
      goto LABEL_17;
    }

    if (v2 == 6)
    {
      v3 = 0x737265646C6F46;
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (v2 == 3)
  {
    v3 = 0x616F626574736150;
  }

  else
  {
    v3 = 0x73776F646E6957;
  }

LABEL_17:
  sub_264E67568(v1, v2);
  return v3;
}

uint64_t sub_264E6C61C(uint64_t a1)
{
  v2 = sub_264E6D58C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264E6C658(uint64_t a1)
{
  v2 = sub_264E6D58C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264E6C694(uint64_t a1)
{
  v2 = sub_264E6D5E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264E6C6D0(uint64_t a1)
{
  v2 = sub_264E6D5E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264E6C70C()
{
  v1 = *v0;
  v2 = 0x73656C6966;
  v3 = 0x737265646C6F66;
  if (v1 != 6)
  {
    v3 = 0x6D6F74737563;
  }

  v4 = 0x73776F646E6977;
  if (v1 != 4)
  {
    v4 = 6710384;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x736E6F69746361;
  if (v1 != 2)
  {
    v5 = 0x616F626574736170;
  }

  if (*v0)
  {
    v2 = 0x746163696C707061;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_264E6C804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264E6EC70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264E6C838(uint64_t a1)
{
  v2 = sub_264E6D394();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264E6C874(uint64_t a1)
{
  v2 = sub_264E6D394();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264E6C8B0(uint64_t a1)
{
  v2 = sub_264E6D3E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264E6C8EC(uint64_t a1)
{
  v2 = sub_264E6D3E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264E6C928(uint64_t a1)
{
  v2 = sub_264E6D634();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264E6C964(uint64_t a1)
{
  v2 = sub_264E6D634();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264E6C9A0(uint64_t a1)
{
  v2 = sub_264E6D43C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264E6C9DC(uint64_t a1)
{
  v2 = sub_264E6D43C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264E6CA18(uint64_t a1)
{
  v2 = sub_264E6D538();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264E6CA54(uint64_t a1)
{
  v2 = sub_264E6D538();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264E6CA90(uint64_t a1)
{
  v2 = sub_264E6D490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264E6CACC(uint64_t a1)
{
  v2 = sub_264E6D490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264E6CB08(uint64_t a1)
{
  v2 = sub_264E6D4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264E6CB44(uint64_t a1)
{
  v2 = sub_264E6D4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchSpotlightFilterType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB74F8, &qword_264E8BB20);
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v66 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7500, &qword_264E8BB28);
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v63 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7508, &qword_264E8BB30);
  v61 = *(v10 - 8);
  v62 = v10;
  v11 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v60 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7510, &qword_264E8BB38);
  v58 = *(v13 - 8);
  v59 = v13;
  v14 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v57 = &v51 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7518, &qword_264E8BB40);
  v55 = *(v16 - 8);
  v56 = v16;
  v17 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v54 = &v51 - v18;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7520, &qword_264E8BB48);
  v52 = *(v53 - 8);
  v19 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v71 = &v51 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7528, &qword_264E8BB50);
  v70 = *(v21 - 8);
  v22 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v24 = &v51 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7530, &qword_264E8BB58);
  v69 = *(v25 - 8);
  v26 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v28 = &v51 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7538, &qword_264E8BB60);
  v30 = *(v29 - 8);
  v73 = v29;
  v74 = v30;
  v31 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v33 = &v51 - v32;
  v34 = *v2;
  v35 = v2[1];
  v51 = v34;
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264E6D394();
  v72 = v33;
  sub_264E89F04();
  if (v35 > 2)
  {
    if (v35 <= 4)
    {
      if (v35 == 3)
      {
        v78 = 3;
        sub_264E6D538();
        v37 = v54;
        v39 = v72;
        v38 = v73;
        sub_264E89DA4();
        v41 = v55;
        v40 = v56;
      }

      else
      {
        v79 = 4;
        sub_264E6D4E4();
        v37 = v57;
        v39 = v72;
        v38 = v73;
        sub_264E89DA4();
        v41 = v58;
        v40 = v59;
      }

      goto LABEL_16;
    }

    if (v35 == 5)
    {
      v80 = 5;
      sub_264E6D490();
      v37 = v60;
      v39 = v72;
      v38 = v73;
      sub_264E89DA4();
      v41 = v61;
      v40 = v62;
      goto LABEL_16;
    }

    if (v35 == 6)
    {
      v81 = 6;
      sub_264E6D43C();
      v37 = v63;
      v39 = v72;
      v38 = v73;
      sub_264E89DA4();
      v41 = v64;
      v40 = v65;
LABEL_16:
      (*(v41 + 8))(v37, v40);
      return (*(v74 + 8))(v39, v38);
    }

LABEL_13:
    v82 = 7;
    sub_264E6D3E8();
    v46 = v66;
    v48 = v72;
    v47 = v73;
    sub_264E89DA4();
    v49 = v68;
    sub_264E89DC4();
    (*(v67 + 8))(v46, v49);
    return (*(v74 + 8))(v48, v47);
  }

  v42 = v69;
  v43 = v70;
  v44 = v21;
  v45 = v71;
  if (v35)
  {
    if (v35 == 1)
    {
      v76 = 1;
      sub_264E6D5E0();
      v39 = v72;
      v38 = v73;
      sub_264E89DA4();
      (*(v43 + 8))(v24, v44);
      return (*(v74 + 8))(v39, v38);
    }

    if (v35 != 2)
    {
      goto LABEL_13;
    }

    v77 = 2;
    sub_264E6D58C();
    v39 = v72;
    v38 = v73;
    sub_264E89DA4();
    (*(v52 + 8))(v45, v53);
  }

  else
  {
    v75 = 0;
    sub_264E6D634();
    v39 = v72;
    v38 = v73;
    sub_264E89DA4();
    (*(v42 + 8))(v28, v25);
  }

  return (*(v74 + 8))(v39, v38);
}

unint64_t sub_264E6D394()
{
  result = qword_27FFB7540;
  if (!qword_27FFB7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7540);
  }

  return result;
}

unint64_t sub_264E6D3E8()
{
  result = qword_27FFB7548;
  if (!qword_27FFB7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7548);
  }

  return result;
}

unint64_t sub_264E6D43C()
{
  result = qword_27FFB7550;
  if (!qword_27FFB7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7550);
  }

  return result;
}

unint64_t sub_264E6D490()
{
  result = qword_27FFB7558;
  if (!qword_27FFB7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7558);
  }

  return result;
}

unint64_t sub_264E6D4E4()
{
  result = qword_27FFB7560;
  if (!qword_27FFB7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7560);
  }

  return result;
}

unint64_t sub_264E6D538()
{
  result = qword_27FFB7568;
  if (!qword_27FFB7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7568);
  }

  return result;
}

unint64_t sub_264E6D58C()
{
  result = qword_27FFB7570;
  if (!qword_27FFB7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7570);
  }

  return result;
}

unint64_t sub_264E6D5E0()
{
  result = qword_27FFB7578;
  if (!qword_27FFB7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7578);
  }

  return result;
}

unint64_t sub_264E6D634()
{
  result = qword_27FFB7580;
  if (!qword_27FFB7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7580);
  }

  return result;
}

uint64_t SearchSpotlightFilterType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7588, &qword_264E8BB68);
  v4 = *(v3 - 8);
  v91 = v3;
  v92 = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v98 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7590, &qword_264E8BB70);
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v94 = &v73 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7598, &qword_264E8BB78);
  v87 = *(v10 - 8);
  v88 = v10;
  v11 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v97 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB75A0, &qword_264E8BB80);
  v14 = *(v13 - 8);
  v85 = v13;
  v86 = v14;
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v96 = &v73 - v16;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB75A8, &qword_264E8BB88);
  v83 = *(v84 - 8);
  v17 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v95 = &v73 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB75B0, &qword_264E8BB90);
  v81 = *(v82 - 8);
  v19 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v93 = &v73 - v20;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB75B8, &qword_264E8BB98);
  v79 = *(v80 - 8);
  v21 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v23 = &v73 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB75C0, &qword_264E8BBA0);
  v78 = *(v24 - 8);
  v25 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v27 = &v73 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB75C8, &unk_264E8BBA8);
  v29 = *(v28 - 8);
  v30 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v32 = &v73 - v31;
  v34 = a1[3];
  v33 = a1[4];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_264E6D394();
  v35 = v100;
  sub_264E89EF4();
  if (!v35)
  {
    v75 = v27;
    v74 = v24;
    v76 = v23;
    v37 = v95;
    v36 = v96;
    v39 = v97;
    v38 = v98;
    v100 = v29;
    v40 = v99;
    v77 = v32;
    v41 = sub_264E89D94();
    v42 = (2 * *(v41 + 16)) | 1;
    v102 = v41;
    v103 = v41 + 32;
    v104 = 0;
    v105 = v42;
    v43 = sub_264E69E14();
    if (v43 == 8 || v104 != v105 >> 1)
    {
      v52 = v28;
      v53 = sub_264E89CA4();
      swift_allocError();
      v55 = v54;
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7458, &qword_264E8B4E0) + 48);
      *v55 = &type metadata for SearchSpotlightFilterType;
      v57 = v77;
      sub_264E89D54();
      sub_264E89C94();
      (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D84160], v53);
      swift_willThrow();
      (*(v100 + 8))(v57, v52);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v43 > 3u)
      {
        v59 = v77;
        if (v43 > 5u)
        {
          v64 = v40;
          v65 = v100;
          if (v43 == 6)
          {
            v106 = 6;
            sub_264E6D43C();
            v66 = v94;
            sub_264E89D44();
            (*(v89 + 8))(v66, v90);
            (*(v65 + 8))(v59, v28);
            swift_unknownObjectRelease();
            v50 = 0;
            v51 = 6;
          }

          else
          {
            v106 = 7;
            sub_264E6D3E8();
            sub_264E89D44();
            v97 = v28;
            v71 = v91;
            v50 = sub_264E89D74();
            v51 = v72;
            (*(v92 + 8))(v38, v71);
            (*(v65 + 8))(v59, v97);
            swift_unknownObjectRelease();
          }

          v45 = v64;
        }

        else
        {
          v60 = v28;
          v45 = v40;
          v61 = v100;
          if (v43 == 4)
          {
            v106 = 4;
            sub_264E6D4E4();
            sub_264E89D44();
            (*(v86 + 8))(v36, v85);
            (*(v61 + 8))(v59, v60);
            swift_unknownObjectRelease();
            v50 = 0;
            v51 = 4;
          }

          else
          {
            v106 = 5;
            sub_264E6D490();
            sub_264E89D44();
            (*(v87 + 8))(v39, v88);
            (*(v61 + 8))(v59, v60);
            swift_unknownObjectRelease();
            v50 = 0;
            v51 = 5;
          }
        }
      }

      else if (v43 > 1u)
      {
        if (v43 == 2)
        {
          v106 = 2;
          sub_264E6D58C();
          v62 = v93;
          v63 = v77;
          sub_264E89D44();
          (*(v81 + 8))(v62, v82);
          (*(v100 + 8))(v63, v28);
          swift_unknownObjectRelease();
          v50 = 0;
          v51 = 2;
        }

        else
        {
          v106 = 3;
          sub_264E6D538();
          v70 = v77;
          sub_264E89D44();
          (*(v83 + 8))(v37, v84);
          (*(v100 + 8))(v70, v28);
          swift_unknownObjectRelease();
          v50 = 0;
          v51 = 3;
        }

        v45 = v40;
      }

      else
      {
        v44 = v28;
        v45 = v40;
        v46 = v100;
        if (v43)
        {
          v106 = 1;
          sub_264E6D5E0();
          v67 = v76;
          v68 = v44;
          v69 = v77;
          sub_264E89D44();
          (*(v79 + 8))(v67, v80);
          (*(v46 + 8))(v69, v68);
          swift_unknownObjectRelease();
          v50 = 0;
          v51 = 1;
        }

        else
        {
          v106 = 0;
          sub_264E6D634();
          v47 = v75;
          v48 = v44;
          v49 = v77;
          sub_264E89D44();
          (*(v78 + 8))(v47, v74);
          (*(v46 + 8))(v49, v48);
          swift_unknownObjectRelease();
          v50 = 0;
          v51 = 0;
        }
      }

      *v45 = v50;
      v45[1] = v51;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v101);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_264E6E2E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264E6E340(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 6;
    }
  }

  return result;
}

void *sub_264E6E390(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchSpotlightFilterType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchSpotlightFilterType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264E6E594()
{
  result = qword_27FFB75D0;
  if (!qword_27FFB75D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB75D0);
  }

  return result;
}

unint64_t sub_264E6E5EC()
{
  result = qword_27FFB75D8;
  if (!qword_27FFB75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB75D8);
  }

  return result;
}

unint64_t sub_264E6E644()
{
  result = qword_27FFB75E0;
  if (!qword_27FFB75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB75E0);
  }

  return result;
}

unint64_t sub_264E6E69C()
{
  result = qword_27FFB75E8;
  if (!qword_27FFB75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB75E8);
  }

  return result;
}

unint64_t sub_264E6E6F4()
{
  result = qword_27FFB75F0;
  if (!qword_27FFB75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB75F0);
  }

  return result;
}

unint64_t sub_264E6E74C()
{
  result = qword_27FFB75F8;
  if (!qword_27FFB75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB75F8);
  }

  return result;
}

unint64_t sub_264E6E7A4()
{
  result = qword_27FFB7600;
  if (!qword_27FFB7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7600);
  }

  return result;
}

unint64_t sub_264E6E7FC()
{
  result = qword_27FFB7608;
  if (!qword_27FFB7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7608);
  }

  return result;
}

unint64_t sub_264E6E854()
{
  result = qword_27FFB7610;
  if (!qword_27FFB7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7610);
  }

  return result;
}

unint64_t sub_264E6E8AC()
{
  result = qword_27FFB7618;
  if (!qword_27FFB7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7618);
  }

  return result;
}

unint64_t sub_264E6E904()
{
  result = qword_27FFB7620;
  if (!qword_27FFB7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7620);
  }

  return result;
}

unint64_t sub_264E6E95C()
{
  result = qword_27FFB7628;
  if (!qword_27FFB7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7628);
  }

  return result;
}

unint64_t sub_264E6E9B4()
{
  result = qword_27FFB7630;
  if (!qword_27FFB7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7630);
  }

  return result;
}

unint64_t sub_264E6EA0C()
{
  result = qword_27FFB7638;
  if (!qword_27FFB7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7638);
  }

  return result;
}

unint64_t sub_264E6EA64()
{
  result = qword_27FFB7640;
  if (!qword_27FFB7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7640);
  }

  return result;
}

unint64_t sub_264E6EABC()
{
  result = qword_27FFB7648;
  if (!qword_27FFB7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7648);
  }

  return result;
}

unint64_t sub_264E6EB14()
{
  result = qword_27FFB7650;
  if (!qword_27FFB7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7650);
  }

  return result;
}

unint64_t sub_264E6EB6C()
{
  result = qword_27FFB7658;
  if (!qword_27FFB7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7658);
  }

  return result;
}

unint64_t sub_264E6EBC4()
{
  result = qword_27FFB7660;
  if (!qword_27FFB7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7660);
  }

  return result;
}

unint64_t sub_264E6EC1C()
{
  result = qword_27FFB7668;
  if (!qword_27FFB7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7668);
  }

  return result;
}

uint64_t sub_264E6EC70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C6966 && a2 == 0xE500000000000000;
  if (v4 || (sub_264E89DF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746163696C707061 && a2 == 0xEC000000736E6F69 || (sub_264E89DF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000 || (sub_264E89DF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616F626574736170 && a2 == 0xEA00000000006472 || (sub_264E89DF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73776F646E6977 && a2 == 0xE700000000000000 || (sub_264E89DF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 6710384 && a2 == 0xE300000000000000 || (sub_264E89DF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737265646C6F66 && a2 == 0xE700000000000000 || (sub_264E89DF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_264E89DF4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

SearchIntrospectionKit::SearchSpotlightQueryKind_optional __swiftcall SearchSpotlightQueryKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264E89D24();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SearchSpotlightQueryKind.rawValue.getter()
{
  if (*v0)
  {
    result = 0x657474696D6D6F63;
  }

  else
  {
    result = 0x707954756F597361;
  }

  *v0;
  return result;
}

uint64_t sub_264E6EFAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x657474696D6D6F63;
  }

  else
  {
    v4 = 0x707954756F597361;
  }

  if (v3)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v5 = 0xE900000000000064;
  }

  if (*a2)
  {
    v6 = 0x657474696D6D6F63;
  }

  else
  {
    v6 = 0x707954756F597361;
  }

  if (*a2)
  {
    v7 = 0xE900000000000064;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_264E89DF4();
  }

  return v9 & 1;
}

unint64_t sub_264E6F058()
{
  result = qword_27FFB7670;
  if (!qword_27FFB7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7670);
  }

  return result;
}

uint64_t sub_264E6F0AC()
{
  v1 = *v0;
  sub_264E89EB4();
  sub_264E89A04();

  return sub_264E89EE4();
}

uint64_t sub_264E6F130()
{
  *v0;
  sub_264E89A04();
}

uint64_t sub_264E6F1A0()
{
  v1 = *v0;
  sub_264E89EB4();
  sub_264E89A04();

  return sub_264E89EE4();
}

uint64_t sub_264E6F220@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_264E89D24();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_264E6F280(uint64_t *a1@<X8>)
{
  v2 = 0x707954756F597361;
  if (*v1)
  {
    v2 = 0x657474696D6D6F63;
  }

  v3 = 0xE900000000000064;
  if (!*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_264E6F380()
{
  result = qword_27FFB7678;
  if (!qword_27FFB7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7678);
  }

  return result;
}

SearchIntrospectionKit::SearchTopLevelFilter_optional __swiftcall SearchTopLevelFilter.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_264E6F3F4()
{
  result = qword_27FFB7680;
  if (!qword_27FFB7680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7680);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchTopLevelFilter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchTopLevelFilter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264E6F650()
{
  result = qword_27FFB7688;
  if (!qword_27FFB7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7688);
  }

  return result;
}

uint64_t sub_264E6F6A4()
{
  type metadata accessor for SIDefaultsManager();
  v0 = swift_allocObject();
  v1 = *MEMORY[0x277CBF008];
  result = sub_264E899D4();
  v0[2] = result;
  v0[3] = v3;
  v0[4] = 0xD000000000000039;
  v0[5] = 0x8000000264E8DB40;
  qword_281228C90 = v0;
  return result;
}

uint64_t static SIDefaultsManager.shared.getter()
{
  if (qword_281228C88 != -1)
  {
    swift_once();
  }
}

void sub_264E6F768()
{
  v1 = v0;
  if (qword_281228BA8 != -1)
  {
    swift_once();
  }

  v2 = sub_264E898B4();
  __swift_project_value_buffer(v2, qword_281228CF8);
  v3 = sub_264E89894();
  v4 = sub_264E89BC4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_264E62000, v3, v4, "Setting device under test flag", v5, 2u);
    MEMORY[0x266751790](v5, -1, -1);
  }

  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[2];
  v8 = v1[3];
  v10 = sub_264E899B4();
  v11 = sub_264E89E14();
  v12 = sub_264E899B4();
  CFPreferencesSetAppValue(v10, v11, v12);

  swift_unknownObjectRelease();
  v13 = sub_264E899B4();
  CFPreferencesAppSynchronize(v13);
}

void sub_264E6F8C8()
{
  v1 = v0;
  if (qword_281228BA8 != -1)
  {
    swift_once();
  }

  v2 = sub_264E898B4();
  __swift_project_value_buffer(v2, qword_281228CF8);
  v3 = sub_264E89894();
  v4 = sub_264E89BC4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_264E62000, v3, v4, "Unsetting device under test flag", v5, 2u);
    MEMORY[0x266751790](v5, -1, -1);
  }

  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[2];
  v8 = v1[3];
  v10 = sub_264E899B4();
  v11 = sub_264E899B4();
  CFPreferencesSetAppValue(v10, 0, v11);

  v12 = sub_264E899B4();
  CFPreferencesAppSynchronize(v12);
}

uint64_t sub_264E6FA0C()
{
  v1 = v0;
  if (qword_281228BA8 != -1)
  {
    swift_once();
  }

  v2 = sub_264E898B4();
  __swift_project_value_buffer(v2, qword_281228CF8);
  v3 = sub_264E89894();
  v4 = sub_264E89BC4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_264E62000, v3, v4, "Checking device under test flag", v5, 2u);
    MEMORY[0x266751790](v5, -1, -1);
  }

  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[2];
  v8 = v1[3];
  v10 = sub_264E899B4();
  v11 = sub_264E899B4();
  v12 = CFPreferencesCopyAppValue(v10, v11);

  if (!v12)
  {
    return 0;
  }

  swift_getObjectType();
  result = swift_dynamicCast();
  if (result)
  {
    return v14;
  }

  return result;
}

uint64_t SIDefaultsManager.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t SIDefaultsManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_264E6FC10(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_264E6FD04()
{
  v0 = sub_264E898B4();
  __swift_allocate_value_buffer(v0, qword_27FFBBB00);
  __swift_project_value_buffer(v0, qword_27FFBBB00);
  return sub_264E898A4();
}

uint64_t sub_264E6FD84()
{
  v0 = sub_264E898B4();
  __swift_allocate_value_buffer(v0, qword_281228CF8);
  __swift_project_value_buffer(v0, qword_281228CF8);
  return sub_264E898A4();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void *SIQueryTransport.queryData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryData);
  v2 = v1;
  return v1;
}

uint64_t SIQueryTransport.queryIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier + 8);

  return v1;
}

uint64_t SIQueryTransport.timeout.getter()
{
  result = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
  v2 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout + 8);
  return result;
}

id SIQueryTransport.__allocating_init(queryClient:queryData:queryIdentifier:timeout:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v13[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryClient] = *a1;
  *&v13[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryData] = a2;
  v14 = &v13[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier];
  *v14 = a3;
  v14[1] = a4;
  v15 = &v13[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout];
  *v15 = a5;
  v15[1] = a6;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, sel_init);
}

id SIQueryTransport.init(queryClient:queryData:queryIdentifier:timeout:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v6[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryClient] = *a1;
  *&v6[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryData] = a2;
  v14 = &v6[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier];
  *v14 = a3;
  v14[1] = a4;
  v15 = &v6[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout];
  *v15 = a5;
  v15[1] = a6;
  v17.receiver = v6;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

void SIQueryTransport.encode(withBSXPCCoder:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryClient);
  v4 = sub_264E899B4();
  [a1 encodeUInt64:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryData);
  if (v5)
  {
    v6 = v5;
    v7 = sub_264E899B4();
    [a1 encodeObject:v6 forKey:v7];
  }

  v8 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier);
  v9 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier + 8);
  v10 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v11 = sub_264E899B4();
  v12 = [v10 initWithString_];

  v13 = sub_264E899B4();
  [a1 encodeObject:v12 forKey:v13];

  v14 = v1 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout;
  v15 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
  v16 = *(v14 + 8);
  v17 = sub_264E89F14();
  sub_264E89F14();
  v19 = v18 / 1.0e18 + v17;
  v20 = sub_264E899B4();
  [a1 encodeDouble:v20 forKey:v19];
}

id SIQueryTransport.__allocating_init(bsxpcCoder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_264E70680(a1);
  swift_unknownObjectRelease();
  return v4;
}

id SIQueryTransport.init(bsxpcCoder:)(void *a1)
{
  v1 = sub_264E70680(a1);
  swift_unknownObjectRelease();
  return v1;
}

id SIQueryTransport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SIQueryTransport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t SIQueryTransportError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16) <= 1u)
  {
    if (*(v0 + 16))
    {
      v5 = 0;
      sub_264E89C74();
      MEMORY[0x266750CC0](0xD00000000000001ALL, 0x8000000264E8DC70);
      sub_264E89CF4();
      return v5;
    }

    sub_264E89C74();

    v3 = 0xD00000000000001BLL;
LABEL_6:
    v5 = v3;
    MEMORY[0x266750CC0](v1, v2);
    return v5;
  }

  if (*(v0 + 16) == 2)
  {
    sub_264E89C74();

    v3 = 0xD000000000000019;
    goto LABEL_6;
  }

  if (v1 | v2)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0xD000000000000024;
  }
}

id sub_264E70680(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_264E89884();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264E899B4();
  v11 = [a1 decodeUInt64ForKey_];

  if (v11 >= 3)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v2[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryClient] = v12;
  sub_264E68514(0, &qword_27FFB7720, 0x277CBEA90);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = sub_264E899B4();
  v15 = [a1 decodeObjectOfClass:ObjCClassFromMetadata forKey:v14];

  if (v15)
  {
    sub_264E89C44();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38 = v36;
  v39 = v37;
  if (*(&v37 + 1))
  {
    v16 = swift_dynamicCast();
    v17 = v34[0];
    if (!v16)
    {
      v17 = 0;
    }
  }

  else
  {
    sub_264E70BAC(&v38);
    v17 = 0;
  }

  *&v2[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryData] = v17;
  sub_264E68514(0, &qword_27FFB71F0, 0x277CCACA8);
  v18 = swift_getObjCClassFromMetadata();
  v19 = sub_264E899B4();
  v20 = [a1 decodeObjectOfClass:v18 forKey:v19];

  if (v20)
  {
    sub_264E89C44();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38 = v36;
  v39 = v37;
  if (*(&v37 + 1))
  {
    if (swift_dynamicCast())
    {
      v21 = v34[0];
      v22 = v34[1];
      goto LABEL_20;
    }
  }

  else
  {
    sub_264E70BAC(&v38);
  }

  sub_264E89874();
  v21 = sub_264E89864();
  v22 = v23;
  (*(v6 + 8))(v9, v5);
LABEL_20:
  v24 = &v2[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier];
  *v24 = v21;
  v24[1] = v22;
  v25 = sub_264E899B4();
  [a1 decodeDoubleForKey_];
  v27 = v26;

  if (v27 <= 0.0)
  {
    v31 = 0;
    v30 = 5000000000000000000;
  }

  else
  {
    v30 = Duration.init(timeInterval:)(v28, v29, v27);
  }

  v32 = &v2[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout];
  *v32 = v30;
  v32[1] = v31;
  v35.receiver = v2;
  v35.super_class = ObjectType;
  return objc_msgSendSuper2(&v35, sel_init);
}

unint64_t sub_264E70A24()
{
  result = qword_27FFB76B0;
  if (!qword_27FFB76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB76B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22SearchIntrospectionKit21SIQueryTransportErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_264E70AF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_264E70B40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_264E70B84(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_264E70BAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB78F0, &qword_264E8C8C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_264E70C14(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22SearchIntrospectionKit10SIResponse_query;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_264E70C74()
{
  v1 = OBJC_IVAR____TtC22SearchIntrospectionKit10SIResponse_query;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_264E70CC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SearchIntrospectionKit10SIResponse_query;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_264E70D80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22SearchIntrospectionKit10SIResponse_resultSections;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_264E70DE8()
{
  v1 = OBJC_IVAR____TtC22SearchIntrospectionKit10SIResponse_resultSections;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_264E70E30(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SearchIntrospectionKit10SIResponse_resultSections;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t static SIResponse.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FFB7790 = a1;
  return result;
}

id SIResponse.__allocating_init(query:resultSections:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC22SearchIntrospectionKit10SIResponse_query] = a1;
  *&v5[OBJC_IVAR____TtC22SearchIntrospectionKit10SIResponse_resultSections] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id SIResponse.init(query:resultSections:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC22SearchIntrospectionKit10SIResponse_query] = a1;
  *&v2[OBJC_IVAR____TtC22SearchIntrospectionKit10SIResponse_resultSections] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SIResponse();
  return objc_msgSendSuper2(&v4, sel_init);
}

id SIResponse.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB77A8, &qword_264E8C8D0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264E71418();
  sub_264E89EF4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SIResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for SpotlightQuery();
    v15 = 0;
    sub_264E72468(&qword_27FFB73D0, 255, type metadata accessor for SpotlightQuery);
    sub_264E89D84();
    *&v1[OBJC_IVAR____TtC22SearchIntrospectionKit10SIResponse_query] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB77C0, &qword_264E8C8D8);
    v15 = 1;
    sub_264E7146C();
    sub_264E89D84();
    (*(v6 + 8))(v9, v5);
    *&v1[OBJC_IVAR____TtC22SearchIntrospectionKit10SIResponse_resultSections] = v16;
    v12 = type metadata accessor for SIResponse();
    v14.receiver = v1;
    v14.super_class = v12;
    v3 = objc_msgSendSuper2(&v14, sel_init);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

unint64_t sub_264E71418()
{
  result = qword_27FFB77B0;
  if (!qword_27FFB77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB77B0);
  }

  return result;
}

unint64_t sub_264E7146C()
{
  result = qword_27FFB77C8;
  if (!qword_27FFB77C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB77C0, &qword_264E8C8D8);
    sub_264E72468(&qword_27FFB77D0, 255, type metadata accessor for SIResultSection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB77C8);
  }

  return result;
}

id static SIResponse.response(forData:)()
{
  v23[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_264E89914();
  v23[0] = 0;
  v2 = [v0 dataWithJSONObject:v1 options:0 error:v23];

  v3 = v23[0];
  if (v2)
  {
    v4 = sub_264E89854();
    v6 = v5;

    v7 = sub_264E896D4();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_264E896C4();
    type metadata accessor for SIResponse();
    sub_264E72468(&qword_27FFB77D8, v10, type metadata accessor for SIResponse);
    sub_264E896B4();
    sub_264E658D4(v4, v6);

    result = v23[0];
  }

  else
  {
    v11 = v3;
    v12 = sub_264E897E4();

    swift_willThrow();
    if (qword_27FFB7190 != -1)
    {
      swift_once();
    }

    v13 = sub_264E898B4();
    __swift_project_value_buffer(v13, qword_27FFBBB00);

    v14 = sub_264E89894();
    v15 = sub_264E89BD4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136315138;
      v18 = sub_264E89924();
      v20 = sub_264E71E18(v18, v19, v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_264E62000, v14, v15, "Failed to decode responseData from data: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x266751790](v17, -1, -1);
      MEMORY[0x266751790](v16, -1, -1);
    }

    result = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SIResponse.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  objc_allocWithZone(v2);
  type metadata accessor for SpotlightQuery();
  v4 = sub_264E89C04();
  if (v4)
  {
    v5 = v4;
    sub_264E723D0();
    v6 = sub_264E89C04();
    if (v6)
    {
      v7 = v6;
      type metadata accessor for SIResultSection();
      sub_264E89AE4();
    }

    a1 = v5;
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t SIResponse.init(coder:)(void *a1)
{
  type metadata accessor for SpotlightQuery();
  v2 = sub_264E89C04();
  if (v2)
  {
    v3 = v2;
    sub_264E723D0();
    v4 = sub_264E89C04();
    if (v4)
    {
      v5 = v4;
      type metadata accessor for SIResultSection();
      sub_264E89AE4();
    }

    a1 = v3;
  }

  type metadata accessor for SIResponse();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_264E71AA0(void *a1)
{
  v3 = OBJC_IVAR____TtC22SearchIntrospectionKit10SIResponse_query;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = sub_264E899B4();
  [a1 encodeObject:v4 forKey:v5];

  v6 = OBJC_IVAR____TtC22SearchIntrospectionKit10SIResponse_resultSections;
  swift_beginAccess();
  v7 = *(v1 + v6);
  type metadata accessor for SIResultSection();

  v8 = sub_264E89AD4();

  v9 = sub_264E899B4();
  [a1 encodeObject:v8 forKey:v9];
}

id SIResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SIResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SIResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_264E71D40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for SIResponse());
  result = SIResponse.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_264E71DBC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_264E71E18(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_264E71E18(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_264E71EE4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_264E72684(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_264E71EE4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_264E71FF0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_264E89CB4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_264E71FF0(uint64_t a1, unint64_t a2)
{
  v4 = sub_264E7203C(a1, a2);
  sub_264E7216C(&unk_2876AA988);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_264E7203C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_264E72258(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_264E89CB4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_264E89A24();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_264E72258(v10, 0);
        result = sub_264E89C64();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_264E7216C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_264E722CC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_264E72258(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB77F0, &qword_264E8C968);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_264E722CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB77F0, &qword_264E8C968);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_264E723C0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_264E723D0()
{
  result = qword_27FFB77E0;
  if (!qword_27FFB77E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFB77E0);
  }

  return result;
}

uint64_t sub_264E72468(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_264E72684(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_264E726F8@<X0>(char *a1@<X8>)
{
  v2 = sub_264E89D24();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t SIResponseCodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x6553746C75736572;
  }

  else
  {
    result = 0x7972657571;
  }

  *v0;
  return result;
}

uint64_t sub_264E727B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6553746C75736572;
  }

  else
  {
    v4 = 0x7972657571;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xEE00736E6F697463;
  }

  if (*a2)
  {
    v6 = 0x6553746C75736572;
  }

  else
  {
    v6 = 0x7972657571;
  }

  if (*a2)
  {
    v7 = 0xEE00736E6F697463;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_264E89DF4();
  }

  return v9 & 1;
}

unint64_t sub_264E72868()
{
  result = qword_27FFB77F8;
  if (!qword_27FFB77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB77F8);
  }

  return result;
}

uint64_t sub_264E728BC()
{
  v1 = *v0;
  sub_264E89EB4();
  sub_264E89A04();

  return sub_264E89EE4();
}

uint64_t sub_264E72948()
{
  *v0;
  sub_264E89A04();
}

uint64_t sub_264E729C0()
{
  v1 = *v0;
  sub_264E89EB4();
  sub_264E89A04();

  return sub_264E89EE4();
}

uint64_t sub_264E72A48@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_264E89D24();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_264E72AA8(uint64_t *a1@<X8>)
{
  v2 = 0x7972657571;
  if (*v1)
  {
    v2 = 0x6553746C75736572;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEE00736E6F697463;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_264E72AF4()
{
  result = qword_27FFB7800;
  if (!qword_27FFB7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7800);
  }

  return result;
}

unint64_t sub_264E72B4C()
{
  result = qword_27FFB7808;
  if (!qword_27FFB7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7808);
  }

  return result;
}

uint64_t sub_264E72BA0()
{
  if (*v0)
  {
    result = 0x6553746C75736572;
  }

  else
  {
    result = 0x7972657571;
  }

  *v0;
  return result;
}

uint64_t sub_264E72BE4@<X0>(char *a1@<X8>)
{
  v2 = sub_264E89D24();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_264E72C48(uint64_t a1)
{
  v2 = sub_264E71418();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264E72C84(uint64_t a1)
{
  v2 = sub_264E71418();

  return MEMORY[0x2821FE720](a1, v2);
}

void *SIResponseTransport.query.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_query);
  v2 = v1;
  return v1;
}

void *SIResponseTransport.response.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_response);
  v2 = v1;
  return v1;
}

id SIResponseTransport.__allocating_init(applicationClient:query:response:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_applicationClient] = *a1;
  *&v7[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_query] = a2;
  *&v7[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_response] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id SIResponseTransport.init(applicationClient:query:response:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_applicationClient] = *a1;
  *&v3[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_query] = a2;
  *&v3[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_response] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

void SIResponseTransport.encode(withBSXPCCoder:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_applicationClient);
  v4 = sub_264E899B4();
  [a1 encodeUInt64:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_query);
  if (v5)
  {
    v6 = v5;
    v7 = sub_264E899B4();
    [a1 encodeObject:v6 forKey:v7];
  }

  v8 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_response);
  if (v8)
  {
    v9 = v8;
    v10 = sub_264E899B4();
    [a1 encodeObject:v9 forKey:v10];
  }
}

id SIResponseTransport.__allocating_init(bsxpcCoder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_264E731F8(a1);
  swift_unknownObjectRelease();
  return v4;
}

id SIResponseTransport.init(bsxpcCoder:)(void *a1)
{
  v1 = sub_264E731F8(a1);
  swift_unknownObjectRelease();
  return v1;
}

id SIResponseTransport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SIResponseTransport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_264E731F8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_264E899B4();
  v5 = [a1 decodeUInt64ForKey_];

  if (v5 >= 3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v1[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_applicationClient] = v6;
  sub_264E73490();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = sub_264E899B4();
  v9 = [a1 decodeObjectOfClass:ObjCClassFromMetadata forKey:v8];

  if (v9)
  {
    sub_264E89C44();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (*(&v20 + 1))
  {
    v10 = swift_dynamicCast();
    v11 = v17;
    if (!v10)
    {
      v11 = 0;
    }
  }

  else
  {
    sub_264E70BAC(&v21);
    v11 = 0;
  }

  *&v1[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_query] = v11;
  v12 = sub_264E899B4();
  v13 = [a1 decodeObjectOfClass:ObjCClassFromMetadata forKey:v12];

  if (v13)
  {
    sub_264E89C44();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (*(&v20 + 1))
  {
    v14 = swift_dynamicCast();
    v15 = v17;
    if (!v14)
    {
      v15 = 0;
    }
  }

  else
  {
    sub_264E70BAC(&v21);
    v15 = 0;
  }

  *&v1[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_response] = v15;
  v18.receiver = v1;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

unint64_t sub_264E73490()
{
  result = qword_27FFB7720;
  if (!qword_27FFB7720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFB7720);
  }

  return result;
}

uint64_t sub_264E734DC()
{
  sub_264E89EB4();
  sub_264E89A04();
  return sub_264E89EE4();
}

uint64_t sub_264E73550()
{
  sub_264E89EB4();
  sub_264E89A04();
  return sub_264E89EE4();
}

uint64_t sub_264E735A4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_264E89D24();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_264E73634@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_264E89D24();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_264E7368C(uint64_t a1)
{
  v2 = sub_264E73AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264E736C8(uint64_t a1)
{
  v2 = sub_264E73AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SIResult.resultText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit8SIResult_resultText);
  v2 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit8SIResult_resultText + 8);

  return v1;
}

uint64_t static SIResult.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FFB7830 = a1;
  return result;
}

id SIResult.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7840, &qword_264E8CB90);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264E73AB8();
  sub_264E89EF4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SIResult();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = sub_264E89D74();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    v15 = &v1[OBJC_IVAR____TtC22SearchIntrospectionKit8SIResult_resultText];
    *v15 = v12;
    v15[1] = v14;
    v16 = type metadata accessor for SIResult();
    v17.receiver = v1;
    v17.super_class = v16;
    v3 = objc_msgSendSuper2(&v17, sel_init);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

unint64_t sub_264E73AB8()
{
  result = qword_27FFB7848;
  if (!qword_27FFB7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7848);
  }

  return result;
}

void sub_264E73B30(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit8SIResult_resultText);
  v4 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit8SIResult_resultText + 8);
  v5 = sub_264E899B4();
  v6 = sub_264E899B4();
  [a1 encodeObject:v5 forKey:v6];
}

uint64_t SIResult.init(coder:)(void *a1)
{
  sub_264E64FA0();
  v2 = sub_264E89C04();
  if (v2)
  {
    v9 = 0;
    v3 = v2;
    sub_264E899C4();
  }

  if (qword_27FFB7190 != -1)
  {
    swift_once();
  }

  v4 = sub_264E898B4();
  __swift_project_value_buffer(v4, qword_27FFBBB00);
  v5 = sub_264E89894();
  v6 = sub_264E89BE4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_264E62000, v5, v6, "[SIResult]: Unable to decode resultText", v7, 2u);
    MEMORY[0x266751790](v7, -1, -1);
  }

  type metadata accessor for SIResult();
  swift_deallocPartialClassInstance();
  return 0;
}

id SIResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SIResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SIResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_264E73F48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for SIResult());
  result = SIResult.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_264E74038()
{
  result = qword_27FFB7850;
  if (!qword_27FFB7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7850);
  }

  return result;
}

unint64_t sub_264E74090()
{
  result = qword_27FFB7858;
  if (!qword_27FFB7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7858);
  }

  return result;
}

unint64_t sub_264E740E8()
{
  result = qword_27FFB7860;
  if (!qword_27FFB7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7860);
  }

  return result;
}

uint64_t static SIResultSection.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FFB7870 = a1;
  return result;
}

uint64_t sub_264E742AC()
{
  sub_264E89EB4();
  sub_264E89A04();
  return sub_264E89EE4();
}

uint64_t sub_264E74318()
{
  sub_264E89EB4();
  sub_264E89A04();
  return sub_264E89EE4();
}

uint64_t sub_264E74368@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_264E89D24();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_264E743F0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_264E89D24();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_264E74448(uint64_t a1)
{
  v2 = sub_264E746FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264E74484(uint64_t a1)
{
  v2 = sub_264E746FC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *SIResultSection.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7880, &qword_264E8CD40);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v14 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264E746FC();
  sub_264E89EF4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SIResultSection();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7890, &qword_264E8CD48);
    sub_264E74774();
    sub_264E89D84();
    (*(v6 + 8))(v9, v5);
    *&v3[OBJC_IVAR____TtC22SearchIntrospectionKit15SIResultSection_results] = v15;
    v13 = type metadata accessor for SIResultSection();
    v14.receiver = v3;
    v14.super_class = v13;
    v11 = objc_msgSendSuper2(&v14, sel_init);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

unint64_t sub_264E746FC()
{
  result = qword_27FFB7888;
  if (!qword_27FFB7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7888);
  }

  return result;
}

unint64_t sub_264E74774()
{
  result = qword_27FFB7898;
  if (!qword_27FFB7898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB7890, &qword_264E8CD48);
    sub_264E747F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7898);
  }

  return result;
}

unint64_t sub_264E747F8()
{
  result = qword_27FFB78A0;
  if (!qword_27FFB78A0)
  {
    type metadata accessor for SIResult();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB78A0);
  }

  return result;
}

void sub_264E74850(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit15SIResultSection_results);
  type metadata accessor for SIResult();
  v4 = sub_264E89AD4();
  v5 = sub_264E899B4();
  [a1 encodeObject:v4 forKey:v5];
}

uint64_t SIResultSection.init(coder:)(void *a1)
{
  sub_264E723D0();
  v2 = sub_264E89C04();
  if (v2)
  {
    v3 = v2;
    v9 = 0;
    type metadata accessor for SIResult();
    sub_264E89AE4();
  }

  if (qword_27FFB7190 != -1)
  {
    swift_once();
  }

  v4 = sub_264E898B4();
  __swift_project_value_buffer(v4, qword_27FFBBB00);
  v5 = sub_264E89894();
  v6 = sub_264E89BE4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_264E62000, v5, v6, "[SIResultSection]: Unable to decode results", v7, 2u);
    MEMORY[0x266751790](v7, -1, -1);
  }

  type metadata accessor for SIResultSection();
  swift_deallocPartialClassInstance();
  return 0;
}

id SIResultSection.__allocating_init(withResults:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC22SearchIntrospectionKit15SIResultSection_results] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SIResultSection.init(withResults:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC22SearchIntrospectionKit15SIResultSection_results] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SIResultSection();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SIResultSection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SIResultSection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SIResultSection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_264E74D08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for SIResultSection());
  result = SIResultSection.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_264E74E0C()
{
  result = qword_27FFB78A8;
  if (!qword_27FFB78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB78A8);
  }

  return result;
}

unint64_t sub_264E74E64()
{
  result = qword_27FFB78B0;
  if (!qword_27FFB78B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB78B0);
  }

  return result;
}

unint64_t sub_264E74EBC()
{
  result = qword_27FFB78B8;
  if (!qword_27FFB78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB78B8);
  }

  return result;
}

uint64_t SISpotlightResponse.resultSections.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit19SISpotlightResponse_resultSections);
  sub_264E65880(v1, *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit19SISpotlightResponse_resultSections + 8));
  return v1;
}

uint64_t static SISpotlightResponse.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FFB78C0 = a1;
  return result;
}

id SISpotlightResponse.__allocating_init(query:resultSections:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC22SearchIntrospectionKit19SISpotlightResponse_query] = a1;
  v8 = &v7[OBJC_IVAR____TtC22SearchIntrospectionKit19SISpotlightResponse_resultSections];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id SISpotlightResponse.init(query:resultSections:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC22SearchIntrospectionKit19SISpotlightResponse_query] = a1;
  v4 = &v3[OBJC_IVAR____TtC22SearchIntrospectionKit19SISpotlightResponse_resultSections];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for SISpotlightResponse();
  return objc_msgSendSuper2(&v6, sel_init);
}

id static SISpotlightResponse.response(forData:)()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_264E89914();
  v22[0] = 0;
  v2 = [v0 dataWithJSONObject:v1 options:0 error:v22];

  v3 = v22[0];
  if (v2)
  {
    v4 = sub_264E89854();
    v6 = v5;

    v7 = sub_264E896D4();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_264E896C4();
    type metadata accessor for SIResponse();
    sub_264E75950(&qword_27FFB77D8, type metadata accessor for SIResponse);
    sub_264E896B4();
    sub_264E658D4(v4, v6);

    result = v22[0];
  }

  else
  {
    v10 = v3;
    v11 = sub_264E897E4();

    swift_willThrow();
    if (qword_27FFB7190 != -1)
    {
      swift_once();
    }

    v12 = sub_264E898B4();
    __swift_project_value_buffer(v12, qword_27FFBBB00);

    v13 = sub_264E89894();
    v14 = sub_264E89BD4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136315138;
      v17 = sub_264E89924();
      v19 = sub_264E71E18(v17, v18, v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_264E62000, v13, v14, "Failed to decode responseData from data: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x266751790](v16, -1, -1);
      MEMORY[0x266751790](v15, -1, -1);
    }

    result = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

id SISpotlightResponse.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for SpotlightQuery();
  v4 = sub_264E89C04();
  if (v4)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFB78E0, &unk_264E8CF10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_264E8BAE0;
    *(v6 + 32) = sub_264E73490();
    sub_264E89C14();

    if (v12)
    {
      if (swift_dynamicCast())
      {
        v7 = v10[1];
        *&v2[OBJC_IVAR____TtC22SearchIntrospectionKit19SISpotlightResponse_query] = v5;
        *&v2[OBJC_IVAR____TtC22SearchIntrospectionKit19SISpotlightResponse_resultSections] = v7;
        v10[0].receiver = v2;
        v10[0].super_class = type metadata accessor for SISpotlightResponse();
        v8 = [(objc_super *)v10 init];

        return v8;
      }
    }

    else
    {

      sub_264E70BAC(v11);
    }
  }

  else
  {
  }

  type metadata accessor for SISpotlightResponse();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_264E75694(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit19SISpotlightResponse_query);
  v4 = sub_264E899B4();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit19SISpotlightResponse_resultSections);
  v6 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit19SISpotlightResponse_resultSections + 8);
  v7 = sub_264E89834();
  v8 = sub_264E899B4();
  [a1 encodeObject:v7 forKey:v8];
}

id SISpotlightResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SISpotlightResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SISpotlightResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264E75950(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *SFResultSectionsDidLoadFeedback.init(resultSections:queryString:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = &v3[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections];
  *&v3[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections] = xmmword_264E8B290;
  v7 = &v3[OBJC_IVAR___SFResultSectionsDidLoadFeedback_queryIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = MobileGestalt_get_current_device();
  if (!v8)
  {
    __break(1u);
  }

  v9 = v8;
  internalBuild = MobileGestalt_get_internalBuild();

  if (!internalBuild)
  {

    sub_264E6855C(*v6, *(v6 + 1));
    v30 = *(v7 + 1);

    type metadata accessor for SFResultSectionsDidLoadFeedback(v31);
    swift_deallocPartialClassInstance();
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  v36.receiver = v3;
  v36.super_class = SFResultSectionsDidLoadFeedback;
  v11 = objc_msgSendSuper2(&v36, sel_init);
  if (!v11)
  {

    goto LABEL_9;
  }

  v12 = v11;
  v13 = objc_opt_self();
  sub_264E68514(0, &qword_281228B80, 0x277D4C588);
  v14 = sub_264E89AD4();

  v35 = 0;
  v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v35];

  v16 = v35;
  if (!v15)
  {
    v32 = v16;

    v33 = sub_264E897E4();

    swift_willThrow();
    goto LABEL_9;
  }

  v17 = sub_264E89854();
  v19 = v18;

  v20 = v12;
  v21 = &v12[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections];
  v22 = *&v12[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections];
  v23 = *&v12[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections + 8];
  *v21 = v17;
  v21[1] = v19;
  sub_264E65880(v17, v19);
  sub_264E6855C(v22, v23);
  v24 = sub_264E659D4(a2, a3);
  v26 = v25;
  sub_264E658D4(v17, v19);

  v27 = &v20[OBJC_IVAR___SFResultSectionsDidLoadFeedback_queryIdentifier];
  v28 = *&v20[OBJC_IVAR___SFResultSectionsDidLoadFeedback_queryIdentifier + 8];
  *v27 = v24;
  v27[1] = v26;

  result = v20;
LABEL_10:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_264E75EB0(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_264E68514(0, &qword_281228B80, 0x277D4C588);
  v6 = sub_264E89AD4();

  v7 = sub_264E899B4();

  v8 = [v5 *a4];

  return v8;
}

char *SFResultSectionsDidLoadFeedback.init(resultSections:queryIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = &v3[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections];
  *&v3[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections] = xmmword_264E8B290;
  v7 = &v3[OBJC_IVAR___SFResultSectionsDidLoadFeedback_queryIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = MobileGestalt_get_current_device();
  if (!v8)
  {
    __break(1u);
  }

  v9 = v8;
  internalBuild = MobileGestalt_get_internalBuild();

  if (!internalBuild)
  {

    sub_264E6855C(*v6, *(v6 + 1));
    v26 = *(v7 + 1);

    type metadata accessor for SFResultSectionsDidLoadFeedback(v27);
    swift_deallocPartialClassInstance();
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  v32.receiver = v3;
  v32.super_class = SFResultSectionsDidLoadFeedback;
  v11 = objc_msgSendSuper2(&v32, sel_init);
  if (!v11)
  {

    goto LABEL_9;
  }

  v12 = v11;
  v13 = objc_opt_self();
  sub_264E68514(0, &qword_281228B80, 0x277D4C588);
  v14 = sub_264E89AD4();

  v31 = 0;
  v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v31];

  v16 = v31;
  if (!v15)
  {
    v28 = v16;

    v29 = sub_264E897E4();

    swift_willThrow();
    goto LABEL_9;
  }

  v17 = sub_264E89854();
  v19 = v18;

  v20 = &v12[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections];
  v21 = *&v12[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections];
  v22 = *&v12[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections + 8];
  *v20 = v17;
  v20[1] = v19;
  sub_264E6855C(v21, v22);
  v23 = &v12[OBJC_IVAR___SFResultSectionsDidLoadFeedback_queryIdentifier];
  v24 = *&v12[OBJC_IVAR___SFResultSectionsDidLoadFeedback_queryIdentifier + 8];
  *v23 = a2;
  *(v23 + 1) = a3;

  result = v12;
LABEL_10:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_264E761B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_264E68514(0, &qword_281228B80, 0x277D4C588);
  v6 = sub_264E89AF4();
  v7 = sub_264E899D4();
  return a5(v6, v7, v8);
}

id SFResultSectionsDidLoadFeedback.init(resultSectionsData:queryIdentifier:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_264E89834();
  v6 = sub_264E899B4();

  v7 = [v4 initWithResultSectionsData:v5 queryIdentifier:v6];

  sub_264E658D4(a1, a2);
  return v7;
}

char *SFResultSectionsDidLoadFeedback.init(resultSectionsData:queryIdentifier:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = &v4[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections];
  *&v4[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections] = xmmword_264E8B290;
  v10 = &v4[OBJC_IVAR___SFResultSectionsDidLoadFeedback_queryIdentifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v12 = result;
    internalBuild = MobileGestalt_get_internalBuild();

    if (internalBuild)
    {
      v24.receiver = v4;
      v24.super_class = SFResultSectionsDidLoadFeedback;
      v14 = objc_msgSendSuper2(&v24, sel_init);
      if (v14)
      {
        v15 = &v14[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections];
        v16 = *&v14[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections];
        v17 = *&v14[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections + 8];
        *v15 = a1;
        v15[1] = a2;
        v18 = v14;
        v19 = v14;
        sub_264E6855C(v16, v17);
        v20 = &v19[OBJC_IVAR___SFResultSectionsDidLoadFeedback_queryIdentifier];
        v21 = *&v19[OBJC_IVAR___SFResultSectionsDidLoadFeedback_queryIdentifier + 8];
        *v20 = a3;
        *(v20 + 1) = a4;

        return v18;
      }

      sub_264E658D4(a1, a2);
    }

    else
    {

      sub_264E658D4(a1, a2);
      sub_264E6855C(*v9, *(v9 + 1));
      v22 = *(v10 + 1);

      type metadata accessor for SFResultSectionsDidLoadFeedback(v23);
      swift_deallocPartialClassInstance();
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SFResultSectionsDidLoadFeedback.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v3 = &v1[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections];
  *&v1[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections] = xmmword_264E8B290;
  v4 = &v1[OBJC_IVAR___SFResultSectionsDidLoadFeedback_queryIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  internalBuild = MobileGestalt_get_internalBuild();

  if (!internalBuild)
  {

    sub_264E6855C(*v3, *(v3 + 1));
    v14 = *(v4 + 1);

    type metadata accessor for SFResultSectionsDidLoadFeedback(v15);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v23.receiver = v1;
  v23.super_class = SFResultSectionsDidLoadFeedback;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v23, sel_initWithCoder_, v8);
  v10 = v9;

  if (!v10)
  {

    return 0;
  }

  sub_264E68514(0, &qword_27FFB7720, 0x277CBEA90);
  v11 = v10;
  v12 = sub_264E89C04();
  if (v12)
  {
    v13 = v12;
    sub_264E89844();
  }

  v16 = &v11[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections];
  v17 = *&v11[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections];
  v18 = *&v11[OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections + 8];
  *v16 = 0;
  *(v16 + 1) = 0xF000000000000000;
  sub_264E6855C(v17, v18);
  sub_264E68514(0, &qword_27FFB71F0, 0x277CCACA8);
  v19 = sub_264E89C04();
  if (v19)
  {
    v20 = v19;
    sub_264E899C4();
  }

  else
  {
  }

  v21 = &v11[OBJC_IVAR___SFResultSectionsDidLoadFeedback_queryIdentifier];
  v22 = *&v11[OBJC_IVAR___SFResultSectionsDidLoadFeedback_queryIdentifier + 8];
  *v21 = 0;
  *(v21 + 1) = 0;

  return v9;
}

void SFResultSectionsDidLoadFeedback.copy(with:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v25.super_class = SFResultSectionsDidLoadFeedback;
    objc_msgSendSuper2(&v25, sel_copyWithZone_, a1);
    sub_264E89C44();
    v4 = swift_unknownObjectRelease();
    Feedback = type metadata accessor for SFResultSectionsDidLoadFeedback(v4);
    swift_dynamicCast();
    v6 = v24;
    v7 = [v2 resultSections];
    if (v7)
    {
      v8 = v7;
      v9 = sub_264E89854();
      v11 = v10;

      v12 = sub_264E89834();
      sub_264E658D4(v9, v11);
    }

    else
    {
      v12 = 0;
    }

    [v24 setResultSections_];

    v23 = [v2 queryIdentifier];
    [v24 setQueryIdentifier_];

    goto LABEL_10;
  }

  v13 = [v2 resultSections];
  if (!v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = sub_264E89854();
  v17 = v16;

  v18 = [v2 queryIdentifier];
  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = v18;
  v20 = objc_allocWithZone(SFResultSectionsDidLoadFeedback);
  v21 = sub_264E89834();
  v6 = [v20 initWithResultSectionsData:v21 queryIdentifier:v19];

  v22 = sub_264E658D4(v15, v17);
  if (v6)
  {
    Feedback = type metadata accessor for SFResultSectionsDidLoadFeedback(v22);
LABEL_10:
    a2[3] = Feedback;
    *a2 = v6;
    return;
  }

LABEL_13:
  __break(1u);
}

Swift::Void __swiftcall SFResultSectionsDidLoadFeedback.encode(with:)(NSCoder with)
{
  v12.super_class = SFResultSectionsDidLoadFeedback;
  objc_msgSendSuper2(&v12, sel_encodeWithCoder_, with.super.isa);
  v3 = [v1 resultSections];
  if (v3)
  {
    v4 = v3;
    v5 = sub_264E89854();
    v7 = v6;

    v8 = sub_264E89834();
    sub_264E658D4(v5, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_264E899B4();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();

  v10 = [v1 queryIdentifier];
  v11 = sub_264E899B4();
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];
}

id SFResultSectionsDidLoadFeedback.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_264E76CB4()
{
  v0 = sub_264E899B4();
  v1 = sub_264E899B4();
  v2 = [objc_opt_self() attributeWithDomain:v0 name:v1];

  qword_27FFB7910 = v2;
}

id sub_264E76D5C()
{
  result = [objc_allocWithZone(type metadata accessor for SIApplicationClientService()) init];
  qword_27FFBBB18 = result;
  return result;
}

id SIApplicationClientService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_264E76DC0()
{
  v1 = OBJC_IVAR____TtC22SearchIntrospectionKit26SIApplicationClientService_connection;
  if (!*&v0[OBJC_IVAR____TtC22SearchIntrospectionKit26SIApplicationClientService_connection])
  {
    v2 = sub_264E77824();
    if (v2)
    {
      v3 = *&v0[v1];
      *&v0[v1] = v2;
      v4 = v2;

      v5 = swift_allocObject();
      *(v5 + 16) = v0;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_264E77928;
      *(v6 + 24) = v5;
      v11[4] = sub_264E77930;
      v11[5] = v6;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 1107296256;
      v11[2] = sub_264E772C0;
      v11[3] = &block_descriptor;
      v7 = _Block_copy(v11);
      v8 = v4;
      v9 = v0;

      [v8 configureConnection_];

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        [v8 activate];
      }
    }
  }
}

void sub_264E76F5C(void *a1, void *a2)
{
  v4 = sub_264E899B4();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = [objc_opt_self() protocolForProtocol_];
  [v5 setServer_];

  v7 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v18 = sub_264E7799C;
  v19 = v8;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_264E771E8;
  v17 = &block_descriptor_16;
  v9 = _Block_copy(&v14);
  v10 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v9);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v18 = sub_264E77970;
  v19 = v11;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_264E771E8;
  v17 = &block_descriptor_22;
  v12 = _Block_copy(&v14);
  v13 = v10;

  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_264E771E8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_264E77250(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC22SearchIntrospectionKit26SIApplicationClientService_connection;
  v4 = *(a2 + OBJC_IVAR____TtC22SearchIntrospectionKit26SIApplicationClientService_connection);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(a2 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(a2 + v3) = 0;

  v6 = *(a2 + OBJC_IVAR____TtC22SearchIntrospectionKit26SIApplicationClientService_remoteServer);
  *(a2 + OBJC_IVAR____TtC22SearchIntrospectionKit26SIApplicationClientService_remoteServer) = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_264E772C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_264E77358()
{
  sub_264E76DC0();
  if (qword_27FFB7190 != -1)
  {
    swift_once();
  }

  v1 = sub_264E898B4();
  __swift_project_value_buffer(v1, qword_27FFBBB00);
  v2 = sub_264E89894();
  v3 = sub_264E89BB4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_264E62000, v2, v3, "Creating Connection", v4, 2u);
    MEMORY[0x266751790](v4, -1, -1);
  }

  v5 = OBJC_IVAR____TtC22SearchIntrospectionKit26SIApplicationClientService_remoteServer;
  if (*(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit26SIApplicationClientService_remoteServer))
  {
    return swift_unknownObjectRetain();
  }

  v7 = *(v0 + OBJC_IVAR____TtC22SearchIntrospectionKit26SIApplicationClientService_connection);
  if (!v7)
  {
    v22 = 0u;
    v23 = 0u;
LABEL_17:
    sub_264E70BAC(&v22);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7928, qword_264E8CFA0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_264E8CF90;
  v9 = qword_27FFB7198;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_27FFB7910;
  *(v8 + 32) = qword_27FFB7910;
  sub_264E77644();
  v12 = v11;
  v13 = sub_264E89AD4();

  v14 = [v10 remoteTargetWithLaunchingAssertionAttributes_];

  if (v14)
  {
    sub_264E89C44();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFB7940, &qword_264E8CFB8);
  if (swift_dynamicCast())
  {
    v15 = *(v0 + v5);
    *(v0 + v5) = v20;
    swift_unknownObjectRelease();
    v16 = *(v0 + v5);
    return swift_unknownObjectRetain();
  }

LABEL_18:
  v17 = sub_264E89894();
  v18 = sub_264E89BD4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_264E62000, v17, v18, "Invalid connection with SPAAutomationAngel. Failed to create remote target.", v19, 2u);
    MEMORY[0x266751790](v19, -1, -1);
  }

  return 0;
}

unint64_t sub_264E77644()
{
  result = qword_27FFB7930;
  if (!qword_27FFB7930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFB7930);
  }

  return result;
}

id SIApplicationClientService.init()()
{
  *&v0[OBJC_IVAR____TtC22SearchIntrospectionKit26SIApplicationClientService_connection] = 0;
  *&v0[OBJC_IVAR____TtC22SearchIntrospectionKit26SIApplicationClientService_remoteServer] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SIApplicationClientService();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SIApplicationClientService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SIApplicationClientService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264E77824()
{
  v0 = sub_264E899B4();
  v1 = sub_264E899B4();
  v2 = [objc_opt_self() endpointForMachName:v0 service:v1 instance:0];

  if (v2)
  {
    v3 = [objc_opt_self() connectionWithEndpoint_];

    if (v3)
    {
      result = swift_dynamicCastObjCProtocolConditional();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_264E77930()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

SIFeedbackListener __swiftcall SIFeedbackListener.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void _sSo18SIFeedbackListenerC22SearchIntrospectionKitE4sendyySo31SFResultSectionsDidLoadFeedbackCF_0(void *a1)
{
  v2 = MobileGestalt_get_current_device();
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  internalBuild = MobileGestalt_get_internalBuild();

  if (internalBuild)
  {
    v5 = [a1 resultSections];
    if (v5)
    {
      v6 = v5;
      v7 = sub_264E89854();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0xF000000000000000;
    }

    v10 = [a1 queryIdentifier];
    if (v10)
    {
      v11 = v10;
      sub_264E899D4();
      v13 = v12;

      if (v9 >> 60 != 15)
      {
        if (v13)
        {
          v14 = objc_opt_self();
          sub_264E65880(v7, v9);
          v15 = sub_264E89834();
          sub_264E6855C(v7, v9);
          oslog = sub_264E899B4();

          [v14 handleSpotlightResponse:v15 forQuery:oslog];
          sub_264E6855C(v7, v9);

LABEL_18:

          return;
        }

LABEL_13:
        if (qword_27FFB7190 != -1)
        {
          swift_once();
        }

        v16 = sub_264E898B4();
        __swift_project_value_buffer(v16, qword_27FFBBB00);
        oslog = sub_264E89894();
        v17 = sub_264E89BD4();
        if (os_log_type_enabled(oslog, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_264E62000, oslog, v17, "SFResultSectionsDidLoadFeedback object has nil data", v18, 2u);
          MEMORY[0x266751790](v18, -1, -1);
        }

        sub_264E6855C(v7, v9);
        goto LABEL_18;
      }
    }

    else if (v9 >> 60 != 15)
    {
      goto LABEL_13;
    }

    goto LABEL_13;
  }
}

unint64_t type metadata accessor for SIFeedbackListener()
{
  result = qword_27FFB7B40;
  if (!qword_27FFB7B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFB7B40);
  }

  return result;
}

uint64_t sub_264E77D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[22] = a4;
  return MEMORY[0x2822009F8](sub_264E77D3C, 0, 0);
}

uint64_t sub_264E77D3C()
{
  super_class = v0[12].super_class;
  receiver = v0[13].receiver;
  v4 = v0[11].super_class;
  v3 = v0[12].receiver;
  v5 = v0[11].receiver;
  v6 = type metadata accessor for SpotlightQuery();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryFilter];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = -1;
  v7[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_spotlightQueryKind] = 0;
  v9 = &v7[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryString];
  *v9 = v5;
  v9[1] = v4;

  v10 = sub_264E659D4(v5, v4);
  v11 = &v7[OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryIdentifier];
  *v11 = v10;
  v11[1] = v12;
  v0[9].receiver = v7;
  v0[9].super_class = v6;
  v13 = objc_msgSendSuper2(v0 + 9, sel_init);
  v0[13].super_class = v13;
  v14 = type metadata accessor for SISpotlightResponse();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC22SearchIntrospectionKit19SISpotlightResponse_query] = v13;
  v16 = &v15[OBJC_IVAR____TtC22SearchIntrospectionKit19SISpotlightResponse_resultSections];
  *v16 = v3;
  v16[1] = super_class;
  v17 = v13;
  sub_264E65880(v3, super_class);
  v0[10].receiver = v15;
  v0[10].super_class = v14;
  v18 = objc_msgSendSuper2(v0 + 10, sel_init);
  v0[14].receiver = v18;
  if (receiver)
  {
    v19 = v0[13].receiver;
    v0[1].receiver = v0;
    v0[1].super_class = sub_264E77FBC;
    v20 = swift_continuation_init();
    v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B60, &qword_264E8D040);
    v0[5].receiver = MEMORY[0x277D85DD0];
    v0[5].super_class = 1107296256;
    v0[6].receiver = sub_264E781AC;
    v0[6].super_class = &block_descriptor_0;
    v0[7].receiver = v20;
    [v19 returnSpotlightResponse:v18 completionHandler:&v0[5]];

    return MEMORY[0x282200938](&v0[1]);
  }

  else
  {

    v21 = v0->super_class;

    return v21();
  }
}

uint64_t sub_264E77FBC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_264E78134;
  }

  else
  {
    v3 = sub_264E780CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264E780CC()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264E78134()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[29];

  return v4();
}

uint64_t sub_264E781AC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_264E78258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B58, &qword_264E8D650) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v23 - v9;
  sub_264E78ACC(a3, v23 - v9);
  v11 = sub_264E89B74();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_264E78B3C(v10);
  }

  else
  {
    sub_264E89B64();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_264E89B24();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_264E899F4() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_264E78B3C(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_264E78B3C(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

SIResponseHandler __swiftcall SIResponseHandler.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void _sSo17SIResponseHandlerC22SearchIntrospectionKitE23handleSpotlightResponse_8forQueryy10Foundation4DataV_SStFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B58, &qword_264E8D650) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v19 - v9;
  if (qword_281228C88 != -1)
  {
    swift_once();
  }

  if (sub_264E6FA0C())
  {
    if (qword_27FFB71A0 != -1)
    {
      swift_once();
    }

    v11 = sub_264E77358();
    if (v11)
    {
      v12 = v11;
      v13 = sub_264E89B74();
      (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = a3;
      v14[5] = a4;
      v14[6] = a1;
      v14[7] = a2;
      v14[8] = v12;

      sub_264E65880(a1, a2);
      sub_264E78258(0, 0, v10, &unk_264E8D038, v14);
    }

    else
    {
      if (qword_27FFB7190 != -1)
      {
        swift_once();
      }

      v15 = sub_264E898B4();
      __swift_project_value_buffer(v15, qword_27FFBBB00);
      v20 = sub_264E89894();
      v16 = sub_264E89BD4();
      if (os_log_type_enabled(v20, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_264E62000, v20, v16, "Unable to get server", v17, 2u);
        MEMORY[0x266751790](v17, -1, -1);
      }

      v18 = v20;
    }
  }
}

unint64_t type metadata accessor for SIResponseHandler()
{
  result = qword_27FFB7B50;
  if (!qword_27FFB7B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFB7B50);
  }

  return result;
}

uint64_t sub_264E788FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_264E789D8;

  return sub_264E77D14(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_264E789D8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264E78ACC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B58, &qword_264E8D650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E78B3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B58, &qword_264E8D650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_264E78BDC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit14SIMailResponse_query);
  v4 = sub_264E899B4();
  [a1 encodeObject:v3 forKey:v4];
}

id SIMailResponse.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  type metadata accessor for MailQuery();
  v5 = sub_264E89C04();
  if (v5)
  {
    *&v4[OBJC_IVAR____TtC22SearchIntrospectionKit14SIMailResponse_query] = v5;
    v8.receiver = v4;
    v8.super_class = v2;
    v6 = objc_msgSendSuper2(&v8, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

id SIMailResponse.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for MailQuery();
  v4 = sub_264E89C04();
  if (v4)
  {
    *&v2[OBJC_IVAR____TtC22SearchIntrospectionKit14SIMailResponse_query] = v4;
    v7.receiver = v2;
    v7.super_class = type metadata accessor for SIMailResponse();
    v5 = objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {

    type metadata accessor for SIMailResponse();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

id SIMailResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SIMailResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SIMailResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264E79030(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_264E7910C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7C08, &qword_264E8D230);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = MEMORY[0x277D84F98];
  result = sub_264E898A4();
  qword_27FFB7B88 = v3;
  return result;
}

uint64_t static SIDataManager<>.shared.getter()
{
  if (qword_27FFB71A8 != -1)
  {
    swift_once();
  }
}

{
  if (qword_27FFB71B0 != -1)
  {
    swift_once();
  }
}

{
  if (qword_27FFB71B8 != -1)
  {
    swift_once();
  }
}

uint64_t SIDataManager<>.injectMailQuery(_:)(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_264E79290, v1, 0);
}