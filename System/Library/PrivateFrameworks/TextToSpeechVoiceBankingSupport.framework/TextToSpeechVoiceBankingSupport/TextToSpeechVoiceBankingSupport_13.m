uint64_t sub_23325B83C()
{
  v1 = v0[39];

  v2 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[32];
  v7 = v0[28];
  v6 = v0[29];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[22];
  v11 = v0[23];
  v14 = v0[21];
  v15 = v0[20];
  v16 = v0[42];

  v12 = v0[1];

  return v12();
}

uint64_t sub_23325B944()
{
  v1 = v0[41];
  v2 = v0[39];

  v3 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[32];
  v8 = v0[28];
  v7 = v0[29];
  v10 = v0[24];
  v9 = v0[25];
  v11 = v0[22];
  v12 = v0[23];
  v15 = v0[21];
  v16 = v0[20];
  v17 = v0[45];

  v13 = v0[1];

  return v13();
}

void sub_23325BA58(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TTSVBVoiceModel();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_23325BF70(a3 + v15 + v16 * v13, v12, type metadata accessor for TTSVBVoiceModel);
      v17 = a1(v12);
      if (v3)
      {
        sub_23325BFD8(v12, type metadata accessor for TTSVBVoiceModel);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_23325C968(v12, v24, type metadata accessor for TTSVBVoiceModel);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2331B4058(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2331B4058(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        sub_23325C968(v24, v14 + v15 + v20 * v16, type metadata accessor for TTSVBVoiceModel);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        sub_23325BFD8(v12, type metadata accessor for TTSVBVoiceModel);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_23325BCE4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = _s14ListModelsJsonVMa(0);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_23325BF70(a3 + v15 + v16 * v13, v12, _s14ListModelsJsonVMa);
      v17 = a1(v12);
      if (v3)
      {
        sub_23325BFD8(v12, _s14ListModelsJsonVMa);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_23325C968(v12, v24, _s14ListModelsJsonVMa);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23325C894(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_23325C894(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        sub_23325C968(v24, v14 + v15 + v20 * v16, _s14ListModelsJsonVMa);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        sub_23325BFD8(v12, _s14ListModelsJsonVMa);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_23325BF70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23325BFD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23325C038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23325C0B0(uint64_t a1)
{
  v2 = sub_23325CAA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23325C0EC(uint64_t a1)
{
  v2 = sub_23325CAA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23325C128@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE37B0, qword_23329FAD8);
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = sub_23328D4DC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = _s17ListVoicesCommandVMa(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23328D3CC();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  sub_23328D4CC();
  sub_23328D58C();
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23325CAA4();
  v23 = v30;
  sub_23328E68C();
  if (!v23)
  {
    v24 = v28;
    sub_233126AC4();
    sub_23328E41C();
    (*(v29 + 8))(v10, v7);
    (*(v24 + 40))(v20, v6, v3);
    sub_23325BF70(v20, v27, _s17ListVoicesCommandVMa);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23325BFD8(v20, _s17ListVoicesCommandVMa);
}

uint64_t sub_23325C49C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233258908();
}

uint64_t sub_23325C528(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_23325873C(&qword_27DDE37B8, _s17ListVoicesCommandVMa);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_23325C604@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFF470 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08B48);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23325C6C4()
{
  v0 = sub_23328D4DC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  v6 = sub_23328D3CC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_23328D4CC();
  return sub_23328D58C();
}

uint64_t sub_23325C7F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for TTSVBVoiceModel() + 28);
  sub_23328CD8C();
  sub_23328E6BC();
  result = sub_23328E6AC();
  *a1 = result;
  a1[1] = v6;
  return result;
}

size_t sub_23325C850(size_t a1, int64_t a2, char a3)
{
  result = sub_23325CFD0(a1, a2, a3, *v3, &qword_27DDE37E8, &qword_23329FEB0, _s13LisVoicesJsonVMa);
  *v3 = result;
  return result;
}

size_t sub_23325C894(size_t a1, int64_t a2, char a3)
{
  result = sub_23325CFD0(a1, a2, a3, *v3, &qword_27DDE37F0, &qword_23329FEB8, _s14ListModelsJsonVMa);
  *v3 = result;
  return result;
}

uint64_t sub_23325C908(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(v2 + 16);
  v4 = *(a2(0) + 20);
  v5 = *(type metadata accessor for TTSVBVoice() + 20);
  return sub_23328CE5C() & 1;
}

uint64_t sub_23325C968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23325C9D0()
{
  result = qword_27DDE37A0;
  if (!qword_27DDE37A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE3798, &qword_23329FAD0);
    sub_23325873C(&qword_27DDE37A8, _s13LisVoicesJsonVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE37A0);
  }

  return result;
}

unint64_t sub_23325CAA4()
{
  result = qword_27DDFF480[0];
  if (!qword_27DDFF480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFF480);
  }

  return result;
}

void sub_23325CC88()
{
  sub_23328CE8C();
  if (v0 <= 0x3F)
  {
    sub_23325CD20();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23325CD20()
{
  if (!qword_27DDE37E0)
  {
    _s14ListModelsJsonVMa(255);
    v0 = sub_23328DC5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE37E0);
    }
  }
}

unint64_t sub_23325CDC4()
{
  result = qword_27DDFF9B0[0];
  if (!qword_27DDFF9B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFF9B0);
  }

  return result;
}

unint64_t sub_23325CE1C()
{
  result = qword_27DDFFBC0[0];
  if (!qword_27DDFFBC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFFBC0);
  }

  return result;
}

unint64_t sub_23325CE74()
{
  result = qword_27DDFFCD0;
  if (!qword_27DDFFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFFCD0);
  }

  return result;
}

unint64_t sub_23325CECC()
{
  result = qword_27DDFFCD8[0];
  if (!qword_27DDFFCD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFFCD8);
  }

  return result;
}

unint64_t sub_23325CF24()
{
  result = qword_27DDFFD60;
  if (!qword_27DDFFD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFFD60);
  }

  return result;
}

unint64_t sub_23325CF7C()
{
  result = qword_27DDFFD68[0];
  if (!qword_27DDFFD68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFFD68);
  }

  return result;
}

size_t sub_23325CFD0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_23325D1AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461506563696F76 && a2 == 0xE900000000000068 || (sub_23328E54C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6964726F636572 && a2 == 0xEE00687461507367 || (sub_23328E54C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736C65646F6DLL && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_23328E54C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_23325D3A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08B60);
  __swift_project_value_buffer(v4, qword_27DE08B60);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_23325D51C()
{
  sub_23328D20C();
  v1 = v0[2];
  v2 = sub_233237A1C();
  v3 = *v2;
  v0[3] = *v2;
  v4 = sub_23328CE8C();
  v0[4] = v4;
  v5 = *(v4 - 8);
  v0[5] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v0[6] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  v11 = (*v3 + 328);
  v12 = (*v11 + **v11);
  v8 = (*v11)[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_23322660C;

  return v12(v7);
}

uint64_t sub_23325D72C(uint64_t a1)
{
  v2 = sub_23325DC68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23325D768(uint64_t a1)
{
  v2 = sub_23325DC68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23325D7A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE37F8, qword_23329FEC0);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  v7 = sub_23328D53C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23328D4DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v33 - v17;
  v19 = _s18DeleteVoiceCommandVMa();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v23 = sub_23328D3CC();
  (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
  v24 = sub_23328D42C();
  (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23325DC68();
  v26 = v35;
  sub_23328E68C();
  if (!v26)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v35 = &v33;
    v28 = *(v27 - 8);
    v29 = *(v28 + 64);
    MEMORY[0x28223BE20](v27);
    v31 = &v33 - v30;
    sub_233226DD0();
    sub_23328E41C();
    (*(v34 + 8))(v6, v3);
    (*(v28 + 40))(v22, v31, v27);
    sub_23325DD18(v22, v33);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23325DCBC(v22);
}

uint64_t _s18DeleteVoiceCommandVMa()
{
  result = qword_27DE00100;
  if (!qword_27DE00100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23325DC68()
{
  result = qword_27DDFFDF8[0];
  if (!qword_27DDFFDF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFFDF8);
  }

  return result;
}

uint64_t sub_23325DCBC(uint64_t a1)
{
  v2 = _s18DeleteVoiceCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23325DD18(uint64_t a1, uint64_t a2)
{
  v4 = _s18DeleteVoiceCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23325DE04()
{
  sub_23328D20C();
  v1 = v0[2];
  v2 = sub_233237A1C();
  v3 = *v2;
  v0[3] = *v2;
  v4 = sub_23328CE8C();
  v0[4] = v4;
  v5 = *(v4 - 8);
  v0[5] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v0[6] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  v11 = (*v3 + 328);
  v12 = (*v11 + **v11);
  v8 = (*v11)[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_233227130;

  return v12(v7);
}

uint64_t sub_23325E048(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_23325E238(&qword_27DDE3800);
  *v4 = v1;
  v4[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_23325E144@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFFDF0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08B60);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23325E238(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s18DeleteVoiceCommandVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23325E27C()
{
  v0 = sub_23328D53C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23328D4DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23328D3BC();
  v12 = sub_23328D3CC();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = sub_23328D42C();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  return sub_23328D5FC();
}

unint64_t sub_23325E504()
{
  result = qword_27DE00210[0];
  if (!qword_27DE00210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE00210);
  }

  return result;
}

unint64_t sub_23325E55C()
{
  result = qword_27DE00320;
  if (!qword_27DE00320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE00320);
  }

  return result;
}

unint64_t sub_23325E5B4()
{
  result = qword_27DE00328[0];
  if (!qword_27DE00328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE00328);
  }

  return result;
}

uint64_t sub_23325E608()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08B78);
  __swift_project_value_buffer(v4, qword_27DE08B78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE38B8, &unk_2332A08A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_233297630;
  v6 = _s27DiagnoseRootSubtasksCommandVMa(0);
  v7 = sub_233261858(&qword_27DDE3878, _s27DiagnoseRootSubtasksCommandVMa);
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = _s30DiagnoseNonRootSubtasksCommandVMa(0);
  v9 = sub_233261858(&qword_27DDE38A0, _s30DiagnoseNonRootSubtasksCommandVMa);
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  v10 = sub_23328D4DC();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  return sub_23328D50C();
}

uint64_t sub_23325E82C()
{
  v1 = *(v0 + 16);
  v2 = sub_233237A1C();
  v3 = *v2;
  *(v0 + 24) = *v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v4 = *(v0 + 48);
  v8 = (*v3 + 472);
  v9 = (*v8 + **v8);
  v5 = (*v8)[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_23325E998;

  return v9(v4);
}

uint64_t sub_23325E998()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_233262690, 0, 0);
  }

  else
  {
    v4 = v3[3];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23325EAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B63697571 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23328E54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23325EB6C(uint64_t a1)
{
  v2 = sub_23325EFDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23325EBA8(uint64_t a1)
{
  v2 = sub_23325EFDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23325EBE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3828, &qword_2332A0138);
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = sub_23328D4DC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = _s15DiagnoseCommandVMa(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v21 = sub_23328D3CC();
  (*(*(v21 - 8) + 56))(v16, 0, 1, v21);
  sub_23328D4CC();
  sub_23328D58C();
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23325EFDC();
  v23 = v31;
  sub_23328E68C();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v25 = v20;
  }

  else
  {
    v24 = v29;
    sub_23315246C(&qword_27DDE1A38, &qword_27DDE19D8, &qword_23329FAC0);
    sub_23328E41C();
    (*(v30 + 8))(v10, v7);
    (*(v24 + 40))(v20, v6, v3);
    sub_233260398(v20, v28, _s15DiagnoseCommandVMa);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v25 = v20;
  }

  return sub_233260338(v25, _s15DiagnoseCommandVMa);
}

unint64_t sub_23325EFDC()
{
  result = qword_27DE003C8;
  if (!qword_27DE003C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE003C8);
  }

  return result;
}

uint64_t sub_23325F050()
{
  v1 = *(v0 + 16);
  v2 = sub_233237A1C();
  v3 = *v2;
  *(v0 + 24) = *v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v4 = *(v0 + 48);
  v8 = (*v3 + 472);
  v9 = (*v8 + **v8);
  v5 = (*v8)[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_23325F1BC;

  return v9(v4);
}

uint64_t sub_23325F1BC()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23325F2F8, 0, 0);
  }

  else
  {
    v4 = v3[3];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23325F2F8()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_23325F35C(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_233261858(&qword_27DDE3840, _s15DiagnoseCommandVMa);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_23325F45C()
{
  v0 = sub_23328D4DC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  sub_23328D3BC();
  v6 = sub_23328D3CC();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_23328D4CC();
  return sub_23328D58C();
}

uint64_t sub_23325F5AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08B90);
  __swift_project_value_buffer(v4, qword_27DE08B90);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_23325F748()
{
  v1 = *(v0 + 32);
  v2 = sub_233237A1C();
  v3 = *v2;
  *(v0 + 40) = *v2;
  v4 = sub_23328CC9C();
  *(v0 + 48) = v4;
  v5 = *(v4 - 8);
  *(v0 + 56) = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  sub_23328D5CC();
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  sub_23328CB7C();

  LODWORD(v9) = *(_s27DiagnoseRootSubtasksCommandVMa(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v10 = *(v0 + 88);
  v14 = (*v3 + 456);
  v15 = (*v14 + **v14);
  v11 = (*v14)[1];
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_23325F964;

  return v15(v7, v10);
}

uint64_t sub_23325F964()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 80) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23319D8B0, 0, 0);
  }

  else
  {
    v9 = *(v2 + 64);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_23325FB3C()
{
  if (*v0)
  {
    result = 0x6B63697571;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_23325FB70(uint64_t a1)
{
  v2 = sub_2332602E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23325FBAC(uint64_t a1)
{
  v2 = sub_2332602E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23325FBE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v50 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v49 = *(v52 - 8);
  v2 = *(v49 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v49 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v54 = *(v57 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v49 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3830, &qword_2332A0148);
  v53 = *(v55 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v60 = &v49 - v7;
  v8 = sub_23328D47C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23328D41C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v58 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23328D53C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_23328D4DC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v49 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v49 - v24;
  v26 = _s27DiagnoseRootSubtasksCommandVMa(0);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_23328D3CC();
  v32 = *(*(v31 - 8) + 56);
  v32(v25, 1, 1, v31);
  v33 = sub_23328D42C();
  (*(*(v33 - 8) + 56))(v21, 1, 1, v33);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5FC();
  v34 = *(v27 + 28);
  sub_23328D40C();
  sub_23328D3BC();
  v32(v25, 0, 1, v31);
  v35 = v30;
  sub_23328D4CC();
  sub_23328D45C();
  v36 = v61;
  sub_23328D59C();
  v37 = v36[4];
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  sub_2332602E4();
  v38 = v60;
  v39 = v62;
  sub_23328E68C();
  if (v39)
  {
    __swift_destroy_boxed_opaque_existential_0(v36);
    v48 = v35;
  }

  else
  {
    v41 = v53;
    v40 = v54;
    v64 = 0;
    sub_23315246C(&qword_27DDE3420, &qword_27DDE3400, &unk_23329DB70);
    v42 = v55;
    sub_23328E41C();
    v43 = *(v40 + 40);
    v62 = v35;
    v43(v35, v56, v57);
    v63 = 1;
    sub_23315246C(&qword_27DDE1A38, &qword_27DDE19D8, &qword_23329FAC0);
    v45 = v51;
    v44 = v52;
    sub_23328E41C();
    (*(v41 + 8))(v38, v42);
    v47 = v62;
    (*(v49 + 40))(v62 + v34, v45, v44);
    sub_233260398(v47, v50, _s27DiagnoseRootSubtasksCommandVMa);
    __swift_destroy_boxed_opaque_existential_0(v36);
    v48 = v47;
  }

  return sub_233260338(v48, _s27DiagnoseRootSubtasksCommandVMa);
}

unint64_t sub_2332602E4()
{
  result = qword_27DE003D0;
  if (!qword_27DE003D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE003D0);
  }

  return result;
}

uint64_t sub_233260338(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_233260398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_233260400()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23325F728();
}

uint64_t sub_23326048C(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_233261858(&qword_27DDE3868, _s27DiagnoseRootSubtasksCommandVMa);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_2332605D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08BA8);
  __swift_project_value_buffer(v4, qword_27DE08BA8);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_233260770()
{
  sub_23328D20C();
  v1 = *(v0 + 32);
  v2 = sub_233237A1C();
  v3 = *v2;
  *(v0 + 40) = *v2;
  v4 = sub_23328CC9C();
  *(v0 + 48) = v4;
  v5 = *(v4 - 8);
  *(v0 + 56) = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  sub_23328D5CC();
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  sub_23328CB7C();

  LODWORD(v9) = *(_s30DiagnoseNonRootSubtasksCommandVMa(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v10 = *(v0 + 88);
  v14 = (*v3 + 464);
  v15 = (*v14 + **v14);
  v11 = (*v14)[1];
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_2332609D8;

  return v15(v7, v10);
}

uint64_t sub_2332609D8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = v2[5];
  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_233260B90, 0, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_233260B90()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

uint64_t sub_233260BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B63697571 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

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

uint64_t sub_233260CCC(uint64_t a1)
{
  v2 = sub_233261774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233260D08(uint64_t a1)
{
  v2 = sub_233261774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233260D44(uint64_t (*a1)(void))
{
  v23 = a1;
  v1 = sub_23328D47C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_23328D41C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_23328D53C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_23328D4DC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22 - v15;
  v17 = sub_23328D3CC();
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  v19 = sub_23328D42C();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5FC();
  v20 = *(v23(0) + 20);
  sub_23328D40C();
  sub_23328D3BC();
  v18(v16, 0, 1, v17);
  sub_23328D4CC();
  sub_23328D45C();
  return sub_23328D59C();
}

uint64_t sub_233261078@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v50 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v49 = *(v52 - 8);
  v2 = *(v49 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v49 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v54 = *(v57 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v49 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3838, qword_2332A0158);
  v53 = *(v55 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v60 = &v49 - v7;
  v8 = sub_23328D47C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23328D41C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v58 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23328D53C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_23328D4DC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v49 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v49 - v24;
  v26 = _s30DiagnoseNonRootSubtasksCommandVMa(0);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_23328D3CC();
  v32 = *(*(v31 - 8) + 56);
  v32(v25, 1, 1, v31);
  v33 = sub_23328D42C();
  (*(*(v33 - 8) + 56))(v21, 1, 1, v33);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5FC();
  v34 = *(v27 + 28);
  sub_23328D40C();
  sub_23328D3BC();
  v32(v25, 0, 1, v31);
  v35 = v30;
  sub_23328D4CC();
  sub_23328D45C();
  v36 = v61;
  sub_23328D59C();
  v37 = v36[4];
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  sub_233261774();
  v38 = v60;
  v39 = v62;
  sub_23328E68C();
  if (v39)
  {
    __swift_destroy_boxed_opaque_existential_0(v36);
    v48 = v35;
  }

  else
  {
    v41 = v53;
    v40 = v54;
    v64 = 0;
    sub_23315246C(&qword_27DDE3420, &qword_27DDE3400, &unk_23329DB70);
    v42 = v55;
    sub_23328E41C();
    v43 = *(v40 + 40);
    v62 = v35;
    v43(v35, v56, v57);
    v63 = 1;
    sub_23315246C(&qword_27DDE1A38, &qword_27DDE19D8, &qword_23329FAC0);
    v45 = v51;
    v44 = v52;
    sub_23328E41C();
    (*(v41 + 8))(v38, v42);
    v47 = v62;
    (*(v49 + 40))(v62 + v34, v45, v44);
    sub_233260398(v47, v50, _s30DiagnoseNonRootSubtasksCommandVMa);
    __swift_destroy_boxed_opaque_existential_0(v36);
    v48 = v47;
  }

  return sub_233260338(v48, _s30DiagnoseNonRootSubtasksCommandVMa);
}

unint64_t sub_233261774()
{
  result = qword_27DE003D8[0];
  if (!qword_27DE003D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE003D8);
  }

  return result;
}

uint64_t sub_233261858(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_233261B70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233127268;

  return sub_233260750();
}

uint64_t sub_233261C44(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_233261858(&qword_27DDE3890, _s30DiagnoseNonRootSubtasksCommandVMa);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_233261D8C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_23328D51C();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

void sub_233261EEC()
{
  sub_233261FA8(319, &qword_27DDE1A68, MEMORY[0x277D839B0], MEMORY[0x277CEEA50]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_233261FA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_14Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_index_15Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_23326223C()
{
  sub_233261FA8(319, &qword_27DDE3458, MEMORY[0x277D837D0], MEMORY[0x277CEEA60]);
  if (v0 <= 0x3F)
  {
    sub_233261FA8(319, &qword_27DDE1A68, MEMORY[0x277D839B0], MEMORY[0x277CEEA50]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23326233C()
{
  result = qword_27DE00E10[0];
  if (!qword_27DE00E10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE00E10);
  }

  return result;
}

unint64_t sub_233262394()
{
  result = qword_27DE01020[0];
  if (!qword_27DE01020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE01020);
  }

  return result;
}

unint64_t sub_2332623EC()
{
  result = qword_27DE01230[0];
  if (!qword_27DE01230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE01230);
  }

  return result;
}

unint64_t sub_233262444()
{
  result = qword_27DE01340;
  if (!qword_27DE01340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE01340);
  }

  return result;
}

unint64_t sub_23326249C()
{
  result = qword_27DE01348[0];
  if (!qword_27DE01348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE01348);
  }

  return result;
}

unint64_t sub_2332624F4()
{
  result = qword_27DE013D0;
  if (!qword_27DE013D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE013D0);
  }

  return result;
}

unint64_t sub_23326254C()
{
  result = qword_27DE013D8[0];
  if (!qword_27DE013D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE013D8);
  }

  return result;
}

unint64_t sub_2332625A4()
{
  result = qword_27DE01460;
  if (!qword_27DE01460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE01460);
  }

  return result;
}

unint64_t sub_2332625FC()
{
  result = qword_27DE01468[0];
  if (!qword_27DE01468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE01468);
  }

  return result;
}

uint64_t sub_233262698()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08BC0);
  __swift_project_value_buffer(v4, qword_27DE08BC0);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_233262800()
{
  v26 = v0;
  sub_23328D20C();
  sub_23328D30C();
  sub_23328D24C();

  v21 = objc_opt_self();
  v1 = [v21 supportedLocales];
  v2 = sub_23328CF0C();
  v0[51] = v2;
  sub_233263810();
  v3 = sub_23328DD2C();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_233263BEC(*(v3 + 16), 0);
    sub_23326606C(v25, &v5[(*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80)], v4, v3);
    v23 = v6;

    v7 = sub_233113BBC();
    if (v23 != v4)
    {
      __break(1u);
      return MEMORY[0x282200938](v7);
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v25[0] = v5;
  sub_233263B48(v25);
  v0[52] = 0;

  v8 = v25[0];
  v9 = *(v2 - 8);
  v10 = v9;
  v0[53] = v9;
  v0[54] = *(v9 + 64);
  v11 = swift_task_alloc();
  v12 = v8[2];
  if (v12)
  {
    v14 = *(v10 + 16);
    v13 = v10 + 16;
    v15 = v8 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v22 = *(v13 + 56);
    v24 = v14;
    do
    {
      v24(v11, v15, v2);
      sub_23328D30C();
      v25[0] = 8224;
      v25[1] = 0xE200000000000000;
      v16 = sub_23328CEAC();
      v18 = v17;
      (*(v13 - 8))(v11, v2);
      MEMORY[0x23839B7E0](v16, v18);

      sub_23328D27C();

      v15 += v22;
      --v12;
    }

    while (v12);
  }

  sub_23328D30C();
  sub_23328D24C();

  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = sub_233262C98;
  v19 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE38C8, &qword_2332A08B8);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_23326385C;
  v0[21] = &block_descriptor_9;
  v0[22] = v19;
  [v21 _fetchSupportedForcedOfflineLocalesWithCompletion_];
  v7 = (v0 + 2);

  return MEMORY[0x282200938](v7);
}

uint64_t sub_233262C98()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_233262D78, 0, 0);
}

uint64_t sub_233262D78()
{
  v50 = v0;
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  *(v0 + 440) = v1;
  if (!v2)
  {
    goto LABEL_8;
  }

  if (!v2[2])
  {

LABEL_8:
    v5 = v1;
    sub_23328D30C();
    sub_23328E24C();

    v48 = 0xD00000000000002ELL;
    v49 = 0x80000002332AE850;
    swift_getErrorValue();
    v6 = *(v0 + 312);
    v7 = *(v0 + 320);
    v8 = *(v0 + 328);
    v9 = v1;
    v10 = sub_23328E5BC();
    v12 = v11;

    MEMORY[0x23839B7E0](v10, v12);

    MEMORY[0x23839B7E0](32, 0xE100000000000000);
    sub_23328D27C();

    v13 = *(v0 + 416);
    goto LABEL_9;
  }

  v3 = *(v0 + 416);
  v48 = v2;

  sub_233263B48(&v48);
  if (v3)
  {
  }

  v33 = *(v0 + 432);

  v34 = v48;
  v35 = swift_task_alloc();
  v36 = v34[2];
  if (v36)
  {
    v37 = *(v0 + 424);
    v38 = *(v37 + 16);
    v37 += 16;
    v39 = v34 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v46 = *(v37 + 56);
    v47 = v38;
    v40 = (v37 - 8);
    do
    {
      v41 = *(v0 + 408);
      v47(v35, v39, v41);
      sub_23328D30C();
      v48 = 8224;
      v49 = 0xE200000000000000;
      v42 = sub_23328CEAC();
      v44 = v43;
      (*v40)(v35, v41);
      MEMORY[0x23839B7E0](v42, v44);

      sub_23328D27C();

      v39 += v46;
      --v36;
    }

    while (v36);
  }

  v13 = 0;
LABEL_9:
  sub_23328D30C();
  sub_23328D24C();

  v14 = sub_233266384(&unk_284879DA0);
  *(v0 + 448) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE38D0, qword_2332A08C0);
  swift_arrayDestroy();
  v15 = *(v14 + 32);
  *(v0 + 480) = v15;
  v16 = -1;
  v17 = -1 << v15;
  v18 = *(v14 + 64);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  *(v0 + 456) = v13;
  v19 = v16 & v18;
  if (v19)
  {
    v20 = 0;
    v21 = *(v0 + 448);
LABEL_16:
    *(v0 + 464) = v19;
    *(v0 + 472) = v20;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = (*(v21 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(*(v21 + 56) + 8 * v24);

    sub_23328D30C();
    *(v0 + 352) = 0x3D6B7361542020;
    *(v0 + 360) = 0xE700000000000000;
    MEMORY[0x23839B7E0](v26, v27);

    v29 = *(v0 + 352);
    v30 = *(v0 + 360);
    sub_23328D27C();

    v31 = objc_opt_self();
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 392;
    *(v0 + 88) = sub_2332632F0;
    v32 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2BF0, &unk_23329A720);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_2331C8A84;
    *(v0 + 232) = &block_descriptor_3_0;
    *(v0 + 240) = v32;
    [v31 installedLanguagesForTaskHint:v28 completion:v0 + 208];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {
    v22 = 0;
    v23 = ((63 - v17) >> 6) - 1;
    v21 = *(v0 + 448);
    while (v23 != v22)
    {
      v20 = v22 + 1;
      v19 = *(v21 + 8 * v22++ + 72);
      if (v19)
      {
        goto LABEL_16;
      }
    }

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_2332632F0()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2332633D0, 0, 0);
}

uint64_t sub_2332633D0()
{
  v1 = *(v0 + 392);
  v2 = *(v1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
    v3 = swift_allocObject();
    v4 = _swift_stdlib_malloc_size(v3);
    v5 = v4 - 32;
    if (v4 < 32)
    {
      v5 = v4 - 17;
    }

    v3[2] = v2;
    v3[3] = 2 * (v5 >> 4);
    v6 = sub_233265F14((v0 + 272), v3 + 4, v2, v1);
    v7 = *(v0 + 272);
    v8 = *(v0 + 280);
    v9 = *(v0 + 288);
    v10 = *(v0 + 296);
    v11 = *(v0 + 304);

    v12 = sub_233113BBC();
    if (v6 != v2)
    {
LABEL_27:
      __break(1u);
      return MEMORY[0x282200938](v12);
    }

    v13 = *(v0 + 456);
    *(v0 + 400) = v3;
    sub_233263ADC((v0 + 400));
    if (v13)
    {

      v14 = *(v0 + 400);
    }

    v18 = *(v0 + 400);
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 40);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;

        sub_23328D30C();
        *(v0 + 368) = 538976288;
        *(v0 + 376) = 0xE400000000000000;
        MEMORY[0x23839B7E0](v21, v22);

        v23 = *(v0 + 368);
        v24 = *(v0 + 376);
        sub_23328D27C();

        v20 += 2;
        --v19;
      }

      while (v19);
    }

    v17 = 0;
  }

  else
  {
    v16 = *(v0 + 392);

    sub_23328D30C();
    sub_23328D27C();

    v17 = *(v0 + 456);
  }

  v26 = *(v0 + 464);
  v25 = *(v0 + 472);
  *(v0 + 456) = v17;
  v27 = (v26 - 1) & v26;
  if (v27)
  {
    v28 = *(v0 + 448);
LABEL_20:
    *(v0 + 464) = v27;
    *(v0 + 472) = v25;
    v30 = __clz(__rbit64(v27)) | (v25 << 6);
    v31 = (*(v28 + 48) + 16 * v30);
    v32 = *v31;
    v33 = v31[1];
    v34 = *(*(v28 + 56) + 8 * v30);

    sub_23328D30C();
    *(v0 + 352) = 0x3D6B7361542020;
    *(v0 + 360) = 0xE700000000000000;
    MEMORY[0x23839B7E0](v32, v33);

    v35 = *(v0 + 352);
    v36 = *(v0 + 360);
    sub_23328D27C();

    v37 = objc_opt_self();
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 392;
    *(v0 + 88) = sub_2332632F0;
    v38 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2BF0, &unk_23329A720);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_2331C8A84;
    *(v0 + 232) = &block_descriptor_3_0;
    *(v0 + 240) = v38;
    [v37 installedLanguagesForTaskHint:v34 completion:v0 + 208];
    v12 = v0 + 80;

    return MEMORY[0x282200938](v12);
  }

  while (1)
  {
    v29 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    v28 = *(v0 + 448);
    if (v29 >= (((1 << *(v0 + 480)) + 63) >> 6))
    {
      break;
    }

    v27 = *(v28 + 8 * v29 + 64);
    ++v25;
    if (v27)
    {
      v25 = v29;
      goto LABEL_20;
    }
  }

  v39 = *(v0 + 8);

  return v39();
}

unint64_t sub_233263810()
{
  result = qword_27DDE38C0;
  if (!qword_27DDE38C0)
  {
    sub_23328CF0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE38C0);
  }

  return result;
}

uint64_t sub_23326385C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = 0;
  if (a2)
  {
    sub_23328CF0C();
    v6 = sub_23328DBFC();
  }

  v7 = *(*(v5 + 64) + 40);
  *v7 = v6;
  v7[1] = a3;
  v8 = a3;

  return MEMORY[0x282200948](v5);
}

uint64_t sub_2332638E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_2332627E4();
}

uint64_t sub_233263970(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_233266484();
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_233263A1C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE014F0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08BC0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233263ADC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23326635C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_233263CE8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_233263B48(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_233266370(v2);
  }

  v3 = v2[2];
  v4 = *(sub_23328CF0C() - 8);
  v6[0] = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6[1] = v3;
  result = sub_233263DE0(v6);
  *a1 = v2;
  return result;
}

size_t sub_233263BEC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2420, &qword_23329D710);
  v4 = *(sub_23328CF0C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_233263CE8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23328E50C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_23328DC3C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2332642F0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_233263F0C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_233263DE0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23328E50C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23328CF0C();
        v6 = sub_23328DC3C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_23328CF0C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2332648CC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_233263FDC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_233263F0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_23328E54C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_233263FDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    result = sub_23328CF0C();
    v7 = result;
    v8 = *(result - 8);
    v9 = v8[2];
    v8 += 2;
    v11 = v8[6];
    v10 = v8[7];
    v49 = v9;
    v50 = v11;
    v47 = (v8 - 1);
    v48 = v8;
    v12 = v6 + v10 * (v4 - 1);
    v44 = -v10;
    v45 = (v8 + 2);
    v13 = v5 - v4;
    v46 = v6;
    v38 = v10;
    v14 = v6 + v10 * v4;
LABEL_6:
    v42 = v12;
    v43 = v4;
    v40 = v14;
    v41 = v13;
    v16 = v13;
    while (1)
    {
      v51 = v16;
      v52 = &v37;
      v17 = v50;
      v18 = MEMORY[0x28223BE20](result);
      v19 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = v49;
      v21 = (v49)(v19, v14, v7, v18);
      v22 = MEMORY[0x28223BE20](v21);
      v20(v19, v12, v7, v22);
      v23 = sub_23328CEAC();
      v24 = v7;
      v26 = v25;
      if (v23 == sub_23328CEAC() && v26 == v27)
      {

        v15 = *v47;
        (*v47)(v19, v24);
        result = (v15)(v19, v24);
        v7 = v24;
LABEL_5:
        v4 = v43 + 1;
        v12 = v42 + v38;
        v13 = v41 - 1;
        v14 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_23328E54C();

      v30 = *v47;
      (*v47)(v19, v24);
      result = (v30)(v19, v24);
      v7 = v24;
      v31 = v51;
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v32 = MEMORY[0x28223BE20](result);
      v34 = &v37 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = *v45;
      (*v45)(v34, v14, v7, v32);
      swift_arrayInitWithTakeFrontToBack();
      result = (v35)(v12, v34, v7);
      v12 += v44;
      v14 += v44;
      v36 = __CFADD__(v31, 1);
      v16 = v31 + 1;
      if (v36)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2332642F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_233173C84(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_233265534((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_23328E54C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_23328E54C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_233173D7C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_233173D7C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_233265534((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_233173C84(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_233173BF8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_23328E54C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2332648CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v150 = result;
  v159 = a3;
  v7 = *(a3 + 8);
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_112:
    v5 = *v150;
    if (!*v150)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_114:
      v170 = v9;
      v139 = *(v9 + 2);
      if (v139 >= 2)
      {
        while (1)
        {
          v140 = v9;
          v9 = *v159;
          if (!*v159)
          {
            goto LABEL_148;
          }

          v141 = *(v140 + 16 * v139);
          v142 = v140 + 16 * (v139 - 1);
          v144 = *(v142 + 32);
          v143 = *(v142 + 40);
          v145 = sub_23328CF0C();
          sub_23326575C(&v9[*(*(v145 - 8) + 72) * v141], &v9[*(*(v145 - 8) + 72) * v144], &v9[*(*(v145 - 8) + 72) * v143], v5);
          if (v6)
          {
          }

          if (v143 < v141)
          {
            goto LABEL_137;
          }

          v9 = v140;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_233173C84(v140);
          }

          if (v139 - 2 >= *(v9 + 2))
          {
            goto LABEL_138;
          }

          v146 = &v9[16 * v139];
          *v146 = v141;
          *(v146 + 1) = v143;
          v170 = v9;
          result = sub_233173BF8(v139 - 1);
          v9 = v170;
          v139 = *(v170 + 2);
          if (v139 <= 1)
          {
          }
        }
      }
    }

LABEL_144:
    result = sub_233173C84(v9);
    v9 = result;
    goto LABEL_114;
  }

  v148 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    v157 = v9;
    if (v8 + 1 < v7)
    {
      v160 = v7;
      v169 = *v159;
      v12 = sub_23328CF0C();
      v168 = &v147;
      v13 = *(v12 - 8);
      v14 = v13;
      v15 = *(v13 + 72);
      v158 = v11;
      v16 = *(v13 + 64);
      v17 = MEMORY[0x28223BE20](v12);
      v18 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v152 = v14;
      v19 = *(v14 + 16);
      v20 = (v19)(v18, v17);
      v167 = &v147;
      v151 = v10;
      v164 = v15;
      v162 = v16;
      v21 = MEMORY[0x28223BE20](v20);
      v163 = v12;
      v155 = v19;
      v156 = (v14 + 16);
      (v19)(v18, v21);
      v22 = sub_23328CEAC();
      v24 = v23;
      v26 = v22 == sub_23328CEAC() && v24 == v25;
      v149 = v6;
      if (v26)
      {
        LODWORD(v161) = 0;
      }

      else
      {
        LODWORD(v161) = sub_23328E54C();
      }

      v27 = (v152 + 8);
      v28 = *(v152 + 8);
      v29 = v163;
      v28(&v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v163);
      v153 = v28;
      v154 = v27;
      result = (v28)(v18, v29);
      v30 = (v151 + 2);
      v31 = v164 * (v151 + 2);
      v5 = v169 + v31;
      v9 = v157;
      v32 = v158;
      v33 = v164 * v158;
      v34 = v169 + v164 * v158;
      do
      {
        v36 = v30;
        v39 = v32;
        v41 = v33;
        v40 = v31;
        v168 = v30;
        if (v30 >= v160)
        {
          break;
        }

        v169 = v31;
        v166 = &v147;
        v167 = v32;
        v42 = v162;
        v43 = MEMORY[0x28223BE20](result);
        v44 = &v147 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
        v45 = v155;
        v46 = (v155)(v44, v5, v29, v43);
        v165 = &v147;
        v47 = MEMORY[0x28223BE20](v46);
        v45(v44, v34, v29, v47);
        v48 = sub_23328CEAC();
        v50 = v49;
        v52 = v48 == sub_23328CEAC() && v50 == v51;
        v35 = v52 ? 0 : sub_23328E54C();
        v36 = v168;

        v29 = v163;
        v37 = v153;
        v153(v44, v163);
        result = v37(v44, v29);
        v38 = v161 ^ v35;
        v30 = (v36 + 1);
        v5 += v164;
        v34 += v164;
        v39 = v167;
        v32 = (v167 + 1);
        v33 = v41 + v164;
        v40 = v169;
        v31 = v169 + v164;
        v9 = v157;
      }

      while ((v38 & 1) == 0);
      v6 = v149;
      if ((v161 & 1) == 0)
      {
        v11 = v36;
LABEL_36:
        v10 = v151;
        goto LABEL_37;
      }

      v5 = v151;
      if (v36 < v151)
      {
        goto LABEL_141;
      }

      if (v151 < v36)
      {
        v167 = (v152 + 32);
        v53 = v151 * v164;
        do
        {
          if (v5 != v39)
          {
            v56 = *v159;
            if (!*v159)
            {
              goto LABEL_147;
            }

            v166 = &v147;
            v57 = MEMORY[0x28223BE20](result);
            v59 = &v147 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
            v165 = *v167;
            (v165)(v59, &v56[v53], v163, v57);
            v169 = v40;
            if (v53 < v41 || &v56[v53] >= v40 + v56)
            {
              v54 = v163;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v54 = v163;
              if (v53 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v165)(&v56[v41], v59, v54);
            v9 = v157;
            v40 = v169;
          }

          ++v5;
          v41 -= v164;
          v40 = (v40 - v164);
          v53 += v164;
          v55 = v5 < v39;
          v39 = (v39 - 1);
        }

        while (v55);
        v11 = v168;
        goto LABEL_36;
      }

      v11 = v36;
      v10 = v151;
    }

LABEL_37:
    v60 = *(v159 + 8);
    if (v11 < v60)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_140;
      }

      if (v11 - v10 < v148)
      {
        break;
      }
    }

LABEL_61:
    if (v11 < v10)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v158 = v11;
    if ((result & 1) == 0)
    {
      result = sub_233173D7C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v89 = *(v9 + 2);
    v88 = *(v9 + 3);
    v90 = v89 + 1;
    if (v89 >= v88 >> 1)
    {
      result = sub_233173D7C((v88 > 1), v89 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v90;
    v91 = &v9[16 * v89];
    v92 = v158;
    *(v91 + 4) = v10;
    *(v91 + 5) = v92;
    v93 = *v150;
    if (!*v150)
    {
      goto LABEL_149;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v95 = *(v9 + 4);
          v96 = *(v9 + 5);
          v105 = __OFSUB__(v96, v95);
          v97 = v96 - v95;
          v98 = v105;
LABEL_81:
          if (v98)
          {
            goto LABEL_128;
          }

          v111 = &v9[16 * v90];
          v113 = *v111;
          v112 = *(v111 + 1);
          v114 = __OFSUB__(v112, v113);
          v115 = v112 - v113;
          v116 = v114;
          if (v114)
          {
            goto LABEL_131;
          }

          v117 = &v9[16 * v94 + 32];
          v119 = *v117;
          v118 = *(v117 + 1);
          v105 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v105)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v115, v120))
          {
            goto LABEL_135;
          }

          if (v115 + v120 >= v97)
          {
            if (v97 < v120)
            {
              v94 = v90 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        v121 = &v9[16 * v90];
        v123 = *v121;
        v122 = *(v121 + 1);
        v105 = __OFSUB__(v122, v123);
        v115 = v122 - v123;
        v116 = v105;
LABEL_95:
        if (v116)
        {
          goto LABEL_130;
        }

        v124 = &v9[16 * v94];
        v126 = *(v124 + 4);
        v125 = *(v124 + 5);
        v105 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v105)
        {
          goto LABEL_133;
        }

        if (v127 < v115)
        {
          goto LABEL_3;
        }

LABEL_102:
        v132 = v94 - 1;
        if (v94 - 1 >= v90)
        {
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        v133 = *v159;
        if (!*v159)
        {
          goto LABEL_146;
        }

        v134 = *&v9[16 * v132 + 32];
        v135 = &v9[16 * v94 + 32];
        v5 = *v135;
        v136 = v135[1];
        v137 = sub_23328CF0C();
        sub_23326575C(&v133[*(*(v137 - 8) + 72) * v134], &v133[*(*(v137 - 8) + 72) * v5], &v133[*(*(v137 - 8) + 72) * v136], v93);
        if (v6)
        {
        }

        if (v136 < v134)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_233173C84(v9);
        }

        if (v132 >= *(v9 + 2))
        {
          goto LABEL_125;
        }

        v138 = &v9[16 * v132];
        *(v138 + 4) = v134;
        *(v138 + 5) = v136;
        v170 = v9;
        result = sub_233173BF8(v94);
        v9 = v170;
        v90 = *(v170 + 2);
        if (v90 <= 1)
        {
          goto LABEL_3;
        }
      }

      v99 = &v9[16 * v90 + 32];
      v100 = *(v99 - 64);
      v101 = *(v99 - 56);
      v105 = __OFSUB__(v101, v100);
      v102 = v101 - v100;
      if (v105)
      {
        goto LABEL_126;
      }

      v104 = *(v99 - 48);
      v103 = *(v99 - 40);
      v105 = __OFSUB__(v103, v104);
      v97 = v103 - v104;
      v98 = v105;
      if (v105)
      {
        goto LABEL_127;
      }

      v106 = &v9[16 * v90];
      v108 = *v106;
      v107 = *(v106 + 1);
      v105 = __OFSUB__(v107, v108);
      v109 = v107 - v108;
      if (v105)
      {
        goto LABEL_129;
      }

      v105 = __OFADD__(v97, v109);
      v110 = v97 + v109;
      if (v105)
      {
        goto LABEL_132;
      }

      if (v110 >= v102)
      {
        v128 = &v9[16 * v94 + 32];
        v130 = *v128;
        v129 = *(v128 + 1);
        v105 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v105)
        {
          goto LABEL_136;
        }

        if (v97 < v131)
        {
          v94 = v90 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_81;
    }

LABEL_3:
    v8 = v158;
    v7 = *(v159 + 8);
    if (v158 >= v7)
    {
      goto LABEL_112;
    }
  }

  if (__OFADD__(v10, v148))
  {
    goto LABEL_142;
  }

  if (v10 + v148 >= v60)
  {
    v61 = *(v159 + 8);
  }

  else
  {
    v61 = (v10 + v148);
  }

  if (v61 < v10)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v11 == v61)
  {
    goto LABEL_61;
  }

  v149 = v6;
  v62 = *v159;
  result = sub_23328CF0C();
  v63 = result;
  v64 = *(result - 8);
  v65 = v64[2];
  v165 = v64 + 2;
  v166 = v65;
  v67 = v64[8];
  v66 = v64[9];
  v162 = v62;
  v163 = (v64 + 1);
  v68 = &v62[v66 * (v11 - 1)];
  v160 = -v66;
  v161 = (v64 + 4);
  v151 = v10;
  v152 = v66;
  v69 = (v10 - v11);
  v70 = &v62[v11 * v66];
  v153 = v61;
  v164 = v67;
LABEL_50:
  v158 = v11;
  v154 = v70;
  v155 = v69;
  v5 = v69;
  v156 = v68;
  while (1)
  {
    v167 = v5;
    v169 = &v147;
    v72 = MEMORY[0x28223BE20](result);
    v5 = &v147 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = v166;
    v74 = (v166)(v5, v70, v63, v72);
    v168 = &v147;
    v75 = MEMORY[0x28223BE20](v74);
    (v73)(v5, v68, v63, v75);
    v76 = v63;
    v77 = sub_23328CEAC();
    v79 = v78;
    if (v77 == sub_23328CEAC() && v79 == v80)
    {

      v71 = *v163;
      (*v163)(v5, v76);
      result = v71(v5, v76);
      v63 = v76;
LABEL_48:
      v67 = v164;
LABEL_49:
      v11 = v158 + 1;
      v68 = &v156[v152];
      v69 = v155 - 1;
      v70 = &v154[v152];
      if ((v158 + 1) == v153)
      {
        v11 = v153;
        v6 = v149;
        v9 = v157;
        v10 = v151;
        goto LABEL_61;
      }

      goto LABEL_50;
    }

    v82 = sub_23328E54C();

    v83 = *v163;
    (*v163)(v5, v76);
    result = v83(v5, v76);
    v63 = v76;
    if ((v82 & 1) == 0)
    {
      goto LABEL_48;
    }

    v67 = v164;
    v84 = v167;
    if (!v162)
    {
      break;
    }

    v85 = MEMORY[0x28223BE20](result);
    v86 = *v161;
    (*v161)(&v147 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0), v70, v63, v85);
    swift_arrayInitWithTakeFrontToBack();
    result = v86(v68, &v147 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0), v63);
    v68 += v160;
    v70 += v160;
    v87 = __CFADD__(v84, 1);
    v5 = v84 + 1;
    if (v87)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

uint64_t sub_233265534(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_23328E54C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_23328E54C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_23326575C(unint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  result = sub_23328CF0C();
  v71 = *(result - 8);
  v9 = v71[9];
  if (!v9)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  v10 = result;
  if (a2 - a1 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_73;
  }

  v11 = a3 - a2;
  if ((a3 - a2) == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_74;
  }

  v12 = (a2 - a1) / v9;
  v77 = a1;
  v76 = a4;
  if (v12 >= v11 / v9)
  {
    v14 = v11 / v9 * v9;
    if (a4 < a2 || a2 + v14 <= a4)
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    if (v14 < 1)
    {
      v36 = a4 + v14;
    }

    else
    {
      v34 = -v9;
      v63 = (v71 + 1);
      v64 = (v71 + 2);
      v35 = a4 + v14;
      v36 = a4 + v14;
      v70 = v10;
      v72 = -v9;
      v73 = a4;
      do
      {
        v61 = v36;
        v37 = a2 + v34;
        v74 = a2 + v34;
        v65 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v77 = a2;
            v75 = v61;
            goto LABEL_71;
          }

          v39 = a3;
          v62 = v36;
          v68 = &v60;
          v69 = v35;
          v40 = v71[8];
          v41 = MEMORY[0x28223BE20](result);
          v42 = &v60 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
          v44 = *(v43 + 16);
          v66 = v45;
          v46 = v44(v42, v41);
          v67 = &v60;
          v47 = MEMORY[0x28223BE20](v46);
          (v44)(v42, v37, v10, v47);
          v48 = sub_23328CEAC();
          v50 = v49;
          v52 = v48 == sub_23328CEAC() && v50 == v51;
          v53 = v52 ? 0 : sub_23328E54C();

          v54 = a3 + v72;
          v55 = *v63;
          v56 = v70;
          (*v63)(v42, v70);
          result = (v55)(v42, v56);
          if (v53)
          {
            break;
          }

          v57 = v66;
          v36 = v66;
          v58 = v73;
          a3 = v54;
          if (v39 < v69 || v54 >= v69)
          {
            v10 = v70;
            result = swift_arrayInitWithTakeFrontToBack();
            v37 = v74;
          }

          else
          {
            v37 = v74;
            v10 = v70;
            if (v39 != v69)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v35 = v36;
          v38 = v57 > v58;
          a2 = v65;
          if (!v38)
          {
            goto LABEL_69;
          }
        }

        v59 = v73;
        a3 = v54;
        if (v39 < v65 || v54 >= v65)
        {
          a2 = v74;
          v10 = v70;
          result = swift_arrayInitWithTakeFrontToBack();
          v36 = v62;
        }

        else
        {
          a2 = v74;
          v10 = v70;
          v36 = v62;
          if (v39 != v65)
          {
            result = swift_arrayInitWithTakeBackToFront();
          }
        }

        v35 = v69;
        v34 = v72;
      }

      while (v69 > v59);
    }

LABEL_69:
    v77 = a2;
    v75 = v36;
  }

  else
  {
    v13 = v12 * v9;
    if (a4 < a1 || a1 + v13 <= a4)
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v69 = a4 + v13;
    v75 = a4 + v13;
    if (v13 >= 1 && a2 < a3)
    {
      v16 = v71[2];
      v65 = v71[8];
      v66 = v16;
      v71 += 2;
      v64 = (v71 - 1);
      v67 = v9;
      v68 = a3;
      do
      {
        v72 = &v60;
        v17 = v65;
        v18 = MEMORY[0x28223BE20](result);
        v19 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        v74 = a2;
        v20 = v66;
        v21 = (v66)(v19, a2, v10, v18);
        v22 = MEMORY[0x28223BE20](v21);
        v73 = a4;
        v20(v19, a4, v10, v22);
        v23 = sub_23328CEAC();
        v24 = v10;
        v26 = v25;
        if (v23 == sub_23328CEAC() && v26 == v27)
        {

          v33 = *v64;
          (*v64)(v19, v24);
          result = (v33)(v19, v24);
          v10 = v24;
        }

        else
        {
          v29 = sub_23328E54C();

          v30 = *v64;
          (*v64)(v19, v24);
          result = (v30)(v19, v24);
          v10 = v24;
          if (v29)
          {
            v31 = v67;
            v32 = v68;
            a2 = v67 + v74;
            if (a1 < v74 || a1 >= a2)
            {
              result = swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v74)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }

            a4 = v73;
            goto LABEL_39;
          }
        }

        a2 = v74;
        v31 = v67;
        v32 = v68;
        a4 = v67 + v73;
        if (a1 < v73 || a1 >= a4)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v73)
        {
          result = swift_arrayInitWithTakeBackToFront();
          v76 = a4;
          goto LABEL_39;
        }

        v76 = a4;
LABEL_39:
        a1 += v31;
        v77 = a1;
      }

      while (a4 < v69 && a2 < v32);
    }
  }

LABEL_71:
  sub_233265E30(&v77, &v76, &v75);
  return 1;
}

uint64_t sub_233265E30(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_23328CF0C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_233265F14(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_23326606C(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a4 + 56;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v28 = 0;
LABEL_25:
    *a1 = v4;
    a1[1] = v5;
    a1[2] = ~v6;
    a1[3] = v28;
    a1[4] = v8;
    return;
  }

  if (!a3)
  {
    v28 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    v39 = a1;
    v40 = a4 + 56;
    v38 = v6;
    v11 = (63 - v6) >> 6;
    v12 = sub_23328CF0C();
    a1 = 0;
    v44 = v12;
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    v45 = a3;
    v46 = v14;
    v42 = v13 + 16;
    v43 = v13;
    v41 = v13 + 32;
    v15 = 1;
    while (1)
    {
      v50 = v10;
      MEMORY[0x28223BE20](a1);
      v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23.n128_f64[0] = MEMORY[0x28223BE20](v18);
      v24 = &v37 - v21;
      if (!v8)
      {
        break;
      }

      v47 = v20;
      v48 = v15;
      v49 = v19;
LABEL_15:
      v27 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v28 = v22;
      v29 = v4;
      v30 = *(v4 + 48);
      v31 = v43;
      v32 = v44;
      v33 = *(v43 + 72);
      (*(v43 + 16))(&v37 - v21, v30 + v33 * (v27 | (v22 << 6)), v44, v23);
      v34 = *(v31 + 32);
      v34(v17, v24, v32);
      v35 = v50;
      v34(v50, v17, v32);
      if (v48 == v45)
      {
        v6 = v38;
        a1 = v39;
        v4 = v29;
        v5 = v40;
        goto LABEL_25;
      }

      v10 = &v35[v33];
      a1 = v48;
      v15 = v48 + 1;
      v4 = v29;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v25 = v22;
    v5 = v40;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v26 >= v11)
      {
        break;
      }

      v8 = *(v40 + 8 * v26);
      ++v25;
      if (v8)
      {
        v47 = v20;
        v48 = v15;
        v49 = v19;
        v22 = v26;
        goto LABEL_15;
      }
    }

    if (v11 <= v22 + 1)
    {
      v36 = v22 + 1;
    }

    else
    {
      v36 = v11;
    }

    v28 = v36 - 1;
    v8 = 0;
    v6 = v38;
    a1 = v39;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

unint64_t sub_233266384(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3908, &qword_2332A0A50);
    v3 = sub_23328E35C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_233144260(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_233266484()
{
  result = qword_27DDE38D8;
  if (!qword_27DDE38D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE38D8);
  }

  return result;
}

unint64_t sub_2332664DC()
{
  result = qword_27DDE38E0;
  if (!qword_27DDE38E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE38E0);
  }

  return result;
}

unint64_t sub_233266534()
{
  result = qword_27DDE38E8;
  if (!qword_27DDE38E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE38E8);
  }

  return result;
}

unint64_t sub_23326658C()
{
  result = qword_27DDE38F0;
  if (!qword_27DDE38F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE38F0);
  }

  return result;
}

unint64_t sub_2332665E4()
{
  result = qword_27DDE38F8;
  if (!qword_27DDE38F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE38F8);
  }

  return result;
}

void type metadata accessor for SFSpeechRecognitionTaskHint()
{
  if (!qword_27DDE3900)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DDE3900);
    }
  }
}

unint64_t sub_2332666C0(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x44496563696F76;
      break;
    case 2:
      result = 0x44496C65646F6DLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
    case 5:
      result = 0x6E6F697461657263;
      break;
    case 6:
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x6E6F6973726576;
      break;
    case 10:
    case 12:
      result = 0x676E696E69617274;
      break;
    case 11:
      result = 0x737574617473;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0x6F6C6E776F447369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_233266874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23326A914(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2332668A8(uint64_t a1)
{
  v2 = sub_233266DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2332668E4(uint64_t a1)
{
  v2 = sub_233266DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233266920(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3910, &qword_2332A0A58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_233266DEC();
  sub_23328E69C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v46) = 0;
  sub_23328E48C();
  if (!v2)
  {
    v13 = _s14ListModelsJsonVMa(0);
    v14 = v13[5];
    LOBYTE(v46) = 1;
    sub_23328CE8C();
    sub_233267C00(&qword_27DDE1F80, MEMORY[0x28220C078]);
    sub_23328E4DC();
    v15 = v13[6];
    LOBYTE(v46) = 2;
    sub_23328E4DC();
    v16 = (v3 + v13[7]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v46) = 3;
    sub_23328E48C();
    v19 = v13[8];
    LOBYTE(v46) = 4;
    sub_23328CE1C();
    sub_233267C00(&qword_27DDE2430, MEMORY[0x28220BF20]);
    sub_23328E4DC();
    v20 = (v3 + v13[9]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v46) = 5;
    sub_23328E48C();
    v23 = (v3 + v13[10]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v46) = 6;
    sub_23328E46C();
    v26 = (v3 + v13[11]);
    v27 = *v26;
    v28 = v26[1];
    LOBYTE(v46) = 7;
    sub_23328E46C();
    v29 = (v3 + v13[12]);
    v30 = *v29;
    v31 = v29[1];
    LOBYTE(v46) = 8;
    sub_23328E46C();
    v32 = (v3 + v13[13]);
    v33 = *v32;
    v34 = v32[1];
    LOBYTE(v46) = 9;
    sub_23328E48C();
    v35 = (v3 + v13[14]);
    v36 = *v35;
    v37 = v35[1];
    LOBYTE(v46) = 10;
    sub_23328E48C();
    v46 = *(v3 + v13[15]);
    v45[15] = 11;
    type metadata accessor for TTSVBVoiceStatus(0);
    sub_233267C48(&qword_27DDE2438, type metadata accessor for TTSVBVoiceStatus);
    sub_23328E4DC();
    v38 = (v3 + v13[16]);
    v39 = *v38;
    v40 = v38[1];
    LOBYTE(v46) = 12;
    sub_23328E48C();
    v41 = *(v3 + v13[17]);
    LOBYTE(v46) = 13;
    sub_23328E4AC();
    v42 = v13[18];
    LOBYTE(v46) = 14;
    sub_23328E47C();
    v43 = *(v3 + v13[19]);
    LOBYTE(v46) = 15;
    sub_23328E49C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_233266DEC()
{
  result = qword_27DE01808;
  if (!qword_27DE01808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE01808);
  }

  return result;
}

uint64_t sub_233266E40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3918, &qword_2332A0A60);
  v4 = *(v108 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v108);
  v7 = &v96 - v6;
  v8 = _s14ListModelsJsonVMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_233266DEC();
  v107 = v7;
  sub_23328E68C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v105 = a1;
  LOBYTE(v110) = 0;
  v13 = v107;
  v14 = sub_23328E3CC();
  v101 = v4;
  v104 = v8;
  *v11 = v14;
  v11[1] = v16;
  v17 = sub_23328CE8C();
  v102 = 0;
  v18 = v17;
  v100 = &v96;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v97 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v96 - v97;
  LOBYTE(v110) = 1;
  sub_233267C00(&qword_27DDE21D0, MEMORY[0x28220C078]);
  v22 = v102;
  sub_23328E41C();
  v103 = v11;
  v98 = v18;
  v99 = v19;
  if (v22)
  {
    (*(v101 + 8))(v13, v108);
    v23 = 0;
    LODWORD(v106) = 0;
    LODWORD(v107) = 0;
    LODWORD(v108) = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    __swift_destroy_boxed_opaque_existential_0(v105);
    v45 = v103[1];

    v57 = 0;
    if (!v106)
    {
      goto LABEL_21;
    }

LABEL_8:
    v46 = *(v103 + v104[7] + 8);

    if (v107)
    {
      goto LABEL_22;
    }

LABEL_9:
    v47 = v103;
    if (!v108)
    {
      goto LABEL_23;
    }

LABEL_10:
    v48 = *(v47 + v104[9] + 8);

    if (v24)
    {
      goto LABEL_24;
    }

LABEL_11:
    v49 = v104;
    if (!v25)
    {
      goto LABEL_25;
    }

LABEL_12:
    v50 = *(v47 + v49[11] + 8);

    if (v26)
    {
      goto LABEL_26;
    }

LABEL_13:
    if (!v27)
    {
      goto LABEL_27;
    }

LABEL_14:
    v51 = *(v47 + v49[13] + 8);

    if (v28)
    {
      goto LABEL_28;
    }

LABEL_15:
    if (!v23)
    {
      goto LABEL_29;
    }

LABEL_16:
    v52 = *(v47 + v49[16] + 8);

    if (v57)
    {
      return sub_233126838(v47 + v49[18]);
    }

    return result;
  }

  v29 = v104;
  v30 = *(v19 + 32);
  v31 = v11 + v104[5];
  v102 = v19 + 32;
  v96 = v30;
  v32 = (v30)(v31, v21, v18);
  MEMORY[0x28223BE20](v32);
  v33 = &v96 - v97;
  LOBYTE(v110) = 2;
  sub_23328E41C();
  v96(v11 + v29[6], v33, v18);
  LOBYTE(v110) = 3;
  v34 = sub_23328E3CC();
  v35 = v29;
  v102 = 0;
  v36 = v29[7];
  *v36 = v34;
  v36[1] = v37;
  v38 = sub_23328CE1C();
  v100 = &v96;
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v110) = 4;
  v43 = sub_233267C00(&qword_27DDE23F8, MEMORY[0x28220BF20]);
  sub_23328E41C();
  v97 = v43;
  (*(v39 + 32))(v35[8], v42, v38);
  LOBYTE(v110) = 5;
  v44 = sub_23328E3CC();
  v64 = v35[9];
  *v64 = v44;
  v64[1] = v65;
  LOBYTE(v110) = 6;
  v66 = sub_23328E3AC();
  v67 = v35[10];
  *v67 = v66;
  v67[1] = v68;
  LOBYTE(v110) = 7;
  v69 = sub_23328E3AC();
  v70 = v35[11];
  *v70 = v69;
  v70[1] = v71;
  LOBYTE(v110) = 8;
  v72 = sub_23328E3AC();
  v73 = (v103 + v104[12]);
  *v73 = v72;
  v73[1] = v74;
  LOBYTE(v110) = 9;
  v75 = sub_23328E3CC();
  v76 = (v103 + v104[13]);
  *v76 = v75;
  v76[1] = v77;
  LOBYTE(v110) = 10;
  v78 = sub_23328E3CC();
  v79 = (v103 + v104[14]);
  *v79 = v78;
  v79[1] = v80;
  type metadata accessor for TTSVBVoiceStatus(0);
  v109 = 11;
  sub_233267C48(&qword_27DDE2400, type metadata accessor for TTSVBVoiceStatus);
  sub_23328E41C();
  *(v103 + v104[15]) = v110;
  LOBYTE(v110) = 12;
  v81 = sub_23328E3CC();
  LODWORD(v100) = 1;
  v102 = 0;
  v82 = (v103 + v104[16]);
  *v82 = v81;
  v82[1] = v83;
  LOBYTE(v110) = 13;
  v84 = v102;
  sub_23328E3EC();
  v102 = v84;
  if (v84)
  {
    goto LABEL_32;
  }

  *(v103 + v104[17]) = v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v88 = (*(*(v87 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v87 - 8);
  v90 = &v96 - v89;
  LOBYTE(v110) = 14;
  v91 = v102;
  sub_23328E3BC();
  v102 = v91;
  if (v91)
  {
LABEL_32:
    (*(v101 + 8))(v107, v108);
    LODWORD(v101) = 0;
  }

  else
  {
    sub_23315CA28(v90, v103 + v104[18]);
    LOBYTE(v110) = 15;
    v92 = v102;
    v93 = sub_23328E3DC();
    v102 = v92;
    if (!v92)
    {
      v94 = v93;
      (*(v101 + 8))(v107, v108);
      v95 = v103;
      *(v103 + v104[19]) = v94 & 1;
      sub_233269F90(v95, v106, _s14ListModelsJsonVMa);
      __swift_destroy_boxed_opaque_existential_0(v105);
      return sub_233269FF8(v95, _s14ListModelsJsonVMa);
    }

    (*(v101 + 8))(v107, v108);
    LODWORD(v101) = 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v105);
  v86 = v103[1];

  LODWORD(v105) = 1;
  LODWORD(v97) = 1;
  LODWORD(v108) = 1;
  LODWORD(v107) = 1;
  LODWORD(v106) = 1;
  v53 = v98;
  v54 = v103;
  v55 = v104;
  v56 = *(v99 + 8);
  v56(v103 + v104[5], v98);
  result = (v56)(v54 + v55[6], v53);
  v23 = v100;
  v28 = v105;
  v27 = 1;
  v26 = 1;
  v25 = 1;
  v57 = v101;
  v24 = v97;
  if (v106)
  {
    goto LABEL_8;
  }

LABEL_21:
  if (!v107)
  {
    goto LABEL_9;
  }

LABEL_22:
  v58 = v104[8];
  v59 = sub_23328CE1C();
  v60 = v103 + v58;
  v47 = v103;
  result = (*(*(v59 - 8) + 8))(v60, v59);
  if (v108)
  {
    goto LABEL_10;
  }

LABEL_23:
  if (!v24)
  {
    goto LABEL_11;
  }

LABEL_24:
  v49 = v104;
  v61 = *(v47 + v104[10] + 8);

  if (v25)
  {
    goto LABEL_12;
  }

LABEL_25:
  if (!v26)
  {
    goto LABEL_13;
  }

LABEL_26:
  v62 = *(v47 + v49[12] + 8);

  if (v27)
  {
    goto LABEL_14;
  }

LABEL_27:
  if (!v28)
  {
    goto LABEL_15;
  }

LABEL_28:
  v63 = *(v47 + v49[14] + 8);

  if (v23)
  {
    goto LABEL_16;
  }

LABEL_29:
  if (v57)
  {
    return sub_233126838(v47 + v49[18]);
  }

  return result;
}

uint64_t sub_233267C00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_233267C48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_233267C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v30 = _s14ListModelsJsonVMa(0);
  v31 = v30[5];
  v32 = sub_23328CE8C();
  v33 = *(*(v32 - 8) + 32);
  v33(&a9[v31], a3, v32);
  v33(&a9[v30[6]], a4, v32);
  v34 = &a9[v30[7]];
  *v34 = a5;
  *(v34 + 1) = a6;
  v35 = v30[8];
  v36 = sub_23328CE1C();
  (*(*(v36 - 8) + 32))(&a9[v35], a7, v36);
  v37 = &a9[v30[9]];
  *v37 = a8;
  *(v37 + 1) = a11;
  v38 = &a9[v30[10]];
  *v38 = a12;
  *(v38 + 1) = a13;
  v39 = &a9[v30[11]];
  *v39 = a14;
  *(v39 + 1) = a15;
  v40 = &a9[v30[12]];
  *v40 = a16;
  *(v40 + 1) = a17;
  v41 = &a9[v30[13]];
  *v41 = a18;
  *(v41 + 1) = a19;
  v42 = &a9[v30[14]];
  *v42 = a20;
  *(v42 + 1) = a21;
  *&a9[v30[15]] = a22;
  v43 = &a9[v30[16]];
  *v43 = a23;
  *(v43 + 1) = a24;
  *&a9[v30[17]] = a10;
  result = sub_23315CA28(a25, &a9[v30[18]]);
  a9[v30[19]] = a26;
  return result;
}

uint64_t sub_233267EF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08BD8);
  __swift_project_value_buffer(v4, qword_27DE08BD8);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_23326804C()
{
  v1[6] = v0;
  v2 = type metadata accessor for TTSVBVoiceModel();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = _s14ListModelsJsonVMa(0);
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_233268174, 0, 0);
}

uint64_t sub_233268174()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 112) = *v1;
  v3 = *(*v2 + 200);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_233268304;

  return v7();
}

uint64_t sub_233268304(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_2332697AC;
  }

  else
  {
    v5 = sub_233268418;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_233268418()
{
  v1 = v0;
  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v3 = *(v0 + 128);
  v193 = v0;
  if (*(v0 + 144) != 1)
  {
    sub_23328D30C();
    sub_23328D27C();

    result = *(v0 + 128);
    v180 = *(v3 + 16);
    if (!v180)
    {
LABEL_50:
      v147 = v1[14];

LABEL_53:

      v155 = v1[13];
      v157 = v1[9];
      v156 = v1[10];

      v145 = v1[1];
      goto LABEL_54;
    }

    v59 = 0;
    v60 = *(v0 + 56);
    v176 = *(v0 + 64);
    v174 = result + ((*(v176 + 80) + 32) & ~*(v176 + 80));
    v172 = *(v0 + 72);
    v61 = *(v0 + 136);
    v192 = v60;
    v178 = v3;
    while (v59 < *(v3 + 16))
    {
      v188 = v61;
      v72 = v1[9];
      v190 = v59;
      sub_233269F90(v174 + *(v176 + 72) * v59, v72, type metadata accessor for TTSVBVoiceModel);
      sub_23328D30C();
      sub_23328E24C();
      MEMORY[0x23839B7E0](0xD00000000000001CLL, 0x80000002332AE900);
      MEMORY[0x23839B7E0](*v72, *(v172 + 8));
      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AE920);
      v73 = v72 + v60[5];
      v74 = sub_23328CE3C();
      MEMORY[0x23839B7E0](v74);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AE940);
      v75 = v72 + v60[6];
      v76 = sub_23328CE3C();
      MEMORY[0x23839B7E0](v76);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AE960);
      MEMORY[0x23839B7E0](*(v72 + v60[14]), *(v72 + v60[14] + 8));
      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AE980);
      v77 = TTSVBVoiceModel.primarySpeakingLocales.getter();
      v78 = *(v77 + 16);
      if (v78)
      {
        v204 = MEMORY[0x277D84F90];
        sub_23312676C(0, v78, 0);
        v79 = v204;
        v80 = sub_23328CF0C();
        v81 = 0;
        v82 = *(v80 - 8);
        v201 = v77 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
        v199 = *(v82 + 64) + 15;
        do
        {
          v83 = swift_task_alloc();
          (*(v82 + 16))(v83, v201 + *(v82 + 72) * v81, v80);
          v84 = sub_23328CEAC();
          v86 = v85;
          (*(v82 + 8))(v83, v80);

          v88 = *(v204 + 16);
          v87 = *(v204 + 24);
          if (v88 >= v87 >> 1)
          {
            sub_23312676C((v87 > 1), v88 + 1, 1);
          }

          ++v81;
          *(v204 + 16) = v88 + 1;
          v89 = v204 + 16 * v88;
          *(v89 + 32) = v84;
          *(v89 + 40) = v86;
        }

        while (v78 != v81);

        v60 = v192;
        v1 = v193;
      }

      else
      {

        v79 = MEMORY[0x277D84F90];
      }

      v90 = v1[9];
      v91 = MEMORY[0x23839B960](v79, MEMORY[0x277D837D0]);
      v93 = v92;

      MEMORY[0x23839B7E0](v91, v93);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AE9A0);
      v94 = v60[7];
      v95 = sub_23328CD6C();
      v96 = *(v95 - 8);
      v195 = *(v96 + 64) + 15;
      v97 = swift_task_alloc();
      sub_23328CD5C();
      v98 = sub_23328CD3C();
      v99 = *(v98 - 8);
      v185 = *(v99 + 64) + 15;
      v100 = swift_task_alloc();
      sub_23328CD1C();
      v101 = sub_23328CDEC();
      v103 = v102;
      v197 = v98;
      v183 = *(v99 + 8);
      v183(v100, v98);
      v202 = v95;
      v181 = *(v96 + 8);
      v181(v97, v95);

      MEMORY[0x23839B7E0](v101, v103);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AE9C0);
      MEMORY[0x23839B7E0](*(v90 + v192[8]), *(v90 + v192[8] + 8));
      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AE9E0);
      v104 = (v90 + v192[9]);
      if (v104[1])
      {
        v105 = *v104;
        v106 = v104[1];
      }

      else
      {
        v106 = 0xE500000000000000;
        v105 = 0x3E6C696E3CLL;
      }

      v107 = v193[9];

      MEMORY[0x23839B7E0](v105, v106);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEA00);
      v108 = (v107 + v192[10]);
      if (v108[1])
      {
        v109 = *v108;
        v110 = v108[1];
      }

      else
      {
        v110 = 0xE500000000000000;
        v109 = 0x3E6C696E3CLL;
      }

      v111 = v193[9];

      MEMORY[0x23839B7E0](v109, v110);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEA20);
      v112 = (v111 + v192[11]);
      if (v112[1])
      {
        v113 = *v112;
        v114 = v112[1];
      }

      else
      {
        v114 = 0xE500000000000000;
        v113 = 0x3E6C696E3CLL;
      }

      v115 = v193[9];

      MEMORY[0x23839B7E0](v113, v114);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEA40);
      MEMORY[0x23839B7E0](*(v115 + v192[12]), *(v115 + v192[12] + 8));
      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEA60);
      MEMORY[0x23839B7E0](*(v115 + v192[17]), *(v115 + v192[17] + 8));
      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEA80);
      v116 = *(v115 + v192[13]);
      v117 = TTSVBVoiceStatus.description.getter(v116);
      MEMORY[0x23839B7E0](v117);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEAA0);
      v118 = TTSVBVoiceTrainingStatus.description.getter(*(v115 + v192[15]));
      MEMORY[0x23839B7E0](v118);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEAC0);
      v119 = v193[9];
      v120 = 1.0;
      if (v116 != 7)
      {
        v120 = *(v119 + v192[16]);
      }

      *(v193 + 4) = v120;
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A00, &unk_2332905E0);
      v122 = *(v121 - 8);
      v123 = *(v122 + 64) + 15;
      v124 = swift_task_alloc();
      v125 = *(*(sub_23328CF0C() - 8) + 64) + 15;
      swift_task_alloc();
      sub_23328CEEC();
      sub_23312678C();
      sub_23328CA8C();

      sub_2331267E0();
      sub_23328D86C();
      (*(v122 + 8))(v124, v121);

      MEMORY[0x23839B7E0](v193[2], v193[3]);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEAE0);
      v126 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8) + 64) + 15;
      v127 = swift_task_alloc();
      sub_23312712C(v119 + v192[18], v127);
      v128 = sub_23328CE1C();
      v129 = *(v128 - 8);
      if ((*(v129 + 48))(v127, 1, v128) == 1)
      {
        sub_233126838(v127);
        v62 = 0x3E656E6F6E3CLL;
        v63 = 0xE600000000000000;
      }

      else
      {
        v130 = swift_task_alloc();
        sub_23328CD5C();
        v131 = swift_task_alloc();
        sub_23328CD1C();
        v62 = sub_23328CDEC();
        v63 = v132;
        v183(v131, v197);
        v181(v130, v202);

        (*(v129 + 8))(v127, v128);
      }

      v59 = v190 + 1;
      v1 = v193;
      v64 = v193[9];

      MEMORY[0x23839B7E0](v62, v63);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEB00);
      *(swift_task_alloc() + 16) = v64;
      v61 = v188;
      v65 = sub_233125BDC(sub_23325C7F4);
      v67 = v66;

      if (v67)
      {
        v68 = v65;
      }

      else
      {
        v68 = 0x3E656E6F4E3CLL;
      }

      if (v67)
      {
        v69 = v67;
      }

      else
      {
        v69 = 0xE600000000000000;
      }

      MEMORY[0x23839B7E0](v68, v69);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEB20);
      v60 = v192;
      if (*(v64 + v192[19]))
      {
        v70 = 7562585;
      }

      else
      {
        v70 = 28494;
      }

      if (*(v64 + v192[19]))
      {
        v71 = 0xE300000000000000;
      }

      else
      {
        v71 = 0xE200000000000000;
      }

      MEMORY[0x23839B7E0](v70, v71);

      sub_23328D27C();

      sub_23328D30C();
      sub_23328D27C();

      result = sub_233269FF8(v64, type metadata accessor for TTSVBVoiceModel);
      v3 = v178;
      if (v59 == v180)
      {
        v146 = v193[16];
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
    return result;
  }

  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v160 = *(v0 + 96);
    v161 = *(v0 + 104);
    v6 = *(v0 + 88);
    v159 = *(v0 + 80);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v203 = MEMORY[0x277D84F90];
    sub_23325C894(0, v4, 0);
    v5 = v203;
    v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v158 = *(v8 + 72);
    do
    {
      v196 = v4;
      v198 = v5;
      v10 = v1[10];
      v194 = v9;
      sub_233269F90(v9, v10, type metadata accessor for TTSVBVoiceModel);
      v187 = *v10;
      v11 = *(v159 + 8);
      v12 = v7[5];
      v13 = sub_23328CE8C();
      v14 = *(v13 - 8);
      v15 = *(v14 + 64) + 15;
      v16 = swift_task_alloc();
      v168 = v14;
      v17 = *(v14 + 16);
      v191 = v16;
      v17(v16, v10 + v12, v13);
      v18 = v7[6];
      v189 = swift_task_alloc();
      v169 = v13;
      v17(v189, v10 + v18, v13);
      v19 = (v10 + v7[14]);
      v182 = *v19;
      v200 = v19[1];
      v20 = v7[7];
      v21 = sub_23328CE1C();
      v22 = *(v21 - 8);
      v23 = *(v22 + 64) + 15;
      v24 = swift_task_alloc();
      v166 = v22;
      v25 = *(v22 + 16);
      v26 = v11;
      v186 = v24;
      v184 = v21;
      v25(v24, v10 + v20, v21);
      v27 = v7[9];
      v28 = (v10 + v7[8]);
      v29 = v28[1];
      v175 = *v28;
      v30 = *(v10 + v27 + 8);
      v179 = *(v10 + v27);
      v31 = v7[11];
      v32 = (v10 + v7[10]);
      v33 = v32[1];
      v170 = *v32;
      v171 = *(v10 + v31);
      v173 = *(v10 + v31 + 8);
      v34 = (v10 + v7[12]);
      v35 = *v34;
      v36 = v34[1];
      v37 = (v10 + v7[17]);
      v38 = v37[1];
      v164 = *v37;
      v165 = v35;
      v39 = *(v10 + v7[13]);
      v40 = *(v10 + v7[15]);

      v167 = v38;

      v177 = v29;

      v41 = TTSVBVoiceTrainingStatus.description.getter(v40);
      v163 = v42;
      v43 = v193[10];
      v44 = 1.0;
      if (v39 != 7)
      {
        v44 = *(v43 + v7[16]);
      }

      v45 = v193[13];
      sub_23312712C(v43 + v7[18], &v45[v6[18]]);
      v162 = *(v43 + v7[19]);
      sub_233269FF8(v43, type metadata accessor for TTSVBVoiceModel);
      *v45 = v187;
      *(v161 + 8) = v26;
      v46 = *(v168 + 32);
      v46(&v45[v6[5]], v191, v169);
      v46(&v45[v6[6]], v189, v169);
      v47 = &v45[v6[7]];
      *v47 = v182;
      *(v47 + 1) = v200;
      (*(v166 + 32))(&v45[v6[8]], v186, v184);
      v48 = &v45[v6[9]];
      *v48 = v175;
      *(v48 + 1) = v177;
      v49 = &v45[v6[10]];
      *v49 = v179;
      *(v49 + 1) = v30;
      v50 = &v45[v6[11]];
      *v50 = v170;
      *(v50 + 1) = v33;
      v51 = &v45[v6[12]];
      *v51 = v171;
      *(v51 + 1) = v173;
      v52 = &v45[v6[13]];
      *v52 = v165;
      *(v52 + 1) = v36;
      v53 = &v45[v6[14]];
      *v53 = v164;
      *(v53 + 1) = v167;
      *&v45[v6[15]] = v39;
      v54 = &v45[v6[16]];
      *v54 = v41;
      v54[1] = v163;
      *&v45[v6[17]] = v44;
      v45[v6[19]] = v162;

      v5 = v198;
      v56 = *(v198 + 16);
      v55 = *(v198 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_23325C894(v55 > 1, v56 + 1, 1);
        v5 = v198;
      }

      v57 = v193[13];
      *(v5 + 16) = v56 + 1;
      sub_23326A058(v57, v5 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v56);
      v9 = v194 + v158;
      v4 = v196 - 1;
      v1 = v193;
    }

    while (v196 != 1);
  }

  v133 = v1[17];
  v134 = sub_23328C8BC();
  v135 = *(v134 + 48);
  v136 = *(v134 + 52);
  swift_allocObject();
  sub_23328C8AC();
  v137 = *(*(sub_23328C87C() - 8) + 64) + 15;
  swift_task_alloc();
  sub_23328C86C();
  sub_23328C88C();

  v1[5] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3768, &qword_23329FAA8);
  sub_23326A0BC();
  v138 = sub_23328C89C();
  if (!v133)
  {
    v148 = v138;
    v149 = v139;
    sub_23328D30C();
    v150 = *(*(sub_23328D9DC() - 8) + 64) + 15;
    swift_task_alloc();
    sub_23328D9CC();
    sub_23328D9AC();
    v152 = v151;

    if (v152)
    {
      v153 = v1[16];
      v154 = v1[14];

      sub_23328D27C();

      sub_233121870(v148, v149);
      goto LABEL_53;
    }

    goto LABEL_58;
  }

  v140 = v1[16];
  v141 = v1[14];

  v142 = v1[13];
  v144 = v1[9];
  v143 = v1[10];

  v145 = v1[1];
LABEL_54:

  return v145();
}

uint64_t sub_2332697AC()
{
  v1 = v0[14];

  v2 = v0[17];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_233269834(uint64_t a1)
{
  v2 = sub_23326A190();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233269870(uint64_t a1)
{
  v2 = sub_23326A190();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2332698AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3920, &qword_2332A0A70);
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = sub_23328D4DC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = _s17ListModelsCommandVMa(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23328D3CC();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  sub_23328D4CC();
  sub_23328D58C();
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23326A190();
  v23 = v31;
  sub_23328E68C();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v25 = v20;
  }

  else
  {
    v24 = v29;
    sub_233126AC4();
    sub_23328E41C();
    (*(v30 + 8))(v10, v7);
    (*(v24 + 40))(v20, v6, v3);
    sub_233269F90(v20, v28, _s17ListModelsCommandVMa);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v25 = v20;
  }

  return sub_233269FF8(v25, _s17ListModelsCommandVMa);
}

uint64_t sub_233269C38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23326804C();
}

uint64_t sub_233269CC4(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_233267C48(&qword_27DDE3928, _s17ListModelsCommandVMa);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_233269DA0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE01800 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08BD8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233269E60()
{
  v0 = sub_23328D4DC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  v6 = sub_23328D3CC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_23328D4CC();
  return sub_23328D58C();
}

uint64_t sub_233269F90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_233269FF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23326A058(uint64_t a1, uint64_t a2)
{
  v4 = _s14ListModelsJsonVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23326A0BC()
{
  result = qword_27DDE3770;
  if (!qword_27DDE3770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE3768, &qword_23329FAA8);
    sub_233267C48(&qword_27DDE3778, _s14ListModelsJsonVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3770);
  }

  return result;
}

unint64_t sub_23326A190()
{
  result = qword_27DE01810[0];
  if (!qword_27DE01810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE01810);
  }

  return result;
}

void sub_23326A374()
{
  v0 = MEMORY[0x277D837D0];
  sub_23328CE8C();
  if (v1 <= 0x3F)
  {
    sub_23328CE1C();
    if (v2 <= 0x3F)
    {
      sub_23326A554(319, &qword_280D3A260, v0, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for TTSVBVoiceStatus(319);
        if (v4 <= 0x3F)
        {
          sub_23315D69C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23326A4C4()
{
  sub_23326A554(319, &qword_27DDE1A68, MEMORY[0x277D839B0], MEMORY[0x277CEEA50]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23326A554(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _s14ListModelsJsonV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14ListModelsJsonV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23326A708()
{
  result = qword_27DE01D40[0];
  if (!qword_27DE01D40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE01D40);
  }

  return result;
}

unint64_t sub_23326A760()
{
  result = qword_27DE01F50[0];
  if (!qword_27DE01F50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE01F50);
  }

  return result;
}

unint64_t sub_23326A7B8()
{
  result = qword_27DE02060;
  if (!qword_27DE02060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE02060);
  }

  return result;
}

unint64_t sub_23326A810()
{
  result = qword_27DE02068[0];
  if (!qword_27DE02068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE02068);
  }

  return result;
}

unint64_t sub_23326A868()
{
  result = qword_27DE020F0;
  if (!qword_27DE020F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE020F0);
  }

  return result;
}

unint64_t sub_23326A8C0()
{
  result = qword_27DE020F8[0];
  if (!qword_27DE020F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE020F8);
  }

  return result;
}

uint64_t sub_23326A914(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496563696F76 && a2 == 0xE700000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496C65646F6DLL && a2 == 0xE700000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002332A7220 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_23328E54C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xED0000646C697542 || (sub_23328E54C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002332A71B0 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002332A71D0 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002332A71F0 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x676E696E69617274 && a2 == 0xEC00000065646F4DLL || (sub_23328E54C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x676E696E69617274 && a2 == 0xEC00000070657453 || (sub_23328E54C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002332AEB40 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002332A7270 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6F6C6E776F447369 && a2 == 0xEC00000064656461)
  {

    return 15;
  }

  else
  {
    v6 = sub_23328E54C();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_23326AE10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08BF0);
  __swift_project_value_buffer(v4, qword_27DE08BF0);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_23326AF74()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 296);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_23326B0F0;

  return v7();
}

uint64_t sub_23326B0F0()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23326B898, 0, 0);
  }

  else
  {
    v4 = v3[2];

    v5 = v3[1];

    return v5();
  }
}

unint64_t sub_23326B230()
{
  result = qword_27DDE3950;
  if (!qword_27DDE3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3950);
  }

  return result;
}

unint64_t sub_23326B288()
{
  result = qword_27DDE3958;
  if (!qword_27DDE3958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3958);
  }

  return result;
}

uint64_t sub_23326B2F8()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 296);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_23326B474;

  return v7();
}

uint64_t sub_23326B474()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23326B5B0, 0, 0);
  }

  else
  {
    v4 = v3[2];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23326B5B0()
{
  v1 = v0[2];

  v2 = v0[4];
  v3 = v0[1];

  return v3();
}

unint64_t sub_23326B618()
{
  result = qword_27DDE3960;
  if (!qword_27DDE3960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3960);
  }

  return result;
}

uint64_t sub_23326B66C(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_23326B230();
  *v4 = v1;
  v4[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v5);
}

unint64_t sub_23326B71C()
{
  result = qword_27DDE3968;
  if (!qword_27DDE3968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3968);
  }

  return result;
}

uint64_t sub_23326B770@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE02180 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08BF0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

unint64_t sub_23326B834()
{
  result = qword_27DDE3970;
  if (!qword_27DDE3970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3970);
  }

  return result;
}

uint64_t sub_23326B89C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08C08);
  __swift_project_value_buffer(v4, qword_27DE08C08);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_23326B9F8()
{
  v1 = *(type metadata accessor for TTSVBInstalledVoiceModel() - 8);
  *(v0 + 176) = v1;
  v2 = *(v1 + 64) + 15;
  *(v0 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23326BAB0, 0, 0);
}

uint64_t sub_23326BAB0()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 192) = *v1;
  v3 = *(*v2 + 216);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_23326BC2C;

  return v7();
}

uint64_t sub_23326BC2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v7 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = sub_23326CEC4;
  }

  else
  {
    v5 = sub_23326BD40;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23326BD40()
{
  v1 = v0[26];
  sub_23328D30C();
  sub_23328D27C();

  v100 = *(v1 + 16);
  v101 = v1;
  if (v100)
  {
    v3 = 0;
    v99 = v0[22];
    v98 = v0[26] + ((*(v99 + 80) + 32) & ~*(v99 + 80));
    v117 = v0[27];
    v108 = v0;
    while (v3 < *(v101 + 16))
    {
      sub_23326D050(v98 + *(v99 + 72) * v3, v0[23]);
      v34 = TTSVBInstalledVoiceModel.calculateOnDiskFileSize()();
      v111 = v3;
      if (v35)
      {

        v109 = 0;
      }

      else
      {
        v109 = v34;
      }

      v36 = v0[23];
      sub_23328D30C();
      sub_23328E24C();
      MEMORY[0x23839B7E0](0xD000000000000016, 0x80000002332AEC20);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      MEMORY[0x23839B7E0](v0[2], v0[3]);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AEC40);
      swift_getKeyPath();
      v37 = sub_23328CE8C();
      v38 = *(v37 - 8);
      v39 = *(v38 + 64) + 15;
      v40 = swift_task_alloc();
      TTSVBInstalledVoiceModel.subscript.getter();

      v41 = sub_23328CE3C();
      v43 = v42;
      v44 = *(v38 + 8);
      v44(v40, v37);
      MEMORY[0x23839B7E0](v41, v43);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AEC60);
      swift_getKeyPath();
      v45 = swift_task_alloc();
      TTSVBInstalledVoiceModel.subscript.getter();

      v46 = sub_23328CE3C();
      v48 = v47;
      v44(v45, v37);
      MEMORY[0x23839B7E0](v46, v48);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AEC80);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v49 = v0[18];
      v50 = *(v49 + 16);
      if (v50)
      {
        v120 = MEMORY[0x277D84F90];
        sub_23312676C(0, v50, 0);
        v51 = v120;
        v52 = sub_23328CF0C();
        v53 = 0;
        v54 = *(v52 - 8);
        v118 = v49 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
        v115 = *(v54 + 64) + 15;
        do
        {
          v55 = v50;
          v56 = swift_task_alloc();
          (*(v54 + 16))(v56, v118 + *(v54 + 72) * v53, v52);
          v57 = sub_23328CEAC();
          v59 = v58;
          (*(v54 + 8))(v56, v52);

          v61 = *(v120 + 16);
          v60 = *(v120 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_23312676C((v60 > 1), v61 + 1, 1);
          }

          ++v53;
          *(v120 + 16) = v61 + 1;
          v62 = v120 + 16 * v61;
          *(v62 + 32) = v57;
          *(v62 + 40) = v59;
          v50 = v55;
        }

        while (v55 != v53);

        v0 = v108;
      }

      else
      {
        v63 = v0[18];

        v51 = MEMORY[0x277D84F90];
      }

      v119 = v0[23];
      v64 = MEMORY[0x23839B960](v51, MEMORY[0x277D837D0]);
      v66 = v65;

      MEMORY[0x23839B7E0](v64, v66);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AECA0);
      swift_getKeyPath();
      v67 = sub_23328CE1C();
      v113 = *(v67 - 8);
      v116 = v67;
      v68 = *(v113 + 64) + 15;
      v69 = swift_task_alloc();
      TTSVBInstalledVoiceModel.subscript.getter();

      v70 = sub_23328CD6C();
      v71 = *(v70 - 8);
      v106 = *(v71 + 64) + 15;
      v72 = swift_task_alloc();
      sub_23328CD5C();
      v73 = sub_23328CD3C();
      v74 = *(v73 - 8);
      v103 = *(v74 + 64) + 15;
      v75 = swift_task_alloc();
      sub_23328CD1C();
      v112 = sub_23328CDEC();
      v77 = v76;
      v104 = *(v74 + 8);
      v104(v75, v73);
      v107 = v70;
      v102 = *(v71 + 8);
      v102(v72, v70);
      v105 = *(v113 + 8);
      v105(v69, v116);

      MEMORY[0x23839B7E0](v112, v77);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AECC0);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      MEMORY[0x23839B7E0](v0[4], v0[5]);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AECE0);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v78 = v0[7];
      if (v78)
      {
        v79 = v0[6];
      }

      else
      {
        v79 = 0x3E6C696E3CLL;
      }

      if (v78)
      {
        v80 = v0[7];
      }

      else
      {
        v80 = 0xE500000000000000;
      }

      MEMORY[0x23839B7E0](v79, v80);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AED00);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v81 = v0[9];
      if (v81)
      {
        v82 = v0[8];
      }

      else
      {
        v82 = 0x3E6C696E3CLL;
      }

      if (v81)
      {
        v83 = v0[9];
      }

      else
      {
        v83 = 0xE500000000000000;
      }

      MEMORY[0x23839B7E0](v82, v83);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AED20);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v84 = v0[11];
      if (v84)
      {
        v85 = v0[10];
      }

      else
      {
        v85 = 0x3E6C696E3CLL;
      }

      if (v84)
      {
        v86 = v0[11];
      }

      else
      {
        v86 = 0xE500000000000000;
      }

      MEMORY[0x23839B7E0](v85, v86);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AED40);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      MEMORY[0x23839B7E0](v0[12], v0[13]);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AED60);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      MEMORY[0x23839B7E0](v0[14], v0[15]);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AED80);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v87 = TTSVBVoiceStatus.description.getter(v0[19]);
      MEMORY[0x23839B7E0](v87);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AEDA0);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v88 = TTSVBVoiceTrainingStatus.description.getter(v0[20]);
      MEMORY[0x23839B7E0](v88);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AEDC0);
      v89 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8) + 64) + 15;
      v90 = swift_task_alloc();
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      if ((*(v113 + 48))(v90, 1, v116) == 1)
      {
        sub_233126838(v90);
        v4 = 0x3E656E6F6E3CLL;
        v5 = 0xE600000000000000;
      }

      else
      {
        v91 = swift_task_alloc();
        sub_23328CD5C();
        v92 = swift_task_alloc();
        sub_23328CD1C();
        v4 = sub_23328CDEC();
        v5 = v93;
        v104(v92, v73);
        v102(v91, v107);

        v105(v90, v116);
      }

      v110 = v111 + 1;
      v6 = v108[23];

      MEMORY[0x23839B7E0](v4, v5);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AEDE0);
      swift_getKeyPath();
      v7 = swift_task_alloc();
      TTSVBInstalledVoiceModel.subscript.getter();

      *(swift_task_alloc() + 16) = v6;
      v114 = v6;
      v8 = sub_233125BDC(sub_23326D2AC);
      v10 = v9;

      sub_233126838(v7);

      if (v10)
      {
        v11 = v8;
      }

      else
      {
        v11 = 0x3E656E6F4E3CLL;
      }

      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0xE600000000000000;
      }

      MEMORY[0x23839B7E0](v11, v12);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AEE00);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      if (*(v108 + 224))
      {
        v13 = 7562585;
      }

      else
      {
        v13 = 28494;
      }

      if (*(v108 + 224))
      {
        v14 = 0xE300000000000000;
      }

      else
      {
        v14 = 0xE200000000000000;
      }

      MEMORY[0x23839B7E0](v13, v14);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AEE20);
      v108[21] = v109;
      v15 = sub_23328CA4C();
      v16 = *(v15 - 8);
      v17 = *(v16 + 64) + 15;
      v18 = swift_task_alloc();
      v19 = sub_23328CA1C();
      v20 = *(v19 - 8);
      v21 = *(v20 + 64) + 15;
      v22 = swift_task_alloc();
      (*(v20 + 104))(v22, *MEMORY[0x277CC8DE0], v19);
      v23 = sub_23328CA3C();
      v24 = *(v23 - 8);
      v25 = *(v24 + 64) + 15;
      v26 = swift_task_alloc();
      sub_23328CA2C();
      sub_23328C82C();
      (*(v24 + 8))(v26, v23);
      (*(v20 + 8))(v22, v19);

      sub_23312599C();
      sub_2331259F0();
      sub_233125A3C();
      sub_23328E0CC();
      (*(v16 + 8))(v18, v15);
      v0 = v108;

      MEMORY[0x23839B7E0](v108[16], v108[17]);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AEE40);
      swift_getKeyPath();
      v27 = sub_23328CC9C();
      v28 = *(v27 - 8);
      v29 = *(v28 + 64) + 15;
      v30 = swift_task_alloc();
      TTSVBInstalledVoiceModel.subscript.getter();

      v31 = sub_23328CC6C();
      v33 = v32;
      v3 = v110;
      (*(v28 + 8))(v30, v27);
      MEMORY[0x23839B7E0](v31, v33);

      sub_23328D27C();

      sub_23328D30C();
      sub_23328D27C();

      result = sub_23326D2D8(v114);
      if (v110 == v100)
      {
        v94 = v108[26];
        goto LABEL_49;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_49:
    v95 = v0[24];

    v96 = v0[23];

    v97 = v0[1];

    return v97();
  }

  return result;
}

uint64_t sub_23326CEC4()
{
  v1 = v0[24];

  v2 = v0[27];
  v3 = v0[23];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23326CF30@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  v2 = sub_23328CE1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTSVBInstalledVoiceModel.subscript.getter();

  sub_23328CD8C();
  (*(v3 + 8))(v6, v2);
  sub_23328E6BC();
  result = sub_23328E6AC();
  *a1 = result;
  a1[1] = v8;
  return result;
}

uint64_t sub_23326D050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBInstalledVoiceModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23326D0B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23326B9F8();
}

uint64_t sub_23326D140(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_23326D338();
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_23326D1EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE02490 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08C08);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23326D2D8(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBInstalledVoiceModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23326D338()
{
  result = qword_27DDE3978;
  if (!qword_27DDE3978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3978);
  }

  return result;
}

unint64_t sub_23326D390()
{
  result = qword_27DDE3980;
  if (!qword_27DDE3980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3980);
  }

  return result;
}

unint64_t sub_23326D3E8()
{
  result = qword_27DDE3988;
  if (!qword_27DDE3988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3988);
  }

  return result;
}

unint64_t sub_23326D440()
{
  result = qword_27DDE3990;
  if (!qword_27DDE3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3990);
  }

  return result;
}

unint64_t sub_23326D498()
{
  result = qword_27DDE3998;
  if (!qword_27DDE3998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3998);
  }

  return result;
}

uint64_t sub_23326D4FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08C20);
  __swift_project_value_buffer(v4, qword_27DE08C20);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t _s21ScriptMetadataCommandVMa()
{
  result = qword_27DE02B30;
  if (!qword_27DE02B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23326D6C0()
{
  sub_23328D20C();
  v1 = v0[6];
  v2 = sub_233237A1C();
  v3 = *v2;
  v0[7] = *v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  sub_23328D5CC();
  v4 = v0[2];
  v5 = v0[3];
  v0[8] = v5;
  v6 = v1 + *(_s21ScriptMetadataCommandVMa() + 20);
  sub_23328D5CC();
  v7 = v0[4];
  v8 = v0[5];
  v0[9] = v8;
  v12 = (*v3 + 400);
  v13 = (*v12 + **v12);
  v9 = (*v12)[1];
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_23326D8B8;

  return v13(v4, v5, v7, v8);
}

uint64_t sub_23326D8B8()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23326DA0C, 0, 0);
  }

  else
  {
    v5 = v3[8];
    v4 = v3[9];
    v6 = v3[7];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_23326DA0C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = v0[11];
  v5 = v0[1];

  return v5();
}

uint64_t sub_23326DA84()
{
  if (*v0)
  {
    result = 0x7954747069726373;
  }

  else
  {
    result = 0x4449656C61636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_23326DAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C61636F6CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7954747069726373 && a2 == 0xEA00000000006570)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

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

uint64_t sub_23326DBA8(uint64_t a1)
{
  v2 = sub_23326E560();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23326DBE4(uint64_t a1)
{
  v2 = sub_23326E560();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23326DC20@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = sub_23328D53C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_23328D4DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v18 - v11;
  v19 = 0x53552D6E65;
  v20 = 0xE500000000000000;
  sub_23328D3BC();
  v13 = sub_23328D3CC();
  v18[0] = *(*(v13 - 8) + 56);
  (v18[0])(v12, 0, 1, v13);
  v14 = sub_23328D42C();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5EC();
  v16 = *(_s21ScriptMetadataCommandVMa() + 20);
  v19 = 0x746C7561666564;
  v20 = 0xE700000000000000;
  sub_23328D3BC();
  (v18[0])(v12, 0, 1, v13);
  v15(v8, 1, 1, v14);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5EC();
}

uint64_t sub_23326DF48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v42 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v48 = *(v46 - 8);
  v2 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE39A0, qword_2332A1350);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v42 - v8;
  v9 = sub_23328D53C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23328D4DC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v50 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v42 - v21;
  v23 = _s21ScriptMetadataCommandVMa();
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = 0x53552D6E65;
  v57 = 0xE500000000000000;
  sub_23328D3BC();
  v28 = sub_23328D3CC();
  v29 = *(v28 - 8);
  v51 = *(v29 + 56);
  v52 = v29 + 56;
  v51(v22, 0, 1, v28);
  v30 = sub_23328D42C();
  v49 = *(*(v30 - 8) + 56);
  v49(v18, 1, 1, v30);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5EC();
  v31 = *(v24 + 28);
  v56 = 0x746C7561666564;
  v57 = 0xE700000000000000;
  sub_23328D3BC();
  v51(v22, 0, 1, v28);
  v32 = v30;
  v33 = v55;
  v49(v18, 1, 1, v32);
  sub_23328D4CC();
  sub_23328D52C();
  v52 = v31;
  sub_23328D5EC();
  v34 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_23326E560();
  v35 = v54;
  v36 = v58;
  sub_23328E68C();
  if (!v36)
  {
    v37 = v48;
    LOBYTE(v56) = 0;
    sub_23326E610();
    v38 = v46;
    v39 = v45;
    sub_23328E41C();
    v40 = *(v37 + 40);
    v48 = v37 + 40;
    v58 = v40;
    v40(v27, v47, v38);
    LOBYTE(v56) = 1;
    sub_23328E41C();
    (*(v44 + 8))(v35, v39);
    v58(&v27[v52], v43, v38);
    sub_23326E674(v27, v42);
  }

  __swift_destroy_boxed_opaque_existential_0(v33);
  return sub_23326E5B4(v27);
}

unint64_t sub_23326E560()
{
  result = qword_27DE02828[0];
  if (!qword_27DE02828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE02828);
  }

  return result;
}

uint64_t sub_23326E5B4(uint64_t a1)
{
  v2 = _s21ScriptMetadataCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23326E610()
{
  result = qword_27DDE3420;
  if (!qword_27DDE3420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE3400, &unk_23329DB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3420);
  }

  return result;
}

uint64_t sub_23326E674(uint64_t a1, uint64_t a2)
{
  v4 = _s21ScriptMetadataCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23326E740()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23326D6A0();
}

uint64_t sub_23326E800(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_23326E9F0(&qword_27DDE39A8);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_23326E8FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE02820 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08C20);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23326E9F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s21ScriptMetadataCommandVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_23326EA78()
{
  sub_23322961C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_23326EAF8()
{
  result = qword_27DE02C40[0];
  if (!qword_27DE02C40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE02C40);
  }

  return result;
}

unint64_t sub_23326EB50()
{
  result = qword_27DE02D50;
  if (!qword_27DE02D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE02D50);
  }

  return result;
}

unint64_t sub_23326EBA8()
{
  result = qword_27DE02D58[0];
  if (!qword_27DE02D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE02D58);
  }

  return result;
}

uint64_t sub_23326EBFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08C38);
  __swift_project_value_buffer(v4, qword_27DE08C38);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_23326ED78()
{
  sub_23328D20C();
  v1 = v0[5];
  v2 = sub_233237A1C();
  v3 = *v2;
  v0[6] = *v2;
  v4 = sub_23328CE8C();
  v0[7] = v4;
  v5 = *(v4 - 8);
  v0[8] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v0[9] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  v11 = (*v3 + 440);
  v12 = (*v11 + **v11);
  v8 = (*v11)[1];
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_23326F02C;

  return v12(v7);
}

uint64_t sub_23326F02C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = v2[6];
  (*(v2[8] + 8))(v2[9], v2[7]);

  if (v0)
  {
    v6 = sub_23326F1BC;
  }

  else
  {

    v6 = sub_2331D4638;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23326F1BC()
{
  v1 = v0[9];

  v2 = v0[11];
  sub_23328D30C();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x23839B7E0](0x203A726F727245, 0xE700000000000000);
  v0[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
  sub_23328E30C();
  v3 = v0[2];
  v4 = v0[3];
  sub_23328D25C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_23326F2C4(uint64_t a1)
{
  v2 = sub_23326F800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23326F300(uint64_t a1)
{
  v2 = sub_23326F800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23326F33C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE39D0, qword_2332A15E8);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  v7 = sub_23328D53C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23328D4DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v33 - v17;
  v19 = _s32SynthesizeAudioForSamplesCommandVMa();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v23 = sub_23328D3CC();
  (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
  v24 = sub_23328D42C();
  (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23326F800();
  v26 = v35;
  sub_23328E68C();
  if (!v26)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v35 = &v33;
    v28 = *(v27 - 8);
    v29 = *(v28 + 64);
    MEMORY[0x28223BE20](v27);
    v31 = &v33 - v30;
    sub_233226DD0();
    sub_23328E41C();
    (*(v34 + 8))(v6, v3);
    (*(v28 + 40))(v22, v31, v27);
    sub_23326F8B0(v22, v33);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23326F854(v22);
}

uint64_t _s32SynthesizeAudioForSamplesCommandVMa()
{
  result = qword_27DE030F0;
  if (!qword_27DE030F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23326F800()
{
  result = qword_27DE02DE8[0];
  if (!qword_27DE02DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE02DE8);
  }

  return result;
}

uint64_t sub_23326F854(uint64_t a1)
{
  v2 = _s32SynthesizeAudioForSamplesCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23326F8B0(uint64_t a1, uint64_t a2)
{
  v4 = _s32SynthesizeAudioForSamplesCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23326F97C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23326ED58();
}

uint64_t sub_23326FA3C(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_23326FC2C(&qword_27DDE39D8);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_23326FB38@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE02DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08C38);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23326FC2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s32SynthesizeAudioForSamplesCommandVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23326FC70()
{
  v0 = sub_23328D53C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23328D4DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23328D3BC();
  v12 = sub_23328D3CC();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = sub_23328D42C();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  return sub_23328D5FC();
}

unint64_t sub_23326FEF8()
{
  result = qword_27DE03200[0];
  if (!qword_27DE03200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE03200);
  }

  return result;
}

unint64_t sub_23326FF50()
{
  result = qword_27DE03310;
  if (!qword_27DE03310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE03310);
  }

  return result;
}

unint64_t sub_23326FFA8()
{
  result = qword_27DE03318[0];
  if (!qword_27DE03318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE03318);
  }

  return result;
}

uint64_t sub_23326FFFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08C50);
  __swift_project_value_buffer(v4, qword_27DE08C50);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_233270170()
{
  sub_23328D20C();
  v1 = *sub_233237A1C();

  sub_23328D30C();
  v2 = sub_23328CC9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(*v1 + 176))();
  sub_23328CC6C();
  (*(v3 + 8))(v5, v2);
  sub_23328D27C();

  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_23327030C()
{
  result = qword_27DDE3A00;
  if (!qword_27DDE3A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A00);
  }

  return result;
}

unint64_t sub_233270364()
{
  result = qword_27DDE3A08;
  if (!qword_27DDE3A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A08);
  }

  return result;
}

unint64_t sub_2332703BC()
{
  result = qword_27DDE3A10;
  if (!qword_27DDE3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A10);
  }

  return result;
}

uint64_t sub_233270410(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_23327030C();
  *v4 = v1;
  v4[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v5);
}

unint64_t sub_2332704C0()
{
  result = qword_27DDE3A18;
  if (!qword_27DDE3A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A18);
  }

  return result;
}

uint64_t sub_233270514@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE033A0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08C50);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

unint64_t sub_2332705D8()
{
  result = qword_27DDE3A20;
  if (!qword_27DDE3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A20);
  }

  return result;
}

uint64_t sub_23327063C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08C68);
  __swift_project_value_buffer(v4, qword_27DE08C68);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_2332707B0()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 416);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_23326B0F0;

  return v7();
}

unint64_t sub_233270930()
{
  result = qword_27DDE3A28;
  if (!qword_27DDE3A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A28);
  }

  return result;
}

unint64_t sub_233270988()
{
  result = qword_27DDE3A30;
  if (!qword_27DDE3A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A30);
  }

  return result;
}

uint64_t sub_2332709F8()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 416);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_23326B474;

  return v7();
}

unint64_t sub_233270B78()
{
  result = qword_27DDE3A38;
  if (!qword_27DDE3A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A38);
  }

  return result;
}

uint64_t sub_233270BCC(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_233270930();
  *v4 = v1;
  v4[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v5);
}

unint64_t sub_233270C7C()
{
  result = qword_27DDE3A40;
  if (!qword_27DDE3A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A40);
  }

  return result;
}

uint64_t sub_233270CD0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE036B0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08C68);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

unint64_t sub_233270D94()
{
  result = qword_27DDE3A48;
  if (!qword_27DDE3A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A48);
  }

  return result;
}

uint64_t sub_233270DF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08C80);
  __swift_project_value_buffer(v4, qword_27DE08C80);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t _s18ImportModelCommandVMa()
{
  result = qword_27DE03CD0;
  if (!qword_27DE03CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_233270F98()
{
  v1[4] = v0;
  v2 = sub_23328D23C();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_233271058, 0, 0);
}

uint64_t sub_233271058()
{
  sub_23328D20C();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v23 = v0[5];
  v4 = sub_233237A1C();
  v5 = *v4;
  v0[8] = *v4;
  v6 = sub_23328CE8C();
  v0[9] = v6;
  v7 = *(v6 - 8);
  v0[10] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v0[11] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  v10 = _s18ImportModelCommandVMa();
  v11 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  sub_23328D5CC();
  v12 = v0[2];
  v13 = v0[3];
  v0[12] = v13;
  v14 = *(v10 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3500, &qword_23329E2E8);
  sub_23328D5CC();
  v15 = sub_23328CC9C();
  v0[13] = v15;
  v16 = *(v15 - 8);
  v0[14] = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v0[15] = v18;
  MEMORY[0x23839AF80]();
  (*(v2 + 8))(v1, v23);
  v22 = (*v5 + 280);
  v24 = (*v22 + **v22);
  v19 = (*v22)[1];
  v20 = swift_task_alloc();
  v0[16] = v20;
  *v20 = v0;
  v20[1] = sub_23327138C;

  return v24(v9, v12, v13, v18);
}

uint64_t sub_23327138C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v15 = *v1;
  v2[17] = v0;

  v14 = v2[15];
  v4 = v2[14];
  v5 = v2[13];
  v6 = v2[12];
  v7 = v2[11];
  v8 = v2[10];
  v9 = v2[9];
  v10 = v2[8];
  if (v0)
  {

    (*(v4 + 8))(v14, v5);
    (*(v8 + 8))(v7, v9);

    return MEMORY[0x2822009F8](sub_233271634, 0, 0);
  }

  else
  {
    v11 = v2[7];

    (*(v4 + 8))(v14, v5);
    (*(v8 + 8))(v7, v9);

    v12 = *(v15 + 8);

    return v12();
  }
}

uint64_t sub_233271634()
{
  v1 = v0[15];
  v2 = v0[11];

  v3 = v0[17];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2332716AC()
{
  v1 = 1635017060;
  if (*v0 != 1)
  {
    v1 = 0x4449656C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2332716F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_233272C80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23327171C(uint64_t a1)
{
  v2 = sub_23327241C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233271758(uint64_t a1)
{
  v2 = sub_23327241C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233271794@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_23328D53C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_23328D4DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  sub_23328D3BC();
  v25 = sub_23328D3CC();
  v13 = *(v25 - 8);
  v14 = *(v13 + 56);
  v26 = v13 + 56;
  v14(v12, 0, 1, v25);
  v24 = v14;
  v15 = sub_23328D42C();
  v16 = *(*(v15 - 8) + 56);
  v23 = v15;
  v16(v8, 1, 1, v15);
  v17 = v16;
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v18 = _s18ImportModelCommandVMa();
  v22 = *(v18 + 20);
  sub_23328D3BC();
  v19 = v25;
  v14(v12, 0, 1, v25);
  v17(v8, 1, 1, v15);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D23C();
  sub_2332728C0(&qword_27DDE3508, MEMORY[0x277CE66E8]);
  sub_23328D5FC();
  v20 = *(v18 + 24);
  sub_23328D3BC();
  v24(v12, 0, 1, v19);
  v17(v8, 1, 1, v23);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5DC();
}

uint64_t sub_233271B80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v50 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v49 = *(v54 - 8);
  v2 = *(v49 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v48 - v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3500, &qword_23329E2E8);
  v52 = *(v55 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v55);
  v56 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3A50, qword_2332A1B30);
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v61 = &v48 - v8;
  v9 = sub_23328D53C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_23328D4DC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v48 - v19;
  v21 = _s18ImportModelCommandVMa();
  v22 = *(v21 - 8);
  v68 = (v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v64 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v66 = sub_23328D3CC();
  v25 = *(v66 - 8);
  v65 = *(v25 + 56);
  v67 = v25 + 56;
  v65(v20, 0, 1, v66);
  v26 = sub_23328D42C();
  v59 = *(*(v26 - 8) + 56);
  v60 = v26;
  v59(v16, 1, 1, v26);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v27 = *(v68 + 7);
  sub_23328D3BC();
  v65(v20, 0, 1, v66);
  v28 = v26;
  v29 = v59;
  v59(v16, 1, 1, v28);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D23C();
  sub_2332728C0(&qword_27DDE3508, MEMORY[0x277CE66E8]);
  v30 = v64;
  v51 = v27;
  sub_23328D5FC();
  v31 = *(v68 + 8);
  sub_23328D3BC();
  v65(v20, 0, 1, v66);
  v29(v16, 1, 1, v60);
  sub_23328D4CC();
  sub_23328D52C();
  v32 = v62;
  sub_23328D5DC();
  v33 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  sub_23327241C();
  v34 = v61;
  v35 = v63;
  sub_23328E68C();
  if (!v35)
  {
    v67 = v31;
    v36 = v56;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v68 = &v48;
    v38 = *(v37 - 8);
    v39 = *(v38 + 64);
    MEMORY[0x28223BE20](v37);
    v41 = &v48 - v40;
    v71 = 0;
    sub_233229170(&qword_27DDE2D40, &qword_27DDE2D00, &qword_23329AB80);
    v42 = v58;
    sub_23328E41C();
    (*(v38 + 40))(v64, v41, v37);
    v70 = 1;
    sub_233229170(&qword_27DDE3518, &qword_27DDE3500, &qword_23329E2E8);
    v43 = v55;
    sub_23328E41C();
    v30 = v64;
    (*(v52 + 40))(&v64[v51], v36, v43);
    v69 = 2;
    sub_233229170(&qword_27DDE3428, &qword_27DDE3408, &unk_23329E570);
    v45 = v53;
    v46 = v42;
    v47 = v54;
    sub_23328E41C();
    (*(v57 + 8))(v34, v46);
    (*(v49 + 40))(v30 + v67, v45, v47);
    sub_2332724CC(v30, v50);
  }

  __swift_destroy_boxed_opaque_existential_0(v32);
  return sub_233272470(v30);
}

unint64_t sub_23327241C()
{
  result = qword_27DE039C8[0];
  if (!qword_27DE039C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE039C8);
  }

  return result;
}

uint64_t sub_233272470(uint64_t a1)
{
  v2 = _s18ImportModelCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2332724CC(uint64_t a1, uint64_t a2)
{
  v4 = _s18ImportModelCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2332725C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233270F98();
}

uint64_t sub_233272694(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_2332728C0(&qword_27DDE3A58, _s18ImportModelCommandVMa);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_2332727B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE039C0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08C80);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2332728C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23327290C(uint64_t a1)
{
  v2 = sub_23328D23C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3500, &qword_23329E2E8);
  sub_23328D5CC();
  sub_23328D21C();
  return (*(v3 + 8))(v6, v2);
}

void sub_233272A4C()
{
  sub_233272B14(319, &qword_27DDE2D78, MEMORY[0x28220C088]);
  if (v0 <= 0x3F)
  {
    sub_233272B14(319, &qword_27DDE3548, MEMORY[0x277CE66E8]);
    if (v1 <= 0x3F)
    {
      sub_233231530();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_233272B14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23328D60C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_233272B7C()
{
  result = qword_27DE03DE0[0];
  if (!qword_27DE03DE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE03DE0);
  }

  return result;
}

unint64_t sub_233272BD4()
{
  result = qword_27DE03EF0;
  if (!qword_27DE03EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE03EF0);
  }

  return result;
}

unint64_t sub_233272C2C()
{
  result = qword_27DE03EF8[0];
  if (!qword_27DE03EF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE03EF8);
  }

  return result;
}

uint64_t sub_233272C80(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C61636F6CLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23328E54C();

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

uint64_t sub_233272D90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08C98);
  __swift_project_value_buffer(v4, qword_27DE08C98);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t _s25ImportVoicePackageCommandVMa()
{
  result = qword_27DE04290;
  if (!qword_27DE04290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_233272F5C()
{
  sub_23328D20C();
  v1 = v0[6];
  v2 = sub_233237A1C();
  v3 = *v2;
  v0[7] = *v2;
  v4 = sub_23328CC9C();
  v0[8] = v4;
  v5 = *(v4 - 8);
  v0[9] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v0[10] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3A80, &unk_2332A1DC0);
  sub_23328D35C();
  v8 = v0[2];
  v9 = v0[3];
  sub_23328CB7C();

  LODWORD(v9) = *(_s25ImportVoicePackageCommandVMa() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  sub_23328D5CC();
  v10 = v0[4];
  v11 = v0[5];
  v0[11] = v11;
  v15 = (*v3 + 320);
  v16 = (*v15 + **v15);
  v12 = (*v15)[1];
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_2332731CC;

  return v16(v7, v10, v11);
}

uint64_t sub_2332731CC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = v2[11];
  v6 = v2[7];
  (*(v2[9] + 8))(v2[10], v2[8]);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2332733AC, 0, 0);
  }

  else
  {

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_2332733AC()
{
  v1 = v0[10];

  v2 = v0[13];
  v3 = v0[1];

  return v3();
}

uint64_t sub_233273410()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 1752457584;
  }
}

uint64_t sub_233273434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v5 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

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

uint64_t sub_233273510(uint64_t a1)
{
  v2 = sub_233273EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23327354C(uint64_t a1)
{
  v2 = sub_233273EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233273588()
{
  v0 = sub_23328D53C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v20[1] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23328D4DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v20[0] = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v20 - v12;
  sub_23328D3BC();
  v14 = sub_23328D3CC();
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 0, 1, v14);
  v16 = sub_23328D42C();
  v17 = *(*(v16 - 8) + 56);
  v17(v9, 1, 1, v16);
  sub_23328D37C();
  v18 = *(_s25ImportVoicePackageCommandVMa() + 20);
  sub_23328D3BC();
  v15(v13, 0, 1, v14);
  v17(v9, 1, 1, v16);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5DC();
}

uint64_t sub_233273868@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v47 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v46 = *(v49 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v46 - v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3A80, &unk_2332A1DC0);
  v51 = *(v54 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v46 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3A88, qword_2332A1DD8);
  v50 = *(v52 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v59 = &v46 - v7;
  v8 = sub_23328D53C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23328D4DC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v46 - v20;
  v22 = _s25ImportVoicePackageCommandVMa();
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v27 = sub_23328D3CC();
  v28 = *(v27 - 8);
  v55 = *(v28 + 56);
  v56 = v28 + 56;
  v55(v21, 0, 1, v27);
  v29 = sub_23328D42C();
  v30 = *(*(v29 - 8) + 56);
  v30(v17, 1, 1, v29);
  sub_23328D37C();
  v31 = *(v23 + 28);
  sub_23328D3BC();
  v55(v21, 0, 1, v27);
  v30(v17, 1, 1, v29);
  v32 = v60;
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5DC();
  v33 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  sub_233273EE8();
  v34 = v59;
  v35 = v61;
  sub_23328E68C();
  if (v35)
  {
    __swift_destroy_boxed_opaque_existential_0(v32);
    v45 = v26;
  }

  else
  {
    v36 = v26;
    v37 = v50;
    v38 = v51;
    v63 = 0;
    sub_23315246C(&qword_27DDE3A90, &qword_27DDE3A80, &unk_2332A1DC0);
    v39 = v52;
    sub_23328E41C();
    v40 = *(v38 + 40);
    v61 = v36;
    v40(v36, v53, v54);
    v62 = 1;
    sub_23315246C(&qword_27DDE3428, &qword_27DDE3408, &unk_23329E570);
    v42 = v48;
    v41 = v49;
    sub_23328E41C();
    (*(v37 + 8))(v34, v39);
    v44 = v61;
    (*(v46 + 40))(v61 + v31, v42, v41);
    sub_233273F98(v44, v47);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v45 = v44;
  }

  return sub_233273F3C(v45);
}

unint64_t sub_233273EE8()
{
  result = qword_27DE03F88[0];
  if (!qword_27DE03F88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE03F88);
  }

  return result;
}

uint64_t sub_233273F3C(uint64_t a1)
{
  v2 = _s25ImportVoicePackageCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_233273F98(uint64_t a1, uint64_t a2)
{
  v4 = _s25ImportVoicePackageCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233274064()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233272F3C();
}

uint64_t sub_233274124(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_233274314(&qword_27DDE3A98);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_233274220@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE03F80 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08C98);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233274314(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s25ImportVoicePackageCommandVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_23327439C()
{
  sub_233274420();
  if (v0 <= 0x3F)
  {
    sub_233231530();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_233274420()
{
  if (!qword_27DDE3AC0)
  {
    v0 = sub_23328D38C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE3AC0);
    }
  }
}

unint64_t sub_233274484()
{
  result = qword_27DE043A0[0];
  if (!qword_27DE043A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE043A0);
  }

  return result;
}

unint64_t sub_2332744DC()
{
  result = qword_27DE044B0;
  if (!qword_27DE044B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE044B0);
  }

  return result;
}

unint64_t sub_233274534()
{
  result = qword_27DE044B8[0];
  if (!qword_27DE044B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE044B8);
  }

  return result;
}

uint64_t sub_233274588()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08CB0);
  __swift_project_value_buffer(v4, qword_27DE08CB0);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t _s18CreateVoiceCommandVMa()
{
  result = qword_27DE04850;
  if (!qword_27DE04850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_233274728()
{
  v1[21] = v0;
  v2 = *(*(_s19TrainingOptionGroupVMa(0) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v3 = sub_23328D23C();
  v1[26] = v3;
  v4 = *(v3 - 8);
  v1[27] = v4;
  v5 = *(v4 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AD0, &unk_2332A2070) - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_233274894, 0, 0);
}

uint64_t sub_233274894()
{
  sub_23328D20C();
  sub_23328D30C();
  sub_23328E24C();

  v90 = *sub_2331DEBE8();
  v1 = sub_23328CC9C();
  *(v0 + 264) = v1;
  v2 = *(v1 - 8);
  v3 = v2;
  *(v0 + 272) = v2;
  *(v0 + 280) = *(v2 + 64);
  v4 = swift_task_alloc();
  v5 = v90;
  sub_23328CB8C();
  sub_2331E17B4(v4);
  v7 = v6;
  v81 = v3;
  v82 = v1;
  (*(v3 + 8))(v4, v1);
  v83 = *(v0 + 168);

  *(v0 + 160) = v7;
  v8 = sub_23328CA4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = sub_23328CA1C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  (*(v13 + 104))(v15, *MEMORY[0x277CC8DE0], v12);
  v16 = sub_23328CA3C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  sub_23328CA2C();
  sub_23328C82C();
  (*(v17 + 8))(v19, v16);
  (*(v13 + 8))(v15, v12);

  sub_233125A3C();
  sub_2331259F0();
  sub_23328E0BC();
  (*(v9 + 8))(v11, v8);

  MEMORY[0x23839B7E0](*(v0 + 16), *(v0 + 24));

  sub_23328D27C();

  VoiceCommandVMa = _s18CreateVoiceCommandVMa();
  *(v0 + 288) = VoiceCommandVMa;
  *(v0 + 156) = VoiceCommandVMa[7];
  *(v0 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  sub_23328D5CC();
  v21 = *(v0 + 40);
  *(v0 + 304) = *(v0 + 32);
  *(v0 + 312) = v21;
  v22 = sub_233237A1C();
  *(v0 + 320) = *v22;
  *(v0 + 328) = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360) - 8) + 64) + 15;
  v87 = swift_task_alloc();
  *(v0 + 336) = v87;
  v24 = VoiceCommandVMa[9];

  *(v0 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  sub_23328D5CC();
  v80 = *(v0 + 48);
  *(v0 + 352) = *(v0 + 56);
  v25 = v83 + VoiceCommandVMa[10];
  sub_23328D5CC();
  v79 = *(v0 + 64);
  *(v0 + 360) = *(v0 + 72);
  v26 = VoiceCommandVMa[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  sub_23328D5CC();
  v78 = *(v0 + 144);
  LOBYTE(v15) = *(v0 + 152);
  v27 = VoiceCommandVMa[8];
  *(v0 + 368) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  if (*(v0 + 153) == 1)
  {
    v28 = *v22;
    *(v0 + 376) = *v22;
    v29 = *(*v28 + 504);

    v84 = v29 + *v29;
    v30 = v29[1];
    v31 = swift_task_alloc();
    *(v0 + 384) = v31;
    *v31 = v0;
    v31[1] = sub_2332754E8;

    __asm { BRAA            X8, X16 }
  }

  v32 = *(v0 + 256);
  v34 = *(v0 + 208);
  v33 = *(v0 + 216);
  v35 = *(v0 + 168);

  v36 = swift_task_alloc();
  v37 = swift_task_alloc();
  v38 = VoiceCommandVMa[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AC8, &qword_2332A2068);
  sub_23328D5CC();
  v39 = (*(v33 + 48))(v32, 1, v34);
  v40 = *(v0 + 256);
  if (v39 == 1)
  {
    sub_233121E04(*(v0 + 256), &qword_27DDE3AD0, &unk_2332A2070);

    (*(v81 + 56))(v87, 1, 1, v82);
  }

  else
  {
    v42 = *(v0 + 208);
    v41 = *(v0 + 216);
    MEMORY[0x23839AF80]();
    (*(v41 + 8))(v40, v42);
    v43 = *(v81 + 32);
    v43(v36, v37, v82);

    v43(v87, v36, v82);
    (*(v81 + 56))(v87, 0, 1, v82);
  }

  v44 = *(v0 + 336);
  v45 = *(v0 + 264);
  v46 = *(v0 + 272);
  v47 = (*(v46 + 48))(v44, 1, v45);
  v48 = *(v0 + 344);
  v49 = *(v0 + 320);
  v50 = *(v0 + 328);
  v52 = *(v0 + 304);
  v51 = *(v0 + 312);
  v53 = *(v0 + 168);
  if (v47 == 1)
  {
    sub_233121E04(v44, &qword_27DDE19A0, &unk_233290360);

    v54 = sub_23328CE8C();
    *(v0 + 512) = v54;
    v55 = *(v54 - 8);
    *(v0 + 520) = v55;
    v56 = *(v55 + 64) + 15;
    v57 = swift_task_alloc();
    *(v0 + 528) = v57;
    sub_23328D5CC();
    v59 = *(v0 + 80);
    v58 = *(v0 + 88);
    *(v0 + 536) = v58;
    v85 = (*v49 + 256);
    v88 = (*v85 + **v85);
    v60 = (*v85)[1];
    v61 = swift_task_alloc();
    *(v0 + 544) = v61;
    *v61 = v0;
    v61[1] = sub_2332767A4;
    if (v51)
    {
      v62 = v52;
    }

    else
    {
      v62 = 0x53552D6E65;
    }

    if (v51)
    {
      v63 = v51;
    }

    else
    {
      v63 = 0xE500000000000000;
    }

    v64 = *(v0 + 320);

    return v88(v57, v59, v58, v62, v63);
  }

  else
  {
    (*(v46 + 32))(*(v0 + 328), v44, v45);

    v66 = sub_23328CE8C();
    *(v0 + 400) = v66;
    v67 = *(v66 - 8);
    *(v0 + 408) = v67;
    v68 = *(v67 + 64) + 15;
    v69 = swift_task_alloc();
    *(v0 + 416) = v69;
    sub_23328D5CC();
    v71 = *(v0 + 112);
    v70 = *(v0 + 120);
    *(v0 + 424) = v70;
    v86 = (*v49 + 288);
    v89 = (*v86 + **v86);
    v72 = (*v86)[1];
    v73 = swift_task_alloc();
    *(v0 + 432) = v73;
    *v73 = v0;
    v73[1] = sub_233275B84;
    if (v51)
    {
      v74 = v52;
    }

    else
    {
      v74 = 0x53552D6E65;
    }

    if (v51)
    {
      v75 = v51;
    }

    else
    {
      v75 = 0xE500000000000000;
    }

    v77 = *(v0 + 320);
    v76 = *(v0 + 328);

    return v89(v69, v71, v70, v74, v75, v76);
  }
}

uint64_t sub_2332754E8()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v9 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = sub_233275A64;
  }

  else
  {
    v5 = v2[47];
    v6 = v2[44];
    v7 = v2[45];

    v4 = sub_233275620;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_233275620()
{
  (*(v0[34] + 56))(v0[42], 0, 1, v0[33]);
  v1 = v0[42];
  v2 = v0[33];
  v3 = v0[34];
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[43];
  v6 = v0[40];
  v7 = v0[41];
  v9 = v0[38];
  v8 = v0[39];
  v10 = v0[21];
  if (v4 == 1)
  {
    sub_233121E04(v1, &qword_27DDE19A0, &unk_233290360);

    v11 = sub_23328CE8C();
    v0[64] = v11;
    v12 = *(v11 - 8);
    v0[65] = v12;
    v13 = *(v12 + 64) + 15;
    v14 = swift_task_alloc();
    v0[66] = v14;
    sub_23328D5CC();
    v16 = v0[10];
    v15 = v0[11];
    v0[67] = v15;
    v35 = (*v6 + 256);
    v37 = (*v35 + **v35);
    v17 = (*v35)[1];
    v18 = swift_task_alloc();
    v0[68] = v18;
    *v18 = v0;
    v18[1] = sub_2332767A4;
    if (v8)
    {
      v19 = v9;
    }

    else
    {
      v19 = 0x53552D6E65;
    }

    if (v8)
    {
      v20 = v8;
    }

    else
    {
      v20 = 0xE500000000000000;
    }

    v21 = v0[40];

    return v37(v14, v16, v15, v19, v20);
  }

  else
  {
    (*(v3 + 32))(v0[41], v1, v2);

    v23 = sub_23328CE8C();
    v0[50] = v23;
    v24 = *(v23 - 8);
    v0[51] = v24;
    v25 = *(v24 + 64) + 15;
    v26 = swift_task_alloc();
    v0[52] = v26;
    sub_23328D5CC();
    v28 = v0[14];
    v27 = v0[15];
    v0[53] = v27;
    v36 = (*v6 + 288);
    v38 = (*v36 + **v36);
    v29 = (*v36)[1];
    v30 = swift_task_alloc();
    v0[54] = v30;
    *v30 = v0;
    v30[1] = sub_233275B84;
    if (v8)
    {
      v31 = v9;
    }

    else
    {
      v31 = 0x53552D6E65;
    }

    if (v8)
    {
      v32 = v8;
    }

    else
    {
      v32 = 0xE500000000000000;
    }

    v34 = v0[40];
    v33 = v0[41];

    return v38(v26, v28, v27, v31, v32, v33);
  }
}

uint64_t sub_233275A64()
{
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[45];
  v5 = v0[41];
  v4 = v0[42];
  v7 = v0[39];
  v6 = v0[40];

  v8 = v0[49];
  v10 = v0[31];
  v9 = v0[32];
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[28];
  v15 = v0[24];
  v14 = v0[25];
  v17 = v0[22];
  v16 = v0[23];

  v18 = v0[1];

  return v18();
}

uint64_t sub_233275B84()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = v0;

  v5 = *(v2 + 424);
  v6 = *(v2 + 312);

  if (v0)
  {
    v7 = sub_233276ECC;
  }

  else
  {
    v7 = sub_233275CDC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_233275CDC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 168);
  v5 = *(*(v0 + 288) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AC8, &qword_2332A2068);
  sub_23328D5CC();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v6 = *(v0 + 368);
    v7 = *(v0 + 288);
    v8 = *(v0 + 168);
    sub_233121E04(*(v0 + 248), &qword_27DDE3AD0, &unk_2332A2070);
    v9 = v8 + *(v7 + 48);
    sub_23328D54C();
    if (*(v0 + 154) == 1)
    {
      v56 = *(v0 + 320);
      v11 = *(v0 + 192);
      v10 = *(v0 + 200);
      v12 = *(v0 + 176);
      v13 = *(v0 + 184);
      v14 = *(v0 + 168);
      v15 = *(*(v0 + 288) + 52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AD8, &qword_2332A2080);
      sub_23328D3DC();
      sub_233283AF0();
      sub_23327A100(v10, _s19TrainingOptionGroupVMa);
      v59 = sub_233248BBC();
      sub_23328D3DC();
      v16 = sub_233283B38();
      sub_23327A100(v11, _s19TrainingOptionGroupVMa);
      sub_23328D3DC();
      v17 = sub_233283BAC();
      sub_23327A100(v13, _s19TrainingOptionGroupVMa);
      sub_23328D3DC();
      v18 = sub_233283C00();
      v20 = v19;
      sub_23327A100(v12, _s19TrainingOptionGroupVMa);
      v55 = (*v56 + 360);
      v57 = (*v55 + **v55);
      v21 = (*v55)[1];
      v22 = swift_task_alloc();
      *(v0 + 496) = v22;
      *v22 = v0;
      v22[1] = sub_233276560;
      v23 = *(v0 + 320);
      v24 = *(v0 + 416);

      return (v57)(v24, v59, v16 & 1, v17 & 1, v18, v20 & 1, 0);
    }

    else
    {
      v39 = *(v0 + 408);
      v38 = *(v0 + 416);
      v40 = *(v0 + 400);
      v41 = *(v0 + 320);
      v42 = *(v0 + 272);

      (*(v39 + 8))(v38, v40);
      v43 = *(v0 + 416);
      (*(v42 + 8))(*(v0 + 328), *(v0 + 264));

      v44 = *(v0 + 328);
      v45 = *(v0 + 248);
      v46 = *(v0 + 256);
      v48 = *(v0 + 232);
      v47 = *(v0 + 240);
      v49 = *(v0 + 224);
      v51 = *(v0 + 192);
      v50 = *(v0 + 200);
      v53 = *(v0 + 176);
      v52 = *(v0 + 184);

      v54 = *(v0 + 8);

      return v54();
    }
  }

  else
  {
    v26 = *(v0 + 320);
    v27 = *(v0 + 296);
    v28 = *(v0 + 156);
    v29 = *(v0 + 168);
    v30 = *(v0 + 280) + 15;
    (*(*(v0 + 216) + 32))(*(v0 + 232), *(v0 + 248), *(v0 + 208));
    sub_23328D5CC();
    v31 = *(v0 + 128);
    v32 = *(v0 + 136);
    *(v0 + 448) = v32;
    v33 = swift_task_alloc();
    *(v0 + 456) = v33;
    MEMORY[0x23839AF80]();
    v58 = (*v26 + 280);
    v60 = (*v58 + **v58);
    v34 = (*v58)[1];
    v35 = swift_task_alloc();
    *(v0 + 464) = v35;
    *v35 = v0;
    v35[1] = sub_23327625C;
    v36 = *(v0 + 416);
    v37 = *(v0 + 320);

    return v60(v36, v31, v32, v33);
  }
}