uint64_t sub_265796FC8(uint64_t a1)
{
  v2 = sub_265797FB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265797004(uint64_t a1)
{
  v2 = sub_265797FB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Target.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021130, &qword_2657A0E00);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v24 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021138, &qword_2657A0E08);
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021140, &qword_2657A0E10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = *v1;
  v27 = v1[1];
  v28 = v15;
  v16 = *(v1 + 16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265797FB0();
  sub_26579EA04();
  if (v16)
  {
    v30 = 1;
    sub_265798004();
    v18 = v24;
    sub_26579E894();
    v19 = v26;
    sub_26579E8C4();
    (*(v25 + 8))(v18, v19);
  }

  else
  {
    v29 = 0;
    sub_265798058();
    sub_26579E894();
    v20 = v23;
    sub_26579E8C4();
    (*(v22 + 8))(v9, v20);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t Target.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021150, &qword_2657A0E18);
  v37 = *(v35 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021158, &qword_2657A0E20);
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021160, &qword_2657A0E28);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_265797FB0();
  v17 = v39;
  sub_26579E9F4();
  if (!v17)
  {
    v39 = v11;
    v18 = sub_26579E884();
    v19 = (2 * *(v18 + 16)) | 1;
    v41 = v18;
    v42 = v18 + 32;
    v43 = 0;
    v44 = v19;
    v20 = sub_26578CC28();
    v21 = v10;
    if (v20 == 2 || v43 != v44 >> 1)
    {
      v28 = sub_26579E764();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020FF0, &qword_2657A0190) + 48);
      *v30 = &type metadata for Target;
      sub_26579E804();
      sub_26579E754();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v39 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v20;
      if (v20)
      {
        v46 = 1;
        sub_265798004();
        sub_26579E7F4();
        v23 = v38;
        v22 = v39;
        v24 = v35;
        v25 = sub_26579E834();
        v27 = v26;
        (*(v37 + 8))(v5, v24);
      }

      else
      {
        v46 = 0;
        sub_265798058();
        v33 = v9;
        sub_26579E7F4();
        v23 = v38;
        v22 = v39;
        v25 = sub_26579E834();
        v27 = v34;
        (*(v36 + 8))(v33, v6);
      }

      (*(v22 + 8))(v14, v21);
      swift_unknownObjectRelease();
      *v23 = v25;
      *(v23 + 8) = v27;
      *(v23 + 16) = v45 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_265797850()
{
  v1 = v0;
  v2 = type metadata accessor for AssertionAttribute();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = 0;
  *(&v14 + 1) = 0xE000000000000000;
  sub_26579E734();
  v16 = v14;
  MEMORY[0x26675E9B0](0x696669746E656469, 0xEC000000203A7265);
  v6 = *(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier + 16);
  v14 = *(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier);
  v15 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280020DA8, "R-");
  v7 = sub_26579E4B4();
  MEMORY[0x26675E9B0](v7);

  MEMORY[0x26675E9B0](0x6E616C707865203BLL, 0xEF203A6E6F697461);
  MEMORY[0x26675E9B0](*(v1 + 40), *(v1 + 48));
  MEMORY[0x26675E9B0](0x3A6574617473203BLL, 0xE900000000000020);
  v8 = *(*(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);
  os_unfair_lock_lock(*(*(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16));
  v9 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state);
  v10 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8);
  os_unfair_lock_unlock(v8);
  *&v14 = v9;
  BYTE8(v14) = v10;
  v11 = sub_26579E4B4();
  MEMORY[0x26675E9B0](v11);

  MEMORY[0x26675E9B0](0x626972747461203BLL, 0xED0000203A657475);
  sub_265785D84(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_attribute, v5);
  v12 = sub_26579E4B4();
  MEMORY[0x26675E9B0](v12);

  return v16;
}

uint64_t AttributeAssertion.target.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_265790CE4();
}

uint64_t AttributeAssertion.explanation.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t AttributeAssertion.duration.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

void sub_265797AB0(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);
  os_unfair_lock_lock(v3);
  v4 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state);
  *(a1 + 8) = v4;

  os_unfair_lock_unlock(v3);
}

void sub_265797B20(void *a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);
  os_unfair_lock_lock(v3);
  *a1 = *(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_invalidationState);

  os_unfair_lock_unlock(v3);
}

uint64_t AttributeAssertion.init(explanation:target:attribute:duration:invalidationHandler:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v14 = *a3;
  v13 = a3[1];
  v15 = *(a3 + 16);
  sub_26579E354();
  v16 = v8 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = (v8 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock;
  type metadata accessor for UnfairLock();
  v19 = swift_allocObject();
  v20 = swift_slowAlloc();
  *(v19 + 16) = v20;
  *(v8 + v18) = v19;
  *v20 = 0;
  v21 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_manager;
  if (qword_280F958E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v8 + v21) = qword_280F958F0;
  *(v8 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_invalidationState) = 0;
  *(v8 + 16) = v14;
  *(v8 + 24) = v13;
  *(v8 + 32) = v15;
  sub_265785D84(a4, v8 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_attribute);
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6 & 1;
  v22 = (v8 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  v23 = *(v8 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
  v24 = *(v8 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler + 8);
  *v22 = a7;
  v22[1] = a8;

  sub_265785DF4(a7);
  sub_265786184(v23);
  v25 = v8 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state;
  *v25 = 0;
  *(v25 + 8) = 1;
  sub_265797F98();
  sub_265786184(a7);
  sub_265785E04(a4);
  return v8;
}

uint64_t AttributeAssertion.deinit()
{
  v1 = type metadata accessor for AssertionAttribute();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_attribute;
  sub_265785D84(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_attribute, v4);
  if (swift_getEnumCaseMultiPayload() == 1 || ((sub_265785E04(v4), v6 = *(*(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16), os_unfair_lock_lock(v6), v7 = *(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state), v8 = *(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8), os_unfair_lock_unlock(v6), v8 == 1) ? (v9 = v7 == 0) : (v9 = 1), v9))
  {
    v10 = *(v0 + 16);
    v11 = *(v0 + 24);
    v12 = *(v0 + 32);
    sub_265796744();
    v13 = *(v0 + 48);

    v14 = OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_acquisitionDate;
    v15 = sub_26579E364();
    (*(*(v15 - 8) + 8))(v0 + v14, v15);
    sub_265785E04(v0 + v5);
    v16 = *(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler + 8);
    sub_265786184(*(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler));
    v17 = *(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock);

    v18 = *(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_manager);

    v19 = *(v0 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_invalidationState);

    return v0;
  }

  else
  {
    result = sub_26579E794();
    __break(1u);
  }

  return result;
}

uint64_t AttributeAssertion.__deallocating_deinit()
{
  AttributeAssertion.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_265797FB0()
{
  result = qword_280F95BD0;
  if (!qword_280F95BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95BD0);
  }

  return result;
}

unint64_t sub_265798004()
{
  result = qword_280F95BA8;
  if (!qword_280F95BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95BA8);
  }

  return result;
}

unint64_t sub_265798058()
{
  result = qword_280021148;
  if (!qword_280021148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021148);
  }

  return result;
}

uint64_t sub_2657980AC(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = (result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state);
  if (*(result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8) == 1)
  {
    if (*v3)
    {
      return result;
    }

    v4 = *(result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_manager);

    sub_265790A88(v2);

    v13 = v3 + 1;
    *v3 = 1;
  }

  else
  {
    v5 = (result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
    v6 = *(result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
    v7 = *(v2 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler + 8);
    v8 = *a2;
    v9 = a2[1];
    *a2 = v6;
    a2[1] = v7;
    sub_265785DF4(v6);
    sub_265786184(v8);
    v10 = *v5;
    v11 = v5[1];
    *v5 = 0;
    v5[1] = 0;
    result = sub_265786184(v10);
    v12 = (v2 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier);
    v13 = (v2 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier + 16);
    *v12 = 0;
    v12[1] = 0;
  }

  *v13 = 1;
  return result;
}

void sub_2657981E0(void (*a1)(uint64_t, void *))
{
  v7[0] = 0;
  v7[1] = 0;
  v3 = *(*(v1 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_lock) + 16);
  os_unfair_lock_lock(v3);
  a1(v1, v7);
  os_unfair_lock_unlock(v3);
  v4 = v7[0];
  if (v7[0])
  {
    sub_26578B11C();
    v5 = swift_allocError();
    *v6 = 0;

    v4(v1, v5);

    sub_265786184(v4);

    sub_265786184(v4);
  }
}

uint64_t sub_2657982D0(uint64_t result, uint64_t *a2)
{
  v2 = result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state;
  if (*(result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8) == 1)
  {
    v3 = result;
    *v2 = 4;
    *(v2 + 8) = 0;
    v4 = result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier;
    if (*(result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier + 16))
    {
      __break(1u);
    }

    else
    {
      v6 = *(result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_manager);
      v7 = *(v4 + 8);
      v8 = HIDWORD(*v4);
      v16[0] = *v4;
      v16[1] = v8;
      v17 = v7;

      sub_265790DE4(v16);

      v9 = (v3 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
      v10 = *v9;
      v11 = v9[1];
      v12 = *a2;
      v13 = a2[1];
      *a2 = *v9;
      a2[1] = v11;
      sub_265785DF4(v10);
      sub_265786184(v12);
      v14 = *v9;
      v15 = v9[1];
      *v9 = 0;
      v9[1] = 0;
      result = sub_265786184(v14);
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 1;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2657983EC(uint64_t a1, unsigned int a2)
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

uint64_t sub_265798434(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for AttributeAssertion()
{
  result = qword_280F95B50;
  if (!qword_280F95B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265798524()
{
  result = sub_26579E364();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for AssertionAttribute();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AttributeAssertion.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AttributeAssertion.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_265798768(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265798784(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_2657987E8()
{
  result = qword_280021168;
  if (!qword_280021168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021168);
  }

  return result;
}

unint64_t sub_265798840()
{
  result = qword_280021170;
  if (!qword_280021170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021170);
  }

  return result;
}

unint64_t sub_265798898()
{
  result = qword_280021178;
  if (!qword_280021178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021178);
  }

  return result;
}

unint64_t sub_2657988F0()
{
  result = qword_280F95BB0;
  if (!qword_280F95BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95BB0);
  }

  return result;
}

unint64_t sub_265798948()
{
  result = qword_280F95BB8;
  if (!qword_280F95BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95BB8);
  }

  return result;
}

unint64_t sub_2657989A0()
{
  result = qword_280F95B98;
  if (!qword_280F95B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95B98);
  }

  return result;
}

unint64_t sub_2657989F8()
{
  result = qword_280F95BA0;
  if (!qword_280F95BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95BA0);
  }

  return result;
}

unint64_t sub_265798A50()
{
  result = qword_280F95BC0;
  if (!qword_280F95BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95BC0);
  }

  return result;
}

unint64_t sub_265798AA8()
{
  result = qword_280F95BC8;
  if (!qword_280F95BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95BC8);
  }

  return result;
}

uint64_t sub_265798AFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state;
  if (*(result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_state + 8) == 1)
  {
    v6 = result;
    *v4 = a2;
    *(v4 + 8) = 0;
    v7 = *(result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_invalidationState);
    *(result + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion__lock_invalidationState) = a3;

    v8 = v6 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier;
    if (*(v6 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_identifier + 16))
    {
      __break(1u);
    }

    else
    {
      v9 = *(v6 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_manager);
      v10 = *(v8 + 8);
      v11 = HIDWORD(*v8);
      v19[0] = *v8;
      v19[1] = v11;
      v20 = v10;

      sub_265790DE4(v19);

      v12 = (v6 + OBJC_IVAR____TtC16SessionAssertion18AttributeAssertion_invalidationHandler);
      v13 = *v12;
      v14 = v12[1];
      v15 = *a4;
      v16 = a4[1];
      *a4 = *v12;
      a4[1] = v14;
      sub_265785DF4(v13);
      sub_265786184(v15);
      v17 = *v12;
      v18 = v12[1];
      *v12 = 0;
      v12[1] = 0;
      result = sub_265786184(v17);
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 1;
    }
  }

  return result;
}

uint64_t sub_265798C14(uint64_t a1, uint64_t a2)
{
  v3 = sub_26579E2D4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_26579E2C4();
  v6 = sub_26579E344();
  v8 = v7;
  sub_265783A30();
  sub_26579E2B4();

  sub_26578422C(v6, v8);
  result = 1;
  *a2 = v10;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_265798CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = sub_26579E2D4();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_26579E2C4();
    v6 = sub_26579E344();
    v8 = v7;
    sub_265783A30();
    sub_26579E2B4();
    sub_26578422C(v6, v8);

    *a2 = v10;
    *(a2 + 4) = v11;
    *(a2 + 8) = v12;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

_DWORD *sub_265798DE4()
{
  type metadata accessor for UnfairLock();
  v0 = swift_allocObject();
  result = swift_slowAlloc();
  *(v0 + 16) = result;
  *result = 0;
  off_280F955D0 = v0;
  return result;
}

void static AssertionIdentifier.nextCount.getter()
{
  if (qword_280F955C8 != -1)
  {
    swift_once();
  }

  v0 = *(off_280F955D0 + 2);
  os_unfair_lock_lock(v0);
  if (__OFADD__(qword_280F955C0, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_280F955C0;
    os_unfair_lock_unlock(v0);
  }
}

uint64_t AssertionIdentifier.init(serverPid:clientPid:count:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 4) = a2;
  *(a4 + 8) = a3;
  return result;
}

uint64_t sub_265798F0C()
{
  v1 = 0x6950746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x746E756F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6950726576726573;
  }
}

uint64_t sub_265798F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26579AE78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_265798F98(uint64_t a1)
{
  v2 = sub_2657991C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265798FD4(uint64_t a1)
{
  v2 = sub_2657991C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssertionIdentifier.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021180, &qword_2657A1360);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v12[1] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657991C8();
  sub_26579EA04();
  v16 = 0;
  sub_26579E8F4();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  sub_26579E8F4();
  v14 = 2;
  sub_26579E904();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2657991C8()
{
  result = qword_280F95E38;
  if (!qword_280F95E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95E38);
  }

  return result;
}

uint64_t AssertionIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  sub_26579E9C4();
  sub_26579E9C4();
  return MEMORY[0x26675EEA0](v3);
}

uint64_t AssertionIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  sub_26579E9A4();
  sub_26579E9C4();
  sub_26579E9C4();
  MEMORY[0x26675EEA0](v3);
  return sub_26579E9E4();
}

uint64_t AssertionIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280021188, &qword_2657A1368);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657991C8();
  sub_26579E9F4();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_26579E864();
    v18 = 1;
    v16 = sub_26579E864();
    v17 = 2;
    v13 = sub_26579E874();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v11;
    *(a2 + 4) = v14;
    *(a2 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2657994C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  sub_26579E9A4();
  sub_26579E9C4();
  sub_26579E9C4();
  MEMORY[0x26675EEA0](v3);
  return sub_26579E9E4();
}

uint64_t sub_265799534()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  sub_26579E9C4();
  sub_26579E9C4();
  return MEMORY[0x26675EEA0](v3);
}

uint64_t sub_26579957C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  sub_26579E9A4();
  sub_26579E9C4();
  sub_26579E9C4();
  MEMORY[0x26675EEA0](v3);
  return sub_26579E9E4();
}

unsigned __int8 *AssertionIdentifier.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v42 = a2;
  sub_265799A28();
  v4 = sub_26579E6B4();

  if (v4[2] != 3)
  {
    goto LABEL_66;
  }

  v6 = v4[4];
  v7 = v4[5];
  v8 = HIBYTE(v7) & 0xF;
  v9 = v6 & 0xFFFFFFFFFFFFLL;
  if (!((v7 & 0x2000000000000000) != 0 ? HIBYTE(v7) & 0xF : v6 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_66;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    v38 = v4[5];

    v13 = sub_26579A080(v6, v7, 10);
    v40 = v39;

    if ((v40 & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_66:

LABEL_67:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    return result;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
    v41 = v4[4];
    v42 = v7 & 0xFFFFFFFFFFFFFFLL;
    if (v6 == 43)
    {
      if (v8)
      {
        v12 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          v23 = &v41 + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v12)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (v6 != 45)
      {
        if (!v8)
        {
          goto LABEL_62;
        }

        v13 = 0;
        v28 = &v41;
        do
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            goto LABEL_62;
          }

          v30 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            goto LABEL_62;
          }

          v13 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            goto LABEL_62;
          }

          ++v28;
          --v8;
        }

        while (v8);
        goto LABEL_61;
      }

      if (v8)
      {
        v12 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          v17 = &v41 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if ((v6 & 0x1000000000000000) == 0)
  {
    goto LABEL_78;
  }

  for (result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32); ; result = sub_26579E774())
  {
    v11 = *result;
    if (v11 == 43)
    {
      if (v9 < 1)
      {
        goto LABEL_82;
      }

      v12 = v9 - 1;
      if (v9 != 1)
      {
        v13 = 0;
        if (!result)
        {
          goto LABEL_61;
        }

        v20 = result + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v22 + v21;
          if (__OFADD__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v12)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v11 == 45)
    {
      if (v9 < 1)
      {
        goto LABEL_80;
      }

      v12 = v9 - 1;
      if (v9 != 1)
      {
        v13 = 0;
        if (!result)
        {
          goto LABEL_61;
        }

        v14 = result + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v12)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v9)
    {
      v13 = 0;
      if (!result)
      {
LABEL_61:
        LOBYTE(v12) = 0;
        goto LABEL_63;
      }

      while (1)
      {
        v26 = *result - 48;
        if (v26 > 9)
        {
          break;
        }

        v27 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          break;
        }

        ++result;
        if (!--v9)
        {
          goto LABEL_61;
        }
      }
    }

LABEL_62:
    v13 = 0;
    LOBYTE(v12) = 1;
LABEL_63:
    if (v12)
    {
      goto LABEL_66;
    }

LABEL_64:
    if (v4[2] >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_78:
    ;
  }

  v31 = v4[6];
  v32 = v4[7];

  result = sub_265799A7C(v31, v32);
  if (v33)
  {
    goto LABEL_66;
  }

  if (v4[2] < 3uLL)
  {
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v34 = result;
  v35 = v4[8];
  v36 = v4[9];

  result = sub_265799A7C(v35, v36);
  if (v37)
  {
    goto LABEL_67;
  }

  if (v13 < 0xFFFFFFFF80000000)
  {
    goto LABEL_84;
  }

  if (v13 > 0x7FFFFFFF)
  {
    goto LABEL_85;
  }

  if (v34 >= 0xFFFFFFFF80000000)
  {
    if (v34 > 0x7FFFFFFF)
    {
      goto LABEL_87;
    }

    *a3 = v13 | (v34 << 32);
    *(a3 + 8) = result;
    *(a3 + 16) = 0;
    return result;
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

unint64_t sub_265799A28()
{
  result = qword_280021190;
  if (!qword_280021190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021190);
  }

  return result;
}

uint64_t sub_265799A7C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_26579E774();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_26579A080(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t AssertionIdentifier.description.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 1);
  v6 = *v0;
  v7 = sub_26579E914();
  MEMORY[0x26675E9B0](58, 0xE100000000000000);
  v3 = sub_26579E914();
  MEMORY[0x26675E9B0](v3);

  MEMORY[0x26675E9B0](58, 0xE100000000000000);
  v4 = sub_26579E914();
  MEMORY[0x26675E9B0](v4);

  return v7;
}

uint64_t sub_265799E64()
{
  v9 = *v0;
  v10 = v0[1];
  v1 = sub_26579E304();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_26579E2F4();
  sub_2657836F0();
  v4 = sub_26579E2E4();
  v6 = v5;
  v7 = sub_26579E334();
  sub_26578422C(v4, v6);

  return v7;
}

double sub_265799F28(uint64_t a1, uint64_t a2)
{
  v3 = sub_26579E2D4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_26579E2C4();
  v6 = sub_26579E344();
  v8 = v7;
  sub_265783A30();
  sub_26579E2B4();
  sub_26578422C(v6, v8);

  result = *&v10;
  *a2 = v10;
  *(a2 + 16) = 0;
  return result;
}

void *sub_26579A00C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280020F00, &qword_2657A0128);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_26579A080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_26579E544();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26579AA04();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26579E774();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_26579A610()
{
  result = qword_280F95E20;
  if (!qword_280F95E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95E20);
  }

  return result;
}

unint64_t sub_26579A668()
{
  result = qword_280021198;
  if (!qword_280021198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280021198);
  }

  return result;
}

unint64_t sub_26579A6BC(void *a1)
{
  a1[1] = sub_265783A30();
  a1[2] = sub_2657836F0();
  result = sub_26579A6F4();
  a1[3] = result;
  return result;
}

unint64_t sub_26579A6F4()
{
  result = qword_280F95518;
  if (!qword_280F95518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95518);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AssertionIdentifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AssertionIdentifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AssertionIdentifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssertionIdentifier.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26579A900()
{
  result = qword_2800211A0;
  if (!qword_2800211A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800211A0);
  }

  return result;
}

unint64_t sub_26579A958()
{
  result = qword_280F95E28;
  if (!qword_280F95E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95E28);
  }

  return result;
}

unint64_t sub_26579A9B0()
{
  result = qword_280F95E30;
  if (!qword_280F95E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95E30);
  }

  return result;
}

uint64_t sub_26579AA04()
{
  v0 = sub_26579E554();
  v4 = sub_26579AA84(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_26579AA84(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_26579E4D4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_26579E6A4();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_26579A00C(v9, 0);
  v12 = sub_26579ABDC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_26579E4D4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_26579E774();
LABEL_4:

  return sub_26579E4D4();
}

unint64_t sub_26579ABDC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_26579ADFC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26579E524();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_26579E774();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_26579ADFC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_26579E504();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_26579ADFC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26579E534();
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
    v5 = MEMORY[0x26675E9E0](15, a1 >> 16);
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

uint64_t sub_26579AE78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6950726576726573 && a2 == 0xE900000000000064;
  if (v4 || (sub_26579E924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6950746E65696C63 && a2 == 0xE900000000000064 || (sub_26579E924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26579E924();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static AssertionInvalidationMessage._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = sub_26579E274();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_26579E264();
    v6 = sub_26579E344();
    v8 = v7;
    sub_26578A710();
    sub_26579E254();
    sub_26578422C(v6, v8);

    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 24) = v12;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

double AssertionInvalidationMessage.init(identifier:reason:invalidationState:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *a3;
  result = *a1;
  *a4 = *a1;
  a4[1] = v4;
  a4[2] = a2;
  a4[3] = v5;
  return result;
}

uint64_t AssertionInvalidationReason.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      return 0xD000000000000012;
    }

    if (a1 == 6)
    {
      return 0x6765726F46707061;
    }

    if (a1 == 7)
    {
      return 0x6F69747265737361;
    }

    goto LABEL_17;
  }

  result = 0x7974697669746361;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return result;
    }

    if (a1 == 3)
    {
      return 0x64657269707865;
    }

LABEL_17:
    result = sub_26579E934();
    __break(1u);
    return result;
  }

  if (a1 && a1 != 1)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_26579B240()
{
  v1 = *v0;
  sub_26579E9A4();
  MEMORY[0x26675EE80](v1);
  return sub_26579E9E4();
}

uint64_t sub_26579B2B4()
{
  v1 = *v0;
  sub_26579E9A4();
  MEMORY[0x26675EE80](v1);
  return sub_26579E9E4();
}

unint64_t sub_26579B2F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26579BD08(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

double AssertionInvalidationMessage.identifier.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  result = *v1;
  *a1 = *v1;
  a1[1] = v2;
  return result;
}

uint64_t sub_26579B418()
{
  v1 = 0x6E6F73616572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_26579B478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26579BF10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26579B4A0(uint64_t a1)
{
  v2 = sub_26579BD18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26579B4DC(uint64_t a1)
{
  v2 = sub_26579BD18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssertionInvalidationMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211A8, &qword_2657A1660);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v11 = v3[1];
  v10 = v3[2];
  v15 = v3[3];
  v16 = v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26579BD18();
  sub_26579EA04();
  v17 = *v3;
  v18 = v11;
  v19 = 0;
  sub_2657836F0();
  sub_26579E8E4();
  if (!v2)
  {
    v13 = v15;
    v17 = v16;
    v19 = 1;
    sub_26579BD6C();
    sub_26579E8E4();
    v17 = v13;
    v19 = 2;
    sub_26579BDC0();

    sub_26579E8B4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AssertionInvalidationMessage.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211B0, &qword_2657A1668);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26579BD18();
  sub_26579E9F4();
  if (!v2)
  {
    v17 = 0;
    sub_265783A30();
    sub_26579E854();
    v11 = v18;
    v12 = v19;
    v17 = 1;
    sub_26579BE14();
    sub_26579E854();
    v14 = v18;
    v17 = 2;
    sub_26579BE68();
    sub_26579E824();
    (*(v6 + 8))(v9, v5);
    v15 = v18;
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v14;
    a2[3] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

NSData __swiftcall AssertionInvalidationMessage._bridgeToObjectiveC()()
{
  v10 = *(v0 + 1);
  v1 = v0[3];
  v2 = sub_26579E2A4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_26579E294();
  v11 = *v0;
  sub_26579BEBC();
  v5 = sub_26579E284();
  v7 = v6;
  v8 = sub_26579E334();
  sub_26578422C(v5, v7);

  return v8;
}

uint64_t sub_26579BA4C()
{
  v10 = *(v0 + 1);
  v1 = v0[3];
  v2 = sub_26579E2A4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_26579E294();
  v11 = *v0;
  sub_26579BEBC();
  v5 = sub_26579E284();
  v7 = v6;
  v8 = sub_26579E334();
  sub_26578422C(v5, v7);

  return v8;
}

uint64_t sub_26579BB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = sub_26579E274();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_26579E264();
    v6 = sub_26579E344();
    v8 = v7;
    sub_26578A710();
    sub_26579E254();
    sub_26578422C(v6, v8);

    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 24) = v12;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

double _s16SessionAssertion0B19InvalidationMessageV26_forceBridgeFromObjectiveC_6resultySo6NSDataC_ACSgztFZ_0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26579E274();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_26579E264();
  v6 = sub_26579E344();
  v8 = v7;
  sub_26578A710();
  sub_26579E254();
  sub_26579C3D0(*a2, a2[1], a2[2], a2[3]);
  sub_26578422C(v6, v8);

  result = *&v10;
  *a2 = v10;
  *(a2 + 1) = v11;
  return result;
}

unint64_t sub_26579BD08(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

unint64_t sub_26579BD18()
{
  result = qword_280F95D60;
  if (!qword_280F95D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95D60);
  }

  return result;
}

unint64_t sub_26579BD6C()
{
  result = qword_280F95628;
  if (!qword_280F95628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95628);
  }

  return result;
}

unint64_t sub_26579BDC0()
{
  result = qword_280F95630;
  if (!qword_280F95630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95630);
  }

  return result;
}

unint64_t sub_26579BE14()
{
  result = qword_280F95B80;
  if (!qword_280F95B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95B80);
  }

  return result;
}

unint64_t sub_26579BE68()
{
  result = qword_280F95B88;
  if (!qword_280F95B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95B88);
  }

  return result;
}

unint64_t sub_26579BEBC()
{
  result = qword_280F95620;
  if (!qword_280F95620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95620);
  }

  return result;
}

uint64_t sub_26579BF10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_26579E924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (sub_26579E924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002657A27F0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_26579E924();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

BOOL _s16SessionAssertion0B19InvalidationMessageV34_conditionallyBridgeFromObjectiveC_6resultSbSo6NSDataC_ACSgztFZ_0(uint64_t a1, uint64_t *a2)
{
  sub_26579C3D0(*a2, a2[1], a2[2], a2[3]);
  v3 = sub_26579E274();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_26579E264();
  v6 = sub_26579E344();
  v8 = v7;
  sub_26578A710();
  sub_26579E254();

  sub_26578422C(v6, v8);
  *a2 = v10;
  a2[2] = v11;
  a2[3] = v12;
  return v12 != 1;
}

unint64_t sub_26579C134()
{
  result = qword_2800211B8;
  if (!qword_2800211B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800211B8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26579C1A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26579C200(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_26579C278()
{
  result = qword_2800211C0;
  if (!qword_2800211C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800211C0);
  }

  return result;
}

unint64_t sub_26579C2D0()
{
  result = qword_280F95D50;
  if (!qword_280F95D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95D50);
  }

  return result;
}

unint64_t sub_26579C328()
{
  result = qword_280F95D58;
  if (!qword_280F95D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95D58);
  }

  return result;
}

unint64_t sub_26579C37C()
{
  result = qword_280F95D68;
  if (!qword_280F95D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95D68);
  }

  return result;
}

uint64_t sub_26579C3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

NSData __swiftcall AssertionAcquisitionRequest._bridgeToObjectiveC()()
{
  v0 = sub_26579E2A4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_26579E294();
  type metadata accessor for AssertionAcquisitionRequest();
  sub_26579D51C(&qword_280F957D0, type metadata accessor for AssertionAcquisitionRequest);
  v3 = sub_26579E284();
  v5 = v4;
  v6 = sub_26579E334();
  sub_26578422C(v3, v5);

  return v6;
}

uint64_t type metadata accessor for AssertionAcquisitionRequest()
{
  result = qword_280F95DC8;
  if (!qword_280F95DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssertionAcquisitionRequest.init(attribute:explanation:acquisitionDate:target:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v15 = *a5;
  v16 = a5[1];
  v17 = *(a5 + 16);
  v18 = sub_26579E364();
  (*(*(v18 - 8) + 32))(a8, a4, v18);
  v19 = type metadata accessor for AssertionAcquisitionRequest();
  result = sub_26579DFA8(a1, a8 + v19[5], type metadata accessor for AssertionAttribute);
  v21 = (a8 + v19[6]);
  *v21 = a2;
  v21[1] = a3;
  v22 = a8 + v19[8];
  *v22 = a6;
  *(v22 + 8) = a7 & 1;
  v23 = a8 + v19[7];
  *v23 = v15;
  *(v23 + 8) = v16;
  *(v23 + 16) = v17;
  return result;
}

uint64_t AssertionAcquisitionRequest.acquisitionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26579E364();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AssertionAcquisitionRequest.explanation.getter()
{
  v1 = (v0 + *(type metadata accessor for AssertionAcquisitionRequest() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AssertionAcquisitionRequest.target.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AssertionAcquisitionRequest() + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;

  return sub_265790CE4();
}

uint64_t AssertionAcquisitionRequest.duration.getter()
{
  v1 = (v0 + *(type metadata accessor for AssertionAcquisitionRequest() + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_26579C78C()
{
  v1 = *v0;
  v2 = 0x7469736975716361;
  v3 = 0x74616E616C707865;
  v4 = 0x746567726174;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461727564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7475626972747461;
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

uint64_t sub_26579C83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26579DB74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26579C864(uint64_t a1)
{
  v2 = sub_26579CBA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26579C8A0(uint64_t a1)
{
  v2 = sub_26579CBA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssertionAcquisitionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211C8, &qword_2657A19C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26579CBA4();
  sub_26579EA04();
  LOBYTE(v24) = 0;
  sub_26579E364();
  sub_26579D51C(&qword_280F95B60, MEMORY[0x277CC9578]);
  sub_26579E8E4();
  if (!v2)
  {
    v11 = type metadata accessor for AssertionAcquisitionRequest();
    v12 = v11[5];
    LOBYTE(v24) = 1;
    type metadata accessor for AssertionAttribute();
    sub_26579D51C(&qword_280F95718, type metadata accessor for AssertionAttribute);
    sub_26579E8E4();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v24) = 2;
    sub_26579E8C4();
    v16 = (v3 + v11[7]);
    v17 = v16[1];
    v18 = *(v16 + 16);
    v24 = *v16;
    v25 = v17;
    v26 = v18;
    v23[7] = 3;
    sub_265790CE4();
    sub_26579CBF8();
    sub_26579E8E4();
    sub_265796744();
    v19 = (v3 + v11[8]);
    v20 = *v19;
    v21 = *(v19 + 8);
    LOBYTE(v24) = 4;
    sub_26579E8A4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26579CBA4()
{
  result = qword_280F95DE8;
  if (!qword_280F95DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95DE8);
  }

  return result;
}

unint64_t sub_26579CBF8()
{
  result = qword_280F956E8[0];
  if (!qword_280F956E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F956E8);
  }

  return result;
}

uint64_t AssertionAcquisitionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v40 = type metadata accessor for AssertionAttribute();
  v3 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26579E364();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211D0, &qword_2657A19C8);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  v13 = type metadata accessor for AssertionAcquisitionRequest();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26579CBA4();
  v44 = v12;
  v18 = v45;
  sub_26579E9F4();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v13;
  v45 = a1;
  v19 = v39;
  v20 = v16;
  LOBYTE(v46) = 0;
  sub_26579D51C(&qword_280F955E0, MEMORY[0x277CC9578]);
  v21 = v41;
  sub_26579E854();
  v22 = *(v19 + 32);
  v41 = v6;
  v22(v20, v21, v6);
  LOBYTE(v46) = 1;
  sub_26579D51C(qword_280F95548, type metadata accessor for AssertionAttribute);
  v23 = v5;
  sub_26579E854();
  v24 = v37;
  sub_26579DFA8(v23, v20 + v37[5], type metadata accessor for AssertionAttribute);
  LOBYTE(v46) = 2;
  v25 = sub_26579E834();
  v26 = (v20 + v24[6]);
  *v26 = v25;
  v26[1] = v27;
  v48 = 3;
  sub_26579D220();
  sub_26579E854();
  v28 = v47;
  v29 = v20 + v24[7];
  *v29 = v46;
  *(v29 + 16) = v28;
  LOBYTE(v46) = 4;
  v30 = v43;
  v31 = sub_26579E814();
  LODWORD(v40) = v32;
  v33 = v31;
  (*(v42 + 8))(v44, v30);
  v34 = v20 + v24[8];
  *v34 = v33;
  *(v34 + 8) = v40 & 1;
  sub_26579D274(v20, v38, type metadata accessor for AssertionAcquisitionRequest);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_26579D2DC(v20, type metadata accessor for AssertionAcquisitionRequest);
}

unint64_t sub_26579D220()
{
  result = qword_280F95540;
  if (!qword_280F95540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95540);
  }

  return result;
}

uint64_t sub_26579D274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26579D2DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static AssertionAcquisitionRequest._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211D8, &qword_2657A19D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = sub_26579E274();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_26579E264();
  v10 = type metadata accessor for AssertionAcquisitionRequest();
  v11 = sub_26579E344();
  v13 = v12;
  sub_26579D51C(&qword_280F95588, type metadata accessor for AssertionAcquisitionRequest);
  sub_26579E254();
  sub_26579D564(a2);
  sub_26578422C(v11, v13);

  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  return sub_26579D5CC(v6, a2);
}

uint64_t sub_26579D51C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26579D564(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211D8, &qword_2657A19D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26579D5CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211D8, &qword_2657A19D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AssertionAcquisitionRequest._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211D8, &qword_2657A19D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = type metadata accessor for AssertionAcquisitionRequest();
  v16 = *(v15 - 8);
  v24 = *(v16 + 56);
  v24(v14, 1, 1, v15);
  if (a1)
  {
    v17 = sub_26579E274();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_26579E264();
    v3 = sub_26579E344();
    v2 = v20;
    sub_26579D51C(&qword_280F95588, type metadata accessor for AssertionAcquisitionRequest);
    sub_26579E254();
    sub_26579D564(v14);
    sub_26578422C(v3, v2);

    v24(v12, 0, 1, v15);
    sub_26579D5CC(v12, v14);
    sub_26579DF38(v14, v9);
    if ((*(v16 + 48))(v9, 1, v15) != 1)
    {
      sub_26579D564(v14);
      return sub_26579DFA8(v9, v23, type metadata accessor for AssertionAcquisitionRequest);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_26578422C(v3, v2);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_26579D8D8()
{
  v0 = sub_26579E2A4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_26579E294();
  sub_26579D51C(&qword_280F957D0, type metadata accessor for AssertionAcquisitionRequest);
  v3 = sub_26579E284();
  v5 = v4;
  v6 = sub_26579E334();
  sub_26578422C(v3, v5);

  return v6;
}

uint64_t sub_26579D9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211D8, &qword_2657A19D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_26579E274();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_26579E264();
  v12 = sub_26579E344();
  v14 = v13;
  sub_26579D51C(&qword_280F95588, type metadata accessor for AssertionAcquisitionRequest);
  sub_26579E254();
  sub_26579D564(a2);
  sub_26578422C(v12, v14);

  (*(*(a3 - 8) + 56))(v8, 0, 1, a3);
  return sub_26579D5CC(v8, a2);
}

uint64_t sub_26579DB74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469736975716361 && a2 == 0xEF657461446E6F69;
  if (v4 || (sub_26579E924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065 || (sub_26579E924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616E616C707865 && a2 == 0xEB000000006E6F69 || (sub_26579E924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000 || (sub_26579E924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_26579E924();

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

BOOL _s16SessionAssertion0B18AcquisitionRequestV34_conditionallyBridgeFromObjectiveC_6resultSbSo6NSDataC_ACSgztFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211D8, &qword_2657A19D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  sub_26579D564(a2);
  v10 = sub_26579E274();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_26579E264();
  v13 = type metadata accessor for AssertionAcquisitionRequest();
  v14 = sub_26579E344();
  v16 = v15;
  sub_26579D51C(&qword_280F95588, type metadata accessor for AssertionAcquisitionRequest);
  sub_26579E254();

  sub_26578422C(v14, v16);
  v17 = *(v13 - 8);
  (*(v17 + 56))(v9, 0, 1, v13);
  sub_26579D5CC(v9, a2);
  sub_26579DF38(a2, v7);
  v18 = (*(v17 + 48))(v7, 1, v13) != 1;
  sub_26579D564(v7);
  return v18;
}

uint64_t sub_26579DF38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800211D8, &qword_2657A19D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26579DFA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_26579E038()
{
  sub_26579E364();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AssertionAttribute();
    if (v1 <= 0x3F)
    {
      sub_26579E0EC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26579E0EC()
{
  if (!qword_280F95690)
  {
    v0 = sub_26579E694();
    if (!v1)
    {
      atomic_store(v0, &qword_280F95690);
    }
  }
}

unint64_t sub_26579E150()
{
  result = qword_2800211E0;
  if (!qword_2800211E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800211E0);
  }

  return result;
}

unint64_t sub_26579E1A8()
{
  result = qword_280F95DD8;
  if (!qword_280F95DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95DD8);
  }

  return result;
}

unint64_t sub_26579E200()
{
  result = qword_280F95DE0;
  if (!qword_280F95DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F95DE0);
  }

  return result;
}