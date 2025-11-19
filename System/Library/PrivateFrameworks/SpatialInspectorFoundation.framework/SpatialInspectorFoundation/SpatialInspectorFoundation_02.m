uint64_t getEnumTagSinglePayload for InspectorEntityRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InspectorEntityRepresentation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26B2B66E8()
{
  result = qword_2803FAEF0;
  if (!qword_2803FAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FAEF0);
  }

  return result;
}

unint64_t sub_26B2B6740()
{
  result = qword_2803FB000;
  if (!qword_2803FB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FB000);
  }

  return result;
}

unint64_t sub_26B2B6798()
{
  result = qword_2803FB008[0];
  if (!qword_2803FB008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FB008);
  }

  return result;
}

uint64_t sub_26B2B67EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t ComponentID.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ComponentID.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static ComponentID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_26B2BC138();
  }
}

uint64_t sub_26B2B6908(uint64_t a1)
{
  v2 = sub_26B2B6ABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2B6944(uint64_t a1)
{
  v2 = sub_26B2B6ABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ComponentID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F46A8, &qword_26B2C03A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2B6ABC();
  sub_26B2BC258();
  sub_26B2BC078();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_26B2B6ABC()
{
  result = qword_2803FB090;
  if (!qword_2803FB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FB090);
  }

  return result;
}

uint64_t ComponentID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_26B2BB9E8();
}

uint64_t ComponentID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26B2BC1E8();
  sub_26B2BB9E8();
  return sub_26B2BC238();
}

uint64_t ComponentID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F46B0, &qword_26B2C03A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2B6ABC();
  sub_26B2BC248();
  if (!v2)
  {
    v12 = sub_26B2BBF88();
    v14 = v13;
    (*(v6 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26B2B6CF0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F46A8, &qword_26B2C03A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2B6ABC();
  sub_26B2BC258();
  sub_26B2BC078();
  return (*(v4 + 8))(v8, v3);
}

uint64_t InspectorComponentRepresentation.id.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t InspectorComponentRepresentation.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_26B2B6E7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for InspectorProperty();
  v3 = sub_26B2B84A0(&qword_2803F4228, 255, type metadata accessor for InspectorProperty);

  return InspectorCollection.init()(v2, v3, a1);
}

double sub_26B2B6EFC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 120))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_26B2B6F58(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v6[0] = *a1;
  v6[1] = v2;
  v4 = *(*v3 + 128);

  return v4(v6);
}

uint64_t sub_26B2B6FC8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_26B2B7018(_OWORD *a1)
{
  swift_beginAccess();
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  *(v1 + 64) = *a1;
}

uint64_t InspectorComponentRepresentation.__allocating_init(id:name:entityID:isInternal:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = swift_allocObject();
  v12 = *a1;
  v11 = a1[1];
  v13 = *a4;
  v14 = type metadata accessor for InspectorProperty();
  v15 = sub_26B2B84A0(&qword_2803F4228, 255, type metadata accessor for InspectorProperty);
  InspectorCollection.init()(v14, v15, (v10 + 64));
  *(v10 + 16) = v12;
  *(v10 + 24) = v11;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 56) = v13;
  *(v10 + 48) = a5;
  return v10;
}

uint64_t InspectorComponentRepresentation.init(id:name:entityID:isInternal:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *a4;
  v12 = type metadata accessor for InspectorProperty();
  v13 = sub_26B2B84A0(&qword_2803F4228, 255, type metadata accessor for InspectorProperty);
  InspectorCollection.init()(v12, v13, (v5 + 64));
  *(v5 + 16) = v9;
  *(v5 + 24) = v10;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 56) = v11;
  *(v5 + 48) = a5;
  return v5;
}

uint64_t sub_26B2B7248()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E7265746E497369;
  v4 = 0x4449797469746E65;
  if (v1 != 3)
  {
    v4 = 0x69747265706F7270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
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

uint64_t sub_26B2B72D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B2B7E58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B2B72FC(uint64_t a1)
{
  v2 = sub_26B2B76BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2B7338(uint64_t a1)
{
  v2 = sub_26B2B76BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *InspectorComponentRepresentation.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v4 = v0[8];
  v3 = v0[9];

  return v0;
}

uint64_t InspectorComponentRepresentation.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v4 = v0[8];
  v3 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_26B2B740C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F46B8, &unk_26B2C03B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2B76BC();
  sub_26B2BC258();
  v12 = *(v3 + 24);
  *&v20 = *(v3 + 16);
  *(&v20 + 1) = v12;
  LOBYTE(v19) = 0;
  sub_26B2B7710();

  sub_26B2BC0B8();
  if (!v2)
  {

    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    LOBYTE(v20) = 1;
    sub_26B2BC078();
    v15 = *(v3 + 48);
    LOBYTE(v20) = 2;
    sub_26B2BC088();
    *&v20 = *(v3 + 56);
    LOBYTE(v19) = 3;
    sub_26B293E3C();
    v16 = sub_26B2BC0B8();
    (*(*v3 + 120))(&v20, v16);
    v19 = v20;
    v18[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41D0, &unk_26B2BFF80);
    sub_26B2B8198(&qword_2803F44D8);
    sub_26B2BC0B8();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_26B2B76BC()
{
  result = qword_2803FB098[0];
  if (!qword_2803FB098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FB098);
  }

  return result;
}

unint64_t sub_26B2B7710()
{
  result = qword_2803F46C0;
  if (!qword_2803F46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F46C0);
  }

  return result;
}

uint64_t InspectorComponentRepresentation.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  InspectorComponentRepresentation.init(from:)(a1);
  return v2;
}

uint64_t InspectorComponentRepresentation.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F46C8, &qword_26B2C03C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for InspectorProperty();
  v12 = sub_26B2B84A0(&qword_2803F4228, 255, type metadata accessor for InspectorProperty);
  InspectorCollection.init()(v11, v12, (v3 + 64));
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2B76BC();
  sub_26B2BC248();
  if (v2)
  {
    v17 = *(v3 + 64);
    v16 = *(v3 + 72);

    type metadata accessor for InspectorComponentRepresentation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v24) = 0;
    sub_26B2B7B7C();
    sub_26B2BBFC8();
    v14 = v23;
    *(v3 + 16) = v22;
    *(v3 + 24) = v14;
    LOBYTE(v22) = 1;
    *(v3 + 32) = sub_26B2BBF88();
    *(v3 + 40) = v15;
    LOBYTE(v22) = 2;
    *(v3 + 48) = sub_26B2BBF98() & 1;
    LOBYTE(v24) = 3;
    sub_26B2944A8();
    sub_26B2BBFC8();
    *(v3 + 56) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41D0, &unk_26B2BFF80);
    LOBYTE(v22) = 4;
    sub_26B2B8198(&qword_2803F44E8);
    sub_26B2BBFC8();
    (*(v6 + 8))(v10, v5);
    v21 = v24;
    swift_beginAccess();
    v20 = *(v3 + 64);
    v19 = *(v3 + 72);
    *(v3 + 64) = v21;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_26B2B7B7C()
{
  result = qword_2803F46D0;
  if (!qword_2803F46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F46D0);
  }

  return result;
}

uint64_t sub_26B2B7BD0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t InspectorComponentRepresentation.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_26B2BB9E8();
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_26B2BB9E8();
  v8 = *(v0 + 56);
  sub_26B2A58A8();
  sub_26B2BB8A8();
  v5 = *(v0 + 48);
  v6 = sub_26B2BC208();
  (*(*v0 + 120))(&v8, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41D0, &unk_26B2BFF80);
  sub_26B2B8198(&qword_2803F41D8);
  sub_26B2BB8A8();
}

uint64_t InspectorComponentRepresentation.hashValue.getter()
{
  sub_26B2BC1E8();
  InspectorComponentRepresentation.hash(into:)();
  return sub_26B2BC238();
}

uint64_t sub_26B2B7DB0()
{
  v1 = *v0;
  sub_26B2BC1E8();
  InspectorComponentRepresentation.hash(into:)();
  return sub_26B2BC238();
}

uint64_t sub_26B2B7E18()
{
  sub_26B2BC1E8();
  v1 = *v0;
  InspectorComponentRepresentation.hash(into:)();
  return sub_26B2BC238();
}

uint64_t sub_26B2B7E58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEA00000000006C61 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449797469746E65 && a2 == 0xE800000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365)
  {

    return 4;
  }

  else
  {
    v6 = sub_26B2BC138();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t _s26SpatialInspectorFoundation0B23ComponentRepresentationC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (sub_26B2BC138()) && (*(a1 + 32) == *(a2 + 32) ? (v5 = *(a1 + 40) == *(a2 + 40)) : (v5 = 0), (v5 || (sub_26B2BC138()) && (*&v14 = *(a1 + 56), *&v13 = *(a2 + 56), static EntityID.== infix(_:_:)(&v14, &v13)) && *(a1 + 48) == *(a2 + 48)))
  {
    v8 = (*(*a1 + 120))(&v14);
    v13 = v14;
    (*(*a2 + 120))(&v12, v8);
    v11 = v12;
    v9 = type metadata accessor for InspectorProperty();
    v10 = sub_26B2B84A0(&qword_2803F4228, 255, type metadata accessor for InspectorProperty);
    v6 = static InspectorCollection.== infix(_:_:)(&v13, &v11, v9, v10);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_26B2B8198(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F41D0, &unk_26B2BFF80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B2B81E8(void *a1)
{
  a1[1] = sub_26B2B7B7C();
  a1[2] = sub_26B2B7710();
  a1[3] = sub_26B2B8228();
  result = sub_26B2B827C();
  a1[4] = result;
  return result;
}

unint64_t sub_26B2B8228()
{
  result = qword_2803F46D8;
  if (!qword_2803F46D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F46D8);
  }

  return result;
}

unint64_t sub_26B2B827C()
{
  result = qword_2803F46E0;
  if (!qword_2803F46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F46E0);
  }

  return result;
}

unint64_t sub_26B2B82D4()
{
  result = qword_2803F46E8;
  if (!qword_2803F46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F46E8);
  }

  return result;
}

unint64_t sub_26B2B832C()
{
  result = qword_2803F46F0;
  if (!qword_2803F46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F46F0);
  }

  return result;
}

uint64_t sub_26B2B8380(void *a1, uint64_t a2)
{
  a1[1] = sub_26B2B84A0(&qword_2803F46F8, a2, type metadata accessor for InspectorComponentRepresentation);
  a1[2] = sub_26B2B84A0(&qword_2803F4700, v3, type metadata accessor for InspectorComponentRepresentation);
  a1[3] = sub_26B2B84A0(&qword_2803F4708, v4, type metadata accessor for InspectorComponentRepresentation);
  result = sub_26B2B84A0(&qword_2803F4710, v5, type metadata accessor for InspectorComponentRepresentation);
  a1[4] = result;
  return result;
}

uint64_t sub_26B2B84A0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_26B2B8638()
{
  result = qword_2803FB7A0[0];
  if (!qword_2803FB7A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FB7A0);
  }

  return result;
}

unint64_t sub_26B2B8690()
{
  result = qword_2803FB9B0[0];
  if (!qword_2803FB9B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FB9B0);
  }

  return result;
}

unint64_t sub_26B2B86E8()
{
  result = qword_2803FBAC0;
  if (!qword_2803FBAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FBAC0);
  }

  return result;
}

unint64_t sub_26B2B8740()
{
  result = qword_2803FBAC8[0];
  if (!qword_2803FBAC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FBAC8);
  }

  return result;
}

unint64_t sub_26B2B8798()
{
  result = qword_2803FBB50;
  if (!qword_2803FBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FBB50);
  }

  return result;
}

unint64_t sub_26B2B87F0()
{
  result = qword_2803FBB58[0];
  if (!qword_2803FBB58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FBB58);
  }

  return result;
}

uint64_t EntityIDMap.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = sub_26B2B9844(MEMORY[0x277D84F90]);
  *(v0 + 24) = sub_26B2B9844(v1);
  return v0;
}

uint64_t EntityIDMap.init()()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = sub_26B2B9844(MEMORY[0x277D84F90]);
  *(v0 + 24) = sub_26B2B9844(v1);
  return v0;
}

uint64_t sub_26B2B88E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_26B2B8930(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_26B2B8990()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_26B2B89C8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_26B2B8A10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_26B2B8A5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t sub_26B2B8ABC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_26B2B8AF4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_26B2B8B3C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_26B2B95D4(v3, v4, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v10;
  swift_endAccess();
  swift_beginAccess();
  v7 = *(v2 + 24);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  sub_26B2B95D4(v4, v3, v8);
  *(v2 + 24) = v11;
  return swift_endAccess();
}

uint64_t sub_26B2B8C18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = (*(*v2 + 128))();
  if (*(v5 + 16) && (v6 = sub_26B2B9080(v4), (v7 & 1) != 0))
  {
    v8 = 0;
    v9 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v9 = 0;
    v8 = 1;
  }

  *a2 = v9;
  *(a2 + 8) = v8;
}

uint64_t sub_26B2B8CB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = (*(*v2 + 104))();
  if (*(v5 + 16) && (v6 = sub_26B2B9080(v4), (v7 & 1) != 0))
  {
    v8 = 0;
    v9 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v9 = 0;
    v8 = 1;
  }

  *a2 = v9;
  *(a2 + 8) = v8;
}

uint64_t sub_26B2B8D50(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = (*(*v1 + 128))();
  if (*(v4 + 16) && (v5 = sub_26B2B9080(v3), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);

    swift_beginAccess();
    v8 = *(v2 + 16);
    v9 = sub_26B2B9080(v7);
    if (v10)
    {
      v11 = v9;
      v12 = *(v2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v2 + 16);
      *(v2 + 16) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26B2B96F8();
      }

      sub_26B2B9438(v11, v14);
      *(v2 + 16) = v14;
    }

    swift_endAccess();
  }

  else
  {
  }

  swift_beginAccess();
  v15 = *(v2 + 24);
  v16 = sub_26B2B9080(v3);
  if (v17)
  {
    v18 = v16;
    v19 = *(v2 + 24);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    if (!v20)
    {
      sub_26B2B96F8();
    }

    sub_26B2B9438(v18, v21);
    *(v2 + 24) = v21;
  }

  return swift_endAccess();
}

uint64_t sub_26B2B8EB4(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = (*(*v1 + 128))();
  if (*(v4 + 16) && (v5 = sub_26B2B9080(v3), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);

    swift_beginAccess();
    v8 = *(v2 + 24);
    v9 = sub_26B2B9080(v7);
    if (v10)
    {
      v11 = v9;
      v12 = *(v2 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v2 + 24);
      *(v2 + 24) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26B2B96F8();
      }

      sub_26B2B9438(v11, v14);
      *(v2 + 24) = v14;
    }

    swift_endAccess();
  }

  else
  {
  }

  swift_beginAccess();
  v15 = *(v2 + 16);
  v16 = sub_26B2B9080(v3);
  if (v17)
  {
    v18 = v16;
    v19 = *(v2 + 16);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    if (!v20)
    {
      sub_26B2B96F8();
    }

    sub_26B2B9438(v18, v21);
    *(v2 + 16) = v21;
  }

  return swift_endAccess();
}

uint64_t EntityIDMap.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t EntityIDMap.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_26B2B9080(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_26B2A58A8();
  v3 = sub_26B2BB898();
  return sub_26B2B90E8(a1, v3);
}

unint64_t sub_26B2B90E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_26B2A5954();
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (sub_26B2BB938())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_26B2B91B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803F4720, &qword_26B2C0918);
  result = sub_26B2BBEE8();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v33 = *(*(v5 + 48) + 8 * v20);
      v21 = *(*(v5 + 56) + 8 * v20);
      v22 = *(v8 + 40);
      sub_26B2A58A8();
      result = sub_26B2BB898();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v33;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v32;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_26B2B9438(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26B2BBDB8() + 1) & ~v5;
    sub_26B2A58A8();
    do
    {
      v9 = *(a2 + 40);
      v22 = *(*(a2 + 48) + 8 * v6);
      result = sub_26B2BB898();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = (v13 + 8 * v3);
          v15 = (v13 + 8 * v6);
          if (v3 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26B2B95D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_26B2B9080(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_26B2B96F8();
    result = v17;
    goto LABEL_8;
  }

  sub_26B2B91B0(v14, a3 & 1);
  v18 = *v4;
  result = sub_26B2B9080(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_26B2BC198();
  __break(1u);
  return result;
}

void *sub_26B2B96F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803F4720, &qword_26B2C0918);
  v2 = *v0;
  v3 = sub_26B2BBED8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_26B2B9844(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803F4720, &qword_26B2C0918);
    v3 = sub_26B2BBEF8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_26B2B9080(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

BOOL sub_26B2B9A7C()
{
  v0 = sub_26B2BBF18();

  return v0 != 0;
}

uint64_t sub_26B2B9B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26B2B9B74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_26B2B9BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26B2B9C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_26B2B9CC0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26B2B9A7C();
  *a2 = result;
  return result;
}

BOOL sub_26B2B9D10@<W0>(_BYTE *a1@<X8>)
{
  result = sub_26B2B9A7C();
  *a1 = result;
  return result;
}

uint64_t sub_26B2B9D3C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_26B2A4554();
  *a2 = result & 1;
  return result;
}

uint64_t sub_26B2B9D6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B2B9DC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B2B9E20(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v5 = sub_26B2BBBB8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_26B2BB1EC(v5, AssociatedTypeWitness, a1, AssociatedConformanceWitness);

  return v7;
}

uint64_t sub_26B2B9EEC(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t InspectorCollection.isEmpty.getter(uint64_t a1)
{
  v4 = *v1;
  v2 = *(a1 + 16);
  sub_26B2BBC28();
  swift_getWitnessTable();
  return sub_26B2BBC88() & 1;
}

uint64_t InspectorCollection.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_26B2BBBB8();
  v6 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v8 = sub_26B2BBBB8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = sub_26B2BB1EC(v8, AssociatedTypeWitness, a1, AssociatedConformanceWitness);

  a3[1] = v10;
  return result;
}

uint64_t InspectorCollection.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(a3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v9 = sub_26B2BBBB8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_26B2BB1EC(v9, AssociatedTypeWitness, a2, AssociatedConformanceWitness);

  *a4 = a1;
  a4[1] = v11;
  v12 = type metadata accessor for InspectorCollection();
  return sub_26B2BA154(v12);
}

uint64_t sub_26B2BA154(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(*(a1 + 24) + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_26B2BB848();
  sub_26B2BB838();
  v6 = *v2;
  sub_26B2BBC28();

  swift_getWitnessTable();
  sub_26B2BBB48();
}

uint64_t InspectorCollection.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v31 = a1;
  v27 = a4;
  type metadata accessor for InspectorCollection.CodingKeys();
  swift_getWitnessTable();
  v28 = sub_26B2BC018();
  v26 = *(v28 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v28, v7);
  v9 = &v25 - v8;
  v33 = sub_26B2BBBB8();
  v29 = a3;
  v10 = *(a3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v12 = sub_26B2BBBB8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = AssociatedTypeWitness;
  v15 = v31;
  v16 = sub_26B2BB1EC(v12, v14, a2, AssociatedConformanceWitness);

  v34 = v16;
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v18 = v30;
  sub_26B2BC248();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v20 = v26;
    v19 = v27;
    sub_26B2BBC28();
    v32 = *(v29 + 8);
    swift_getWitnessTable();
    v21 = v28;
    sub_26B2BBFC8();

    v33 = v35;
    v23 = type metadata accessor for InspectorCollection();
    sub_26B2BA154(v23);
    (*(v20 + 8))(v9, v21);
    v24 = v34;
    *v19 = v33;
    v19[1] = v24;

    __swift_destroy_boxed_opaque_existential_1(v31);
  }
}

uint64_t InspectorCollection.append(_:keepExisting:)(uint64_t a1, int a2, uint64_t a3)
{
  LODWORD(v25) = a2;
  v5 = *(a3 + 16);
  v24 = *(a3 + 24);
  v6 = *(v24 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v23 - v15;
  v29 = a1;
  sub_26B2BBE48();
  v26 = v3;
  v17 = v3[1];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_26B2BB878();
  if (v29)
  {
    if (v25)
    {
      (*(v8 + 8))(v16, AssociatedTypeWitness);
      return swift_unknownObjectRelease();
    }

    v25 = AssociatedConformanceWitness;
    v20 = *v26;
    v27 = v29;
    v28 = v20;
    v21 = sub_26B2BBC28();
    swift_getWitnessTable();
    v22 = *(*(v24 + 24) + 8);
    v24 = v21;
    sub_26B2BBC98();
    if (v30 != 1)
    {
      sub_26B2BBBF8();
      swift_unknownObjectRelease();
    }

    (*(v8 + 16))(v13, v16, AssociatedTypeWitness);
    v29 = 0;
    sub_26B2BB848();
    sub_26B2BB888();
    swift_unknownObjectRelease();
  }

  v29 = a1;
  sub_26B2BBC28();
  swift_unknownObjectRetain();
  sub_26B2BBBE8();
  (*(v8 + 16))(v13, v16, AssociatedTypeWitness);
  v29 = a1;
  sub_26B2BB848();
  swift_unknownObjectRetain();
  sub_26B2BB888();
  return (*(v8 + 8))(v16, AssociatedTypeWitness);
}

uint64_t InspectorCollection.merge(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);

  if (sub_26B2BBBD8())
  {
    v5 = 4;
    do
    {
      v6 = v5 - 4;
      v7 = sub_26B2BBBC8();
      sub_26B2BBBA8();
      if (v7)
      {
        v8 = *(v3 + 8 * v5);
        swift_unknownObjectRetain();
        v9 = __OFADD__(v6, 1);
        v10 = v5 - 3;
        if (v9)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v8 = sub_26B2BBE58();
        v9 = __OFADD__(v6, 1);
        v10 = v5 - 3;
        if (v9)
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      InspectorCollection.append(_:keepExisting:)(v8, 1, a2);
      swift_unknownObjectRelease();
      ++v5;
    }

    while (v10 != sub_26B2BBBD8());
  }
}

uint64_t sub_26B2BA9C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v9 = *a1;
  sub_26B2BBE48();
  swift_getAssociatedConformanceWitness();
  sub_26B2BB848();
  swift_unknownObjectRetain();
  return sub_26B2BB888();
}

uint64_t static InspectorCollection.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = a2[1];
  v10 = *(*(a4 + 24) + 8);
  if ((sub_26B2BBC48() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a4 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return MEMORY[0x2821FB928](v7, v9, AssociatedTypeWitness, a3, AssociatedConformanceWitness, v10);
}

uint64_t InspectorCollection.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v13[1] = *(a2 + 16);
  v14 = v4;
  type metadata accessor for InspectorCollection.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_26B2BC0F8();
  v15 = *(v5 - 8);
  v6 = *(v15 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v13 - v8;
  v10 = *v2;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_26B2BC258();
  v17 = v10;
  sub_26B2BBC28();
  v16 = *(v14 + 16);
  swift_getWitnessTable();
  sub_26B2BC0B8();

  return (*(v15 + 8))(v9, v5);
}

uint64_t InspectorCollection.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(v7 + 24);
  sub_26B2BBC38();
  v9 = *(v7 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return MEMORY[0x2821FB920](a1, v5, AssociatedTypeWitness, v6, AssociatedConformanceWitness, v8);
}

uint64_t InspectorCollection.hashValue.getter(uint64_t a1)
{
  v5 = *v1;
  sub_26B2BC1E8();
  InspectorCollection.hash(into:)(v4, a1);
  return sub_26B2BC238();
}

uint64_t sub_26B2BAEDC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_26B2BB508();
  v5 = v4;
  v7 = *v1;
  v6 = v1[1];

  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t sub_26B2BAF3C()
{
  v1 = sub_26B2BB5F0();
  v3 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_26B2BAFB8(uint64_t a1, uint64_t a2)
{
  sub_26B2BC1E8();
  InspectorCollection.hash(into:)(v4, a2);
  return sub_26B2BC238();
}

unint64_t sub_26B2BB008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_26B2BB898();

  return sub_26B2BB064(a1, v9, a2, a3);
}

unint64_t sub_26B2BB064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a2);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_26B2BB938();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_26B2BB1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2, v11);
  v13 = v24 - v12;
  if (sub_26B2BBBD8())
  {
    sub_26B2BBF08();
    v14 = sub_26B2BBEF8();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  result = sub_26B2BBBD8();
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (sub_26B2BBBC8())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = sub_26B2BBE58();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_26B2BB008(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_26B2BB5A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}