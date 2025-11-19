unint64_t sub_21C8AE67C()
{
  result = qword_27CDEF548;
  if (!qword_27CDEF548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF548);
  }

  return result;
}

unint64_t sub_21C8AE6D0()
{
  result = qword_27CDEF558;
  if (!qword_27CDEF558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF4F0, &qword_21CBAC458);
    sub_21C8AE788();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF558);
  }

  return result;
}

unint64_t sub_21C8AE788()
{
  result = qword_27CDEF560;
  if (!qword_27CDEF560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF550, &qword_21CBAC490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF4F8, &qword_21CBAC460);
    sub_21C8AE57C();
    sub_21C8AE67C();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF560);
  }

  return result;
}

uint64_t sub_21C8AE898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C8AE8FC(uint64_t a1)
{
  v3 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_21C8A5124(a1, v4);
}

uint64_t sub_21C8AE96C()
{
  v2 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21C702EFC;

  return sub_21C8A5660(v4, v5, v0 + v3);
}

uint64_t sub_21C8AEA48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C8AEAB0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_21CB81A44();
  return sub_21CB85DD4() & 1;
}

unint64_t sub_21C8AEB10()
{
  result = qword_27CDEF5D0;
  if (!qword_27CDEF5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF5B8, &qword_21CBAC538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA548, qword_21CBAC540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDED260, &qword_21CBA1C60);
    sub_21C6EADEC(&qword_27CDEF5D8, &qword_27CDEA548, qword_21CBAC540);
    sub_21C8AEF68(&qword_27CDEF5C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF5D0);
  }

  return result;
}

uint64_t objectdestroy_36Tm()
{
  v1 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA518, &unk_21CBAC380);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7) && swift_getEnumCaseMultiPayload() <= 1)
  {
    v8 = sub_21CB80A84();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  v9 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF380, &qword_21CBAC140) + 28));

  v10 = v5 + v1[7];
  v11 = *(v10 + 16);
  if (v11 != 255)
  {
    sub_21C8ADF28(*v10, *(v10 + 8), v11);
  }

  v12 = *(v10 + 24);

  v13 = v5 + v1[8];
  v14 = *(v13 + 8);
  if (v14 != 255)
  {
    sub_21C8ADF00(*v13, v14);
  }

  v15 = *(v13 + 16);

  v16 = v5 + v1[9];
  v17 = *(v16 + 8);

  v18 = *(v16 + 16);

  v19 = v5 + v1[10];
  v20 = sub_21CB81B84();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v19, 1, v20))
  {
    (*(v21 + 8))(v19, v20);
  }

  v22 = *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF388, &qword_21CBAC148) + 28));

  v23 = *(v5 + v1[11] + 8);

  v24 = *(v5 + v1[12] + 8);

  v25 = *(v5 + v1[13] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C8AEF08()
{
  v1 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_21C8AC1C8(v2);
}

uint64_t sub_21C8AEF68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDED260, &qword_21CBA1C60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21C8AEFD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C8ABECC(a1, v6, a2);
}

uint64_t sub_21C8AF054@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_21C8AC060(*(v1 + 16), a1);
}

uint64_t sub_21C8AF060@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_21C8AC0E8(v1[4], a1);
}

unint64_t sub_21C8AF06C()
{
  result = qword_27CDEF608;
  if (!qword_27CDEF608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF600, &qword_21CBAC580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF608);
  }

  return result;
}

uint64_t sub_21C8AF0E8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21C8A7FA0(a1, a2, v6);
}

unint64_t sub_21C8AF168()
{
  result = qword_27CDEF620;
  if (!qword_27CDEF620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF610, &qword_21CBAC588);
    sub_21C8AF1EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF620);
  }

  return result;
}

unint64_t sub_21C8AF1EC()
{
  result = qword_27CDEF628;
  if (!qword_27CDEF628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF630, &qword_21CBAC598);
    sub_21C8AF278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF628);
  }

  return result;
}

unint64_t sub_21C8AF278()
{
  result = qword_27CDEF638;
  if (!qword_27CDEF638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF640, &qword_21CBAC5A0);
    sub_21C6EADEC(&qword_27CDEF648, &qword_27CDEF650, &qword_21CBAC5A8);
    sub_21C6EADEC(&qword_27CDEF658, &qword_27CDEF660, &qword_21CBAC5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF638);
  }

  return result;
}

unint64_t sub_21C8AF358()
{
  result = qword_27CDEF668;
  if (!qword_27CDEF668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF3B0, &qword_21CBAC180);
    sub_21C6EADEC(&qword_27CDEF670, &qword_27CDEF678, &qword_21CBAC5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF668);
  }

  return result;
}

uint64_t sub_21C8AF408(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21C8A85EC(a1, a2, v6);
}

unint64_t sub_21C8AF488()
{
  result = qword_27CDEF680;
  if (!qword_27CDEF680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF3C0, &unk_21CBAC188);
    sub_21C6EADEC(&qword_27CDEF688, &qword_27CDEF690, &qword_21CBAC5C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF680);
  }

  return result;
}

unint64_t sub_21C8AF540()
{
  result = qword_27CDEF6B0;
  if (!qword_27CDEF6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF3B0, &qword_21CBAC180);
    sub_21C6EADEC(&qword_27CDEF6B8, &qword_27CDEF678, &qword_21CBAC5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF6B0);
  }

  return result;
}

unint64_t sub_21C8AF608()
{
  result = qword_27CDEF788;
  if (!qword_27CDEF788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF3C0, &unk_21CBAC188);
    sub_21C6EADEC(&qword_27CDEF790, &qword_27CDEF690, &qword_21CBAC5C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF788);
  }

  return result;
}

unint64_t sub_21C8AF6E4()
{
  result = qword_27CDEF838;
  if (!qword_27CDEF838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA500, &qword_21CB9E610);
    sub_21C6EADEC(&qword_27CDEF840, &qword_27CDEA518, &unk_21CBAC380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF838);
  }

  return result;
}

unint64_t sub_21C8AF794()
{
  result = qword_27CDEF848;
  if (!qword_27CDEF848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF830, &qword_21CBAC738);
    sub_21C6EADEC(&qword_27CDEF850, &qword_27CDEF858, &qword_21CBAC740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF848);
  }

  return result;
}

void sub_21C8AF850(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PMPasskeyAccountRegistrationContentView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_21C8A6A20(a1, a2, v6);
}

unint64_t sub_21C8AF8D0()
{
  result = qword_27CDEF868;
  if (!qword_27CDEF868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA500, &qword_21CB9E610);
    sub_21C6EADEC(&qword_27CDEF870, &qword_27CDEA518, &unk_21CBAC380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF868);
  }

  return result;
}

uint64_t sub_21C8AF988(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C8AF9D0()
{
  result = sub_21CB80A84();
  if (v1 <= 0x3F)
  {
    result = sub_21CB81A44();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21C8AFA4C()
{
  result = qword_27CDEF8D8;
  if (!qword_27CDEF8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA5A0, &qword_21CB9E6A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF4F0, &qword_21CBAC458);
    sub_21C8AE6D0();
    swift_getOpaqueTypeConformance2();
    sub_21C8AFB14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF8D8);
  }

  return result;
}

unint64_t sub_21C8AFB14()
{
  result = qword_27CDEF8E0;
  if (!qword_27CDEF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF8E0);
  }

  return result;
}

uint64_t sub_21C8AFB88()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C8B038C();
  sub_21CB810D4();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_21C8AFC08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C8B038C();
  sub_21CB810D4();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_21C8AFC84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C8AFCC4(v2, v3);
}

uint64_t sub_21C8AFCC4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (v6 = *(v2 + 24), (sub_21CB86344() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C8B038C();
    sub_21CB810C4();
  }
}

uint64_t sub_21C8AFDF4()
{
  swift_getKeyPath();
  sub_21C8B038C();
  sub_21CB810D4();

  return *(v0 + 32);
}

uint64_t sub_21C8AFE64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C8B038C();
  sub_21CB810D4();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_21C8AFF04(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C8B038C();
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C8AFFEC()
{
  swift_getKeyPath();
  sub_21C8B038C();
  sub_21CB810D4();

  return *(v0 + 33);
}

uint64_t sub_21C8B005C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C8B038C();
  sub_21CB810D4();

  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_21C8B00FC(uint64_t result)
{
  if (*(v1 + 33) == (result & 1))
  {
    *(v1 + 33) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C8B038C();
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C8B01DC()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC17PasswordManagerUI19PMGlobalSearchModel___observationRegistrar;
  v3 = sub_21CB81114();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PMGlobalSearchModel()
{
  result = qword_27CDEF8F0;
  if (!qword_27CDEF8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C8B02D4()
{
  result = sub_21CB81114();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_21C8B038C()
{
  result = qword_27CDEEE18;
  if (!qword_27CDEEE18)
  {
    type metadata accessor for PMGlobalSearchModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEEE18);
  }

  return result;
}

uint64_t sub_21C8B03F4()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 24);
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

void sub_21C8B0434(void *a1)
{
  sub_21C72E3E0(319, &qword_27CDEE4A0, MEMORY[0x277CE11F8]);
  if (v2 <= 0x3F)
  {
    sub_21C72E3E0(319, &qword_27CDEB308, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v4 = a1[3];
      v5 = a1[5];
      sub_21CB81F84();
      if (v6 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v7 <= 0x3F)
        {
          v8 = a1[2];
          swift_checkMetadataState();
          if (v9 <= 0x3F)
          {
            sub_21C72C81C();
            if (v10 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21C8B057C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v34 = *(a3 + 16);
  v35 = *(a3 + 24);
  v5 = *(v35 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = sub_21CB82834();
  v13 = *(v5 + 80);
  v14 = *(v5 + 64);
  v15 = *(v9 + 80);
  if (*(*(v12 - 8) + 64) <= 8uLL)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(*(v12 - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v13 | 7;
  v18 = ((v13 + 16) & ~v13) + v14 + v13;
  v19 = v14 + v15;
  if (a2 <= v11)
  {
    goto LABEL_35;
  }

  v20 = *(*(v12 - 8) + 80) & 0xF8 | 7;
  v21 = v16 + ((*(v9 + 64) + v20 + ((v19 + ((v18 + ((v17 + 81) & ~v17)) & ~v13)) & ~v15)) & ~v20) + 1;
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v25 = ((a2 - v11 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v25 < 2)
    {
LABEL_35:
      if (v11 == 0x7FFFFFFF)
      {
        v27 = *(a1 + 1);
        if (v27 >= 0xFFFFFFFF)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }

      v28 = ~v13;
      v29 = (((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v17 + 17) & ~v17;
      if (v11 == v7)
      {
        v30 = *(v5 + 48);
        v31 = (v13 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v28;
      }

      else
      {
        v31 = (v18 + v29) & v28;
        if (v6 != v11)
        {
          v30 = *(v9 + 48);
          v31 = (v19 + v31) & ~v15;
          v32 = v10;
          v33 = v34;

          return v30(v31, v32, v33);
        }

        v30 = *(v5 + 48);
      }

      v32 = v6;
      v33 = v35;

      return v30(v31, v32, v33);
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_35;
  }

LABEL_24:
  v26 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v26 = 0;
  }

  if (v21)
  {
    if (v21 > 3)
    {
      LODWORD(v21) = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        LODWORD(v21) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v21) = *a1;
      }
    }

    else if (v21 == 1)
    {
      LODWORD(v21) = *a1;
    }

    else
    {
      LODWORD(v21) = *a1;
    }
  }

  return v11 + (v21 | v26) + 1;
}

void sub_21C8B0914(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v35 = *(a4 + 16);
  v36 = *(a4 + 24);
  v7 = *(v36 - 8);
  v38 = v7;
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v37 = v9;
  if (v8 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(sub_21CB82834() - 8);
  if (*(v14 + 64) <= 8uLL)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(v14 + 64);
  }

  v16 = *(v7 + 80);
  v17 = *(v7 + 64);
  v18 = ((v16 + 16) & ~v16) + v17 + v16;
  v19 = *(v11 + 80);
  v20 = *(v14 + 80) & 0xF8 | 7;
  v21 = v15 + ((*(v11 + 64) + v20 + ((v17 + v19 + ((v18 + (((v16 | 7) + 81) & ~(v16 | 7))) & ~v16)) & ~v19)) & ~v20) + 1;
  if (a3 <= v13)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v13 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v13 >= a2)
  {
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_40;
      }

      *&a1[v21] = 0;
    }

    else if (v22)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    if (!a2)
    {
      return;
    }

LABEL_40:
    if (v13 == 0x7FFFFFFF)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        *(a1 + 1) = 0;
      }

      else
      {
        *(a1 + 1) = (a2 - 1);
      }

      return;
    }

    v28 = ~v16;
    v29 = (((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + (v16 | 7) + 17) & ~(v16 | 7);
    if (v13 == v37)
    {
      v30 = *(v38 + 56);
      v31 = (v16 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v28;
    }

    else
    {
      v31 = (v18 + v29) & v28;
      if (v8 != v13)
      {
        v30 = *(v11 + 56);
        v31 = (v17 + v19 + v31) & ~v19;
        v32 = a2;
        v33 = v12;
        v34 = v35;

        goto LABEL_65;
      }

      v30 = *(v38 + 56);
    }

    v32 = a2;
    v33 = v8;
    v34 = v36;

LABEL_65:
    v30(v31, v32, v33, v34);
    return;
  }

  v23 = ~v13 + a2;
  if (v21 < 4)
  {
    v24 = (v23 >> (8 * v21)) + 1;
    if (v21)
    {
      v27 = v23 & ~(-1 << (8 * v21));
      bzero(a1, v21);
      if (v21 != 3)
      {
        if (v21 == 2)
        {
          *a1 = v27;
          if (v22 > 1)
          {
LABEL_59:
            if (v22 == 2)
            {
              *&a1[v21] = v24;
            }

            else
            {
              *&a1[v21] = v24;
            }

            return;
          }
        }

        else
        {
          *a1 = v23;
          if (v22 > 1)
          {
            goto LABEL_59;
          }
        }

        goto LABEL_56;
      }

      *a1 = v27;
      a1[2] = BYTE2(v27);
    }

    if (v22 > 1)
    {
      goto LABEL_59;
    }
  }

  else
  {
    bzero(a1, v21);
    *a1 = v23;
    v24 = 1;
    if (v22 > 1)
    {
      goto LABEL_59;
    }
  }

LABEL_56:
  if (v22)
  {
    a1[v21] = v24;
  }
}

uint64_t sub_21C8B0D58(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C8B0D9C()
{
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  sub_21CB84F54();
  return v2;
}

uint64_t sub_21C8B0DF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v62 = sub_21CB82834();
  v61 = *(v62 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v60 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1[2];
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  v6 = a1[3];
  v59 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v8 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
  v86 = v7;
  v87 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = a1[5];
  v86 = v5;
  v87 = v6;
  v88 = OpaqueTypeConformance2;
  v89 = v10;
  swift_getOpaqueTypeMetadata2();
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  v48[1] = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED868, &unk_21CBA7B50);
  sub_21CB828F4();
  v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v11 = sub_21CB828F4();
  WitnessTable = swift_getWitnessTable();
  v51 = WitnessTable;
  v58 = MEMORY[0x277CE0868];
  v13 = sub_21C6EADEC(&qword_27CDED860, &qword_27CDED868, &unk_21CBA7B50);
  v84 = WitnessTable;
  v85 = v13;
  v14 = MEMORY[0x277CDFAD8];
  v15 = swift_getWitnessTable();
  v49 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  v82 = v15;
  v83 = v49;
  v16 = swift_getWitnessTable();
  v86 = v11;
  v87 = v16;
  swift_getOpaqueTypeMetadata2();
  sub_21CB83B74();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF990, &qword_21CBAC968);
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  sub_21CB828F4();
  sub_21CB828F4();
  v17 = sub_21CB828F4();
  v80 = swift_getWitnessTable();
  v81 = MEMORY[0x277CDFC60];
  v18 = swift_getWitnessTable();
  v19 = MEMORY[0x277CE0760];
  v78 = v18;
  v79 = MEMORY[0x277CE0760];
  v76 = swift_getWitnessTable();
  v77 = v19;
  v50 = v14;
  v53 = v17;
  v54 = swift_getWitnessTable();
  v86 = v17;
  v87 = v54;
  v52 = MEMORY[0x277CDE8F8];
  swift_getOpaqueTypeMetadata2();
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  v20 = sub_21CB828F4();
  v74 = v51;
  v75 = v49;
  v21 = swift_getWitnessTable();
  v86 = v20;
  v87 = v21;
  swift_getOpaqueTypeMetadata2();
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  v22 = sub_21CB851C4();
  v51 = *(v22 - 8);
  v23 = *(v51 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = v48 - v24;
  v26 = sub_21CB828F4();
  v56 = *(v26 - 8);
  v27 = *(v56 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = v48 - v28;
  v30 = sub_21CB828F4();
  v57 = *(v30 - 8);
  v31 = *(v57 + 64);
  MEMORY[0x28223BE20](v30);
  v49 = v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v55 = v48 - v34;
  v35 = v59;
  sub_21C8B18FC(v59, v25);
  sub_21CB83D44();
  v86 = v53;
  v87 = v54;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = MEMORY[0x277CDF918];
  v36 = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  v69 = MEMORY[0x277CE1340];
  v70 = v36;
  v71 = v37;
  v38 = swift_getWitnessTable();
  sub_21CB84884();
  (*(v51 + 8))(v25, v22);
  v39 = v64 + *(v35 + 20);
  v40 = v60;
  sub_21C7448E0(v60);
  sub_21CB82824();
  (*(v61 + 8))(v40, v62);
  v67 = v38;
  v68 = MEMORY[0x277CDF918];
  v41 = swift_getWitnessTable();
  v42 = v49;
  sub_21CB849D4();
  (*(v56 + 8))(v29, v26);
  v43 = sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0);
  v65 = v41;
  v66 = v43;
  v44 = swift_getWitnessTable();
  v45 = v55;
  sub_21C72BE10(v42, v30, v44);
  v46 = *(v57 + 8);
  v46(v42, v30);
  sub_21C72BE10(v45, v30, v44);
  return (v46)(v45, v30);
}

uint64_t sub_21C8B18FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v33 = a1[2];
  v32 = sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  v3 = a1[3];
  v35 = a1;
  v36 = v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v63 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = a1[5];
  v64 = OpaqueTypeConformance2;
  v65 = v34;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  v27[0] = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  v5 = sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED868, &unk_21CBA7B50);
  v30 = v5;
  sub_21CB828F4();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  WitnessTable = swift_getWitnessTable();
  v60 = WitnessTable;
  v61 = sub_21C6EADEC(&qword_27CDED860, &qword_27CDED868, &unk_21CBA7B50);
  v6 = swift_getWitnessTable();
  v28 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  v58 = v6;
  v59 = v28;
  swift_getWitnessTable();
  v27[2] = MEMORY[0x277CE0C08];
  swift_getOpaqueTypeMetadata2();
  sub_21CB83B74();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF990, &qword_21CBAC968);
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  sub_21CB828F4();
  sub_21CB828F4();
  v7 = sub_21CB828F4();
  v56 = swift_getWitnessTable();
  v57 = MEMORY[0x277CDFC60];
  v8 = swift_getWitnessTable();
  v9 = MEMORY[0x277CE0760];
  v54 = v8;
  v55 = MEMORY[0x277CE0760];
  v52 = swift_getWitnessTable();
  v53 = v9;
  v32 = swift_getWitnessTable();
  v27[1] = MEMORY[0x277CDE8F8];
  swift_getOpaqueTypeMetadata2();
  sub_21CB828F4();
  v10 = v33;
  sub_21CB828F4();
  sub_21CB828F4();
  v50 = WitnessTable;
  v51 = v28;
  v62 = sub_21CB828F4();
  v63 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  v11 = sub_21CB851C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v27 - v17;
  sub_21CB85184();
  *&v19 = v35[4];
  *(&v19 + 1) = v34;
  *&v20 = v10;
  *(&v20 + 1) = v36;
  v42 = v20;
  v43 = v19;
  v44 = v37;
  v39 = v20;
  v40 = v19;
  v41 = v37;
  v62 = v7;
  v63 = v32;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = MEMORY[0x277CDF918];
  v21 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v22 = MEMORY[0x277CE1340];
  sub_21CB85194();
  v45 = v22;
  v46 = v21;
  v47 = v26;
  v23 = swift_getWitnessTable();
  sub_21C72BE10(v15, v11, v23);
  v24 = *(v12 + 8);
  v24(v15, v11);
  sub_21C72BE10(v18, v11, v23);
  return (v24)(v18, v11);
}

uint64_t sub_21C8B20E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a5;
  v27 = a4;
  v24 = a3;
  v26 = a2;
  v28 = a1;
  v29 = a6;
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = a5;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED868, &unk_21CBA7B50);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  WitnessTable = swift_getWitnessTable();
  v41 = sub_21C6EADEC(&qword_27CDED860, &qword_27CDED868, &unk_21CBA7B50);
  v38 = swift_getWitnessTable();
  v39 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB83B74();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF990, &qword_21CBAC968);
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  sub_21CB828F4();
  sub_21CB828F4();
  v7 = sub_21CB828F4();
  v36 = swift_getWitnessTable();
  v37 = MEMORY[0x277CDFC60];
  v8 = swift_getWitnessTable();
  v9 = MEMORY[0x277CE0760];
  v34 = v8;
  v35 = MEMORY[0x277CE0760];
  v32 = swift_getWitnessTable();
  v33 = v9;
  v10 = swift_getWitnessTable();
  v42 = v7;
  v43 = v10;
  swift_getOpaqueTypeMetadata2();
  v11 = sub_21CB828F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  v42 = v26;
  v43 = v24;
  OpaqueTypeConformance2 = v27;
  v45 = v25;
  v19 = type metadata accessor for PMAccountDetailHeaderView();
  sub_21C8B26D4(v19, v15);
  v42 = v7;
  v43 = v10;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = MEMORY[0x277CDF918];
  v20 = swift_getWitnessTable();
  sub_21C72BE10(v15, v11, v20);
  v21 = *(v12 + 8);
  v21(v15, v11);
  sub_21C72BE10(v18, v11, v20);
  return (v21)(v18, v11);
}

uint64_t sub_21C8B26D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v63 = a1[2];
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  v62 = a1[3];
  v61 = a1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v82 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = a1[5];
  v83 = OpaqueTypeConformance2;
  v84 = v60;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED868, &unk_21CBA7B50);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v4 = sub_21CB828F4();
  WitnessTable = swift_getWitnessTable();
  v80 = sub_21C6EADEC(&qword_27CDED860, &qword_27CDED868, &unk_21CBA7B50);
  v5 = MEMORY[0x277CDFAD8];
  v77 = swift_getWitnessTable();
  v78 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  v81 = v4;
  v82 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB83B74();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF990, &qword_21CBAC968);
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  v43[1] = swift_getWitnessTable();
  v6 = sub_21CB84EE4();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v43 - v8;
  v10 = sub_21CB828F4();
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x28223BE20](v10);
  v53 = v43 - v12;
  v45 = v10;
  v13 = sub_21CB828F4();
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](v13);
  v54 = v43 - v15;
  v47 = v13;
  v16 = sub_21CB828F4();
  v56 = *(v16 - 8);
  v17 = *(v56 + 64);
  MEMORY[0x28223BE20](v16);
  v52 = v43 - v18;
  v75 = swift_getWitnessTable();
  v76 = MEMORY[0x277CDFC60];
  v44 = swift_getWitnessTable();
  v19 = MEMORY[0x277CE0760];
  v73 = v44;
  v74 = MEMORY[0x277CE0760];
  v55 = v5;
  v46 = swift_getWitnessTable();
  v71 = v46;
  v72 = v19;
  v48 = swift_getWitnessTable();
  v81 = v16;
  v82 = v48;
  v49 = MEMORY[0x277CDE8F8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v50 = *(OpaqueTypeMetadata2 - 8);
  v21 = *(v50 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v23 = v43 - v22;
  v24 = sub_21CB828F4();
  v51 = *(v24 - 8);
  v25 = *(v51 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = v43 - v29;
  sub_21CB832E4();
  *&v31 = v61[4];
  *(&v31 + 1) = v60;
  *&v32 = v63;
  *(&v32 + 1) = v62;
  v66 = v32;
  v67 = v31;
  v68 = v64;
  sub_21CB84ED4();
  sub_21CB85214();
  v33 = v53;
  sub_21CB847A4();
  (*(v59 + 8))(v9, v6);
  sub_21CB832C4();
  v34 = v54;
  v35 = v45;
  sub_21CB84264();
  (*(v58 + 8))(v33, v35);
  sub_21CB832D4();
  v36 = v52;
  v37 = v47;
  sub_21CB84264();
  (*(v57 + 8))(v34, v37);
  sub_21CB82324();
  v38 = v48;
  sub_21CB84344();
  (*(v56 + 8))(v36, v16);
  sub_21CB83CF4();
  v81 = v16;
  v82 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  sub_21CB84884();
  (*(v50 + 8))(v23, OpaqueTypeMetadata2);
  v69 = v39;
  v70 = MEMORY[0x277CDF918];
  v40 = swift_getWitnessTable();
  sub_21C72BE10(v27, v24, v40);
  v41 = *(v51 + 8);
  v41(v27, v24);
  sub_21C72BE10(v30, v24, v40);
  return (v41)(v30, v24);
}

uint64_t sub_21C8B3184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23[0] = a1;
  v23[1] = a6;
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = a5;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v10 = sub_21CB828F4();
  v23[2] = swift_getWitnessTable();
  v23[3] = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  v24 = v10;
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB83B74();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF990, &qword_21CBAC968);
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  v11 = sub_21CB84E14();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v23 - v17;
  v24 = a2;
  WitnessTable = a3;
  OpaqueTypeConformance2 = a4;
  v27 = a5;
  v19 = type metadata accessor for PMAccountDetailHeaderView();
  sub_21C8B3638(v19, v15);
  v20 = swift_getWitnessTable();
  sub_21C72BE10(v15, v11, v20);
  v21 = *(v12 + 8);
  v21(v15, v11);
  sub_21C72BE10(v18, v11, v20);
  return (v21)(v18, v11);
}

uint64_t sub_21C8B3638@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = a1[2];
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  v4 = a1[3];
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v28 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v6 = a1[5];
  v29 = OpaqueTypeConformance2;
  v30 = v6;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v7 = sub_21CB828F4();
  WitnessTable = swift_getWitnessTable();
  v26 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  v27 = v7;
  v28 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB83B74();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF990, &qword_21CBAC968);
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  v8 = sub_21CB84E14();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v21 - v14;
  *&v16 = a1[4];
  *(&v16 + 1) = v6;
  *&v17 = v3;
  *(&v17 + 1) = v4;
  v22 = v17;
  v23 = v16;
  v24 = v21[0];
  sub_21CB83074();
  sub_21CB84E04();
  v18 = swift_getWitnessTable();
  sub_21C72BE10(v12, v8, v18);
  v19 = *(v9 + 8);
  v19(v12, v8);
  sub_21C72BE10(v15, v8, v18);
  return (v19)(v15, v8);
}

uint64_t sub_21C8B3B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a5;
  v55 = a4;
  v56 = a3;
  v58 = a1;
  v54 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v79 = a5;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v8 = sub_21CB828F4();
  WitnessTable = swift_getWitnessTable();
  v75 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  v47 = MEMORY[0x277CDFAD8];
  v76 = v8;
  v77 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB83B74();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF990, &qword_21CBAC968);
  swift_getTupleTypeMetadata2();
  v52 = sub_21CB85354();
  v51 = swift_getWitnessTable();
  v48 = sub_21CB84EE4();
  v53 = *(v48 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v48);
  v49 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v50 = &v41 - v12;
  v13 = sub_21CB828F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v18 = sub_21CB828F4();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v41 - v24;
  v44 = a2;
  v76 = a2;
  v77 = v56;
  v26 = v55;
  OpaqueTypeConformance2 = v55;
  v79 = v57;
  v27 = *(type metadata accessor for PMAccountDetailHeaderView() + 76);
  sub_21CB832C4();
  sub_21CB84264();
  sub_21CB83D34();
  v72 = v26;
  v73 = MEMORY[0x277CE0760];
  v28 = swift_getWitnessTable();
  sub_21CB84884();
  (*(v14 + 8))(v17, v13);
  v70 = v28;
  v71 = MEMORY[0x277CDF918];
  v43 = v18;
  v46 = swift_getWitnessTable();
  v42 = v22;
  sub_21C72BE10(v22, v18, v46);
  v29 = v19[1];
  v45 = v19 + 1;
  v47 = v29;
  v29(v22, v18);
  sub_21CB832F4();
  v59 = v44;
  v60 = v56;
  v61 = v55;
  v62 = v57;
  v63 = v58;
  v30 = v49;
  sub_21CB84ED4();
  v31 = v48;
  v32 = swift_getWitnessTable();
  v33 = v50;
  sub_21C72BE10(v30, v31, v32);
  v34 = v53;
  v35 = *(v53 + 8);
  v35(v30, v31);
  v36 = v19[2];
  v37 = v42;
  v38 = v43;
  v36(v42, v25, v43);
  v76 = v37;
  (*(v34 + 16))(v30, v33, v31);
  v68 = 0;
  v69 = 1;
  v77 = v30;
  OpaqueTypeConformance2 = &v68;
  v67[0] = v38;
  v67[1] = v31;
  v67[2] = MEMORY[0x277CE1180];
  v64 = v46;
  v65 = v32;
  v66 = MEMORY[0x277CE1170];
  sub_21C74A55C(&v76, 3uLL, v67);
  v35(v33, v31);
  v39 = v47;
  v47(v25, v38);
  v35(v30, v31);
  return v39(v37, v38);
}

uint64_t sub_21C8B438C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a3;
  v63 = a5;
  v64 = a2;
  v65 = a4;
  v69 = a1;
  v66 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v10 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
  *&v85 = v9;
  *(&v85 + 1) = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v85 = v8;
  *(&v85 + 1) = a3;
  *&v86 = OpaqueTypeConformance2;
  *(&v86 + 1) = a5;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  v12 = sub_21CB84F04();
  v61 = *(v12 - 8);
  v13 = *(v61 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v54 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v16 = sub_21CB828F4();
  v60 = *(v16 - 8);
  v17 = *(v60 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v54 - v18;
  WitnessTable = swift_getWitnessTable();
  v54[1] = WitnessTable;
  v21 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  v83 = WitnessTable;
  v84 = v21;
  v59 = MEMORY[0x277CDFAD8];
  v55 = swift_getWitnessTable();
  *&v85 = v16;
  *(&v85 + 1) = v55;
  v57 = MEMORY[0x277CE0C08];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v58 = *(OpaqueTypeMetadata2 - 8);
  v23 = *(v58 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v25 = v54 - v24;
  sub_21CB83B74();
  v56 = sub_21CB828F4();
  v67 = *(v56 - 8);
  v26 = *(v67 + 64);
  MEMORY[0x28223BE20](v56);
  v28 = v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v68 = v54 - v30;
  v31 = sub_21CB832F4();
  v32 = sub_21CB83034();
  *&v85 = v64;
  *(&v85 + 1) = v62;
  *&v86 = v65;
  *(&v86 + 1) = v63;
  v33 = type metadata accessor for PMAccountDetailHeaderView();
  sub_21C8B4BA4(v31, v32, v33, v15);
  sub_21CB83E34();
  sub_21CB846C4();

  (*(v61 + 8))(v15, v12);
  sub_21CB83E04();
  v34 = v55;
  sub_21CB840D4();
  (*(v60 + 8))(v19, v16);
  *&v85 = v16;
  *(&v85 + 1) = v34;
  v35 = swift_getOpaqueTypeConformance2();
  sub_21CB845C4();
  (*(v58 + 8))(v25, OpaqueTypeMetadata2);
  v36 = sub_21C735F84();
  v81 = v35;
  v82 = v36;
  v37 = v56;
  v38 = swift_getWitnessTable();
  sub_21C72BE10(v28, v37, v38);
  v39 = *(v67 + 8);
  v65 = v28;
  v39(v28, v37);
  v40 = *(v69 + 72);
  if (v40)
  {
    *&v85 = *(v69 + 64);
    *(&v85 + 1) = v40;
    sub_21C71F3FC();

    v41 = sub_21CB84054();
    v43 = v42;
    v45 = v44;
    sub_21CB84B34();
    v69 = sub_21CB83FB4();
    v63 = v47;
    v64 = v46;
    LODWORD(v62) = v48;

    sub_21C74A72C(v41, v43, v45 & 1);

    KeyPath = swift_getKeyPath();
    v40 = sub_21CB83EB4();
    v50 = swift_getKeyPath();
    LOBYTE(v79[0]) = 0;
    *&v85 = v69;
    *(&v85 + 1) = v64;
    LOBYTE(v86) = v62 & 1;
    *(&v86 + 1) = v63;
    *&v87 = KeyPath;
    *(&v87 + 1) = 2;
    LOBYTE(v88) = 0;
  }

  else
  {
    v50 = 0;
    *&v88 = 0;
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
  }

  *(&v88 + 1) = v50;
  v89 = v40;
  v51 = v68;
  v52 = v65;
  (*(v67 + 16))(v65, v68, v37);
  v75 = v87;
  v76 = v88;
  v77 = v89;
  v73 = v85;
  v74 = v86;
  v78[0] = v52;
  v78[1] = &v73;
  sub_21C8B6688(&v85, v79);
  v72[0] = v37;
  v72[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF990, &qword_21CBAC968);
  v70 = v38;
  v71 = sub_21C8B66F8();
  sub_21C74A55C(v78, 2uLL, v72);
  sub_21C8B6834(&v85);
  v39(v51, v37);
  v79[2] = v75;
  v79[3] = v76;
  v80 = v77;
  v79[0] = v73;
  v79[1] = v74;
  sub_21C8B6834(v79);
  return (v39)(v52, v37);
}

uint64_t sub_21C8B4BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v23[1] = a1;
  v23[2] = a2;
  v23[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v28 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = a3[3];
  v9 = a3[5];
  v27 = v6;
  v28 = v8;
  v29 = OpaqueTypeConformance2;
  v30 = v9;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  v10 = sub_21CB84F04();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v23 - v16;
  *&v18 = a3[2];
  *(&v18 + 1) = v8;
  *&v19 = a3[4];
  *(&v19 + 1) = v9;
  v24 = v18;
  v25 = v19;
  v26 = v4;
  sub_21CB84EF4();
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v14, v10, WitnessTable);
  v21 = *(v11 + 8);
  v21(v14, v10);
  sub_21C72BE10(v17, v10, WitnessTable);
  return (v21)(v17, v10);
}

uint64_t sub_21C8B4EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v105 = a2;
  v106 = a5;
  v107 = a1;
  v108 = a4;
  v109 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF988, &unk_21CBAC958);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v10 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
  *&v134 = v9;
  *(&v134 + 1) = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v134 = v8;
  *(&v134 + 1) = a3;
  *&v135 = OpaqueTypeConformance2;
  *(&v135 + 1) = a5;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  sub_21CB828F4();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  v12 = sub_21CB84F04();
  v102 = *(v12 - 8);
  v13 = *(v102 + 64);
  MEMORY[0x28223BE20](v12);
  v98 = &v85 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED868, &unk_21CBA7B50);
  v94 = v12;
  v15 = sub_21CB828F4();
  v101 = *(v15 - 8);
  v16 = *(v101 + 64);
  MEMORY[0x28223BE20](v15);
  v97 = &v85 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v92 = v15;
  v18 = sub_21CB828F4();
  v99 = *(v18 - 8);
  v19 = *(v99 + 64);
  MEMORY[0x28223BE20](v18);
  v96 = &v85 - v20;
  WitnessTable = swift_getWitnessTable();
  v89 = WitnessTable;
  v22 = sub_21C6EADEC(&qword_27CDED860, &qword_27CDED868, &unk_21CBA7B50);
  v132 = WitnessTable;
  v133 = v22;
  v85 = MEMORY[0x277CDFAD8];
  v23 = swift_getWitnessTable();
  v88 = v23;
  v24 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  v130 = v23;
  v131 = v24;
  v91 = v18;
  v90 = swift_getWitnessTable();
  *&v134 = v18;
  *(&v134 + 1) = v90;
  v93 = MEMORY[0x277CE0C08];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v95 = *(OpaqueTypeMetadata2 - 8);
  v25 = *(v95 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v86 = &v85 - v26;
  sub_21CB83B74();
  v113 = sub_21CB828F4();
  v110 = *(v113 - 8);
  v27 = *(v110 + 64);
  MEMORY[0x28223BE20](v113);
  v112 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v111 = &v85 - v30;
  v31 = v105;
  v32 = sub_21CB828F4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v85 - v38;
  *&v134 = v31;
  *(&v134 + 1) = a3;
  v40 = v108;
  *&v135 = v108;
  *(&v135 + 1) = v106;
  v41 = type metadata accessor for PMAccountDetailHeaderView();
  v42 = *(v41 + 76);
  sub_21CB83D04();
  v43 = v107;
  v44 = v32;
  sub_21CB84884();
  v128 = v40;
  v129 = MEMORY[0x277CDF918];
  v45 = swift_getWitnessTable();
  v106 = v39;
  v100 = v45;
  sub_21C72BE10(v36, v32, v45);
  v103 = v33;
  v46 = *(v33 + 8);
  v108 = v36;
  v104 = v46;
  v105 = v33 + 8;
  v46(v36, v32);
  v47 = sub_21CB85214();
  v48 = v98;
  v49 = v43;
  sub_21C8B4BA4(v47, v50, v41, v98);
  v51 = v97;
  v52 = v94;
  sub_21CB845A4();
  (*(v102 + 8))(v48, v52);
  sub_21CB83DB4();
  v53 = v96;
  v54 = v92;
  sub_21CB846C4();

  (*(v101 + 8))(v51, v54);
  sub_21CB83DD4();
  v55 = v86;
  v57 = v90;
  v56 = v91;
  sub_21CB840D4();
  (*(v99 + 8))(v53, v56);
  *&v134 = v56;
  *(&v134 + 1) = v57;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v112;
  v60 = OpaqueTypeMetadata2;
  sub_21CB845C4();
  (*(v95 + 8))(v55, v60);
  v61 = sub_21C735F84();
  v126 = v58;
  v127 = v61;
  v62 = v113;
  v101 = swift_getWitnessTable();
  sub_21C72BE10(v59, v62, v101);
  v102 = *(v110 + 8);
  (v102)(v59, v62);
  v63 = *(v49 + 72);
  if (v63)
  {
    *&v134 = *(v49 + 64);
    *(&v134 + 1) = v63;
    sub_21C71F3FC();

    v64 = sub_21CB84054();
    v66 = v65;
    v68 = v67;
    sub_21CB84B34();
    v107 = sub_21CB83FB4();
    v70 = v69;
    v72 = v71;
    v99 = v73;

    sub_21C74A72C(v64, v66, v68 & 1);

    KeyPath = swift_getKeyPath();
    v63 = sub_21CB83EB4();
    v75 = swift_getKeyPath();
    LOBYTE(v124[0]) = 0;
    *&v134 = v107;
    *(&v134 + 1) = v70;
    LOBYTE(v135) = v72 & 1;
    *(&v135 + 1) = v99;
    *&v136 = KeyPath;
    *(&v136 + 1) = 2;
    LOBYTE(v137) = 0;
  }

  else
  {
    v75 = 0;
    *&v137 = 0;
    v135 = 0u;
    v136 = 0u;
    v134 = 0u;
  }

  *(&v137 + 1) = v75;
  v138 = v63;
  v76 = v108;
  v77 = v106;
  (*(v103 + 16))(v108, v106, v32);
  v123[0] = v76;
  v78 = v111;
  v80 = v112;
  v79 = v113;
  (*(v110 + 16))(v112, v111, v113);
  v120 = v136;
  v121 = v137;
  v122 = v138;
  v118 = v134;
  v119 = v135;
  v123[1] = v80;
  v123[2] = &v118;
  sub_21C8B6688(&v134, v124);
  v117[0] = v44;
  v117[1] = v79;
  v117[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF990, &qword_21CBAC968);
  v114 = v100;
  v115 = v101;
  v116 = sub_21C8B66F8();
  sub_21C74A55C(v123, 3uLL, v117);
  sub_21C8B6834(&v134);
  v81 = v102;
  (v102)(v78, v79);
  v82 = v77;
  v83 = v104;
  v104(v82, v44);
  v124[2] = v120;
  v124[3] = v121;
  v125 = v122;
  v124[0] = v118;
  v124[1] = v119;
  sub_21C8B6834(v124);
  v81(v80, v79);
  return v83(v76, v44);
}

uint64_t sub_21C8B59C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v91 = a4;
  v111 = a6;
  v103 = sub_21CB82834();
  v112 = *(v103 - 8);
  v10 = *(v112 + 64);
  MEMORY[0x28223BE20](v103);
  v12 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v85 = v13;
  v108 = *(v13 - 8);
  v14 = *(v108 + 64);
  MEMORY[0x28223BE20](v13);
  v99 = v77 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF988, &unk_21CBAC958);
  v88 = v16;
  v105 = *(v16 - 8);
  v17 = *(v105 + 64);
  MEMORY[0x28223BE20](v16);
  v92 = v77 - v18;
  v86 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
  v116 = v13;
  v117 = v86;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v116 = v16;
  v117 = a3;
  v80 = a3;
  v118 = OpaqueTypeConformance2;
  v119 = a5;
  v79 = a5;
  v101 = MEMORY[0x277CDEEB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v102 = *(OpaqueTypeMetadata2 - 8);
  v19 = *(v102 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v82 = v77 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  v98 = sub_21CB828F4();
  v104 = *(v98 - 8);
  v21 = *(v104 + 64);
  MEMORY[0x28223BE20](v98);
  v83 = v77 - v22;
  v93 = sub_21CB828F4();
  v107 = *(v93 - 8);
  v23 = *(v107 + 64);
  MEMORY[0x28223BE20](v93);
  v89 = v77 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC88, &qword_21CBA3170);
  v106 = sub_21CB828F4();
  v109 = *(v106 - 8);
  v25 = *(v109 + 64);
  MEMORY[0x28223BE20](v106);
  v110 = v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v84 = v77 - v28;
  MEMORY[0x28223BE20](v29);
  v100 = v77 - v30;
  v31 = *(a1 + 8);
  v116 = *a1;
  v117 = v31;
  sub_21C71F3FC();

  v95 = sub_21CB84054();
  v94 = v32;
  v96 = v33;
  v97 = v34;
  v81 = *(a1 + 80);
  v116 = a2;
  v117 = a3;
  v118 = v91;
  v119 = a5;
  v35 = type metadata accessor for PMAccountDetailHeaderView();
  v77[4] = sub_21C8B0D9C();
  v77[3] = v36;
  v77[2] = v37;
  v77[1] = v38;
  v39 = a1;
  v40 = *(a1 + 24);
  v116 = *(a1 + 16);
  v117 = v40;

  sub_21CB84054();
  v91 = v35[20];
  v78 = v12;
  sub_21C7448E0(v12);
  sub_21CB82824();
  v41 = *(v112 + 8);
  v112 += 8;
  v42 = v103;
  v41(v12, v103);
  v43 = v99;
  sub_21CB852E4();
  v44 = v92;
  v45 = v85;
  sub_21CB841E4();
  (*(v108 + 8))(v43, v45);
  v46 = v39 + v35[17];
  v47 = v39 + v35[18];
  v48 = v82;
  v49 = v88;
  v50 = v80;
  v51 = OpaqueTypeConformance2;
  v52 = v79;
  sub_21CB84824();
  v53 = v44;
  v54 = v49;
  (*(v105 + 8))(v53, v49);
  v55 = v78;
  sub_21C7448E0(v78);
  sub_21CB82824();
  v41(v55, v42);
  v116 = v54;
  v117 = v50;
  v118 = v51;
  v119 = v52;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v83;
  v58 = OpaqueTypeMetadata2;
  sub_21CB849D4();
  (*(v102 + 8))(v48, v58);
  if (v81)
  {
    v59 = 0.0;
  }

  else
  {
    v59 = 1.0;
  }

  v60 = sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0);
  v121[6] = v56;
  v121[7] = v60;
  v61 = v98;
  WitnessTable = swift_getWitnessTable();
  v63 = v89;
  sub_21CB84854();
  (*(v104 + 8))(v57, v61);
  v121[4] = WitnessTable;
  v121[5] = MEMORY[0x277CDF900];
  v64 = v93;
  v65 = swift_getWitnessTable();
  v66 = v84;
  sub_21CB848D4();
  (*(v107 + 8))(v63, v64);
  v67 = sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
  v121[2] = v65;
  v121[3] = v67;
  v68 = v106;
  v112 = swift_getWitnessTable();
  v69 = v100;
  sub_21C72BE10(v66, v68, v112);
  v70 = v109;
  v71 = *(v109 + 8);
  v71(v66, v68);
  v72 = v95;
  v73 = v94;
  v116 = v95;
  v117 = v94;
  v74 = v96 & 1;
  LOBYTE(v118) = v96 & 1;
  v119 = v97;
  v120 = v59;
  v121[0] = &v116;
  v75 = v110;
  (*(v70 + 16))(v110, v69, v68);
  v121[1] = v75;
  sub_21C79B058(v72, v73, v74);

  v115[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF980, &qword_21CBAC950);
  v115[1] = v68;
  v113 = sub_21C8B68B4();
  v114 = v112;
  sub_21C74A55C(v121, 2uLL, v115);
  sub_21C74A72C(v72, v73, v74);

  v71(v69, v68);
  v71(v75, v68);
  sub_21C74A72C(v116, v117, v118);
}

uint64_t sub_21C8B6500@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C8B6688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF990, &qword_21CBAC968);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C8B66F8()
{
  result = qword_27CDEF998;
  if (!qword_27CDEF998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF990, &qword_21CBAC968);
    sub_21C8B677C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF998);
  }

  return result;
}

unint64_t sub_21C8B677C()
{
  result = qword_27CDEF9A0;
  if (!qword_27CDEF9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF9A8, &unk_21CBAC970);
    sub_21C7E397C();
    sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF9A0);
  }

  return result;
}

uint64_t sub_21C8B6834(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF990, &qword_21CBAC968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C8B68B4()
{
  result = qword_27CDEF9B0;
  if (!qword_27CDEF9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF980, &qword_21CBAC950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF9B0);
  }

  return result;
}

uint64_t sub_21C8B6994@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for PMAppOnboardingView();
  sub_21C6EDBAC(v1 + *(v12 + 20), v11, &qword_27CDEB5E0, &qword_21CBA21D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CB82054();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_21CB85B04();
    v16 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t PMAppOnboardingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = sub_21CB82F84();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB82054();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PMOnboardingView(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C8B6994(v15);
  sub_21CA882A0(v15, v38);
  (*(v12 + 8))(v15, v11);
  sub_21CB81014();
  v20 = sub_21CB81004();
  v22 = v21;
  (*(v7 + 8))(v10, v6);
  v23 = *v1;
  v24 = v1[1];
  if (*(v1 + 16) == 1)
  {
    v25 = v1[1];
  }

  else
  {
    v26 = *v1;

    sub_21CB85B04();
    v27 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C79C1F4();
    (*(v33 + 8))(v5, v34);
    v23 = v36;
    v24 = v37;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  *(v28 + 24) = v24;
  v29 = v38[2];
  *(v19 + 24) = v39;
  v30 = v38[0];
  *(v19 + 1) = v38[1];
  *(v19 + 2) = v29;
  *v19 = v30;
  *(v19 + 7) = v20;
  *(v19 + 8) = v22;
  *(v19 + 9) = sub_21C8B6F70;
  *(v19 + 10) = v28;
  v19[88] = 0;
  *(v19 + 6) = 0u;
  *(v19 + 7) = 0u;
  v19[128] = 0;
  v31 = *(v16 + 28);
  *&v19[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  sub_21C8B6F98();
  sub_21CB84674();
  return sub_21C85BC4C(v19);
}

uint64_t sub_21C8B6F70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_21C8B6F98()
{
  result = qword_27CDEE360;
  if (!qword_27CDEE360)
  {
    type metadata accessor for PMOnboardingView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE360);
  }

  return result;
}

uint64_t type metadata accessor for PMAppOnboardingView()
{
  result = qword_27CDEF9B8;
  if (!qword_27CDEF9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C8B7080()
{
  sub_21C8B7104();
  if (v0 <= 0x3F)
  {
    sub_21C735A14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C8B7104()
{
  if (!qword_27CDEF9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC858, &qword_21CBB1080);
    v0 = sub_21CB82074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEF9C8);
    }
  }
}

uint64_t sub_21C8B71AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v60 = sub_21CB81024();
  v58 = *(v60 - 8);
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF9F8, &qword_21CBACB10);
  v6 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v8 = &v50 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA00, &qword_21CBACB18);
  v55 = *(v54 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  v11 = &v50 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA08, &qword_21CBACB20);
  *&v64 = *(v61 - 8);
  v12 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  v53 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA10, &qword_21CBACB28);
  v62 = *(v14 - 8);
  v63 = v14;
  v15 = *(v62 + 64);
  MEMORY[0x28223BE20](v14);
  v57 = &v50 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA18, &qword_21CBACB30);
  v18 = *(v17 - 8);
  v59 = v17 - 8;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v56 = &v50 - v20;
  sub_21C8B7A18(v1, v8);
  v67 = v1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA20, &qword_21CBACB38);
  v22 = sub_21C8C6D40(&qword_27CDEFA28, &qword_27CDEF9F8, &qword_21CBACB10, sub_21C8C3730);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFB20, &qword_21CBACBC8);
  v24 = sub_21C6EADEC(&qword_27CDEFB28, &qword_27CDEFB20, &qword_21CBACBC8);
  *&v68 = v23;
  *(&v68 + 1) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v51;
  sub_21CB84894();
  sub_21C6EA794(v8, &qword_27CDEF9F8, &qword_21CBACB10);
  v52 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21CB81014();
  v27 = sub_21CB81004();
  v29 = v28;
  (*(v58 + 8))(v5, v60);
  v71 = v27;
  v72 = v29;
  *&v68 = v26;
  *(&v68 + 1) = v21;
  v69 = v22;
  v70 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_21C71F3FC();
  v32 = MEMORY[0x277D837D0];
  v33 = v53;
  v34 = v54;
  sub_21CB842F4();

  (*(v55 + 8))(v11, v34);
  sub_21CB85184();
  v66 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB30, &qword_21CBACC18);
  *&v68 = v34;
  *(&v68 + 1) = v32;
  v69 = v30;
  v70 = v31;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v61;
  *&v68 = v61;
  *(&v68 + 1) = v32;
  v69 = v35;
  v70 = v31;
  swift_getOpaqueTypeConformance2();
  v37 = v57;
  sub_21CB84974();
  (*(v64 + 8))(v33, v36);
  v38 = v56;
  (*(v62 + 32))(v56, v37, v63);
  *(v38 + *(v59 + 44)) = 1;
  v39 = *v2;
  type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
  sub_21C720BCC(&qword_27CDEF9F0, type metadata accessor for PMRecentlyDeletedAccountsViewModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v64 = v68;
  v40 = v69;
  v41 = v70;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB38, &qword_21CBACC20);
  v43 = v65;
  v44 = (v65 + *(v42 + 36));
  *v44 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v45 = type metadata accessor for PMContentListSearchable();
  v46 = v45[5];
  *(v44 + v46) = swift_getKeyPath();
  v47 = v45[6];
  type metadata accessor for PMAppRootNavigationModel();
  sub_21C720BCC(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB821F4();
  v48 = v44 + v45[7];
  *v48 = v64;
  *(v48 + 2) = v40;
  *(v48 + 3) = v41;
  return sub_21C716934(v38, v43, &qword_27CDEFA18, &qword_21CBACB30);
}

uint64_t sub_21C8B7A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB18, &unk_21CBACBB8);
  v3 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v65 = &v61 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBE0, &qword_21CBACE70);
  v5 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v68 = &v61 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA58, &qword_21CBACB50);
  v7 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v64 = &v61 - v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA48, &qword_21CBACB48);
  v9 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v69 = &v61 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBE8, &qword_21CBACE78);
  v11 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v74 = &v61 - v12;
  v13 = type metadata accessor for PMEmptyStateDetailView.Source(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v61 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for PMEmptyStateDetailView(0);
  v16 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v62 = (&v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_21CB83834();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v63 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v61 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v61 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v61 - v35;
  v37 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView() + 32);
  v71 = a1;
  sub_21C728D50(v36);
  (*(v19 + 104))(v33, *MEMORY[0x277CE0558], v18);
  (*(v19 + 56))(v33, 0, 1, v18);
  v38 = *(v23 + 56);
  sub_21C6EDBAC(v36, v26, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v33, &v26[v38], &qword_27CDEC390, &qword_21CBA40E0);
  v39 = *(v19 + 48);
  if (v39(v26, 1, v18) != 1)
  {
    sub_21C6EDBAC(v26, v30, &qword_27CDEC390, &qword_21CBA40E0);
    if (v39(&v26[v38], 1, v18) != 1)
    {
      v41 = v63;
      (*(v19 + 32))(v63, &v26[v38], v18);
      sub_21C720BCC(&qword_27CDEE538, MEMORY[0x277CE0570]);
      v42 = sub_21CB85574();
      v43 = *(v19 + 8);
      v43(v41, v18);
      sub_21C6EA794(v33, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v36, &qword_27CDEC390, &qword_21CBA40E0);
      v43(v30, v18);
      sub_21C6EA794(v26, &qword_27CDEC390, &qword_21CBA40E0);
      v40 = v71;
      if ((v42 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_21C6EA794(v33, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v36, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v19 + 8))(v30, v18);
LABEL_6:
    sub_21C6EA794(v26, &qword_27CDEE530, &unk_21CBA9D80);
    v40 = v71;
    goto LABEL_10;
  }

  sub_21C6EA794(v33, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v36, &qword_27CDEC390, &qword_21CBA40E0);
  if (v39(&v26[v38], 1, v18) != 1)
  {
    goto LABEL_6;
  }

  sub_21C6EA794(v26, &qword_27CDEC390, &qword_21CBA40E0);
  v40 = v71;
LABEL_8:
  v44 = *(v40 + 8);
  if (sub_21CAE917C())
  {
    v45 = sub_21CB85C44();
    v46 = v61;
    (*(*(v45 - 8) + 56))(v61, 6, 6, v45);
    v47 = v62;
    sub_21C9E14F8(v46, 1, v62);
    sub_21C8C5D40(v47, v74, type metadata accessor for PMEmptyStateDetailView);
    swift_storeEnumTagMultiPayload();
    sub_21C720BCC(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
    sub_21C8C37EC();
    sub_21CB83494();
    return sub_21C719240(v47, type metadata accessor for PMEmptyStateDetailView);
  }

LABEL_10:
  v49 = *(v40 + 8);
  if (sub_21CAE917C())
  {
    v50 = v64;
    sub_21C8B83C4(v64);
    v51 = &qword_27CDEFA58;
    v52 = &qword_21CBACB50;
    sub_21C6EDBAC(v50, v68, &qword_27CDEFA58, &qword_21CBACB50);
    swift_storeEnumTagMultiPayload();
    sub_21C8C3878();
    sub_21C8C3E9C();
    v53 = v69;
    sub_21CB83494();
    v54 = v50;
  }

  else
  {
    v55 = v65;
    sub_21C8B83C4(v65);
    v56 = sub_21CB85214();
    v58 = v57;
    v59 = v55 + *(v70 + 36);
    sub_21C8B9414(v40, v59);
    v60 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF70, &qword_21CBA3990) + 36));
    *v60 = v56;
    v60[1] = v58;
    v51 = &qword_27CDEFB18;
    v52 = &unk_21CBACBB8;
    sub_21C6EDBAC(v55, v68, &qword_27CDEFB18, &unk_21CBACBB8);
    swift_storeEnumTagMultiPayload();
    sub_21C8C3878();
    sub_21C8C3E9C();
    v53 = v69;
    sub_21CB83494();
    v54 = v55;
  }

  sub_21C6EA794(v54, v51, v52);
  sub_21C6EDBAC(v53, v74, &qword_27CDEFA48, &qword_21CBACB48);
  swift_storeEnumTagMultiPayload();
  sub_21C720BCC(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
  sub_21C8C37EC();
  sub_21CB83494();
  return sub_21C6EA794(v53, &qword_27CDEFA48, &qword_21CBACB48);
}

double sub_21C8B83C4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v104 = a1;
  *&v98 = sub_21CB85114();
  *&v97 = *(v98 - 8);
  v3 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v96 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v79 - v6;
  v7 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
  v105 = *(v7 - 8);
  v113 = *(v105 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFAB8, &qword_21CBACB90);
  v109 = *(v107 - 1);
  v10 = *(v109 + 64);
  MEMORY[0x28223BE20](v107);
  v81 = &v79 - v11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFAA8, &qword_21CBACB80);
  v87 = *(v85 - 8);
  v12 = *(v87 + 64);
  MEMORY[0x28223BE20](v85);
  v108 = (&v79 - v13);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA98, &qword_21CBACB78);
  v14 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v84 = &v79 - v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA90, &qword_21CBACB70);
  v91 = *(v90 - 8);
  v16 = *(v91 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v79 - v17;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBF0, &qword_21CBACE80);
  v94 = *(v95 - 8);
  v18 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v88 = &v79 - v19;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA88, &qword_21CBACB68);
  v20 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  *&v100 = &v79 - v21;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA78, &qword_21CBACB60);
  v22 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v102 = &v79 - v23;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA68, &qword_21CBACB58);
  v24 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v103 = &v79 - v25;
  v26 = v1[1];
  v111 = *v1;
  *&v112 = type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
  v27 = sub_21C720BCC(&qword_27CDEF9F0, type metadata accessor for PMRecentlyDeletedAccountsViewModel);
  v82 = v26;
  v83 = v27;
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v114 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBF8, &qword_21CBACE88);
  sub_21C6EADEC(&qword_27CDEFC00, &qword_27CDEFBF8, &qword_21CBACE88);
  sub_21CB83F14();
  LOBYTE(v115) = sub_21CAE917C();
  sub_21C8C5D40(v1, v9, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v28 = *(v105 + 80);
  v29 = (v28 + 16) & ~v28;
  v30 = swift_allocObject();
  sub_21C8C5E30(v9, v30 + v29, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v80 = sub_21C6EADEC(&qword_27CDEFAC0, &qword_27CDEFAB8, &qword_21CBACB90);
  v31 = v107;
  v32 = v81;
  sub_21CB84934();

  (*(v109 + 8))(v32, v31);
  sub_21C8C5D40(v2, v9, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v33 = swift_allocObject();
  sub_21C8C5E30(v9, v33 + v29, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  sub_21C8C5D40(v2, v9, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v109 = v28;
  v34 = swift_allocObject();
  v105 = v29;
  sub_21C8C5E30(v9, v34 + v29, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFAB0, &qword_21CBACB88);
  *&v115 = v107;
  *(&v115 + 1) = MEMORY[0x277D839B0];
  *&v116 = v80;
  *(&v116 + 1) = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_21C8C525C(&qword_27CDEFAC8, &qword_27CDEFAB0, &qword_21CBACB88, sub_21C8C3D14);
  v35 = v84;
  v36 = v85;
  v37 = v108;
  sub_21CB84144();

  (*(v87 + 8))(v37, v36);
  KeyPath = swift_getKeyPath();
  v39 = v86;
  v40 = (v35 + *(v86 + 36));
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v42 - 8) + 56))(v40 + v41, 0, 1, v42);
  *v40 = KeyPath;
  swift_getKeyPath();
  swift_getKeyPath();
  v43 = v93;
  sub_21CB81DB4();

  v44 = v97;
  v45 = v96;
  v46 = v98;
  (*(v97 + 104))(v96, *MEMORY[0x277CDF0D0], v98);
  sub_21CB850F4();
  v47 = *(v44 + 8);
  v48 = v88;
  v47(v45, v46);
  v47(v43, v46);
  v49 = sub_21C8C3B28();
  v50 = v89;
  sub_21CB84674();
  sub_21C6EA794(v35, &qword_27CDEFA98, &qword_21CBACB78);
  *&v115 = v39;
  *(&v115 + 1) = v49;
  swift_getOpaqueTypeConformance2();
  v51 = v90;
  sub_21CB845F4();
  (*(v91 + 8))(v50, v51);
  v52 = sub_21CAEA250();
  LOBYTE(v50) = sub_21CAEF570(v52);

  v53 = 0;
  v54 = 0;
  if (v50)
  {
    v55 = v106;
    sub_21C8C5D40(v110, v106, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v56 = v105;
    v54 = swift_allocObject();
    sub_21C8C5E30(v55, v54 + v56, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v53 = sub_21C8C6E8C;
  }

  v57 = v100;
  (*(v94 + 32))(v100, v48, v95);
  v58 = (v57 + *(v92 + 36));
  *v58 = v53;
  v58[1] = v54;
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v60 = v121;
  v61 = v122;
  v62 = v123;
  MEMORY[0x28223BE20](v59);
  swift_getKeyPath();
  v118 = v60;
  v119 = v61;
  v120 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBB0, &qword_21CBAAC70);
  sub_21CB84F44();

  v98 = v115;
  v97 = v116;
  v63 = v117;

  v108 = type metadata accessor for PMAppRecentlyDeletedAccountsView;
  v64 = v106;
  sub_21C8C5D40(v110, v106, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v65 = v105;
  v66 = swift_allocObject();
  v107 = type metadata accessor for PMAppRecentlyDeletedAccountsView;
  sub_21C8C5E30(v64, v66 + v65, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v67 = v57;
  v68 = v102;
  sub_21C716934(v67, v102, &qword_27CDEFA88, &qword_21CBACB68);
  v69 = v68 + *(v99 + 36);
  v70 = v97;
  *v69 = v98;
  *(v69 + 16) = v70;
  *(v69 + 32) = v63;
  *(v69 + 40) = &unk_21CBACED0;
  *(v69 + 48) = v66;
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v100 = v115;
  v71 = v116;
  v72 = v103;
  sub_21C716934(v68, v103, &qword_27CDEFA78, &qword_21CBACB60);
  v73 = v72 + *(v101 + 36);
  *v73 = v100;
  *(v73 + 16) = v71;
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v112 = v115;
  v74 = v116;
  sub_21C8C5D40(v110, v64, v108);
  v75 = swift_allocObject();
  sub_21C8C5E30(v64, v75 + v65, v107);
  v76 = v104;
  sub_21C716934(v72, v104, &qword_27CDEFA68, &qword_21CBACB58);
  v77 = v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA58, &qword_21CBACB50) + 36);
  result = *&v112;
  *v77 = v112;
  *(v77 + 16) = v74;
  *(v77 + 24) = sub_21C8C56E4;
  *(v77 + 32) = v75;
  return result;
}

uint64_t sub_21C8B9414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D8, &qword_21CBA3C70);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *(a1 + 8);
  v9 = *(sub_21CAE9588() + 16);

  if (v9)
  {
    v10 = *(v13 + 56);

    return v10(a2, 1, 1, v4);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    sub_21CB83784();

    (*(v13 + 32))(a2, v7, v4);
    return (*(v13 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_21C8B95CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB20, &qword_21CBACBC8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  sub_21C8B96F0(&v7 - v3);
  v5 = sub_21C6EADEC(&qword_27CDEFB28, &qword_27CDEFB20, &qword_21CBACBC8);
  MEMORY[0x21CF131E0](v4, v0, v5);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21C8B96F0@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB40, &qword_21CBACD10);
  v2 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v59 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB48, &qword_21CBACD18);
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v68 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB50, &qword_21CBACD20);
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  MEMORY[0x28223BE20](v7);
  v65 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB58, &qword_21CBACD28);
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10);
  v61 = &v59 - v12;
  v13 = sub_21CB83604();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB60, &qword_21CBACD30);
  v60 = *(v62 - 8);
  v15 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v59 = &v59 - v16;
  v17 = sub_21CB85114();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB68, &qword_21CBACD38);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v74 = &v59 - v30;
  v31 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  (*(v18 + 104))(v21, *MEMORY[0x277CDF0D0], v17);
  v32 = sub_21CB850F4();
  v33 = *(v18 + 8);
  v33(v21, v17);
  v33(v24, v17);
  if (v32)
  {
    v34 = sub_21CB83594();
    MEMORY[0x28223BE20](v34);
    *(&v59 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9D8, &unk_21CBAA9C0);
    sub_21C87C0A0();
    v35 = v59;
    sub_21CB82194();
    v36 = sub_21C6EADEC(&qword_27CDEFB70, &qword_27CDEFB60, &qword_21CBACD30);
    v38 = v61;
    v37 = v62;
    MEMORY[0x21CF131E0](v35, v62, v36);
    v40 = v63;
    v39 = v64;
    (*(v63 + 16))(v28, v38, v64);
    (*(v40 + 56))(v28, 0, 1, v39);
    v75 = v37;
    v76 = v36;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v28, v39, OpaqueTypeConformance2);
    sub_21C6EA794(v28, &qword_27CDEFB68, &qword_21CBACD38);
    (*(v40 + 8))(v38, v39);
    (*(v60 + 8))(v35, v37);
  }

  else
  {
    v42 = v64;
    (*(v63 + 56))(v28, 1, 1, v64);
    v43 = sub_21C6EADEC(&qword_27CDEFB70, &qword_27CDEFB60, &qword_21CBACD30);
    v75 = v62;
    v76 = v43;
    v44 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v28, v42, v44);
    sub_21C6EA794(v28, &qword_27CDEFB68, &qword_21CBACD38);
  }

  v45 = sub_21CB835A4();
  MEMORY[0x28223BE20](v45);
  *(&v59 - 2) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB78, &unk_21CBACD40);
  sub_21C8C3F64();
  v46 = v65;
  sub_21CB82194();
  v47 = sub_21CB835F4();
  MEMORY[0x28223BE20](v47);
  *(&v59 - 2) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB88, &qword_21CBACD50);
  sub_21C6EADEC(&qword_27CDEFB90, &qword_27CDEFB88, &qword_21CBACD50);
  v48 = v68;
  sub_21CB82AA4();
  v49 = v71;
  v50 = *(v72 + 48);
  v51 = *(v72 + 64);
  v52 = v74;
  sub_21C6EDBAC(v74, v71, &qword_27CDEFB68, &qword_21CBACD38);
  v54 = v66;
  v53 = v67;
  v55 = v46;
  (*(v66 + 16))(v49 + v50, v46, v67);
  v57 = v69;
  v56 = v70;
  (*(v69 + 16))(v49 + v51, v48, v70);
  sub_21CB83394();
  (*(v57 + 8))(v48, v56);
  (*(v54 + 8))(v55, v53);
  return sub_21C6EA794(v52, &qword_27CDEFB68, &qword_21CBACD38);
}

uint64_t sub_21C8B9FD8()
{
  sub_21C8BA1C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFA08, &qword_21CBACB20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA00, &qword_21CBACB18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF9F8, &qword_21CBACB10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA20, &qword_21CBACB38);
  sub_21C8C6D40(&qword_27CDEFA28, &qword_27CDEF9F8, &qword_21CBACB10, sub_21C8C3730);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFB20, &qword_21CBACBC8);
  sub_21C6EADEC(&qword_27CDEFB28, &qword_27CDEFB20, &qword_21CBACBC8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  sub_21CB84444();
}

uint64_t sub_21C8BA1C0()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v58 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v55 - v6;
  MEMORY[0x28223BE20](v7);
  v60 = &v55 - v8;
  MEMORY[0x28223BE20](v9);
  v61 = &v55 - v10;
  MEMORY[0x28223BE20](v11);
  v63 = &v55 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  v16 = sub_21CB85114();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - v22;
  v24 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v62 = v24;
  sub_21CB81DB4();

  (*(v17 + 104))(v20, *MEMORY[0x277CDF0D0], v16);
  v25 = sub_21CB850F4();
  v26 = *(v17 + 8);
  v26(v20, v16);
  v26(v23, v16);
  v57 = v15;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v56 = sub_21CB81034();
  if (v25)
  {
    v27 = *(v56 - 8);
    v28 = *(v27 + 72);
    v55 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v29 = swift_allocObject();
    v30 = v61;
    sub_21CB81014();
    v31 = v60;
    sub_21CB81014();
    v32 = v59;
    sub_21CB81014();
    v33 = v58;
    sub_21CB81014();
    v34 = v55;
    sub_21CB80FE4();
    v35 = *(v2 + 8);
    v35(v33, v1);
    v35(v32, v1);
    v35(v31, v1);
    v35(v30, v1);
    swift_setDeallocating();
    (*(v27 + 8))(v29 + v34, v56);
    swift_deallocClassInstance();
    v36 = v57;
    sub_21CB81004();
    v35(v63, v1);
    v35(v36, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_21CBA0690;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v38 = *(v64 + 16);

    v39 = MEMORY[0x277D83C10];
    *(v37 + 56) = MEMORY[0x277D83B88];
    *(v37 + 64) = v39;
    *(v37 + 32) = v38;
  }

  else
  {
    v40 = *(v56 - 8);
    v41 = *(v40 + 72);
    v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v43 = swift_allocObject();
    v44 = v61;
    sub_21CB81014();
    v45 = v60;
    sub_21CB81014();
    v46 = v59;
    sub_21CB81014();
    v47 = v58;
    sub_21CB81014();
    sub_21CB80FE4();
    v48 = *(v2 + 8);
    v48(v47, v1);
    v48(v46, v1);
    v48(v45, v1);
    v48(v44, v1);
    swift_setDeallocating();
    (*(v40 + 8))(v43 + v42, v56);
    swift_deallocClassInstance();
    v49 = v57;
    sub_21CB81004();
    v48(v63, v1);
    v48(v49, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_21CBA0690;
    v51 = *(sub_21CAE9588() + 16);

    v52 = MEMORY[0x277D83C10];
    *(v50 + 56) = MEMORY[0x277D83B88];
    *(v50 + 64) = v52;
    *(v50 + 32) = v51;
  }

  v53 = sub_21CB85594();

  return v53;
}

uint64_t sub_21C8BA9F0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC70, &qword_21CBACFD8);
  v4 = *(v34 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v34);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = &v32 - v8;
  v9 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = a1;
  v12 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v13 = v43;

  v14 = HIBYTE(*(&v13 + 1)) & 0xFLL;
  if ((*(&v13 + 1) & 0x2000000000000000) == 0)
  {
    v14 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v14 || sub_21CAE917C())
  {
    v44 = 0u;
    memset(v45, 0, 25);
    v43 = 0u;
  }

  else
  {
    sub_21C8C5D40(v11, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v29 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v30 = swift_allocObject();
    sub_21C8C5E30(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    KeyPath = swift_getKeyPath();
    LOBYTE(v41[0]) = 1;
    LOBYTE(v39[0]) = 1;
    LOBYTE(v36) = 0;
    *&v43 = 0;
    BYTE8(v43) = 1;
    *&v44 = 0;
    WORD4(v44) = 1;
    *&v45[0] = sub_21C8C5C80;
    *(&v45[0] + 1) = v30;
    *&v45[1] = KeyPath;
    BYTE8(v45[1]) = 0;
  }

  v15 = sub_21CAE9C44();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  swift_getKeyPath();
  sub_21C8C5D40(v11, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v16 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v17 = swift_allocObject();
  sub_21C8C5E30(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  *(v17 + v16 + v10) = (v15 & 1) == 0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_21C8C5A34;
  *(v18 + 24) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC78, &qword_21CBC7920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC80, &unk_21CBAD050);
  sub_21C6EADEC(&qword_27CDEFC88, &qword_27CDEFC78, &qword_21CBC7920);
  sub_21C720BCC(&qword_27CDEFC90, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
  sub_21C8C5B38();
  v19 = v32;
  sub_21CB84FD4();
  v36 = v43;
  v37 = v44;
  v38[0] = v45[0];
  *(v38 + 9) = *(v45 + 9);
  v20 = v4[2];
  v22 = v33;
  v21 = v34;
  v20(v33, v19, v34);
  v23 = v37;
  v39[0] = v36;
  v39[1] = v37;
  v24 = v38[0];
  v40[0] = v38[0];
  v25 = *(v38 + 9);
  *(v40 + 9) = *(v38 + 9);
  *a2 = v36;
  a2[1] = v23;
  a2[2] = v24;
  *(a2 + 41) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFCC0, &qword_21CBAD070);
  v20(a2 + *(v26 + 48), v22, v21);
  sub_21C6EDBAC(v39, v41, &qword_27CDEFCC8, &qword_21CBAD078);
  sub_21C6EA794(&v43, &qword_27CDEFCC8, &qword_21CBAD078);
  v27 = v4[1];
  v27(v19, v21);
  v27(v22, v21);
  v41[0] = v36;
  v41[1] = v37;
  v42[0] = v38[0];
  *(v42 + 9) = *(v38 + 9);
  return sub_21C6EA794(v41, &qword_27CDEFCC8, &qword_21CBAD078);
}

uint64_t sub_21C8BAFB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v45 - v3;
  v45 = type metadata accessor for PMSharingGroup();
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v45);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB85C44();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v47 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB81024();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = [objc_opt_self() recentlyDeletedExpirationTimeInDays];
  sub_21C8C5D40(*(v0 + 8) + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_source, v21, type metadata accessor for PMRecentlyDeletedAccountsSource);
  v48 = v10;
  v22 = *(v10 + 48);
  v46 = v9;
  if (v22(v21, 2, v9))
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v14 + 8))(v17, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_21CBA0690;
    v50 = v49;
    sub_21C8C5CE4();
    v24 = sub_21CB85EE4();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_21C7C0050();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    v27 = sub_21CB85594();
  }

  else
  {
    v28 = v47;
    (*(v48 + 32))(v47, v21, v46);
    v29 = *(v0 + 24);
    sub_21CA1D444(v28, v4);
    v30 = v45;
    v31 = (v14 + 8);
    if ((*(v5 + 48))(v4, 1, v45) == 1)
    {
      sub_21C6EA794(v4, &qword_27CDF7670, &unk_21CBAA8F0);
      sub_21CB81014();
      sub_21CB81004();
      (*v31)(v17, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_21CBA0690;
      v50 = v49;
      sub_21C8C5CE4();
      v33 = sub_21CB85EE4();
      v35 = v34;
      *(v32 + 56) = MEMORY[0x277D837D0];
      *(v32 + 64) = sub_21C7C0050();
      *(v32 + 32) = v33;
      *(v32 + 40) = v35;
      v27 = sub_21CB85594();
    }

    else
    {
      sub_21C8C5E30(v4, v8, type metadata accessor for PMSharingGroup);
      sub_21CB81014();
      sub_21CB81004();
      (*v31)(v17, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_21CBA15B0;
      v37 = &v8[*(v30 + 20)];
      v39 = *v37;
      v38 = *(v37 + 1);
      v40 = MEMORY[0x277D837D0];
      *(v36 + 56) = MEMORY[0x277D837D0];
      v41 = sub_21C7C0050();
      *(v36 + 64) = v41;
      *(v36 + 32) = v39;
      *(v36 + 40) = v38;
      v50 = v49;
      sub_21C8C5CE4();

      v42 = sub_21CB85EE4();
      *(v36 + 96) = v40;
      *(v36 + 104) = v41;
      *(v36 + 72) = v42;
      *(v36 + 80) = v43;
      v27 = sub_21CB85594();

      sub_21C719240(v8, type metadata accessor for PMSharingGroup);
    }

    (*(v48 + 8))(v47, v46);
  }

  return v27;
}

uint64_t sub_21C8BB618(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for PMSharingGroup();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v28[-v16];
  v29 = a2;
  v30 = a3;
  if ((a4 & 1) == 0)
  {
    goto LABEL_4;
  }

  sub_21C8C5D40(a1, &v28[-v16], type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
  v18 = (*(v9 + 48))(v17, 2, v8);
  if (!v18)
  {
    sub_21C8C5E30(v17, v12, type metadata accessor for PMSharingGroup);
    v23 = &v12[*(v8 + 20)];
    v25 = *v23;
    v24 = v23[1];

    sub_21C719240(v12, type metadata accessor for PMSharingGroup);
LABEL_9:
    v31 = v25;
    v32 = v24;
    sub_21C71F3FC();
    v19 = sub_21CB84054();
    v21 = v26 & 1;
    goto LABEL_10;
  }

  if (v18 != 1)
  {
    if (qword_27CDEA498 != -1)
    {
      swift_once();
    }

    v25 = qword_27CE18748;
    v24 = qword_27CE18750;

    goto LABEL_9;
  }

LABEL_4:
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
LABEL_10:
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4130, &qword_21CBB1B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFCA8, &qword_21CBAD060);
  sub_21C87DED8();
  sub_21C8C5BD0();
  return sub_21CB85034();
}

uint64_t sub_21C8BB8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = a1;
  sub_21C8C5D40(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21C8C5E30(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PMAppRecentlyDeletedAccountsView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFCB8, &qword_21CBAD068);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730);
  sub_21C6EADEC(&qword_27CDEFCB0, &qword_27CDEFCB8, &qword_21CBAD068);
  sub_21C720BCC(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  return sub_21CB84FF4();
}

uint64_t sub_21C8BBAF8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFCD8, &qword_21CBAD0B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBC70, &qword_21CBAD0C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFCE0, &qword_21CBAD0C8);
  sub_21C7EC1C8();
  sub_21C6EADEC(&qword_27CDEFCE8, &qword_27CDEFCE0, &qword_21CBAD0C8);
  swift_getOpaqueTypeConformance2();
  return sub_21CB82614();
}

uint64_t sub_21C8BBC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C8BBCE8(a2, v7, v8, a3);
}

uint64_t sub_21C8BBCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v40 = a4;
  v6 = type metadata accessor for PMAccountRow();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC70, &qword_21CBAD0C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  sub_21C8C5D40(a1, v9, type metadata accessor for PMAccount);
  v14 = sub_21CB837E4();
  v15 = &v9[v6[7]];
  v16 = MEMORY[0x277CE04E8];
  *(v15 + 3) = MEMORY[0x277CE04F8];
  *(v15 + 4) = v16;
  *v15 = v14;
  v17 = v6[9];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v19 = &v9[v17];
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v41);

  type metadata accessor for PMGroupsStore();
  sub_21C720BCC(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v20 = sub_21CB82674();
  v22 = v21;

  *v19 = v20;
  v19[1] = v22;
  v23 = &v9[v6[10]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = &v9[v6[11]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v6[12];
  *&v9[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v26 = v6[13];
  *&v9[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v27 = v6[14];
  *&v9[v27] = swift_getKeyPath();
  v28 = &v9[v6[5]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v9[v6[6]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v9[v6[8]];
  *v30 = v39;
  *(v30 + 1) = a3;
  v31 = objc_opt_self();

  [v31 isPasswordsAppInstalled];
  sub_21CB85214();
  sub_21CB82AC4();
  v32 = sub_21C8C5E30(v9, v13, type metadata accessor for PMAccountRow);
  v33 = &v13[*(v10 + 36)];
  v34 = v46;
  *(v33 + 4) = v45;
  *(v33 + 5) = v34;
  *(v33 + 6) = v47;
  v35 = v42;
  *v33 = v41;
  *(v33 + 1) = v35;
  v36 = v44;
  *(v33 + 2) = v43;
  *(v33 + 3) = v36;
  MEMORY[0x28223BE20](v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFCE0, &qword_21CBAD0C8);
  sub_21C7EC1C8();
  sub_21C6EADEC(&qword_27CDEFCE8, &qword_27CDEFCE0, &qword_21CBAD0C8);
  sub_21CB84204();
  return sub_21C6EA794(v13, &qword_27CDEBC70, &qword_21CBAD0C0);
}

uint64_t sub_21C8BC17C(uint64_t a1)
{
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  result = sub_21CAE917C();
  if (result)
  {
    v9 = a1 + *(type metadata accessor for PMAppRecentlyDeletedAccountsView() + 24);
    sub_21C95B2C8(v6);
    sub_21CB823A4();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_21C8BC26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFAF8, &unk_21CBACBA8);
  v4 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC08, &qword_21CBACF28);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFAE8, &qword_21CBACBA0);
  v11 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v13 = &v32 - v12;
  v14 = type metadata accessor for PMAccount(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - v20;
  v22 = *(v2 + 8);
  v23 = sub_21CAEA9F8(a1);
  v24 = *(v23 + 16);
  if (v24)
  {
    if (v24 == 1)
    {
      sub_21C8C5D40(v23 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for PMAccount);

      sub_21C8C5E30(v18, v21, type metadata accessor for PMAccount);
      sub_21C8BD93C(v21, v13);
      sub_21C6EDBAC(v13, v10, &qword_27CDEFAE8, &qword_21CBACBA0);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDEFAE0, &qword_27CDEFAE8, &qword_21CBACBA0);
      sub_21C6EADEC(&qword_27CDEFAF0, &qword_27CDEFAF8, &unk_21CBACBA8);
      v25 = v35;
      sub_21CB83494();
      sub_21C6EA794(v13, &qword_27CDEFAE8, &qword_21CBACBA0);
      sub_21C719240(v21, type metadata accessor for PMAccount);
    }

    else
    {
      sub_21C8BE0BC(v23, v6);

      sub_21C6EDBAC(v6, v10, &qword_27CDEFAF8, &unk_21CBACBA8);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDEFAE0, &qword_27CDEFAE8, &qword_21CBACBA0);
      sub_21C6EADEC(&qword_27CDEFAF0, &qword_27CDEFAF8, &unk_21CBACBA8);
      v25 = v35;
      sub_21CB83494();
      sub_21C6EA794(v6, &qword_27CDEFAF8, &unk_21CBACBA8);
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFAD8, &qword_21CBACB98);
    return (*(*(v31 - 8) + 56))(v25, 0, 1, v31);
  }

  else
  {

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFAD8, &qword_21CBACB98);
    v27 = *(*(v26 - 8) + 56);
    v28 = v26;
    v29 = v35;

    return v27(v29, 1, 1, v28);
  }
}

uint64_t sub_21C8BC730(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v34 = sub_21CB82F84();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  v6 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v8 = (&v30 - v7);
  v37 = sub_21CB82A34();
  v9 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  v31 = (v10 + 32);
  v32 = (v3 + 8);
  v35 = (v10 + 8);

  v18 = 0;
  v39 = v8;
  while (v15)
  {
LABEL_11:
    v26 = (*(a1 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v15)))));
    v27 = v26[1];
    v41 = *v26;
    v28 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
    sub_21C6EDBAC(v38 + *(v28 + 28), v8, &qword_27CDEC0D0, &qword_21CBA3BF0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v36;
      v29 = v8;
      v24 = v37;
      (*v31)(v36, v29, v37);
    }

    else
    {
      v19 = *v8;

      sub_21CB85B04();
      v20 = a1;
      v21 = sub_21CB83C94();
      sub_21CB81C14();

      a1 = v20;
      v22 = v33;
      sub_21CB82F74();
      v23 = v36;
      swift_getAtKeyPath();

      (*v32)(v22, v34);
      v24 = v37;
    }

    v15 &= v15 - 1;
    v42 = v41;
    v43 = v27;
    sub_21CB82A14();
    (*v35)(v23, v24);

    v8 = v39;
  }

  while (1)
  {
    v25 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v25 >= v16)
    {
    }

    v15 = *(v12 + 8 * v25);
    ++v18;
    if (v15)
    {
      v18 = v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C8BCB08(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21CB858B4();
  v2[4] = sub_21CB858A4();
  v4 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C8BCBA0, v4, v3);
}

uint64_t sub_21C8BCBA0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = *(v2 + 8);
  sub_21CAEA660(v3);
  *(swift_task_alloc() + 16) = v2;
  sub_21CB85254();
  sub_21CB82524();

  v5 = v0[1];

  return v5();
}

uint64_t sub_21C8BCC6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v5 = qword_27CDEA4C0;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v4, v7);

  sub_21C833310(a1, sub_21C8C5780, v3);
}

uint64_t sub_21C8BCD5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v24 = *(v3 - 8);
  v4 = v24;
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC178, &unk_21CBA3D30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  sub_21C8BCFB8(a1, &v24 - v16);
  sub_21C8BD574(a1, v10);
  sub_21C6EDBAC(v17, v14, &qword_27CDEC178, &unk_21CBA3D30);
  v18 = *(v4 + 16);
  v19 = v3;
  v18(v7, v10, v3);
  v20 = v25;
  sub_21C6EDBAC(v14, v25, &qword_27CDEC178, &unk_21CBA3D30);
  v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFCF0, &unk_21CBAD1E0) + 48);
  v18(v21, v7, v19);
  v22 = *(v24 + 8);
  v22(v10, v19);
  sub_21C6EA794(v17, &qword_27CDEC178, &unk_21CBA3D30);
  v22(v7, v19);
  return sub_21C6EA794(v14, &qword_27CDEC178, &unk_21CBA3D30);
}

uint64_t sub_21C8BCFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for PMAccount(0);
  v4 = v3 - 8;
  v49 = *(v3 - 8);
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB81024();
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC198, &qword_21CBAF100);
  v15 = *(v53 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v53);
  v51 = &v45 - v17;
  v18 = type metadata accessor for PMAccount.Storage(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v4 + 32);
  v50 = a1;
  sub_21C8C5D40(a1 + v22, v21, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719240(v21, type metadata accessor for PMAccount.Storage);
LABEL_5:
    v43 = 1;
    v41 = v53;
    v42 = v54;
    return (*(v15 + 56))(v42, v43, 1, v41);
  }

  v23 = *v21;
  v24 = [v23 isCurrentUserOriginalContributor];

  if (!v24)
  {
    goto LABEL_5;
  }

  sub_21CB81014();
  sub_21CB81014();
  v25 = sub_21CB80FF4();
  v27 = v26;
  v28 = *(v45 + 8);
  v28(v11, v8);
  v28(v14, v8);
  v29 = v47;
  sub_21C8C5D40(v48, v47, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v30 = v52;
  sub_21C8C5D40(v50, v52, type metadata accessor for PMAccount);
  v31 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v32 = (v7 + *(v49 + 80) + v31) & ~*(v49 + 80);
  v33 = swift_allocObject();
  sub_21C8C5E30(v29, v33 + v31, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v34 = sub_21C8C5E30(v30, v33 + v32, type metadata accessor for PMAccount);
  v55[0] = v25;
  v55[1] = v27;
  MEMORY[0x28223BE20](v34);
  *(&v45 - 4) = v55;
  *(&v45 - 3) = 0x69662E6873617274;
  *(&v45 - 2) = 0xEA00000000006C6CLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  v35 = v51;
  sub_21CB84DA4();

  v36 = sub_21CB84A64();
  KeyPath = swift_getKeyPath();
  v38 = v53;
  v39 = (v35 + *(v53 + 36));
  *v39 = KeyPath;
  v39[1] = v36;
  v40 = v54;
  sub_21C716934(v35, v54, &qword_27CDEC198, &qword_21CBAF100);
  v41 = v38;
  v42 = v40;
  v43 = 0;
  return (*(v15 + 56))(v42, v43, 1, v41);
}

uint64_t sub_21C8BD574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v27 = a2;
  v2 = type metadata accessor for PMAccount(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  sub_21CB81014();
  sub_21CB81014();
  v22 = sub_21CB80FF4();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v11, v7);
  v17(v14, v7);
  sub_21C8C5D40(v24, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRecentlyDeletedAccountsView);
  sub_21C8C5D40(v26, v4, type metadata accessor for PMAccount);
  v18 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v19 = (v6 + *(v25 + 80) + v18) & ~*(v25 + 80);
  v20 = swift_allocObject();
  sub_21C8C5E30(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v18, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  sub_21C8C5E30(v4, v20 + v19, type metadata accessor for PMAccount);
  v31[0] = v22;
  v31[1] = v16;
  v28 = v31;
  v29 = 0xD000000000000014;
  v30 = 0x800000021CB92460;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB84DA4();
}

uint64_t sub_21C8BD93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC10, &unk_21CBACF30);
  v4 = *(v3 - 8);
  v77 = v3;
  v78 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v66 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v72 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v68 = &v66 - v12;
  v13 = sub_21CB84FB4();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  MEMORY[0x28223BE20](v13);
  v69 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v67 = &v66 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC18, &qword_21CBACF40);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v81 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v80 = &v66 - v22;
  v23 = type metadata accessor for PMAccount.Storage(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC20, &qword_21CBACF48);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v79 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v75 = &v66 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8A8, &unk_21CBACF50);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v74 = &v66 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v66 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v38 = (type metadata accessor for PMAccount(0) - 8);
  v39 = *(*v38 + 72);
  v40 = (*(*v38 + 80) + 32) & ~*(*v38 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_21CBA0690;
  sub_21C8C5D40(a1, v41 + v40, type metadata accessor for PMAccount);
  v73 = v37;
  sub_21C8C08C8(v41, v37);

  v42 = v38[8];
  v43 = a1;
  sub_21C8C5D40(a1 + v42, v26, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719240(v26, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v44 = *v26;
    v45 = [*v26 canUserEditSavedAccount];

    if (!v45)
    {
      v59 = 1;
      v58 = v75;
      goto LABEL_6;
    }
  }

  v46 = v80;
  sub_21C8BF2D8(a1, v80);
  v47 = v67;
  sub_21CB84FA4();
  v48 = v68;
  sub_21C8BFF38(v43, v68);
  v49 = v81;
  sub_21C6EDBAC(v46, v81, &qword_27CDEFC18, &qword_21CBACF40);
  v51 = v70;
  v50 = v71;
  v52 = v7;
  v53 = *(v70 + 16);
  v54 = v69;
  v53(v69, v47, v71);
  v55 = v72;
  sub_21C6EDBAC(v48, v72, &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C6EDBAC(v49, v52, &qword_27CDEFC18, &qword_21CBACF40);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC30, &qword_21CBACF68);
  v53((v52 + *(v56 + 48)), v54, v50);
  sub_21C6EDBAC(v55, v52 + *(v56 + 64), &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C6EA794(v48, &qword_27CDEB8C0, &unk_21CBA26A0);
  v57 = *(v51 + 8);
  v57(v47, v50);
  sub_21C6EA794(v80, &qword_27CDEFC18, &qword_21CBACF40);
  sub_21C6EA794(v55, &qword_27CDEB8C0, &unk_21CBA26A0);
  v57(v54, v50);
  sub_21C6EA794(v81, &qword_27CDEFC18, &qword_21CBACF40);
  v58 = v75;
  sub_21C716934(v52, v75, &qword_27CDEFC10, &unk_21CBACF30);
  v59 = 0;
LABEL_6:
  (*(v78 + 56))(v58, v59, 1, v77);
  v61 = v73;
  v60 = v74;
  sub_21C6EDBAC(v73, v74, &qword_27CDEC8A8, &unk_21CBACF50);
  v62 = v79;
  sub_21C6EDBAC(v58, v79, &qword_27CDEFC20, &qword_21CBACF48);
  v63 = v76;
  sub_21C6EDBAC(v60, v76, &qword_27CDEC8A8, &unk_21CBACF50);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC28, &qword_21CBACF60);
  sub_21C6EDBAC(v62, v63 + *(v64 + 48), &qword_27CDEFC20, &qword_21CBACF48);
  sub_21C6EA794(v58, &qword_27CDEFC20, &qword_21CBACF48);
  sub_21C6EA794(v61, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v62, &qword_27CDEFC20, &qword_21CBACF48);
  return sub_21C6EA794(v60, &qword_27CDEC8A8, &unk_21CBACF50);
}

uint64_t sub_21C8BE0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v152 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v153 = v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v154 = v122 - v9;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC40, &qword_21CBACFB0);
  v10 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v145 = v122 - v11;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC48, &qword_21CBACFB8);
  v12 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v132 = v122 - v13;
  v14 = sub_21CB84FB4();
  v155 = *(v14 - 8);
  v15 = v155[8];
  MEMORY[0x28223BE20](v14);
  v131 = v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v140 = v122 - v18;
  v19 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v157 = v22;
  v23 = v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21CB81024();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v122 - v30;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v158 = *(v142 - 8);
  v32 = *(v158 + 64);
  MEMORY[0x28223BE20](v142);
  v130 = v122 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v138 = v122 - v35;
  MEMORY[0x28223BE20](v36);
  v139 = v122 - v37;
  MEMORY[0x28223BE20](v38);
  v156 = v122 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC50, &qword_21CBACFC0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v150 = v122 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v141 = v122 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8A8, &unk_21CBACF50);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v148 = v122 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v147 = v122 - v49;
  sub_21C8C08C8(a1, v122 - v49);
  v50 = *(v2 + 8);
  v149 = a1;
  v51 = sub_21CAEACD8(a1);
  v151 = v3;
  v137 = v23;
  v136 = v20;
  v146 = v24;
  v135 = v25;
  v134 = v28;
  v133 = v31;
  if (v51)
  {
    sub_21CB81014();
    sub_21CB81014();
    v52 = v31;
    v123 = sub_21CB80FF4();
    v54 = v53;
    v122[1] = v53;
    v129 = v14;
    v55 = *(v25 + 8);
    v128 = v55;
    v55(v28, v24);
    v55(v52, v24);
    v125 = 0x800000021CB92460;
    v127 = type metadata accessor for PMAppRecentlyDeletedAccountsView;
    sub_21C8C5D40(v3, v23, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v56 = *(v20 + 80);
    v124 = (v56 + 16) & ~v56;
    v57 = swift_allocObject();
    v58 = v23;
    v126 = type metadata accessor for PMAppRecentlyDeletedAccountsView;
    v59 = sub_21C8C5E30(v23, v57 + ((v56 + 16) & ~v56), type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v122[2] = v122;
    v159 = v123;
    v160 = v54;
    MEMORY[0x28223BE20](v59);
    v122[-4] = &v159;
    v122[-3] = 0xD000000000000014;
    v122[-2] = 0x800000021CB92460;
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21CB84DA4();

    sub_21CB81014();
    sub_21CB81014();
    v60 = sub_21CB80FF4();
    v62 = v61;
    v63 = v146;
    v64 = v128;
    v128(v28, v146);
    v64(v52, v63);
    sub_21C8C5D40(v151, v58, v127);
    v65 = v124;
    v66 = swift_allocObject();
    v67 = sub_21C8C5E30(v58, v66 + v65, v126);
    v159 = v60;
    v160 = v62;
    MEMORY[0x28223BE20](v67);
    v122[-4] = &v159;
    v122[-3] = 0xD000000000000014;
    v122[-2] = v125;
    v68 = v139;
    sub_21CB84DA4();

    v69 = v140;
    sub_21CB84FA4();
    v70 = *(v158 + 16);
    v71 = v138;
    v72 = v142;
    v70(v138, v156, v142);
    v73 = v130;
    v70(v130, v68, v72);
    v128 = v155[2];
    v74 = v131;
    v75 = v129;
    (v128)(v131, v69, v129);
    v76 = v132;
    v70(v132, v71, v72);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC68, &qword_21CBACFD0);
    v78 = v76;
    v70(&v76[*(v77 + 48)], v73, v72);
    (v128)(&v76[*(v77 + 64)], v74, v75);
    v79 = v155[1];
    ++v155;
    v79(v74, v75);
    v80 = *(v158 + 8);
    v80(v73, v72);
    v80(v138, v72);
    sub_21C6EDBAC(v78, v145, &qword_27CDEFC48, &qword_21CBACFB8);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEFC58, &qword_27CDEFC48, &qword_21CBACFB8);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    v81 = v141;
    sub_21CB83494();
    sub_21C6EA794(v78, &qword_27CDEFC48, &qword_21CBACFB8);
    v79(v140, v129);
    v80(v139, v72);
    v82 = v156;
    v80(v156, v72);
    v83 = v72;
    v84 = v81;
    v85 = v82;
  }

  else
  {
    sub_21CB81014();
    sub_21CB81014();
    v86 = sub_21CB80FF4();
    v87 = v28;
    v89 = v88;
    v90 = *(v25 + 8);
    v90(v87, v24);
    v90(v31, v24);
    sub_21C8C5D40(v3, v23, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v91 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v92 = swift_allocObject();
    v93 = sub_21C8C5E30(v23, v92 + v91, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v159 = v86;
    v160 = v89;
    MEMORY[0x28223BE20](v93);
    v122[-4] = &v159;
    v122[-3] = 0xD000000000000014;
    v122[-2] = 0x800000021CB92460;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    v85 = v156;
    sub_21CB84DA4();

    v94 = v158;
    v95 = v142;
    (*(v158 + 16))(v145, v85, v142);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEFC58, &qword_27CDEFC48, &qword_21CBACFB8);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    v96 = v141;
    sub_21CB83494();
    (*(v94 + 8))(v85, v95);
    v84 = v96;
    v83 = v95;
  }

  if (sub_21CAEF570(v149))
  {
    v97 = v133;
    sub_21CB81014();
    v98 = v134;
    sub_21CB81014();
    v99 = sub_21CB80FF4();
    v101 = v100;
    v102 = v83;
    v103 = *(v135 + 8);
    v104 = v98;
    v105 = v146;
    v103(v104, v146);
    v103(v97, v105);
    v106 = v137;
    sub_21C8C5D40(v151, v137, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v107 = (*(v136 + 80) + 16) & ~*(v136 + 80);
    v108 = swift_allocObject();
    v109 = sub_21C8C5E30(v106, v108 + v107, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v159 = v99;
    v160 = v101;
    MEMORY[0x28223BE20](v109);
    v122[-4] = &v159;
    v122[-3] = 0x6873617274;
    v122[-2] = 0xE500000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    v83 = v102;
    sub_21CB84DA4();

    v110 = v158;
    (*(v158 + 32))(v154, v85, v102);
    v111 = 0;
  }

  else
  {
    v111 = 1;
    v110 = v158;
  }

  v112 = v154;
  (*(v110 + 56))(v154, v111, 1, v83);
  v114 = v147;
  v113 = v148;
  sub_21C6EDBAC(v147, v148, &qword_27CDEC8A8, &unk_21CBACF50);
  v115 = v84;
  v116 = v84;
  v117 = v150;
  sub_21C6EDBAC(v115, v150, &qword_27CDEFC50, &qword_21CBACFC0);
  v118 = v153;
  sub_21C6EDBAC(v112, v153, &qword_27CDEB8C0, &unk_21CBA26A0);
  v119 = v152;
  sub_21C6EDBAC(v113, v152, &qword_27CDEC8A8, &unk_21CBACF50);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC60, &qword_21CBACFC8);
  sub_21C6EDBAC(v117, v119 + *(v120 + 48), &qword_27CDEFC50, &qword_21CBACFC0);
  sub_21C6EDBAC(v118, v119 + *(v120 + 64), &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C6EA794(v112, &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C6EA794(v116, &qword_27CDEFC50, &qword_21CBACFC0);
  sub_21C6EA794(v114, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v118, &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C6EA794(v117, &qword_27CDEFC50, &qword_21CBACFC0);
  return sub_21C6EA794(v113, &qword_27CDEC8A8, &unk_21CBACF50);
}

uint64_t sub_21C8BF2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC38, &unk_21CBACF70);
  v3 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v93 = v70 - v4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8F0, &qword_21CBA26B8);
  v5 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v85 = v70 - v6;
  v7 = type metadata accessor for PMAccount(0);
  v81 = *(v7 - 8);
  v8 = *(v81 + 64);
  MEMORY[0x28223BE20](v7);
  v88 = v9;
  v89 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
  v80 = *(v10 - 8);
  v11 = *(v80 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v87 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_21CB81024();
  v90 = *(v86 - 8);
  v12 = *(v90 + 64);
  MEMORY[0x28223BE20](v86);
  v14 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v70 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18);
  v83 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v82 = v70 - v23;
  MEMORY[0x28223BE20](v24);
  v84 = v70 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = v70 - v27;
  v29 = type metadata accessor for PMAccount.Storage(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = (v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_21CAEFDA0(a1))
  {
    sub_21C8C5D40(a1 + *(v7 + 24), v32, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C719240(v32, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v33 = *v32;
      v34 = [v33 isCurrentUserOriginalContributor];

      if (v34)
      {
        sub_21CB81014();
        sub_21CB81014();
        v71 = sub_21CB80FF4();
        v35 = *(v90 + 8);
        v90 += 8;
        v77 = v35;
        v78 = v36;
        v37 = v86;
        v35(v14, v86);
        v35(v17, v37);
        v79 = 0x800000021CB92460;
        v76 = type metadata accessor for PMAppRecentlyDeletedAccountsView;
        v38 = v87;
        sub_21C8C5D40(v95, v87, type metadata accessor for PMAppRecentlyDeletedAccountsView);
        v75 = type metadata accessor for PMAccount;
        v39 = v89;
        sub_21C8C5D40(a1, v89, type metadata accessor for PMAccount);
        v40 = *(v80 + 80);
        v41 = *(v81 + 80);
        v42 = v11 + v41 + ((v40 + 16) & ~v40);
        v43 = (v40 + 16) & ~v40;
        v44 = v42 & ~v41;
        v80 = v43;
        v81 = v40 | v41;
        v72 = v44;
        v45 = swift_allocObject();
        v74 = type metadata accessor for PMAppRecentlyDeletedAccountsView;
        v46 = v45 + v43;
        v47 = v45;
        v70[1] = v45;
        sub_21C8C5E30(v38, v46, type metadata accessor for PMAppRecentlyDeletedAccountsView);
        v73 = type metadata accessor for PMAccount;
        v48 = sub_21C8C5E30(v39, v47 + v44, type metadata accessor for PMAccount);
        v70[2] = v70;
        v96 = v71;
        v97 = v78;
        MEMORY[0x28223BE20](v48);
        v70[-4] = &v96;
        v70[-3] = 0xD000000000000014;
        v70[-2] = v79;
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
        v70[3] = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
        sub_21CB84DA4();

        sub_21CB81014();
        sub_21CB81014();
        v49 = sub_21CB80FF4();
        v51 = v50;
        v52 = v14;
        v53 = v86;
        v54 = v77;
        v77(v52, v86);
        v54(v17, v53);
        v55 = v87;
        sub_21C8C5D40(v95, v87, v76);
        v56 = a1;
        v57 = v89;
        sub_21C8C5D40(v56, v89, v75);
        v58 = v72;
        v59 = swift_allocObject();
        sub_21C8C5E30(v55, v59 + v80, v74);
        v60 = sub_21C8C5E30(v57, v59 + v58, v73);
        v96 = v49;
        v97 = v51;
        MEMORY[0x28223BE20](v60);
        v70[-4] = &v96;
        v70[-3] = 0xD000000000000014;
        v70[-2] = v79;
        v61 = v84;
        sub_21CB84DA4();

        v62 = v19[2];
        v63 = v82;
        v62(v82, v28, v18);
        v64 = v83;
        v65 = v61;
        v62(v83, v61, v18);
        v66 = v85;
        v62(v85, v63, v18);
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9C8, &qword_21CBACF80);
        v62((v66 + *(v67 + 48)), v64, v18);
        v68 = v19[1];
        v68(v64, v18);
        v68(v63, v18);
        sub_21C6EDBAC(v66, v93, &qword_27CDEB8F0, &qword_21CBA26B8);
        swift_storeEnumTagMultiPayload();
        sub_21C6EADEC(&qword_27CDEB8E8, &qword_27CDEB8F0, &qword_21CBA26B8);
        sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
        sub_21CB83494();
        sub_21C6EA794(v66, &qword_27CDEB8F0, &qword_21CBA26B8);
        v68(v65, v18);
        return (v68)(v28, v18);
      }
    }
  }

  sub_21C8BD574(a1, v28);
  (v19[2])(v93, v28, v18);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDEB8E8, &qword_27CDEB8F0, &qword_21CBA26B8);
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21CB83494();
  return (v19[1])(v28, v18);
}

uint64_t sub_21C8BFE18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21CBA0690;
  sub_21C8C5D40(a2, v7 + v6, type metadata accessor for PMAccount);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C8BFF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for PMAccount(0);
  v4 = v3 - 8;
  v38 = *(v3 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v36 = &v34 - v14;
  v15 = type metadata accessor for PMAccount.Storage(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1;
  sub_21C8C5D40(a1 + *(v4 + 32), v18, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719240(v18, type metadata accessor for PMAccount.Storage);
LABEL_5:
    v32 = 1;
    v31 = v41;
    return (*(v12 + 56))(v31, v32, 1, v11);
  }

  v20 = *v18;
  v21 = [v20 isCurrentUserOriginalContributor];

  if (!v21)
  {
    goto LABEL_5;
  }

  v22 = v39;
  sub_21CB81ED4();
  v23 = sub_21CB81F14();
  (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  sub_21C8C5D40(v37, &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v24 = v19;
  v25 = v40;
  sub_21C8C5D40(v24, v40, type metadata accessor for PMAccount);
  v26 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v27 = (v7 + *(v38 + 80) + v26) & ~*(v38 + 80);
  v28 = swift_allocObject();
  sub_21C8C5E30(&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v26, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  sub_21C8C5E30(v25, v28 + v27, type metadata accessor for PMAccount);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  v29 = v36;
  sub_21CB84D94();
  v30 = v41;
  (*(v12 + 32))(v41, v29, v11);
  v31 = v30;
  v32 = 0;
  return (*(v12 + 56))(v31, v32, 1, v11);
}

uint64_t sub_21C8C03FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21CBA0690;
  sub_21C8C5D40(a2, v7 + v6, type metadata accessor for PMAccount);
  v8 = sub_21C87E898(v7);
  v10 = v9;
  v12 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = sub_21CB81DA4();
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v15;
  *v15 = 0x8000000000000000;
  sub_21C8D4880(v8, v10, v12, 0, isUniquelyReferenced_nonNull_native);
  *v15 = v19;
  v13(v20, 0);
}

uint64_t sub_21C8C05A8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v7, v0);
  v13[0] = v8;
  v13[1] = v10;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C8C0730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v6 = *(type metadata accessor for PMAccount(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21CBA0690;
  sub_21C8C5D40(a2, v9 + v8, type metadata accessor for PMAccount);
  v10 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v11 = qword_27CDEA4C0;

  if (v11 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v10, v13);

  sub_21C833194(v9, a3, v5);
}

uint64_t sub_21C8C08C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21CB82F84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
  v11 = v2 + *(v10 + 36);
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {

    sub_21CB85B04();
    v14 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v12, 0);
    v10 = (*(v6 + 8))(v9, v5);
    if (v17[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    MEMORY[0x28223BE20](v10);
    *&v17[-16] = a1;
    *&v17[-8] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21CB85054();
    v13 = 0;
    goto LABEL_6;
  }

  if (v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = 1;
LABEL_6:
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8D0, &unk_21CBA4AF0);
  return (*(*(v15 - 8) + 56))(a2, v13, 1, v15);
}

uint64_t sub_21C8C0B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21C8C5D40(a2, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  sub_21C8C5E30(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v11 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  return sub_21CB84DA4();
}

void sub_21C8C0CE0(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v30 = sub_21CB82F84();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  v6 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v8 = (&v27 - v7);
  v9 = sub_21CB82A34();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PMAccount(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a1 + 16);
  if (v19)
  {
    v31 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView() + 28);
    v20 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v21 = *(v15 + 72);
    v27 = (v10 + 32);
    v28 = (v3 + 8);
    v22 = (v10 + 8);
    v34 = v13;
    do
    {
      sub_21C8C5D40(v20, v18, type metadata accessor for PMAccount);
      sub_21C6EDBAC(v33 + v31, v8, &qword_27CDEC0D0, &qword_21CBA3BF0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v27)(v13, v8, v9);
      }

      else
      {
        v24 = *v8;
        sub_21CB85B04();
        v25 = sub_21CB83C94();
        sub_21CB81C14();

        v26 = v29;
        sub_21CB82F74();
        swift_getAtKeyPath();

        (*v28)(v26, v30);
      }

      v23 = v18[1];
      v35 = *v18;
      v36 = v23;

      sub_21CB82A14();
      v13 = v34;

      (*v22)(v13, v9);
      sub_21C719240(v18, type metadata accessor for PMAccount);
      v20 += v21;
      --v19;
    }

    while (v19);
  }
}

uint64_t sub_21C8C10FC(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16) == 1;
  sub_21CB81014();
  v8 = sub_21CB81004();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v12[0] = v8;
  v12[1] = v10;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C8C1258(uint64_t a1)
{
  v1 = *(a1 + 8);

  sub_21CAEA250();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_21CB81DC4();
}

uint64_t sub_21C8C12CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = sub_21CAEA250();
  v5 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v6 = qword_27CDEA4C0;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v5, v8);

  sub_21C833194(v4, a2, v3);
}

uint64_t sub_21C8C13C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBC0, &qword_21CBAAC90);
  v3 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v31 = &v27 - v4;
  v5 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v28 = a1;
  v17 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v18 = *(v33 + 16);

  v19 = *(sub_21CAE9588() + 16);

  sub_21CB81014();
  v20 = sub_21CB81004();
  v22 = v21;
  (*(v8 + 8))(v11, v7);
  v33 = v20;
  v34 = v22;
  v23 = v29;
  sub_21C8C5D40(v28, v29, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v24 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v25 = swift_allocObject();
  sub_21C8C5E30(v23, v25 + v24, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  sub_21C71F3FC();
  sub_21CB84DE4();
  (*(v13 + 16))(v31, v16, v12);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  sub_21CB83494();
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_21C8C18C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return sub_21CAE9A98(MEMORY[0x277D84FA0]);
}

uint64_t sub_21C8C1950(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = (v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 8);
  v8 = sub_21CAE9588();
  v9 = *(v8 + 16);
  if (v9)
  {
    v21[2] = v7;
    v22 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v9, 0);
    v10 = v22;
    v11 = *(v3 + 80);
    v21[1] = v8;
    v12 = v8 + ((v11 + 32) & ~v11);
    v13 = *(v3 + 72);
    do
    {
      sub_21C8C5D40(v12, v6, type metadata accessor for PMAccount);
      v15 = *v6;
      v14 = v6[1];

      sub_21C719240(v6, type metadata accessor for PMAccount);
      v22 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21C7B0C0C((v16 > 1), v17 + 1, 1);
        v10 = v22;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v19 = sub_21CB009AC(v10);

  return sub_21CAE9A98(v19);
}

uint64_t sub_21C8C1B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_21CB81024();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for PMPlatformRoleButton();
  v6 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v51 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_21CB81F14();
  v50 = *(v54 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v54);
  v49 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBD8, &qword_21CBACE68);
  v10 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v57 = &v46 - v11;
  v12 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v14 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v16 = &v46 - v15;
  v17 = sub_21CB85114();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  v53 = a1;
  v25 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  (*(v18 + 104))(v21, *MEMORY[0x277CDF0D8], v17);
  LOBYTE(a1) = sub_21CB850F4();
  v26 = *(v18 + 8);
  v26(v21, v17);
  v26(v24, v17);
  if (a1)
  {
    sub_21C8C5D40(v53, &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v27 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v28 = swift_allocObject();
    sub_21C8C5E30(&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    sub_21CB84DA4();
    v29 = sub_21CAEB488() == 0;
    KeyPath = swift_getKeyPath();
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    v32 = v57;
    v33 = &v16[*(v56 + 36)];
    *v33 = KeyPath;
    v33[1] = sub_21C87E800;
    v33[2] = v31;
    sub_21C6EDBAC(v16, v32, &qword_27CDEDA98, &unk_21CBABCB0);
    swift_storeEnumTagMultiPayload();
    sub_21C844588();
    sub_21C720BCC(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
    sub_21CB83494();
    return sub_21C6EA794(v16, &qword_27CDEDA98, &unk_21CBABCB0);
  }

  else
  {
    v35 = v49;
    sub_21CB81F04();
    v36 = v46;
    sub_21CB81014();
    v37 = sub_21CB81004();
    v39 = v38;
    (*(v47 + 8))(v36, v48);
    v40 = v58;
    v42 = v50;
    v41 = v51;
    (*(v50 + 16))(v51 + *(v58 + 20), v35, v54);
    sub_21C8C5D40(v53, &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRecentlyDeletedAccountsView);
    v43 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v44 = swift_allocObject();
    sub_21C8C5E30(&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v44 + v43, type metadata accessor for PMAppRecentlyDeletedAccountsView);
    *v41 = v37;
    v41[1] = v39;
    v45 = (v41 + *(v40 + 24));
    *v45 = sub_21C8C5470;
    v45[1] = v44;
    sub_21C8C5D40(v41, v57, type metadata accessor for PMPlatformRoleButton);
    swift_storeEnumTagMultiPayload();
    sub_21C844588();
    sub_21C720BCC(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
    sub_21CB83494();
    sub_21C719240(v41, type metadata accessor for PMPlatformRoleButton);
    return (*(v42 + 8))(v35, v54);
  }
}

uint64_t sub_21C8C2294@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C8C23B8()
{
  sub_21CB85254();
  sub_21CB82524();
}

uint64_t sub_21C8C2418@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB98, &qword_21CBACD58);
  v71 = *(v73 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v58 = (&v55 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB98, &qword_21CBACD60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBA0, &qword_21CBACD68);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v72 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v76 = &v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBA8, &qword_21CBACD70);
  v69 = *(v15 - 8);
  v70 = v15;
  v16 = *(v69 + 64);
  MEMORY[0x28223BE20](v15);
  v68 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v75 = &v55 - v19;
  v20 = sub_21CB85114();
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x28223BE20](v20);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v55 - v26;
  v28 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v29 = v21[13];
  v64 = *MEMORY[0x277CDF0D0];
  v62 = v29;
  v63 = v21 + 13;
  v29(v24);
  v30 = sub_21CB850F4();
  v31 = v21[1];
  v31(v24, v20);
  v61 = v31;
  v31(v27, v20);
  v60 = v28;
  if (v30)
  {
    type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
    sub_21C720BCC(&qword_27CDEF9F0, type metadata accessor for PMRecentlyDeletedAccountsViewModel);

    v66 = sub_21CB82674();
    v67 = v32;

    v65 = 1;
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v65 = 0;
  }

  v33 = sub_21CB85184();
  v59 = &v55;
  MEMORY[0x28223BE20](v33);
  sub_21CB831C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBB0, &qword_21CBACD78);
  v55 = a1;
  sub_21C720BCC(&qword_27CDEC048, MEMORY[0x277CDDEB0]);
  sub_21C8C525C(&qword_27CDEFBB8, &qword_27CDEFBB0, &qword_21CBACD78, sub_21C8C52D8);
  sub_21CB85194();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v62(v24, v64, v20);
  v34 = sub_21CB850F4();
  v35 = v24;
  v36 = v61;
  v61(v35, v20);
  v36(v27, v20);
  v37 = 1;
  v38 = v76;
  if (v34)
  {
    v39 = v56;
    sub_21C8C2C58(v56);
    v40 = v57;
    sub_21C6EDBAC(v39, v57, &qword_27CDEEB98, &qword_21CBACD60);
    v41 = v58;
    *v58 = 0;
    *(v41 + 8) = 1;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBD0, &qword_21CBACD88);
    sub_21C6EDBAC(v40, v41 + *(v42 + 48), &qword_27CDEEB98, &qword_21CBACD60);
    sub_21C6EA794(v39, &qword_27CDEEB98, &qword_21CBACD60);
    sub_21C6EA794(v40, &qword_27CDEEB98, &qword_21CBACD60);
    sub_21C716934(v41, v38, &qword_27CDEFB98, &qword_21CBACD58);
    v37 = 0;
  }

  (*(v71 + 56))(v38, v37, 1, v73);
  v44 = v68;
  v43 = v69;
  v45 = *(v69 + 16);
  v46 = v75;
  v47 = v70;
  v45(v68, v75, v70);
  v48 = v38;
  v49 = v72;
  sub_21C6EDBAC(v48, v72, &qword_27CDEFBA0, &qword_21CBACD68);
  v50 = v74;
  v51 = v67;
  *v74 = v66;
  v50[1] = v51;
  v50[2] = 0;
  *(v50 + 24) = v65;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBC8, &qword_21CBACD80);
  v45(v50 + *(v52 + 48), v44, v47);
  sub_21C6EDBAC(v49, v50 + *(v52 + 64), &qword_27CDEFBA0, &qword_21CBACD68);
  sub_21C6EA794(v76, &qword_27CDEFBA0, &qword_21CBACD68);
  v53 = *(v43 + 8);
  v53(v46, v47);
  sub_21C6EA794(v49, &qword_27CDEFBA0, &qword_21CBACD68);
  v53(v44, v47);
}

uint64_t sub_21C8C2C04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (sub_21CAEB488() < 1)
  {
    result = 0;
    v5 = 0;
  }

  else
  {
    result = sub_21C8BA1C0();
  }

  *a2 = result;
  a2[1] = v5;
  return result;
}

__n128 sub_21C8C2C58@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v40 - v8;
  *&v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v42);
  v13 = &v40 - v12;
  v40.n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v14 = *(*(v40.n128_u64[0] - 8) + 64);
  MEMORY[0x28223BE20](v40.n128_u64[0]);
  v16 = &v40 - v15;
  sub_21CB81ED4();
  v17 = sub_21CB81F14();
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  sub_21C8C5D40(v2, &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v43 = v5;
  v19 = swift_allocObject();
  v41 = v18;
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C8C5E30(v44, v19 + v18, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB84D94();
  v20 = v2[1];
  v21 = *(sub_21CAEA250() + 16);

  if (v21)
  {
    v22 = sub_21CAEA250();
    v23 = sub_21CAEF570(v22);

    v24 = !v23;
  }

  else
  {
    v24 = 1;
  }

  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v24 & 1;
  (*(v10 + 32))(v16, v13, v42);
  v27 = &v16[*(v40.n128_u64[0] + 36)];
  *v27 = KeyPath;
  v27[1] = sub_21C735744;
  v27[2] = v26;
  v28 = *v2;
  type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
  sub_21C720BCC(&qword_27CDEF9F0, type metadata accessor for PMRecentlyDeletedAccountsViewModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v31 = v52;
  v30 = v53;
  v32 = v54;
  MEMORY[0x28223BE20](v29);
  *(&v40 - 16) = 1;
  swift_getKeyPath();
  v49 = v31;
  v50 = v30;
  v51 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBB0, &qword_21CBAAC70);
  sub_21CB84F44();

  v42 = v46;
  v40 = v47;
  v33 = v48;

  v34 = v44;
  sub_21C8C5D40(v2, v44, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v35 = v41;
  v36 = swift_allocObject();
  sub_21C8C5E30(v34, v36 + v35, type metadata accessor for PMAppRecentlyDeletedAccountsView);
  v37 = v45;
  sub_21C716934(v16, v45, &qword_27CDEEBA0, &qword_21CBABC80);
  v38 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEB98, &qword_21CBACD60) + 36);
  result = v40;
  *v38 = v42;
  *(v38 + 16) = result;
  *(v38 + 32) = v33;
  *(v38 + 40) = &unk_21CBACE40;
  *(v38 + 48) = v36;
  return result;
}

uint64_t sub_21C8C3220(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v4 = sub_21CAEA250();
  v5 = sub_21C87E898(v4);
  v7 = v6;
  v9 = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = sub_21CB81DA4();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v12;
  *v12 = 0x8000000000000000;
  sub_21C8D4880(v5, v7, v9, a2, isUniquelyReferenced_nonNull_native);
  *v12 = v16;
  v10(v17, 0);
}

uint64_t sub_21C8C3320()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v9[0] = v5;
  v9[1] = v7;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C8C3448(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21CB858B4();
  v2[4] = sub_21CB858A4();
  v4 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C8C34E0, v4, v3);
}

uint64_t sub_21C8C34E0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = *(v2 + 8);
  sub_21CAEA660(v3);
  *(swift_task_alloc() + 16) = v2;
  sub_21CB85254();
  sub_21CB82524();

  v5 = v0[1];

  return v5();
}

uint64_t sub_21C8C35AC(uint64_t a1, unsigned int *a2)
{
  v4 = sub_21CB85114();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  v13 = *(a1 + 8);
  (*(v5 + 104))(&v15 - v11, *a2, v4, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v5 + 16))(v8, v12, v4);

  sub_21CB81DC4();
  return (*(v5 + 8))(v12, v4);
}

unint64_t sub_21C8C3730()
{
  result = qword_27CDEFA30;
  if (!qword_27CDEFA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA38, &qword_21CBACB40);
    sub_21C720BCC(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
    sub_21C8C37EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFA30);
  }

  return result;
}

unint64_t sub_21C8C37EC()
{
  result = qword_27CDEFA40;
  if (!qword_27CDEFA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA48, &qword_21CBACB48);
    sub_21C8C3878();
    sub_21C8C3E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFA40);
  }

  return result;
}

unint64_t sub_21C8C3878()
{
  result = qword_27CDEFA50;
  if (!qword_27CDEFA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA58, &qword_21CBACB50);
    sub_21C8C3904();
    sub_21C8C3E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFA50);
  }

  return result;
}

unint64_t sub_21C8C3904()
{
  result = qword_27CDEFA60;
  if (!qword_27CDEFA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA68, &qword_21CBACB58);
    sub_21C8C3990();
    sub_21C8C3DF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFA60);
  }

  return result;
}

unint64_t sub_21C8C3990()
{
  result = qword_27CDEFA70;
  if (!qword_27CDEFA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA78, &qword_21CBACB60);
    sub_21C8C3A1C();
    sub_21C72EC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFA70);
  }

  return result;
}

unint64_t sub_21C8C3A1C()
{
  result = qword_27CDEFA80;
  if (!qword_27CDEFA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA88, &qword_21CBACB68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA90, &qword_21CBACB70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA98, &qword_21CBACB78);
    sub_21C8C3B28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C847DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFA80);
  }

  return result;
}

unint64_t sub_21C8C3B28()
{
  result = qword_27CDEFAA0;
  if (!qword_27CDEFAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA98, &qword_21CBACB78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFAA8, &qword_21CBACB80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFAB0, &qword_21CBACB88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFAB8, &qword_21CBACB90);
    sub_21C6EADEC(&qword_27CDEFAC0, &qword_27CDEFAB8, &qword_21CBACB90);
    swift_getOpaqueTypeConformance2();
    sub_21C8C525C(&qword_27CDEFAC8, &qword_27CDEFAB0, &qword_21CBACB88, sub_21C8C3D14);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFAA0);
  }

  return result;
}

unint64_t sub_21C8C3D14()
{
  result = qword_27CDEFAD0;
  if (!qword_27CDEFAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFAD8, &qword_21CBACB98);
    sub_21C6EADEC(&qword_27CDEFAE0, &qword_27CDEFAE8, &qword_21CBACBA0);
    sub_21C6EADEC(&qword_27CDEFAF0, &qword_27CDEFAF8, &unk_21CBACBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFAD0);
  }

  return result;
}

unint64_t sub_21C8C3DF4()
{
  result = qword_27CDEFB00;
  if (!qword_27CDEFB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFB00);
  }

  return result;
}

unint64_t sub_21C8C3E48()
{
  result = qword_27CDEFB08;
  if (!qword_27CDEFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFB08);
  }

  return result;
}

unint64_t sub_21C8C3E9C()
{
  result = qword_27CDEFB10;
  if (!qword_27CDEFB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFB18, &unk_21CBACBB8);
    sub_21C8C3878();
    sub_21C6EADEC(&qword_27CDEBF68, &qword_27CDEBF70, &qword_21CBA3990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFB10);
  }

  return result;
}

unint64_t sub_21C8C3F64()
{
  result = qword_27CDEFB80;
  if (!qword_27CDEFB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFB78, &unk_21CBACD40);
    sub_21C844588();
    sub_21C720BCC(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFB80);
  }

  return result;
}

uint64_t sub_21C8C4060(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C8C40D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a1;
  v40 = a3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v36 = *(v41 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v41);
  v35 = &v34 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFD10, &qword_21CBAD2D0);
  v6 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v8 = &v34 - v7;
  v9 = sub_21CB81024();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFD18, &qword_21CBAD2D8);
  v17 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v19 = &v34 - v18;
  v20 = sub_21CAEA250();
  v21 = sub_21CAEACD8(v20);

  sub_21CB81014();
  v22 = (v10 + 8);
  sub_21CB81014();
  v23 = sub_21CB80FF4();
  v25 = v24;
  if (v21)
  {
    v26 = *v22;
    (*v22)(v13, v9);
    v27 = (v26)(v16, v9);
    v42 = v23;
    v43 = v25;
    MEMORY[0x28223BE20](v27);
    *(&v34 - 2) = v37;
    *(&v34 - 1) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8F0, &qword_21CBA26B8);
    sub_21C6EADEC(&qword_27CDEB8E8, &qword_27CDEB8F0, &qword_21CBA26B8);
    sub_21C71F3FC();
    sub_21CB83F64();
    *&v19[*(v38 + 36)] = 257;
    sub_21C6EDBAC(v19, v8, &qword_27CDEFD18, &qword_21CBAD2D8);
    swift_storeEnumTagMultiPayload();
    sub_21C8C6B70();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21CB83494();
    return sub_21C6EA794(v19, &qword_27CDEFD18, &qword_21CBAD2D8);
  }

  else
  {
    v29 = *v22;
    (*v22)(v13, v9);
    v29(v16, v9);
    v42 = v23;
    v43 = v25;
    v30 = swift_allocObject();
    *(v30 + 16) = v37;
    *(v30 + 24) = a2;
    sub_21C71F3FC();

    v31 = v35;
    sub_21CB84DE4();
    v32 = v36;
    v33 = v41;
    (*(v36 + 16))(v8, v31, v41);
    swift_storeEnumTagMultiPayload();
    sub_21C8C6B70();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21CB83494();
    return (*(v32 + 8))(v31, v33);
  }
}

uint64_t sub_21C8C4668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v27 = a1;
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB84DA4();
  v19 = swift_allocObject();
  *(v19 + 16) = v27;
  *(v19 + 24) = a2;

  sub_21CB84DA4();
  v20 = v6[2];
  v20(v11, v17, v5);
  v21 = v28;
  v20(v28, v14, v5);
  v22 = v29;
  v20(v29, v11, v5);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9C8, &qword_21CBACF80);
  v20(&v22[*(v23 + 48)], v21, v5);
  v24 = v6[1];
  v24(v14, v5);
  v24(v17, v5);
  v24(v21, v5);
  return (v24)(v11, v5);
}

uint64_t sub_21C8C4998()
{

  sub_21CAEA250();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DC4();
  sub_21CB85254();
  sub_21CB82524();
}

uint64_t sub_21C8C4A50()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v7, v0);
  v13[0] = v8;
  v13[1] = v10;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C8C4BF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CAEA250();
  v4 = *(a2 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v5 = qword_27CDEA4C0;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v4, v8);

  sub_21C833194(v3, sub_21C8C6EAC, a2);

  MEMORY[0x28223BE20](v6);
  sub_21CB85254();
  sub_21CB82524();
}

uint64_t sub_21C8C4D54()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v7, v0);
  v13[0] = v8;
  v13[1] = v10;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C8C4EF4(uint64_t a1, uint64_t a2)
{
  sub_21CB85254();
  sub_21CB82524();

  v3 = sub_21CAEA250();
  v4 = *(a2 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v5 = qword_27CDEA4C0;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v4, v7);

  sub_21C833194(v3, sub_21C8C6EAC, a2);
}

uint64_t sub_21C8C5034()
{
  v0 = sub_21CB85114();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  (*(v1 + 104))(&v10 - v7, *MEMORY[0x277CDF0D8], v0, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v1 + 16))(v4, v8, v0);

  sub_21CB81DC4();
  return (*(v1 + 8))(v8, v0);
}

uint64_t sub_21C8C51AC@<X0>(uint64_t a1@<X8>)
{
  sub_21C8C40D4(*v1, v1[1], a1);
  v3 = *(sub_21CAEA250() + 16);

  v4 = v3 == 0;
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFD08, &qword_21CBAD2C8);
  v8 = (a1 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = sub_21C87E800;
  v8[2] = v6;
  return result;
}

uint64_t sub_21C8C525C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C8C52D8()
{
  result = qword_27CDEFBC0;
  if (!qword_27CDEFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFBC0);
  }

  return result;
}

uint64_t sub_21C8C5398(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C6F35D0;

  return sub_21C8C3448(a1, v1 + v5);
}

uint64_t sub_21C8C5580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_21C8BC26C(a1, a2);
}

uint64_t sub_21C8C560C(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C702EFC;

  return sub_21C8BCB08(a1, v1 + v5);
}

uint64_t sub_21C8C56FC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_21C8C57C8()
{
  v1 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_21C8BFE18(v0 + v2, v5);
}

uint64_t sub_21C8C58AC(uint64_t a1)
{
  v3 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PMAccount(0) - 8);
  return sub_21C8C0730(v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

void sub_21C8C597C()
{
  v1 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_21C8C0CE0(v2, v3);
}

uint64_t sub_21C8C5A34(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_21C8BB618(a1, a2, v6, v7);
}

uint64_t sub_21C8C5ADC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFF0, &qword_21CBA0D60);
  return v4(a1, *(a1 + *(v5 + 48)));
}

unint64_t sub_21C8C5B38()
{
  result = qword_27CDEFC98;
  if (!qword_27CDEFC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFC80, &unk_21CBAD050);
    sub_21C87DED8();
    sub_21C8C5BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFC98);
  }

  return result;
}

unint64_t sub_21C8C5BD0()
{
  result = qword_27CDEFCA0;
  if (!qword_27CDEFCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFCA8, &qword_21CBAD060);
    sub_21C6EADEC(&qword_27CDEFCB0, &qword_27CDEFCB8, &qword_21CBAD068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFCA0);
  }

  return result;
}

uint64_t sub_21C8C5C80@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  result = sub_21C8BAFB4();
  *a1 = result;
  a1[1] = v6;
  return result;
}

unint64_t sub_21C8C5CE4()
{
  result = qword_27CDEFCD0;
  if (!qword_27CDEFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFCD0);
  }

  return result;
}

uint64_t sub_21C8C5D40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C8C5DA8(uint64_t *a1)
{
  v2 = *(*(type metadata accessor for PMAppRecentlyDeletedAccountsView() - 8) + 80);

  return sub_21C8BBAF8(a1);
}

uint64_t sub_21C8C5E30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_101Tm()
{
  v1 = v0;
  v2 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
  v75 = *(*(v2 - 1) + 80);
  v3 = (v75 + 16) & ~v75;
  v4 = *(*(v2 - 1) + 64);
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = v4 + v6;
  v74 = *(*(v5 - 1) + 64);
  v8 = v1 + v3;
  v9 = *(v1 + v3 + 8);

  v10 = *(v1 + v3 + 24);

  v11 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB823B4();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
    v13 = *(v8 + v11);
  }

  v14 = v3 + v7;
  v15 = v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21CB82A34();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
  }

  else
  {
    v17 = *(v8 + v15);
  }

  v18 = v14 & ~v6;
  v19 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_21CB83834();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v8 + v19, 1, v20))
    {
      (*(v21 + 8))(v8 + v19, v20);
    }
  }

  else
  {
    v22 = *(v8 + v19);
  }

  sub_21C7025C4(*(v8 + v2[9]), *(v8 + v2[9] + 8));
  v23 = v1 + v18;
  v24 = *(v1 + v18 + 8);

  v25 = (v1 + v18 + v5[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = *(v25 + 1);

  v28 = *(v25 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v29 = *(v25 + 5);

    v30 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v31 = v30[7];
    v32 = sub_21CB85B74();
    (*(*(v32 - 8) + 8))(&v25[v31], v32);
    v33 = *&v25[v30[8] + 8];

    v34 = v30[9];
    v35 = sub_21CB85C44();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(&v25[v34], 1, v35))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v61 = v18;
  v62 = *(v25 + 4);

  v63 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v64 = v63[7];
  v65 = sub_21CB85C04();
  v66 = *(v65 - 8);
  if (!(*(v66 + 48))(&v25[v64], 1, v65))
  {
    (*(v66 + 8))(&v25[v64], v65);
  }

  v67 = v63[8];
  v68 = sub_21CB85BB4();
  v69 = *(v68 - 8);
  if (!(*(v69 + 48))(&v25[v67], 1, v68))
  {
    (*(v69 + 8))(&v25[v67], v68);
  }

  v34 = v63[9];
  v35 = sub_21CB85C44();
  v36 = *(v35 - 8);
  v18 = v61;
  if (!(*(v36 + 48))(&v25[v34], 1, v35))
  {
LABEL_13:
    (*(v36 + 8))(&v25[v34], v35);
  }

LABEL_14:
  v37 = v23 + v5[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v72 = v18;
    v73 = v1;
    v38 = *(v37 + 8);

    v39 = *(v37 + 24);

    v40 = *(v37 + 40);

    v41 = *(v37 + 56);

    v42 = type metadata accessor for PMAccount.MockData(0);
    v43 = v42[8];
    v44 = sub_21CB80DD4();
    v45 = *(v44 - 8);
    v46 = *(v45 + 48);
    if (!v46(v37 + v43, 1, v44))
    {
      (*(v45 + 8))(v37 + v43, v44);
    }

    v47 = *(v37 + v42[9]);

    v48 = *(v37 + v42[10] + 8);

    v49 = *(v37 + v42[11] + 8);

    v50 = v42[12];
    if (!v46(v37 + v50, 1, v44))
    {
      (*(v45 + 8))(v37 + v50, v44);
    }

    v51 = v42[15];
    v52 = sub_21CB85BB4();
    v53 = *(v52 - 8);
    if (!(*(v53 + 48))(v37 + v51, 1, v52))
    {
      (*(v53 + 8))(v37 + v51, v52);
    }

    v54 = v42[16];
    v55 = sub_21CB85C04();
    v56 = *(v55 - 8);
    v1 = v73;
    if (!(*(v56 + 48))(v37 + v54, 1, v55))
    {
      (*(v56 + 8))(v37 + v54, v55);
    }

    v57 = *(v37 + v42[17] + 8);

    v58 = v42[18];
    v59 = sub_21CB85C44();
    v60 = *(v59 - 8);
    v18 = v72;
    if (!(*(v60 + 48))(v37 + v58, 1, v59))
    {
      (*(v60 + 8))(v37 + v58, v59);
    }
  }

  else
  {
  }

  v70 = v23 + v5[7];
  if (*(v70 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v18 + v74, v75 | v6 | 7);
}

uint64_t sub_21C8C6734()
{
  v1 = *(type metadata accessor for PMAppRecentlyDeletedAccountsView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  return sub_21C8C03FC(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

unint64_t sub_21C8C6804()
{
  result = qword_27CDEFCF8;
  if (!qword_27CDEFCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFB38, &qword_21CBACC20);
    sub_21C8C68C0();
    sub_21C720BCC(&qword_27CDEEE60, type metadata accessor for PMContentListSearchable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFCF8);
  }

  return result;
}

unint64_t sub_21C8C68C0()
{
  result = qword_27CDEFD00;
  if (!qword_27CDEFD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA18, &qword_21CBACB30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA08, &qword_21CBACB20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFB30, &qword_21CBACC18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA00, &qword_21CBACB18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF9F8, &qword_21CBACB10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFA20, &qword_21CBACB38);
    sub_21C8C6D40(&qword_27CDEFA28, &qword_27CDEF9F8, &qword_21CBACB10, sub_21C8C3730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFB20, &qword_21CBACBC8);
    sub_21C6EADEC(&qword_27CDEFB28, &qword_27CDEFB20, &qword_21CBACBC8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C87E710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFD00);
  }

  return result;
}

unint64_t sub_21C8C6B70()
{
  result = qword_27CDEFD20;
  if (!qword_27CDEFD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFD18, &qword_21CBAD2D8);
    sub_21C6EADEC(&qword_27CDEFD28, &qword_27CDEFD30, &qword_21CBAD2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFD20);
  }

  return result;
}

uint64_t sub_21C8C6C30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_21C8C4998();
}

uint64_t sub_21C8C6C40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_21C8C5034();
}

unint64_t sub_21C8C6C5C()
{
  result = qword_27CDEFD38;
  if (!qword_27CDEFD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFD08, &qword_21CBAD2C8);
    sub_21C8C6D40(&qword_27CDEFD40, &qword_27CDEFD48, &qword_21CBAD2E8, sub_21C8C6DBC);
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFD38);
  }

  return result;
}

uint64_t sub_21C8C6D40(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C8C6DBC()
{
  result = qword_27CDEFD50;
  if (!qword_27CDEFD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFD58, &unk_21CBAD2F0);
    sub_21C8C6B70();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFD50);
  }

  return result;
}

uint64_t sub_21C8C6EB0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v10 - v5;
  v7 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__accountToShowAfterSelectingSource;
  swift_beginAccess();
  sub_21C6EDBAC(v1 + v7, v6, &unk_27CDEBE60, &unk_21CB9FF40);
  LOBYTE(v7) = sub_21C7A2AE4(v6, a1);
  sub_21C6EA794(v6, &unk_27CDEBE60, &unk_21CB9FF40);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
    sub_21CB810C4();
  }

  else
  {
    sub_21C6EDBAC(a1, v6, &unk_27CDEBE60, &unk_21CB9FF40);
    sub_21C8CA328(v6);
  }

  return sub_21C6EA794(a1, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21C8C7090(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v39 - v6;
  v39 = type metadata accessor for PMAccount.MockData(0);
  v7 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMAccount.Storage(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v21 = sub_21CB85C44();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  if ((sub_21C8CE2A8(a1) & 1) == 0)
  {
    v26 = type metadata accessor for PMAccount(0);
    sub_21C710710(v41 + *(v26 + 24), v13, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C8D88C8(v13, v9, type metadata accessor for PMAccount.MockData);
      sub_21C6EDBAC(&v9[*(v39 + 72)], v18, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C7192A0(v9, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v27 = *v13;
      sub_21CB85B94();
    }

    sub_21C716934(v18, v20, &unk_27CDF20B0, &unk_21CBA0090);
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      sub_21C6EA794(v20, &unk_27CDF20B0, &unk_21CBA0090);
      v28 = *(v2 + 64);
      v29 = type metadata accessor for PMAppSourceListModel.Source(0);
      v30 = v40;
      swift_storeEnumTagMultiPayload();
      (*(*(v29 - 8) + 56))(v30, 0, 1, v29);
      sub_21C742C88(v30);
    }

    else
    {
      (*(v22 + 32))(v25, v20, v21);
      v31 = *(v2 + 64);
      v32 = v40;
      (*(v22 + 16))(v40, v25, v21);
      v33 = type metadata accessor for PMAppSourceListModel.Source(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
      sub_21C742C88(v32);
      (*(v22 + 8))(v25, v21);
    }
  }

  swift_getKeyPath();
  v42 = v2;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  if (!(*(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState) >> 61))
  {
    v35 = *v41;
    v36 = v41[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    *(inited + 32) = v35;
    *(inited + 40) = v36;

    v38 = sub_21C8D7470(inited);
    swift_setDeallocating();
    sub_21C81A534(inited + 32);
    sub_21C880484(v38);

    sub_21C884F9C(v35, v36);
  }

  return result;
}

uint64_t sub_21C8C7608(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contextForPresentedNewFamilyGroupFlow;
  v4 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contextForPresentedNewFamilyGroupFlow);
  if (v4 != 1)
  {
    if (a1 != 1)
    {
      if (v4)
      {
        if (a1)
        {
          v8 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contextForPresentedNewFamilyGroupFlow);

          v10 = sub_21C967680(v9, a1);
          sub_21C72A584(v4);
          if (v10)
          {
            v5 = *(v1 + v3);
            goto LABEL_4;
          }
        }
      }

      else if (!a1)
      {
        v5 = 0;
        goto LABEL_4;
      }
    }

LABEL_8:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
    sub_21CB810C4();
    sub_21C72A584(a1);
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v5 = 1;
LABEL_4:
  *(v1 + v3) = a1;

  return sub_21C72A584(v5);
}

uint64_t sub_21C8C77C0()
{
  v25 = type metadata accessor for PMAddAccountModel.Configuration(0);
  v1 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v24 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = sub_21CB85C44();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v16(v13, 1, 1, v14);
  swift_getKeyPath();
  v26 = v0;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v17 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
  if (!(v17 >> 61))
  {
    sub_21C710710(v17 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v7, type metadata accessor for PMAppAccountsListModel.Configuration);
    if ((*(v15 + 48))(v7, 4, v14))
    {
      sub_21C7192A0(v7, type metadata accessor for PMAppAccountsListModel.Configuration);
    }

    else
    {
      sub_21C6EA794(v13, &unk_27CDF20B0, &unk_21CBA0090);
      (*(v15 + 32))(v13, v7, v14);
      v16(v13, 0, 1, v14);
    }
  }

  v18 = v24;
  sub_21C6EDBAC(v13, v24, &unk_27CDF20B0, &unk_21CBA0090);
  v19 = v25;
  v20 = *(v25 + 24);
  v16(&v3[v20], 1, 1, v14);
  v21 = &v3[*(v19 + 28)];
  *v21 = 0;
  *(v21 + 1) = 0;
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0xE000000000000000;
  sub_21C815B54(v18, &v3[v20]);
  sub_21C8CA9E0(v3, nullsub_1, 0);
  sub_21C6EA794(v13, &unk_27CDF20B0, &unk_21CBA0090);
  return sub_21C7192A0(v3, type metadata accessor for PMAddAccountModel.Configuration);
}

uint64_t sub_21C8C7B64()
{
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);

  return v1;
}

uint64_t sub_21C8C7C18(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState);
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      if (a1 >> 62 == 1 && ((v2 ^ a1) & 0x3FFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (a1 == 0x8000000000000000)
    {
      goto LABEL_8;
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
    sub_21CB810C4();
  }

  if (a1 >> 62 || v2 != a1)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) = a1;
}

uint64_t sub_21C8C7D9C()
{
  v1 = *(v0 + 56);
  v2 = qword_27CDEA4C0;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v3 = sub_21C81C2B8(v1, v6);

  if (*(v3 + 32) == 1)
  {
    *(v3 + 32) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71B720(&qword_27CDEEE18, type metadata accessor for PMGlobalSearchModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C8C7FB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  swift_beginAccess();
  v5 = sub_21CB85114();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21C8C80C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__editMode;
  swift_beginAccess();
  v5 = sub_21CB85114();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21C8C81D0()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v1 = *(v0 + 16);
  sub_21C7335A8(v1, *(v3 + 24));
  return v1;
}

uint64_t sub_21C8C8298(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21CB85114();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  (v13)(v8, v12, v4);

  sub_21CB81DC4();
  return (*(v5 + 8))(v12, v4);
}

void sub_21C8C8408(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if (v2)
    {
      v3 = a2 & 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v3 = a2;
    }
  }

  else if (v2 > 4)
  {
    if (v2 != 5)
    {
      return;
    }

    v3 = a2 & 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = a2 & 0x1FFFFFFFFFFFFFFFLL;
  }

  MEMORY[0x21CF15F90](v3);
}

uint64_t sub_21C8C8474()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21C8C8408(v3, v1);
  return sub_21CB864D4();
}

uint64_t sub_21C8C84C4()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21C8C8408(v3, v1);
  return sub_21CB864D4();
}

BOOL sub_21C8C8514(unint64_t a1)
{
  v2 = type metadata accessor for PMMultipleAccountsDetailsModel.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v6 = a1 & 0x3FFFFFFFFFFFFFFFLL;
      swift_getKeyPath();
      v11 = v6;
      sub_21C71B720(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel);
      sub_21CB810D4();

      return *(v6 + 40) == 0;
    }
  }

  else
  {
    swift_getKeyPath();
    v11 = a1;
    sub_21C71B720(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel);
    sub_21CB810D4();

    v8 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__state;
    swift_beginAccess();
    sub_21C710710(a1 + v8, v5, type metadata accessor for PMMultipleAccountsDetailsModel.State);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_21C7192A0(v5, type metadata accessor for PMMultipleAccountsDetailsModel.State);
      return 0;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE90, &qword_21CBC2AD0);
    sub_21C6EA794(&v5[*(v9 + 48)], &unk_27CDF20B0, &unk_21CBA0090);
  }

  return 1;
}

uint64_t sub_21C8C873C()
{
  v1 = *v0;
  sub_21CB86484();
  if (!(v1 >> 62))
  {
    goto LABEL_4;
  }

  if (v1 >> 62 == 1)
  {
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
LABEL_4:
    MEMORY[0x21CF15F90](v1);
  }

  return sub_21CB864D4();
}

uint64_t sub_21C8C8798()
{
  result = *v0;
  if ((*v0 >> 62) <= 1)
  {
    return MEMORY[0x21CF15F90]();
  }

  return result;
}

uint64_t sub_21C8C87D8()
{
  v1 = *v0;
  sub_21CB86484();
  if (!(v1 >> 62))
  {
    goto LABEL_4;
  }

  if (v1 >> 62 == 1)
  {
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
LABEL_4:
    MEMORY[0x21CF15F90](v1);
  }

  return sub_21CB864D4();
}

uint64_t sub_21C8C8830(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 62 == 1)
      {
        return ((v3 ^ v2) & 0x3FFFFFFFFFFFFFFFLL) == 0;
      }
    }

    else if (v3 == 0x8000000000000000)
    {
      return 1;
    }
  }

  else if (!(v3 >> 62))
  {
    return v2 == v3;
  }

  return 0;
}

uint64_t sub_21C8C8894(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);

  v5 = sub_21C7A230C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 32);
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C8C89DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupIDForRecentlyAcceptedInvitation;
  swift_beginAccess();
  sub_21C6EDBAC(v1 + v7, v6, &unk_27CDF20B0, &unk_21CBA0090);
  v8 = sub_21C7A2AE0(v6, a1);
  sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
    sub_21CB810C4();
  }

  else
  {
    swift_beginAccess();
    sub_21C7A32E8(a1, v1 + v7, &unk_27CDF20B0, &unk_21CBA0090);
    swift_endAccess();
  }

  return sub_21C6EA794(a1, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C8C8BD8(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C8C8CDC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C8C8DEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v16 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v15 - v8;
  swift_getKeyPath();
  v19 = v2;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v10 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__didShowUncommittedChangesAlert);
  swift_getKeyPath();
  v17 = v3;
  if (v10 == 1)
  {
    v18 = 0;
    v19 = v3;
    sub_21CB810C4();
  }

  else
  {
    v18 = 1;
    v19 = v3;
    sub_21CB810C4();

    sub_21C6EDBAC(a2, v9, &qword_27CDEAC20, &qword_21CBAD710);
    v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v3;
    sub_21C716934(v9, v13 + v12, &qword_27CDEAC20, &qword_21CBAD710);

    sub_21C8CEA34(sub_21C8D79D0, v13);

    v14 = *(v3 + 64);
    sub_21C6EDBAC(v16, v9, &qword_27CDEAC20, &qword_21CBAD710);
    return sub_21C742C88(v9);
  }
}

uint64_t sub_21C8C90AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27[-v10];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    v13 = sub_21C8D7470(inited);
    swift_setDeallocating();
    sub_21C81A534(inited + 32);
    v14 = sub_21CB85C44();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = type metadata accessor for PMMultipleAccountsDetailsModel(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = sub_21CA770B0(v13, 0x8000000000000000, v11);
    sub_21C8C7C18(v18);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = *(Strong + 64);

    v21 = type metadata accessor for PMAppSourceListModel.Source(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v21 - 8) + 56))(v7, 0, 1, v21);
    sub_21C742C88(v7);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    swift_getKeyPath();
    v28 = v23;
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
    sub_21CB810D4();

    v24 = *(v23 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);

    if (!(v24 >> 61))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_21CBA0690;
      *(v25 + 32) = a1;
      *(v25 + 40) = a2;

      v26 = sub_21C8D7470(v25);
      swift_setDeallocating();
      sub_21C81A534(v25 + 32);
      sub_21C880484(v26);
    }
  }

  return result;
}

uint64_t sub_21C8C944C()
{
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_21C8C9504@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_21C8C95C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  *(a1 + 32) = a2;
}

uint64_t sub_21C8C9680()
{
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState);

  return v1;
}

uint64_t sub_21C8C9734(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState);
  *(a1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) = a2;
}

uint64_t sub_21C8C979C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v9 = *a1;
  swift_beginAccess();
  return sub_21C6EDBAC(v11 + v9, a4, a2, a3);
}

uint64_t sub_21C8C987C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupIDForRecentlyAcceptedInvitation;
  swift_beginAccess();
  return sub_21C6EDBAC(v3 + v4, a2, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C8C99C8()
{
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  return *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact);
}

uint64_t sub_21C8C9A70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact);
  return result;
}

uint64_t sub_21C8C9B20(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = *(a1 + 16);

  v10 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact);
  if (v8 == 1)
  {
    if (v10 != 1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v22 - 2) = v2;
      *(&v22 - 8) = 1;
      v23 = v2;
      sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
      sub_21CB810C4();
    }

    swift_getKeyPath();
    v23 = v2;
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
    sub_21CB810D4();

    v16 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
    v17 = v16 >> 61;
    if ((v16 >> 61) <= 2)
    {
      if (v17)
      {
        if (v17 == 1)
        {
          return result;
        }

        sub_21CAE9A98(MEMORY[0x277D84FA0]);
      }

      else
      {

        sub_21C880484(MEMORY[0x277D84FA0]);
      }
    }

    else if (v17 > 4)
    {
      if (v17 != 5)
      {
        return result;
      }

      sub_21C86234C(MEMORY[0x277D84FA0]);
    }

    else if (v17 == 3)
    {

      sub_21C901AD4(MEMORY[0x277D84FA0]);
    }

    else
    {
      v19 = v16 & 0x1FFFFFFFFFFFFFFFLL;
      if (*(v19 + 88))
      {
        v20 = swift_getKeyPath();
        MEMORY[0x28223BE20](v20);
        *(&v22 - 3) = 0;
        *(&v22 - 2) = 0;
        *(&v22 - 4) = v19;
        v23 = v19;
        sub_21C71B720(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);

        sub_21CB810C4();
      }

      v21 = *(v19 + 80);
      *(v19 + 80) = 0;
      *(v19 + 88) = 0;

      sub_21CB72C70(v21, 0);
    }
  }

  if (!v8)
  {
    if (*(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact))
    {
      v11 = swift_getKeyPath();
      MEMORY[0x28223BE20](v11);
      *(&v22 - 2) = v2;
      *(&v22 - 8) = 0;
      v23 = v2;
      sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
      sub_21CB810C4();
    }

    v12 = *(v2 + 64);
    v13 = type metadata accessor for PMAppSourceListModel.Source(0);
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_21C742C88(v7);
    swift_getKeyPath();
    v23 = v12;
    sub_21C71B720(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
    sub_21CB810D4();

    v14 = *(v12 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);

    sub_21C880484(MEMORY[0x277D84FA0]);
  }

  if (v10 != 2)
  {
    v18 = swift_getKeyPath();
    MEMORY[0x28223BE20](v18);
    *(&v22 - 2) = v2;
    *(&v22 - 8) = 2;
    v23 = v2;
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C8CA158(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  return *(v2 + *a2);
}

uint64_t sub_21C8CA21C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_21C8CA328(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__accountToShowAfterSelectingSource;
  swift_beginAccess();
  sub_21C7A32E8(a1, v1 + v7, &unk_27CDEBE60, &unk_21CB9FF40);
  swift_endAccess();
  swift_getKeyPath();
  v12 = v1;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  sub_21C6EDBAC(v1 + v7, v6, &unk_27CDEBE60, &unk_21CB9FF40);
  v8 = type metadata accessor for PMAccount(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_21C6EA794(a1, &unk_27CDEBE60, &unk_21CB9FF40);
    a1 = v6;
  }

  else
  {
    v9 = sub_21C6EA794(v6, &unk_27CDEBE60, &unk_21CB9FF40);
    sub_21C716FCC(v9);
  }

  return sub_21C6EA794(a1, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21C8CA504(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v8 - v5;
  sub_21C6EDBAC(a2, &v8 - v5, &unk_27CDEBE60, &unk_21CB9FF40);
  return sub_21C8CA328(v6);
}

uint64_t sub_21C8CA5B8()
{
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contextForPresentedNewFamilyGroupFlow);
  sub_21C72A574(v1);
  return v1;
}

uint64_t sub_21C8CA680()
{
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  if (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__exportError))
  {
    if (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__showExportErrorDialog) == 1)
    {
      *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__showExportErrorDialog) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21CB810C4();
    }
  }

  return result;
}

void *sub_21C8CA7DC()
{
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__exportError);
  v2 = v1;
  return v1;
}

uint64_t sub_21C8CA890(uint64_t a1, id a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__exportError);
  *(a1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__exportError) = a2;
  v3 = a2;

  return sub_21C8CA680();
}

uint64_t sub_21C8CA8F8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v4 = *(v2 + *a2);
}

uint64_t sub_21C8CA99C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__importModel);
  *(a1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__importModel) = a2;
}

uint64_t sub_21C8CA9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for PMAddAccountModel.Configuration(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v21 = v3;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  if (!*(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__addAccountSheetModel))
  {
    sub_21C710710(a1, v11, type metadata accessor for PMAddAccountModel.Configuration);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a2;
    v14[4] = a3;
    v15 = type metadata accessor for PMAddAccountModel(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();

    v18 = sub_21C848014(v11, sub_21C8D76F8, v14);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v20 - 2) = v4;
    *(&v20 - 1) = v18;
    v21 = v4;
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C8CAC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a2;
  v76 = type metadata accessor for PMAppSourceListModel.Source(0);
  v74 = *(v76 - 8);
  v6 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v69 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  v8 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v73 = v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v70 = v67 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = v67 - v17;
  v19 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v72 = v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v67 - v27;
  v29 = sub_21CB85114();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v37 = *(v3 + 64);
    goto LABEL_10;
  }

  if (a1 != 1)
  {
    v75 = v3;
    if (a1 == 2)
    {
      swift_getKeyPath();
      v34 = v75;
      v78 = v75;
      sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
      sub_21CB810D4();

      v35 = *(v34 + 64);
      if (*(v34 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__isCompact) == 1)
      {
        (*(v74 + 56))(v14, 1, 1, v76);
        return sub_21C742C88(v14);
      }

LABEL_10:
      v38 = v76;
      swift_storeEnumTagMultiPayload();
      (*(v74 + 56))(v14, 0, 1, v38);
      return sub_21C742C88(v14);
    }

    swift_getKeyPath();
    v39 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel___observationRegistrar;
    v78 = a3;
    v67[1] = sub_21C71B720(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    v67[2] = v39;
    sub_21CB810D4();

    v40 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__editMode;
    swift_beginAccess();
    (*(v30 + 16))(v33, a3 + v40, v29);
    LOBYTE(v40) = sub_21C8CC47C(v33);
    (*(v30 + 8))(v33, v29);
    if (v40)
    {
      sub_21C880484(MEMORY[0x277D84FA0]);
    }

    v41 = sub_21C71699C();
    v42 = v28;
    v43 = v18;
    v44 = v76;
    if (v41)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      if (v77 == 1)
      {
        v45 = sub_21CA4DE84();
        v46 = [v45 hasChanges];

        if (v46)
        {
          return sub_21C8CCD5C(a1, v68);
        }
      }

      else
      {
      }
    }

    v47 = sub_21CB85C44();
    v48 = *(v47 - 8);
    v49 = *(v48 + 56);
    v49(v42, 1, 1, v47);
    sub_21C710710(a3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v22, type metadata accessor for PMAppAccountsListModel.Configuration);
    if ((*(v48 + 48))(v22, 4, v47))
    {
      sub_21C7192A0(v22, type metadata accessor for PMAppAccountsListModel.Configuration);
    }

    else
    {
      sub_21C6EA794(v42, &unk_27CDF20B0, &unk_21CBA0090);
      (*(v48 + 32))(v42, v22, v47);
      v49(v42, 0, 1, v47);
    }

    swift_getKeyPath();
    v77 = a3;
    sub_21CB810D4();

    v50 = *(a3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);
    v51 = *(v75 + 64);
    swift_getKeyPath();
    v77 = v51;
    sub_21C71B720(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);

    sub_21CB810D4();

    v52 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
    swift_beginAccess();
    swift_storeEnumTagMultiPayload();
    v53 = v74;
    (*(v74 + 56))(v43, 0, 1, v44);
    v54 = *(v71 + 48);
    v55 = v51 + v52;
    v56 = v73;
    sub_21C6EDBAC(v55, v73, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C6EDBAC(v43, v56 + v54, &qword_27CDEAC20, &qword_21CBAD710);
    v57 = *(v53 + 48);
    if (v57(v56, 1, v44) == 1)
    {
      sub_21C6EA794(v43, &qword_27CDEAC20, &qword_21CBAD710);
      if (v57(v56 + v54, 1, v44) == 1)
      {
        v58 = 0x8000000000000008;
        sub_21C6EA794(v56, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_29:
        v60 = v72;
        sub_21C6EDBAC(v42, v72, &unk_27CDF20B0, &unk_21CBA0090);
        v61 = type metadata accessor for PMMultipleAccountsDetailsModel(0);
        v62 = *(v61 + 48);
        v63 = *(v61 + 52);
        swift_allocObject();
        v64 = sub_21CA770B0(v50, v58, v60);
        sub_21C8D75F0(v58);
        sub_21C8C7C18(v64);
        return sub_21C6EA794(v42, &unk_27CDF20B0, &unk_21CBA0090);
      }
    }

    else
    {
      v59 = v70;
      sub_21C6EDBAC(v56, v70, &qword_27CDEAC20, &qword_21CBAD710);
      if (v57(v56 + v54, 1, v44) != 1)
      {
        v65 = v69;
        sub_21C8D88C8(v56 + v54, v69, type metadata accessor for PMAppSourceListModel.Source);
        v66 = sub_21C918FE4(v59, v65);
        sub_21C7192A0(v65, type metadata accessor for PMAppSourceListModel.Source);
        sub_21C6EA794(v43, &qword_27CDEAC20, &qword_21CBAD710);
        sub_21C7192A0(v59, type metadata accessor for PMAppSourceListModel.Source);
        sub_21C6EA794(v56, &qword_27CDEAC20, &qword_21CBAD710);
        if (v66)
        {
          v58 = 0x8000000000000008;
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      sub_21C6EA794(v43, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C7192A0(v59, type metadata accessor for PMAppSourceListModel.Source);
    }

    sub_21C6EA794(v56, &unk_27CDED310, &unk_21CBA0150);
LABEL_28:
    v58 = 0x8000000000000000;
    goto LABEL_29;
  }

  return sub_21C8C77C0();
}

uint64_t sub_21C8CB690(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = sub_21C8CB6F4(v4, a2, a3, a4);
    v8 = *(v4 + v5);
    *(v4 + v5) = v7;
  }

  return v7;
}

uint64_t sub_21C8CB6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB85C44();
  (*(*(v10 - 8) + 56))(v9, a2, 4, v10);
  v11 = type metadata accessor for PMAppAccountsListModel(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_21C70FDD0(v9);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v18 = (v14 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
  v19 = *(v14 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction + 8);
  *v18 = a4;
  v18[1] = v17;

  swift_getKeyPath();
  v22[1] = v14;
  sub_21C71B720(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v20 = *(v14 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  sub_21C8CB938(MEMORY[0x277D84FA0], v20);

  return v14;
}

uint64_t sub_21C8CB938(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_getKeyPath();
      sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);

      sub_21CB810D4();

      v8 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
      if ((v8 >> 61) > 2 || v8 >> 61)
      {
      }

      else
      {

        if (v7 == v8)
        {
          sub_21C8CAC28(a1, a2, v7);
          sub_21C718CB4();
        }
      }
    }
  }

  return result;
}

uint64_t sub_21C8CBACC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_21C8CBB34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_21CB85C44();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = type metadata accessor for PMGroupInvitationsListModel(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_21C9C6E08(v3);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  v12 = (v8 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel_actionPerformed);
  v13 = *(v8 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel_actionPerformed + 8);
  *v12 = sub_21C8D7794;
  v12[1] = v11;

  return v8;
}

uint64_t sub_21C8CBCA8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      swift_getKeyPath();
      sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);

      sub_21CB810D4();

      v6 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
      if (v6 >> 61 == 1)
      {

        if (v5 == (v6 & 0x1FFFFFFFFFFFFFFFLL))
        {
          sub_21C8CBE2C(a1);
          sub_21C718CB4();
        }
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_21C8CBE2C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v33 - v12;
  v14 = sub_21CB85C44();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PMGroupInvitationsListModel.Action(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C710710(a1, v22, type metadata accessor for PMGroupInvitationsListModel.Action);
  if ((*(v15 + 48))(v22, 1, v14) == 1)
  {
    v23 = *(v1 + 64);
    swift_getKeyPath();
    v33[1] = v23;
    sub_21C71B720(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
    sub_21CB810D4();

    v24 = *(v23 + 17);
    if (v24 == 2)
    {
      v25 = type metadata accessor for PMAppSourceListModel.Source(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
      v26 = v9;
    }

    else
    {
      v31 = type metadata accessor for PMAppSourceListModel.Source(0);
      if (v24)
      {
        swift_storeEnumTagMultiPayload();
        v32 = 0;
      }

      else
      {
        v32 = 1;
      }

      (*(*(v31 - 8) + 56))(v7, v32, 1, v31);
      v26 = v7;
    }

    return sub_21C742C88(v26);
  }

  else
  {
    (*(v15 + 32))(v18, v22, v14);
    v27 = *(v15 + 16);
    v27(v13, v18, v14);
    (*(v15 + 56))(v13, 0, 1, v14);
    sub_21C8C89DC(v13);
    v28 = *(v1 + 64);
    v27(v9, v18, v14);
    v29 = type metadata accessor for PMAppSourceListModel.Source(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
    sub_21C742C88(v9);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_21C8CC278()
{
  v0 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB85C44();
  (*(*(v4 - 8) + 56))(v3, 1, 2, v4);
  v5 = type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_21CAEBA7C(v3);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  v12 = (v8 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_selectionUpdated);
  v13 = *(v8 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_selectionUpdated + 8);
  *v12 = sub_21C8D77EC;
  v12[1] = v11;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C8D70D4();

  return v8;
}

uint64_t sub_21C8CC47C(uint64_t a1)
{
  v2 = v1;
  v14[1] = a1;
  v3 = sub_21CB85114();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v15 = v1;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v8 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentStateIsEditing;
  if (*(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentStateIsEditing))
  {
    v9 = *(v4 + 104);
    v9(v7, *MEMORY[0x277CDF0D8], v3);
    v10 = sub_21CB850F4();
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v10 = 0;
    v9 = *(v4 + 104);
  }

  v9(v7, *MEMORY[0x277CDF0D0], v3);
  v11 = sub_21CB850F4() & 1;
  (*(v4 + 8))(v7, v3);
  if (v11 == *(v2 + v8))
  {
    *(v2 + v8) = v11;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v14[-2] = v2;
    LOBYTE(v14[-1]) = v11;
    v15 = v2;
    sub_21CB810C4();
  }

  swift_getKeyPath();
  v15 = v2;
  sub_21CB810D4();

  return *(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__isCompact) & v10 & 1;
}

uint64_t sub_21C8CC74C()
{
  v0 = type metadata accessor for PMAppSecurityRecommendationsModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_21C903D88();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);

  sub_21CB810C4();

  return v3;
}

uint64_t sub_21C8CC8EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85114();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v16 = Strong;
    v28 = v5;
    swift_getKeyPath();
    v29 = v14;
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);

    sub_21CB810D4();

    v17 = *(v14 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
    if (v17 >> 61 != 3)
    {

      goto LABEL_11;
    }

    if (v16 == (v17 & 0x1FFFFFFFFFFFFFFFLL))
    {
      if (sub_21C71699C())
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        if (v29 == 1)
        {
          v18 = sub_21CA4DE84();
          v19 = [v18 hasChanges];

          if (v19)
          {
            sub_21C8CCD5C(a1, a2);
            goto LABEL_11;
          }
        }

        else
        {
        }
      }

      v20 = sub_21CB85C44();
      (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
      v21 = type metadata accessor for PMMultipleAccountsDetailsModel(0);
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();

      v25 = sub_21CA770B0(v24, v16, v12);

      sub_21C8C7C18(v25);
      swift_getKeyPath();
      v29 = v16;
      sub_21C71B720(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
      sub_21CB810D4();

      v26 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
      swift_beginAccess();
      v27 = v28;
      (*(v28 + 16))(v8, v16 + v26, v4);
      LOBYTE(v26) = sub_21C8CC47C(v8);
      (*(v27 + 8))(v8, v4);
      if (v26)
      {
        sub_21C901AD4(MEMORY[0x277D84FA0]);
      }

      sub_21C718CB4();
    }

LABEL_11:
  }

  return result;
}

uint64_t sub_21C8CCD5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v6 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__didShowUncommittedChangesAlert);
  swift_getKeyPath();
  if (v6 == 1)
  {
    sub_21CB810C4();
  }

  sub_21CB810C4();

  swift_getKeyPath();
  sub_21CB810D4();

  v8 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
  v9 = v8 >> 61;
  if ((v8 >> 61) > 6)
  {
LABEL_10:
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    *(v15 + 24) = a2;
    swift_retain_n();

    sub_21C8CEA34(sub_21C8D7668, v15);

    sub_21C880484(v16);
  }

  if (((1 << v9) & 0x66) != 0)
  {
    return result;
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = v8 & 0x1FFFFFFFFFFFFFFFLL;
      *(v12 + 24) = a2;
      swift_retain_n();

      sub_21C8CEA34(sub_21C8D7624, v12);

      v13 = sub_21C713194(a1);
      sub_21CB70C48(v13, v14);
    }

    goto LABEL_10;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v8 & 0x1FFFFFFFFFFFFFFFLL;
  *(v10 + 24) = a2;
  swift_retain_n();

  sub_21C8CEA34(sub_21C8D7650, v10);

  sub_21C901AD4(v11);
}

void *sub_21C8CD0AC()
{
  v0 = type metadata accessor for PMVerificationCodesListModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_21CB72E64();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);

  sub_21CB810C4();

  return v3;
}

uint64_t sub_21C8CD24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v15 = Strong;
    swift_getKeyPath();
    v33 = v13;
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);

    sub_21CB810D4();

    v16 = *(v13 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
    v17 = v16 >> 61;
    if ((v16 >> 61) > 2 && v17 <= 4 && v17 != 3)
    {

      if (v15 != (v16 & 0x1FFFFFFFFFFFFFFFLL))
      {
LABEL_21:
      }

      if (sub_21C71699C())
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        if (v33 == 1)
        {
          v18 = sub_21CA4DE84();
          v19 = [v18 hasChanges];

          if (v19 && a2)
          {
            if (a4)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
              inited = swift_initStackObject();
              v32 = xmmword_21CBA0690;
              *(inited + 16) = xmmword_21CBA0690;
              *(inited + 32) = a1;
              *(inited + 40) = a2;

              v21 = sub_21C8D7470(inited);
              swift_setDeallocating();
              sub_21C81A534(inited + 32);
              v22 = swift_initStackObject();
              *(v22 + 16) = v32;
              *(v22 + 32) = a3;
              v23 = v22 + 32;
              *(v22 + 40) = a4;
              v24 = sub_21C8D7470(v22);
              swift_setDeallocating();
              sub_21C81A534(v23);
              sub_21C8CCD5C(v21, v24);
            }

            goto LABEL_19;
          }
        }

        else
        {
        }
      }

      if (a4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
        v25 = swift_initStackObject();
        *(v25 + 16) = xmmword_21CBA0690;
        *(v25 + 32) = a3;
        *(v25 + 40) = a4;

        v26 = sub_21C8D7470(v25);
        swift_setDeallocating();
        sub_21C81A534(v25 + 32);
LABEL_20:
        v27 = sub_21CB85C44();
        (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
        v28 = type metadata accessor for PMMultipleAccountsDetailsModel(0);
        v29 = *(v28 + 48);
        v30 = *(v28 + 52);
        swift_allocObject();
        v31 = sub_21CA770B0(v26, 0x8000000000000010, v11);
        sub_21C8D75F0(0x8000000000000010);
        sub_21C8C7C18(v31);
        sub_21C718CB4();
        goto LABEL_21;
      }

LABEL_19:
      v26 = MEMORY[0x277D84FA0];
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_21C8CD6A8()
{
  v0 = type metadata accessor for PMWiFiListModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_21C8624B4();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);

  sub_21CB810C4();

  return v3;
}

uint64_t sub_21C8CD848()
{
  v0 = sub_21CB85114();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      swift_getKeyPath();
      v18 = v6;
      sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);

      sub_21CB810D4();

      v9 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
      if (v9 >> 61 == 5)
      {

        if (v8 == (v9 & 0x1FFFFFFFFFFFFFFFLL))
        {
          swift_getKeyPath();
          v18 = v8;
          sub_21C71B720(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
          sub_21CB810D4();

          v10 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
          swift_beginAccess();
          (*(v1 + 16))(v4, v8 + v10, v0);
          LOBYTE(v10) = sub_21C8CC47C(v4);
          (*(v1 + 8))(v4, v0);
          if (v10)
          {
            sub_21C86234C(MEMORY[0x277D84FA0]);
          }

          swift_getKeyPath();
          v17 = v8;
          sub_21CB810D4();

          v11 = *(v8 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs);

          v12 = sub_21C8CBACC(&OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___wifiViewModel, sub_21C8CD6A8);
          v13 = type metadata accessor for PMMultipleWiFiDetailsModel();
          v14 = *(v13 + 48);
          v15 = *(v13 + 52);
          v16 = swift_allocObject();
          *(v16 + 32) = 0;
          *(v16 + 40) = 0;
          *(v16 + 48) = MEMORY[0x277D84FA0];
          *(v16 + 56) = swift_getKeyPath();
          sub_21CB81104();
          *(v16 + 16) = v11;
          *(v16 + 24) = v12;

          sub_21CAF9EAC();

          sub_21C8C7C18(v16 | 0x4000000000000000);
          sub_21C718CB4();
        }
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_21C8CDC0C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v1 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupViewModels;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_21C8CDCCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupViewModels;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21C8CDD94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810C4();
}

uint64_t sub_21C8CDE50(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupViewModels;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_21C8CDED4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a1;
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v22 - v6;
  v8 = type metadata accessor for PMAccount(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel___observationRegistrar;
  v25[0] = v2;
  v14 = sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v16 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__expectingNewAccount;
  if (*(v2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__expectingNewAccount) == 1)
  {
    v22[1] = v14;
    v22[2] = v13;
    v17 = *(v2 + 40);
    v18 = qword_27CDEA4C0;

    if (v18 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(v17, v25[0]);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v20 = v25[0];
    v25[0] = v23;
    v25[1] = v24;
    MEMORY[0x28223BE20](v19);
    v22[-2] = v25;
    sub_21C968D04(sub_21C7AE738, v20, v7);

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      return sub_21C6EA794(v7, &unk_27CDEBE60, &unk_21CB9FF40);
    }

    else
    {
      sub_21C8D88C8(v7, v12, type metadata accessor for PMAccount);
      if (*(v3 + v16))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v22[-2] = v3;
        LOBYTE(v22[-1]) = 0;
        v25[0] = v3;
        sub_21CB810C4();
      }

      else
      {
        *(v3 + v16) = 0;
      }

      sub_21C8C7090(v12);
      return sub_21C7192A0(v12, type metadata accessor for PMAccount);
    }
  }

  return result;
}

uint64_t sub_21C8CE2A8(uint64_t a1)
{
  v40 = a1;
  v37 = type metadata accessor for PMAccount.MockData(0);
  v2 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v38 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.Storage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = sub_21CB85C44();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v39 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v41 = v1;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v23 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
  if (v23 >> 61)
  {
    v26 = 0;
  }

  else
  {
    v24 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration;
    v36 = v16;
    v25 = *(v16 + 56);
    v25(v22, 1, 4, v15);

    v35 = v24;
    LOBYTE(v24) = sub_21C71382C(v23 + v24, v22);
    sub_21C7192A0(v22, type metadata accessor for PMAppAccountsListModel.Configuration);
    if (v24)
    {

      v26 = 1;
    }

    else
    {
      v28 = type metadata accessor for PMAccount(0);
      sub_21C710710(v40 + *(v28 + 24), v7, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v34 = v25;
      if (EnumCaseMultiPayload == 1)
      {
        v30 = v38;
        sub_21C8D88C8(v7, v38, type metadata accessor for PMAccount.MockData);
        sub_21C6EDBAC(v30 + *(v37 + 72), v12, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C7192A0(v30, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v31 = *v7;
        sub_21CB85B94();
      }

      sub_21C716934(v12, v14, &unk_27CDF20B0, &unk_21CBA0090);
      v32 = v36;
      if ((*(v36 + 48))(v14, 1, v15) == 1)
      {
        sub_21C6EA794(v14, &unk_27CDF20B0, &unk_21CBA0090);
        v34(v22, 3, 4, v15);
        v26 = sub_21C71382C(v23 + v35, v22);

        sub_21C7192A0(v22, type metadata accessor for PMAppAccountsListModel.Configuration);
      }

      else
      {
        v33 = v39;
        (*(v32 + 32))(v39, v14, v15);
        (*(v32 + 16))(v22, v33, v15);
        v34(v22, 0, 4, v15);
        v26 = sub_21C71382C(v23 + v35, v22);

        sub_21C7192A0(v22, type metadata accessor for PMAppAccountsListModel.Configuration);
        (*(v32 + 8))(v33, v15);
      }
    }
  }

  return v26 & 1;
}

uint64_t sub_21C8CE7FC(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__expectingNewAccount) == 1)
      {
        *(Strong + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__expectingNewAccount) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
        sub_21CB810C4();
      }
    }
  }

  return a3(a1 & 1);
}

uint64_t sub_21C8CE988(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(a1 + 64);
  sub_21C6EDBAC(a2, &v10 - v6, &qword_27CDEAC20, &qword_21CBAD710);
  return sub_21C742C88(v7);
}

uint64_t sub_21C8CEA34(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB853D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB85404();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21C71699C();
  if (result)
  {
    v15 = (result + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_onUncommittedChangesAlertConfirmation);
    v17 = *(result + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_onUncommittedChangesAlertConfirmation);
    v16 = *(result + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_onUncommittedChangesAlertConfirmation + 8);
    *v15 = a1;
    v15[1] = a2;
    v18 = result;
    sub_21C71B710(v17);
    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);

    v19 = sub_21CB85CF4();
    v23 = v18;
    v24 = v19;
    aBlock[4] = sub_21C8D76BC;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_10;
    v20 = _Block_copy(aBlock);
    v25 = v9;
    v21 = v20;

    sub_21CB853E4();
    v26 = MEMORY[0x277D84F90];
    sub_21C71B720(&qword_27CDEAF48, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
    sub_21CB85F14();
    v22 = v24;
    MEMORY[0x21CF15800](0, v13, v8, v21);
    _Block_release(v21);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v25);
  }

  return result;
}

uint64_t sub_21C8CED50()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C8CEDC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - v4;
  v6 = sub_21CB85C44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_21CB81024();
  v11 = *(v34 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v34);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v35 = v0;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v19 = 0;
  v20 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
  v21 = v20 >> 61;
  if ((v20 >> 61) <= 2)
  {
    v33 = v7;
    if (v21)
    {
      if (v21 != 2)
      {
        return v19;
      }

LABEL_13:

      goto LABEL_14;
    }

    sub_21C710710(v20 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v18, type metadata accessor for PMAppAccountsListModel.Configuration);
    v22 = v33;
    v23 = (*(v33 + 48))(v18, 4, v6);
    if (v23)
    {
      if (v23 == 2)
      {
        goto LABEL_13;
      }

      sub_21C7192A0(v18, type metadata accessor for PMAppAccountsListModel.Configuration);
    }

    else
    {
      (*(v22 + 32))(v10, v18, v6);
      v25 = *(v1 + 48);
      v26 = qword_27CDEA4C0;

      if (v26 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C7073E8(v25, v35);

      sub_21CA1D444(v10, v5);

      v27 = type metadata accessor for PMSharingGroup();
      if ((*(*(v27 - 8) + 48))(v5, 1, v27) != 1)
      {
        v28 = &v5[*(v27 + 20)];
        v30 = *v28;
        v29 = *(v28 + 1);

        sub_21C7192A0(v5, type metadata accessor for PMSharingGroup);
        sub_21CB81014();
        sub_21CB81004();
        (*(v11 + 8))(v14, v34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_21CBA0690;
        *(v31 + 56) = MEMORY[0x277D837D0];
        *(v31 + 64) = sub_21C7C0050();
        *(v31 + 32) = v30;
        *(v31 + 40) = v29;
        v19 = sub_21CB85594();

        (*(v33 + 8))(v10, v6);
        return v19;
      }

      (*(v33 + 8))(v10, v6);
      sub_21C6EA794(v5, &qword_27CDF7670, &unk_21CBAA8F0);
    }

    return 0;
  }

  if (v21 == 3 || v21 == 4)
  {
    goto LABEL_13;
  }

  if (v21 == 5)
  {

    MGGetBoolAnswer();
LABEL_14:
    sub_21CB81014();
    v19 = sub_21CB81004();

    (*(v11 + 8))(v14, v34);
  }

  return v19;
}

uint64_t sub_21C8CF458(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C8CDED4(v1, v2);
  }

  return result;
}

uint64_t sub_21C8CF4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEB8, &unk_21CBADD00);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v70 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v69 = &v67 - v12;
  MEMORY[0x28223BE20](v11);
  v73 = &v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC0, &qword_21CBC32C0);
  v75 = *(v14 - 8);
  v76 = v14;
  v15 = *(v75 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v71 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = &v67 - v18;
  v19 = type metadata accessor for PMAccount.MockData(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PMAccount.Storage(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v67 - v32;
  v34 = sub_21CB85C44();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v67 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for PMAccount(0);
  sub_21C710710(a2 + *(v39 + 24), v26, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C8D88C8(v26, v22, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v22[*(v19 + 72)], v31, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C7192A0(v22, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v40 = *v26;
    sub_21CB85B94();
  }

  sub_21C716934(v31, v33, &unk_27CDF20B0, &unk_21CBA0090);
  v41 = v35;
  v42 = *(v35 + 48);
  v43 = v34;
  if (v42(v33, 1, v34) == 1)
  {
    return sub_21C6EA794(v33, &unk_27CDF20B0, &unk_21CBA0090);
  }

  (*(v41 + 32))(v38, v33, v34);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v41 + 8))(v38, v34);
    v48 = v73;
    (*(v75 + 56))(v73, 1, 1, v76);
    return sub_21C6EA794(v48, &qword_27CDEFEB8, &unk_21CBADD00);
  }

  v46 = *(Strong + 48);
  v47 = qword_27CDEA4C0;

  v48 = v73;
  if (v47 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(v46, v80);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if ((*(v75 + 48))(v48, 1, v76) == 1)
  {
    (*(v41 + 8))(v38, v43);
    return sub_21C6EA794(v48, &qword_27CDEFEB8, &unk_21CBADD00);
  }

  v49 = v72;
  sub_21C716934(v48, v72, &qword_27CDEFEC0, &qword_21CBC32C0);
  sub_21C71B720(&qword_27CDECD58, MEMORY[0x277D49978]);
  sub_21CB857F4();
  sub_21CB857F4();
  if (v80 == v78 && v81 == v79)
  {
  }

  else
  {
    v50 = sub_21CB86344();

    if ((v50 & 1) == 0)
    {
      sub_21C6EA794(v49, &qword_27CDEFEC0, &qword_21CBC32C0);
      return (*(v41 + 8))(v38, v43);
    }
  }

  swift_beginAccess();
  v51 = swift_weakLoadStrong();
  if (v51)
  {
    v52 = *(v51 + 64);

    v53 = v68;
    (*(v41 + 16))(v68, v38, v43);
    v54 = type metadata accessor for PMAppSourceListModel.Source(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
    sub_21C742C88(v53);
  }

  v55 = v71;
  sub_21C6EDBAC(v49, v71, &qword_27CDEFEC0, &qword_21CBC32C0);
  v56 = (v55 + *(v76 + 48));
  v57 = v56[1];
  if (v57)
  {
    v58 = *v56;
    v73 = *(v41 + 8);
    (v73)(v55, v43);
    swift_beginAccess();
    v59 = swift_weakLoadStrong();
    if (v59)
    {
      v60 = v59;
      swift_getKeyPath();
      v78 = v60;
      sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
      sub_21CB810D4();

      v61 = *(v60 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);

      if (!(v61 >> 61))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21CBA0690;
        *(inited + 32) = v58;
        *(inited + 40) = v57;

        v63 = sub_21C8D7470(inited);
        swift_setDeallocating();
        sub_21C81A534(inited + 32);
        sub_21C880484(v63);

        sub_21C884F9C(v58, v57);
      }

      v49 = v72;
    }

    else
    {
    }
  }

  else
  {
    v73 = *(v41 + 8);
    (v73)(v55, v43);
  }

  swift_beginAccess();
  v64 = swift_weakLoadStrong();
  if (v64)
  {
    v65 = *(v64 + 48);

    sub_21CB86544();
    v74 = sub_21C7073E8(v65, v77);

    v66 = v69;
    (*(v75 + 56))(v69, 1, 1, v76);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21C6EDBAC(v66, v70, &qword_27CDEFEB8, &unk_21CBADD00);
    sub_21CB81DC4();
    sub_21C6EA794(v66, &qword_27CDEFEB8, &unk_21CBADD00);
  }

  sub_21C6EA794(v49, &qword_27CDEFEC0, &qword_21CBC32C0);
  return (v73)(v38, v43);
}

uint64_t *sub_21C8D003C()
{
  v1 = v0[3];
  sub_21C71B710(v0[2]);
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__safariViewControllerURL, &qword_27CDEFEE8, &unk_21CBADDE0);
  v7 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);

  v8 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState);

  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupIDForRecentlyAcceptedInvitation, &unk_27CDF20B0, &unk_21CBA0090);
  v9 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__addAccountSheetModel);

  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__accountToShowAfterSelectingSource, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21C72A584(*(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contextForPresentedNewFamilyGroupFlow));

  v10 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__importModel);

  v11 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___allViewModel);

  v12 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___passkeysViewModel);

  v13 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___invitationsViewModel);

  v14 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___recentlyDeletedViewModel);

  v15 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___securityRecommendationsViewModel);

  v16 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___verificationCodesViewModel);

  v17 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___wifiViewModel);

  v18 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupViewModels);

  v19 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel___observationRegistrar;
  v20 = sub_21CB81114();
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  return v0;
}

uint64_t sub_21C8D0214()
{
  sub_21C8D003C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t get_enum_tag_for_layout_string_17PasswordManagerUI24PMAppRootNavigationModelC6DetailO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI24PMAppRootNavigationModelC7ContentO(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 6;
  }

  else
  {
    return *a1 >> 61;
  }
}

uint64_t sub_21C8D02C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 8))
  {
    return (*a1 + 122);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21C8D031C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_21C8D037C(void *result, uint64_t a2)
{
  if (a2 < 6)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 6)) | 0xC000000000000000;
  }

  return result;
}

unint64_t sub_21C8D03AC()
{
  result = qword_27CDEFE48;
  if (!qword_27CDEFE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFE48);
  }

  return result;
}

unint64_t sub_21C8D0404()
{
  result = qword_27CDEFE50;
  if (!qword_27CDEFE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFE50);
  }

  return result;
}

unint64_t sub_21C8D045C()
{
  result = qword_27CDEFE58;
  if (!qword_27CDEFE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFE58);
  }

  return result;
}

uint64_t sub_21C8D04B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  swift_beginAccess();
  v5 = sub_21CB85114();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21C8D05C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = sub_21CB85114();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1);
  v13 = *a2;
  return a5(v11);
}

uint64_t sub_21C8D06BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v18 - v14;
  sub_21C6EDBAC(a1, &v18 - v14, a5, a6);
  v16 = *a2;
  return a7(v15);
}

uint64_t sub_21C8D0768@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_21C8D0874(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEB8, &unk_21CBADD00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_21C6EDBAC(a1, &v13 - v9, &qword_27CDEFEB8, &unk_21CBADD00);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6EDBAC(v10, v7, &qword_27CDEFEB8, &unk_21CBADD00);

  sub_21CB81DC4();
  return sub_21C6EA794(v10, &qword_27CDEFEB8, &unk_21CBADD00);
}

uint64_t sub_21C8D09CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__state;
  swift_beginAccess();
  return sub_21C710710(v3 + v4, a2, type metadata accessor for PMMultipleAccountsDetailsModel.State);
}

uint64_t sub_21C8D0AA8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PMMultipleAccountsDetailsModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21C710710(a1, v7, type metadata accessor for PMMultipleAccountsDetailsModel.State);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_21C71B720(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel);
  sub_21CB810C4();

  return sub_21C7192A0(v7, type metadata accessor for PMMultipleAccountsDetailsModel.State);
}