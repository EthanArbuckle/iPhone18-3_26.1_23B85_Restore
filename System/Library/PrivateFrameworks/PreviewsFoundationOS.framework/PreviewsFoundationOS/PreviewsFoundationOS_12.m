uint64_t Collection.pluralize(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_25F3057BC() == 1)
  {
  }

  else
  {

    if (a4)
    {
      return a3;
    }

    else
    {
      MEMORY[0x25F8D7130](115, 0xE100000000000000);
    }
  }

  return a1;
}

uint64_t Int.pluralize(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 == 1)
  {
    v5 = a1;
  }

  else
  {
    if (!a4)
    {

      MEMORY[0x25F8D7130](115, 0xE100000000000000);
      return a1;
    }

    v5 = a3;
  }

  return v5;
}

uint64_t Collection.countDescription(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3057BC();

  return sub_25F2B4DEC(a1, a2, v4);
}

uint64_t sub_25F2B4DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_25F3064DC();
  MEMORY[0x25F8D7130](32, 0xE100000000000000);

  if (a3 != 1)
  {
    MEMORY[0x25F8D7130](115, 0xE100000000000000);
  }

  MEMORY[0x25F8D7130](a1, a2);

  return v7;
}

uint64_t sub_25F2B4EA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F2B4EF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_25F2B4F48(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_25F2B4F60(void *result, int a2)
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

uint64_t Issue.Identifier.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Issue.Identifier.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_25F2B5020()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F30671C();
  sub_25F304F0C();
  return sub_25F30676C();
}

uint64_t sub_25F2B506C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25F304F0C();
}

uint64_t sub_25F2B5074()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F30671C();
  sub_25F304F0C();
  return sub_25F30676C();
}

uint64_t sub_25F2B50BC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25F30659C();
  }
}

uint64_t Issue.Severity.hashValue.getter()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  return sub_25F30676C();
}

uint64_t Issue.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Issue.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Issue() + 20);
  v4 = sub_25F30462C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Issue()
{
  result = qword_27FD57D70;
  if (!qword_27FD57D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Issue.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Issue() + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = *(v3 + 24);
}

uint64_t Issue.description.getter()
{
  v1 = (v0 + *(type metadata accessor for Issue() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Issue.severity.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Issue();
  *a1 = *(v1 + *(result + 32));
  return result;
}

__n128 Issue.init(identifier:timestamp:location:severity:description:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v11 = a1[1];
  v21 = *(a3 + 16);
  v22 = *a3;
  v12 = *(a3 + 32);
  v13 = *a4;
  if (v11)
  {
    v14 = *a1;
  }

  else
  {

    v14 = a5;
    v11 = a6;
  }

  *a7 = v14;
  *(a7 + 1) = v11;
  v15 = type metadata accessor for Issue();
  v16 = v15[5];
  v17 = sub_25F30462C();
  (*(*(v17 - 8) + 32))(&a7[v16], a2, v17);
  v18 = &a7[v15[6]];
  result = v22;
  *v18 = v22;
  *(v18 + 1) = v21;
  *(v18 + 4) = v12;
  v20 = &a7[v15[7]];
  *v20 = a5;
  *(v20 + 1) = a6;
  a7[v15[8]] = v13;
  return result;
}

unint64_t sub_25F2B5410()
{
  result = qword_27FD57D60;
  if (!qword_27FD57D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57D60);
  }

  return result;
}

unint64_t sub_25F2B5468()
{
  result = qword_27FD57D68;
  if (!qword_27FD57D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57D68);
  }

  return result;
}

uint64_t sub_25F2B54E4()
{
  result = sub_25F30462C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F2B558C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F2B55DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_25F2B5638(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t FixedStack.push(_:)(uint64_t a1, uint64_t a2)
{
  sub_25F2B607C(a2);
  v4 = *v2;
  return sub_25F2B5944(a1) & 1;
}

void *FixedStack.init(capacity:)@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for FixedStack.Implementation() + 80);
  v3 = sub_25F305C4C();
  v5 = v4;
  result = swift_allocObject();
  result[2] = v3;
  result[3] = v5;
  result[4] = 0;
  *a1 = result;
  return result;
}

uint64_t FixedStack.pop()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25F2B607C(a1);
  v4 = *v2;
  return sub_25F2B5A84(a2);
}

void *sub_25F2B5784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t sub_25F2B57CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(*v0 + 80);
  result = sub_25F305C3C();
  if (result)
  {
    v5 = v0[4];
    sub_25F305BFC();
    v6 = v0[2];
    v7 = v0[3];
    sub_25F305C2C();
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F2B5830()
{
  v0 = sub_25F2B57CC();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_25F2B5860()
{
  v1 = v0[3];
  v2 = *(*v0 + 80);
  v3 = sub_25F305C4C();
  v5 = v4;
  result = sub_25F305C3C();
  if (result)
  {
    v7 = v0[2];
    result = sub_25F305C3C();
    if (result)
    {
      v8 = v0[4];
      sub_25F305C0C();
      v9 = v0[4];
      result = swift_allocObject();
      result[2] = v3;
      result[3] = v5;
      result[4] = v9;
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

uint64_t sub_25F2B5944(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v17 - v6;
  v8 = v1[3];
  v9 = v1[4];
  if (v9 >= v8)
  {
    return v9 < v8;
  }

  v10 = v1[2];
  v11 = v1[3];
  result = sub_25F305C3C();
  if (result)
  {
    v13 = result + *(v4 + 72) * v1[4];
    (*(v4 + 16))(v7, a1, v3);
    result = (*(v4 + 32))(v13, v7, v3);
    v14 = v1[4];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (!v15)
    {
      v1[4] = v16;
      return v9 < v8;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F2B5A84@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v1[4] < 1)
  {
    v15 = *(v3 + 80);
    v12 = *(*(v15 - 8) + 56);
    v13 = a1;
    v14 = 1;
    goto LABEL_7;
  }

  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v3 + 80);
  result = sub_25F305C3C();
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v8 = v1[4];
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = *(v6 - 8);
  (*(v16 + 16))(a1, result + *(v16 + 72) * (v8 - 1), v6);
  result = sub_25F305BFC();
  v9 = v1[4];
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v1[4] = v11;
  v12 = *(v16 + 56);
  v13 = a1;
  v14 = 0;
  v15 = v6;
LABEL_7:

  return v12(v13, v14, 1, v15);
}

uint64_t sub_25F2B5C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (v3[4] <= a1)
  {
    goto LABEL_7;
  }

  v6 = v3[2];
  v7 = v3[3];
  v8 = *(*v3 + 80);
  v9 = sub_25F305C3C();
  if (!v9)
  {
    __break(1u);
LABEL_7:
    v14 = v3;
    sub_25F305FAC();
    MEMORY[0x25F8D7130](0xD000000000000023, 0x800000025F31B060);
    v15 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v15);

    MEMORY[0x25F8D7130](0xD000000000000018, 0x800000025F31B090);
    v16 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v16);

    MEMORY[0x25F8D7130](3943982, 0xE300000000000000);
    v18 = v14[4];
    v17 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v17);

    MEMORY[0x25F8D7130](46, 0xE100000000000000);
    result = sub_25F30627C();
    __break(1u);
    return result;
  }

  v10 = *(v8 - 8);
  v11 = *(v10 + 16);
  v12 = v9 + *(v10 + 72) * a1;

  return v11(a2, v12, v8);
}

uint64_t sub_25F2B5E28@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_25F2B5C08();
  *a1 = result;
  return result;
}

uint64_t (*sub_25F2B5E54(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  v6 = *v2;
  v5[4] = sub_25F2B5ED0(v5, *a2);
  return sub_25F1CA424;
}

void (*sub_25F2B5ED0(void *a1, uint64_t a2))(void *)
{
  v5 = *(*v2 + 80);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  v7 = *(v6 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  a1[2] = v8;
  sub_25F2B5C10(a2, v8);
  return sub_25F2B5FA0;
}

uint64_t sub_25F2B5FA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_25F2B6010(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F2B607C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  type metadata accessor for FixedStack.Implementation();
  result = sub_25F30652C();
  if ((result & 1) == 0)
  {
    v5 = *v1;
    v6 = sub_25F2B5860();
    v7 = *v2;

    *v2 = v6;
  }

  return result;
}

Swift::Int __swiftcall FixedStack.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall FixedStack.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall FixedStack.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall FixedStack.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F2B6130@<X0>(uint64_t *a1@<X8>)
{
  result = FixedStack.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t (*sub_25F2B6158(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_25F2B61E0(v6, *a2, a3);
  return sub_25F1CD510;
}

void (*sub_25F2B61E0(void *a1, uint64_t a2, uint64_t a3))(void *)
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  v10 = *v3;
  sub_25F2B5C10(a2, v9);
  return sub_25F2B6F88;
}

uint64_t sub_25F2B62A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_25F2B6310(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F2B637C()
{
  swift_getWitnessTable();
  v1 = sub_25F2B6F1C();
  v2 = *v0;

  return v1;
}

uint64_t sub_25F2B63C8(void *a1, void *a2)
{
  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    v11 = a1[2];
    v3 = *(v2 + 80);
    sub_25F305C5C();
    swift_getWitnessTable();
    sub_25F30586C();
    v12 = a2[2];
    v10 = a1[4];
    sub_25F30586C();
    sub_25F3066DC();
    swift_getWitnessTable();
    v6 = sub_25F30663C();
    v7 = MEMORY[0x28223BE20](v6);
    MEMORY[0x28223BE20](v7);
    sub_25F30600C();
    swift_getWitnessTable();
    v8 = sub_25F30510C();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_25F2B662C(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v17 - v7;
  MEMORY[0x25F8D88E0](v2[3]);
  MEMORY[0x25F8D88E0](v2[4]);
  v9 = v2[2];
  result = sub_25F305C3C();
  if (!result)
  {
    goto LABEL_8;
  }

  v11 = v2[4];
  if (v11 < 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v17[1] = a2;
  if (v11)
  {
    v12 = result;
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    do
    {
      v14(v8, v12, v4);
      sub_25F304BDC();
      result = (*(v13 - 8))(v8, v4);
      v12 += v16;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_25F2B679C(uint64_t a1)
{
  sub_25F30671C();
  sub_25F2B662C(v3, a1);
  return sub_25F30676C();
}

uint64_t sub_25F2B6834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_25F30671C();
  v5 = *v3;
  sub_25F2B662C(v7, v4);
  return sub_25F30676C();
}

uint64_t static FixedStack<A>.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for FixedStack.Implementation();
  return sub_25F2B63C8(v2, v3) & 1;
}

uint64_t sub_25F2B68D4(void **a1, void **a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static FixedStack<A>.== infix(_:_:)(a1, a2);
}

uint64_t FixedStack<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_25F30671C();
  sub_25F2B662C(v6, a2);
  return sub_25F30676C();
}

uint64_t sub_25F2B6964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  sub_25F30671C();
  FixedStack<A>.hash(into:)(v6, v4, v3);
  return sub_25F30676C();
}

uint64_t sub_25F2B6B0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2B6D40()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_25F304CEC();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_25F3059CC() + 36);
  result = sub_25F304CEC();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_25F2B6E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_25F304CEC();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_25F2B6F20(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_25F27D06C(a1, *(v1 + 32)) & 1;
}

uint64_t Result.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  v11 = v10;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v10 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v7, a1);
  }

  else
  {
    v13 = *(a1 + 16);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v11 + 56))(a2, 0, 1, v13);
  }
}

uint64_t Sequence.invertAndAccumulateErrors<A, B>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return Sequence.traverseAndAccumulateErrors<A, B>(_:)(sub_25F2B99BC, v6, a1, a2, a3, a4, a5);
}

uint64_t Sequence.invert<A, B>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a4;
  v7[6] = a5;
  return Sequence.traverse<A, B>(_:)(sub_25F2BBC60, v7, a1, a2, a4, a6);
}

uint64_t static Result<>.success.getter()
{
  sub_25F30678C();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F2B722C@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v15, a2[3]);
  }

  else
  {
    (*(v7 + 32))(v11, v15, v6);
    a1(v11);
    (*(v7 + 8))(v11, v6);
    v18 = a2[3];
  }

  v19 = a2[4];
  sub_25F30678C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t Result.tryMap<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v38 = a1;
  v39 = a4;
  v37 = a2;
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v37 - v14;
  v17 = *(v16 + 16);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v13);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = a5;
    v30 = *(v8 + 32);
    v30(v15, v26, v7);
    (*(v8 + 16))(v12, v15, v7);
    v31 = *(a3 + 32);
    v32 = sub_25F30650C();
    if (v32)
    {
      v33 = v32;
      v34 = *(v8 + 8);
      v34(v12, v7);
    }

    else
    {
      v33 = swift_allocError();
      v30(v35, v12, v7);
      v34 = *(v8 + 8);
    }

    v34(v15, v7);
    *v29 = v33;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30678C();
  }

  else
  {
    (*(v18 + 32))(v22, v26, v17);
    v38(v22);
    (*(v18 + 8))(v22, v17);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30678C();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t Result.analyze<A>(success:failure:)(void (*a1)(char *), uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a3;
  v27 = a1;
  v5 = *(a5 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v24, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v10, v21, v5);
    v29(v10);
    return (*(v6 + 8))(v10, v5);
  }

  else
  {
    (*(v13 + 32))(v17, v21, v12);
    v27(v17);
    return (*(v13 + 8))(v17, v12);
  }
}

uint64_t Result.failure.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(a1 + 24);
  v10 = *(v9 - 8);
  v11 = v10;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(a1 + 24);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v11 + 56))(a2, 0, 1, v12);
  }

  else
  {
    (*(v10 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v7, a1);
  }
}

BOOL Result.isSuccess.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25F305C1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  Result.value.getter(a1, &v10 - v6);
  v8 = (*(*(v2 - 8) + 48))(v7, 1, v2) != 1;
  (*(v4 + 8))(v7, v3);
  return v8;
}

BOOL Result.isFailure.getter(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = sub_25F305C1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  Result.failure.getter(a1, &v10 - v6);
  v8 = (*(*(v2 - 8) + 48))(v7, 1, v2) != 1;
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t Result.replace<A>(with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  return sub_25F2B722C(sub_25F2B9A3C, a1, a2);
}

uint64_t Result.ignoringValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  return sub_25F2B722C(nullsub_2, a1, a2);
}

uint64_t Result.flattened<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v6);
  }

  (*(*(*(a1 + 24) - 8) + 32))(a2, v6);
  v8 = *(a1 + 16);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Result.Discriminant.init(rawValue:)()
{
  v0 = sub_25F3063BC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t Result.Discriminant.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_25F2B80B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F2B812C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F2B8198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F2B8208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F2B8278@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = Result.Discriminant.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t sub_25F2B82A8@<X0>(uint64_t *a1@<X8>)
{
  result = Result.Discriminant.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

BOOL Result.discriminant.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  v6 = swift_getEnumCaseMultiPayload() == 1;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t Sequence.traverse<A, B>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X5>, uint64_t *a6@<X8>)
{
  v60 = a1;
  v61 = a2;
  v50 = a6;
  v46 = *(a4 - 8);
  v9 = *(v46 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v58 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v46 - v12;
  v48 = v13;
  v49 = v14;
  v59 = sub_25F30678C();
  v15 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v17 = &v46 - v16;
  v62 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  v19 = *(v65 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v46 - v20;
  v22 = sub_25F305C1C();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v46 - v25;
  v27 = *(a3 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = swift_getAssociatedTypeWitness();
  v47 = *(v31 - 8);
  v32 = *(v47 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v46 - v33;
  v64 = a4;
  v66 = sub_25F3052DC();
  (*(v27 + 16))(v30, v63, a3);
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = v34;
  v63 = v31;
  v56 = AssociatedConformanceWitness;
  sub_25F305CDC();
  v36 = v65;
  v54 = *(v65 + 48);
  v55 = v65 + 48;
  if (v54(v26, 1, AssociatedTypeWitness) == 1)
  {
LABEL_5:
    (*(v47 + 8))(v62, v63);
    *v50 = v66;
    sub_25F30539C();
    sub_25F30678C();
  }

  else
  {
    v37 = *(v36 + 32);
    v52 = (v46 + 32);
    v53 = v37;
    v51 = (v46 + 16);
    v38 = (v46 + 8);
    v65 = v36 + 32;
    v39 = (v36 + 8);
    while (1)
    {
      v53(v21, v26, AssociatedTypeWitness);
      v60(v21);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v40 = v21;
      v41 = AssociatedTypeWitness;
      v42 = v57;
      v43 = v64;
      (*v52)(v57, v17, v64);
      (*v51)(v58, v42, v43);
      sub_25F30539C();
      sub_25F30533C();
      v44 = v42;
      AssociatedTypeWitness = v41;
      v21 = v40;
      (*v38)(v44, v43);
      (*v39)(v40, AssociatedTypeWitness);
      sub_25F305CDC();
      if (v54(v26, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_5;
      }
    }

    (*v39)(v21, AssociatedTypeWitness);
    (*(v47 + 8))(v62, v63);

    (*(*(v48 - 8) + 32))(v50, v17, v48);
    sub_25F30539C();
    sub_25F30678C();
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_25F2B89D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 56;
    v4 = MEMORY[0x277D84F90];
    v5 = MEMORY[0x277D84F90];
    v23 = a1 + 56;
    do
    {
      v24 = v5;
      v6 = (v3 + 32 * v2);
      v7 = v2;
      while (1)
      {
        if (v7 >= v1)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_28;
        }

        v8 = *(v6 - 3);
        v9 = *(v6 - 2);
        v10 = *(v6 - 1);
        if ((*v6 & 1) == 0)
        {
          break;
        }

        sub_25F208950(*(v6 - 3), *(v6 - 2), *(v6 - 1), 1);
        sub_25F208950(v8, v9, v10, 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_25F2F0B18(0, v4[2] + 1, 1, v4);
        }

        v12 = v4[2];
        v11 = v4[3];
        if (v12 >= v11 >> 1)
        {
          v4 = sub_25F2F0B18((v11 > 1), v12 + 1, 1, v4);
        }

        sub_25F208978(v8, v9, v10, 1);
        v4[2] = v12 + 1;
        v4[v12 + 4] = v8;
        ++v7;
        v6 += 32;
        if (v2 == v1)
        {
          goto LABEL_18;
        }
      }

      sub_25F208950(*(v6 - 3), *(v6 - 2), *(v6 - 1), 0);
      sub_25F208950(v8, v9, v10, 0);
      v5 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_25F2F09D0(0, v24[2] + 1, 1, v24);
      }

      v3 = v23;
      v14 = v5[2];
      v13 = v5[3];
      if (v14 >= v13 >> 1)
      {
        v5 = sub_25F2F09D0((v13 > 1), v14 + 1, 1, v5);
      }

      sub_25F208978(v8, v9, v10, 0);
      v5[2] = v14 + 1;
      v15 = &v5[3 * v14];
      v15[4] = v8;
      v15[5] = v9;
      v15[6] = v10;
    }

    while (v2 != v1);
LABEL_18:
    if (!v4[2])
    {
      goto LABEL_23;
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_23:

      return;
    }
  }

  v16 = v4[4];
  v17 = v16;

  if (v4[2] == 1)
  {

    v18 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
    if (sub_25F30650C())
    {
    }

    else
    {
      swift_allocError();
      *v22 = v16;
    }
  }

  else
  {
    v19 = sub_25F1B9228(v4);

    v20 = sub_25F2BB9B4(v19);
    sub_25F2BBAE4();
    swift_allocError();
    *v21 = v20;
  }
}

void sub_25F2B8CFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 48;
    v4 = MEMORY[0x277D84F90];
    v5 = MEMORY[0x277D84F90];
    v22 = a1 + 48;
    do
    {
      v6 = (v3 + 24 * v2);
      v7 = v2;
      while (1)
      {
        if (v7 >= v1)
        {
          __break(1u);
LABEL_29:
          __break(1u);
          return;
        }

        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_29;
        }

        v8 = *(v6 - 2);
        v9 = *(v6 - 1);
        if ((*v6 & 1) == 0)
        {
          break;
        }

        sub_25F1D93AC(*(v6 - 2), *(v6 - 1), 1);
        sub_25F1D93AC(v8, v9, 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_25F2F0B18(0, v4[2] + 1, 1, v4);
        }

        v11 = v4[2];
        v10 = v4[3];
        if (v11 >= v10 >> 1)
        {
          v4 = sub_25F2F0B18((v10 > 1), v11 + 1, 1, v4);
        }

        sub_25F1D93BC(v8, v9, 1);
        v4[2] = v11 + 1;
        v4[v11 + 4] = v8;
        ++v7;
        v6 += 24;
        if (v2 == v1)
        {
          goto LABEL_20;
        }
      }

      sub_25F1D93AC(*(v6 - 2), *(v6 - 1), 0);
      sub_25F1D93AC(v8, v9, 0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_25F2F1030(0, v5[2] + 1, 1, v5);
      }

      v3 = v22;
      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        v5 = sub_25F2F1030((v12 > 1), v13 + 1, 1, v5);
      }

      sub_25F1D93BC(v8, v9, 0);
      v5[2] = v13 + 1;
      v14 = &v5[2 * v13];
      v14[4] = v8;
      v14[5] = v9;
    }

    while (v2 != v1);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

LABEL_20:
  if (v4[2])
  {
    v15 = v4[4];
    v16 = v15;

    if (v4[2] == 1)
    {

      v17 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
      if (sub_25F30650C())
      {
      }

      else
      {
        swift_allocError();
        *v21 = v15;
      }
    }

    else
    {
      v18 = sub_25F1B9228(v4);

      v19 = sub_25F2BB9B4(v18);
      sub_25F2BBAE4();
      swift_allocError();
      *v20 = v19;
    }
  }

  else
  {
  }
}

uint64_t Sequence.traverseAndAccumulateErrors<A, B>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v87 = a4;
  v94 = a1;
  v95 = a2;
  v73 = sub_25F305C1C();
  v72 = *(v73 - 8);
  v11 = *(v72 + 64);
  v12 = MEMORY[0x28223BE20](v73);
  v76 = &v69 - v13;
  v88 = a5;
  v77 = *(a5 - 8);
  v14 = *(v77 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v70 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v74 = &v69 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v86 = &v69 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v85 = &v69 - v22;
  v80 = *(a4 - 8);
  v23 = *(v80 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v84 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v83 = &v69 - v26;
  v71 = a7;
  v93 = sub_25F30678C();
  v27 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v29 = &v69 - v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v98 = *(AssociatedTypeWitness - 8);
  v31 = *(v98 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v33 = &v69 - v32;
  v34 = sub_25F305C1C();
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v69 - v37;
  v39 = *(a3 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v42 = &v69 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = swift_getAssociatedTypeWitness();
  v75 = *(v43 - 8);
  v44 = *(v75 + 64);
  MEMORY[0x28223BE20](v43);
  v46 = &v69 - v45;
  v101 = sub_25F3052DC();
  v100 = sub_25F3052DC();
  (*(v39 + 16))(v42, v97, a3);
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v96 = v46;
  v97 = v43;
  v92 = AssociatedConformanceWitness;
  sub_25F305CDC();
  v48 = v98;
  v90 = *(v98 + 48);
  v91 = v98 + 48;
  if (v90(v38, 1, AssociatedTypeWitness) != 1)
  {
    v89 = *(v48 + 32);
    v81 = (v80 + 16);
    v82 = (v80 + 32);
    v80 += 8;
    v98 = v48 + 32;
    v79 = (v77 + 32);
    v78 = (v77 + 16);
    v58 = (v77 + 8);
    v89(v33, v38, AssociatedTypeWitness);
    while (1)
    {
      v94(v33);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v59 = v85;
        v60 = v88;
        (*v79)(v85, v29, v88);
        (*v78)(v86, v59, v60);
        sub_25F30539C();
        sub_25F30533C();
        (*v58)(v59, v60);
      }

      else
      {
        v61 = v83;
        v62 = v87;
        (*v82)(v83, v29, v87);
        (*v81)(v84, v61, v62);
        sub_25F30539C();
        sub_25F30533C();
        (*v80)(v61, v62);
      }

      (*(v48 + 8))(v33, AssociatedTypeWitness);
      sub_25F305CDC();
      if (v90(v38, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      v89(v33, v38, AssociatedTypeWitness);
    }
  }

  (*(v75 + 8))(v96, v97);
  v99 = v100;
  v49 = v88;
  sub_25F30539C();

  swift_getWitnessTable();
  v50 = v76;
  sub_25F30583C();
  v51 = v77;
  if ((*(v77 + 48))(v50, 1, v49) == 1)
  {

    (*(v72 + 8))(v50, v73);

    return v101;
  }

  else
  {

    v52 = *(v51 + 32);
    v53 = v74;
    v52(v74, v50, v49);

    if (sub_25F30531C() == 1)
    {

      v54 = v70;
      (*(v51 + 16))(v70, v53, v49);
      v55 = sub_25F30650C();
      if (v55)
      {
        v56 = v55;
        v57 = *(v51 + 8);
        v57(v54, v49);
      }

      else
      {
        v56 = swift_allocError();
        v52(v68, v54, v49);
        v57 = *(v51 + 8);
      }

      v57(v53, v49);
      return v56;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
      v64 = sub_25F30618C();

      v65 = sub_25F2BB9B4(v64);
      sub_25F2BBAE4();
      v66 = swift_allocError();
      *v67 = v65;
      (*(v51 + 8))(v53, v49);
      return v66;
    }
  }
}

uint64_t sub_25F2B99C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[6];
  v8 = sub_25F30678C();
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

unint64_t sub_25F2B9A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    while (1)
    {
      sub_25F1BF03C(v2, &v12);
      v3 = v13;
      v4 = v14;
      __swift_project_boxed_opaque_existential_1(&v12, v13);
      (*(v4 + 32))(v3, v4);
      if (v5)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(&v12);
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_8;
      }
    }

    sub_25F1E1C08(&v12, v15);
    v6 = v16;
    v7 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v8 = (*(v7 + 32))(v6, v7);
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1(v15);
    if (v10)
    {
      return v8;
    }
  }

LABEL_8:

  return 0xD00000000000001BLL;
}

uint64_t sub_25F2B9B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_25F1BF03C(i, &v10);
    v3 = v11;
    v4 = v12;
    __swift_project_boxed_opaque_existential_1(&v10, v11);
    (*(v4 + 24))(v3, v4);
    if (v5)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(&v10);
    if (!--v1)
    {
      return 0;
    }
  }

  sub_25F1E1C08(&v10, v13);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v9 = (*(v8 + 24))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

uint64_t sub_25F2B9C88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_25F1BF03C(i, &v10);
    v3 = v11;
    v4 = v12;
    __swift_project_boxed_opaque_existential_1(&v10, v11);
    (*(v4 + 40))(v3, v4);
    if (v5)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(&v10);
    if (!--v1)
    {
      return 0;
    }
  }

  sub_25F1E1C08(&v10, v13);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v9 = (*(v8 + 40))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

uint64_t sub_25F2B9D84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_25F1BF03C(i, &v10);
    v3 = v11;
    v4 = v12;
    __swift_project_boxed_opaque_existential_1(&v10, v11);
    (*(v4 + 48))(v3, v4);
    if (v5)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(&v10);
    if (!--v1)
    {
      return 0;
    }
  }

  sub_25F1E1C08(&v10, v13);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v9 = (*(v8 + 48))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

uint64_t sub_25F2B9E80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    while (1)
    {
      sub_25F1BF03C(v2, &v9);
      v3 = v10;
      v4 = v11;
      __swift_project_boxed_opaque_existential_1(&v9, v10);
      if ((*(v4 + 96))(v3, v4))
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(&v9);
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_5;
      }
    }

    sub_25F1E1C08(&v9, v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v5 = (*(v7 + 96))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_25F2B9F68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v21 = *(a1 + 16);
  v22 = a1 + 32;
  for (i = 1; ; ++i)
  {
    v4 = (v22 + 40 * v2);
    v5 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v5);

    MEMORY[0x25F8D7130](2618, 0xE200000000000000);
    MEMORY[0x25F8D7130](0x20726F727245, 0xE600000000000000);

    v6 = v4[3];
    v7 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v6);
    (*(v7 + 112))(v6, v7);
    sub_25F1BF118();
    v8 = sub_25F305CEC();

    v9 = *(v8 + 16);
    if (v9)
    {
      break;
    }

LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
    sub_25F1C3498();
    v18 = sub_25F304CAC();
    v20 = v19;

    MEMORY[0x25F8D7130](v18, v20);

    if (i < v1)
    {
      MEMORY[0x25F8D7130](0xD000000000000022, 0x800000025F31B0D0);
    }

    if (++v2 == v1)
    {
      return 0;
    }
  }

  v23 = i;
  v24 = v2;
  v25 = MEMORY[0x277D84F90];
  result = sub_25F1BD008(0, v9, 0);
  v11 = *(v8 + 16);
  v12 = (v8 + 40);
  while (v11)
  {
    v14 = *(v12 - 1);
    v13 = *v12;

    MEMORY[0x25F8D7130](v14, v13);

    v16 = *(v25 + 16);
    v15 = *(v25 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_25F1BD008((v15 > 1), v16 + 1, 1);
    }

    *(v25 + 16) = v16 + 1;
    v17 = v25 + 16 * v16;
    *(v17 + 32) = 2105376;
    *(v17 + 40) = 0xE300000000000000;
    --v11;
    v12 += 2;
    if (!--v9)
    {

      v1 = v21;
      i = v23;
      v2 = v24;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t Result.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v8 = *(a4 + 16);
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = *(a4 - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F2BA3A8, 0, 0);
}

uint64_t sub_25F2BA3A8()
{
  (*(v0[11] + 16))(v0[12], v0[7], v0[5]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[12];
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(*(v0[5] + 24) - 8) + 32))(v0[2], v2, *(v0[5] + 24));
    v3 = v0[12];
    v4 = v0[10];
    v5 = v0[6];
    v6 = v0[2];
    v7 = *(v0[5] + 32);
    sub_25F30678C();
    swift_storeEnumTagMultiPayload();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[3];
    (*(v0[9] + 32))(v0[10], v2, v0[8]);
    v16 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[13] = v12;
    *v12 = v0;
    v12[1] = sub_25F2BA5B0;
    v13 = v0[10];
    v14 = v0[4];
    v15 = v0[2];

    return v16(v15, v13);
  }
}

uint64_t sub_25F2BA5B0()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F2BA6AC, 0, 0);
}

uint64_t sub_25F2BA6AC()
{
  v1 = v0[5];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v2 = *(v1 + 24);
  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[6];
  v6 = v0[2];
  v7 = *(v0[5] + 32);
  sub_25F30678C();
  swift_storeEnumTagMultiPayload();

  v8 = v0[1];

  return v8();
}

uint64_t Result.asyncMapError<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v9 = *(a4 + 24);
  v7[9] = v9;
  v10 = *(v9 - 8);
  v7[10] = v10;
  v11 = *(v10 + 64) + 15;
  v7[11] = swift_task_alloc();
  v12 = *(a4 - 8);
  v7[12] = v12;
  v13 = *(v12 + 64) + 15;
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F2BA884, 0, 0);
}

uint64_t sub_25F2BA884()
{
  (*(v0[12] + 16))(v0[13], v0[8], v0[5]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[13];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[3];
    (*(v0[10] + 32))(v0[11], v2, v0[9]);
    v16 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_25F2BAA88;
    v6 = v0[11];
    v7 = v0[4];
    v8 = v0[2];

    return v16(v8, v6);
  }

  else
  {
    (*(*(*(v0[5] + 16) - 8) + 32))(v0[2], v2, *(v0[5] + 16));
    v10 = v0[13];
    v11 = v0[11];
    v12 = v0[6];
    v13 = v0[7];
    v14 = v0[2];
    sub_25F30678C();
    swift_storeEnumTagMultiPayload();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_25F2BAA88()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F2BAB84, 0, 0);
}

uint64_t sub_25F2BAB84()
{
  v1 = v0[5];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v2 = *(v1 + 16);
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[2];
  sub_25F30678C();
  swift_storeEnumTagMultiPayload();

  v8 = v0[1];

  return v8();
}

uint64_t Result.asyncTryMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v8 = *(a4 + 24);
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v11 = *(a4 + 16);
  v6[12] = v11;
  v12 = *(v11 - 8);
  v6[13] = v12;
  v13 = *(v12 + 64) + 15;
  v6[14] = swift_task_alloc();
  v14 = *(a4 - 8);
  v6[15] = v14;
  v15 = *(v14 + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F2BADB8, 0, 0);
}

uint64_t sub_25F2BADB8()
{
  (*(v0[15] + 16))(v0[16], v0[7], v0[5]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[16];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[10];
    v4 = v0[11];
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[5];
    v8 = *(v5 + 32);
    v8(v4, v2, v6);
    (*(v5 + 16))(v3, v4, v6);
    v9 = *(v7 + 32);
    v10 = sub_25F30650C();
    v12 = v0[9];
    v11 = v0[10];
    if (v10)
    {
      v13 = v10;
      v14 = *(v12 + 8);
      v14(v0[10], v0[8]);
    }

    else
    {
      v22 = v0[8];
      v13 = swift_allocError();
      v8(v23, v11, v22);
      v14 = *(v12 + 8);
    }

    v24 = v0[6];
    v25 = v0[2];
    v14(v0[11], v0[8]);
    *v25 = v13;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30678C();
    swift_storeEnumTagMultiPayload();
    v26 = v0[16];
    v27 = v0[14];
    v29 = v0[10];
    v28 = v0[11];

    v30 = v0[1];

    return v30();
  }

  else
  {
    v15 = v0[3];
    (*(v0[13] + 32))(v0[14], v2, v0[12]);
    v31 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[17] = v17;
    *v17 = v0;
    v17[1] = sub_25F2BB09C;
    v18 = v0[14];
    v19 = v0[4];
    v20 = v0[2];

    return v31(v20, v18);
  }
}

uint64_t sub_25F2BB09C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_25F2BB294;
  }

  else
  {
    v3 = sub_25F2BB1B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F2BB1B0()
{
  v1 = v0[6];
  v2 = v0[2];
  (*(v0[13] + 8))(v0[14], v0[12]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();
  swift_storeEnumTagMultiPayload();
  v3 = v0[16];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_25F2BB294()
{
  v1 = v0[18];
  v2 = v0[6];
  v3 = v0[2];
  (*(v0[13] + 8))(v0[14], v0[12]);
  *v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();
  swift_storeEnumTagMultiPayload();
  v4 = v0[16];
  v5 = v0[14];
  v7 = v0[10];
  v6 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t static Result.awaiting<>(_:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v6 = *(a4 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v4[5] = v8;
  v12 = (a2 + *a2);
  v9 = a2[1];
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_25F2BB4D4;

  return v12(v8);
}

uint64_t sub_25F2BB4D4()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_25F2BB6A4;
  }

  else
  {
    v3 = sub_25F2BB5E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F2BB5E8()
{
  (*(v0[4] + 32))(v0[2], v0[5], v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();
  swift_storeEnumTagMultiPayload();
  v1 = v0[5];

  v2 = v0[1];

  return v2();
}

uint64_t sub_25F2BB6A4()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();
  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 40);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t Result<>.init(_:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v6 = *(a4 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v4[5] = v8;
  v12 = (a2 + *a2);
  v9 = a2[1];
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_25F2BB8A0;

  return v12(v8);
}

uint64_t sub_25F2BB8A0()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_25F2BBC58;
  }

  else
  {
    v3 = sub_25F2BBC64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F2BB9B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_25F1BD068(0, v2, 0);
    v3 = 32;
    v4 = v12;
    do
    {
      v5 = *(a1 + v3);
      swift_getErrorValue();
      v6 = v5;
      Error.humanReadable.getter(v10, v11);

      v12 = v4;
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_25F1BD068((v7 > 1), v8 + 1, 1);
        v4 = v12;
      }

      *(v4 + 16) = v8 + 1;
      sub_25F1E1C08(v11, v4 + 40 * v8 + 32);
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

unint64_t sub_25F2BBAE4()
{
  result = qword_27FD57E80[0];
  if (!qword_27FD57E80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD57E80);
  }

  return result;
}

unint64_t sub_25F2BBB80(uint64_t a1)
{
  *(a1 + 8) = sub_25F2BBBB0();
  result = sub_25F2BBC04();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F2BBBB0()
{
  result = qword_27FD57F08;
  if (!qword_27FD57F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57F08);
  }

  return result;
}

unint64_t sub_25F2BBC04()
{
  result = qword_27FD57F10[0];
  if (!qword_27FD57F10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD57F10);
  }

  return result;
}

uint64_t EventStream.Sink.__allocating_init()()
{
  v0 = swift_allocObject();
  EventStream.Sink.init()();
  return v0;
}

uint64_t sub_25F2BBCA0()
{
  v1 = *v0;
  v14 = v0[2];
  *&v8 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream.swift";
  *(&v8 + 1) = 123;
  v9 = 2;
  v10 = xmmword_25F314540;
  v11 = "observerCount";
  v12 = 13;
  v13 = 2;
  v2 = *(v1 + 80);
  swift_getFunctionTypeMetadata1();
  v3 = type metadata accessor for SubscriberCollection();
  v4 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v8, v4, WitnessTable);
  v8 = v15;
  v6 = SubscriberCollection.count.getter(v3);

  return v6;
}

void _s20PreviewsFoundationOS11EventStreamV4SinkC4sendyyytRszlF_0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 32));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    while (v5 < *(v3 + 16))
    {
      if (!*(v2 + 16))
      {
        goto LABEL_12;
      }

      v6 = sub_25F21FC78(*(v3 + 32 + 8 * v5));
      if ((v7 & 1) == 0)
      {
        goto LABEL_13;
      }

      v8 = *(v2 + 56) + 16 * v6;
      v10 = *v8;
      v9 = *(v8 + 8);

      if (v10)
      {
        ++v5;
        v10(v11);

        if (v4 != v5)
        {
          continue;
        }
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_8:
  }
}

uint64_t EventStream.Sink.send(_:)(uint64_t a1)
{
  v3 = *v1;
  v16 = v1[2];
  *&v10 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream.swift";
  *(&v10 + 1) = 123;
  v11 = 2;
  v12 = xmmword_25F314550;
  v13 = "send(_:)";
  v14 = 8;
  v15 = 2;
  v4 = *(v3 + 80);
  swift_getFunctionTypeMetadata1();
  v5 = type metadata accessor for SubscriberCollection();
  v6 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v10, v6, WitnessTable);
  v10 = v17;
  v9[2] = v4;
  v9[3] = a1;
  SubscriberCollection.notifyAll(closure:)(sub_25F2BC5F0, v9, v5);
}

uint64_t EventStream.Sink.eventStream.getter@<X0>(void *a1@<X8>)
{
  *a1 = sub_25F2BC620;
  a1[1] = v1;
}

uint64_t sub_25F2BBFFC(_OWORD *a1)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  v3 = *v1;
  v4 = *(v1 + 8);
  return v3(v6);
}

uint64_t sub_25F2BC048@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t EventStream.observe(dsoHandle:file:line:column:function:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v12 = *v11;
  v13 = *(v11 + 8);
  v15[0] = a2;
  v15[1] = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  return v12(v15, a10, a11);
}

uint64_t static EventStream.empty.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = sub_25F2BC65C;
  a2[1] = result;
  return result;
}

uint64_t EventStream.init<A>(publisher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double (**a5)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  result = (*(v10 + 32))(&v13[v12], a1, a3);
  *a5 = sub_25F2BC6B0;
  a5[1] = v13;
  return result;
}

double sub_25F2BC1E0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a1;
  v12[6] = a2;

  v13 = sub_25F3048DC();

  *&v16 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream.swift";
  *(&v16 + 1) = 123;
  v17 = 2;
  v18 = xmmword_25F314560;
  v19 = "init(publisher:)";
  v20 = 16;
  v21 = 2;
  CancellationToken.init(callsite:didCancel:)(&v16, sub_25F2BD038, v13, &v22);
  v14 = v23;
  result = *&v22;
  *a6 = v22;
  *(a6 + 16) = v14;
  return result;
}

void *EventStream.Sink.init()()
{
  v1 = *(*v0 + 80);
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  SubscriberCollection.init()(FunctionTypeMetadata1, &v7);
  v6 = v7;
  v3 = type metadata accessor for SubscriberCollection();
  v4 = sub_25F203E0C(&v6, v3);

  v0[2] = v4;
  return v0;
}

uint64_t sub_25F2BC3A4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *v4;
  v9 = a1[1];
  v14[0] = *a1;
  v14[1] = v9;
  v15[0] = a1[2];
  *(v15 + 9) = *(a1 + 41);
  v10 = swift_allocObject();
  v10[2] = *(v8 + 80);
  v10[3] = a2;
  v10[4] = a3;
  v13[0] = sub_25F2BD03C;
  v13[1] = v10;
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();

  static SubscriberCollection.add(callsite:_:modify:)(v14, v13, sub_25F2BD064, v4, FunctionTypeMetadata1, a4);
}

uint64_t sub_25F2BC4B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v15 = a3[2];
  *&v9 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream.swift";
  *(&v9 + 1) = 123;
  v10 = 2;
  v11 = xmmword_25F314570;
  v12 = "observe(callsite:_:)";
  v13 = 20;
  v14 = 2;
  v8[2] = *(v3 + 80);
  v8[3] = a1;
  v8[4] = a2;
  v4 = MEMORY[0x277D84F78];
  swift_getFunctionTypeMetadata1();
  type metadata accessor for SubscriberCollection();
  v5 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v9, sub_25F2BD06C, v8, v5, v4 + 8, WitnessTable);
}

uint64_t sub_25F2BC5F0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 8);
  return (*a1)(v2);
}

uint64_t sub_25F2BC620@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  return sub_25F2BC3A4(v6, a2, a3, a4);
}

double sub_25F2BC65C@<D0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  return CancellationToken.init(callsite:didCancel:)(v4, nullsub_2, 0, a2);
}

uint64_t EventStream.Sink.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t EventStream.Sink.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t EventStream.eventStream.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t EventStreamProtocol.onObserve(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v13 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a1;
  *(v14 + 5) = a2;
  (*(v11 + 32))(&v14[v13], &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  *a5 = sub_25F2BCDF0;
  a5[1] = v14;
}

uint64_t EventStream.asyncStream.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25F3054AC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = *MEMORY[0x277D85778];
  v9 = *(v8 + 104);
  v11 = *v1;
  v9(v6, v7);
  v12 = v2;
  v13 = v11;
  return sub_25F30553C();
}

uint64_t sub_25F2BC9A8(uint64_t a1, void (*a2)(__int128 *__return_ptr, void *, uint64_t (*)(uint64_t a1), uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_25F3054DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  (*(v8 + 16))(&v17 - v10, a1, v7);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  (*(v8 + 32))(v13 + v12, v11, v7);
  v20[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream.swift";
  v20[1] = 123;
  v21 = 2;
  v22 = xmmword_25F314580;
  v23 = "asyncStream";
  v24 = 11;
  v25 = 2;
  a2(&v18, v20, sub_25F2BCFA8, v13);

  v14 = v19;
  v17 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = v17;
  *(v15 + 40) = v14;
  return sub_25F30549C();
}

uint64_t sub_25F2BCB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F30548C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - v12;
  (*(v5 + 16))(v8, a1, a3);
  sub_25F3054DC();
  sub_25F3054BC();
  return (*(v10 + 8))(v13, v9);
}

void sub_25F2BCD10(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v7 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStream.swift";
  v8 = 123;
  v9 = 2;
  v10 = xmmword_25F314590;
  v11 = "asyncStream";
  v12 = 11;
  v13 = 2;
  v5 = *(a4 + 152);
  os_unfair_lock_lock(v5 + 19);
  sub_25F1D3EBC(&v5[4], &v6);
  os_unfair_lock_unlock(v5 + 19);
  if ((v6 & 1) == 0)
  {
    a2();
  }
}

uint64_t sub_25F2BCDF0(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[2];
  v7 = v3[3];
  v8 = (*(*(v6 - 8) + 80) + 48) & ~*(*(v6 - 8) + 80);
  v9 = v3[4];
  v10 = v3[5];
  v11 = a1[1];
  v14[0] = *a1;
  v14[1] = v11;
  v15[0] = a1[2];
  *(v15 + 9) = *(a1 + 41);
  v9(a2, a3);
  (*(v7 + 16))(&v13, v6, v7);
  v13(v14, a2, a3);
}

uint64_t sub_25F2BCEFC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2BCFA8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(sub_25F3054DC() - 8);
  v5 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_25F2BCB98(a1, v5, v3);
}

uint64_t sub_25F2BD03C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_25F2BD06C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

void CancellationToken.cancel(dsoHandle:file:line:column:function:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v13 = *(v12 + 152);
  os_unfair_lock_lock(v13 + 19);
  sub_25F1D3EBC(&v13[4], &v14);
  os_unfair_lock_unlock(v13 + 19);
  if ((v14 & 1) == 0)
  {
    v11();
  }
}

double CancellationToken.init(dsoHandle:file:line:column:function:_:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char a9, uint64_t a10, uint64_t a11)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  CancellationToken.init(callsite:didCancel:)(&v14, a10, a11, &v21);
  v12 = v22;
  result = *&v21;
  *a8 = v21;
  *(a8 + 16) = v12;
  return result;
}

double CancellationToken.init(callsite:didCancel:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54EE8, &unk_25F30D6E0);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54EF0, &qword_25F310F30);
  v9 = swift_allocObject();
  *(v9 + 76) = 0;
  *(v9 + 73) = 0;
  *(v8 + 152) = v9;
  v10 = a1[1];
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  *(v8 + 48) = a1[2];
  *(v8 + 57) = *(a1 + 41);
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *&result = 1;
  *(v8 + 96) = xmmword_25F3077E0;
  *(v8 + 112) = 2;
  *(v8 + 120) = 0xD000000000000011;
  *(v8 + 128) = 0x800000025F319920;
  *(v8 + 136) = 0x64656C65636E6163;
  *(v8 + 144) = 0xE800000000000000;
  a4[1] = a3;
  a4[2] = v8;
  *a4 = a2;
  return result;
}

Swift::Void __swiftcall CancellationToken.store(in:)(Swift::OpaquePointer *in)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  rawValue = in->_rawValue;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    rawValue = sub_25F2F0250(0, *(rawValue + 2) + 1, 1, rawValue);
  }

  v8 = *(rawValue + 2);
  v7 = *(rawValue + 3);
  if (v8 >= v7 >> 1)
  {
    rawValue = sub_25F2F0250((v7 > 1), v8 + 1, 1, rawValue);
  }

  *(rawValue + 2) = v8 + 1;
  v9 = &rawValue[24 * v8];
  *(v9 + 4) = v4;
  *(v9 + 5) = v3;
  *(v9 + 6) = v5;
  in->_rawValue = rawValue;
}

uint64_t Collection.concatenating<A>(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, a2);
  (*(v8 + 16))(v12, a1, a3);
  return sub_25F2BD528(v16, v12, a2, a3, a4);
}

uint64_t sub_25F2BD528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ConcatenateCollection();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t _s20PreviewsFoundationOS21ConcatenateCollectionV5IndexV1loiySbAEyxq__G_AGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a1;
  v51 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v11 = *(v49 + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v42 = &v42 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v48 = *(v15 - 8);
  v16 = *(v48 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  v44 = a3;
  v45 = a5;
  v52 = a3;
  v53 = a4;
  v46 = a4;
  v47 = a6;
  v54 = a5;
  v55 = a6;
  v22 = type metadata accessor for ConcatenateCollection.Index.Implementation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = *(*(TupleTypeMetadata2 - 8) + 64);
  v25 = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v27 = &v42 - v26;
  v28 = *(v25 + 56);
  v29 = *(v22 - 8);
  v30 = *(v29 + 16);
  v30(&v42 - v26, v50, v22);
  v30(&v27[v28], v51, v22);
  LODWORD(a6) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (a6 == 1)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v32 = v49;
      v33 = *(v49 + 32);
      v34 = v42;
      v33(v42, v27, AssociatedTypeWitness);
      v35 = v43;
      v33(v43, &v27[v28], AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v36 = sub_25F304CCC();
      v37 = *(v32 + 8);
      v37(v35, AssociatedTypeWitness);
      v37(v34, AssociatedTypeWitness);
    }

    else
    {
      (*(v29 + 8))(&v27[v28], v22);
      (*(v49 + 8))(v27, AssociatedTypeWitness);
      v36 = 0;
    }
  }

  else if (EnumCaseMultiPayload == 1)
  {
    (*(v29 + 8))(&v27[v28], v22);
    (*(v48 + 8))(v27, v15);
    v36 = 1;
  }

  else
  {
    v38 = v48;
    v39 = *(v48 + 32);
    v39(v21, v27, v15);
    v39(v19, &v27[v28], v15);
    swift_getAssociatedConformanceWitness();
    v36 = sub_25F304CCC();
    v40 = *(v38 + 8);
    v40(v19, v15);
    v40(v21, v15);
  }

  return v36 & 1;
}

uint64_t _s20PreviewsFoundationOS21ConcatenateCollectionV5IndexV2eeoiySbAEyxq__G_AGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a1;
  v53 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  v51 = AssociatedTypeWitness;
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v49 = *(v13 - 8);
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](v13);
  v42 = &v42 - v15;
  v44 = a3;
  v45 = a5;
  v54 = a3;
  v55 = a4;
  v46 = a4;
  v47 = a6;
  v56 = a5;
  v57 = a6;
  v16 = type metadata accessor for ConcatenateCollection.Index.Implementation();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  v25 = *(v48 + 64);
  v26 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v28 = &v42 - v27;
  v29 = *(v26 + 48);
  v30 = *(v17 + 16);
  v30(&v42 - v27, v52, v16);
  v30(&v28[v29], v53, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30(v21, v28, v16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v50;
      v31 = v51;
      v33 = v43;
      (*(v50 + 32))(v43, &v28[v29], v51);
      v34 = *(swift_getAssociatedConformanceWitness() + 8);
      v35 = sub_25F304DCC();
      v36 = *(v32 + 8);
      v36(v33, v31);
      v36(v21, v31);
      goto LABEL_10;
    }

    (*(v50 + 8))(v21, v51);
LABEL_7:
    v35 = 0;
    v17 = v48;
    v16 = TupleTypeMetadata2;
    goto LABEL_10;
  }

  v30(v23, v28, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v49 + 8))(v23, v13);
    goto LABEL_7;
  }

  v37 = v49;
  v38 = v42;
  (*(v49 + 32))(v42, &v28[v29], v13);
  v39 = *(swift_getAssociatedConformanceWitness() + 8);
  v35 = sub_25F304DCC();
  v40 = *(v37 + 8);
  v40(v38, v13);
  v40(v23, v13);
LABEL_10:
  (*(v17 + 8))(v28, v16);
  return v35 & 1;
}

uint64_t sub_25F2BDF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v12 = type metadata accessor for ConcatenateCollection.Index.Implementation();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v15, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v17 = type metadata accessor for ConcatenateCollection.Index.Implementation();
  return (*(*(v17 - 8) + 32))(a6, v15, v17);
}

uint64_t sub_25F2BE0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v12 = type metadata accessor for ConcatenateCollection.Index.Implementation();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v15, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v17 = type metadata accessor for ConcatenateCollection.Index.Implementation();
  return (*(*(v17 - 8) + 32))(a6, v15, v17);
}

uint64_t ConcatenateCollection.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = *(a1 + 40);
  v31 = *(a1 + 24);
  v32 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v29 = AssociatedTypeWitness;
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v27 = &v27 - v7;
  v8 = *(a1 + 32);
  v9 = *(a1 + 16);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  sub_25F3057AC();
  v18 = v2;
  sub_25F3057FC();
  v19 = *(swift_getAssociatedConformanceWitness() + 8);
  v20 = sub_25F304DCC();
  v21 = *(v11 + 8);
  v21(v15, v10);
  v21(v17, v10);
  if (v20)
  {
    v22 = v18 + *(a1 + 52);
    v23 = v27;
    v25 = v31;
    v24 = v32;
    sub_25F3057AC();
    sub_25F2BE0A4(v23, v9, v25, v8, v24, v30);
    return (*(v28 + 8))(v23, v29);
  }

  else
  {
    sub_25F3057AC();
    sub_25F2BDF50(v17, v9, v31, v8, v32, v30);
    return (v21)(v17, v10);
  }
}

uint64_t ConcatenateCollection.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v49 = a1;
  v4 = *(a2 + 40);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v48 = AssociatedTypeWitness;
  v7 = *(v47 + 64);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v45 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - v10;
  v12 = *(a2 + 32);
  v13 = *(a2 + 16);
  v14 = swift_getAssociatedTypeWitness();
  v46 = *(v14 - 8);
  v15 = *(v46 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v50 = &v44 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v44 - v21;
  *&v23 = v13;
  *(&v23 + 1) = v5;
  v53 = v12;
  *&v24 = v12;
  *(&v24 + 1) = v4;
  v54 = v23;
  v55 = v24;
  v25 = type metadata accessor for ConcatenateCollection.Index.Implementation();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v44 - v27;
  (*(v29 + 16))(&v44 - v27, v49, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v47;
    v30 = v48;
    (*(v47 + 32))(v11, v28, v48);
    v32 = v52 + *(a2 + 52);
    v33 = v45;
    sub_25F3057CC();
    v34 = *(v31 + 8);
    v34(v11, v30);
    sub_25F2BE0A4(v33, v13, v5, v53, v4, v51);
    return (v34)(v33, v30);
  }

  else
  {
    v45 = v11;
    v49 = v4;
    v36 = v46;
    (*(v46 + 32))(v22, v28, v14);
    sub_25F3057CC();
    sub_25F3057FC();
    v37 = *(swift_getAssociatedConformanceWitness() + 8);
    v38 = sub_25F304DCC();
    v39 = *(v36 + 8);
    v39(v18, v14);
    if (v38)
    {
      v40 = v52 + *(a2 + 52);
      v41 = v45;
      v42 = v49;
      sub_25F3057AC();
      v39(v50, v14);
      v39(v22, v14);
      sub_25F2BE0A4(v41, v13, v5, v53, v42, v51);
      return (*(v47 + 8))(v41, v48);
    }

    else
    {
      v39(v22, v14);
      v43 = v50;
      sub_25F2BDF50(v50, v13, v5, v53, v49, v51);
      return (v39)(v43, v14);
    }
  }
}

uint64_t ConcatenateCollection.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v14 - v10;
  v12 = v2 + *(a1 + 52);
  sub_25F3057FC();
  sub_25F2BE0A4(v11, *(a1 + 16), v6, *(a1 + 32), v5, a2);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t ConcatenateCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v43 = a3;
  v4 = *(a2 + 40);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v40 = AssociatedTypeWitness;
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v38 - v8;
  v10 = *(a2 + 32);
  v11 = *(a2 + 16);
  v38 = swift_getAssociatedTypeWitness();
  v12 = *(v38 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v38);
  v15 = &v38 - v14;
  *&v16 = v11;
  *(&v16 + 1) = v5;
  *&v17 = v10;
  *(&v17 + 1) = v4;
  v44[0] = v16;
  v44[1] = v17;
  v18 = type metadata accessor for ConcatenateCollection.Index.Implementation();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v38 - v20;
  (*(v22 + 16))(&v38 - v20, v41, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v39;
    v23 = v40;
    (*(v39 + 32))(v9, v21, v40);
    v25 = v42 + *(a2 + 52);
    v26 = sub_25F3058FC();
    v28 = v27;
    v29 = *(v10 + 8);
    v30 = swift_getAssociatedTypeWitness();
    (*(*(v30 - 8) + 16))(v43, v28, v30);
    v26(v44, 0);
    return (*(v24 + 8))(v9, v23);
  }

  else
  {
    v32 = v38;
    (*(v12 + 32))(v15, v21, v38);
    v33 = sub_25F3058FC();
    v35 = v34;
    v36 = *(v10 + 8);
    v37 = swift_getAssociatedTypeWitness();
    (*(*(v37 - 8) + 16))(v43, v35, v37);
    v33(v44, 0);
    return (*(v12 + 8))(v15, v32);
  }
}

void (*sub_25F2BEE8C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_25F2BEF14(v6, a2, a3);
  return sub_25F1CC82C;
}

void (*sub_25F2BEF14(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(*(a3 + 32) + 8);
  v7 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  a1[1] = v9;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  a1[2] = v10;
  ConcatenateCollection.subscript.getter(a2, a3, v10);
  return sub_25F1DC510;
}

uint64_t sub_25F2BF004@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  type metadata accessor for ConcatenateCollection.Index();
  v3 = sub_25F305C1C();
  return (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
}

uint64_t sub_25F2BF088(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v11[0] = *(a2 + 16);
  v11[1] = v4;
  v5 = type metadata accessor for ConcatenateCollection.Index();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  (*(v6 + 32))(v11 - v8, a1, v5);
  ConcatenateCollection.index(after:)(v9, a2, a1);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25F2BF18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 - 8);
  (*(v8 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v5 = sub_25F3061EC();
  ConcatenateCollection.startIndex.getter(a1, a2 + *(v5 + 36));
  v6 = *(v8 + 8);

  return v6(v2, a1);
}

uint64_t sub_25F2BF284(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F2BF2D8(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_25F2B6F1C();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t ConcatenateCollection<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a1;
  v67 = a5;
  v60 = a4;
  v7 = *(a4 + 8);
  v8 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  v9 = *(v63 + 64);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v59 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v62 = &v53 - v13;
  MEMORY[0x28223BE20](v12);
  v61 = &v53 - v14;
  v64 = a3;
  v15 = *(a3 + 8);
  v16 = *(a2 + 16);
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v53 - v23;
  v69 = v16;
  v70 = v8;
  v68 = v8;
  v71 = v15;
  v72 = v7;
  v25 = type metadata accessor for ConcatenateCollection.Index.Implementation();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v53 - v27;
  (*(v29 + 16))(&v53 - v27, v65, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = v22;
    v55 = v18;
    v56 = v17;
    v57 = v16;
    v58 = v15;
    v30 = v63;
    v31 = v61;
    v32 = AssociatedTypeWitness;
    (*(v63 + 16))(v61, v28, AssociatedTypeWitness);
    v33 = *(a2 + 52);
    v34 = v62;
    sub_25F3057AC();
    v65 = v7;
    v35 = *(swift_getAssociatedConformanceWitness() + 8);
    v36 = sub_25F304DCC();
    v37 = v34;
    v38 = *(v30 + 8);
    v38(v37, v32);
    v38(v31, v32);
    if (v36)
    {
      v39 = v54;
      v40 = v57;
      v41 = v58;
      sub_25F3057FC();
      sub_25F304C4C();
      v42 = v56;
      v43 = *(v55 + 8);
      v43(v39, v56);
      sub_25F2BDF50(v24, v40, v68, v41, v65, v67);
      v43(v24, v42);
      v44 = v28;
      v45 = AssociatedTypeWitness;
    }

    else
    {
      v48 = v62;
      v49 = v28;
      v50 = AssociatedTypeWitness;
      (*(v63 + 32))(v62, v49, AssociatedTypeWitness);
      v51 = v68;
      v52 = v59;
      sub_25F304C4C();
      v38(v48, v50);
      sub_25F2BE0A4(v52, v57, v51, v58, v65, v67);
      v44 = v52;
      v45 = v50;
    }

    return (v38)(v44, v45);
  }

  else
  {
    (*(v18 + 32))(v24, v28, v17);
    sub_25F304C4C();
    v46 = *(v18 + 8);
    v46(v24, v17);
    sub_25F2BDF50(v22, v16, v68, v15, v7, v67);
    return (v46)(v22, v17);
  }
}

uint64_t sub_25F2BF874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 16);
  v5 = *(a3 - 8);
  v7 = *(v5 + 8);
  v8 = *(v6 + 8);
  v15 = *(a2 + 16);
  v16 = v7;
  v17 = v8;
  v9 = type metadata accessor for ConcatenateCollection.Index();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - v12;
  (*(v10 + 32))(&v15 - v12, a1, v9);
  ConcatenateCollection<>.index(before:)(v13, a2, v5, v6, a1);
  return (*(v10 + 8))(v13, v9);
}

uint64_t ConcatenateCollection<>.index(_:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v75 = a2;
  v69 = a5;
  v70 = a1;
  v67 = a6;
  v8 = *(*(a5 + 8) + 8);
  v9 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v72 = AssociatedTypeWitness;
  v73 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v71 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v63 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v63 - v17;
  v68 = a4;
  v19 = *(*(a4 + 8) + 8);
  v66 = a3;
  v20 = *(a3 + 16);
  v21 = swift_getAssociatedTypeWitness();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v63 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v63 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v63 - v29;
  v76 = v20;
  v77 = v9;
  v78 = v19;
  v79 = v8;
  v74 = v8;
  v31 = type metadata accessor for ConcatenateCollection.Index.Implementation();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v63 - v33;
  (*(v35 + 16))(&v63 - v33, v70, v31);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v64 = v21;
    v65 = v20;
    v70 = v19;
    v36 = v72;
    v37 = v73;
    (*(v73 + 32))(v71, v34, v72);
    v38 = *(v66 + 52);
    sub_25F3057AC();
    v39 = sub_25F30573C();
    v42 = *(v37 + 8);
    v40 = v37 + 8;
    v41 = v42;
    v42(v18, v36);
    if (v39 <= v75)
    {
      v55 = v71;
      sub_25F30572C();
      v56 = v72;
      v41(v55, v72);
      sub_25F2BE0A4(v18, v65, v9, v70, v74, v67);
      return (v41)(v18, v56);
    }

    v44 = v70;
    v43 = v71;
    v73 = v40;
    v45 = v63;
    v46 = v65;
    result = sub_25F3057FC();
    if (!__OFSUB__(v75, v39))
    {
      sub_25F30572C();
      v48 = *(v22 + 8);
      v49 = v64;
      v48(v45, v64);
      v41(v43, v72);
      sub_25F2BDF50(v28, v46, v9, v44, v74, v67);
      return (v48)(v28, v49);
    }

    __break(1u);
    goto LABEL_12;
  }

  v71 = v18;
  v50 = v9;
  (*(v22 + 32))(v30, v34, v21);
  sub_25F3057FC();
  v51 = sub_25F30573C();
  v54 = *(v22 + 8);
  v52 = v22 + 8;
  v53 = v54;
  v54(v28, v21);
  if (v51 > v75)
  {
    sub_25F30572C();
    v53(v30, v21);
    sub_25F2BDF50(v28, v20, v50, v19, v74, v67);
    return (v53)(v28, v21);
  }

  v68 = v52;
  v65 = v20;
  v70 = v19;
  v57 = *(v66 + 52);
  v58 = v64;
  v59 = v74;
  result = sub_25F3057AC();
  if (__OFSUB__(v75, v51))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v60 = v71;
  sub_25F30572C();
  v61 = v72;
  v62 = *(v73 + 8);
  v62(v58, v72);
  v53(v30, v21);
  sub_25F2BE0A4(v60, v65, v50, v70, v59, v67);
  return (v62)(v60, v61);
}

char *ConcatenateCollection<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = a2;
  v72 = a5;
  v73 = a1;
  v7 = *(*(a5 + 8) + 8);
  v8 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v69 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - v13;
  v71 = a4;
  v15 = *(*(a4 + 8) + 8);
  v68 = a3;
  v16 = *(a3 + 16);
  v17 = swift_getAssociatedTypeWitness();
  v76 = *(v17 - 8);
  v18 = *(v76 + 8);
  v19 = MEMORY[0x28223BE20](v17);
  v66 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v61 - v21;
  v67 = v16;
  v78 = v16;
  v79 = v8;
  v70 = v8;
  v64 = v15;
  v65 = v7;
  v80 = v15;
  v81 = v7;
  v23 = type metadata accessor for ConcatenateCollection.Index.Implementation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = *(*(TupleTypeMetadata2 - 8) + 64);
  v26 = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v28 = &v61 - v27;
  v29 = *(v26 + 56);
  v30 = *(*(v23 - 8) + 16);
  v30(&v61 - v27, v73, v23);
  v30(&v29[v28], v74, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v32 = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v33 = v9;
    v34 = v76;
    v74 = v33;
    v35 = *(v33 + 32);
    v35(v14, v28, AssociatedTypeWitness);
    if (v32 == 1)
    {
      v36 = &v29[v28];
      v37 = v69;
      v38 = AssociatedTypeWitness;
      v35(v69, v36, AssociatedTypeWitness);
      v39 = v75 + *(v68 + 52);
      v40 = sub_25F30573C();
      v41 = *(v74 + 8);
      v41(v37, v38);
      v41(v14, v38);
      return v40;
    }
  }

  else
  {
    v43 = AssociatedTypeWitness;
    v44 = *(v76 + 4);
    v63 = v17;
    v44(v22, v28, v17);
    if (v32 != 1)
    {
LABEL_11:
      v57 = v66;
      v58 = v63;
      v44(v66, &v29[v28], v63);
      v59 = sub_25F30573C();
      v60 = *(v76 + 1);
      v60(v57, v58);
      v60(v22, v58);
      return v59;
    }

    v45 = v9;
    v46 = *(v9 + 32);
    v34 = v14;
    v46(v14, &v29[v28], v43);
    v47 = v66;
    sub_25F3057FC();
    v62 = v22;
    v74 = sub_25F30573C();
    v76 = *(v76 + 1);
    v29 = v63;
    (v76)(v47, v63);
    v14 = v69;
    v48 = *(v68 + 52);
    v22 = v70;
    sub_25F3057AC();
    v17 = sub_25F30573C();
    v28 = *(v45 + 8);
    (v28)(v14, v43);
    (v28)(v34, v43);
    (v76)(v62, v29);
    result = (v74 + v17);
    if (!__OFADD__(v74, v17))
    {
      return result;
    }

    __break(1u);
  }

  v49 = *(v34 + 4);
  v62 = v22;
  v63 = v17;
  v49(v22, &v29[v28], v17);
  v50 = v69;
  v51 = *(v68 + 52);
  sub_25F3057AC();
  v73 = sub_25F30573C();
  v29 = *(v74 + 8);
  v52 = v50;
  v53 = AssociatedTypeWitness;
  (v29)(v52, AssociatedTypeWitness);
  v22 = v66;
  sub_25F3057FC();
  v54 = v62;
  v28 = sub_25F30573C();
  v55 = v63;
  v56 = *(v34 + 1);
  v44 = (v34 + 8);
  v56(v22, v63);
  v56(v54, v55);
  (v29)(v14, v53);
  result = (v73 + v28);
  if (__OFADD__(v73, v28))
  {
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_25F2C06CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 8);
  v5 = *(*(a3 - 16) + 8);
  return swift_getWitnessTable();
}

uint64_t sub_25F2C0770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = vextq_s8(*(a3 - 16), *(a3 - 16), 8uLL);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_25F2C07F8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  result = type metadata accessor for ConcatenateCollection.Index.Implementation();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F2C0888(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = a1[5];
    v7 = a1[3];
    result = swift_getAssociatedTypeWitness();
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F2C092C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[4];
  v7 = a3[2];
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = a3[5];
  v10 = a3[3];
  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v13 = v12 + 1;
  v14 = 8 * (v12 + 1);
  if ((v12 + 1) <= 3)
  {
    v17 = ((a2 + ~(-1 << v14) - 254) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v17 < 2)
    {
LABEL_26:
      v19 = *(a1 + v12);
      if (v19 >= 2)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_26;
  }

LABEL_15:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return (v13 | v18) + 255;
}

void sub_25F2C0AC4(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = a4[4];
  v9 = a4[2];
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v11 = a4[5];
  v12 = a4[3];
  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v13 <= v10)
  {
    v13 = v10;
  }

  v14 = v13 + 1;
  if (a3 < 0xFF)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 + ~(-1 << (8 * v14)) - 254) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (a2 > 0xFE)
  {
    v16 = a2 - 255;
    if (v14 >= 4)
    {
      bzero(a1, v13 + 1);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v17 = (v16 >> (8 * v14)) + 1;
    if (v13 != -1)
    {
      v20 = v16 & ~(-1 << (8 * v14));
      bzero(a1, v14);
      if (v14 != 3)
      {
        if (v14 == 2)
        {
          *a1 = v20;
          if (v15 > 1)
          {
LABEL_39:
            if (v15 == 2)
            {
              *&a1[v14] = v17;
            }

            else
            {
              *&a1[v14] = v17;
            }

            return;
          }
        }

        else
        {
          *a1 = v16;
          if (v15 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v15)
        {
          a1[v14] = v17;
        }

        return;
      }

      *a1 = v20;
      a1[2] = BYTE2(v20);
    }

    if (v15 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v15 <= 1)
  {
    if (v15)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v13] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v15 == 2)
  {
    *&a1[v14] = 0;
    goto LABEL_24;
  }

  *&a1[v14] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t Optional.flatten<A>(inner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v9, a2);
  v10 = *(a2 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    return (*(*(*(v10 + 16) - 8) + 56))(a3, 1, 1);
  }

  else
  {
    return (*(v11 + 32))(a3, v7, v10);
  }
}

uint64_t Optional.described.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return 7104878;
  }

  (*(v2 + 32))(v6, v9, v1);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_25F30653C();
  v11 = v13[0];
  (*(v2 + 8))(v6, v1);
  return v11;
}

uint64_t sub_25F2C1038(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

BOOL sub_25F2C10D0(_OWORD *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v30 = *a2;
  v31 = v3;
  v32[0] = *(a2 + 32);
  *(v32 + 10) = *(a2 + 42);
  *&v34[10] = *(a1 + 42);
  v4 = a1[1];
  v33[0] = *a1;
  v33[1] = v4;
  *v34 = a1[2];
  v5 = HIBYTE(*&v34[24]);
  if (v5 >= 0xFF)
  {
    v6 = a1[1];
    v24 = *a1;
    v25 = v6;
    v26[0] = a1[2];
    *(v26 + 10) = *(a1 + 42);
    sub_25F1AF698(&v24, qword_27FD58230, &qword_25F314C98);
    v8 = v31;
    *a1 = v30;
    a1[1] = v8;
    a1[2] = v32[0];
    *(a1 + 42) = *(v32 + 10);
    v9 = &qword_27FD58228;
    v10 = &qword_25F314C90;
    v11 = v23;
    v12 = a2;
LABEL_7:
    sub_25F1B7174(v12, v11, v9, v10);
    return v5 > 0xFE;
  }

  v13 = a1[1];
  v27 = *a1;
  v28 = v13;
  v29[0] = a1[2];
  *(v29 + 9) = *(a1 + 41);
  if (v5 == 2)
  {
    v14 = a1[1];
    v24 = *a1;
    v25 = v14;
    v26[0] = a1[2];
    *(v26 + 10) = *(a1 + 42);
    v9 = &qword_27FD58228;
    v10 = &qword_25F314C90;
    v12 = &v24;
    v11 = v23;
    goto LABEL_7;
  }

  if (*(a2 + 57) != 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58218, &qword_25F314C88);
    sub_25F2C43D8(&qword_27FD58220, &qword_27FD58218, &qword_25F314C88);
    swift_allocError();
    v16 = v28;
    v15 = v29[0];
    v17 = v27;
    *(v18 + 41) = *(v29 + 9);
    *(v18 + 16) = v16;
    *(v18 + 32) = v15;
    *v18 = v17;
    *(v18 + 57) = v5;
    v19 = *a2;
    v20 = *(a2 + 16);
    v21 = *(a2 + 32);
    *(v18 + 106) = *(a2 + 42);
    *(v18 + 80) = v20;
    *(v18 + 96) = v21;
    *(v18 + 64) = v19;
    swift_willThrow();
    sub_25F1B7174(a2, &v24, &qword_27FD58228, &qword_25F314C90);
    v9 = qword_27FD58230;
    v10 = &qword_25F314C98;
    v12 = v33;
    v11 = &v24;
    goto LABEL_7;
  }

  return v5 > 0xFE;
}

BOOL sub_25F2C12EC(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A80, &qword_25F3114E8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - v16;
  sub_25F1B7174(a1, &v25 - v16, &qword_27FD56A80, &qword_25F3114E8);
  v18 = (*(v4 + 48))(v17, 1, v3);
  if (v18 == 1)
  {
    sub_25F1AF698(a1, &qword_27FD56A80, &qword_25F3114E8);
    sub_25F1B7174(v26, a1, qword_27FD53BB8, &qword_25F311350);
    (*(v4 + 56))(a1, 0, 1, v3);
  }

  else
  {
    sub_25F2C4368(v17, v13);
    sub_25F1B7174(v13, v11, qword_27FD53BB8, &qword_25F311350);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v20 = v26;
    if (EnumCaseMultiPayload >= 2 || (sub_25F1AF698(v11, qword_27FD53BB8, &qword_25F311350), sub_25F1B7174(v20, v8, qword_27FD53BB8, &qword_25F311350), swift_getEnumCaseMultiPayload() > 1))
    {
      sub_25F1AF698(v13, qword_27FD53BB8, &qword_25F311350);
    }

    else
    {
      sub_25F1AF698(v8, qword_27FD53BB8, &qword_25F311350);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD581E0, &unk_25F314C30);
      sub_25F2C43D8(&qword_27FD581E8, &qword_27FD581E0, &unk_25F314C30);
      swift_allocError();
      v23 = v22;
      sub_25F1B7174(v13, v22, qword_27FD53BB8, &qword_25F311350);
      sub_25F1B7174(v20, v23 + *(v21 + 28), qword_27FD53BB8, &qword_25F311350);
      swift_willThrow();
      sub_25F1AF698(v13, qword_27FD53BB8, &qword_25F311350);
    }
  }

  return v18 == 1;
}

BOOL sub_25F2C1648(_OWORD *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v30 = *a2;
  v31 = v3;
  v32[0] = *(a2 + 32);
  *(v32 + 10) = *(a2 + 42);
  *&v34[10] = *(a1 + 42);
  v4 = a1[1];
  v33[0] = *a1;
  v33[1] = v4;
  *v34 = a1[2];
  v5 = HIBYTE(*&v34[24]);
  if (v5 >= 0xFF)
  {
    v6 = a1[1];
    v24 = *a1;
    v25 = v6;
    v26[0] = a1[2];
    *(v26 + 10) = *(a1 + 42);
    sub_25F1AF698(&v24, &qword_27FD58210, &qword_25F314C78);
    v8 = v31;
    *a1 = v30;
    a1[1] = v8;
    a1[2] = v32[0];
    *(a1 + 42) = *(v32 + 10);
    v9 = qword_27FD54C30;
    v10 = &qword_25F314C70;
    v11 = v23;
    v12 = a2;
LABEL_7:
    sub_25F1B7174(v12, v11, v9, v10);
    return v5 > 0xFE;
  }

  v13 = a1[1];
  v27 = *a1;
  v28 = v13;
  v29[0] = a1[2];
  *(v29 + 9) = *(a1 + 41);
  if (v5 == 2)
  {
    v14 = a1[1];
    v24 = *a1;
    v25 = v14;
    v26[0] = a1[2];
    *(v26 + 10) = *(a1 + 42);
    v9 = qword_27FD54C30;
    v10 = &qword_25F314C70;
    v12 = &v24;
    v11 = v23;
    goto LABEL_7;
  }

  if (*(a2 + 57) != 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58200, &qword_25F314C68);
    sub_25F2C43D8(&qword_27FD58208, &qword_27FD58200, &qword_25F314C68);
    swift_allocError();
    v16 = v28;
    v15 = v29[0];
    v17 = v27;
    *(v18 + 41) = *(v29 + 9);
    *(v18 + 16) = v16;
    *(v18 + 32) = v15;
    *v18 = v17;
    *(v18 + 57) = v5;
    v19 = *a2;
    v20 = *(a2 + 16);
    v21 = *(a2 + 32);
    *(v18 + 106) = *(a2 + 42);
    *(v18 + 80) = v20;
    *(v18 + 96) = v21;
    *(v18 + 64) = v19;
    swift_willThrow();
    sub_25F1B7174(a2, &v24, qword_27FD54C30, &qword_25F314C70);
    v9 = &qword_27FD58210;
    v10 = &qword_25F314C78;
    v12 = v33;
    v11 = &v24;
    goto LABEL_7;
  }

  return v5 > 0xFE;
}

BOOL sub_25F2C1864(_OWORD *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v30 = *a2;
  v31 = v3;
  v32[0] = *(a2 + 32);
  *(v32 + 10) = *(a2 + 42);
  *&v34[10] = *(a1 + 42);
  v4 = a1[1];
  v33[0] = *a1;
  v33[1] = v4;
  *v34 = a1[2];
  v5 = HIBYTE(*&v34[24]);
  if (v5 >= 0xFF)
  {
    v6 = a1[1];
    v24 = *a1;
    v25 = v6;
    v26[0] = a1[2];
    *(v26 + 10) = *(a1 + 42);
    sub_25F1AF698(&v24, &qword_27FD581D0, &unk_25F314C18);
    v8 = v31;
    *a1 = v30;
    a1[1] = v8;
    a1[2] = v32[0];
    *(a1 + 42) = *(v32 + 10);
    v9 = &qword_27FD581B8;
    v10 = &qword_25F314C08;
    v11 = v23;
    v12 = a2;
LABEL_7:
    sub_25F1B7174(v12, v11, v9, v10);
    return v5 > 0xFE;
  }

  v13 = a1[1];
  v27 = *a1;
  v28 = v13;
  v29[0] = a1[2];
  *(v29 + 9) = *(a1 + 41);
  if (v5 == 2)
  {
    v14 = a1[1];
    v24 = *a1;
    v25 = v14;
    v26[0] = a1[2];
    *(v26 + 10) = *(a1 + 42);
    v9 = &qword_27FD581B8;
    v10 = &qword_25F314C08;
    v12 = &v24;
    v11 = v23;
    goto LABEL_7;
  }

  if (*(a2 + 57) != 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD581C0, &qword_25F314C10);
    sub_25F2C43D8(&qword_27FD581C8, &qword_27FD581C0, &qword_25F314C10);
    swift_allocError();
    v16 = v28;
    v15 = v29[0];
    v17 = v27;
    *(v18 + 41) = *(v29 + 9);
    *(v18 + 16) = v16;
    *(v18 + 32) = v15;
    *v18 = v17;
    *(v18 + 57) = v5;
    v19 = *a2;
    v20 = *(a2 + 16);
    v21 = *(a2 + 32);
    *(v18 + 106) = *(a2 + 42);
    *(v18 + 80) = v20;
    *(v18 + 96) = v21;
    *(v18 + 64) = v19;
    swift_willThrow();
    sub_25F1B7174(a2, &v24, &qword_27FD581B8, &qword_25F314C08);
    v9 = &qword_27FD581D0;
    v10 = &unk_25F314C18;
    v12 = v33;
    v11 = &v24;
    goto LABEL_7;
  }

  return v5 > 0xFE;
}

uint64_t InvalidationHandle.__allocating_init(dsoHandle:file:line:column:function:name:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v16 = swift_allocObject();
  type metadata accessor for SingleFireEvent();
  swift_allocObject();
  *(v16 + 96) = SingleFireEvent.init(description:)(0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53CC0, &unk_25F309FC0);
  v17 = swift_allocObject();
  *(v17 + 28) = 0;
  *(v17 + 16) = MEMORY[0x277D84F90];
  *(v17 + 24) = 0;
  *(v16 + 104) = v17;
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = a6;
  *(v16 + 56) = a7;
  *(v16 + 64) = a8;
  *(v16 + 72) = a9;
  *(v16 + 80) = a10;
  *(v16 + 88) = a11;
  return v16;
}

uint64_t Invalidatable.onInvalidation(_:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*((*(a4 + 8))(a3, a4) + 96) + 16);
  os_unfair_lock_lock((v5 + 32));
  sub_25F1DF0E4((v5 + 16), &v8);
  os_unfair_lock_unlock((v5 + 32));
  v6 = v8;
  if (v8)
  {
    sub_25F2FC288(&v8);
    sub_25F1DF100(v6);
  }

  else if (v9)
  {
    a1();
  }
}

uint64_t sub_25F2C1C8C@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F1E0B5C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 8 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 40), 8 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_25F2C1D18@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F1E1128(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 144 * a1);
    v9 = v8[9];
    v10 = v7 - 1;
    a2[6] = v8[8];
    a2[7] = v9;
    *(a2 + 121) = *(v8 + 153);
    v11 = v8[5];
    a2[2] = v8[4];
    a2[3] = v11;
    v12 = v8[7];
    a2[4] = v8[6];
    a2[5] = v12;
    v13 = v8[3];
    *a2 = v8[2];
    a2[1] = v13;
    result = memmove(v8 + 2, v8 + 11, 144 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t Invalidatable.observeInvalidation(_:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *((*(a3 + 8))(a2, a3) + 96);
  SingleFireEvent.observe(_:)(a1, a4);
}

uint64_t Invalidatable.observeInvalidation(on:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = a2;
  v13[5] = a3;
  sub_25F2033CC(v11);
  v14 = *(a5 + 8);

  v15 = *(v14(a4, a5) + 96);
  SingleFireEvent.observe(_:)(sub_25F2C444C, a6);
}

uint64_t Invalidatable.trackInvalidation(dsoHandle:file:line:column:function:of:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, uint64_t a11, uint64_t a12)
{
  v16 = (*(a12 + 8))(a11);
  v17 = a10[3];
  v18 = a10[4];
  __swift_project_boxed_opaque_existential_1(a10, v17);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  *(v19 + 64) = a7;
  *(v19 + 72) = a8;
  *(v19 + 80) = a9;
  v20 = *(v18 + 8);

  v21 = *(v20(v17, v18) + 96);
  SingleFireEvent.observe(_:)(sub_25F2C4010, &v28);

  v22 = v28;
  if (v28)
  {
    v23 = *(v16 + 96);
    sub_25F2FC288(&v28);

    return sub_25F1DF100(v22);
  }

  else
  {
  }
}

uint64_t Invalidatable._bindInvalidation(dsoHandle:file:line:column:function:to:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13[0] = a2;
  v13[1] = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  return sub_25F2C2128(v13, a10, a11, a12);
}

uint64_t sub_25F2C2128(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = v4;
    v9 = result;
    v20 = *(a4 + 8);
    v10 = (a2 + 32);
    do
    {
      v11 = v20(a3, a4);
      v12 = v9[1];
      v21 = *v9;
      v22 = v12;
      v23[0] = v9[2];
      *(v23 + 9) = *(v9 + 41);
      v13 = v10[3];
      v14 = v10[4];
      v15 = __swift_project_boxed_opaque_existential_1(v10, v13);
      sub_25F2C3D3C(v15, &v21, v11, v13, v14);

      v16 = v10[3];
      v17 = v10[4];
      __swift_project_boxed_opaque_existential_1(v10, v16);
      v18 = (*(v17 + 8))(v16, v17);
      v19 = v9[1];
      v21 = *v9;
      v22 = v19;
      v23[0] = v9[2];
      *(v23 + 9) = *(v9 + 41);
      sub_25F2C3D3C(v6, &v21, v18, a3, a4);

      v10 += 5;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t Invalidatable.onInvalidation(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = a2;
  v11[5] = a3;
  sub_25F2033CC(v9);

  Invalidatable.onInvalidation(_:)(sub_25F2C401C, v11, a4, a5);
}

uint64_t sub_25F2C2324(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v6 = ExecutionLane.isCurrentLane.getter();
  if (v6)
  {
    return (a3)(v6, v7);
  }

  else
  {
    return sub_25F202E08(a3, a4);
  }
}

BOOL Invalidatable.isInvalidated.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(*((*(a2 + 8))() + 96) + 16);
  os_unfair_lock_lock((v2 + 32));
  v3 = *(v2 + 16);
  sub_25F2C403C(v3);
  os_unfair_lock_unlock((v2 + 32));
  sub_25F2C4080(v3);

  return v3 == 0;
}

uint64_t InvalidationHandle.init(dsoHandle:file:line:column:function:name:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for SingleFireEvent();
  swift_allocObject();
  *(v11 + 96) = SingleFireEvent.init(description:)(0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53CC0, &unk_25F309FC0);
  v17 = swift_allocObject();
  *(v17 + 28) = 0;
  *(v17 + 16) = MEMORY[0x277D84F90];
  *(v17 + 24) = 0;
  *(v11 + 104) = v17;
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  *(v11 + 48) = a6;
  *(v11 + 56) = a7;
  *(v11 + 64) = a8;
  *(v11 + 72) = a9;
  *(v11 + 80) = a10;
  *(v11 + 88) = a11;
  return v11;
}

void *InvalidationHandle.deinit()
{
  v1 = *(v0[12] + 16);

  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  sub_25F2C403C(v2);
  os_unfair_lock_unlock((v1 + 32));
  sub_25F2C4080(v2);

  if (v2)
  {
    v7[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Invalidatable.swift";
    v7[1] = 125;
    v8 = 2;
    v9 = xmmword_25F314A80;
    v10 = "deinit";
    v11 = 6;
    v12 = 2;
    sub_25F213F98(v7);
  }

  v3 = v0[11];

  v4 = v0[12];

  v5 = v0[13];

  return v0;
}

uint64_t InvalidationHandle.__deallocating_deinit()
{
  InvalidationHandle.deinit();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

id sub_25F2C2614(void (*a1)(void), uint64_t a2, _OWORD *a3)
{
  if (qword_27FD52998 != -1)
  {
    swift_once();
  }

  v5 = qword_27FD581A0;
  [qword_27FD581A0 lock];
  if (qword_27FD52990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_27FD58198;
  sub_25F212BF4(a3, v42);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  off_27FD58198 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_25F2F04A0(0, *(v6 + 2) + 1, 1, v6);
    off_27FD58198 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_25F2F04A0((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[144 * v9];
  *(v10 + 2) = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a3[4];
  *(v10 + 5) = a3[3];
  *(v10 + 6) = v13;
  *(v10 + 3) = v11;
  *(v10 + 4) = v12;
  v14 = a3[5];
  v15 = a3[6];
  v16 = a3[7];
  *(v10 + 153) = *(a3 + 121);
  *(v10 + 8) = v15;
  *(v10 + 9) = v16;
  *(v10 + 7) = v14;
  off_27FD58198 = v6;
  swift_endAccess();
  *&v42[0] = v6;

  sub_25F2C2920(v42);
  a1();

  result = swift_beginAccess();
  if (*(off_27FD58198 + 2))
  {
    sub_25F2C3CAC(&v26);
    v42[6] = v32;
    v43[0] = v33[0];
    *(v43 + 9) = *(v33 + 9);
    v42[2] = v28;
    v42[3] = v29;
    v42[4] = v30;
    v42[5] = v31;
    v42[0] = v26;
    v42[1] = v27;
    if (sub_25F2C4260(v42) == 1)
    {
      v24 = v32;
      v25[0] = v33[0];
      *(v25 + 9) = *(v33 + 9);
      v20 = v28;
      v21 = v29;
      v22 = v30;
      v23 = v31;
      v18 = v26;
      v19 = v27;
      sub_25F1AF698(&v18, &qword_27FD581A8, &unk_25F314BD8);
      sub_25F2C1D18(*(off_27FD58198 + 2) - 1, &v34);
    }

    else
    {
      v40 = v32;
      v41[0] = v33[0];
      *(v41 + 9) = *(v33 + 9);
      v36 = v28;
      v37 = v29;
      v38 = v30;
      v39 = v31;
      v34 = v26;
      v35 = v27;
    }

    swift_endAccess();
    v24 = v40;
    v25[0] = v41[0];
    *(v25 + 9) = *(v41 + 9);
    v20 = v36;
    v21 = v37;
    v22 = v38;
    v23 = v39;
    v18 = v34;
    v19 = v35;
    sub_25F213098(&v18);
    return [v5 unlock];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25F2C2920(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 104);
  v30 = *a1;
  os_unfair_lock_lock((v3 + 28));
  sub_25F2C4278((v3 + 16), v35);
  os_unfair_lock_unlock((v3 + 28));
  v4 = *&v35[0];
  if (*&v35[0])
  {
    v5 = *&v35[0] & 0xFFFFFFFFFFFFFF8;
    if (*&v35[0] >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((*&v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25F30631C())
    {
      v7 = 0;
      v29 = v4 & 0xC000000000000001;
      v26 = xmmword_25F309AB0;
      v25 = v4;
      v28 = v5;
      v27 = i;
      while (v29)
      {
        v9 = MEMORY[0x25F8D81E0](v7, v4);
        v8 = v9;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_16;
        }

LABEL_9:
        v11 = *(v8 + 16);
        *&v35[0] = v2;
        v36[25] = 0;
        v12 = v11[13];
        MEMORY[0x28223BE20](v9);
        v23 = v35;
        swift_bridgeObjectRetain_n();

        os_unfair_lock_lock((v12 + 76));
        sub_25F2C4294((v12 + 16), &v32);
        os_unfair_lock_unlock((v12 + 76));
        v13 = v32;

        if (v13)
        {
          v33[0] = v35[0];
          v33[1] = v35[1];
          *v34 = *v36;
          *&v34[10] = *&v36[10];
          v14 = v11[10];
          v15 = mach_absolute_time();
          v16 = v11[11];
          v17 = MEMORY[0x28223BE20](v15);
          v22[0] = v33;
          v22[1] = v14;
          v23 = v17;
          os_unfair_lock_lock((v16 + 100));
          sub_25F2C42EC((v16 + 16), &v32);
          os_unfair_lock_unlock((v16 + 100));
          v19 = v32;
          if (v32)
          {
            MEMORY[0x28223BE20](v18);
            v23 = v33;
            sub_25F2C1038(sub_25F1C1A3C, v22, v19);
          }

          v20 = v11[12];
          MEMORY[0x28223BE20](v18);
          v23 = &type metadata for InvalidationTrace;
          KeyPath = swift_getKeyPath();
          v32 = 0;
          v23 = MEMORY[0x28223BE20](KeyPath);
          v24 = &v32;
          os_unfair_lock_lock(v20 + 6);
          sub_25F1C1824(&v31);
          os_unfair_lock_unlock(v20 + 6);

          swift_bridgeObjectRelease_n();

          v4 = v25;
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        ++v7;
        v5 = v28;
        if (v10 == v27)
        {
          goto LABEL_19;
        }
      }

      if (v7 >= *(v5 + 16))
      {
        goto LABEL_17;
      }

      v8 = *(v4 + 8 * v7 + 32);

      v10 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:
  }
}

void sub_25F2C2D24(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  *v8 = v4;
  *&v8[9] = *(a1 + 57);
  *&v6[7] = *a2;
  *&v6[23] = a2[1];
  *&v6[39] = a2[2];
  *&v6[48] = *(a2 + 41);
  v7[0] = *(a1 + 80);
  v7[1] = v3;
  v11[1] = *&v6[48];
  v11[0] = *&v6[32];
  v10 = *&v6[16];
  v9 = *v6;
  sub_25F1DF180(v7);
  v5 = *(a1 + 96);
  sub_25F2FBF68(sub_25F2C442C);
}

void CancellationToken.manage(using:)(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(a1 + 96);
  v4 = *v1;
  v5 = v2;
  sub_25F2FC288(&v4);
}

id sub_25F2C2E58()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  qword_27FD581A0 = result;
  return result;
}

uint64_t sub_25F2C2E8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1[1])
  {
    v8[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Invalidatable.swift";
    v8[1] = 125;
    v9 = 2;
    v10 = xmmword_25F314A90;
    v11 = "set(invalidationTrace:)";
    v12 = 23;
    v13 = 2;
    result = sub_25F213F98(v8);
    v5 = 0;
  }

  else
  {
    v5 = *a1;

    j__swift_bridgeObjectRelease();
    *a1 = a2;
    *(a1 + 8) = 1;
  }

  *a3 = v5;
  return result;
}

uint64_t CancellationToken.cancelOnInvalidation(of:)(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = *((*(v5 + 8))(v4, v5) + 96);
  v8 = *v2;
  v9 = v3;
  sub_25F2FC288(&v8);
}

uint64_t bindInvalidation(of:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v6[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Invalidatable.swift";
  v6[1] = 125;
  v7 = 2;
  v8 = xmmword_25F314AA0;
  v9 = "bindInvalidation(of:_:)";
  v10 = 23;
  v11 = 2;
  return sub_25F2C2128(v6, a2, v3, v4);
}

uint64_t Invalidatable.bindInvalidation(of:callsite:)(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v5, a3);
  ConcurrentInvalidatable.trackInvalidation(of:)(v14, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return Invalidatable.trackInvalidation(of:callsite:)(a1, a2, a3, a4);
}

uint64_t ConcurrentInvalidatable.trackInvalidation(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v8[3];
  v11 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v10);
  (*(v6 + 16))(v9, v3, a2);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v6 + 32))(v13 + v12, v9, a2);
  Invalidatable.onInvalidation(_:)(sub_25F2C40C4, v13, v10, v11);
}

uint64_t Invalidatable.trackInvalidation(of:callsite:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = a2[1];
  v20 = *a2;
  v21 = v12;
  v22[0] = a2[2];
  *(v22 + 9) = *(a2 + 41);
  v13 = (*(a4 + 8))(a3, a4);
  v14 = sub_25F30546C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  sub_25F1BF03C(a1, v19);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_25F1A42F8(v19, v15 + 32);
  v16 = v21;
  *(v15 + 72) = v20;
  *(v15 + 88) = v16;
  *(v15 + 104) = v22[0];
  *(v15 + 113) = *(v22 + 9);
  *(v15 + 136) = v13;
  sub_25F1B1524(0, 0, v11, &unk_25F314AC8, v15);
}

uint64_t sub_25F2C3428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[95] = a6;
  v6[94] = a5;
  v6[93] = a4;
  return MEMORY[0x2822009F8](sub_25F2C3450, 0, 0);
}

uint64_t sub_25F2C3450()
{
  v1 = *(v0 + 744);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 768) = v4;
  *v4 = v0;
  v4[1] = sub_25F2C3510;

  return ConcurrentInvalidatable.invalidationTrace.getter(v0 + 736, v3, v2);
}

uint64_t sub_25F2C3510()
{
  v1 = *(*v0 + 768);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F2C360C, 0, 0);
}

uint64_t sub_25F2C360C()
{
  v1 = *(v0 + 736);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v17 = *(v0 + 752);
    v18 = *(v0 + 736);

    v34 = *v17;
    v35 = v17[1];
    *v36 = v17[2];
    v19 = *(v17 + 41);
    goto LABEL_10;
  }

  v3 = (v1 + 144 * v2);
  *(v0 + 304) = *(v3 - 7);
  v4 = *(v3 - 6);
  v5 = *(v3 - 5);
  v6 = *(v3 - 3);
  *(v0 + 352) = *(v3 - 4);
  *(v0 + 368) = v6;
  *(v0 + 320) = v4;
  *(v0 + 336) = v5;
  v7 = *(v3 - 2);
  v8 = *(v3 - 1);
  v9 = *v3;
  *(v0 + 425) = *(v3 + 9);
  *(v0 + 400) = v8;
  *(v0 + 416) = v9;
  *(v0 + 384) = v7;
  sub_25F212BF4(v0 + 304, v0 + 448);

  v10 = *(v0 + 416);
  *(v0 + 256) = *(v0 + 400);
  *(v0 + 272) = v10;
  *(v0 + 281) = *(v0 + 425);
  v11 = *(v0 + 352);
  *(v0 + 192) = *(v0 + 336);
  *(v0 + 208) = v11;
  v12 = *(v0 + 384);
  *(v0 + 224) = *(v0 + 368);
  *(v0 + 240) = v12;
  v13 = *(v0 + 320);
  *(v0 + 160) = *(v0 + 304);
  *(v0 + 176) = v13;
  v14 = sub_25F21308C(v0 + 160);
  v15 = sub_25F1A5DA8(v0 + 160);
  sub_25F213098(v0 + 304);
  if (v14 != 1)
  {
    v20 = 80;
LABEL_8:
    v16 = (v15 + v20);
    goto LABEL_9;
  }

  if ((*(v15 + 73) & 1) == 0)
  {
    v20 = 16;
    goto LABEL_8;
  }

  v16 = *(v0 + 752);
LABEL_9:
  v34 = *v16;
  v35 = v16[1];
  *v36 = v16[2];
  v19 = *(v16 + 41);
LABEL_10:
  *&v36[9] = v19;
  v21 = *(v0 + 760);
  v22 = *(v21 + 80);
  v23 = *(v21 + 16);
  v24 = *(v21 + 32);
  v25 = *(v21 + 48);
  *(v0 + 649) = *(v21 + 57);
  *(v0 + 624) = v24;
  *(v0 + 640) = v25;
  *&v37[23] = v35;
  *&v37[7] = v34;
  *&v37[39] = *v36;
  *(v0 + 592) = v22;
  *(v0 + 608) = v23;
  *(v0 + 697) = *&v37[32];
  *(v0 + 713) = *&v36[9];
  *(v0 + 665) = *v37;
  *(v0 + 681) = *&v37[16];
  sub_25F1DF180(v0 + 592);
  v26 = *(v0 + 704);
  *(v0 + 112) = *(v0 + 688);
  *(v0 + 128) = v26;
  *(v0 + 137) = *(v0 + 713);
  v27 = *(v0 + 640);
  *(v0 + 48) = *(v0 + 624);
  *(v0 + 64) = v27;
  v28 = *(v0 + 672);
  *(v0 + 80) = *(v0 + 656);
  *(v0 + 96) = v28;
  v29 = *(v0 + 608);
  *(v0 + 16) = *(v0 + 592);
  *(v0 + 32) = v29;
  v30 = *(v21 + 96);
  v31 = swift_task_alloc();
  *(v31 + 16) = v0 + 16;
  *(v31 + 24) = v21;
  sub_25F2FBF68(sub_25F1DF198);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_25F2C3844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = MEMORY[0x277D84F90];
  AnyInvalidatable.invalidate(file:line:column:function:trace:)("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Invalidatable.swift", 125, 2, 303, 28, "trackInvalidation(of:)", 22, 2, &v5, a2, v4);
}

uint64_t sub_25F2C38FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F00, &qword_25F308550);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v15 - v10);
  sub_25F1B7174(a1, v15 - v10, &qword_27FD52F00, &qword_25F308550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25F1AF698(v11, &qword_27FD52F00, &qword_25F308550);
    v15[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
    v15[1] = 118;
    v16 = 2;
    v17 = xmmword_25F314AB0;
    v18 = "didFinish(_:)";
    v19 = 13;
    v20 = 2;
    sub_25F213F98(v15);
    return 0;
  }

  else
  {
    sub_25F1AF698(a1, &qword_27FD52F00, &qword_25F308550);
    v12 = *v11;
    v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD581D8, &qword_25F314C28) + 48));
    sub_25F1B7174(a2, a1, qword_27FD53BB8, &qword_25F311350);
    *v13 = a3;
    v13[1] = a4;
    swift_storeEnumTagMultiPayload();
  }

  return v12;
}

uint64_t sub_25F2C3AD0(uint64_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a1[10])
  {
    *&v21 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
    *(&v21 + 1) = 118;
    v22[0] = 2;
    *&v22[8] = xmmword_25F314AB0;
    *&v22[24] = "didFinish(_:)";
    *&v23 = 13;
    BYTE8(v23) = 2;
    sub_25F213F98(&v21);
    return 0;
  }

  else
  {
    v8 = *a1;
    v14 = *(a1 + 3);
    *&v22[16] = *(a1 + 2);
    v23 = v14;
    v24 = *(a1 + 4);
    v25 = *(a1 + 80);
    v15 = *(a1 + 1);
    v21 = *a1;
    *v22 = v15;
    v26 = a8;

    sub_25F1AF698(&v21, a5, a6);
    v18 = a2[1];
    *a1 = *a2;
    *(a1 + 1) = v18;
    *(a1 + 2) = a2[2];
    *(a1 + 42) = *(a2 + 42);
    a1[8] = a3;
    a1[9] = a4;
    *(a1 + 80) = 1;
    sub_25F1B7174(a2, &v20, a7, v26);
  }

  return v8;
}

uint64_t sub_25F2C3CAC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F1E1128(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    return result;
  }

  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  v6 = v5 - 1;
  memmove(a1, (v3 + 144 * v5 - 112), 0x89uLL);
  *(v3 + 16) = v6;
  *v1 = v3;

  return nullsub_2(a1);
}

uint64_t sub_25F2C3D3C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v14 = a2[1];
  *(v13 + 24) = *a2;
  *(v13 + 40) = v14;
  *(v13 + 56) = a2[2];
  *(v13 + 65) = *(a2 + 41);
  v15 = *(a5 + 8);

  v16 = *(v15(a4, a5) + 96);
  SingleFireEvent.observe(_:)(sub_25F2C4448, &v21);

  v17 = v21;
  if (v21)
  {
    v18 = *(a3 + 96);
    sub_25F2FC288(&v21);
    sub_25F1DF100(v17);
  }

  return (*(v9 + 8))(v12, a4);
}

uint64_t sub_25F2C3EFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v18 = (*(a10 + 8))(a9);
  v21 = *(v18 + 80);
  memmove(&v22, (v18 + 16), 0x39uLL);
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  sub_25F1DF180(&v21);
  v19 = *(v18 + 96);
  sub_25F2FBF68(sub_25F2C442C);
}

unint64_t sub_25F2C403C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_25F2C4080(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_25F2C4100(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[17];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F1AFDB0;

  return sub_25F2C3428(a1, v4, v5, (v1 + 4), (v1 + 9), v6);
}

uint64_t sub_25F2C4260(uint64_t a1)
{
  if ((*(a1 + 72) >> 9) > 0x80000000)
  {
    return -(*(a1 + 72) >> 9);
  }

  else
  {
    return 0;
  }
}

BOOL sub_25F2C4294@<W0>(_OWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[1];
  v8[0] = *v5;
  v8[1] = v6;
  v9[0] = v5[2];
  *(v9 + 10) = *(v5 + 42);
  result = sub_25F2C1864(a1, v8);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_25F2C42EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v6[1];
  v10[0] = *v6;
  v10[1] = v8;
  v11[0] = v6[2];
  *(v11 + 10) = *(v6 + 42);
  result = sub_25F2C3AD0(a1, v10, v5, v7, &qword_27FD581B0, &qword_25F314C00, &qword_27FD581B8, &qword_25F314C08);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_25F2C4368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F2C43D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ConcurrentFutureCache.__allocating_init()()
{
  v0 = swift_allocObject();
  ConcurrentFutureCache.init()();
  return v0;
}

void *ConcurrentFutureCache.init()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for Future();
  swift_getTupleTypeMetadata2();
  v5 = sub_25F3052DC();
  v6 = sub_25F1CCBBC(v5, v2, v4, *(v1 + 96));

  v10 = v6;
  v7 = sub_25F304B4C();
  v8 = sub_25F203E0C(&v10, v7);

  v0[2] = v8;
  return v0;
}

uint64_t ConcurrentFutureCache.guaranteedValue(for:creatingIfNecessaryWith:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  v21 = v2[2];
  *&v15 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ConcurrentFutureCache.swift";
  *(&v15 + 1) = 133;
  v16 = 2;
  v17 = xmmword_25F314CA0;
  v18 = "guaranteedValue(for:creatingIfNecessaryWith:)";
  v19 = 45;
  v20 = 2;
  v14[2] = v5[10];
  v14[3] = v5[11];
  v14[4] = v5[12];
  v14[5] = a1;
  type metadata accessor for Future();
  sub_25F304B4C();
  v6 = sub_25F30476C();
  type metadata accessor for Promise();
  sub_25F305C1C();

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v15, sub_25F2C4970, v14, v6, TupleTypeMetadata2, WitnessTable);

  v9 = v22;
  if (*(&v22 + 1))
  {

    v11 = a2(v10);
    if (v3)
    {
    }

    else
    {
      v12 = v11;

      sub_25F229A9C(&v15);
      v22 = v15;
      Promise.track(future:on:)(v12, &v22);

      sub_25F2033DC(v22);
    }
  }

  return v9;
}

uint64_t sub_25F2C47BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v13 = 0;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = &v13;
  type metadata accessor for Future();
  v7 = sub_25F304B4C();
  WitnessTable = swift_getWitnessTable();
  result = KeyValueMap.guaranteedValue(for:creatingIfNecessaryWith:)(a1, sub_25F2C49D4, v11, v7, WitnessTable, &v12);
  v10 = v13;
  *a5 = v12;
  a5[1] = v10;
  return result;
}

uint64_t sub_25F2C4894@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Future();
  v4 = sub_25F1D8EB4("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ConcurrentFutureCache.swift", 133, 2, 25, 65, "guaranteedValue(for:creatingIfNecessaryWith:)", 45, 2);
  v5 = *a1;
  *a1 = v6;

  *a2 = v4;
  return result;
}

uint64_t ConcurrentFutureCache.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ConcurrentFutureCache.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25F2C49D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_25F2C4894(*(v1 + 40), a1);
}

uint64_t sub_25F2C4A14(_OWORD *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-v6];
  v8 = *(a2 + 16);
  v9 = a1[1];
  *v7 = *a1;
  v7[1] = v9;
  v7[2] = a1[2];
  *(v7 + 41) = *(a1 + 41);
  swift_storeEnumTagMultiPayload();
  v10 = *(v8 + 104);
  v15 = v7;
  v11 = *(*v10 + *MEMORY[0x277D841D0] + 16);
  v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v10 + v12));
  sub_25F2CAB74(v10 + v11, &v16);
  os_unfair_lock_unlock((v10 + v12));
  LOBYTE(v11) = v16;

  if (v11)
  {
    sub_25F1C0AC8(v7);
  }

  return sub_25F1AF698(v7, qword_27FD53BB8, &qword_25F311350);
}

void sub_25F2C4C28(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v3[0] = 0;
  v3[1] = 0;
  a3(v3, a1, a2);

  sub_25F2033DC(0);
}

void sub_25F2C4C90(void *a1, int a2)
{
  v3 = v2;
  v6 = sub_25F30490C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F30494C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 104);
  os_unfair_lock_lock((v16 + 24));
  v17 = *(v16 + 16);
  if (v17 >= 2)
  {
    v30 = v12;
    v31 = v11;
    v32 = v7;
    sub_25F1AC51C(v17);
    *(v16 + 16) = 0;
    os_unfair_lock_unlock((v16 + 24));
    v18 = 128;
    if (a2)
    {
      v18 = 144;
    }

    v19 = 136;
    if (a2)
    {
      v19 = 152;
    }

    v20 = *(v3 + v19);
    v21 = *(v3 + v18);
    v40 = a2 & 1;
    v22 = swift_allocObject();
    *(v22 + 16) = v3;
    *(v22 + 24) = a1;
    *(v22 + 32) = v40;
    aBlock = v21;
    v35 = v20;
    sub_25F208C90(a1, a2 & 1);
    swift_retain_n();
    sub_25F208C90(a1, a2 & 1);
    sub_25F2033CC(v21);
    if (ExecutionLane.isCurrentLane.getter())
    {
      sub_25F2C5868(v3, a1, a2 & 1);
      sub_25F2033DC(v21);

      sub_25F1C5980(a1, a2 & 1);
    }

    else
    {
      v28[1] = v20;
      v29 = a2;
      if (v21)
      {
        if (v21 == 1)
        {
          sub_25F1F54F4();
          v23 = sub_25F305AAC();
          v38 = sub_25F2CCACC;
          v39 = v22;
          aBlock = MEMORY[0x277D85DD0];
          v35 = 1107296256;
          v36 = sub_25F1D8C38;
          v37 = &block_descriptor_162;
          v24 = _Block_copy(&aBlock);

          sub_25F30492C();
          aBlock = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          sub_25F305E5C();
          MEMORY[0x25F8D7C70](0, v15, v10, v24);
          _Block_release(v24);

          (*(v32 + 8))(v10, v6);
          (*(v30 + 8))(v15, v31);

          sub_25F1C5980(a1, v29 & 1);
          v25 = 1;
        }

        else
        {
          v38 = sub_25F2CCACC;
          v39 = v22;
          aBlock = MEMORY[0x277D85DD0];
          v35 = 1107296256;
          v36 = sub_25F1D8C38;
          v37 = &block_descriptor_159;
          v27 = _Block_copy(&aBlock);
          sub_25F2033CC(v21);

          sub_25F30492C();
          v33 = MEMORY[0x277D84F90];
          v28[0] = sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          sub_25F305E5C();
          MEMORY[0x25F8D7C70](0, v15, v10, v27);
          _Block_release(v27);
          sub_25F2033DC(v21);
          (*(v32 + 8))(v10, v6);
          (*(v30 + 8))(v15, v31);

          sub_25F1C5980(a1, v29 & 1);
          v25 = v21;
        }
      }

      else
      {
        v26 = v29;
        sub_25F2C5868(v3, a1, v29 & 1);

        sub_25F1C5980(a1, v26 & 1);
        v25 = 0;
      }

      sub_25F2033DC(v25);
    }
  }

  else
  {

    os_unfair_lock_unlock((v16 + 24));
  }
}

void sub_25F2C524C(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = sub_25F30490C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F30494C();
  v38 = *(v13 - 8);
  v14 = *(v38 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v3 + 104);
  os_unfair_lock_lock((v17 + 24));
  v18 = *(v17 + 16);
  if (v18 >= 2)
  {
    v35 = v13;
    v36 = v9;
    v37 = v8;
    sub_25F1AC51C(v18);
    *(v17 + 16) = 0;
    os_unfair_lock_unlock((v17 + 24));
    v19 = 128;
    if (a3)
    {
      v19 = 144;
    }

    v20 = 136;
    if (a3)
    {
      v20 = 152;
    }

    v21 = *(v4 + v20);
    v22 = *(v4 + v19);
    v46 = a3 & 1;
    v23 = swift_allocObject();
    *(v23 + 16) = v4;
    *(v23 + 24) = a1;
    *(v23 + 32) = a2;
    *(v23 + 40) = v46;
    aBlock = v22;
    v41 = v21;
    sub_25F1D93AC(a1, a2, a3 & 1);
    swift_retain_n();
    sub_25F1D93AC(a1, a2, a3 & 1);
    sub_25F2033CC(v22);
    if (ExecutionLane.isCurrentLane.getter())
    {
      sub_25F2C593C(v4, a1, a2, a3 & 1);
      sub_25F2033DC(v22);

      sub_25F1D93BC(a1, a2, a3 & 1);
    }

    else
    {
      v34 = v21;
      v33 = a3;
      if (v22)
      {
        if (v22 == 1)
        {
          sub_25F1F54F4();
          v32 = sub_25F305AAC();
          v44 = sub_25F2CCA68;
          v45 = v23;
          aBlock = MEMORY[0x277D85DD0];
          v41 = 1107296256;
          v42 = sub_25F1D8C38;
          v43 = &block_descriptor_144;
          v24 = _Block_copy(&aBlock);

          sub_25F30492C();
          aBlock = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v25 = v37;
          sub_25F305E5C();
          v26 = v32;
          MEMORY[0x25F8D7C70](0, v16, v12, v24);
          _Block_release(v24);

          (*(v36 + 8))(v12, v25);
          (*(v38 + 8))(v16, v35);

          sub_25F1D93BC(a1, a2, v33 & 1);
          v27 = 1;
        }

        else
        {
          v44 = sub_25F2CCA68;
          v45 = v23;
          aBlock = MEMORY[0x277D85DD0];
          v41 = 1107296256;
          v42 = sub_25F1D8C38;
          v43 = &block_descriptor_141;
          v29 = _Block_copy(&aBlock);
          sub_25F2033CC(v22);

          sub_25F30492C();
          v39 = MEMORY[0x277D84F90];
          v32 = sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v30 = v37;
          sub_25F305E5C();
          MEMORY[0x25F8D7C70](0, v16, v12, v29);
          _Block_release(v29);
          sub_25F2033DC(v22);
          (*(v36 + 8))(v12, v30);
          (*(v38 + 8))(v16, v35);

          sub_25F1D93BC(a1, a2, v33 & 1);
          v27 = v22;
        }
      }

      else
      {
        v28 = v33;
        sub_25F2C593C(v4, a1, a2, v33 & 1);

        sub_25F1D93BC(a1, a2, v28 & 1);
        v27 = 0;
      }

      sub_25F2033DC(v27);
    }
  }

  else
  {

    os_unfair_lock_unlock((v17 + 24));
  }
}

void sub_25F2C5868(uint64_t a1, uint64_t a2, char a3)
{
  v11 = a2;
  v12 = a3 & 1;
  v4 = *(a1 + 104);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  sub_25F1AAB68(v5);
  os_unfair_lock_unlock((v4 + 24));
  if (v5 != 1)
  {
    sub_25F1AC51C(v5);
    v6 = *(a1 + 120);
    (*(a1 + 112))(&v9, &v11);
    v7 = v9;
    v8 = v10;
    v13 = v9;
    v14 = v10;
    sub_25F1D93AC(v9, *(&v9 + 1), v10);
    sub_25F1C0E30(&v13);
    sub_25F1D93BC(v7, *(&v7 + 1), v8);
    sub_25F1D93BC(v7, *(&v7 + 1), v8);
  }
}

void sub_25F2C593C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v14[0] = a2;
  v14[1] = a3;
  v15 = a4 & 1;
  v5 = *(a1 + 104);
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  sub_25F1AAB68(v6);
  os_unfair_lock_unlock((v5 + 24));
  if (v6 != 1)
  {
    sub_25F1AC51C(v6);
    v7 = *(a1 + 120);
    (*(a1 + 112))(&v11, v14);
    v8 = v11;
    v9 = v12;
    v10 = v13;
    v16 = v11;
    v17 = v12;
    v18 = v13;
    sub_25F208950(v11, *(&v11 + 1), v12, v13);
    sub_25F1C1170(&v16);
    sub_25F208978(v8, *(&v8 + 1), v9, v10);
    sub_25F208978(v8, *(&v8 + 1), v9, v10);
  }
}

uint64_t sub_25F2C5A5C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v52 = a5;
  v53 = a3;
  v50 = a4;
  v51 = a2;
  v8 = sub_25F30490C();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8);
  v44 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F30494C();
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v43 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FutureTermination();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = *(v15 + 16);
  v23(&v42 - v21, a1, v14);
  v23(v20, v22, v14);
  v49 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v50;
  v23(v49, v22, v14);
  v25 = v51;
  v26 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = a6;
  *(v27 + 3) = v24;
  *(v27 + 4) = v52;
  (*(v15 + 32))(&v27[v26], v22, v14);
  aBlock = v25;
  v56 = v53;
  swift_retain_n();
  if (ExecutionLane.isCurrentLane.getter())
  {
    v24(v20);

    v28 = v49;
  }

  else
  {
    v42 = v20;
    if (v25)
    {
      if (v25 == 1)
      {
        sub_25F1F54F4();
        v53 = sub_25F305AAC();
        v59 = sub_25F2C8938;
        v60 = v27;
        aBlock = MEMORY[0x277D85DD0];
        v56 = 1107296256;
        v57 = sub_25F1D8C38;
        v58 = &block_descriptor_51;
        v29 = _Block_copy(&aBlock);

        v30 = v43;
        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v31 = v44;
        v32 = v48;
        sub_25F305E5C();
        v33 = v53;
        MEMORY[0x25F8D7C70](0, v30, v31, v29);
        _Block_release(v29);

        (*(v47 + 8))(v31, v32);
        (*(v45 + 8))(v30, v46);
      }

      else
      {
        v59 = sub_25F2C8938;
        v60 = v27;
        aBlock = MEMORY[0x277D85DD0];
        v56 = 1107296256;
        v57 = sub_25F1D8C38;
        v58 = &block_descriptor_48;
        v50 = _Block_copy(&aBlock);

        sub_25F2033CC(v25);
        v35 = v43;
        sub_25F30492C();
        v54 = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v36 = v44;
        v37 = v25;
        v38 = v48;
        sub_25F305E5C();
        v39 = v50;
        MEMORY[0x25F8D7C70](0, v35, v36, v50);
        _Block_release(v39);
        sub_25F2033DC(v37);
        (*(v47 + 8))(v36, v38);
        (*(v45 + 8))(v35, v46);
      }

      v28 = v49;
    }

    else
    {
      v34 = v49;
      v24(v49);

      v28 = v34;
    }

    v20 = v42;
  }

  v40 = *(v15 + 8);
  v40(v28, v14);
  return (v40)(v20, v14);
}

uint64_t sub_25F2C607C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5, char *a6)
{
  v61 = a4;
  v62 = a5;
  v60 = a3;
  v63 = a2;
  v64 = a1;
  v7 = sub_25F30490C();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F30494C();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v10);
  v53 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v13 = sub_25F30678C();
  v14 = sub_25F305C1C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v52 - v18;
  v20 = *(v13 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v23 = MEMORY[0x28223BE20](v22);
  v65 = &v52 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v52 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v52 - v28;
  v59 = a6;
  v30 = type metadata accessor for FutureTermination();
  FutureTermination.completedResult.getter(v30, v19);
  if ((*(v20 + 48))(v19, 1, v13) == 1)
  {
    return (*(v15 + 8))(v19, v14);
  }

  v32 = *(v20 + 32);
  v32(v29, v19, v13);
  v64 = v20;
  v33 = *(v20 + 16);
  v33(v27, v29, v13);
  v33(v65, v27, v13);
  v52 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33(v52, v27, v13);
  v34 = (*(v20 + 80) + 40) & ~*(v20 + 80);
  v35 = swift_allocObject();
  v37 = v61;
  v36 = v62;
  *(v35 + 2) = v59;
  *(v35 + 3) = v37;
  *(v35 + 4) = v36;
  v32(&v35[v34], v27, v13);
  v38 = v63;
  aBlock = v63;
  v68 = v60;
  swift_retain_n();
  if (ExecutionLane.isCurrentLane.getter())
  {
    v39 = v65;
    v37(v65);

    v40 = v52;
  }

  else if (v38)
  {
    v61 = v13;
    v59 = v29;
    if (v38 == 1)
    {
      sub_25F1F54F4();
      v41 = sub_25F305AAC();
      v71 = sub_25F2CCB28;
      v72 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v68 = 1107296256;
      v69 = sub_25F1D8C38;
      v70 = &block_descriptor_181;
      v42 = _Block_copy(&aBlock);

      v43 = v53;
      sub_25F30492C();
      aBlock = MEMORY[0x277D84F90];
      sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1D908C();
      v44 = v54;
      v45 = v58;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v43, v44, v42);
      _Block_release(v42);

      (*(v57 + 8))(v44, v45);
      (*(v55 + 8))(v43, v56);
    }

    else
    {
      v71 = sub_25F2CCB28;
      v72 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v68 = 1107296256;
      v69 = sub_25F1D8C38;
      v70 = &block_descriptor_178;
      v47 = _Block_copy(&aBlock);

      sub_25F2033CC(v38);
      v48 = v53;
      sub_25F30492C();
      v66 = MEMORY[0x277D84F90];
      sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1D908C();
      v49 = v54;
      v50 = v58;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v48, v49, v47);
      _Block_release(v47);
      sub_25F2033DC(v38);
      (*(v57 + 8))(v49, v50);
      (*(v55 + 8))(v48, v56);
    }

    v39 = v65;
    v40 = v52;
    v29 = v59;
    v13 = v61;
  }

  else
  {
    v46 = v52;
    v37(v52);

    v40 = v46;
    v39 = v65;
  }

  v51 = *(v64 + 8);
  v51(v40, v13);
  v51(v29, v13);
  return (v51)(v39, v13);
}

uint64_t sub_25F2C682C(char *a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v60 = a5;
  v61 = a4;
  v59 = a3;
  v62 = a2;
  v65 = a1;
  v7 = sub_25F30490C();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F30494C();
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(a6 - 8);
  v15 = *(v64 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v17 = MEMORY[0x28223BE20](v16);
  v63 = &v52 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v52 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v52 - v22;
  v24 = type metadata accessor for FutureTermination();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v52 - v27;
  (*(v25 + 16))(&v52 - v27, v65, v24);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v53 = v14;
    v54 = v10;
    v30 = v64;
    v31 = *(v64 + 32);
    v31(v23, v28, a6);
    v32 = *(v30 + 16);
    v32(v21, v23, a6);
    v32(v63, v21, a6);
    v65 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32(v65, v21, a6);
    v33 = (*(v30 + 80) + 40) & ~*(v30 + 80);
    v34 = swift_allocObject();
    v35 = v60;
    v36 = v61;
    *(v34 + 2) = a6;
    *(v34 + 3) = v36;
    *(v34 + 4) = v35;
    v31(&v34[v33], v21, a6);
    v37 = v62;
    aBlock = v62;
    v68 = v59;
    swift_retain_n();
    if (ExecutionLane.isCurrentLane.getter())
    {
      v38 = v63;
      v36(v63);

      v39 = v65;
    }

    else
    {
      if (v37)
      {
        v61 = v23;
        if (v37 == 1)
        {
          sub_25F1F54F4();
          v40 = sub_25F305AAC();
          v71 = sub_25F2C88D8;
          v72 = v34;
          aBlock = MEMORY[0x277D85DD0];
          v68 = 1107296256;
          v69 = sub_25F1D8C38;
          v70 = &block_descriptor_42;
          v41 = _Block_copy(&aBlock);

          v42 = v53;
          sub_25F30492C();
          aBlock = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v43 = v55;
          v44 = v58;
          sub_25F305E5C();
          MEMORY[0x25F8D7C70](0, v42, v43, v41);
          _Block_release(v41);

          (*(v57 + 8))(v43, v44);
          (*(v56 + 8))(v42, v54);
        }

        else
        {
          v71 = sub_25F2C88D8;
          v72 = v34;
          aBlock = MEMORY[0x277D85DD0];
          v68 = 1107296256;
          v69 = sub_25F1D8C38;
          v70 = &block_descriptor_39;
          v52 = _Block_copy(&aBlock);

          sub_25F2033CC(v37);
          v47 = v53;
          sub_25F30492C();
          v66 = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v48 = v55;
          v49 = v58;
          sub_25F305E5C();
          v50 = v52;
          MEMORY[0x25F8D7C70](0, v47, v48, v52);
          _Block_release(v50);
          sub_25F2033DC(v37);
          (*(v57 + 8))(v48, v49);
          (*(v56 + 8))(v47, v54);
        }

        v38 = v63;
        v46 = v64;
        v39 = v65;
        v23 = v61;
        goto LABEL_13;
      }

      v45 = v65;
      v36(v65);

      v39 = v45;
      v38 = v63;
    }

    v46 = v64;
LABEL_13:
    v51 = *(v46 + 8);
    v51(v39, a6);
    v51(v23, a6);
    return (v51)(v38, a6);
  }

  if (result == 1)
  {
    return (*(v25 + 8))(v28, v24);
  }

  return result;
}

void sub_25F2C6F94(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v33 = sub_25F30490C();
  v36 = *(v33 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F30494C();
  v34 = *(v13 - 8);
  v35 = v13;
  v14 = *(v34 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FutureTermination();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v32 - v20);
  (*(v18 + 16))(&v32 - v20, a1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v18 + 8))(v21, v17);
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v23 = *v21;
    v24 = swift_allocObject();
    v24[2] = a4;
    v24[3] = a5;
    v24[4] = v23;
    aBlock = a2;
    v39 = a3;
    v25 = v23;
    swift_retain_n();
    v26 = v23;
    if ((ExecutionLane.isCurrentLane.getter() & 1) != 0 || !a2)
    {
      a4(v23);
    }

    else
    {
      if (a2 != 1)
      {
        v42 = sub_25F2C88A8;
        v43 = v24;
        aBlock = MEMORY[0x277D85DD0];
        v39 = 1107296256;
        v40 = sub_25F1D8C38;
        v41 = &block_descriptor_30;
        v32 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v37 = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v30 = v33;
        sub_25F305E5C();
        v31 = v32;
        MEMORY[0x25F8D7C70](0, v16, v12, v32);
        _Block_release(v31);
        sub_25F2033DC(a2);
        (*(v36 + 8))(v12, v30);
        (*(v34 + 8))(v16, v35);

        goto LABEL_10;
      }

      sub_25F1F54F4();
      v27 = sub_25F305AAC();
      v42 = sub_25F2C88A8;
      v43 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_25F1D8C38;
      v41 = &block_descriptor_33;
      v28 = _Block_copy(&aBlock);

      sub_25F30492C();
      aBlock = MEMORY[0x277D84F90];
      sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1D908C();
      v29 = v33;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v16, v12, v28);
      _Block_release(v28);

      (*(v36 + 8))(v12, v29);
      (*(v34 + 8))(v16, v35);
    }

LABEL_10:
  }
}

uint64_t sub_25F2C74F4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v32 = sub_25F30490C();
  v35 = *(v32 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F30494C();
  v33 = *(v13 - 8);
  v34 = v13;
  v14 = *(v33 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FutureTermination();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v31 - v20);
  (*(v18 + 16))(&v31 - v20, a1, v17);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    return (*(v18 + 8))(v21, v17);
  }

  v23 = v21[1];
  v40 = *v21;
  v41 = v23;
  v42[0] = v21[2];
  *(v42 + 9) = *(v21 + 41);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  v25 = v21[1];
  *(v24 + 32) = *v21;
  *(v24 + 48) = v25;
  *(v24 + 64) = v21[2];
  *(v24 + 73) = *(v21 + 41);
  *&aBlock = a2;
  *(&aBlock + 1) = a3;
  swift_retain_n();
  if ((ExecutionLane.isCurrentLane.getter() & 1) != 0 || !a2)
  {
    aBlock = v40;
    v38 = v41;
    v39[0] = v42[0];
    *(v39 + 9) = *(v42 + 9);
    a4(&aBlock);
  }

  else
  {
    if (a2 != 1)
    {
      *&v39[0] = sub_25F2CCC34;
      *(&v39[0] + 1) = v24;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v38 = sub_25F1D8C38;
      *(&v38 + 1) = &block_descriptor_169;
      v29 = _Block_copy(&aBlock);

      sub_25F2033CC(a2);
      sub_25F30492C();
      v36 = MEMORY[0x277D84F90];
      sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1D908C();
      v30 = v32;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v16, v12, v29);
      _Block_release(v29);
      sub_25F2033DC(a2);
      (*(v35 + 8))(v12, v30);
      (*(v33 + 8))(v16, v34);
    }

    sub_25F1F54F4();
    v26 = sub_25F305AAC();
    *&v39[0] = sub_25F2CCC34;
    *(&v39[0] + 1) = v24;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v38 = sub_25F1D8C38;
    *(&v38 + 1) = &block_descriptor_172;
    v27 = _Block_copy(&aBlock);

    sub_25F30492C();
    *&aBlock = MEMORY[0x277D84F90];
    sub_25F1D9034();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
    sub_25F1D908C();
    v28 = v32;
    sub_25F305E5C();
    MEMORY[0x25F8D7C70](0, v16, v12, v27);
    _Block_release(v27);

    (*(v35 + 8))(v12, v28);
    (*(v33 + 8))(v16, v34);
  }
}

uint64_t sub_25F2C7AC0(uint64_t (*a1)(_OWORD *), uint64_t a2, _OWORD *a3)
{
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  v6[0] = a3[2];
  *(v6 + 9) = *(a3 + 41);
  return a1(v5);
}

uint64_t sub_25F2C7B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v9 = *v5;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = swift_allocObject();
  v12[2] = *(v9 + 80);
  v12[3] = v10;
  v12[4] = v11;
  v12[5] = a2;
  v12[6] = a3;
  sub_25F2033CC(v10);

  sub_25F2E9DB4(a5, v12);
}

void sub_25F2C7BE0(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v9 = sub_25F30490C();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v34 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F30494C();
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v16 = sub_25F30678C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (v33 - v19);
  v21 = type metadata accessor for FutureTermination();
  FutureTermination.result.getter(v21, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v17 + 8))(v20, v16);
    return;
  }

  v22 = *v20;
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = v22;
  aBlock = a2;
  v41 = a3;
  v24 = v22;
  swift_retain_n();
  v25 = v22;
  if ((ExecutionLane.isCurrentLane.getter() & 1) != 0 || !a2)
  {
    a4(v22);
  }

  else
  {
    v33[1] = a5;
    if (a2 != 1)
    {
      v44 = sub_25F2CCCD8;
      v45 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v41 = 1107296256;
      v42 = sub_25F1D8C38;
      v43 = &block_descriptor_11;
      v30 = _Block_copy(&aBlock);

      sub_25F2033CC(a2);
      sub_25F30492C();
      v39 = MEMORY[0x277D84F90];
      sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1D908C();
      v31 = v34;
      v32 = v38;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v15, v31, v30);
      _Block_release(v30);
      sub_25F2033DC(a2);
      (*(v37 + 8))(v31, v32);
      (*(v35 + 8))(v15, v36);

      goto LABEL_9;
    }

    sub_25F1F54F4();
    v26 = sub_25F305AAC();
    v44 = sub_25F2CCCD8;
    v45 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_25F1D8C38;
    v43 = &block_descriptor_24;
    v27 = _Block_copy(&aBlock);

    sub_25F30492C();
    aBlock = MEMORY[0x277D84F90];
    sub_25F1D9034();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
    sub_25F1D908C();
    v28 = v34;
    v29 = v38;
    sub_25F305E5C();
    MEMORY[0x25F8D7C70](0, v15, v28, v27);
    _Block_release(v27);

    (*(v37 + 8))(v28, v29);
    (*(v35 + 8))(v15, v36);
  }

LABEL_9:
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 24);
  if (v1 >= 2)
  {
  }

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t Future.cancelOrObserveSuccess(dsoHandle:file:line:column:function:on:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int128 *a10, uint64_t a11, uint64_t a12)
{
  v21 = *a10;
  Future.observeSuccess(on:_:)(&v21, a11, a12);
  *&v21 = a2;
  *(&v21 + 1) = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  return (*(*v12 + 192))(&v21);
}

uint64_t Future.hasFinishedSuccessfully.getter()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for FutureTermination();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = type metadata accessor for FutureState();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  sub_25F2E9840(&v14 - v9);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return 0;
  }

  (*(v3 + 32))(v6, v10, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v12 = 1;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return 0;
  }

  v12 = 0;
LABEL_7:
  (*(v3 + 8))(v6, v2);
  return v12;
}

uint64_t PromiseProtocol<>.track(future:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v8, a2);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v7, a2);
  v12[0] = 0;
  v12[1] = 0;
  Future.observeFinish(on:_:)(v12, sub_25F2C8814, v10);
  sub_25F2033DC(0);
}

void sub_25F2C8550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v19[-v10];
  v12 = type metadata accessor for FutureTermination();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v19[-v14];
  (*(v16 + 16))(&v19[-v14], a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *v15;
      *&v21 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future+Observation.swift";
      *(&v21 + 1) = 130;
      v22 = 2;
      v24 = xmmword_25F314D20;
      v25 = "track(future:)";
      v26 = 14;
      v27 = 2;
      PromiseProtocol.fulfill<>(callsite:throwing:)(&v21, v18, a3, a4);
    }

    else
    {
      *&v21 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future+Observation.swift";
      *(&v21 + 1) = 130;
      v22 = 2;
      v24 = xmmword_25F314D10;
      v25 = "track(future:)";
      v26 = 14;
      v27 = 2;
      PromiseProtocol.cancel<>(callsite:)(&v21, a3, a4);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v15, AssociatedTypeWitness);
    *&v21 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future+Observation.swift";
    *(&v21 + 1) = 130;
    v22 = 2;
    *v23 = *v20;
    *&v23[3] = *&v20[3];
    v24 = xmmword_25F314D30;
    v25 = "track(future:)";
    v26 = 14;
    v27 = 2;
    PromiseProtocol.fulfill(callsite:returning:)(&v21, v11, a3, a4);
    (*(v8 + 8))(v11, AssociatedTypeWitness);
  }
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_20Tm_0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25F2C8938()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for FutureTermination() - 8);
  v3 = *(v0 + 32);
  return (*(v0 + 24))(v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80)));
}

void sub_25F2C89A4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_25F30490C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F30494C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  v56 = a2 & 1;
  v16 = *(v3 + 152);
  v46 = &v55;
  os_unfair_lock_lock((v16 + 24));
  sub_25F2CBD34((v16 + 16), &aBlock);
  os_unfair_lock_unlock((v16 + 24));
  v17 = v50;
  if (v50)
  {
    v41 = v10;
    v42 = v12;
    v43 = v11;
    v44 = v7;
    v45 = v6;
    v18 = aBlock;
    v19 = v49;
    LODWORD(v20) = v49;
    v21 = 120;
    if (v49)
    {
      v21 = 136;
    }

    v22 = 128;
    if (v49)
    {
      v22 = 144;
    }

    v23 = *(v3 + v22);
    v24 = *(v3 + v21);
    v54 = v49 & 1;
    v25 = swift_allocObject();
    *(v25 + 16) = v3;
    *(v25 + 24) = v18;
    *(v25 + 32) = v54;
    *(v25 + 40) = v17;
    aBlock = v24;
    v49 = v23;
    sub_25F208C90(v18, v20 & 1);
    sub_25F208C90(v18, v20 & 1);

    sub_25F208C90(v18, v20 & 1);

    sub_25F2CBD80(v18, v19, v17);
    sub_25F2033CC(v24);
    if (ExecutionLane.isCurrentLane.getter())
    {
      sub_25F2C9294(v3, v18, v20 & 1, v17);
      sub_25F1C5980(v18, v20 & 1);
      sub_25F2033DC(v24);

      sub_25F1C5980(v18, v20 & 1);

      sub_25F1C5980(v18, v20 & 1);
      sub_25F2CBDC4(v18, v19, v17);
    }

    else
    {
      v40 = v19;
      if (v24)
      {
        v39 = v23;
        if (v24 == 1)
        {
          sub_25F1F54F4();
          v38 = sub_25F305AAC();
          v52 = sub_25F2CBD70;
          v53 = v25;
          aBlock = MEMORY[0x277D85DD0];
          v49 = 1107296256;
          v50 = sub_25F1D8C38;
          v51 = &block_descriptor_97;
          v26 = _Block_copy(&aBlock);
          LODWORD(v37) = v20;
          v20 = v26;

          sub_25F30492C();
          aBlock = MEMORY[0x277D84F90];
          v35[1] = sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v27 = v41;
          v28 = v45;
          sub_25F305E5C();
          v29 = v38;
          MEMORY[0x25F8D7C70](0, v15, v27, v20);
          v30 = v20;
          LOBYTE(v20) = v37;
          _Block_release(v30);

          (*(v44 + 8))(v27, v28);
          (*(v42 + 8))(v15, v43);
        }

        else
        {
          v52 = sub_25F2CBD70;
          v53 = v25;
          aBlock = MEMORY[0x277D85DD0];
          v49 = 1107296256;
          v50 = sub_25F1D8C38;
          v51 = &block_descriptor_94;
          v38 = _Block_copy(&aBlock);
          sub_25F2033CC(v24);

          v36 = v15;
          sub_25F30492C();
          v47 = MEMORY[0x277D84F90];
          v37 = sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v31 = v41;
          v32 = v45;
          sub_25F305E5C();
          v33 = v15;
          v34 = v38;
          MEMORY[0x25F8D7C70](0, v33, v31, v38);
          _Block_release(v34);
          sub_25F2033DC(v24);
          (*(v44 + 8))(v31, v32);
          (*(v42 + 8))(v36, v43);
        }

        sub_25F1C5980(v18, v20 & 1);

        sub_25F1C5980(v18, v20 & 1);
      }

      else
      {
        sub_25F2C9294(v3, v18, v20 & 1, v17);
        sub_25F1C5980(v18, v20 & 1);

        sub_25F1C5980(v18, v20 & 1);
      }

      sub_25F1C5980(v18, v20 & 1);
      sub_25F2CBDC4(v18, v40, v17);
      sub_25F2033DC(v24);
    }
  }
}

void *sub_25F2C900C(unint64_t *a1, void *a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A80, &qword_25F3114E8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  if (*a1 >> 62)
  {
    return 0;
  }

  sub_25F2CBE24(*a1);
  *&v18 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift";
  *(&v18 + 1) = 125;
  v19 = 2;
  v20 = xmmword_25F314D40;
  v21 = "firstCompleted(_:)";
  v22 = 18;
  v23 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A88, &qword_25F3114F0);
  v10 = swift_allocObject();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A90, &qword_25F3114F8);
  v13 = *(v12 + 52);
  v14 = (*(v12 + 48) + 3) & 0x1FFFFFFFCLL;
  v15 = swift_allocObject();
  *(v15 + ((*(*v15 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_25F23F614(v9, v15 + *(*v15 + *MEMORY[0x277D841D0] + 16), &qword_27FD56A80, &qword_25F3114E8);
  *(v10 + 104) = v15;
  v16 = sub_25F1C0138(&v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A98, &unk_25F311500);
  *(swift_allocObject() + 16) = v16;
  *a1 = v16 | 0x4000000000000000;

  sub_25F208C90(a2, a3 & 1);
  return a2;
}

void sub_25F2C9294(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v8 = *(v98 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v98);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v90 = &v83 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v89 = &v83 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v83 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD569E8, &unk_25F311358);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v96 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v97 = &v83 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v93 = &v83 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v94 = &v83 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v91 = &v83 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v92 = &v83 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v83 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v83 - v36;
  v99 = a2;
  v100 = a3 & 1;
  v38 = *(a1 + 152);
  os_unfair_lock_lock((v38 + 24));
  v39 = *(v38 + 16);
  sub_25F2CBE08(v39);
  os_unfair_lock_unlock((v38 + 24));
  if (v39 != 0x8000000000000008)
  {
    v95 = v8;
    sub_25F2CBE24(v39);
    v40 = *(a1 + 112);
    v41 = (*(a1 + 104))(&v99);
    v42 = v41;
    v43 = a4[2];
    v44 = MEMORY[0x277D841D0];
    v85 = v12;
    if (v43 == v41)
    {
      v50 = v98;
      v51 = v41;
    }

    else
    {
      v83 = v43;
      v84 = a1;
      v45 = swift_allocObject();
      v87 = &v83;
      v88 = v42;
      v45[2] = 0;
      v45[3] = 0;
      v45[4] = sub_25F2CCCB8;
      v45[5] = a4;
      v46 = *(v42 + 88);
      v47 = MEMORY[0x28223BE20](v45);
      *(&v83 - 2) = sub_25F278340;
      *(&v83 - 1) = v47;
      v48 = *(*v46 + *v44 + 16);
      v49 = (*(*v46 + 48) + 3) & 0x1FFFFFFFCLL;
      swift_retain_n();
      os_unfair_lock_lock((v46 + v49));
      sub_25F27834C((v46 + v48), v37);
      os_unfair_lock_unlock((v46 + v49));
      sub_25F1B7174(v37, v35, &qword_27FD569E8, &unk_25F311358);
      v86 = *(v95 + 48);
      v87 = (v95 + 48);
      if (v86(v35, 1, v98) == 1)
      {

        sub_25F1AF698(v37, &qword_27FD569E8, &unk_25F311358);
        v37 = v35;
      }

      else
      {
        sub_25F23F614(v35, v18, qword_27FD53BB8, &qword_25F311350);

        sub_25F2C9E5C(v18, 0, 0, a4);

        sub_25F1AF698(v18, qword_27FD53BB8, &qword_25F311350);
      }

      v52 = MEMORY[0x277D841D0];
      sub_25F1AF698(v37, &qword_27FD569E8, &unk_25F311358);

      v53 = swift_allocObject();
      v53[2] = 0;
      v53[3] = 0;
      v53[4] = sub_25F2CCCBC;
      v53[5] = a4;
      v54 = *(v88 + 88);
      v55 = MEMORY[0x28223BE20](v53);
      *(&v83 - 2) = sub_25F2783A8;
      *(&v83 - 1) = v55;
      v56 = *(*v54 + *v52 + 16);
      v57 = (*(*v54 + 48) + 3) & 0x1FFFFFFFCLL;
      swift_retain_n();
      os_unfair_lock_lock((v54 + v57));
      v58 = (v54 + v56);
      v59 = v92;
      sub_25F279180(v58, v92);
      os_unfair_lock_unlock((v54 + v57));
      v60 = v91;
      sub_25F1B7174(v59, v91, &qword_27FD569E8, &unk_25F311358);
      v50 = v98;
      if (v86(v60, 1, v98) == 1)
      {

        sub_25F1AF698(v59, &qword_27FD569E8, &unk_25F311358);
        v59 = v60;
      }

      else
      {
        v61 = v60;
        v62 = v89;
        sub_25F23F614(v61, v89, qword_27FD53BB8, &qword_25F311350);

        sub_25F2CA63C(v62, 0, 0, a4);

        sub_25F1AF698(v62, qword_27FD53BB8, &qword_25F311350);
      }

      a1 = v84;
      sub_25F1AF698(v59, &qword_27FD569E8, &unk_25F311358);

      v63 = swift_allocObject();
      v63[2] = 0;
      v63[3] = 0;
      v51 = v88;
      v63[4] = sub_25F2CCCC0;
      v63[5] = v51;
      v64 = *(v83 + 88);
      v65 = MEMORY[0x28223BE20](v63);
      *(&v83 - 2) = sub_25F2790F8;
      *(&v83 - 1) = v65;
      v66 = *(*v64 + *v52 + 16);
      v67 = (*(*v64 + 48) + 3) & 0x1FFFFFFFCLL;
      swift_retain_n();
      os_unfair_lock_lock((v64 + v67));
      v68 = (v64 + v66);
      v69 = v94;
      sub_25F279180(v68, v94);
      os_unfair_lock_unlock((v64 + v67));
      v70 = v93;
      sub_25F1B7174(v69, v93, &qword_27FD569E8, &unk_25F311358);
      if (v86(v70, 1, v50) == 1)
      {

        sub_25F1AF698(v69, &qword_27FD569E8, &unk_25F311358);
        v69 = v70;
      }

      else
      {
        v71 = v70;
        v72 = v90;
        sub_25F23F614(v71, v90, qword_27FD53BB8, &qword_25F311350);

        sub_25F2CAB90(v72, 0, 0, v51);

        sub_25F1AF698(v72, qword_27FD53BB8, &qword_25F311350);
      }

      sub_25F1AF698(v69, &qword_27FD569E8, &unk_25F311358);

      v44 = MEMORY[0x277D841D0];
    }

    v73 = swift_allocObject();
    v73[2] = 0;
    v73[3] = 0;
    v73[4] = sub_25F2CBE40;
    v73[5] = a1;
    v74 = *(v51 + 88);
    v75 = MEMORY[0x28223BE20](v73);
    *(&v83 - 2) = sub_25F2CBE48;
    *(&v83 - 1) = v75;
    v76 = *(*v74 + *v44 + 16);
    v77 = (*(*v74 + 48) + 3) & 0x1FFFFFFFCLL;
    swift_retain_n();
    os_unfair_lock_lock((v74 + v77));
    v78 = (v74 + v76);
    v79 = v97;
    sub_25F279180(v78, v97);
    os_unfair_lock_unlock((v74 + v77));
    v80 = v96;
    sub_25F1B7174(v79, v96, &qword_27FD569E8, &unk_25F311358);
    if ((*(v95 + 48))(v80, 1, v50) == 1)
    {

      sub_25F1AF698(v79, &qword_27FD569E8, &unk_25F311358);
      v79 = v80;
    }

    else
    {
      v81 = v80;
      v82 = v85;
      sub_25F23F614(v81, v85, qword_27FD53BB8, &qword_25F311350);

      sub_25F2CB108(v82, 0, 0, a1);

      sub_25F1AF698(v82, qword_27FD53BB8, &qword_25F311350);
    }

    sub_25F1AF698(v79, &qword_27FD569E8, &unk_25F311358);
  }
}

void sub_25F2C9D44(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 152);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  if (v4 >> 62 == 1)
  {
    sub_25F2CBE24(v4);
    *(v3 + 16) = 0x8000000000000000;
    os_unfair_lock_unlock((v3 + 24));
    sub_25F1C0AC8(a1);
  }

  else
  {

    os_unfair_lock_unlock((v3 + 24));
  }
}

uint64_t sub_25F2C9DCC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t *a3)
{
  v3 = *(a3 + 8);
  v5 = *a3;
  v6 = v3;
  return a1(&v5);
}

uint64_t sub_25F2C9E14(uint64_t (*a1)(__int128 *), uint64_t a2, __int128 *a3)
{
  v3 = *(a3 + 16);
  v5 = *a3;
  v6 = v3;
  return a1(&v5);
}

uint64_t sub_25F2C9E5C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v66 = a4;
  v63 = a3;
  v61 = a2;
  v5 = sub_25F30490C();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v5);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F30494C();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  MEMORY[0x28223BE20](v8);
  v55 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v55 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD569F8, &unk_25F311420);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = (&v55 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v62 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v64 = &v55 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v55 - v26;
  MEMORY[0x28223BE20](v25);
  v65 = &v55 - v28;
  sub_25F1B7174(a1, v14, qword_27FD53BB8, &qword_25F311350);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_25F1D932C(v14, v18);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    *v18 = *v14;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    v30 = 0;
    goto LABEL_7;
  }

  v30 = 1;
LABEL_7:
  v31 = v66;
  (*(v20 + 56))(v18, v30, 1, v19);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    v35 = v18;
    v36 = v65;
    sub_25F23F614(v35, v65, &qword_27FD53BB0, &unk_25F309BA0);
    sub_25F1B7174(v36, v27, &qword_27FD53BB0, &unk_25F309BA0);
    v37 = v64;
    sub_25F1B7174(v27, v64, &qword_27FD53BB0, &unk_25F309BA0);
    v38 = v62;
    sub_25F1B7174(v27, v62, &qword_27FD53BB0, &unk_25F309BA0);
    v39 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = sub_25F2CA620;
    *(v40 + 24) = v31;
    sub_25F23F614(v27, v40 + v39, &qword_27FD53BB0, &unk_25F309BA0);
    v41 = v61;
    aBlock = v61;
    v69 = v63;
    swift_retain_n();
    if (ExecutionLane.isCurrentLane.getter())
    {
      v42 = v31[2];
      v43 = v37;
    }

    else
    {
      if (v41)
      {
        if (v41 == 1)
        {
          sub_25F1F54F4();
          v44 = sub_25F305AAC();
          v72 = sub_25F2CA628;
          v73 = v40;
          aBlock = MEMORY[0x277D85DD0];
          v69 = 1107296256;
          v70 = sub_25F1D8C38;
          v71 = &block_descriptor_60;
          v45 = _Block_copy(&aBlock);

          v46 = v55;
          sub_25F30492C();
          aBlock = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v47 = v56;
          v48 = v60;
          sub_25F305E5C();
          MEMORY[0x25F8D7C70](0, v46, v47, v45);
          _Block_release(v45);

          (*(v59 + 8))(v47, v48);
          (*(v57 + 8))(v46, v58);
        }

        else
        {
          v72 = sub_25F2CA628;
          v73 = v40;
          aBlock = MEMORY[0x277D85DD0];
          v69 = 1107296256;
          v70 = sub_25F1D8C38;
          v71 = &block_descriptor_57;
          v66 = _Block_copy(&aBlock);

          sub_25F2033CC(v41);
          v50 = v55;
          sub_25F30492C();
          v67 = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v51 = v56;
          v52 = v60;
          sub_25F305E5C();
          v53 = v66;
          MEMORY[0x25F8D7C70](0, v50, v51, v66);
          _Block_release(v53);
          sub_25F2033DC(v41);
          (*(v59 + 8))(v51, v52);
          (*(v57 + 8))(v50, v58);
        }

        v37 = v64;
        goto LABEL_18;
      }

      v49 = v31[2];
      v43 = v38;
    }

    sub_25F1D7358(v43);

LABEL_18:
    sub_25F1AF698(v38, &qword_27FD53BB0, &unk_25F309BA0);
    sub_25F1AF698(v37, &qword_27FD53BB0, &unk_25F309BA0);
    v34 = v65;
    v32 = &qword_27FD53BB0;
    v33 = &unk_25F309BA0;
    goto LABEL_19;
  }

  v32 = &qword_27FD569F8;
  v33 = &unk_25F311420;
  v34 = v18;
LABEL_19:
  sub_25F1AF698(v34, v32, v33);
}

uint64_t sub_25F2CA63C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = sub_25F30490C();
  v32 = *(v29 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F30494C();
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v28 - v17);
  sub_25F1B7174(a1, &v28 - v17, qword_27FD53BB8, &qword_25F311350);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v19 = v18[1];
    v40[0] = *v18;
    v40[1] = v19;
    v41[0] = v18[2];
    *(v41 + 9) = *(v18 + 41);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_25F2CAB68;
    *(v20 + 24) = a4;
    v21 = v18[1];
    *(v20 + 32) = *v18;
    *(v20 + 48) = v21;
    *(v20 + 64) = v18[2];
    *(v20 + 73) = *(v18 + 41);
    aBlock = a2;
    v35 = a3;
    swift_retain_n();
    if ((ExecutionLane.isCurrentLane.getter() & 1) != 0 || !a2)
    {
      sub_25F2C4A14(v40, a4);
    }

    else
    {
      if (a2 != 1)
      {
        v38 = sub_25F2CAB70;
        v39 = v20;
        aBlock = MEMORY[0x277D85DD0];
        v35 = 1107296256;
        v36 = sub_25F1D8C38;
        v37 = &block_descriptor_66;
        v26 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v33 = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v27 = v29;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v14, v10, v26);
        _Block_release(v26);
        sub_25F2033DC(a2);
        (*(v32 + 8))(v10, v27);
        (*(v30 + 8))(v14, v31);
      }

      sub_25F1F54F4();
      v22 = sub_25F305AAC();
      v38 = sub_25F2CAB70;
      v39 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v35 = 1107296256;
      v36 = sub_25F1D8C38;
      v37 = &block_descriptor_69;
      v23 = _Block_copy(&aBlock);

      sub_25F30492C();
      aBlock = MEMORY[0x277D84F90];
      sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1D908C();
      v24 = v29;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v14, v10, v23);
      _Block_release(v23);

      (*(v32 + 8))(v10, v24);
      (*(v30 + 8))(v14, v31);
    }
  }

  else
  {

    sub_25F1AF698(v18, qword_27FD53BB8, &qword_25F311350);
  }
}

uint64_t sub_25F2CAB90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = sub_25F30490C();
  v32 = *(v29 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F30494C();
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v28 - v17);
  sub_25F1B7174(a1, &v28 - v17, qword_27FD53BB8, &qword_25F311350);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v19 = v18[1];
    v37 = *v18;
    v38 = v19;
    v39[0] = v18[2];
    *(v39 + 9) = *(v18 + 41);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_25F2CB100;
    *(v20 + 24) = a4;
    v21 = v18[1];
    *(v20 + 32) = *v18;
    *(v20 + 48) = v21;
    *(v20 + 64) = v18[2];
    *(v20 + 73) = *(v18 + 41);
    *&aBlock = a2;
    *(&aBlock + 1) = a3;
    swift_retain_n();
    if ((ExecutionLane.isCurrentLane.getter() & 1) != 0 || !a2)
    {
      aBlock = v37;
      v35 = v38;
      v36[0] = v39[0];
      *(v36 + 9) = *(v39 + 9);
      (*(*a4 + 192))(&aBlock);
    }

    else
    {
      if (a2 != 1)
      {
        *&v36[0] = sub_25F2CCC34;
        *(&v36[0] + 1) = v20;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v35 = sub_25F1D8C38;
        *(&v35 + 1) = &block_descriptor_76;
        v26 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v33 = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v27 = v29;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v14, v10, v26);
        _Block_release(v26);
        sub_25F2033DC(a2);
        (*(v32 + 8))(v10, v27);
        (*(v30 + 8))(v14, v31);
      }

      sub_25F1F54F4();
      v22 = sub_25F305AAC();
      *&v36[0] = sub_25F2CCC34;
      *(&v36[0] + 1) = v20;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v35 = sub_25F1D8C38;
      *(&v35 + 1) = &block_descriptor_79;
      v23 = _Block_copy(&aBlock);

      sub_25F30492C();
      *&aBlock = MEMORY[0x277D84F90];
      sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1D908C();
      v24 = v29;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v14, v10, v23);
      _Block_release(v23);

      (*(v32 + 8))(v10, v24);
      (*(v30 + 8))(v14, v31);
    }
  }

  else
  {

    sub_25F1AF698(v18, qword_27FD53BB8, &qword_25F311350);
  }
}

uint64_t sub_25F2CB108(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v7 = sub_25F30490C();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F30494C();
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v42 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v42 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  sub_25F1B7174(a1, &v42 - v20, qword_27FD53BB8, &qword_25F311350);
  v50 = v19;
  sub_25F1B7174(v21, v19, qword_27FD53BB8, &qword_25F311350);
  v48 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v49;
  sub_25F1B7174(v21, v48, qword_27FD53BB8, &qword_25F311350);
  v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_25F2CCCC4;
  *(v24 + 24) = a4;
  sub_25F23F614(v21, v24 + v23, qword_27FD53BB8, &qword_25F311350);
  aBlock = v22;
  v53 = a3;
  swift_retain_n();
  if ((ExecutionLane.isCurrentLane.getter() & 1) == 0)
  {
    if (!v22)
    {
      v34 = *(a4 + 152);
      os_unfair_lock_lock((v34 + 24));
      v35 = *(v34 + 16);
      v36 = v48;
      if (v35 >> 62 == 1)
      {
        sub_25F2CBE24(v35);
        *(v34 + 16) = 0x8000000000000000;
        os_unfair_lock_unlock((v34 + 24));
        sub_25F1C0AC8(v36);
      }

      else
      {
        os_unfair_lock_unlock((v34 + 24));
      }

      v28 = v36;
      goto LABEL_15;
    }

    if (v22 != 1)
    {
      v56 = sub_25F2CBE54;
      v57 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v53 = 1107296256;
      v54 = sub_25F1D8C38;
      v55 = &block_descriptor_123_0;
      v37 = _Block_copy(&aBlock);

      sub_25F2033CC(v22);
      v38 = v42;
      sub_25F30492C();
      v51 = MEMORY[0x277D84F90];
      sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1D908C();
      v39 = v43;
      v40 = v47;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v38, v39, v37);
      _Block_release(v37);
      sub_25F2033DC(v22);
      (*(v46 + 8))(v39, v40);
      (*(v44 + 8))(v38, v45);

      goto LABEL_12;
    }

    sub_25F1F54F4();
    v29 = sub_25F305AAC();
    v56 = sub_25F2CBE54;
    v57 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v54 = sub_25F1D8C38;
    v55 = &block_descriptor_126;
    v30 = _Block_copy(&aBlock);

    v31 = v42;
    sub_25F30492C();
    aBlock = MEMORY[0x277D84F90];
    sub_25F1D9034();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
    sub_25F1D908C();
    v32 = v43;
    v33 = v47;
    sub_25F305E5C();
    MEMORY[0x25F8D7C70](0, v31, v32, v30);
    _Block_release(v30);

    (*(v46 + 8))(v32, v33);
    (*(v44 + 8))(v31, v45);
LABEL_8:

LABEL_12:

    v28 = v48;
LABEL_15:
    v27 = v50;
    goto LABEL_16;
  }

  v25 = *(a4 + 152);
  os_unfair_lock_lock((v25 + 24));
  v26 = *(v25 + 16);
  if (v26 >> 62 != 1)
  {
    os_unfair_lock_unlock((v25 + 24));
    goto LABEL_8;
  }

  sub_25F2CBE24(v26);
  *(v25 + 16) = 0x8000000000000000;
  os_unfair_lock_unlock((v25 + 24));
  v27 = v50;
  sub_25F1C0AC8(v50);

  v28 = v48;
LABEL_16:
  sub_25F1AF698(v28, qword_27FD53BB8, &qword_25F311350);
  sub_25F1AF698(v27, qword_27FD53BB8, &qword_25F311350);
}

uint64_t sub_25F2CB790(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = sub_25F30490C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F30494C();
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x28223BE20](v14);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 57))
  {
    if (*(a1 + 57) != 1)
    {
      return result;
    }

    v31 = v17;
    v32 = result;
    v33 = v10;
    v34 = v9;
    v20 = 1;
  }

  else
  {
    v31 = v17;
    v32 = result;
    v33 = v10;
    v34 = v9;
    v20 = 0;
  }

  v43 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_25F2CBD2C;
  *(v21 + 24) = a4;
  *(v21 + 32) = v8;
  *(v21 + 40) = v43;
  v41 = a2;
  v42 = a3;
  v30 = a3;
  sub_25F1B7174(a1, &aBlock, &qword_27FD581F0, &unk_25F314C40);
  sub_25F1B7174(a1, &aBlock, &qword_27FD581F0, &unk_25F314C40);
  sub_25F1B7174(a1, &aBlock, &qword_27FD581F0, &unk_25F314C40);

  sub_25F1B7174(a1, &aBlock, &qword_27FD581F0, &unk_25F314C40);
  swift_retain_n();
  if (ExecutionLane.isCurrentLane.getter())
  {
    sub_25F1AF698(a1, &qword_27FD581F0, &unk_25F314C40);
    sub_25F2C89A4(v8, v20);

    sub_25F1AF698(a1, &qword_27FD581F0, &unk_25F314C40);
    v22 = a1;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        sub_25F1F54F4();
        v23 = sub_25F305AAC();
        v39 = sub_25F2CCC38;
        v40 = v21;
        aBlock = MEMORY[0x277D85DD0];
        v36 = 1107296256;
        v37 = sub_25F1D8C38;
        v38 = &block_descriptor_88;
        v24 = _Block_copy(&aBlock);

        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v25 = v34;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v19, v13, v24);
        _Block_release(v24);

        (*(v33 + 8))(v13, v25);
        (*(v31 + 8))(v19, v32);
      }

      else
      {
        v39 = sub_25F2CCC38;
        v40 = v21;
        aBlock = MEMORY[0x277D85DD0];
        v36 = 1107296256;
        v37 = sub_25F1D8C38;
        v38 = &block_descriptor_85;
        v29 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v41 = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v26 = v34;
        sub_25F305E5C();
        v27 = v29;
        MEMORY[0x25F8D7C70](0, v19, v13, v29);
        _Block_release(v27);
        sub_25F2033DC(a2);
        (*(v33 + 8))(v13, v26);
        (*(v31 + 8))(v19, v32);
      }
    }

    else
    {
      sub_25F2C89A4(v8, v20);
    }

    sub_25F1AF698(a1, &qword_27FD581F0, &unk_25F314C40);

    sub_25F1AF698(a1, &qword_27FD581F0, &unk_25F314C40);
    v22 = a1;
  }

  sub_25F1AF698(v22, &qword_27FD581F0, &unk_25F314C40);
}

void *sub_25F2CBD34@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_25F2C900C(a1, **(v2 + 16), *(*(v2 + 16) + 8));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
    a2[2] = v7;
  }

  return result;
}

void *sub_25F2CBD80(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    sub_25F208C90(result, a2 & 1);
  }

  return result;
}

void *sub_25F2CBDC4(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    sub_25F1C5980(result, a2 & 1);
  }

  return result;
}

unint64_t sub_25F2CBE08(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_25F2CBE24(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t sub_25F2CBE68(uint64_t *a1, uint64_t *a2)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v4 = *(v2 + 24);
  return (*(v2 + 16))(v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
}

uint64_t sub_25F2CBECC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = sub_25F30490C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F30494C();
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x28223BE20](v14);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 57))
  {
    if (*(a1 + 57) != 1)
    {
      return result;
    }

    v31 = v17;
    v32 = result;
    v33 = v10;
    v34 = v9;
    v20 = 1;
  }

  else
  {
    v31 = v17;
    v32 = result;
    v33 = v10;
    v34 = v9;
    v20 = 0;
  }

  v43 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_25F2CCA78;
  *(v21 + 24) = a4;
  *(v21 + 32) = v8;
  *(v21 + 40) = v43;
  v41 = a2;
  v42 = a3;
  v30 = a3;
  sub_25F1B7174(a1, &aBlock, &qword_27FD581F8, &qword_25F314C60);
  sub_25F1B7174(a1, &aBlock, &qword_27FD581F8, &qword_25F314C60);
  sub_25F1B7174(a1, &aBlock, &qword_27FD581F8, &qword_25F314C60);

  sub_25F1B7174(a1, &aBlock, &qword_27FD581F8, &qword_25F314C60);
  swift_retain_n();
  if (ExecutionLane.isCurrentLane.getter())
  {
    sub_25F1AF698(a1, &qword_27FD581F8, &qword_25F314C60);
    sub_25F2C4C90(v8, v20);

    sub_25F1AF698(a1, &qword_27FD581F8, &qword_25F314C60);
    v22 = a1;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        sub_25F1F54F4();
        v23 = sub_25F305AAC();
        v39 = sub_25F2CCA80;
        v40 = v21;
        aBlock = MEMORY[0x277D85DD0];
        v36 = 1107296256;
        v37 = sub_25F1D8C38;
        v38 = &block_descriptor_153;
        v24 = _Block_copy(&aBlock);

        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v25 = v34;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v19, v13, v24);
        _Block_release(v24);

        (*(v33 + 8))(v13, v25);
        (*(v31 + 8))(v19, v32);
      }

      else
      {
        v39 = sub_25F2CCA80;
        v40 = v21;
        aBlock = MEMORY[0x277D85DD0];
        v36 = 1107296256;
        v37 = sub_25F1D8C38;
        v38 = &block_descriptor_150;
        v29 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v41 = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v26 = v34;
        sub_25F305E5C();
        v27 = v29;
        MEMORY[0x25F8D7C70](0, v19, v13, v29);
        _Block_release(v27);
        sub_25F2033DC(a2);
        (*(v33 + 8))(v13, v26);
        (*(v31 + 8))(v19, v32);
      }
    }

    else
    {
      sub_25F2C4C90(v8, v20);
    }

    sub_25F1AF698(a1, &qword_27FD581F8, &qword_25F314C60);

    sub_25F1AF698(a1, &qword_27FD581F8, &qword_25F314C60);
    v22 = a1;
  }

  sub_25F1AF698(v22, &qword_27FD581F8, &qword_25F314C60);
}

uint64_t sub_25F2CC468(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = sub_25F30490C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25F30494C();
  v16 = *(*(v15 - 8) + 64);
  result = MEMORY[0x28223BE20](v15);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 57))
  {
    if (*(a1 + 57) != 1)
    {
      return result;
    }

    v32 = v14;
    v33 = v18;
    v34 = result;
    v35 = v11;
    v36 = v10;
    v9 = 0;
    v21 = 1;
  }

  else
  {
    v32 = v14;
    v33 = v18;
    v34 = result;
    v35 = v11;
    v36 = v10;
    v21 = 0;
  }

  v45 = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_25F2CCA18;
  *(v22 + 24) = a4;
  *(v22 + 32) = v8;
  *(v22 + 40) = v9;
  *(v22 + 48) = v45;
  v43 = a2;
  v44 = a3;
  v31[1] = a3;
  sub_25F1B7174(a1, &aBlock, qword_27FD54C30, &qword_25F314C70);
  sub_25F1B7174(a1, &aBlock, qword_27FD54C30, &qword_25F314C70);
  sub_25F1B7174(a1, &aBlock, qword_27FD54C30, &qword_25F314C70);

  sub_25F1B7174(a1, &aBlock, qword_27FD54C30, &qword_25F314C70);
  swift_retain_n();
  if (ExecutionLane.isCurrentLane.getter())
  {
    sub_25F1AF698(a1, qword_27FD54C30, &qword_25F314C70);
    sub_25F2C524C(v8, v9, v21);

    sub_25F1AF698(a1, qword_27FD54C30, &qword_25F314C70);
    v23 = a1;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        sub_25F1F54F4();
        v24 = sub_25F305AAC();
        v41 = sub_25F2CCA20;
        v42 = v22;
        aBlock = MEMORY[0x277D85DD0];
        v38 = 1107296256;
        v39 = sub_25F1D8C38;
        v40 = &block_descriptor_135;
        v25 = _Block_copy(&aBlock);

        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v26 = v32;
        v27 = v36;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v20, v26, v25);
        _Block_release(v25);

        (*(v35 + 8))(v26, v27);
        (*(v33 + 8))(v20, v34);
      }

      else
      {
        v41 = sub_25F2CCA20;
        v42 = v22;
        aBlock = MEMORY[0x277D85DD0];
        v38 = 1107296256;
        v39 = sub_25F1D8C38;
        v40 = &block_descriptor_132;
        v31[0] = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v43 = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v28 = v32;
        v29 = v36;
        sub_25F305E5C();
        v30 = v31[0];
        MEMORY[0x25F8D7C70](0, v20, v28, v31[0]);
        _Block_release(v30);
        sub_25F2033DC(a2);
        (*(v35 + 8))(v28, v29);
        (*(v33 + 8))(v20, v34);
      }
    }

    else
    {
      sub_25F2C524C(v8, v9, v21);
    }

    sub_25F1AF698(a1, qword_27FD54C30, &qword_25F314C70);

    sub_25F1AF698(a1, qword_27FD54C30, &qword_25F314C70);
    v23 = a1;
  }

  sub_25F1AF698(v23, qword_27FD54C30, &qword_25F314C70);
}

uint64_t sub_25F2CCA20()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = v3;
  return v2(&v5);
}

uint64_t sub_25F2CCA84()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);
  v5 = *(v0 + 32);
  v6 = v3;
  return v2(&v5);
}

uint64_t sub_25F2CCAD8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 48);
  v5[0] = *(v0 + 32);
  v5[1] = v3;
  v6[0] = *(v0 + 64);
  *(v6 + 9) = *(v0 + 73);
  return v2(v5);
}

uint64_t sub_25F2CCB28()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v2 = *(sub_25F30678C() - 8);
  v3 = *(v0 + 32);
  return (*(v0 + 24))(v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80)));
}

uint64_t sub_25F2CCCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a5;
  v12 = sub_25F3041FC();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_25F3041EC();
  v16 = [objc_opt_self() mainBundle];
  v17 = [v16 bundleIdentifier];

  if (v17)
  {
    v18 = sub_25F304E0C();
    v20 = v19;

    if (a4)
    {
      if (v18 != a3 || v20 != a4)
      {
        v41 = v6;
        v6 = a2;
        v22 = v15;
        v23 = sub_25F30659C();

        if (v23)
        {

          v24 = 0;
          a3 = 0;
          a4 = 0;
LABEL_12:
          v15 = v22;
          a2 = v6;
          LODWORD(v6) = v41;
          goto LABEL_16;
        }

LABEL_11:

        v24 = sub_25F304DDC();

        goto LABEL_12;
      }

      v24 = 0;
      a3 = 0;
      a4 = 0;
    }

    else
    {

      v24 = 0;
    }
  }

  else
  {
    if (a4)
    {
      v41 = v6;
      v6 = a2;
      v22 = v15;
      goto LABEL_11;
    }

    v24 = 0;
    a3 = 0;
  }

LABEL_16:
  v25 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];

  if (!v25)
  {
    v40 = a1;
    if (qword_281561A38 != -1)
    {
      swift_once();
    }

    v28 = sub_25F30479C();
    __swift_project_value_buffer(v28, qword_281561A40);

    v29 = sub_25F30477C();
    v30 = sub_25F305A0C();

    if (os_log_type_enabled(v29, v30))
    {
      v41 = v6;
      v6 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = v31;
      *v6 = 136315138;
      v39 = v15;
      if (a4)
      {
        v45 = 0;
        v46 = 0xE000000000000000;
        v42 = a3;
        v43 = a4;
        sub_25F30619C();
        v32 = 0;
        v33 = 0xE000000000000000;
      }

      else
      {
        v33 = 0xE300000000000000;
        v32 = 7104878;
      }

      v35 = sub_25F1C53AC(v32, v33, &v44);

      *(v6 + 4) = v35;
      _os_log_impl(&dword_25F1A2000, v29, v30, "Failed to access defaults for %s; falling back to .standard", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x25F8D9510](v31, -1, -1);
      MEMORY[0x25F8D9510](v6, -1, -1);

      LOBYTE(v6) = v41;
      v15 = v39;
    }

    else
    {
    }

    v36 = MEMORY[0x28223BE20](v34);
    v38[6] = a3;
    v38[7] = a4;
    MEMORY[0x28223BE20](v36);
    v38[2] = sub_25F2D09BC;
    v38[3] = v37;
    v45 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/UserDefaults.swift";
    v46 = 124;
    v47 = 2;
    v48 = xmmword_25F314D60;
    v49 = "init(_:suiteName:defaultValue:cached:)";
    v50 = 38;
    v51 = 2;
    sub_25F21347C(sub_25F2D09C4, v38, &v45);

    result = [objc_opt_self() standardUserDefaults];
    v25 = result;
    a1 = v40;
    if (v6)
    {
      goto LABEL_18;
    }

LABEL_30:
    v27 = 2;
    goto LABEL_31;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_18:

  result = _sSb20PreviewsFoundationOSE15userDefaultsKey0dE0SbSgSS_So06NSUserE0CtcfC_0(a1, a2, v25);
  if (result == 2)
  {
    v27 = 1;
  }

  else
  {
    v27 = result & 1;
  }

LABEL_31:
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v25;
  *(a6 + 24) = v6 & 1;
  *(a6 + 25) = v27;
  *(a6 + 32) = sub_25F1E05D0;
  *(a6 + 40) = 0;
  *(a6 + 48) = v15;
  return result;
}

uint64_t UserDefault.init(_:suiteName:defaultValue:cached:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, void (*a6)(void)@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v68 = a7;
  v67 = a3;
  v16 = sub_25F305C1C();
  v65 = *(v16 - 8);
  v66 = v16;
  v17 = *(v65 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v69 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v64 = &v58 - v20;
  v21 = type metadata accessor for UserDefault();
  v22 = v21[11];
  v23 = *(a8 - 8);
  v24 = *(v23 + 56);
  v62 = v23 + 56;
  v63 = v22;
  v60 = v23;
  v61 = v24;
  v24((a9 + v22), 1, 1, a8);
  v25 = v21[13];
  v26 = sub_25F3041FC();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  *(a9 + v25) = sub_25F3041EC();
  *a9 = a1;
  *(a9 + 8) = a2;
  v29 = a6;
  v59 = v21;
  v30 = (a9 + v21[12]);
  v58 = a5;
  *v30 = a5;
  v30[1] = a6;
  v31 = objc_opt_self();

  v32 = [v31 mainBundle];
  v33 = [v32 bundleIdentifier];

  if (v33)
  {
    v34 = sub_25F304E0C();
    v36 = v35;

    if (!a4)
    {

      v38 = 0;
      v37 = v67;
      goto LABEL_13;
    }

    v37 = v67;
    if (v34 == v67 && v36 == a4)
    {

LABEL_10:

      v38 = 0;
      v37 = 0;
      a4 = 0;
      goto LABEL_13;
    }

    v39 = sub_25F30659C();

    if (v39)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (a4)
  {
    v37 = v67;
LABEL_11:

    v38 = sub_25F304DDC();

    goto LABEL_13;
  }

  v38 = 0;
  v37 = 0;
LABEL_13:
  v40 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];

  if (v40)
  {
  }

  else
  {
    v67 = v29;
    if (qword_281561A38 != -1)
    {
      swift_once();
    }

    v41 = sub_25F30479C();
    __swift_project_value_buffer(v41, qword_281561A40);

    v42 = sub_25F30477C();
    v43 = sub_25F305A0C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v72 = v45;
      *v44 = 136315138;
      if (a4)
      {
        v73 = 0;
        v74 = 0xE000000000000000;
        v70 = v37;
        v71 = a4;
        sub_25F30619C();
        v46 = v73;
        v47 = v74;
      }

      else
      {
        v47 = 0xE300000000000000;
        v46 = 7104878;
      }

      v48 = sub_25F1C53AC(v46, v47, &v72);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_25F1A2000, v42, v43, "Failed to access defaults for %s; falling back to .standard", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x25F8D9510](v45, -1, -1);
      MEMORY[0x25F8D9510](v44, -1, -1);
    }

    v73 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/UserDefaults.swift";
    v74 = 124;
    v75 = 2;
    v76 = xmmword_25F314D60;
    v77 = "init(_:suiteName:defaultValue:cached:)";
    v78 = 38;
    v79 = 2;
    sub_25F213F98(&v73);

    v40 = [objc_opt_self() standardUserDefaults];
  }

  *(a9 + 16) = v40;
  v49 = v68;
  *(a9 + 24) = v68 & 1;
  v50 = v69;
  if ((v49 & 1) == 0)
  {
  }

  sub_25F2CE1C4(v59);
  v51 = v60;
  v52 = *(v60 + 48);
  if (v52(v50, 1, a8) == 1)
  {
    v53 = v64;
    v58();

    v54 = v52(v50, 1, a8);
    v56 = v65;
    v55 = v66;
    if (v54 != 1)
    {
      (*(v65 + 8))(v50, v66);
    }
  }

  else
  {

    v53 = v64;
    (*(v51 + 32))(v64, v50, a8);
    v56 = v65;
    v55 = v66;
  }

  v61(v53, 0, 1, a8);
  return (*(v56 + 40))(a9 + v63, v53, v55);
}

uint64_t sub_25F2CD7A0@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54A50, &unk_25F30C9B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v21 - v6;
  v8 = sub_25F304DDC();
  v9 = [a1 objectForKey_];

  if (v9)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
    v10 = sub_25F3041CC();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_25F3041BC();
    sub_25F1B7118(v29, v21);
    if (swift_dynamicCast())
    {
      v13 = v27;
      v14 = v28;
      v15 = sub_25F30462C();
      sub_25F2D0974(&qword_27FD582B8, MEMORY[0x277CC9578]);
      sub_25F3041AC();
      __swift_destroy_boxed_opaque_existential_1(v29);

      sub_25F1D4BB0(v13, v14);
      v17 = *(v15 - 8);
      v18 = *(v17 + 56);
      v18(v7, 0, 1, v15);
      (*(v17 + 32))(a2, v7, v15);
      return (v18)(a2, 0, 1, v15);
    }

    v21[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/UserDefaults.swift";
    v21[1] = 124;
    v22 = 2;
    v23 = xmmword_25F314D70;
    v24 = "init(userDefaultsKey:userDefaults:)";
    v25 = 35;
    v26 = 2;
    sub_25F213F98(v21);

    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
  }

  v16 = sub_25F30462C();
  return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
}

uint64_t UserDefaultRepresentable.init(userDefaultsKey:userDefaults:)@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = sub_25F305C1C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = sub_25F304DDC();
  v13 = [a1 objectForKey_];

  if (v13)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
    sub_25F1B707C(&v25, v33);
    v14 = sub_25F3041CC();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_25F3041BC();
    sub_25F1B7118(v33, &v25);
    if (swift_dynamicCast())
    {
      v24 = a4;
      v17 = v31;
      v18 = v32;
      v19 = *(a3 + 8);
      sub_25F3041AC();
      __swift_destroy_boxed_opaque_existential_1(v33);

      sub_25F1D4BB0(v17, v18);
      v20 = *(a2 - 8);
      v21 = *(v20 + 56);
      v21(v11, 0, 1, a2);
      v22 = v24;
      (*(v20 + 32))(v24, v11, a2);
      return (v21)(v22, 0, 1, a2);
    }

    *&v25 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/UserDefaults.swift";
    *(&v25 + 1) = 124;
    v26 = 2;
    v27 = xmmword_25F314D70;
    v28 = "init(userDefaultsKey:userDefaults:)";
    v29 = 35;
    v30 = 2;
    sub_25F213F98(&v25);

    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
  }

  return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
}

uint64_t UserDefault.Projected.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UserDefault.Projected.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*UserDefault.Projected.defaultValue.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_2;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t (*UserDefault.Projected.actualValue.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_2;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_25F2CE034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for UserDefault.Projected();
  v13 = *(*(a5 - 8) + 32);
  v13(&a6[*(v10 + 36)], a3, a5);
  v11 = &a6[*(v10 + 40)];

  return (v13)(v11, a4, a5);
}

unint64_t sub_25F2CE0FC(uint64_t a1, uint64_t a2)
{
  sub_25F305FAC();

  if (a2)
  {
    sub_25F30619C();
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x25F8D7130](v3, v4);

  return 0xD000000000000022;
}

uint64_t sub_25F2CE1C4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(v6 + 24);
  v8 = v4;

  return v7(v2, v3, v8, v5, v6);
}

uint64_t UserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_25F305C1C();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v13 = *(a1 + 44);
  v21 = v14;
  (*(v14 + 16))(&v20 - v11, v2 + v13, v6);
  v15 = *(v5 - 8);
  v16 = *(v15 + 48);
  if (v16(v12, 1, v5) != 1)
  {
    return (*(v15 + 32))(a2, v12, v5);
  }

  sub_25F2CE1C4(a1);
  if (v16(v10, 1, v5) == 1)
  {
    v17 = v2 + *(a1 + 48);
    v18 = *(v17 + 8);
    (*v17)();
    if (v16(v10, 1, v5) != 1)
    {
      (*(v21 + 8))(v10, v6);
    }
  }

  else
  {
    (*(v15 + 32))(a2, v10, v5);
  }

  result = (v16)(v12, 1, v5);
  if (result != 1)
  {
    return (*(v21 + 8))(v12, v6);
  }

  return result;
}

uint64_t sub_25F2CE4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *(*(*(a3 + a4 - 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6);
  v9 = type metadata accessor for UserDefault();
  return UserDefault.wrappedValue.setter(v7, v9);
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (v2[3])
  {
    v6 = *(a2 + 44);
    v7 = *(a2 + 16);
    v8 = sub_25F305C1C();
    (*(*(v8 - 8) + 8))(v3 + v6, v8);
    v9 = *(v7 - 8);
    (*(v9 + 16))(v3 + v6, a1, v7);
    (*(v9 + 56))(v3 + v6, 0, 1, v7);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v10 = *(v3 + *(a2 + 52));
  v11 = *(*(a2 + 24) + 16);
  v12 = sub_25F3041DC();
  v14 = v13;
  v15 = v3[2];
  v16 = sub_25F30452C();
  v17 = *v3;
  v18 = v3[1];
  v19 = sub_25F304DDC();
  [v15 setObject:v16 forKey:v19];
  sub_25F1D4BB0(v12, v14);

  v20 = *(*(v7 - 8) + 8);

  return v20(a1, v7);
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  UserDefault.wrappedValue.getter(a2, v11);
  return sub_25F2CE894;
}

void sub_25F2CE894(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    UserDefault.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    UserDefault.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t UserDefault.projectedValue.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v44 = a2;
  v5 = *(a1 + 16);
  v6 = sub_25F305C1C();
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v40 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v37 - v11;
  v13 = *(v5 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v37 - v18;
  v20 = v3[1];
  v41 = *v3;
  v42 = v20;
  v21 = v3 + *(v4 + 48);
  v23 = *v21;
  v22 = *(v21 + 1);

  v43 = v19;
  v37[1] = v22;
  v38 = v23;
  v25 = v12;
  (v23)(v24);
  v26 = *(v45 + 16);
  v27 = v3 + *(v4 + 44);
  v39 = v6;
  v26(v12, v27, v6);
  v28 = *(v13 + 48);
  if (v28(v25, 1, v5) == 1)
  {
    v37[0] = v4;
    v29 = v40;
    sub_25F2CE1C4(v4);
    if (v28(v29, 1, v5) == 1)
    {
      v38();
      if (v28(v29, 1, v5) != 1)
      {
        (*(v45 + 8))(v29, v39);
      }
    }

    else
    {
      (*(v13 + 32))(v17, v29, v5);
    }

    v30 = v28(v25, 1, v5);
    v4 = v37[0];
    if (v30 != 1)
    {
      (*(v45 + 8))(v25, v39);
    }
  }

  else
  {
    (*(v13 + 32))(v17, v25, v5);
  }

  v31 = *(v4 + 24);
  v32 = v44;
  v33 = v42;
  *v44 = v41;
  *(v32 + 1) = v33;
  v34 = type metadata accessor for UserDefault.Projected();
  v35 = *(v13 + 32);
  v35(&v32[*(v34 + 36)], v43, v5);
  return (v35)(&v32[*(v34 + 40)], v17, v5);
}

double UserDefault.observe(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  type metadata accessor for UserDefaultObserver();
  v11 = *v4;
  v14 = v4 + 1;
  v13 = v4[1];
  v12 = v14[1];
  v15 = swift_allocObject();
  v15[2] = v9;
  v15[3] = v10;
  v15[4] = a1;
  v15[5] = a2;
  v16 = v12;

  v17 = sub_25F2CFAE8(v16, v11, v13, sub_25F1CDB58, v15);

  v18 = *(v8 + 16);
  *(v8 + 16) = v17;

  v19 = swift_allocObject();
  v19[2] = v9;
  v19[3] = v10;
  v19[4] = v8;
  *&v23 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/UserDefaults.swift";
  *(&v23 + 1) = 124;
  v24 = 2;
  v25 = xmmword_25F311FA0;
  v26 = "observe(_:)";
  v27 = 11;
  v28 = 2;
  CancellationToken.init(callsite:didCancel:)(&v23, sub_25F2CFB54, v19, &v29);
  v20 = v30;
  result = *&v29;
  *a4 = v29;
  *(a4 + 16) = v20;
  return result;
}

void sub_25F2CEE5C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2;
    sub_25F2CF36C();
  }

  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
}