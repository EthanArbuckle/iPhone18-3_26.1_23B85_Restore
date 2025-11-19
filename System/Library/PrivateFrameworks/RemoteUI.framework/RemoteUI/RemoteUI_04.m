void (*sub_21B9F664C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 360))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV8RemoteUI14PinViewElement23PasscodeValidationModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_21B9F86E8(&qword_27CD9DEA8, type metadata accessor for PinViewElement.PasscodeValidationModel);
  sub_21BA8660C();

  v4[7] = sub_21B9F6364();
  return sub_21B9F679C;
}

uint64_t sub_21B9F67A8()
{
  if (v0[64] == 1)
  {
    (*(*v0 + 208))();
    v2 = v1;
    ObjectType = swift_getObjectType();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = *(AssociatedTypeWitness - 8);
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v7 = &v11 - v6;
    (*(v2 + 24))(ObjectType, v2);
    swift_unknownObjectRelease();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v9 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v7, AssociatedTypeWitness);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t (*sub_21B9F693C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(_BYTE *, void)
{
  v6 = v4;
  v52 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6B8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_21BA8673C();
  v54 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v49 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v21 = &v49 - v20;
  if ((v4[64] & 1) == 0)
  {
LABEL_14:
    v44 = sub_21BA8801C();
    (*(*(v44 - 8) + 56))(v12, 1, 1, v44);
    sub_21BA87FEC();

    v45 = sub_21BA87FDC();
    v46 = swift_allocObject();
    v47 = MEMORY[0x277D85700];
    v46[2] = v45;
    v46[3] = v47;
    v46[4] = v52;
    v46[5] = a4;
    v48 = sub_21B9F2BA4(0, 0, v12, &unk_21BA96CE0, v46);
    return (*(*v6 + 312))(v48);
  }

  v49 = a4;
  v50 = v19;
  v51 = v18;
  (*(*v4 + 208))();
  v23 = v22;
  ObjectType = swift_getObjectType();
  (*(v23 + 32))(a1, a2, ObjectType, v23);
  if (!v5)
  {
    swift_unknownObjectRelease();
    v38 = sub_21B9E0270();
    v39 = v54;
    v40 = v51;
    (*(v54 + 16))(v21, v38, v51);
    v41 = sub_21BA8671C();
    v42 = sub_21BA8821C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_21B93D000, v41, v42, "Local passcode validation succeeded", v43, 2u);
      MEMORY[0x21CEFF180](v43, -1, -1);
    }

    (*(v39 + 8))(v21, v40);
    a4 = v49;
    goto LABEL_14;
  }

  v52 = v5;
  swift_unknownObjectRelease();
  v25 = sub_21B9E0270();
  v26 = *(v54 + 16);
  v27 = v51;
  v26(v17, v25, v51);
  v28 = sub_21BA8671C();
  v29 = sub_21BA8821C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_21B93D000, v28, v29, "Local passcode validation failed", v30, 2u);
    MEMORY[0x21CEFF180](v30, -1, -1);
  }

  v31 = *(v54 + 8);
  v31(v17, v27);
  result = (*(*v6 + 272))(v53);
  if (__OFADD__(*v33, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v33;
    v34 = result(v53, 0);
    if ((*(*v6 + 256))(v34) >= 2)
    {
      (*(*v6 + 168))(1);
      v26(v50, v25, v27);
      v35 = sub_21BA8671C();
      v36 = sub_21BA8821C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_21B93D000, v35, v36, "Too many attempts to enter local passcode", v37, 2u);
        MEMORY[0x21CEFF180](v37, -1, -1);
      }

      v31(v50, v27);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21B9F6F18(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_21BA87FEC();
  v4[3] = sub_21BA87FDC();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_21B9F7028;

  return v8();
}

uint64_t sub_21B9F7028()
{
  *(*v1 + 40) = v0;

  v3 = sub_21BA87F9C();
  if (v0)
  {
    v4 = sub_21B9F71E8;
  }

  else
  {
    v4 = sub_21B9F7184;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21B9F7184()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B9F71E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B9F73D4()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtCV8RemoteUI14PinViewElement23PasscodeValidationModel___observationRegistrar;
  v2 = sub_21BA8662C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

id sub_21B9F7480@<X0>(void *a1@<X8>)
{
  result = [v1 configuration];
  *a1 = result;
  return result;
}

id sub_21B9F74D4()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = sub_21BA87C8C();
  v5[0] = 0;
  v2 = [v0 isCorrectPasscode:v1 error:v5];

  if (v2)
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_21BA8638C();

  return swift_willThrow();
}

unint64_t sub_21B9F75C4()
{
  result = qword_27CD9DD88;
  if (!qword_27CD9DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DD88);
  }

  return result;
}

uint64_t sub_21B9F7618(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21B9F7698()
{
  result = qword_27CD9DDC0;
  if (!qword_27CD9DDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DDC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DD70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DD68);
    sub_21B9B35B8(&qword_27CD9DD80, &qword_27CD9DD68);
    sub_21B9F75C4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21B9B35B8(&qword_27CD9DDD0, &qword_27CD9DDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DDC0);
  }

  return result;
}

unint64_t sub_21B9F7818()
{
  result = qword_27CD9DDE8;
  if (!qword_27CD9DDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DDB0);
    sub_21B9B35B8(&qword_27CD9DDF0, &qword_27CD9DDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DDE8);
  }

  return result;
}

unint64_t sub_21B9F78D0()
{
  result = qword_27CD9DE10;
  if (!qword_27CD9DE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DDA0);
    sub_21B9F7988();
    sub_21B9B35B8(&unk_27CD9DE20, &qword_27CD9D658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DE10);
  }

  return result;
}

unint64_t sub_21B9F7988()
{
  result = qword_27CD9DE18;
  if (!qword_27CD9DE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DE00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DD98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DDA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DDB0);
    sub_21B9F975C(&qword_27CD9DDB8, &qword_27CD9DD98, &unk_21BA96B40, sub_21B9F7698);
    sub_21B9B35B8(&qword_27CD9DDE0, &qword_27CD9DDA8);
    sub_21B9F7818();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DE18);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for PinViewElement(0);
  v28 = *(*(v1 - 1) + 80);
  v26 = *(*(v1 - 1) + 64);
  v27 = (v28 + 16) & ~v28;
  v29 = v0;
  v2 = v0 + v27;

  sub_21B9ECAE0(*(v2 + 80), *(v2 + 88), *(v2 + 96));
  sub_21B94B4EC(*(v2 + 104), *(v2 + 112));

  v3 = v1[12];
  v4 = sub_21BA860EC();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + v1[14];
  v6 = sub_21BA864AC();
  v7 = *(v6 - 8);
  v30 = *(v7 + 48);
  if (!v30(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  v8 = type metadata accessor for URLLoadingParameters(0);

  if (*(v5 + *(v8 + 64) + 8))
  {
  }

  v9 = type metadata accessor for URLLoader(0);
  sub_21B94B4EC(*(v5 + v9[5]), *(v5 + v9[5] + 8));
  sub_21B94B4EC(*(v5 + v9[6]), *(v5 + v9[6] + 8));
  sub_21B9B01C4(*(v5 + v9[7]), *(v5 + v9[7] + 8), *(v5 + v9[7] + 16));
  v10 = v9[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!v30(v5 + v10, 1, v6))
    {
      (*(v7 + 8))(v5 + v10, v6);
    }
  }

  else
  {
  }

  v25 = v7;
  sub_21B9B01C4(*(v5 + v9[9]), *(v5 + v9[9] + 8), *(v5 + v9[9] + 16));
  sub_21B9427E4(*(v5 + v9[10]), *(v5 + v9[10] + 8));

  v11 = v2 + v1[15];
  if (*(v11 + 48))
  {
    sub_21B9CA1E8(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32));

    sub_21B9427E4(*(v11 + 144), *(v11 + 152));
  }

  v12 = v2 + v1[17];
  v13 = type metadata accessor for HTMLContentElement(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    sub_21B9CA1D0(*v12, *(v12 + 8));
    sub_21B9CA1DC();

    v14 = v12 + *(v13 + 28);
    if (!v30(v14, 1, v6))
    {
      (*(v7 + 8))(v14, v6);
    }

    if (*(v14 + *(v8 + 64) + 8))
    {
    }

    sub_21B94B4EC(*(v14 + v9[5]), *(v14 + v9[5] + 8));
    sub_21B94B4EC(*(v14 + v9[6]), *(v14 + v9[6] + 8));
    sub_21B9B01C4(*(v14 + v9[7]), *(v14 + v9[7] + 8), *(v14 + v9[7] + 16));
    v15 = v9[8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (!v30(v14 + v15, 1, v6))
      {
        (*(v25 + 8))(v14 + v15, v6);
      }
    }

    else
    {
    }

    sub_21B9B01C4(*(v14 + v9[9]), *(v14 + v9[9] + 8), *(v14 + v9[9] + 16));
    sub_21B9427E4(*(v14 + v9[10]), *(v14 + v9[10] + 8));

    v16 = *(v13 + 32);
    v17 = sub_21BA862DC();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v12 + v16, 1, v17))
    {
      (*(v18 + 8))(v12 + v16, v17);
    }
  }

  v19 = v2 + v1[18];
  v20 = type metadata accessor for FooterElement(0);
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    sub_21B9CA1D0(*v19, *(v19 + 8));

    v21 = v19 + *(v20 + 24);
    if (!v30(v21, 1, v6))
    {
      (*(v25 + 8))(v21, v6);
    }

    if (*(v21 + *(v8 + 64) + 8))
    {
    }

    sub_21B94B4EC(*(v21 + v9[5]), *(v21 + v9[5] + 8));
    sub_21B94B4EC(*(v21 + v9[6]), *(v21 + v9[6] + 8));
    sub_21B9B01C4(*(v21 + v9[7]), *(v21 + v9[7] + 8), *(v21 + v9[7] + 16));
    v22 = v9[8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (!v30(v21 + v22, 1, v6))
      {
        (*(v25 + 8))(v21 + v22, v6);
      }
    }

    else
    {
    }

    sub_21B9B01C4(*(v21 + v9[9]), *(v21 + v9[9] + 8), *(v21 + v9[9] + 16));
    sub_21B9427E4(*(v21 + v9[10]), *(v21 + v9[10] + 8));

    v23 = v19 + *(v20 + 28);
    if (*(v23 + 40))
    {
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v23);
    }
  }

  sub_21B94B4EC(*(v2 + v1[23]), *(v2 + v1[23] + 8));

  return MEMORY[0x2821FE8E8](v29, v27 + v26, v28 | 7);
}

uint64_t sub_21B9F844C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PinViewElement(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21B9F84C0()
{
  v2 = *(type metadata accessor for PinViewElement(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21B9AC1F4;

  return sub_21B9F27C0(v4, v5, v6, v0 + v3);
}

uint64_t sub_21B9F8588@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BA86E0C();
  *a1 = result;
  return result;
}

uint64_t sub_21B9F85E0()
{
  v0 = sub_21BA8875C();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21B9F862C()
{
  result = qword_27CD9DE68;
  if (!qword_27CD9DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DE68);
  }

  return result;
}

uint64_t sub_21B9F8680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B9F86E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21B9F8730(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21B9F87EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_21B9F8840()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 24) = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_21B9F88A8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 40) = v1;
  return result;
}

uint64_t sub_21B9F88F8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 48) = v1;
}

uint64_t sub_21B9F895C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21B9AC2E8;

  return sub_21B9F6F18(v3, v4, v5, v2);
}

unint64_t sub_21B9F89F8()
{
  result = qword_27CD9DEB8;
  if (!qword_27CD9DEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DEB8);
  }

  return result;
}

unint64_t sub_21B9F8A50()
{
  result = qword_27CD9DEC0;
  if (!qword_27CD9DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DEC0);
  }

  return result;
}

unint64_t sub_21B9F8AA8()
{
  result = qword_27CD9DEC8;
  if (!qword_27CD9DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DEC8);
  }

  return result;
}

uint64_t sub_21B9F8AFC(void *a1)
{
  a1[1] = sub_21B9F86E8(&unk_27CD9BBC0, type metadata accessor for PinViewElement);
  a1[2] = sub_21B9F86E8(&qword_27CD9BBB8, type metadata accessor for PinViewElement);
  result = sub_21B9F86E8(&unk_27CD9BBD0, type metadata accessor for PinViewElement);
  a1[3] = result;
  return result;
}

uint64_t sub_21B9F8BC4(uint64_t a1)
{
  result = sub_21B9F86E8(&qword_27CD9BBB8, type metadata accessor for PinViewElement);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21B9F8C20()
{
  result = qword_27CD9DED8;
  if (!qword_27CD9DED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DED8);
  }

  return result;
}

unint64_t sub_21B9F8C78()
{
  result = qword_27CD9DF40;
  if (!qword_27CD9DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DF40);
  }

  return result;
}

void sub_21B9F8D1C()
{
  v0 = MEMORY[0x277D837D0];
  sub_21B9F90BC(319, &unk_27CD9BC18, MEMORY[0x277D837D0], MEMORY[0x277CE10B0]);
  if (v1 <= 0x3F)
  {
    sub_21B9F9000();
    if (v2 <= 0x3F)
    {
      sub_21B9F910C(319, &qword_27CD9BC28, type metadata accessor for PinViewElement.PasscodeValidationModel, MEMORY[0x277CE10B0]);
      if (v3 <= 0x3F)
      {
        sub_21B9B3C7C();
        if (v4 <= 0x3F)
        {
          sub_21B9F90BC(319, &qword_27CD9BC68, &type metadata for StyleName, MEMORY[0x277CDF470]);
          if (v5 <= 0x3F)
          {
            sub_21B9F9058();
            if (v6 <= 0x3F)
            {
              sub_21BA860EC();
              if (v7 <= 0x3F)
              {
                sub_21B94010C();
                if (v8 <= 0x3F)
                {
                  type metadata accessor for URLLoader(319);
                  if (v9 <= 0x3F)
                  {
                    sub_21B9F90BC(319, &qword_27CD9BBE8, &type metadata for RUIImageView, MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      sub_21B9F90BC(319, &qword_27CD9BAB0, v0, MEMORY[0x277D83D88]);
                      if (v11 <= 0x3F)
                      {
                        sub_21B9F910C(319, &unk_27CD9BB10, type metadata accessor for HTMLContentElement, MEMORY[0x277D83D88]);
                        if (v12 <= 0x3F)
                        {
                          sub_21B9F910C(319, &qword_27CD9BBE0, type metadata accessor for FooterElement, MEMORY[0x277D83D88]);
                          if (v13 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21B9F9000()
{
  if (!qword_27CD9BCA0)
  {
    v0 = sub_21BA86A2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9BCA0);
    }
  }
}

void sub_21B9F9058()
{
  if (!qword_27CD9BC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DF48);
    v0 = sub_21BA86A5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9BC50);
    }
  }
}

void sub_21B9F90BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21B9F910C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21B9F9188()
{
  result = type metadata accessor for PinViewElement(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B9F9244(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B9F928C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_21B9F9304(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B9F934C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B9F93CC()
{
  result = sub_21BA8662C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_21B9F948C()
{
  result = qword_27CD9DFD0;
  if (!qword_27CD9DFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CD9DE50);
    sub_21B9B35B8(&qword_27CD9DFD8, &qword_27CD9DFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DFD0);
  }

  return result;
}

unint64_t sub_21B9F9544()
{
  result = qword_27CD9DFE8;
  if (!qword_27CD9DFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DE90);
    sub_21B9F95FC();
    sub_21B9B35B8(&qword_27CD9E000, &qword_27CD9DEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DFE8);
  }

  return result;
}

unint64_t sub_21B9F95FC()
{
  result = qword_27CD9DFF0;
  if (!qword_27CD9DFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DE88);
    sub_21B9B35B8(&qword_27CD9DFF8, &qword_27CD9DE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9DFF0);
  }

  return result;
}

unint64_t sub_21B9F96B4()
{
  result = qword_27CD9E008;
  if (!qword_27CD9E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E008);
  }

  return result;
}

unint64_t sub_21B9F9708()
{
  result = qword_27CD9E010;
  if (!qword_27CD9E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E010);
  }

  return result;
}

uint64_t sub_21B9F975C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B9F97D8()
{
  result = qword_27CD9E0A8;
  if (!qword_27CD9E0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E0B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DDA0);
    sub_21B9F78D0();
    sub_21B9BAB9C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E0B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E0C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E0C8);
    type metadata accessor for PinViewElement(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E0D0);
    sub_21B9F9A40();
    swift_getOpaqueTypeConformance2();
    sub_21B9F86E8(&qword_27CD9E020, type metadata accessor for PinViewElement);
    swift_getOpaqueTypeConformance2();
    sub_21B9B35B8(&qword_27CD9E0F0, &qword_27CD9E0C0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E0A8);
  }

  return result;
}

unint64_t sub_21B9F9A40()
{
  result = qword_27CD9E0D8;
  if (!qword_27CD9E0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E0D0);
    sub_21B9B35B8(&qword_27CD9E0E0, &qword_27CD9E0E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E0D8);
  }

  return result;
}

unint64_t sub_21B9F9AF8()
{
  result = qword_27CD9E0F8;
  if (!qword_27CD9E0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E088);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E080);
    sub_21B9F975C(&qword_27CD9E0A0, &qword_27CD9E080, &unk_21BA974C0, sub_21B9F97D8);
    swift_getOpaqueTypeConformance2();
    sub_21B9B35B8(&unk_27CD9DE20, &qword_27CD9D658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E0F8);
  }

  return result;
}

uint64_t sub_21B9F9C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for PinViewElement(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_21B9F1E14(a1, a2, v8, a3);
}

unint64_t sub_21B9F9CA8()
{
  result = qword_27CD9E158;
  if (!qword_27CD9E158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E150);
    sub_21B9B35B8(&qword_27CD9E160, &qword_27CD9E168);
    sub_21B9B35B8(&qword_27CD9E170, &qword_27CD9E178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E158);
  }

  return result;
}

uint64_t sub_21B9F9D8C()
{
  type metadata accessor for PinViewElement(0);
  sub_21B9EEF08();
  return sub_21B9F2580();
}

uint64_t sub_21B9F9DFC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for PinViewElement(0) - 8);
  v6 = (v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_21B9F2124(a1, v7, v8, a2);
}

unint64_t sub_21B9F9EAC()
{
  result = qword_27CD9D4C8;
  if (!qword_27CD9D4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D4D0);
    sub_21B9C57B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9D4C8);
  }

  return result;
}

unint64_t sub_21B9F9F38()
{
  result = qword_27CD9E1A8;
  if (!qword_27CD9E1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CD9E190);
    sub_21B9F9FF0();
    sub_21B9B35B8(&qword_27CD9E1D0, &qword_27CD9E1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E1A8);
  }

  return result;
}

unint64_t sub_21B9F9FF0()
{
  result = qword_27CD9E1B0;
  if (!qword_27CD9E1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E1B8);
    sub_21B9B35B8(&qword_27CD9E1C0, &qword_27CD9E1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E1B0);
  }

  return result;
}

uint64_t sub_21B9FA0A8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_21B9FA0C0(uint64_t a1)
{
  *(a1 + 288) = 0;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_21B9FA0F0()
{
  result = qword_27CD9E200;
  if (!qword_27CD9E200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E1E8);
    sub_21B9FA1A8();
    sub_21B9B35B8(&qword_27CD9E218, &qword_27CD9E220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E200);
  }

  return result;
}

unint64_t sub_21B9FA1A8()
{
  result = qword_27CD9E208;
  if (!qword_27CD9E208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D5B0);
    sub_21B9F86E8(&qword_27CD9E210, type metadata accessor for HTMLContentElement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E208);
  }

  return result;
}

uint64_t sub_21B9FA2B8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PinViewElement(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21B9EEAEC(a1, a2, v6);
}

uint64_t sub_21B9FA338(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PinViewElement(0) - 8);
  v5 = (v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_21B9EEC9C(a2, v5);
}

uint64_t sub_21B9FA3A8()
{
  v2 = *(type metadata accessor for PinViewElement(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21B9AC2E8;

  return sub_21B9EF140(v0 + v3);
}

uint64_t sub_21B9FA474()
{
  v2 = *(type metadata accessor for PinViewElement(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21B9AC2E8;

  return sub_21B9ED54C(v0 + v3);
}

RUI __swiftcall RUI.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for RUI()
{
  result = qword_27CDA7328[0];
  if (!qword_27CDA7328[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27CDA7328);
  }

  return result;
}

uint64_t type metadata accessor for DatePickerCell()
{
  result = qword_27CDA73B0;
  if (!qword_27CDA73B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B9FA69C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E2F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9FA70C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E2F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_21BA8651C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[3];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v0[2];
  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
  }

  else
  {
LABEL_6:
    v11 = type metadata accessor for DatePickerCell();
    sub_21B9FA69C(v0 + *(v11 + 28), v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_21B9FA910(v3);
      return 0;
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v12 = v0[4];
      v13 = sub_21BA864FC();
      v14 = [v12 stringFromDate_];

      v9 = sub_21BA87CBC();
      (*(v5 + 8))(v7, v4);
    }
  }

  return v9;
}

uint64_t sub_21B9FA910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E2F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_21B9FA978@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E2F8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v11 - v4;
  *v5 = sub_21BA86ECC();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E300);
  sub_21B9FAAD8(v1, &v5[*(v6 + 44)]);
  sub_21BA87B2C();
  sub_21BA86CEC();
  sub_21B9AB6D4(v5, a1, &qword_27CD9E2F8);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E308) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_21B9FAAD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a2;
  v3 = sub_21BA8725C();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BA86FBC();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D188);
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E360);
  MEMORY[0x28223BE20](v45);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E368);
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x28223BE20](v12);
  v43 = &v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E370);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  if (a1[1])
  {
    v20 = *a1;
    v21 = a1[1];
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  v55 = v20;
  v56 = v21;
  sub_21B9BAB9C();

  v22 = sub_21BA8767C();
  v24 = v23;
  v51 = v25;
  v27 = v26;
  v28 = sub_21B9FA70C();
  if (v29)
  {
    v55 = v28;
    v56 = v29;
    sub_21BA879CC();
    v41 = v27;
    v30 = v44;
    sub_21BA86FAC();
    sub_21B9B35B8(&qword_27CD9E380, &qword_27CD9D188);
    sub_21B9FBCB0(&qword_27CD9E388, MEMORY[0x277CDDED8]);
    v31 = v47;
    sub_21BA876DC();
    v32 = v30;
    v27 = v41;
    (*(v46 + 8))(v32, v31);
    (*(v42 + 8))(v9, v7);
    v33 = sub_21BA871CC();
    *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E390) + 36)] = v33;
    v11[*(v45 + 36)] = 0;
    v34 = v48;
    sub_21BA8724C();
    sub_21B9FBCF8();
    v35 = v43;
    sub_21BA8776C();
    (*(v49 + 8))(v34, v50);
    sub_21B9ABAAC(v11, &qword_27CD9E360);
    sub_21B9AB6D4(v35, v19, &qword_27CD9E368);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  (*(v53 + 56))(v19, v36, 1, v54);
  sub_21B946CC0(v19, v16);
  v37 = v52;
  *v52 = v22;
  v37[1] = v24;
  v38 = v51 & 1;
  *(v37 + 16) = v51 & 1;
  v37[3] = v27;
  v37[4] = 0;
  *(v37 + 40) = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E378);
  sub_21B946CC0(v16, v37 + *(v39 + 64));
  sub_21B9C320C(v22, v24, v38);

  sub_21B9ABAAC(v19, &qword_27CD9E370);
  sub_21B9ABAAC(v16, &qword_27CD9E370);
  sub_21B9C318C(v22, v24, v38);
}

uint64_t sub_21B9FB0E0@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277CDE2E8];
  v3 = sub_21BA8729C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void RemoteUITableViewCell.setupDatePickerCell(element:renderPlaceHolder:date:dateFormatter:)(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v40 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E310);
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v37 - v10;
  v12 = [a1 pageElement];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 page];

    if (v14)
    {
      v15 = [v14 objectModel];

      if (v15)
      {
        v45[0] = 0x6C6562616CLL;
        v45[1] = 0xE500000000000000;
        sub_21BA8853C();
        v16 = [a1 attributes];
        if (v16)
        {
          v17 = v16;
          v38 = a3;
          v39 = v4;
          v18 = sub_21BA87BCC();

          if (*(v18 + 16) && (v19 = sub_21B9AF000(v44), (v20 & 1) != 0))
          {
            sub_21B9AFDF0(*(v18 + 56) + 32 * v19, v45);
            sub_21B9AFD9C(v44);

            v21 = swift_dynamicCast();
            if (v21)
            {
              v22 = v42;
            }

            else
            {
              v22 = 0;
            }

            if (v21)
            {
              v23 = v43;
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {

            sub_21B9AFD9C(v44);
            v22 = 0;
            v23 = 0;
          }

          v42 = 0x6C6F686563616C70;
          v43 = 0xEB00000000726564;
          sub_21BA8853C();
          v24 = [a1 attributes];
          if (v24)
          {
            v25 = v24;
            v26 = sub_21BA87BCC();

            if (*(v26 + 16) && (v27 = sub_21B9AF000(v44), (v28 & 1) != 0))
            {
              sub_21B9AFDF0(*(v26 + 56) + 32 * v27, v45);
              sub_21B9AFD9C(v44);

              v29 = swift_dynamicCast();
              if (v29)
              {
                v30 = v43;
LABEL_21:
                MEMORY[0x28223BE20](v29);
                *(&v37 - 8) = v22;
                *(&v37 - 7) = v23;
                *(&v37 - 48) = v31 & 1;
                *(&v37 - 5) = v32;
                *(&v37 - 4) = v30;
                v33 = v38;
                *(&v37 - 3) = v34;
                v35 = v33;
                v36 = v15;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E318);
                sub_21B9FB910();
                sub_21BA8721C();

                sub_21BA8748C();
                v44[3] = v7;
                v44[4] = sub_21B9B35B8(&qword_27CD9E338, &qword_27CD9E310);
                __swift_allocate_boxed_opaque_existential_1(v44);
                sub_21BA8720C();
                (*(v8 + 8))(v11, v7);
                MEMORY[0x21CEFD580](v44);

                return;
              }
            }

            else
            {

              v29 = sub_21B9AFD9C(v44);
            }

            v30 = 0xE000000000000000;
            goto LABEL_21;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }
    }
  }

  sub_21BA886DC();
  __break(1u);
}

uint64_t sub_21B9FB604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v29 = a4;
  v30 = a8;
  v31 = a9;
  v15 = type metadata accessor for DatePickerCell();
  MEMORY[0x28223BE20](v15);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = 0;
  v19 = 0;
  if (a3)
  {

    v18 = v29;
    v19 = a5;
  }

  sub_21B9FA69C(a7, v17 + *(v15 + 28));
  *v17 = a1;
  v17[1] = a2;
  v17[2] = v18;
  v17[3] = v19;
  v17[4] = a6;
  v20 = (v17 + *(v15 + 32));
  type metadata accessor for XMLUIData();
  sub_21B9FBCB0(&qword_27CD9BAC8, type metadata accessor for XMLUIData);

  v21 = a6;
  *v20 = sub_21BA86D0C();
  v20[1] = v22;
  v23 = RUIObjectModel.xmlUIData.getter();
  v24 = sub_21BA868FC();
  v25 = v31;
  sub_21B9FBC4C(v17, v31);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E318);
  v27 = (v25 + *(result + 36));
  *v27 = v24;
  v27[1] = v23;
  return result;
}

unint64_t sub_21B9FB910()
{
  result = qword_27CD9E320;
  if (!qword_27CD9E320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E318);
    sub_21B9FBCB0(&qword_27CD9E328, type metadata accessor for DatePickerCell);
    sub_21B9B35B8(&qword_27CD9E330, &unk_27CD9E650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E320);
  }

  return result;
}

void sub_21B9FBA3C()
{
  sub_21B9407E0();
  if (v0 <= 0x3F)
  {
    sub_21B9FBAF0();
    if (v1 <= 0x3F)
    {
      sub_21B9FBB3C();
      if (v2 <= 0x3F)
      {
        sub_21B9B3C7C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_21B9FBAF0()
{
  result = qword_27CD9E340;
  if (!qword_27CD9E340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD9E340);
  }

  return result;
}

void sub_21B9FBB3C()
{
  if (!qword_27CD9E348)
  {
    sub_21BA8651C();
    v0 = sub_21BA883CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9E348);
    }
  }
}

unint64_t sub_21B9FBB94()
{
  result = qword_27CD9E350;
  if (!qword_27CD9E350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E308);
    sub_21B9B35B8(&qword_27CD9E358, &qword_27CD9E2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E350);
  }

  return result;
}

uint64_t sub_21B9FBC4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatePickerCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9FBCB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21B9FBCF8()
{
  result = qword_27CD9E398;
  if (!qword_27CD9E398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E360);
    sub_21B9FBD84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E398);
  }

  return result;
}

unint64_t sub_21B9FBD84()
{
  result = qword_27CD9E3A0;
  if (!qword_27CD9E3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E390);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9D188);
    sub_21BA86FBC();
    sub_21B9B35B8(&qword_27CD9E380, &qword_27CD9D188);
    sub_21B9FBCB0(&qword_27CD9E388, MEMORY[0x277CDDED8]);
    swift_getOpaqueTypeConformance2();
    sub_21B9B35B8(&qword_27CD9E3A8, &qword_27CD9E3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E3A0);
  }

  return result;
}

void sub_21B9FBEFC(void *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E3B8);
  MEMORY[0x28223BE20](v25);
  v7 = v23 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D4B8);
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E0C0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D4A8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v23 - v16;
  v18 = sub_21B9C33F8(a1, a2 & 1);
  if (!v18)
  {
    (*(v12 + 56))(v17, 1, 1, v11);
    goto LABEL_6;
  }

  v23[0] = a3;
  v23[1] = a1;
  v19 = v18;
  v20 = [v18 pageElement];

  if (v20)
  {
    v21 = [v20 page];

    if (v21)
    {
      sub_21BA13E9C(v14, v10);

      v22 = *(v25 + 48);
      (*(v12 + 32))(v7, v14, v11);
      (*(v8 + 32))(&v7[v22], v10, v24);
      (*(v12 + 16))(v17, v7, v11);
      sub_21B9ABAAC(v7, &qword_27CD9E3B8);
      (*(v12 + 56))(v17, 0, 1, v11);
      a3 = v23[0];
LABEL_6:
      sub_21B9C35A0(v17, a2 & 0x101, a3);
      sub_21B9ABAAC(v17, &qword_27CD9D4A8);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_21B9FC25C@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21BA87CBC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  result = [v1 textColor];
  if (result)
  {
    v9 = result;
    v10 = [v1 numberOfLines];
    v11 = [v1 font];
    result = [v1 textAlignment];
    *a1 = v5;
    a1[1] = v7;
    a1[2] = v9;
    a1[3] = v10;
    a1[4] = v11;
    a1[5] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B9FC340()
{
  v1 = *(v0 + 40);
  if (v1 == 2)
  {
    return 2;
  }

  else
  {
    return v1 == 1;
  }
}

uint64_t sub_21B9FC35C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = result;

    sub_21BA86F3C();
    v7 = sub_21BA8765C();
    v9 = v8;
    v11 = v10;
    v12 = *(v2 + 32);
    if (v12)
    {
      v13 = v12;
      sub_21BA875CC();
    }

    v33 = sub_21BA8760C();
    v15 = v14;
    v17 = v16;
    sub_21B9C318C(v7, v9, v11 & 1);

    if (!v6)
    {
      v18 = *(v2 + 16);
      sub_21BA8786C();
    }

    v32 = sub_21BA875EC();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    sub_21B9C318C(v33, v15, v17 & 1);

    v25 = *(v2 + 40);
    if (v25 >= 5)
    {
      v26 = 0;
    }

    else
    {
      v26 = 0x20100uLL >> (8 * v25);
    }

    KeyPath = swift_getKeyPath();
    v28 = *(v2 + 24);
    v43 = v22 & 1;
    v42 = v28 == 0;
    v34[0] = v32;
    v34[1] = v20;
    v35 = v22 & 1;
    v36 = v24;
    v37 = KeyPath;
    v38 = v26;
    v39 = swift_getKeyPath();
    v40 = v28;
    v41 = v28 == 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E3C0);
    sub_21B9FC624();
    v30 = sub_21B9FD000(v29);
    v31 = MEMORY[0x277CE11B8];
    *(a2 + 24) = MEMORY[0x277CE11D0];
    *(a2 + 32) = v31;
    result = sub_21B9FC7C0(v34);
    *a2 = v30;
  }

  else
  {
LABEL_7:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_21B9FC5C0@<X0>(uint64_t a1@<X8>)
{
  result = sub_21BA86E6C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_21B9FC624()
{
  result = qword_27CD9E3C8;
  if (!qword_27CD9E3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E3C0);
    sub_21B9FC6C8();
    sub_21B9FC76C(&qword_27CD9E3F0, &qword_27CD9E3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E3C8);
  }

  return result;
}

unint64_t sub_21B9FC6C8()
{
  result = qword_27CD9E3D0;
  if (!qword_27CD9E3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E3D8);
    sub_21B9FC76C(&qword_27CD9E3E0, &qword_27CD9E3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E3D0);
  }

  return result;
}

uint64_t sub_21B9FC76C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B9FC7C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E3C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B9FC828(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B9FC870(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for NSTextAlignment()
{
  if (!qword_27CD9E400)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27CD9E400);
    }
  }
}

uint64_t RUIViewContent.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RUIViewContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E418);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v36 - v7;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v9 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21B9FCED0();
  sub_21BA88C0C();
  if (v2)
  {
    goto LABEL_2;
  }

  v11 = v6;
  v38 = a2;
  v12 = sub_21BA8881C();
  if (!v12[2])
  {

    sub_21B9FCFAC();
    swift_allocError();
    *v18 = xmmword_21BA978B0;
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
LABEL_2:
    __swift_destroy_boxed_opaque_existential_1(v60);
    return sub_21B9ABAAC(&v51, &qword_27CD9E408);
  }

  v39 = v5;
  v13 = v12[4];
  v14 = v12[5];

  v49 = v13;
  v50 = v14;
  v15 = v60;
  __swift_project_boxed_opaque_existential_1(v60, v60[3]);

  v16 = Decoder.decodeRUIID()();
  if (v17)
  {

    (*(v11 + 8))(v8, v39);
    __swift_destroy_boxed_opaque_existential_1(v15);

    return sub_21B9ABAAC(&v51, &qword_27CD9E408);
  }

  v44 = v16;

  MEMORY[0x21CEFD130](0x6E6F43776569762DLL, 0xEC000000746E6574);

  v48 = v44;
  v36[0] = v44._object;
  v19 = sub_21B9DDCB8();
  v20 = *v19;
  v21 = *((*MEMORY[0x277D85000] & **v19) + 0x80);
  v36[1] = (*MEMORY[0x277D85000] & **v19) + 128;
  v37 = v21;
  v22 = v20;
  v23 = v37(v13, v14);
  v25 = v24;

  if (v23)
  {
    sub_21B9B3220(v15, &v40);
    v42 = v23;
    v43 = v25;
    __swift_allocate_boxed_opaque_existential_1(v41);
    sub_21BA880CC();
    v26 = v42;
    v27 = v43;
    v28 = v8;
    v29 = v39;
    v30 = __swift_project_boxed_opaque_existential_1(v41, v42);
    v45 = v26;
    v46 = *(v27 + 16);
    v47 = *(v27 + 24);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44._countAndFlagsBits);
    (*(*(v26 - 8) + 16))(boxed_opaque_existential_1, v30, v26);
    v32 = v28;
    v15 = v60;
    (*(v11 + 8))(v32, v29);
    sub_21B9D5A08(&v44, &v51, &qword_27CD9E408);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v55 = 0;
    memset(v54, 0, sizeof(v54));
  }

  else
  {
    sub_21B9ABAAC(&v51, &qword_27CD9E408);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    sub_21B9B3220(v15, &v44);
    sub_21BA42718(&v44, &v56);
    v33 = v56;
    v34 = v58;
    v35 = v59;
    (*(v11 + 8))(v8, v39);
    *&v54[1] = v57;
    v54[0] = v33;
    v54[3] = v34;
    v55 = v35;
  }

  sub_21B9FCF24(&v48, v38);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return sub_21B9B33F0(&v48);
}

unint64_t sub_21B9FCED0()
{
  result = qword_27CD9E420;
  if (!qword_27CD9E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E420);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x21CEFF180);
  }

  return result;
}

unint64_t sub_21B9FCFAC()
{
  result = qword_27CD9E428;
  if (!qword_27CD9E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E428);
  }

  return result;
}

uint64_t sub_21B9FD000(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  return sub_21BA87A2C();
}

uint64_t RUIViewContent.anyView.getter()
{
  sub_21B9FCF24(v0, v2);
  sub_21B9FD108();
  return sub_21BA87A2C();
}

unint64_t sub_21B9FD108()
{
  result = qword_27CD9E430;
  if (!qword_27CD9E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E430);
  }

  return result;
}

uint64_t RUIViewContent.body.getter()
{
  v1 = v0;
  sub_21B9AFF80(v0 + 32, v18, &qword_27CD9E408);
  v2 = v19;
  if (v19)
  {
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v3 = sub_21B9FD000(v2);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_21B9ABAAC(v18, &qword_27CD9E408);
    v4 = *(v1 + 88);
    if (v4)
    {
      v6 = *(v1 + 96);
      v5 = *(v1 + 104);
      v7 = *(v1 + 112);
      v18[0] = *(v1 + 80);
      v18[1] = v4;
      v18[2] = v6;
      v19 = v5;
      v8 = v7 & 1;
      v20 = v7 & 1;

      v9 = v6;
      sub_21B9ECCD8(v5, v8);
      sub_21B9FD674();
    }

    v3 = sub_21BA87A2C();
  }

  v18[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E450);
  sub_21B9FD5F8();
  v17 = sub_21BA87A2C();
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  sub_21B9AFF80(v1 + 32, v18, &qword_27CD9E408);
  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E448);
    if (swift_dynamicCast())
    {
      v12 = *(&v15 + 1) != 0;
    }

    else
    {
      v12 = 0;
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    sub_21B9ABAAC(v18, &qword_27CD9E408);
    v12 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
  }

  sub_21B9ABAAC(&v14, &qword_27CD9E438);
  sub_21BA45284(v10, v11, v12, MEMORY[0x277CE11D0], MEMORY[0x277CE11B8]);
}

unint64_t sub_21B9FD3AC(void *a1)
{
  a1[1] = sub_21B9B339C();
  a1[2] = sub_21B9E35D0();
  result = sub_21B9FD108();
  a1[3] = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_s12Identifiable_7SwiftUI4ViewpSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_21B9FD460(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B9FD4A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B9FD518(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B9FD56C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_21B9FD5C8(void *result, int a2)
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

unint64_t sub_21B9FD5F8()
{
  result = qword_27CD9E458;
  if (!qword_27CD9E458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E458);
  }

  return result;
}

unint64_t sub_21B9FD674()
{
  result = qword_27CD9F340;
  if (!qword_27CD9F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9F340);
  }

  return result;
}

void sub_21B9FD6DC(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3 = *(v1 + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container);
  Strong = swift_unknownObjectWeakLoadStrong();
  (*((*MEMORY[0x277D85000] & *v3) + qword_27CDB2188 + 168))(Strong);
}

void (*sub_21B9FD7A0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_objectModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21B9FD838;
}

void sub_21B9FD838(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    v5 = *(v3 + 32);
    swift_endAccess();

    v6 = *(v5 + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container);
    Strong = swift_unknownObjectWeakLoadStrong();
    (*((*MEMORY[0x277D85000] & *v6) + qword_27CDB2188 + 168))(Strong);
  }

  free(v3);
}

void RUISwiftUIContainerElement.init(element:parent:)(void *a1, id a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_objectModel;
  swift_unknownObjectWeakInit();
  v7 = &v2[OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_willLayoutSubviewsHandler];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v2[OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_didLayoutSubviewsHandler];
  type metadata accessor for ElementDirectory();
  *v8 = 0;
  v8[1] = 0;
  v9 = sub_21BA52ABC();
  v10 = objc_allocWithZone(type metadata accessor for RUISwiftUIContainer(0));
  v11 = a2;
  v12 = a1;

  sub_21BA03180(v12, a2, v9);
  if (v13)
  {
    v14 = v13;
    *&v2[OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container] = v13;
    *&v2[OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_childElementDirectory] = v9;

    v15 = v14;
    v16 = [v12 attributtes];
    v17 = sub_21BA87BCC();

    sub_21B9E9024(v17);

    v18 = sub_21BA87BBC();

    v24.receiver = v3;
    v24.super_class = type metadata accessor for RUISwiftUIContainerElement();
    v19 = objc_msgSendSuper2(&v24, sel_initWithAttributes_parent_, v18, v11);

    if (v19)
    {

      v20 = v19;
      if (!a2)
      {
LABEL_7:
        (*((*MEMORY[0x277D85000] & *v15) + qword_27CDB2188 + 168))(a2);

        return;
      }

      v21 = [v11 pageElement];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 page];

        if (v23)
        {
          a2 = [v23 objectModel];

          goto LABEL_7;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
    }
  }

  else
  {

    MEMORY[0x21CEFF260](&v2[v6]);
    sub_21B946D98(*v7);
    sub_21B946D98(*v8);
    type metadata accessor for RUISwiftUIContainerElement();
    swift_deallocPartialClassInstance();
  }
}

uint64_t static RUISwiftUIContainerElement.supportsElement(named:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B9DDCB8();
  v5 = *((*MEMORY[0x277D85000] & **v4) + 0x78);
  v6 = *v4;
  LOBYTE(a2) = v5(a1, a2);

  return a2 & 1;
}

void sub_21B9FDE70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_21B9FE060(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_willLayoutSubviewsHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  sub_21B946DA8(a1);
  sub_21B946D98(v6);
  v7 = *(v2 + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *((*MEMORY[0x277D85000] & *v7) + qword_27CDB2188 + 96);

  v9(sub_21BA03708, v8);

  return sub_21B946D98(a1);
}

uint64_t sub_21B9FE19C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x98))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_21BA06AC0;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_21B9FE23C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21BA06A9C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0xA0);
  sub_21B946DA8(v3);
  return v7(v6, v5);
}

void sub_21B9FE304()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x277D85000] & *Strong) + 0x98))();
    if (v2)
    {
      v3 = v2;
      v2(v1);
      sub_21B946D98(v3);
    }
  }
}

uint64_t (*sub_21B9FE3B8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21B9FE41C;
}

uint64_t sub_21B9FE41C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(*(a1 + 24) + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = *((*MEMORY[0x277D85000] & *v5) + qword_27CDB2188 + 96);

    v7(sub_21BA06AA8, v6);
  }

  return result;
}

id sub_21B9FE52C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = (a1 + *a3);
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];
    aBlock[4] = v6;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21B9FDE70;
    aBlock[3] = a4;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_21B9FE7A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_didLayoutSubviewsHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  sub_21B946DA8(a1);
  sub_21B946D98(v6);
  v7 = *(v2 + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *((*MEMORY[0x277D85000] & *v7) + qword_27CDB2188 + 120);

  v9(sub_21BA03710, v8);

  return sub_21B946D98(a1);
}

uint64_t sub_21B9FE8E4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_21BA05224;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_21B9FE984(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21BA051EC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0xB8);
  sub_21B946DA8(v3);
  return v7(v6, v5);
}

void sub_21B9FEA4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x277D85000] & *Strong) + 0xB0))();
    if (v2)
    {
      v3 = v2;
      v2(v1);
      sub_21B946D98(v3);
    }
  }
}

uint64_t (*sub_21B9FEB00(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21B9FEB64;
}

uint64_t sub_21B9FEB64(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(*(a1 + 24) + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = *((*MEMORY[0x277D85000] & *v5) + qword_27CDB2188 + 120);

    v7(sub_21BA06AAC, v6);
  }

  return result;
}

uint64_t sub_21B9FED18()
{
  v21 = sub_21BA8673C();
  MEMORY[0x28223BE20](v21);
  v1 = sub_21BA864AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container);
  v10 = MEMORY[0x277D85000];
  v11 = (*((*MEMORY[0x277D85000] & *v9) + qword_27CDB2188 + 160))(v6);
  if (v11)
  {
    v12 = v11;
    v13 = (*((*v10 & *v9) + qword_27CDB2188 + 136))();
    v14 = [v12 sourceURL];
    if (v14)
    {
      v15 = v14;
      sub_21BA8643C();

      (*(v2 + 32))(v8, v4, v1);
      (*(v2 + 56))(v8, 0, 1, v1);
    }

    else
    {
      (*(v2 + 56))(v8, 1, 1, v1);
    }

    v16 = RUIObjectModel.decodingUserInfo.getter();
    type metadata accessor for HTTPDataSource();
    v17 = HTTPDataSource.__allocating_init()();
    v18 = RUIObjectModel.xmlUIData.getter();
    sub_21BA3E078(v13, v8, v16, v17, &protocol witness table for HTTPDataSource, v18);
    sub_21B9ABAAC(v8, &qword_27CD9DBA0);
  }

  else
  {
    result = sub_21BA886DC();
    __break(1u);
  }

  return result;
}

id RUISwiftUIContainerElement.__allocating_init(attributes:parent:)(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = sub_21BA87BBC();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v2) initWithAttributes:v4 parent:a2];

  return v5;
}

id RUISwiftUIContainerElement.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void __swiftcall RUISwiftUIContainerElement.view()(UIView_optional *__return_ptr retstr)
{
  v2 = [*(v1 + OBJC_IVAR____TtC8RemoteUI26RUISwiftUIContainerElement_container) view];

  v3 = v2;
}

Swift::Void __swiftcall RUISwiftUIContainerElement.setObjectModel(_:)(RUIObjectModel_optional *a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x80);
  v3 = a1;

  v4(a1);
}

uint64_t sub_21B9FF880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21BA05050();

  return MEMORY[0x282130D38](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.ruiObjectModel.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_21BA039A8();
  sub_21BA86EAC();
  return sub_21B9FF984;
}

uint64_t sub_21B9FF990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21BA0513C();

  return MEMORY[0x282130D38](a1, a2, a3, a4, v8);
}

uint64_t sub_21B9FFA14(void (*a1)(void))
{
  a1();
  sub_21BA86EAC();
  return v2;
}

void (*EnvironmentValues.ruiParentElement.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_21BA039FC();
  sub_21BA86EAC();
  return sub_21B9FFB24;
}

void sub_21B9FFB30(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    sub_21BA86EBC();
    v5 = *a1;
  }

  else
  {
    sub_21BA86EBC();
  }
}

void sub_21B9FFBC8(uint64_t a1@<X8>)
{
  v2 = v1;
  v149 = a1;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E4A0);
  MEMORY[0x28223BE20](v145);
  v148 = &v138 - v3;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E4A8);
  MEMORY[0x28223BE20](v146);
  v139 = &v138 - v4;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9E4B0);
  v141 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v140 = &v138 - v5;
  v6 = type metadata accessor for BuddyMLRendererWrapper(0);
  v176 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v177 = v7;
  v178 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9CEA8);
  MEMORY[0x28223BE20](v8 - 8);
  v164 = &v138 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v138 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E4C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v138 - v17;
  v19 = type metadata accessor for BuddyMLRenderer(0);
  MEMORY[0x28223BE20](v19 - 8);
  v158 = (&v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E4C8);
  MEMORY[0x28223BE20](v156);
  v157 = &v138 - v21;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E4D0);
  MEMORY[0x28223BE20](v155);
  v161 = &v138 - v22;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E4D8);
  MEMORY[0x28223BE20](v160);
  v163 = &v138 - v23;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E4E0);
  MEMORY[0x28223BE20](v162);
  v166 = &v138 - v24;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E4E8);
  MEMORY[0x28223BE20](v165);
  v168 = &v138 - v25;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E4F0);
  MEMORY[0x28223BE20](v167);
  v170 = &v138 - v26;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E4F8);
  MEMORY[0x28223BE20](v169);
  v172 = &v138 - v27;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E500);
  MEMORY[0x28223BE20](v171);
  v173 = &v138 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E508);
  MEMORY[0x28223BE20](v29);
  v31 = &v138 - v30;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E510);
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v138 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9E518);
  MEMORY[0x28223BE20](v33);
  v180 = &v138 - v34;
  v35 = *(v2 + v6[5]);
  v36 = sub_21BA8655C();
  v37 = *(*(v36 - 8) + 56);
  v159 = v18;
  v37(v18, 1, 1, v36);
  v38 = *(v2 + v6[7]);
  v179 = v33;
  v174 = v29;
  v175 = v31;
  v154 = v2;
  v153 = v6;
  v150 = v15;
  if (v38)
  {
    v39 = v35;
    v40 = [v38 sourceURL];
    if (v40)
    {
      v41 = v40;
      sub_21BA8643C();

      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v49 = sub_21BA864AC();
    (*(*(v49 - 8) + 56))(v12, v42, 1, v49);
    sub_21B9AB6D4(v12, v15, &qword_27CD9DBA0);
    v50 = *(v2 + v6[10]);
    v151 = *(v2 + v6[6] + 8);

    v181 = v50;
    v47 = RUIObjectModel.xmlUIData.getter();
    v48 = v47;
    v152 = v38;
  }

  else
  {
    v43 = sub_21BA864AC();
    (*(*(v43 - 8) + 56))(v15, 1, 1, v43);
    v44 = *(v2 + v6[6] + 8);
    v45 = *(v2 + v6[10]);
    type metadata accessor for XMLUIData();
    v46 = v35;
    v151 = v44;

    v181 = v45;
    v47 = sub_21B9ACF44(0);
    v48 = v47;
    v152 = 0;
  }

  v51 = v38;
  v52 = v35;
  v53 = sub_21BA3F420(v47);
  v55 = v54;
  v57 = v56;
  v58 = sub_21BA3F424();
  v60 = v59;
  v62 = v61;
  v63 = v164;
  sub_21BA3F41C();
  v137 = v63;
  v64 = v158;
  sub_21BA3E69C(v52, v159, v150, v151, v53, v55, v57 & 1, v58, v158, v60, v62 & 1, v137, v181, v48);
  KeyPath = swift_getKeyPath();
  v66 = v64;
  v67 = v157;
  sub_21BA03B1C(v66, v157, type metadata accessor for BuddyMLRenderer);
  v68 = (v67 + *(v156 + 36));
  *v68 = KeyPath;
  v68[1] = v51;
  v159 = v51;
  v69 = swift_getKeyPath();
  v70 = v153;
  v71 = v154;
  v72 = *(v154 + v153[8]);
  v73 = v161;
  sub_21B9AB6D4(v67, v161, &qword_27CD9E4C8);
  v74 = (v73 + *(v155 + 36));
  *v74 = v69;
  v74[1] = v72;
  v75 = swift_getKeyPath();
  type metadata accessor for HTTPDataSource();
  v164 = v72;
  v158 = v152;
  v76 = HTTPDataSource.__allocating_init()();
  v77 = v73;
  v78 = v163;
  sub_21B9AB6D4(v77, v163, &qword_27CD9E4D0);
  v79 = (v78 + *(v160 + 36));
  *v79 = v75;
  v79[1] = v76;
  v79[2] = &protocol witness table for HTTPDataSource;
  v161 = *(v71 + v70[9]);
  v80 = v161;
  type metadata accessor for ElementDirectory();
  sub_21BA03A70(&qword_27CD9BB20, type metadata accessor for ElementDirectory);
  v81 = sub_21BA868FC();
  v82 = v166;
  sub_21B9AB6D4(v78, v166, &qword_27CD9E4D8);
  v83 = (v82 + *(v162 + 36));
  *v83 = v81;
  v83[1] = v80;
  v84 = v178;
  sub_21BA03AB8(v71, v178);
  v85 = (*(v176 + 80) + 16) & ~*(v176 + 80);
  v86 = swift_allocObject();
  sub_21BA03B1C(v84, v86 + v85, type metadata accessor for BuddyMLRendererWrapper);
  v87 = v82;
  v88 = v168;
  sub_21B9AB6D4(v87, v168, &qword_27CD9E4E0);
  v89 = (v88 + *(v165 + 36));
  *v89 = sub_21BA03B84;
  v89[1] = v86;
  sub_21BA03AB8(v71, v84);
  v90 = swift_allocObject();
  sub_21BA03B1C(v84, v90 + v85, type metadata accessor for BuddyMLRendererWrapper);
  v91 = v88;
  v92 = v170;
  sub_21B9AB6D4(v91, v170, &qword_27CD9E4E8);
  v93 = (v92 + *(v167 + 36));
  *v93 = sub_21BA03D3C;
  v93[1] = v90;
  sub_21BA03AB8(v71, v84);
  v94 = swift_allocObject();
  sub_21BA03B1C(v84, v94 + v85, type metadata accessor for BuddyMLRendererWrapper);
  v95 = v92;
  v96 = v172;
  sub_21B9AB6D4(v95, v172, &qword_27CD9E4F0);
  v97 = (v96 + *(v169 + 36));
  *v97 = 0;
  v97[1] = 0;
  v97[2] = sub_21BA03DAC;
  v97[3] = v94;
  v98 = v71;
  v99 = v72;
  sub_21BA03AB8(v98, v84);
  v100 = swift_allocObject();
  sub_21BA03B1C(v84, v100 + v85, type metadata accessor for BuddyMLRendererWrapper);
  v101 = v173;
  sub_21B9AB6D4(v96, v173, &qword_27CD9E4F8);
  v102 = (v101 + *(v171 + 36));
  *v102 = sub_21BA03E0C;
  v102[1] = v100;
  v103 = swift_getKeyPath();

  v104 = sub_21BA07558();
  v105 = v101;
  v106 = v175;
  sub_21B9AB6D4(v105, v175, &qword_27CD9E500);
  v107 = (v106 + *(v174 + 36));
  *v107 = v103;
  v107[1] = v104;
  if (!v72)
  {
    v108 = v164;
    goto LABEL_12;
  }

  v108 = v164;
  v109 = [v164 pageElement];
  if (!v109)
  {
    __break(1u);
    goto LABEL_17;
  }

  v110 = v109;
  v111 = [v109 page];

  if (!v111)
  {
LABEL_17:
    __break(1u);
    return;
  }

  sub_21BA143FC();

LABEL_12:
  type metadata accessor for RUIToolbarContentManager();
  sub_21BA03F18();
  sub_21BA03A70(&qword_27CD9CF98, type metadata accessor for RUIToolbarContentManager);
  v112 = v142;
  sub_21BA876EC();

  sub_21B9ABAAC(v106, &qword_27CD9E508);
  v113 = swift_getKeyPath();
  v114 = type metadata accessor for RUIListHelper();
  v115 = v108;
  v116 = sub_21B9BEA54(v99);
  v185 = v114;
  v186 = &off_282D61810;
  v182 = v116;
  v117 = v180;
  v118 = &v180[*(v179 + 36)];
  sub_21B9AFF80(&v182, (v118 + 1), &qword_27CD9E600);
  *v118 = v113;
  (*(v143 + 32))(v117, v112, v144);
  sub_21B9ABAAC(&v182, &qword_27CD9E600);
  if (v159)
  {
    v119 = v158;
    v120 = RUIObjectModel.scriptEnvironment.getter();
    type metadata accessor for ScriptEnvironment();
    sub_21BA03A70(&qword_27CD9E660, type metadata accessor for ScriptEnvironment);
    v121 = sub_21BA868FC();
    v122 = v139;
    sub_21B946DF4(v117, v139);
    v123 = (v122 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E618) + 36));
    *v123 = v121;
    v123[1] = v120;
    v124 = RUIObjectModel.xmlUIData.getter();
    type metadata accessor for XMLUIData();
    sub_21BA03A70(&qword_27CD9BAC8, type metadata accessor for XMLUIData);
    v125 = sub_21BA868FC();
    v126 = v146;
    v127 = (v122 + *(v146 + 36));
    *v127 = v125;
    v127[1] = v124;
    RUIObjectModel.activityIndicatorManager.getter();
    v128 = type metadata accessor for ActivityIndicatorManager(0);
    v129 = sub_21BA04594();
    v130 = sub_21BA03A70(&qword_27CD9D770, type metadata accessor for ActivityIndicatorManager);
    v131 = v140;
    sub_21BA876EC();

    sub_21B9ABAAC(v122, &qword_27CD9E4A8);
    v132 = v141;
    v133 = v147;
    (*(v141 + 16))(v148, v131, v147);
    swift_storeEnumTagMultiPayload();
    v182 = v126;
    v183 = v128;
    v184 = v129;
    v185 = v130;
    swift_getOpaqueTypeConformance2();
    sub_21BA04704();
    sub_21BA8715C();

    v117 = v180;
    (*(v132 + 8))(v131, v133);
  }

  else
  {
    sub_21B946DF4(v117, v148);
    swift_storeEnumTagMultiPayload();
    v134 = type metadata accessor for ActivityIndicatorManager(255);
    v135 = sub_21BA04594();
    v136 = sub_21BA03A70(&qword_27CD9D770, type metadata accessor for ActivityIndicatorManager);
    v182 = v146;
    v183 = v134;
    v184 = v135;
    v185 = v136;
    swift_getOpaqueTypeConformance2();
    sub_21BA04704();
    sub_21BA8715C();
  }

  sub_21B9ABAAC(v117, &unk_27CD9E518);
}

void sub_21BA00F00(uint64_t a1, uint64_t a2)
{
  v3 = sub_21BA8676C();
  MEMORY[0x28223BE20](v3);
  v4 = *(a2 + *(type metadata accessor for BuddyMLRendererWrapper(0) + 32));
  if (v4)
  {
    v5 = [v4 pageElement];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 page];

      if (v7)
      {
        sub_21BA8823C();
        UIMutableTraits.ruiContentInsetHandling.setter();
        sub_21BA8824C();
      }
    }
  }
}

void sub_21BA0100C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_21BA8655C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a2 + *(type metadata accessor for BuddyMLRendererWrapper(0) + 32));
  if (v9)
  {
    v10 = [v9 pageElement];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 page];

      if (v12)
      {
        v13 = sub_21BA143FC();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E490);
        sub_21BA8797C();
        v14 = *(*v13 + 144);

        v15 = v14(v21);
        v17 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = *v17;
        *v17 = 0x8000000000000000;
        sub_21BA06254(v8, v7, isUniquelyReferenced_nonNull_native);
        (*(v5 + 8))(v7, v4);
        *v17 = v20;
        v15(v21, 0);
      }
    }
  }
}

uint64_t sub_21BA011F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_21B9AFF70(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_21BA0607C(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_21BA886AC();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_21B9ABAAC(a1, &qword_27CD9E7C0);
    sub_21BA05250(a2, v9);
    v7 = sub_21BA886AC();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_21B9ABAAC(v9, &qword_27CD9E7C0);
  }

  return result;
}

uint64_t sub_21BA01314(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_21BA06254(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_21BA8655C();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_21B9B5034(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_21BA0681C();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_21BA8655C();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_21BA05D5C(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_21BA8655C();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

void sub_21BA014D4(uint64_t a1)
{
  v2 = sub_21BA8655C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(a1 + *(type metadata accessor for BuddyMLRendererWrapper(0) + 32));
  if (v5)
  {
    v6 = [v5 pageElement];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 page];

      if (v8)
      {
        v9 = sub_21BA143FC();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E490);
        sub_21BA8797C();
        v10 = (*(*v9 + 144))(v11);
        sub_21BA01314(0, v4);
        v10(v11, 0);
      }
    }
  }
}

uint64_t sub_21BA01630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v22 = a6;
  v13 = sub_21BA8655C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  (*(v14 + 16))(&v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13, v15);
  sub_21BA8796C();
  (*(v14 + 8))(a1, v13);
  v17 = type metadata accessor for BuddyMLRendererWrapper(0);
  *(a7 + v17[5]) = a2;
  v18 = (a7 + v17[6]);
  type metadata accessor for SwiftUIContentView.ContentLoader();
  sub_21BA03A70(&qword_27CD9E498, type metadata accessor for SwiftUIContentView.ContentLoader);
  result = sub_21BA86BBC();
  *v18 = result;
  v18[1] = v20;
  *(a7 + v17[7]) = a3;
  *(a7 + v17[8]) = a4;
  *(a7 + v17[9]) = a5;
  *(a7 + v17[10]) = v22;
  return result;
}

uint64_t sub_21BA01898(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_21BA0190C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  *v6 = a1;
  v6[1] = a2;
  return sub_21B946D98(v7);
}

id sub_21BA019C8()
{
  v1 = qword_27CD9E698;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_21BA01A1C(void *a1)
{
  v3 = qword_27CD9E698;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  *(v1 + qword_27CD9E6A0) = 1;
  (*((*MEMORY[0x277D85000] & *v1) + qword_27CDB2188 + 208))();
  sub_21BA8707C();
}

uint64_t (*sub_21BA01AF4(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21BA01B58;
}

uint64_t sub_21BA01B58(void *a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = a1[3];
    *(v5 + qword_27CD9E6A0) = 1;
    *a1 = (*((*MEMORY[0x277D85000] & *v5) + qword_27CDB2188 + 208))(result);
    return sub_21BA8707C();
  }

  return result;
}

void sub_21BA01C00(void *a1)
{
  swift_beginAccess();
  v3 = swift_unknownObjectWeakAssign();
  (*((*MEMORY[0x277D85000] & *v1) + qword_27CDB2188 + 208))(v3);
  sub_21BA8707C();
}

void (*sub_21BA01CB8(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27CD9E6A8;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21BA01D50;
}

void sub_21BA01D50(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    v5 = v3[4];
    swift_endAccess();

    *v3 = (*((*MEMORY[0x277D85000] & *v5) + qword_27CDB2188 + 208))();
    sub_21BA8707C();
  }

  free(v3);
}

void sub_21BA01E2C(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for RUISwiftUIContainer(0);
  v4 = v6.receiver;
  v5 = objc_msgSendSuper2(&v6, sel_viewWillAppear_, a3);
  (*((*MEMORY[0x277D85000] & *v4) + qword_27CDB2188 + 184))(v5);
}

uint64_t sub_21BA01EE0()
{
  if (*(v0 + qword_27CD9E6A0) == 1)
  {
    return (*((*MEMORY[0x277D85000] & *v0) + qword_27CDB2188 + 192))();
  }

  return result;
}

uint64_t sub_21BA01F48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v0) + qword_27CDB2188 + 160);
  v11 = v10(v6);
  if (v11)
  {
    v12 = v11;
    v13 = RUIObjectModel.decodingUserInfo.getter();
  }

  else
  {
    type metadata accessor for RUIDecodingUserInfo();
    RUIDecodingUserInfo.init()(v14);
    v13 = v15;
  }

  v16 = (*((*v9 & *v1) + qword_27CDB2188 + 136))();
  v17 = (v10)();
  if (v17)
  {
    v18 = v17;
    v19 = [v17 sourceURL];

    if (v19)
    {
      sub_21BA8643C();

      v20 = sub_21BA864AC();
      (*(*(v20 - 8) + 56))(v4, 0, 1, v20);
    }

    else
    {
      v22 = sub_21BA864AC();
      (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
    }

    sub_21B9AB6D4(v4, v8, &qword_27CD9DBA0);
  }

  else
  {
    v21 = sub_21BA864AC();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  }

  type metadata accessor for HTTPDataSource();
  v23 = HTTPDataSource.__allocating_init()();
  sub_21BA025FC(v16, v8, v13, v23, &protocol witness table for HTTPDataSource);

  result = sub_21B9ABAAC(v8, &qword_27CD9DBA0);
  *(v1 + qword_27CD9E6A0) = 0;
  return result;
}

uint64_t sub_21BA0223C(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for RUISwiftUIContainer(0);
  objc_msgSendSuper2(&v15, sel_preferredContentSizeDidChangeForChildContentContainer_, a1);
  [a1 preferredContentSize];
  v4 = v3;
  v6 = v5;
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v4;
  v8[4] = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21BA04848;
  *(v9 + 24) = v8;
  v14[4] = sub_21B9DC22C;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21B9D7210;
  v14[3] = &block_descriptor_4;
  v10 = _Block_copy(v14);
  v11 = v1;

  [v7 performWithoutAnimation_];
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_21BA023E4(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_21BA0223C(a3);
  swift_unknownObjectRelease();
}

void sub_21BA0244C(void *a1)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for RUISwiftUIContainer(0);
  v1 = v6.receiver;
  v2 = objc_msgSendSuper2(&v6, sel_viewWillLayoutSubviews);
  v3 = (*((*MEMORY[0x277D85000] & *v1) + qword_27CDB2188 + 88))(v2);
  if (v3)
  {
    v5 = v3;
    v3(v3, v4);

    sub_21B946D98(v5);
  }

  else
  {
  }
}

void sub_21BA02524(void *a1)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for RUISwiftUIContainer(0);
  v1 = v6.receiver;
  v2 = objc_msgSendSuper2(&v6, sel_viewDidLayoutSubviews);
  v3 = (*((*MEMORY[0x277D85000] & *v1) + qword_27CDB2188 + 112))(v2);
  if (v3)
  {
    v5 = v3;
    v3(v3, v4);

    sub_21B946D98(v5);
  }

  else
  {
  }
}

uint64_t sub_21BA025FC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v36 = a3;
  v37 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = sub_21BA886AC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for RUI.XMLUIDecoder();
  v17 = RUI.XMLUIDecoder.__allocating_init()();
  if (a4)
  {
    v18 = v17;
    swift_unknownObjectRetain();
    v19 = sub_21B9C1334();
    (*(v14 + 16))(v16, v19, v13);
    type metadata accessor for ResourceLoader();
    sub_21B9AFF80(a2, v12, &qword_27CD9DBA0);
    swift_unknownObjectRetain();
    v20 = sub_21B9AAE44(v12, a4, a5);
    v21 = (*((*MEMORY[0x277D85000] & *v5) + qword_27CDB2188 + 160))();
    if (v21)
    {
      v22 = v21;
      v23 = RUIObjectModel.xmlUIData.getter();
    }

    else
    {
      type metadata accessor for XMLUIData();
      v23 = sub_21B9ACF44(0);
    }

    v40[3] = &type metadata for DecodingContext;
    sub_21B9C10B4(v20, v36, v23, v40);
    swift_beginAccess();
    sub_21BA011F8(v40, v16);
    swift_endAccess();
    v24 = objc_allocWithZone(RUIXMLElement);
    v25 = sub_21BA87C8C();
    v26 = [v24 initWithName_];

    v27 = objc_allocWithZone(RUIXMLElement);
    v28 = sub_21BA87C8C();
    v29 = [v27 initWithName_];

    [v26 appendChild_];
    if (v37)
    {
      v30 = v37;
      sub_21B9C4790(v40);
      v31 = sub_21BA5DFB8(v40);
      [v29 appendChild_];
    }

    v32 = *(v6 + qword_27CD9E670);
    v40[0] = v26;
    v39[0] = v18;
    v33 = *(*v32 + 136);
    v34 = sub_21BA03A70(&qword_27CD9E7B8, type metadata accessor for RUI.XMLUIDecoder);
    v33(v40, v39, v38, v34);

    return swift_unknownObjectRelease();
  }

  else
  {
    result = sub_21BA886DC();
    __break(1u);
  }

  return result;
}

void sub_21BA02A28(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for RUISwiftUIContainer(0);
  v1 = v3.receiver;
  v2 = objc_msgSendSuper2(&v3, sel_viewLayoutMarginsDidChange);
  (*((*MEMORY[0x277D85000] & *v1) + qword_27CDB2188 + 208))(v2);
  sub_21BA8707C();
}

id sub_21BA02AE0()
{
  v1 = v0;
  v2 = sub_21BA871BC();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  v55 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_21BA8655C();
  v4 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - v7;
  v61 = type metadata accessor for BuddyMLRendererWrapper(0);
  MEMORY[0x28223BE20](v61);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E6B0);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v54 = &v49 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E6B8);
  v50 = *(v52 - 8);
  v12 = MEMORY[0x28223BE20](v52);
  v49 = &v49 - v13;
  v14 = MEMORY[0x277D85000];
  v58 = (*((*MEMORY[0x277D85000] & *v0) + qword_27CDB2188 + 136))(v12);
  v15 = *((*v14 & *v0) + qword_27CDB2188 + 160);

  v59 = v15(v16);
  v17 = *(v0 + qword_27CD9E678);
  v18 = *(v0 + qword_27CD9E680);
  v19 = v17;

  v21 = v15(v20);
  if (v21)
  {
    v22 = v21;
    v23 = RUIObjectModel.decodingUserInfo.getter();
  }

  else
  {
    type metadata accessor for RUIDecodingUserInfo();
    RUIDecodingUserInfo.init()(v24);
    v23 = v25;
  }

  sub_21BA8654C();
  v26 = v62;
  (*(v4 + 16))(v60, v8, v62);
  sub_21BA8796C();
  (*(v4 + 8))(v8, v26);
  v27 = v61;
  *&v10[*(v61 + 20)] = v58;
  v28 = &v10[v27[6]];
  type metadata accessor for SwiftUIContentView.ContentLoader();
  sub_21BA03A70(&qword_27CD9E498, type metadata accessor for SwiftUIContentView.ContentLoader);
  *v28 = sub_21BA86BBC();
  v28[1] = v29;
  *&v10[v27[7]] = v59;
  *&v10[v27[8]] = v17;
  *&v10[v27[9]] = v18;
  *&v10[v27[10]] = v23;
  v30 = sub_21BA8746C();
  result = [v1 view];
  if (result)
  {
    v32 = result;
    [result directionalLayoutMargins];
    v34 = v33;

    v35 = v55;
    sub_21BA871AC();
    v36 = sub_21BA03A70(&unk_27CD9E6C0, type metadata accessor for BuddyMLRendererWrapper);
    v37 = v54;
    MEMORY[0x21CEFCA80](v30, v34, 0, v35, v27, v36);
    v38 = v57;
    v39 = v27;
    v40 = *(v56 + 8);
    v40(v35, v57);
    sub_21BA04874(v10);
    LODWORD(v62) = sub_21BA8747C();
    result = [v1 view];
    if (result)
    {
      v41 = result;
      [result directionalLayoutMargins];
      v43 = v42;

      sub_21BA871AC();
      v63 = v39;
      v64 = v36;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v45 = v49;
      v46 = v53;
      MEMORY[0x21CEFCA80](v62, v43, 0, v35, v53, OpaqueTypeConformance2);
      v40(v35, v38);
      (*(v51 + 8))(v37, v46);
      v63 = v46;
      v64 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v47 = v52;
      v48 = sub_21B9FD000(v52);
      (*(v50 + 8))(v45, v47);
      return v48;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21BA03180(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v56 = a3;
  v57 = a2;
  v6 = sub_21BA8655C();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v46 - v9;
  v55 = type metadata accessor for BuddyMLRendererWrapper(0);
  MEMORY[0x28223BE20](v55);
  v54 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_27CD9E6A0) = 1;
  v11 = (v3 + qword_27CD9E688);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v3 + qword_27CD9E690);
  *v12 = 0;
  v12[1] = 0;
  v13 = qword_27CD9E6A8;
  swift_unknownObjectWeakInit();
  v14 = sub_21B9DDCB8();
  v15 = *v14;
  v16 = [a1 name];
  v17 = sub_21BA87CBC();
  v19 = v18;

  v20 = MEMORY[0x277D85000];
  LOBYTE(v17) = (*((*MEMORY[0x277D85000] & *v15) + 0x78))(v17, v19);

  if ((v17 & 1) == 0)
  {

    sub_21B946D98(*v11);
    sub_21B946D98(*v12);
    MEMORY[0x21CEFF260](v4 + v13);
    type metadata accessor for RUISwiftUIContainer(0);
    swift_deallocPartialClassInstance();
    return;
  }

  v21 = *v14;
  v22 = *((*v20 & **v14) + 0x90);
  v23 = v21;
  v24 = v22();

  *(v4 + qword_27CD9E670) = v24;
  *(v4 + qword_27CD9E698) = a1;
  v25 = v56;
  v26 = v57;
  *(v4 + qword_27CD9E678) = v57;
  *(v4 + qword_27CD9E680) = v25;
  if (!v26)
  {
    v32 = a1;

    v31 = 0;
    goto LABEL_8;
  }

  v27 = a1;

  v28 = [v26 pageElement];
  if (!v28)
  {
    __break(1u);
    goto LABEL_14;
  }

  v29 = v28;
  v30 = [v28 page];

  if (!v30)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v31 = [v30 objectModel];

LABEL_8:
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  Strong = swift_unknownObjectWeakLoadStrong();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    v35 = v25;

    v47 = RUIObjectModel.decodingUserInfo.getter();
  }

  else
  {
    v35 = v25;
    type metadata accessor for RUIDecodingUserInfo();

    RUIDecodingUserInfo.init()(v36);
    v47 = v37;
  }

  v38 = v50;
  sub_21BA8654C();
  v39 = v52;
  v40 = v53;
  (*(v52 + 16))(v51, v38, v53);
  v56 = v26;
  v48 = a1;

  v41 = v54;
  sub_21BA8796C();
  (*(v39 + 8))(v38, v40);
  v42 = v55;
  *(v41 + *(v55 + 20)) = a1;
  v43 = (v41 + v42[6]);
  type metadata accessor for SwiftUIContentView.ContentLoader();
  sub_21BA03A70(&qword_27CD9E498, type metadata accessor for SwiftUIContentView.ContentLoader);
  *v43 = sub_21BA86BBC();
  v43[1] = v44;
  *(v41 + v42[7]) = Strong;
  *(v41 + v42[8]) = v26;
  *(v41 + v42[9]) = v35;
  *(v41 + v42[10]) = v47;
  sub_21BA03A70(&unk_27CD9E6C0, type metadata accessor for BuddyMLRendererWrapper);
  v45 = sub_21B9FD000(v42);
  sub_21BA04874(v41);
  v58 = v45;
  sub_21BA8706C();
}

void sub_21BA03718(uint64_t a1)
{
  *(a1 + qword_27CD9E6A0) = 1;
  v1 = (a1 + qword_27CD9E688);
  *v1 = 0;
  v1[1] = 0;
  v2 = (a1 + qword_27CD9E690);
  *v2 = 0;
  v2[1] = 0;
  swift_unknownObjectWeakInit();
  sub_21BA886DC();
  __break(1u);
}

void sub_21BA037B8()
{

  sub_21B946D98(*(v0 + qword_27CD9E688));
  sub_21B946D98(*(v0 + qword_27CD9E690));

  JUMPOUT(0x21CEFF260);
}

id sub_21BA0386C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_21BA038A4(uint64_t a1)
{

  sub_21B946D98(*(a1 + qword_27CD9E688));
  sub_21B946D98(*(a1 + qword_27CD9E690));

  JUMPOUT(0x21CEFF260);
}

unint64_t sub_21BA039A8()
{
  result = qword_27CDA7650;
  if (!qword_27CDA7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDA7650);
  }

  return result;
}

unint64_t sub_21BA039FC()
{
  result = qword_27CDA7658[0];
  if (!qword_27CDA7658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA7658);
  }

  return result;
}

uint64_t sub_21BA03A70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BA03AB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BuddyMLRendererWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BA03B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21BA03B84(uint64_t a1)
{
  v3 = *(type metadata accessor for BuddyMLRendererWrapper(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_21BA00F00(a1, v4);
}

uint64_t objectdestroy_12Tm()
{
  v1 = (type metadata accessor for BuddyMLRendererWrapper(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_21BA8655C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E490);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_21BA03D3C(uint64_t *a1)
{
  v3 = *(type metadata accessor for BuddyMLRendererWrapper(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_21BA0100C(a1, v4);
}

void sub_21BA03DAC()
{
  v1 = *(type metadata accessor for BuddyMLRendererWrapper(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_21BA014D4(v2);
}

void sub_21BA03E0C(unsigned __int8 *a1)
{
  v3 = type metadata accessor for BuddyMLRendererWrapper(0);
  v4 = *(v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)) + *(v3 + 32));
  if (v4)
  {
    v5 = *a1;
    v6 = [v4 pageElement];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 page];

      if (v8)
      {
        v9 = sub_21BA143FC();

        (*(*v9 + 184))(v5);
      }
    }
  }
}

unint64_t sub_21BA03F18()
{
  result = qword_27CD9E528;
  if (!qword_27CD9E528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E508);
    sub_21BA03FD0();
    sub_21B9B35B8(&qword_27CD9E5E8, &unk_27CD9E5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E528);
  }

  return result;
}

unint64_t sub_21BA03FD0()
{
  result = qword_27CD9E530;
  if (!qword_27CD9E530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E500);
    sub_21BA04088();
    sub_21B9B35B8(&qword_27CD9E5D8, &qword_27CD9E5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E530);
  }

  return result;
}

unint64_t sub_21BA04088()
{
  result = qword_27CD9E538;
  if (!qword_27CD9E538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E4F8);
    sub_21BA04114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E538);
  }

  return result;
}

unint64_t sub_21BA04114()
{
  result = qword_27CD9E540;
  if (!qword_27CD9E540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E4F0);
    sub_21BA041CC();
    sub_21B9B35B8(&qword_27CD9E5C8, &qword_27CD9E5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E540);
  }

  return result;
}

unint64_t sub_21BA041CC()
{
  result = qword_27CD9E548;
  if (!qword_27CD9E548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E4E8);
    sub_21BA04284();
    sub_21B9B35B8(&qword_27CD9E5B8, &qword_27CD9E5C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E548);
  }

  return result;
}

unint64_t sub_21BA04284()
{
  result = qword_27CD9E550;
  if (!qword_27CD9E550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E4E0);
    sub_21BA0433C();
    sub_21B9B35B8(&qword_27CD9E5A8, &qword_27CD9E5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E550);
  }

  return result;
}

unint64_t sub_21BA0433C()
{
  result = qword_27CD9E558;
  if (!qword_27CD9E558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E4D8);
    sub_21BA043F4();
    sub_21B9B35B8(&qword_27CD9E598, &qword_27CD9E5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E558);
  }

  return result;
}

unint64_t sub_21BA043F4()
{
  result = qword_27CD9E560;
  if (!qword_27CD9E560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E4D0);
    sub_21BA044AC();
    sub_21B9B35B8(&qword_27CD9E588, &qword_27CD9E590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E560);
  }

  return result;
}

unint64_t sub_21BA044AC()
{
  result = qword_27CD9E568;
  if (!qword_27CD9E568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E4C8);
    sub_21BA03A70(&qword_27CD9E570, type metadata accessor for BuddyMLRenderer);
    sub_21B9B35B8(&qword_27CD9E578, &qword_27CD9E580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E568);
  }

  return result;
}

unint64_t sub_21BA04594()
{
  result = qword_27CD9E608;
  if (!qword_27CD9E608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E4A8);
    sub_21BA0464C();
    sub_21B9B35B8(&qword_27CD9E330, &unk_27CD9E650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E608);
  }

  return result;
}

unint64_t sub_21BA0464C()
{
  result = qword_27CD9E610;
  if (!qword_27CD9E610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E618);
    sub_21BA04704();
    sub_21B9B35B8(&qword_27CD9E638, &unk_27CD9E640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E610);
  }

  return result;
}

unint64_t sub_21BA04704()
{
  result = qword_27CD9E620;
  if (!qword_27CD9E620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CD9E518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E508);
    type metadata accessor for RUIToolbarContentManager();
    sub_21BA03F18();
    sub_21BA03A70(&qword_27CD9CF98, type metadata accessor for RUIToolbarContentManager);
    swift_getOpaqueTypeConformance2();
    sub_21B9B35B8(&qword_27CD9E628, &qword_27CD9E630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E620);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21BA04874(uint64_t a1)
{
  v2 = type metadata accessor for BuddyMLRendererWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21BA04B14()
{
  sub_21BA04CA0(319, &qword_27CD9E738, MEMORY[0x277CC95F0], MEMORY[0x277CE10B0]);
  if (v0 <= 0x3F)
  {
    sub_21BA04CA0(319, &qword_27CD9E740, type metadata accessor for RUIXMLElement, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21BA04D04();
      if (v2 <= 0x3F)
      {
        sub_21BA04D98(319, &qword_27CD9E750, &qword_27CD9E758);
        if (v3 <= 0x3F)
        {
          sub_21BA04D98(319, &qword_27CD9E760, &qword_27CD9E768);
          if (v4 <= 0x3F)
          {
            type metadata accessor for ElementDirectory();
            if (v5 <= 0x3F)
            {
              type metadata accessor for RUIDecodingUserInfo();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_21BA04CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21BA04D04()
{
  if (!qword_27CD9E748)
  {
    type metadata accessor for SwiftUIContentView.ContentLoader();
    sub_21BA03A70(&qword_27CD9E498, type metadata accessor for SwiftUIContentView.ContentLoader);
    v0 = sub_21BA86BCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9E748);
    }
  }
}

void sub_21BA04D98(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_21B9BDFC0(255, a3);
    v4 = sub_21BA883CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21BA04E80()
{
  result = qword_27CD9E770;
  if (!qword_27CD9E770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E4A8);
    type metadata accessor for ActivityIndicatorManager(255);
    sub_21BA04594();
    sub_21BA03A70(&qword_27CD9D770, type metadata accessor for ActivityIndicatorManager);
    swift_getOpaqueTypeConformance2();
    sub_21BA04704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E770);
  }

  return result;
}

uint64_t sub_21BA04F98(uint64_t a1, int a2)
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

uint64_t sub_21BA04FB8(uint64_t result, int a2, int a3)
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

void type metadata accessor for CGSize()
{
  if (!qword_27CD9E780)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27CD9E780);
    }
  }
}

unint64_t sub_21BA05050()
{
  result = qword_27CD9E788;
  if (!qword_27CD9E788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E790);
    sub_21BA050EC(&qword_27CD9E798, &qword_27CD9E758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E788);
  }

  return result;
}

uint64_t sub_21BA050EC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_21B9BDFC0(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BA0513C()
{
  result = qword_27CD9E7A0;
  if (!qword_27CD9E7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9DF48);
    sub_21BA050EC(&qword_27CD9E7B0, &qword_27CD9E768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E7A0);
  }

  return result;
}

uint64_t sub_21BA051EC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

double sub_21BA05250@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_21B9C14A8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21BA06598();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_21BA886AC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_21B9AFF70((*(v9 + 56) + 32 * v7), a2);
    sub_21BA05AA8(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21BA0532C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_21BA886AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E7C8);
  v39 = a2;
  result = sub_21BA8871C();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_21B9AFF70((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_21B9AFDF0(*(v9 + 56) + 32 * v23, v44);
      }

      result = sub_21BA87BFC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_21B9AFF70(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_21BA056CC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_21BA8655C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9E7D0);
  v39 = a2;
  result = sub_21BA8871C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_21BA03A70(&qword_27CD9CFE0, MEMORY[0x277CC95F0]);
      result = sub_21BA87BFC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_21BA05AA8(int64_t a1, uint64_t a2)
{
  v4 = sub_21BA886AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_21BA884AC();
    v13 = v11;
    v38 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = *(v14 + 56);
    v36 = (v14 - 8);
    v37 = v15;
    do
    {
      v16 = v8;
      v17 = v39 * v10;
      v18 = v13;
      v19 = v14;
      v37(v7, *(a2 + 48) + v39 * v10, v4);
      v20 = sub_21BA87BFC();
      (*v36)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v38)
      {
        if (v21 >= v38 && a1 >= v21)
        {
LABEL_15:
          v24 = *(a2 + 48);
          v25 = v24 + v39 * a1;
          v26 = v24 + v17 + v39;
          v27 = v39 * a1 < v17 || v25 >= v26;
          v14 = v19;
          if (v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v13 = v18;
            v8 = v16;
          }

          else
          {
            v28 = v39 * a1 == v17;
            v8 = v16;
            if (!v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v10);
          if (a1 != v10 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v38 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
      v8 = v16;
LABEL_4:
      v10 = (v10 + 1) & v13;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void sub_21BA05D5C(int64_t a1, uint64_t a2)
{
  v38 = sub_21BA8655C();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_21BA884AC();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_21BA03A70(&qword_27CD9CFE0, MEMORY[0x277CC95F0]);
      v22 = sub_21BA87BFC();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

_OWORD *sub_21BA0607C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21BA886AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_21B9C14A8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_21BA06598();
      goto LABEL_7;
    }

    sub_21BA0532C(v17, a3 & 1);
    v23 = sub_21B9C14A8(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_21BA06420(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_21BA88B0C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_1(v21);

  return sub_21B9AFF70(a1, v21);
}

uint64_t sub_21BA06254(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21BA8655C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_21B9B5034(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_21BA0681C();
      goto LABEL_7;
    }

    sub_21BA056CC(v17, a3 & 1);
    v22 = sub_21B9B5034(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_21BA064E0(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_21BA88B0C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

_OWORD *sub_21BA06420(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_21BA886AC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_21B9AFF70(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_21BA064E0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_21BA8655C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_21BA06598()
{
  v1 = v0;
  v26 = sub_21BA886AC();
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E7C8);
  v3 = *v0;
  v4 = sub_21BA8870C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_21B9AFDF0(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_21B9AFF70(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_21BA0681C()
{
  v1 = v0;
  v33 = sub_21BA8655C();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9E7D0);
  v3 = *v0;
  v4 = sub_21BA8870C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_21BA06AC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = v74 - v6;
  v7 = sub_21BA864AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v79 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E7E8);
  MEMORY[0x28223BE20](v10 - 8);
  v78 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v74 - v13;
  v15 = sub_21BA8618C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v75 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v74 - v19;
  sub_21BA860FC();
  v77 = *(v16 + 48);
  if (v77(v14, 1, v15) == 1)
  {
    sub_21B9ABAAC(v14, &qword_27CD9E7E8);
    return 0;
  }

  v21 = *(v16 + 32);
  v76 = v20;
  v74[0] = v21;
  v74[1] = v16 + 32;
  v21(v20, v14, v15);
  sub_21BA863FC();
  (*(v8 + 16))(v4, a1, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  v22 = v8;
  v23 = v80;
  sub_21BA8647C();

  sub_21B9ABAAC(v4, &qword_27CD9DBA0);
  if ((*(v22 + 48))(v23, 1, v7) == 1)
  {
    (*(v16 + 8))(v76, v15);
    sub_21B9ABAAC(v80, &qword_27CD9DBA0);
    return 0;
  }

  v24 = v22;
  v25 = v79;
  (*(v22 + 32))(v79, v80, v7);
  v26 = v78;
  sub_21BA860FC();
  v27 = v15;
  if (v77(v26, 1, v15) == 1)
  {
    (*(v22 + 8))(v25, v7);
    (*(v16 + 8))(v76, v15);
    sub_21B9ABAAC(v26, &qword_27CD9E7E8);
    return 0;
  }

  v28 = v75;
  (v74[0])(v75, v26, v27);
  v29 = sub_21BA8615C();
  v31 = v30;
  v32 = sub_21BA8615C();
  if (v31)
  {
    if (!v33)
    {
      goto LABEL_21;
    }

    if (v29 == v32 && v31 == v33)
    {
    }

    else
    {
      v34 = sub_21BA8899C();

      if ((v34 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v33)
  {
    goto LABEL_21;
  }

  v35 = sub_21BA8610C();
  v37 = v36;
  v38 = sub_21BA8610C();
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_21;
    }

    if (v35 == v38 && v37 == v39)
    {
    }

    else
    {
      v42 = sub_21BA8899C();

      if ((v42 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v39)
  {
    goto LABEL_21;
  }

  v43 = sub_21BA8612C();
  v45 = v44;
  v46 = sub_21BA8612C();
  if (v45)
  {
    if ((v47 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((v47 & 1) != 0 || v43 != v46)
  {
    goto LABEL_22;
  }

  v48 = sub_21BA8613C();
  v50 = v49;
  v51 = sub_21BA8613C();
  if (v50)
  {
    if (!v52)
    {
      goto LABEL_21;
    }

    if (v48 == v51 && v50 == v52)
    {
    }

    else
    {
      v53 = sub_21BA8899C();

      if ((v53 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v52)
  {
    goto LABEL_21;
  }

  v54 = sub_21BA8617C();
  v56 = v55;
  v57 = sub_21BA8617C();
  if (v56)
  {
    if (!v58)
    {
      goto LABEL_21;
    }

    if (v54 == v57 && v56 == v58)
    {
    }

    else
    {
      v59 = sub_21BA8899C();

      if ((v59 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v58)
  {
    goto LABEL_21;
  }

  v60 = sub_21BA8611C();
  v62 = v61;
  if (v60 == sub_21BA8611C() && v62 == v63)
  {
  }

  else
  {
    v65 = sub_21BA8899C();

    if ((v65 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v66 = MEMORY[0x21CEFB4A0](v64);
  v68 = v67;
  v69 = MEMORY[0x21CEFB4A0]();
  if (!v68)
  {
    if (!v70)
    {
      goto LABEL_58;
    }

    goto LABEL_21;
  }

  if (!v70)
  {
LABEL_21:

    goto LABEL_22;
  }

  if (v66 != v69 || v68 != v70)
  {
    v71 = sub_21BA8899C();

    if (v71)
    {
      goto LABEL_58;
    }

LABEL_22:
    v40 = *(v16 + 8);
    v40(v28, v27);
    (*(v24 + 8))(v25, v7);
    v40(v76, v27);
    return 0;
  }

LABEL_58:
  v72 = sub_21BA8616C();
  v73 = *(v16 + 8);
  v73(v28, v27);
  (*(v24 + 8))(v25, v7);
  v73(v76, v27);
  return v72;
}

void *sub_21BA0731C()
{
  result = malloc(1uLL);
  if (result)
  {
    qword_27CDB2198 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BA07348()
{
  if (qword_27CDA7830 != -1)
  {
    swift_once();
  }

  return qword_27CDB2198;
}

Swift::Void __swiftcall RUILoader.initializeSwift()()
{
  type metadata accessor for RUIDecodingUserInfo();
  RUIDecodingUserInfo.init()(v1);
  *&v6[0] = v2;
  sub_21B9C095C(v6, &type metadata for DecodingUserInfoAssociatedKey, &type metadata for DecodingUserInfoAssociatedKey, &off_28172C550);
  v3 = [v0 decodingUserInfo];
  type metadata accessor for InternalAnalyticsReporter();
  sub_21BA3F428(v6);
  v4 = sub_21BA3F47C();
  v5 = sub_21BA3F4DC(v6, v4);

  RUIDecodingUserInfo.subscript.setter(&v5, &type metadata for InternalAnalyticsReporterKey);
}

uint64_t type metadata accessor for LazyXMLUIElement()
{
  result = qword_27CDA7CC0;
  if (!qword_27CDA7CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BA07600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E7F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BA07670()
{
  if (*v0)
  {
    return 0x746E6F43797A616CLL;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_21BA076A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_21BA8899C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E6F43797A616CLL && a2 == 0xEB00000000746E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21BA8899C();

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

uint64_t sub_21BA07780(uint64_t a1)
{
  v2 = sub_21BA07B10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA077BC(uint64_t a1)
{
  v2 = sub_21BA07B10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BA077F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E7F0);
  MEMORY[0x28223BE20](v4 - 8);
  v21 = &v18 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E7F8);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for LazyXMLUIElement();
  MEMORY[0x28223BE20](v9);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21BA07B10();
  sub_21BA88C0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v8;
  v13 = v20;
  v12 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = Decoder.decodeRUIID()();
  if (v15)
  {
    (*(v13 + 8))(v18, v6);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  *v11 = v14;
  type metadata accessor for LazyContentElement();
  v22 = 1;
  sub_21BA08160(&qword_27CD9DA88, type metadata accessor for LazyContentElement);
  v17 = v18;
  sub_21BA887EC();
  (*(v13 + 8))(v17, v6);
  sub_21BA07B64(v12, v11 + *(v9 + 20));
  sub_21BA07EE4(v11, v19, type metadata accessor for LazyXMLUIElement);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21BA07F4C(v11, type metadata accessor for LazyXMLUIElement);
}

unint64_t sub_21BA07B10()
{
  result = qword_27CD9E800;
  if (!qword_27CD9E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E800);
  }

  return result;
}

uint64_t sub_21BA07B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E7F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BA07BD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E808);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E7F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for LazyContentElement();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LazyXMLUIElement();
  sub_21BA07600(v0 + *(v11 + 20), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21BA07E7C(v6);
    swift_storeEnumTagMultiPayload();
    sub_21BA08160(&qword_27CD9DA98, type metadata accessor for LazyContentElement);
    return sub_21BA8715C();
  }

  else
  {
    sub_21B9E3624(v6, v10);
    sub_21BA07EE4(v10, v3, type metadata accessor for LazyContentElement);
    swift_storeEnumTagMultiPayload();
    sub_21BA08160(&qword_27CD9DA98, type metadata accessor for LazyContentElement);
    sub_21BA8715C();
    return sub_21BA07F4C(v10, type metadata accessor for LazyContentElement);
  }
}

uint64_t sub_21BA07E7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E7F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BA07EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BA07F4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21BA07FB0()
{
  result = qword_27CD9E810;
  if (!qword_27CD9E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E810);
  }

  return result;
}

unint64_t sub_21BA08008()
{
  result = qword_27CD9E818;
  if (!qword_27CD9E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E818);
  }

  return result;
}

unint64_t sub_21BA08060()
{
  result = qword_27CD9E820;
  if (!qword_27CD9E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E820);
  }

  return result;
}

uint64_t sub_21BA080B4(void *a1)
{
  a1[1] = sub_21BA08160(&qword_27CD9E828, type metadata accessor for LazyXMLUIElement);
  a1[2] = sub_21BA08160(&qword_27CD9E830, type metadata accessor for LazyXMLUIElement);
  result = sub_21BA08160(&qword_27CD9E838, type metadata accessor for LazyXMLUIElement);
  a1[3] = result;
  return result;
}

uint64_t sub_21BA08160(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21BA08208()
{
  sub_21BA08284();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21BA08284()
{
  if (!qword_27CD9E840)
  {
    type metadata accessor for LazyContentElement();
    v0 = sub_21BA883CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9E840);
    }
  }
}

unint64_t sub_21BA082EC()
{
  result = qword_27CD9E848;
  if (!qword_27CD9E848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E850);
    sub_21BA08160(&qword_27CD9DA98, type metadata accessor for LazyContentElement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E848);
  }

  return result;
}

void *sub_21BA083A8()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_21BA8820C();
    v7 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B94B4EC(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_21BA084F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BA08568(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x726564616568;
    if (a1 != 2)
    {
      v6 = 0x6D496D6574737973;
    }

    if (a1)
    {
      v5 = 0x697461676976616ELL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6B6E694C706C6568;
    v2 = 0x6564616548627573;
    if (a1 != 7)
    {
      v2 = 0xD000000000000018;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6563696F6863;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21BA086A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656C746974;
    }

    else
    {
      v3 = 1701869940;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x7463757274736564;
    v4 = 0xEB00000000657669;
  }

  else if (a1 == 3)
  {
    v3 = 0x4664656C62616E65;
    v4 = 0xEF6E6F6974636E75;
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x6E67696C61;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656C746974;
    }

    else
    {
      v9 = 1701869940;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x4664656C62616E65;
    v6 = 0xEF6E6F6974636E75;
    if (a2 != 3)
    {
      v5 = 0x6E67696C61;
      v6 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x7463757274736564;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xEB00000000657669;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_21BA8899C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_21BA0883C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6777186;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x776F7272616ELL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C6C616D73;
    }

    else
    {
      v4 = 6777186;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x776F7272616ELL;
  if (a2 != 2)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x6C6C616D73;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BA8899C();
  }

  return v11 & 1;
}

uint64_t sub_21BA08968(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE200000000000000;
    v12 = 25705;
    v13 = 0xE600000000000000;
    v14 = 0x726564616568;
    if (a1 != 2)
    {
      v14 = 0x6D496D6574737973;
      v13 = 0xEB00000000656761;
    }

    if (a1)
    {
      v12 = 0x697461676976616ELL;
      v11 = 0xEF656C7469546E6FLL;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v14;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6B6E694C706C6568;
    v5 = 0x6564616548627573;
    v6 = 0x800000021BAA5120;
    if (a1 == 7)
    {
      v6 = 0xE900000000000072;
    }

    else
    {
      v5 = 0xD000000000000018;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0xE600000000000000;
    v8 = 0x6563696F6863;
    if (a1 != 4)
    {
      v8 = 0xD000000000000011;
      v7 = 0x800000021BAA5100;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x726564616568)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xEB00000000656761;
        if (v9 != 0x6D496D6574737973)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xEF656C7469546E6FLL;
      if (v9 != 0x697461676976616ELL)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE200000000000000;
      if (v9 != 25705)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x6563696F6863)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0x800000021BAA5100;
      if (v9 != 0xD000000000000011)
      {
LABEL_52:
        v16 = sub_21BA8899C();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x6B6E694C706C6568)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xE900000000000072;
    if (v9 != 0x6564616548627573)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0x800000021BAA5120;
    if (v9 != 0xD000000000000018)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_21BA08C58()
{
  sub_21BA88BAC();
  sub_21BA08CA8();
  return sub_21BA88BCC();
}

uint64_t sub_21BA08CA8()
{
  sub_21BA87D8C();
}

uint64_t sub_21BA08E08()
{
  sub_21BA88BAC();
  sub_21BA08CA8();
  return sub_21BA88BCC();
}

uint64_t sub_21BA08E4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA0D1C8();
  *a1 = result;
  return result;
}

unint64_t sub_21BA08E7C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BA08568(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21BA08EC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA0D1C8();
  *a1 = result;
  return result;
}

uint64_t sub_21BA08EEC(uint64_t a1)
{
  v2 = sub_21BA0D094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA08F28(uint64_t a1)
{
  v2 = sub_21BA0D094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BA08F64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v84 = a1;
  v3 = v1[4];
  v4 = v1[5];
  v83 = v3;
  v5 = v2[7];
  v81 = v2[6];
  v6 = v2[27];
  type metadata accessor for ImageElement();
  sub_21BA0DFFC(&qword_27CD9E858, 255, type metadata accessor for ImageElement);
  v82 = v4;

  v80 = v5;

  v79 = v6;

  v7 = sub_21BA86A8C();
  v8 = MEMORY[0x277D85000];
  v78 = (*((*MEMORY[0x277D85000] & *v7) + 0x70))();

  v9 = sub_21BA86A8C();
  (*((*v8 & *v9) + 0xA0))();
  v11 = v10;
  LOBYTE(v8) = v12;

  if (v8)
  {
    v13 = 60.0;
  }

  else
  {
    v13 = v11;
  }

  v14 = sub_21BA86A8C();
  v15 = (*((*MEMORY[0x277D85000] & *v14) + 0xD0))();

  v16 = v2[11];
  sub_21BA084F8((v2 + 12), v114);
  if (*(&v114[0] + 1))
  {
    v92 = v114[4];
    v93 = v114[5];
    v94 = v114[6];
    LOBYTE(v95) = v115;
    v88 = v114[0];
    v89 = v114[1];
    v90 = v114[2];
    v91 = v114[3];
    v17 = v16;
    v18 = RUIViewContent.anyView.getter();
    v19 = sub_21B9B33F0(&v88);
    v20 = 0;
  }

  else
  {
    v19 = v16;
    v18 = 0;
    v20 = 2;
  }

  v21 = sub_21B9D03F0(v19);
  v23 = v22;
  v24 = sub_21B9D16CC();
  v26 = v25;
  v27 = sub_21B9D16D0();
  *(&v74 + 1) = v16;
  *&v74 = v15;
  sub_21B9D0464(v21, v23 & 1, v83, v82, v81, v80, v79, v78, &v102, v13, v74, v18, v20, 0, 255, sub_21BA09658, v24, v26 & 1, v27, v28 & 1);
  v29 = sub_21BA86C9C();
  LODWORD(v83) = sub_21BA8743C();
  sub_21BA09A18(v2, &v88);
  sub_21BA87FEC();
  v30 = sub_21BA87FDC();
  v31 = swift_allocObject();
  v32 = v99;
  v33 = v100;
  v34 = v97;
  *(v31 + 192) = v98;
  *(v31 + 208) = v32;
  v35 = v101;
  *(v31 + 224) = v33;
  *(v31 + 240) = v35;
  v36 = v95;
  v37 = v96;
  *(v31 + 128) = v94;
  *(v31 + 144) = v36;
  v38 = MEMORY[0x277D85700];
  *(v31 + 16) = v30;
  *(v31 + 24) = v38;
  *(v31 + 160) = v37;
  *(v31 + 176) = v34;
  v39 = v91;
  *(v31 + 64) = v90;
  *(v31 + 80) = v39;
  v40 = v93;
  *(v31 + 96) = v92;
  *(v31 + 112) = v40;
  v41 = v89;
  *(v31 + 32) = v88;
  *(v31 + 48) = v41;
  v81 = sub_21BA8801C();
  v82 = v75;
  v42 = *(v81 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v81);
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = v75 - v44;
  sub_21BA87FFC();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v79 = sub_21BA86C0C();
    v80 = v75;
    v78 = *(v79 - 8);
    MEMORY[0x28223BE20](v79);
    v76 = v75 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    v86 = 0;
    v87 = 0xE000000000000000;
    sub_21BA8859C();

    v86 = 0xD000000000000026;
    v87 = 0x800000021BAA5190;
    v85 = 53;
    v47 = sub_21BA8889C();
    MEMORY[0x21CEFD130](v47);

    v77 = v29;
    v75[1] = v75;
    v49 = MEMORY[0x28223BE20](v48);
    v50 = v75 - v44;
    v51 = v75 - v44;
    v52 = v81;
    (*(v42 + 16))(v50, v51, v81, v49);
    v53 = v76;
    sub_21BA86BFC();
    (*(v42 + 8))(v45, v52);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E868);
    v55 = v84;
    result = (*(v78 + 32))(v84 + *(v54 + 36), v53, v79);
    v57 = v111;
    *(v55 + 128) = v110;
    *(v55 + 144) = v57;
    *(v55 + 160) = v112;
    v58 = v113;
    v59 = v107;
    *(v55 + 64) = v106;
    *(v55 + 80) = v59;
    v60 = v109;
    *(v55 + 96) = v108;
    *(v55 + 112) = v60;
    v61 = v103;
    *v55 = v102;
    *(v55 + 16) = v61;
    v62 = v105;
    *(v55 + 32) = v104;
    *(v55 + 48) = v62;
    v63 = v77;
    *(v55 + 176) = v58;
    *(v55 + 184) = v63;
    *(v55 + 192) = v83;
  }

  else
  {
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E870);
    v65 = v84;
    v66 = (v84 + *(v64 + 36));
    v67 = sub_21BA86B5C();
    result = (*(v42 + 32))(&v66[*(v67 + 20)], v75 - v44, v81);
    *v66 = &unk_21BA98238;
    *(v66 + 1) = v31;
    v68 = v105;
    *(v65 + 32) = v104;
    *(v65 + 48) = v68;
    v69 = v103;
    *v65 = v102;
    *(v65 + 16) = v69;
    v70 = v109;
    *(v65 + 96) = v108;
    *(v65 + 112) = v70;
    v71 = v107;
    *(v65 + 64) = v106;
    *(v65 + 80) = v71;
    v72 = v113;
    v73 = v112;
    *(v65 + 144) = v111;
    *(v65 + 160) = v73;
    *(v65 + 128) = v110;
    *(v65 + 176) = v72;
    *(v65 + 184) = v29;
    *(v65 + 192) = v83;
  }

  return result;
}

id sub_21BA09658(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_21BA87C8C();
  if (v2)
  {
    v4 = sub_21BA87C8C();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D37698]) initWithTitle:v3 detailText:v4 icon:*(a1 + 72)];

  return v5;
}

uint64_t sub_21BA096E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  v3[3] = swift_task_alloc();
  v3[4] = swift_task_alloc();
  sub_21BA87FEC();
  v3[5] = sub_21BA87FDC();
  v5 = sub_21BA87F9C();

  return MEMORY[0x2822009F8](sub_21BA097C4, v5, v4);
}

uint64_t sub_21BA097C4()
{

  type metadata accessor for ImageElement();
  sub_21BA0DFFC(&qword_27CD9E858, 255, type metadata accessor for ImageElement);
  v1 = sub_21BA86A8C();
  v2 = sub_21BA083A8();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 sourceURL];

    if (v4)
    {
      sub_21BA8643C();

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    v9 = v0[3];
    v8 = v0[4];
    v10 = sub_21BA864AC();
    (*(*(v10 - 8) + 56))(v9, v5, 1, v10);
    sub_21B9AFD2C(v9, v8);
  }

  else
  {
    v6 = v0[4];
    v7 = sub_21BA864AC();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

  (*((*MEMORY[0x277D85000] & *v1) + 0x108))(v0[4]);

  v11 = sub_21BA86A8C();
  [v11 loadImage];

  v12 = v0[1];

  return v12();
}

uint64_t sub_21BA09A50(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8]();
  }

  else
  {
  }
}

uint64_t sub_21BA09A60()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21B9AC1F4;

  return sub_21BA096E8(v2, v3, v0 + 32);
}

unint64_t sub_21BA09AF0()
{
  result = qword_27CD9E878;
  if (!qword_27CD9E878)
  {
    sub_21BA86C0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E878);
  }

  return result;
}

void sub_21BA09B3C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E888);
  v64 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v55 - v5;
  KeyPath = swift_getKeyPath();
  v77 = KeyPath;
  v78 = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21BA0D094();
  sub_21BA88C0C();
  if (v2)
  {
    goto LABEL_4;
  }

  v62 = v4;
  v63 = v6;
  v8 = v64;
  v9 = v96;
  v61 = KeyPath;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = Decoder.decodeRUIID()();
  if (v11)
  {
    (*(v8 + 8))(v63, v62);
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);

    return;
  }

  v76 = v10;
  object = v10._object;
  LOBYTE(v68) = 8;
  v12 = sub_21BA887CC();
  v13 = v8;
  v60 = a1;
  if (v12 == 2 || (v12 & 1) == 0)
  {
    LOBYTE(v68) = 2;
    v19 = sub_21BA887BC();
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    v22 = 0xE000000000000000;
    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    v79 = v21;
    v80 = v23;
    LOBYTE(v68) = 7;
    v24 = sub_21BA887BC();
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v22 = v25;
    }
  }

  else
  {
    LOBYTE(v68) = 1;
    v14 = sub_21BA887BC();
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = 0xE000000000000000;
    if (v15)
    {
      v17 = v15;
    }

    v79 = v16;
    v80 = v17;
    LOBYTE(v68) = 2;
    v18 = sub_21BA887BC();
    v33 = v32;
    v34 = v18;
    LOBYTE(v68) = 7;
    v35 = sub_21BA887BC();
    if (v33 && (v43 = v35, v44 = v36, v26 = sub_21BA4588C(v34, v33), v22 = v45, , v36 = v44, v35 = v43, v22) || v36 && (v26 = sub_21BA4588C(v35, v36), v22 = v46, , v22))
    {
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v26 = 0;
      v22 = 0xE000000000000000;
    }
  }

  v81 = v26;
  v82 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DD08);
  v66[0] = 4;
  sub_21B9EC9CC();
  sub_21BA8880C();
  v27 = v68;
  v28 = (v68 >> 62);
  if (v68 >> 62)
  {
    goto LABEL_46;
  }

  v29 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v30 = v60;
  if (v29)
  {
    while (1)
    {
      *&v68 = MEMORY[0x277D84F90];
      sub_21BA8863C();
      if (v29 < 0)
      {
        break;
      }

      v56 = v29;
      v55 = v27 & 0xFFFFFFFFFFFFFF8;
      if (v28)
      {
        v31 = sub_21BA884DC();
      }

      else
      {
        v31 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v37 = 0;
      v57 = v27 & 0xC000000000000001;
      v58 = v31 & ~(v31 >> 63);
      v38 = v27;
      while (v58 != v37)
      {
        if (v57)
        {
          v39 = MEMORY[0x21CEFD920](v37, v27);
        }

        else
        {
          if (v37 >= *(v55 + 16))
          {
            goto LABEL_45;
          }

          v39 = *(v27 + 8 * v37 + 32);
        }

        v40 = v39;
        v41 = v37++ != 0;
        (*((*MEMORY[0x277D85000] & *v40) + 0x140))(v41);
        sub_21BA8861C();
        sub_21BA8864C();
        sub_21BA8865C();
        sub_21BA8862C();
        v28 = &v68;
        v27 = v38;
        if (v56 == v37)
        {

          v42 = v68;
          v30 = v60;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      v29 = sub_21BA884DC();
      v30 = v60;
      if (!v29)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_47:

    v42 = MEMORY[0x277D84F90];
LABEL_48:
    v95 = v42;
    v47 = v30[3];
    v48 = v30[4];
    __swift_project_boxed_opaque_existential_1(v30, v47);
    v49 = sub_21BA485C4(v47, v48);
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    v83 = sub_21BA0D10C;
    v84 = v50;
    v85 = 0;
    type metadata accessor for HelpLink();
    v66[0] = 6;
    sub_21BA0DFFC(&qword_27CD9DB48, 255, type metadata accessor for HelpLink);
    v51 = v49;
    sub_21BA887EC();
    v86 = v68;
    v65 = 5;
    sub_21BA0D114();
    v53 = v62;
    v52 = v63;
    sub_21BA887EC();
    (*(v13 + 8))(v52, v53);

    if (v67 == 1)
    {
      sub_21B9ABAAC(v66, &qword_27CD9E898);
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0;
    }

    else
    {
      sub_21BA084F8(v66, &v68);
      sub_21BA0D198(v66);
    }

    v54 = v60;
    v91 = v72;
    v92 = v73;
    v93 = v74;
    v87 = v68;
    v88 = v69;
    v94 = v75;
    v89 = v70;
    v90 = v71;
    sub_21BA09A18(&v76, v9);
    __swift_destroy_boxed_opaque_existential_1(v54);
    sub_21BA0D168(&v76);
  }
}

uint64_t sub_21BA0A43C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21BA88BEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DA58);
    sub_21B9E3428();
    sub_21BA889CC();
    if (*(v18 + 16))
    {
      sub_21B9FCF24(v18 + 32, &v10);
    }

    else
    {

      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
    v5 = v15;
    *(a2 + 64) = v14;
    *(a2 + 80) = v5;
    *(a2 + 96) = v16;
    *(a2 + 112) = v17;
    v6 = v11;
    *a2 = v10;
    *(a2 + 16) = v6;
    v7 = v13;
    *(a2 + 32) = v12;
    *(a2 + 48) = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21BA0A5B8()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA0A66C()
{
  sub_21BA87D8C();
}

uint64_t sub_21BA0A70C()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA0A7BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA0D214();
  *a1 = result;
  return result;
}

void sub_21BA0A7EC(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6777186;
  v4 = 0xE600000000000000;
  v5 = 0x776F7272616ELL;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C6C616D73;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_21BA0A8BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E696C69617274;
  }

  else
  {
    v3 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E696C69617274;
  }

  else
  {
    v5 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BA8899C();
  }

  return v8 & 1;
}

uint64_t sub_21BA0A964()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA0A9E8()
{
  sub_21BA87D8C();
}

uint64_t sub_21BA0AA58()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA0AAD8@<X0>(char *a1@<X8>)
{
  v2 = sub_21BA8875C();

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

void sub_21BA0AB38(uint64_t *a1@<X8>)
{
  v2 = 0x676E696461656CLL;
  if (*v1)
  {
    v2 = 0x676E696C69617274;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21BA0ABE4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8RemoteUI6Choice_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  v7 = (*((*MEMORY[0x277D85000] & *v2) + 0x1D8))(v6);
  v8 = *v5;
  v9 = v5[1];

  v7(v8, v9);
}

void (*sub_21BA0ACC0(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8RemoteUI6Choice_title;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21BA0AD48;
}

void sub_21BA0AD48(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = (v5 + v3[4]);
    v7 = (*((*MEMORY[0x277D85000] & *v5) + 0x1D8))(v4);
    v8 = *v6;
    v9 = v6[1];

    v7(v8, v9);
  }

  free(v3);
}

uint64_t sub_21BA0AE14()
{
  v1 = (v0 + OBJC_IVAR____TtC8RemoteUI6Choice_action);
  swift_beginAccess();
  v2 = *v1;
  sub_21B946DA8(*v1);
  return v2;
}

uint64_t sub_21BA0AE70(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8RemoteUI6Choice_action);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_21B946D98(v6);
}

uint64_t sub_21BA0B048()
{
  v1 = OBJC_IVAR____TtC8RemoteUI6Choice_buttonType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21BA0B08C(char a1)
{
  v3 = OBJC_IVAR____TtC8RemoteUI6Choice_buttonType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21BA0B13C()
{
  v1 = OBJC_IVAR____TtC8RemoteUI6Choice_buttonAlign;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21BA0B180(char a1)
{
  v3 = OBJC_IVAR____TtC8RemoteUI6Choice_buttonAlign;
  result = swift_beginAccess();
  *(v1 + v3) = a1 & 1;
  return result;
}

uint64_t sub_21BA0B234()
{
  v1 = (v0 + OBJC_IVAR____TtC8RemoteUI6Choice_enabledFunctionName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_21BA0B28C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8RemoteUI6Choice_enabledFunctionName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_21BA0B358(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

void sub_21BA0B474(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_21BA0B4D0(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8RemoteUI6Choice_parentElement;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21B9E9680;
}

id sub_21BA0B568()
{
  result = sub_21BA0B818(@"tintColor");
  if (!result)
  {

    return sub_21BA0B818(@"color");
  }

  return result;
}

uint64_t sub_21BA0B65C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_21BA0B6D0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9);
}

id sub_21BA0B818(void *a1)
{
  type metadata accessor for RUIAttribute();
  sub_21BA0DFFC(&qword_27CD9E978, 255, type metadata accessor for RUIAttribute);
  v3 = a1;
  sub_21BA8853C();
  result = [v1 attributes];
  if (result)
  {
    v5 = result;
    v6 = sub_21BA87BCC();

    if (*(v6 + 16) && (v7 = sub_21B9AF000(v11), (v8 & 1) != 0))
    {
      sub_21B9AFDF0(*(v6 + 56) + 32 * v7, v12);
      sub_21B9AFD9C(v11);

      if (swift_dynamicCast())
      {
        v9 = sub_21BA87C8C();

        v10 = [objc_opt_self() _remoteUI_colorWithString_];

        return v10;
      }
    }

    else
    {

      sub_21B9AFD9C(v11);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21BA0B9AC()
{
  v1 = OBJC_IVAR____TtC8RemoteUI6Choice_activityIndicatorCount;
  v2 = *(v0 + OBJC_IVAR____TtC8RemoteUI6Choice_activityIndicatorCount);
  if (v2)
  {
    v3 = __OFADD__(v2, 1);
    v4 = v2 + 1;
    if (!v3)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v5 = (*((*MEMORY[0x277D85000] & *v0) + 0x108))();
  v5();

  v6 = *(v0 + v1);
  v3 = __OFADD__(v6, 1);
  v4 = v6 + 1;
  if (!v3)
  {
LABEL_6:
    *(v0 + v1) = v4;
    return;
  }

  __break(1u);
}

void sub_21BA0BB68()
{
  v1 = [v0 pageElement];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 page];

    if (v3)
    {
      v9 = [v3 objectModel];

      if (v9)
      {
        v4 = MEMORY[0x277D85000];
        (*((*MEMORY[0x277D85000] & *v0) + 0x168))();
        if (v5)
        {
          v6 = (*((*v4 & *v0) + 0x1C0))();
          v7 = sub_21BA87C8C();

          v8 = [v9 validateWithFunction_];

          v6(v8);
        }

        else
        {
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_21BA0BD70()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA0BE58()
{
  sub_21BA87D8C();
}

uint64_t sub_21BA0BF2C()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA0C010@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA0D260();
  *a1 = result;
  return result;
}

void sub_21BA0C040(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0xEB00000000657669;
  v6 = 0x7463757274736564;
  v7 = 0xEF6E6F6974636E75;
  v8 = 0x4664656C62616E65;
  if (v2 != 3)
  {
    v8 = 0x6E67696C61;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_21BA0C0E4()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x7463757274736564;
  v4 = 0x4664656C62616E65;
  if (v1 != 3)
  {
    v4 = 0x6E67696C61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
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

uint64_t sub_21BA0C184@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BA0D260();
  *a1 = result;
  return result;
}

uint64_t sub_21BA0C1B8(uint64_t a1)
{
  v2 = sub_21BA0D2AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA0C1F4(uint64_t a1)
{
  v2 = sub_21BA0D2AC();

  return MEMORY[0x2821FE720](a1, v2);
}

_BYTE *sub_21BA0C274(void *a1)
{
  v2 = v1;
  v68 = a1;
  v3 = sub_21BA860EC();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E910);
  v67 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v63 - v6;
  v8 = sub_21BA8655C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC8RemoteUI6Choice_activityIndicatorCount] = 0;
  v12 = &v2[OBJC_IVAR____TtC8RemoteUI6Choice_action];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v2[OBJC_IVAR____TtC8RemoteUI6Choice_startActivityBlock];
  *v13 = nullsub_1;
  v13[1] = 0;
  v14 = &v2[OBJC_IVAR____TtC8RemoteUI6Choice_stopActivityBlock];
  *v14 = nullsub_1;
  v14[1] = 0;
  v15 = &v2[OBJC_IVAR____TtC8RemoteUI6Choice_enabledFunctionName];
  *v15 = 0;
  v15[1] = 0;
  swift_unknownObjectWeakInit();
  v16 = &v2[OBJC_IVAR____TtC8RemoteUI6Choice_setEnabled];
  *v16 = nullsub_1;
  v16[1] = 0;
  v17 = &v2[OBJC_IVAR____TtC8RemoteUI6Choice_setTitle];
  *v17 = nullsub_1;
  v17[1] = 0;
  sub_21BA8654C();
  v18 = sub_21BA8652C();
  v20 = v19;
  (*(v9 + 8))(v11, v8);
  v21 = &v2[OBJC_IVAR____TtC8RemoteUI6Choice_id];
  *v21 = v18;
  v21[1] = v20;
  v22 = v68;
  __swift_project_boxed_opaque_existential_1(v68, v68[3]);
  sub_21BA0D2AC();
  v23 = v74;
  sub_21BA88C0C();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v22);

    sub_21B946D98(*&v2[OBJC_IVAR____TtC8RemoteUI6Choice_action]);

    MEMORY[0x21CEFF260](&v2[OBJC_IVAR____TtC8RemoteUI6Choice_parentElement]);

    type metadata accessor for Choice();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v74 = v15;
    LOBYTE(v72[0]) = 1;
    v24 = v7;
    if (sub_21BA8882C())
    {
      LOBYTE(v72[0]) = 1;
      v25 = sub_21BA887FC();
      v26 = v66;
      v63 = 0;
      v28 = v24;
      v72[0] = v25;
      v72[1] = v29;
      v30 = v64;
      sub_21BA860CC();
      sub_21B9BAB9C();
      v31 = sub_21BA883EC();
      v33 = v32;
      (*(v65 + 8))(v30, v26);

      v34 = &v2[OBJC_IVAR____TtC8RemoteUI6Choice_title];
      *v34 = v31;
      v34[1] = v33;
      v35 = v67;
    }

    else
    {
      v28 = v7;
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      sub_21BA88BEC();
      __swift_project_boxed_opaque_existential_1(v72, v73);
      v36 = sub_21BA889BC();
      v35 = v67;
      v63 = 0;
      v37 = v64;
      v70 = v36;
      v71 = v38;
      sub_21BA860CC();
      sub_21B9BAB9C();
      v39 = sub_21BA883EC();
      v41 = v40;
      (*(v65 + 8))(v37, v66);

      v42 = &v2[OBJC_IVAR____TtC8RemoteUI6Choice_title];
      *v42 = v39;
      v42[1] = v41;
      __swift_destroy_boxed_opaque_existential_1(v72);
    }

    LOBYTE(v70) = 0;
    sub_21BA0D300();
    v43 = v28;
    v44 = v63;
    sub_21BA8880C();
    if (v44)
    {

      v45 = 3;
    }

    else
    {
      v45 = v72[0];
    }

    v2[OBJC_IVAR____TtC8RemoteUI6Choice_buttonType] = v45;
    LOBYTE(v70) = 4;
    sub_21BA0D354();
    sub_21BA8880C();
    v2[OBJC_IVAR____TtC8RemoteUI6Choice_buttonAlign] = v72[0];
    LOBYTE(v72[0]) = 2;
    v2[OBJC_IVAR____TtC8RemoteUI6Choice_destructive] = sub_21BA887CC() & 1;
    LOBYTE(v72[0]) = 3;
    v46 = sub_21BA887BC();
    if (v47)
    {
      v48 = sub_21BA4588C(v46, v47);
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 0;
    }

    v51 = v74;
    swift_beginAccess();
    *v51 = v48;
    v51[1] = v50;

    sub_21B9B3220(v22, v72);
    v52 = sub_21B9AC534(v72);
    v74 = v43;
    v53 = &v2[OBJC_IVAR____TtC8RemoteUI6Choice_accessibilityInfo];
    *v53 = v52;
    v53[1] = v54;
    v55 = type metadata accessor for Choice();
    v69.receiver = v2;
    v69.super_class = v55;
    v56 = objc_msgSendSuper2(&v69, sel_init);
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v2 = v56;
    v57 = Decoder.decodeRUIAttributeDictionary()();
    sub_21B9E9024(v57);

    v58 = sub_21BA87BBC();

    [v2 setAttributes_];

    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    sub_21BA88BEC();
    v59 = v73;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    v60 = SingleValueDecodingContainer.ruiXMLElement.getter(v59);
    v61 = v74;
    v62 = v60;
    [v2 setSourceXMLElement_];

    (*(v35 + 8))(v61, v5);
    __swift_destroy_boxed_opaque_existential_1(v72);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  return v2;
}

void (*sub_21BA0CB98())(void *)
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
  if (result)
  {
    v2 = result;
    result(v0);

    return sub_21B946D98(v2);
  }

  return result;
}

id sub_21BA0CDF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Choice();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BA0CF1C@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC8RemoteUI6Choice_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t sub_21BA0CF38@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 504))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21BA0CFD0(uint64_t a1)
{
  v2 = sub_21BA0DFFC(&qword_27CD9E978, 255, type metadata accessor for RUIAttribute);
  v3 = sub_21BA0DFFC(&qword_27CD9E9A0, 255, type metadata accessor for RUIAttribute);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_21BA0D094()
{
  result = qword_27CDA7CD8[0];
  if (!qword_27CDA7CD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA7CD8);
  }

  return result;
}

unint64_t sub_21BA0D114()
{
  result = qword_27CD9E890;
  if (!qword_27CD9E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E890);
  }

  return result;
}

uint64_t sub_21BA0D1C8()
{
  v0 = sub_21BA8875C();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21BA0D214()
{
  v0 = sub_21BA8875C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21BA0D260()
{
  v0 = sub_21BA8875C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21BA0D2AC()
{
  result = qword_27CD9E918;
  if (!qword_27CD9E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E918);
  }

  return result;
}

unint64_t sub_21BA0D300()
{
  result = qword_27CD9E920;
  if (!qword_27CD9E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E920);
  }

  return result;
}

unint64_t sub_21BA0D354()
{
  result = qword_27CD9E928;
  if (!qword_27CD9E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E928);
  }

  return result;
}

uint64_t sub_21BA0D3A8()
{
  v0 = [objc_allocWithZone(RUIScriptingStaticValue) init];
  result = strdup("title");
  if (result)
  {
    [v0 setIdentifier_];
    [v0 setJSPropertyAttributes_];
    [v0 setGetter_];
    [v0 setSetter_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9D270);
    result = swift_allocObject();
    *(result + 16) = xmmword_21BA95B00;
    *(result + 32) = v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21BA0D4AC()
{
  result = qword_27CD9E930;
  if (!qword_27CD9E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E930);
  }

  return result;
}

unint64_t sub_21BA0D504()
{
  result = qword_27CD9E938;
  if (!qword_27CD9E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E938);
  }

  return result;
}

unint64_t sub_21BA0D55C()
{
  result = qword_27CD9E940;
  if (!qword_27CD9E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E940);
  }

  return result;
}

unint64_t sub_21BA0D5B4()
{
  result = qword_27CD9E948;
  if (!qword_27CD9E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E948);
  }

  return result;
}

unint64_t sub_21BA0D60C()
{
  result = qword_27CD9E950;
  if (!qword_27CD9E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E950);
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_21BA0D6A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BA0D6F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BA0D778(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 113))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_21BA0D7D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Choice.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Choice.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21BA0D9C8()
{
  result = qword_27CD9E958;
  if (!qword_27CD9E958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E880);
    sub_21B9D0E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E958);
  }

  return result;
}

unint64_t sub_21BA0DA68()
{
  result = qword_27CDA86E0[0];
  if (!qword_27CDA86E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA86E0);
  }

  return result;
}

unint64_t sub_21BA0DAC0()
{
  result = qword_27CDA87F0;
  if (!qword_27CDA87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDA87F0);
  }

  return result;
}

unint64_t sub_21BA0DB18()
{
  result = qword_27CDA87F8[0];
  if (!qword_27CDA87F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA87F8);
  }

  return result;
}

unint64_t sub_21BA0DB6C()
{
  result = qword_27CD9E960;
  if (!qword_27CD9E960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD9E960);
  }

  return result;
}

unint64_t sub_21BA0DBB8()
{
  result = qword_27CD9E968;
  if (!qword_27CD9E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E968);
  }

  return result;
}

unint64_t sub_21BA0DC0C()
{
  result = qword_27CD9E970;
  if (!qword_27CD9E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E970);
  }

  return result;
}

void sub_21BA0DC60(const OpaqueJSContext *a1, OpaqueJSValue *a2)
{
  GlobalContext = JSContextGetGlobalContext(a1);
  if (GlobalContext)
  {
    v4 = [objc_opt_self() contextWithJSGlobalContextRef_];
    if (v4)
    {
      v5 = v4;
      Private = JSObjectGetPrivate(a2);
      if (Private)
      {
        v7 = Private;
        v12 = (*((*MEMORY[0x277D85000] & *Private) + 0xD8))();
        v13 = v8;
        v9 = v5;
        v10 = sub_21BA88AEC();
        v11 = [objc_opt_self() valueWithObject:v10 inContext:{v9, v12, v13}];
        swift_unknownObjectRelease();

        if (v11)
        {
          [v11 JSValueRef];

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

uint64_t sub_21BA0DD94(const OpaqueJSContext *a1, OpaqueJSValue *a2, uint64_t a3)
{
  result = JSContextGetGlobalContext(a1);
  if (result)
  {
    result = [objc_opt_self() contextWithJSGlobalContextRef_];
    if (result)
    {
      v6 = result;
      result = JSObjectGetPrivate(a2);
      if (result)
      {
        v7 = result;
        v8 = [objc_opt_self() valueWithJSValueRef:a3 inContext:v6];
        v9 = v8;
        if (v8 && (v8 = [v8 toString]) != 0)
        {
          v10 = v8;
          v11 = sub_21BA87CBC();
          v13 = v12;

          v14 = v13;
          v8 = v11;
        }

        else
        {
          v14 = 0xE000000000000000;
        }

        (*((*MEMORY[0x277D85000] & *v7) + 0xE0))(v8, v14);

        return 1;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void type metadata accessor for RUIAttribute()
{
  if (!qword_27CD9E980)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27CD9E980);
    }
  }
}

uint64_t sub_21BA0DFFC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21BA0E048()
{
  v1 = sub_21BA86E9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
  }

  else
  {

    sub_21BA8820C();
    v6 = sub_21BA8740C();
    sub_21BA8670C();

    sub_21BA86E8C();
    swift_getAtKeyPath();
    sub_21B9CA1D0(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_21BA0E198(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6562614C627573;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C6562614C627573;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BA8899C();
  }

  return v8 & 1;
}

uint64_t sub_21BA0E234()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA0E2AC()
{
  sub_21BA87D8C();
}

uint64_t sub_21BA0E310()
{
  sub_21BA88BAC();
  sub_21BA87D8C();

  return sub_21BA88BCC();
}

uint64_t sub_21BA0E384@<X0>(char *a1@<X8>)
{
  v2 = sub_21BA8875C();

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

void sub_21BA0E3E4(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x6C6562614C627573;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21BA0E418()
{
  if (*v0)
  {
    return 0x6C6562614C627573;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_21BA0E448@<X0>(char *a1@<X8>)
{
  v2 = sub_21BA8875C();

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

uint64_t sub_21BA0E4AC(uint64_t a1)
{
  v2 = sub_21BA0F414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BA0E4E8(uint64_t a1)
{
  v2 = sub_21BA0F414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BA0E524@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E9A8);
  MEMORY[0x28223BE20](v3);
  v5 = &v65 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E9B0);
  MEMORY[0x28223BE20](v6);
  v8 = &v65 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E9B8);
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E9C0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v65 - v16;
  if (*(v1 + 40))
  {
    v68 = v17;
    v69 = v6;
    v70 = v9;
    v71 = v8;
    v72 = v14;
    v73 = v13;
    v74 = v3;
    v75 = a1;

    v67 = v1;
    v18 = sub_21BA0E048();
    v19 = sub_21B9CC538(2, v18);

    if (v19)
    {
      sub_21BA86F3C();
      v20 = sub_21BA8765C();
      v22 = v21;
      v24 = v23;
      sub_21BA8749C();
      v66 = v11;
      v25 = sub_21BA8760C();
      v27 = v26;
      v29 = v28;

      sub_21B9C318C(v20, v22, v24 & 1);

      LODWORD(v76) = sub_21BA871EC();
      v30 = sub_21BA875FC();
      v32 = v31;
      v34 = v33;
      v36 = v35;
      sub_21B9C318C(v25, v27, v29 & 1);

      v76 = v30;
      v77 = v32;
      LOBYTE(v25) = v34 & 1;
      v78 = v34 & 1;
      v79 = v36;
      v37 = type metadata accessor for SubLabelElement();
      v38 = v66;
      sub_21BA1B8C0(v67 + *(v37 + 28), MEMORY[0x277CE0BD0], MEMORY[0x277CE0BC0]);
      sub_21B9C318C(v30, v32, v25);

      v39 = &qword_27CD9E9B8;
      sub_21B9AFF80(v38, v71, &qword_27CD9E9B8);
      swift_storeEnumTagMultiPayload();
      sub_21BA0EB5C();
      sub_21BA0EC18();
      v40 = v68;
      sub_21BA8715C();
      v41 = v38;
    }

    else
    {
      *v5 = sub_21BA86FDC();
      *(v5 + 1) = 0;
      v5[16] = 1;
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E9C8) + 44);

      sub_21BA86F3C();
      v44 = sub_21BA8765C();
      v46 = v45;
      v48 = v47;
      sub_21BA8749C();
      v49 = sub_21BA8760C();
      v65 = v5;
      v50 = v49;
      v52 = v51;
      v54 = v53;

      sub_21B9C318C(v44, v46, v48 & 1);

      LODWORD(v76) = sub_21BA871EC();
      v55 = sub_21BA875FC();
      v57 = v56;
      v59 = v58;
      v61 = v60;
      sub_21B9C318C(v50, v52, v54 & 1);

      v76 = v55;
      v77 = v57;
      v59 &= 1u;
      v78 = v59;
      v79 = v61;
      v62 = type metadata accessor for SubLabelElement();
      v63 = v65;
      sub_21BA1B8C0(v67 + *(v62 + 28), MEMORY[0x277CE0BD0], MEMORY[0x277CE0BC0]);
      sub_21B9C318C(v55, v57, v59);

      v39 = &qword_27CD9E9A8;
      sub_21B9AFF80(v63, v71, &qword_27CD9E9A8);
      swift_storeEnumTagMultiPayload();
      sub_21BA0EB5C();
      sub_21BA0EC18();
      v40 = v68;
      sub_21BA8715C();
      v41 = v63;
    }

    sub_21B9ABAAC(v41, v39);
    v64 = v75;
    sub_21BA0EC7C(v40, v75);
    return (*(v72 + 56))(v64, 0, 1, v73);
  }

  else
  {
    v42 = *(v14 + 56);

    return v42(a1, 1, 1, v15);
  }
}

unint64_t sub_21BA0EB5C()
{
  result = qword_27CD9E9D0;
  if (!qword_27CD9E9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E9B8);
    sub_21BA0F24C(&qword_27CD9E9D8, type metadata accessor for OpenURLViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E9D0);
  }

  return result;
}

unint64_t sub_21BA0EC18()
{
  result = qword_27CD9E9E0;
  if (!qword_27CD9E9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E9A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E9E0);
  }

  return result;
}

uint64_t sub_21BA0EC7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E9C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BA0ECEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URLLoader(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SubLabelElement();
  MEMORY[0x28223BE20](v7);
  v9 = (&v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9->_countAndFlagsBits = swift_getKeyPath();
  LOBYTE(v9->_object) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = Decoder.decodeRUIID()();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9[1] = v10;
    sub_21B9B3220(a1, v17);
    URLLoader.init(from:)(v17, v6);
    v18 = a2;
    sub_21BA0EF6C(v6, v9 + *(v7 + 28));
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21BA88BEC();
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v13 = sub_21BA889BC();
    v14 = v18;
    v9[2]._countAndFlagsBits = v13;
    v9[2]._object = v15;
    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_21BA0EFD0(v9, v14, type metadata accessor for SubLabelElement);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_21BA0F038(v9, type metadata accessor for SubLabelElement);
  }
}

uint64_t sub_21BA0EF6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLLoader(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BA0EFD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BA0F038(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21BA0F09C()
{
  result = qword_27CD9E9E8;
  if (!qword_27CD9E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E9E8);
  }

  return result;
}

unint64_t sub_21BA0F0F4()
{
  result = qword_27CD9E9F0;
  if (!qword_27CD9E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E9F0);
  }

  return result;
}

unint64_t sub_21BA0F14C()
{
  result = qword_27CD9E9F8;
  if (!qword_27CD9E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9E9F8);
  }

  return result;
}

uint64_t sub_21BA0F1A0(void *a1)
{
  a1[1] = sub_21BA0F24C(&qword_27CD9D5D0, type metadata accessor for SubLabelElement);
  a1[2] = sub_21BA0F24C(&qword_27CD9EA00, type metadata accessor for SubLabelElement);
  result = sub_21BA0F24C(&qword_27CD9D6B0, type metadata accessor for SubLabelElement);
  a1[3] = result;
  return result;
}

uint64_t sub_21BA0F24C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BA0F304()
{
  result = qword_27CD9EA08;
  if (!qword_27CD9EA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9EA10);
    sub_21BA0F388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EA08);
  }

  return result;
}

unint64_t sub_21BA0F388()
{
  result = qword_27CD9EA18;
  if (!qword_27CD9EA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9E9C0);
    sub_21BA0EB5C();
    sub_21BA0EC18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EA18);
  }

  return result;
}

unint64_t sub_21BA0F414()
{
  result = qword_27CD9EA20;
  if (!qword_27CD9EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9EA20);
  }

  return result;
}

uint64_t sub_21BA0F478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21BA0F8BC();

  return MEMORY[0x282130D38](a1, a2, a3, a4, v8);
}

uint64_t sub_21BA0F4DC()
{
  sub_21BA0F518();
  sub_21BA86EAC();
  return v1;
}

unint64_t sub_21BA0F518()
{
  result = qword_27CDA9090[0];
  if (!qword_27CDA9090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDA9090);
  }

  return result;
}

uint64_t sub_21BA0F5A8(char a1)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  sub_21BA877AC();
}

uint64_t sub_21BA0F660(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21BA0F940(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = sub_21BA0F940((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + v7 + 32) = v3;
  *a1 = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for ViewContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}