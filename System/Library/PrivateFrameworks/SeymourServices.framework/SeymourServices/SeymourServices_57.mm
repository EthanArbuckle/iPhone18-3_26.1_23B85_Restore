uint64_t sub_227444AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v39 = a5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
  v10 = *(*(v38 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v38);
  v37 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  result = MEMORY[0x28223BE20](v13);
  v19 = &v29 - v18;
  v30 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v35 = -v21;
    v36 = v20;
    v23 = a1 - a3;
    v29 = v21;
    v24 = v20 + v21 * a3;
LABEL_4:
    v33 = v22;
    v34 = a3;
    v31 = v24;
    v32 = v23;
    v25 = v22;
    while (1)
    {
      sub_226E93170(v24, v19, &qword_27D7BAE90, &unk_22767DF70);
      sub_226E93170(v25, v15, &qword_27D7BAE90, &unk_22767DF70);
      v26 = sub_227437AE0(v19, v15, v39);
      sub_226E97D1C(v15, &qword_27D7BAE90, &unk_22767DF70);
      result = sub_226E97D1C(v19, &qword_27D7BAE90, &unk_22767DF70);
      if (v5)
      {
        break;
      }

      if (v26)
      {
        if (!v36)
        {
          __break(1u);
          return result;
        }

        v27 = v37;
        sub_226E95D18(v24, v37, &qword_27D7BAE90, &unk_22767DF70);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_226E95D18(v27, v25, &qword_27D7BAE90, &unk_22767DF70);
        v25 += v35;
        v24 += v35;
        if (!__CFADD__(v23++, 1))
        {
          continue;
        }
      }

      a3 = v34 + 1;
      v22 = v33 + v29;
      v23 = v32 - 1;
      v24 = v31 + v29;
      if (v34 + 1 != v30)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_227444D08(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_22766D130();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
        v8 = sub_22766C380();
        *(v8 + 16) = v7;
      }

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_227443EC8(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_227444AA0(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_227444EA4(void **a1, uint64_t a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_2271177D8(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_227444D08(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

void sub_227444FA0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = [a1 identifier];
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = v15;
  v30 = sub_22766C000();
  v31 = v17;

  v18 = [a1 mediaType];
  if (!v18)
  {
LABEL_7:

LABEL_8:
    v25 = sub_227664DD0();
    sub_227445B00(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51028], v25);
    swift_willThrow();

    return;
  }

  v29 = a2;
  v19 = v18;
  v28 = sub_22766C000();
  v21 = v20;

  v22 = [a1 dateAdded];
  if (!v22)
  {

    goto LABEL_7;
  }

  v23 = v22;
  sub_227662710();

  (*(v5 + 32))(v14, v12, v4);
  v24 = [a1 index];
  if (([a1 healthKitActivityType] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v27 = v24 & ~(v24 >> 63);
    v32 = v28;
    v33 = v21;
    sub_226ED56C4();
    sub_227663AE0();
    v28 = v34;
    [a1 duration];
    (*(v5 + 16))(v9, v14, v4);
    sub_227664A20();

    (*(v5 + 8))(v14, v4);
  }
}

size_t static UpNextQueueItem.representativeSamples()()
{
  v43 = sub_227662750();
  v45 = *(v43 - 8);
  v0 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB88, &qword_2276858E8);
  v2 = *(v41 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - v4;
  v39 = sub_227664AA0();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v39);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766C090();
  sub_226FFFEB8();
  v10 = sub_22766CFA0();
  sub_226F5D220();
  v11 = sub_22766CFA0();
  sub_226FFFF0C();
  sub_226ED56C4();
  v12 = sub_227663B50();
  sub_226F5D274();
  v13 = sub_22766BE70();
  v14 = sub_227662630();
  v63 = v10;
  v64[0] = v9;
  v64[1] = v64;
  v64[2] = &v63;
  v61 = v12;
  v62 = v11;
  v64[3] = &v62;
  v64[4] = &v61;
  v59 = v14;
  v60 = v13;
  v64[5] = &v60;
  v64[6] = &v59;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B78, &qword_2276753E0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CE8, &qword_227671E40);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B80, &qword_2276753E8);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v47 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v48 = sub_226F5BF60(&qword_27D7B9B88, &qword_27D7B9B78, &qword_2276753E0);
  v49 = sub_226F5BF60(&qword_27D7B8D08, &qword_27D7B8CE8, &qword_227671E40);
  v50 = sub_226F5BF60(&qword_27D7B9B90, &qword_27D7B9B80, &qword_2276753E8);
  v51 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v52 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v15 = sub_2276638E0();

  v16 = *(v15 + 16);
  if (v16)
  {
    v46 = MEMORY[0x277D84F90];
    result = sub_226F1F7E8(0, v16, 0);
    v18 = 0;
    v19 = v46;
    v34 = v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v33 = (v45 + 16);
    v32 = v5 + 32;
    v38 = v2;
    v37 = v5;
    v36 = v15;
    v35 = v16;
    while (v18 < *(v15 + 16))
    {
      v20 = v34 + *(v2 + 72) * v18;
      v45 = v19;
      v21 = v40;
      sub_2274459D0(v20, v40);
      v23 = *v21;
      v22 = *(v21 + 8);
      v24 = *(v21 + 16);
      v44 = *(v21 + 24);
      v25 = *(v21 + 32);
      v26 = *(v21 + 40);
      v27 = *(v21 + 48);
      v28 = *(v21 + 56);
      (*v33)(v42, v21 + *(v41 + 112), v43);

      sub_226EB396C(v25, v26, v27);
      sub_227664A20();
      v29 = v21;
      v19 = v45;
      sub_227445A40(v29);
      v46 = v19;
      v31 = *(v19 + 16);
      v30 = *(v19 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_226F1F7E8(v30 > 1, v31 + 1, 1);
        v19 = v46;
      }

      ++v18;
      *(v19 + 16) = v31 + 1;
      result = (*(v37 + 32))(v19 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v31, v8, v39);
      v2 = v38;
      v15 = v36;
      if (v35 == v18)
      {

        return v19;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2274459D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB88, &qword_2276858E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227445A40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB88, &qword_2276858E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227445AA8(uint64_t a1)
{
  result = sub_227445B00(&qword_2813A5780, MEMORY[0x277D50CD0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227445B00(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_227445B48(void *a1)
{
  v18[0] = sub_227662750();
  v2 = *(v18[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18[0]);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227664A30();
  v6 = sub_22766BFD0();

  [a1 setIdentifier_];

  v7 = sub_227664A50();
  if (v7 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v7;
  }

  [a1 setIndex_];
  v9 = sub_227664A40();
  if (v9 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
  }

  [a1 setHealthKitActivityType_];
  v11 = sub_227664A90();
  v13 = v12;
  v18[3] = v11;
  v18[4] = v12;
  v15 = v14 & 1;
  v19 = v14 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B98, &qword_227675438);
  sub_227663AD0();
  v16 = sub_22766BFD0();
  sub_226EB2DFC(v11, v13, v15);

  [a1 setMediaType_];

  sub_227664A70();
  [a1 setDuration_];
  sub_227664A80();
  v17 = sub_2276626A0();
  (*(v2 + 8))(v5, v18[0]);
  [a1 setDateAdded_];
}

void sub_227445D58(id a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v26 - v6;
  v8 = sub_227668D10();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  v16 = [a1 behavior];
  if (!v16)
  {
    goto LABEL_6;
  }

  v32 = v9;
  v17 = a2;
  v18 = v16;
  v29 = sub_22766C000();
  v20 = v19;

  v21 = [a1 modalityConstraint];
  if (!v21)
  {

    goto LABEL_6;
  }

  v22 = v21;
  v26[1] = v17;
  v27 = v20;
  v28 = a1;
  sub_22766C000();

  sub_227668CF0();
  v23 = v32;
  if ((*(v32 + 48))(v7, 1, v8) == 1)
  {

    sub_226E97D1C(v7, &qword_27D7B9BA0, &qword_2276754B8);
    a1 = v28;
LABEL_6:
    v24 = sub_227664DD0();
    sub_22744673C(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51028], v24);
    swift_willThrow();

    return;
  }

  (*(v23 + 32))(v15, v7, v8);
  v30 = v29;
  v31 = v27;
  sub_227125D94();
  sub_227663AE0();
  (*(v23 + 16))(v13, v15, v8);
  sub_227666F00();

  (*(v23 + 8))(v15, v8);
}

size_t static BurnBarDisplayPreference.representativeSamples()()
{
  v0 = sub_227668D10();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v42 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB90, &qword_227685938);
  v34[0] = *(v41 - 8);
  v5 = *(v34[0] + 64);
  MEMORY[0x28223BE20](v41);
  v38 = v34 - v6;
  v40 = sub_227666F20();
  v44 = *(v40 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2274465E0();
  sub_227125D94();
  v9 = sub_227663B50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBA0, &qword_227685940);
  v10 = *(v1 + 72);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_227675BD0;
  v13 = v12 + v11;
  v14 = *MEMORY[0x277D53870];
  v35 = v2;
  v15 = *(v2 + 104);
  (v15)(v13, v14, v0);
  v16 = (v13 + v10);
  *v16 = 0x6E776F6E6B6E75;
  v16[1] = 0xE700000000000000;
  v17 = *MEMORY[0x277D53878];
  v15();
  v18 = (v13 + 2 * v10);
  *v18 = 0x6E776F6E6BLL;
  v18[1] = 0xE500000000000000;
  v43 = v0;
  v15();
  v50 = v12;
  v51[0] = v9;
  v51[1] = v51;
  v51[2] = &v50;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBA8, &qword_227685948);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBB0, &qword_227685950);
  v46 = sub_226F5BF60(&qword_27D7BDBB8, &qword_27D7BDBA8, &qword_227685948);
  v47 = sub_226F5BF60(&qword_27D7BDBC0, &qword_27D7BDBB0, &qword_227685950);
  v19 = sub_2276638E0();

  v20 = *(v19 + 16);
  if (v20)
  {
    v45 = MEMORY[0x277D84F90];
    result = sub_226F20308(0, v20, 0);
    v22 = 0;
    v36 = v19 + ((*(v34[0] + 80) + 32) & ~*(v34[0] + 80));
    v37 = v19;
    v23 = v45;
    v34[1] = v44 + 32;
    v35 += 2;
    v24 = v34[0];
    v26 = v38;
    v25 = v39;
    v27 = v42;
    while (v22 < *(v19 + 16))
    {
      v28 = v24;
      sub_227446674(v36 + *(v24 + 72) * v22, v26);
      v30 = *v26;
      v29 = *(v26 + 8);
      v31 = *(v26 + 16);
      (*v35)(v27, v26 + *(v41 + 48), v43);
      sub_226EB396C(v30, v29, v31);
      sub_227666F00();
      sub_226E97D1C(v26, &qword_27D7BDB90, &qword_227685938);
      v45 = v23;
      v33 = *(v23 + 16);
      v32 = *(v23 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_226F20308(v32 > 1, v33 + 1, 1);
        v23 = v45;
      }

      ++v22;
      *(v23 + 16) = v33 + 1;
      result = (*(v44 + 32))(v23 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v33, v25, v40);
      v24 = v28;
      v19 = v37;
      if (v20 == v22)
      {

        return v23;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2274465E0()
{
  result = qword_27D7BDB98;
  if (!qword_27D7BDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDB98);
  }

  return result;
}

uint64_t sub_227446674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB90, &qword_227685938);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274466E4(uint64_t a1)
{
  result = sub_22744673C(&qword_2813A5638, MEMORY[0x277D52A80]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22744673C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_227446784(void *a1)
{
  v14[0] = a1;
  v1 = sub_227668D10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227666F10();
  v8 = v7;
  v14[3] = v6;
  v14[4] = v7;
  v10 = v9 & 1;
  v15 = v9 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBC8, &qword_22768B7D0);
  sub_227663AD0();
  v11 = sub_22766BFD0();
  sub_226EB2DFC(v6, v8, v10);

  v12 = v14[0];
  [v14[0] setBehavior_];

  sub_227666EF0();
  sub_227668D00();
  (*(v2 + 8))(v5, v1);
  v13 = sub_22766BFD0();

  [v12 setModalityConstraint_];
}

void sub_227446930(id a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v26 - v6;
  v8 = sub_227668D10();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  v16 = [a1 behavior];
  if (!v16)
  {
    goto LABEL_6;
  }

  v32 = v9;
  v17 = a2;
  v18 = v16;
  v29 = sub_22766C000();
  v20 = v19;

  v21 = [a1 modalityConstraint];
  if (!v21)
  {

    goto LABEL_6;
  }

  v22 = v21;
  v26[1] = v17;
  v27 = v20;
  v28 = a1;
  sub_22766C000();

  sub_227668CF0();
  v23 = v32;
  if ((*(v32 + 48))(v7, 1, v8) == 1)
  {

    sub_226E97D1C(v7, &qword_27D7B9BA0, &qword_2276754B8);
    a1 = v28;
LABEL_6:
    v24 = sub_227664DD0();
    sub_2274472C8(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51028], v24);
    swift_willThrow();

    return;
  }

  (*(v23 + 32))(v15, v7, v8);
  v30 = v29;
  v31 = v27;
  sub_227125CEC();
  sub_227663AE0();
  (*(v23 + 16))(v13, v15, v8);
  sub_2276675D0();

  (*(v23 + 8))(v15, v8);
}

size_t static ProgressDisplayPreference.representativeSamples()()
{
  v0 = sub_227668D10();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v38 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBD0, &qword_2276859A0);
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = &v31 - v7;
  v36 = sub_2276675F0();
  v40 = *(v36 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22744716C();
  sub_227125CEC();
  v11 = sub_227663B50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBA0, &qword_227685940);
  v12 = *(v1 + 72);
  v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2276728D0;
  v15 = v14 + v13;
  v16 = v2;
  v17 = *(v2 + 104);
  (v17)(v15, *MEMORY[0x277D53870], v0);
  v18 = (v15 + v12);
  *v18 = 0x6E776F6E6B6E75;
  v18[1] = 0xE700000000000000;
  v19 = *MEMORY[0x277D53878];
  v39 = v0;
  v17();
  v46 = v14;
  v47[0] = v11;
  v47[1] = v47;
  v47[2] = &v46;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBE0, &qword_2276859A8);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBB0, &qword_227685950);
  v42 = sub_226F5BF60(&qword_27D7BDBE8, &qword_27D7BDBE0, &qword_2276859A8);
  v43 = sub_226F5BF60(&qword_27D7BDBC0, &qword_27D7BDBB0, &qword_227685950);
  v20 = sub_2276638E0();

  v21 = *(v20 + 16);
  if (v21)
  {
    v41 = MEMORY[0x277D84F90];
    result = sub_226F20348(0, v21, 0);
    v23 = 0;
    v33 = v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v34 = v20;
    v24 = v41;
    v31 = v40 + 32;
    v32 = (v16 + 16);
    v25 = v35;
    while (v23 < *(v20 + 16))
    {
      sub_227447200(v33 + *(v5 + 72) * v23, v8);
      v27 = *v8;
      v26 = *(v8 + 1);
      v28 = v8[16];
      (*v32)(v38, &v8[*(v37 + 48)], v39);
      sub_226EB396C(v27, v26, v28);
      sub_2276675D0();
      sub_226E97D1C(v8, &qword_27D7BDBD0, &qword_2276859A0);
      v41 = v24;
      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_226F20348(v29 > 1, v30 + 1, 1);
        v24 = v41;
      }

      ++v23;
      *(v24 + 16) = v30 + 1;
      result = (*(v40 + 32))(v24 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30, v25, v36);
      v20 = v34;
      if (v21 == v23)
      {

        return v24;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_22744716C()
{
  result = qword_27D7BDBD8;
  if (!qword_27D7BDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDBD8);
  }

  return result;
}

uint64_t sub_227447200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBD0, &qword_2276859A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227447270(uint64_t a1)
{
  result = sub_2274472C8(&qword_2813A55E8, MEMORY[0x277D52EC0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2274472C8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_227447310(void *a1)
{
  v14[0] = a1;
  v1 = sub_227668D10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2276675E0();
  v8 = v7;
  v14[3] = v6;
  v14[4] = v7;
  v10 = v9 & 1;
  v15 = v9 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBF0, &qword_22768B7B0);
  sub_227663AD0();
  v11 = sub_22766BFD0();
  sub_226EB2DFC(v6, v8, v10);

  v12 = v14[0];
  [v14[0] setBehavior_];

  sub_2276675C0();
  sub_227668D00();
  (*(v2 + 8))(v5, v1);
  v13 = sub_22766BFD0();

  [v12 setModalityConstraint_];
}

uint64_t getEnumTagSinglePayload for ServicesTransactions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServicesTransactions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22744760C(char a1)
{
  result = 0x72702E7465737361;
  switch(a1)
  {
    case 1:
    case 19:
      result = 0xD00000000000001ELL;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0x7265732E636E7973;
      break;
    case 7:
      result = 0x6961702E636E7973;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x61727473746F6F62;
      break;
    case 12:
    case 14:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x6F6974617267696DLL;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD00000000000001DLL;
      break;
    case 17:
      result = 0x61746143636E7973;
      break;
    case 18:
      result = 0x61436574656C6564;
      break;
    case 21:
      result = 0xD00000000000001CLL;
      break;
    case 22:
      result = 0xD000000000000015;
      break;
    case 23:
      result = 0xD000000000000015;
      break;
    case 24:
      result = 0x747069726373;
      break;
    default:
      result = 0xD000000000000023;
      break;
  }

  return result;
}

uint64_t sub_2274478E8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22744760C(*a1);
  v5 = v4;
  if (v3 == sub_22744760C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22766D190();
  }

  return v8 & 1;
}

uint64_t sub_227447970()
{
  v1 = *v0;
  sub_22766D370();
  sub_22744760C(v1);
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_2274479D4()
{
  sub_22744760C(*v0);
  sub_22766C100();
}

uint64_t sub_227447A28()
{
  v1 = *v0;
  sub_22766D370();
  sub_22744760C(v1);
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_227447A88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_227447B3C();
  *a2 = result;
  return result;
}

unint64_t sub_227447AB8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22744760C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_227447AE8()
{
  result = qword_27D7BDBF8;
  if (!qword_27D7BDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDBF8);
  }

  return result;
}

uint64_t sub_227447B3C()
{
  v0 = sub_22766D1E0();

  if (v0 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_227447BA4()
{
  result = qword_27D7BDC00;
  if (!qword_27D7BDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDC00);
  }

  return result;
}

uint64_t sub_227447BF8(uint64_t a1, uint64_t a2)
{
  sub_2276623D0();
  sub_226FB2548();
  v4 = sub_22766CBD0();

  MEMORY[0x22AA98450](95, 0xE100000000000000);

  v5 = sub_22766C0A0();
  v7 = v6;

  MEMORY[0x22AA98450](v5, v7);

  MEMORY[0x22AA98450](a1, a2);

  return v4;
}

uint64_t sub_227447D30()
{
  v1[19] = v0;
  v2 = sub_227662820();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC08, &qword_227685B78) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC10, &qword_227685B80) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227447E6C, 0, 0);
}

uint64_t sub_227447E6C()
{
  v1 = v0[19];
  v2 = *MEMORY[0x277CE5DE0];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_227447FA0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC18, &qword_227685B88);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22744860C;
  v0[13] = &block_descriptor_31;
  v0[14] = v3;
  [v1 loadMediaSelectionGroupForMediaCharacteristic:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_227447FA0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_227448574;
  }

  else
  {
    v3 = sub_2274480B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2274480B0()
{
  v1 = *(v0 + 144);
  if (!v1)
  {
    v12 = sub_227663190();
    sub_226F92508();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D4FDB8], v12);
    swift_willThrow();
LABEL_23:
    v38 = *(v0 + 192);
    v37 = *(v0 + 200);
    v40 = *(v0 + 176);
    v39 = *(v0 + 184);

    v41 = *(v0 + 8);

    return v41();
  }

  v2 = [*(v0 + 152) assetCache];
  if (!v2)
  {
LABEL_22:
    v35 = sub_227663190();
    sub_226F92508();
    swift_allocError();
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D4FDB0], v35);
    swift_willThrow();

    goto LABEL_23;
  }

  v3 = v2;
  v4 = [v2 mediaSelectionOptionsInMediaSelectionGroup_];
  sub_2274486DC();
  v5 = sub_22766C2C0();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_21:

    goto LABEL_22;
  }

  result = sub_22766CD20();
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x22AA991A0](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;

  v9 = [v8 locale];

  if (v9)
  {
    v10 = *(v0 + 184);
    sub_227662800();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v15 = *(v0 + 184);
  v14 = *(v0 + 192);
  v16 = sub_227662840();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, v11, 1, v16);
  sub_227448728(v15, v14);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    v18 = *(v0 + 192);

    v19 = &qword_27D7BDC08;
    v20 = &qword_227685B78;
LABEL_16:
    sub_226E97D1C(v18, v19, v20);
    goto LABEL_22;
  }

  v21 = *(v0 + 192);
  v22 = *(v0 + 200);
  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  v25 = *(v0 + 160);
  sub_227662830();
  (*(v17 + 8))(v21, v16);
  sub_227662810();
  (*(v24 + 8))(v23, v25);
  v26 = sub_2276627F0();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v22, 1, v26);
  v18 = *(v0 + 200);
  if (v28 == 1)
  {

    v19 = &unk_27D7BDC10;
    v20 = &unk_227685B80;
    goto LABEL_16;
  }

  v30 = *(v0 + 184);
  v29 = *(v0 + 192);
  v31 = *(v0 + 176);
  v42 = sub_2276627E0();
  v33 = v32;

  (*(v27 + 8))(v18, v26);

  v34 = *(v0 + 8);

  return v34(v42, v33);
}

uint64_t sub_227448574()
{
  v1 = v0[26];
  swift_willThrow();
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];

  v7 = v0[1];

  return v7();
}

uint64_t sub_22744860C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

unint64_t sub_2274486DC()
{
  result = qword_27D7BDC20;
  if (!qword_27D7BDC20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7BDC20);
  }

  return result;
}

uint64_t sub_227448728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC08, &qword_227685B78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274487A8(uint64_t a1)
{
  v46 = sub_227663180();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2276624A0();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v42 = v9;
    v34 = v1;
    v50 = MEMORY[0x277D84F90];
    v36 = a1;
    sub_226F1F548(0, v10, 0);
    v12 = v6;
    v13 = v36;
    v14 = -1 << *(v36 + 32);
    v48 = v36 + 56;
    v49 = v50;
    result = sub_22766CC90();
    v15 = result;
    v16 = 0;
    v40 = v3 + 8;
    v41 = v3 + 16;
    v43 = v12;
    v38 = v3;
    v39 = v12 + 32;
    v35 = v13 + 64;
    v37 = v10;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v13 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v48 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v47 = *(v13 + 36);
      v21 = v45;
      v20 = v46;
      (*(v3 + 16))(v45, *(v13 + 48) + *(v3 + 72) * v15, v46);
      v22 = v42;
      sub_227663170();
      (*(v3 + 8))(v21, v20);
      v23 = v49;
      v50 = v49;
      v25 = *(v49 + 16);
      v24 = *(v49 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F1F548(v24 > 1, v25 + 1, 1);
        v23 = v50;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v49 = v23;
      result = (*(v43 + 32))(v23 + v26 + *(v43 + 72) * v25, v22, v44);
      v17 = 1 << *(v13 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v27 = *(v48 + 8 * v19);
      if ((v27 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (v47 != *(v13 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        v17 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v37;
        v3 = v38;
      }

      else
      {
        v29 = v19 << 6;
        v30 = v19 + 1;
        v31 = (v35 + 8 * v19);
        v18 = v37;
        v3 = v38;
        while (v30 < (v17 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_226EB526C(v15, v47, 0);
            v17 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v15, v47, 0);
LABEL_19:
        v13 = v36;
      }

      ++v16;
      v15 = v17;
      if (v16 == v18)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_227448B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9398, &qword_227673C18);
  v32 = *(v36 - 8);
  v35 = *(v32 + 64);
  v5 = MEMORY[0x28223BE20](v36);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v33 = &v31 - v7;
  v8 = sub_227668C20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227668910();
  v37 = *(v13 - 8);
  v38 = v13;
  v14 = *(v37 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  sub_226E91B50(v3 + 216, v40);
  sub_227668C10();
  sub_227668BE0();
  sub_227668BF0();
  v17 = *__swift_project_boxed_opaque_existential_0(v40, v41);
  v18 = *(__swift_project_boxed_opaque_existential_0(v40, v41) + 1);
  sub_227668C00();
  sub_227668900();
  (*(v9 + 8))(v12, v8);
  __swift_destroy_boxed_opaque_existential_0(v40);
  v19 = v31;
  __swift_project_boxed_opaque_existential_0((v31 + 376), *(v31 + 400));
  v20 = off_283AA5528[0];
  type metadata accessor for AssetScriptClient();
  v21 = v33;
  v22 = v16;
  v20(v16);
  v23 = v32;
  v24 = v34;
  v25 = v36;
  (*(v32 + 16))(v34, v21, v36);
  v26 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v27 = (v35 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v23 + 32))(v28 + v26, v24, v25);
  v29 = (v28 + v27);
  *v29 = sub_22744F338;
  v29[1] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
  sub_227669270();
  (*(v23 + 8))(v21, v25);
  return (*(v37 + 8))(v22, v38);
}

uint64_t sub_227448F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a1;
  v47 = a2;
  v5 = sub_2276642E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v8;
  v40 = v8;
  v10 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v45 = *(v11 - 8);
  v46 = v11;
  v44 = *(v45 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v43 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v37 = &v34 - v14;
  v35 = v3[75];
  v41 = v3[76];
  v36 = __swift_project_boxed_opaque_existential_0(v3 + 72, v35);
  v38 = *(v6 + 16);
  v34 = v5;
  v38(v10, a1, v5);
  v15 = *(v6 + 80);
  v16 = (v15 + 16) & ~v15;
  v17 = swift_allocObject();
  v18 = *(v6 + 32);
  v18(v17 + v16, v10, v5);
  *(v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  v19 = sub_2276624A0();
  v42 = v19;

  v20 = v37;
  sub_226ECF5D8(sub_22744F3FC, v17, v35, v19, v41, v37);

  v21 = v34;
  v38(v10, v39, v34);
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  v18(v22 + ((v15 + 24) & ~v15), v10, v21);
  v23 = v45;
  v24 = v43;
  v25 = v20;
  v26 = v20;
  v27 = v46;
  (*(v45 + 16))(v43, v25, v46);
  v28 = v23;
  v29 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v30 = (v44 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v28 + 32))(v31 + v29, v24, v27);
  v32 = (v31 + v30);
  *v32 = sub_22744F4A4;
  v32[1] = v22;

  sub_227669270();
  return (*(v28 + 8))(v26, v27);
}

uint64_t sub_22744930C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(*__swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520)) + 32);
  result = sub_2276696A0();
  if (!v4)
  {
    v10 = sub_22707AC34(v11, v12, a3, a1);

    *a4 = v10;
  }

  return result;
}

uint64_t sub_2274493C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276728D0;
  v10 = *(*__swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520)) + 32);
  sub_2276696A0();
  if (v4)
  {
    goto LABEL_3;
  }

  v11 = v98;
  *(inited + 32) = v97;
  *(inited + 40) = v11;
  v12 = *(*__swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520)) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_2276696A0();
  v14 = v98;
  if (!v98)
  {
    v23 = sub_227663190();
    sub_22744F3B4(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D4FD80], v23);
    swift_willThrow();

LABEL_3:
    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  v100 = a3;
  v89 = a4;
  v92 = 0;
  *(inited + 48) = v97;
  *(inited + 56) = v14;
  v91 = sub_226F3E6A8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v15 = sub_227663440();
  v16 = *(v15 + 16);
  if (v16)
  {
    v94 = a1;
    v97 = MEMORY[0x277D84F90];
    sub_226F1F468(0, v16, 0);
    v17 = 32;
    v18 = v97;
    while (1)
    {
      v19 = *(v15 + v17);
      v20 = sub_227663450();
      if (v20 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v20 > 0x7FFFFFFF)
      {
        goto LABEL_33;
      }

      v97 = v18;
      a4 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (a4 >= v21 >> 1)
      {
        v22 = v20;
        sub_226F1F468((v21 > 1), a4 + 1, 1);
        LODWORD(v20) = v22;
        v18 = v97;
      }

      *(v18 + 16) = a4 + 1;
      *(v18 + 4 * a4 + 32) = v20;
      ++v17;
      if (!--v16)
      {

        a1 = v94;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
LABEL_15:
    v25 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(v25 + 16);
    v29 = v25[3];
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    a4 = swift_allocObject();
    v33 = v26;
    v34 = v27;

    sub_22766A070();
    *(a4 + 16) = v33;
    *(a4 + 24) = v34;
    *(a4 + 32) = v28;
    *(a4 + 40) = v29;
    swift_getKeyPath();
    v35 = sub_227230638(v100);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
    v99 = v90;
    v97 = v35;
    v36 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v100 = v36;
    v37 = sub_22766C820();
    sub_226E93170(&v97, v95, &unk_27D7BC990, &qword_227670A30);
    v38 = v96;
    if (v96)
    {
      v39 = __swift_project_boxed_opaque_existential_0(v95, v96);
      v40 = *(v38 - 8);
      v41 = *(v40 + 64);
      MEMORY[0x28223BE20](v39);
      v43 = &v88 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v40 + 16))(v43);
      v44 = sub_22766D170();
      (*(v40 + 8))(v43, v38);
      __swift_destroy_boxed_opaque_existential_0(v95);
    }

    else
    {
      v44 = 0;
    }

    v94 = objc_opt_self();
    v45 = [v94 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
    [objc_allocWithZone(v93) initWithLeftExpression:v37 rightExpression:v45 modifier:0 type:10 options:0];

    sub_226E97D1C(&v97, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v16 = sub_22766A080();
    v47 = v46;
    MEMORY[0x22AA985C0]();
    if (*((*v47 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }
  }

  sub_22766C360();
LABEL_19:
  sub_22766C3A0();
  (v16)(&v97, 0);
  swift_endAccess();

  swift_getKeyPath();
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC3E8, &unk_227685D70);
  v97 = v18;

  v48 = sub_22766C820();
  sub_226E93170(&v97, v95, &unk_27D7BC990, &qword_227670A30);
  v49 = v96;
  if (v96)
  {
    v50 = __swift_project_boxed_opaque_existential_0(v95, v96);
    v51 = *(v49 - 8);
    v52 = *(v51 + 64);
    MEMORY[0x28223BE20](v50);
    v54 = &v88 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v51 + 16))(v54);
    v55 = sub_22766D170();
    (*(v51 + 8))(v54, v49);
    __swift_destroy_boxed_opaque_existential_0(v95);
  }

  else
  {
    v55 = 0;
  }

  v56 = [v94 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(v93) initWithLeftExpression:v48 rightExpression:v56 modifier:0 type:10 options:0];

  sub_226E97D1C(&v97, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v57 = sub_22766A080();
  v59 = v58;
  MEMORY[0x22AA985C0]();
  if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v86 = *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v57(&v97, 0);
  swift_endAccess();

  swift_getKeyPath();
  v60 = sub_227230638(v91);

  v99 = v90;
  v97 = v60;

  v61 = sub_22766C820();
  sub_226E93170(&v97, v95, &unk_27D7BC990, &qword_227670A30);
  v62 = v96;
  if (v96)
  {
    v63 = __swift_project_boxed_opaque_existential_0(v95, v96);
    v64 = *(v62 - 8);
    v65 = *(v64 + 64);
    MEMORY[0x28223BE20](v63);
    v67 = &v88 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v64 + 16))(v67);
    v68 = sub_22766D170();
    (*(v64 + 8))(v67, v62);
    __swift_destroy_boxed_opaque_existential_0(v95);
  }

  else
  {
    v68 = 0;
  }

  v69 = [v94 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(v93) initWithLeftExpression:v61 rightExpression:v69 modifier:0 type:10 options:0];

  sub_226E97D1C(&v97, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v70 = sub_22766A080();
  v72 = v71;
  MEMORY[0x22AA985C0]();
  if (*((*v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v87 = *((*v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v70(&v97, 0);
  swift_endAccess();

  v73 = v92;
  v74 = sub_2272328B8(100);
  if (v73)
  {
    swift_setDeallocating();

    v75 = *(a4 + 40);

    v76 = qword_2813B2078;
    v77 = sub_22766A100();
    (*(*(v77 - 8) + 8))(a4 + v76, v77);
    v78 = *(*a4 + 48);
    v79 = *(*a4 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v80 = v74;
    swift_setDeallocating();

    v81 = *(a4 + 40);

    v82 = qword_2813B2078;
    v83 = sub_22766A100();
    (*(*(v83 - 8) + 8))(a4 + v82, v83);
    v84 = *(*a4 + 48);
    v85 = *(*a4 + 52);
    result = swift_deallocClassInstance();
    *v89 = v80;
  }

  return result;
}

uint64_t sub_227449FF0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v6 = *(*__swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520)) + 32);
  result = sub_2276696A0();
  if (!v3)
  {
    v8 = sub_22707D7F0(v9, v10, a1);

    *a3 = v8;
  }

  return result;
}

uint64_t sub_22744A098@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char **a4@<X8>)
{
  v8 = *__swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  result = sub_227393794(a3 & 1);
  if (!v4)
  {
    v11 = v10;
    v12 = result;
    v13 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_22744ECE8(v12, v11, *v13, v13[1], *(v13 + 16), v13[3]);

    v14 = sub_2272328B8(100);

    *a4 = v14;
  }

  return result;
}

uint64_t sub_22744A160@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = *__swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  result = sub_227393794(a3 & 1);
  if (!v4)
  {
    v11 = sub_22707D6D4(result, v10, a1);

    *a4 = v11;
  }

  return result;
}

char *sub_22744A1F4@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_22707B578(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22744A220@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  sub_2276625E0();
  result = sub_22707F154(a1, v5);
  if (!v2)
  {
    v7 = sub_22707B7C4(result, a1);

    *a2 = v7;
  }

  return result;
}

char *sub_22744A28C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_22707FF94(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22744A2B8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *__swift_project_boxed_opaque_existential_0((a2 + 176), *(a2 + 200));
  result = sub_227076360(a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_22744A34C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v82 = v80 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8620, &qword_2276711C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v81 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v89 = v80 - v10;
  v11 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  v15 = v11[3];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = v12;
  v21 = v13;

  sub_22766A070();
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  *(v19 + 32) = v14;
  *(v19 + 40) = v15;
  swift_getKeyPath();
  v22 = sub_227662390();
  v24 = v23;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v87[0] = v22;
  v87[1] = v24;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v25 = sub_22766C820();
  sub_226E93170(v87, v85, &unk_27D7BC990, &qword_227670A30);
  v26 = v86;
  if (v86)
  {
    v27 = __swift_project_boxed_opaque_existential_0(v85, v86);
    v28 = *(v26 - 8);
    v29 = *(v28 + 64);
    MEMORY[0x28223BE20](v27);
    v31 = v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v31);
    v32 = sub_22766D170();
    (*(v28 + 8))(v31, v26);
    __swift_destroy_boxed_opaque_existential_0(v85);
  }

  else
  {
    v32 = 0;
  }

  v33 = objc_opt_self();
  v34 = [v33 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590, &unk_2276777E0);
  v35 = [objc_allocWithZone(v83) initWithLeftExpression:v25 rightExpression:v34 modifier:0 type:4 options:0];

  sub_226E97D1C(v87, &unk_27D7BC990, &qword_227670A30);
  v36 = qword_2813B2078;
  swift_beginAccess();
  v37 = v35;
  v38 = sub_22766A080();
  v40 = v39;
  MEMORY[0x22AA985C0]();
  if (*((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v38(v87, 0);
  swift_endAccess();

  swift_getKeyPath();
  v41 = sub_227664570();
  v88 = MEMORY[0x277D83B88];
  v87[0] = v41;

  v42 = sub_22766C820();
  sub_226E93170(v87, v85, &unk_27D7BC990, &qword_227670A30);
  v43 = v86;
  if (v86)
  {
    v44 = __swift_project_boxed_opaque_existential_0(v85, v86);
    v80[1] = v36;
    v45 = v33;
    v46 = *(v43 - 8);
    v47 = *(v46 + 64);
    MEMORY[0x28223BE20](v44);
    v49 = v80 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v46 + 16))(v49);
    v50 = sub_22766D170();
    (*(v46 + 8))(v49, v43);
    v33 = v45;
    __swift_destroy_boxed_opaque_existential_0(v85);
  }

  else
  {
    v50 = 0;
  }

  v51 = [v33 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v52 = [objc_allocWithZone(v83) initWithLeftExpression:v42 rightExpression:v51 modifier:0 type:4 options:0];

  sub_226E97D1C(v87, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v53 = v52;
  v54 = sub_22766A080();
  v56 = v55;
  MEMORY[0x22AA985C0]();
  if (*((*v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v79 = *((*v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v54(v87, 0);
  swift_endAccess();

  v57 = MEMORY[0x22AA99A00]();
  v58 = v84;
  sub_227544DD4(v19, v89);
  if (v58)
  {
    objc_autoreleasePoolPop(v57);
    swift_setDeallocating();

    v59 = *(v19 + 40);

    v60 = qword_2813B2078;
    v61 = sub_22766A100();
    (*(*(v61 - 8) + 8))(v19 + v60, v61);
    v62 = *(*v19 + 48);
    v63 = *(*v19 + 52);
    return swift_deallocClassInstance();
  }

  objc_autoreleasePoolPop(v57);
  swift_setDeallocating();

  v65 = *(v19 + 40);

  v66 = qword_2813B2078;
  v67 = sub_22766A100();
  (*(*(v67 - 8) + 8))(v19 + v66, v67);
  v68 = *(*v19 + 48);
  v69 = *(*v19 + 52);
  swift_deallocClassInstance();
  v70 = v81;
  sub_226E93170(v89, v81, &qword_27D7B8620, &qword_2276711C0);
  v71 = sub_227663180();
  v72 = *(v71 - 8);
  if ((*(v72 + 48))(v70, 1, v71) == 1)
  {
    sub_226E97D1C(v70, &qword_27D7B8620, &qword_2276711C0);
    v73 = sub_2276624A0();
    v74 = v82;
    (*(*(v73 - 8) + 56))(v82, 1, 1, v73);
LABEL_16:
    sub_226E97D1C(v74, &unk_27D7BB570, &unk_227670FC0);
    v77 = sub_227663190();
    sub_22744F3B4(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    swift_allocError();
    (*(*(v77 - 8) + 104))(v78, *MEMORY[0x277D4FD58], v77);
    swift_willThrow();
    return sub_226E97D1C(v89, &qword_27D7B8620, &qword_2276711C0);
  }

  v74 = v82;
  sub_227663160();
  (*(v72 + 8))(v70, v71);
  v75 = sub_2276624A0();
  v76 = *(v75 - 8);
  if ((*(v76 + 48))(v74, 1, v75) == 1)
  {
    goto LABEL_16;
  }

  sub_226E97D1C(v89, &qword_27D7B8620, &qword_2276711C0);
  return (*(v76 + 32))(v80[0], v74, v75);
}

uint64_t sub_22744ADBC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v220 = a3;
  v226 = a4;
  v6 = sub_22766B390();
  v224 = *(v6 - 8);
  v225 = v6;
  v7 = *(v224 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v229 = &v212 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v216 = &v212 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v228 = &v212 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8620, &qword_2276711C0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v227 = (&v212 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v231 = &v212 - v18;
  v242 = sub_2276624A0();
  v235 = *(v242 - 8);
  v19 = *(v235 + 64);
  v20 = MEMORY[0x28223BE20](v242);
  v223 = &v212 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v215 = &v212 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v222 = &v212 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v212 - v26;
  v218 = a2;
  sub_227664240();
  v28 = a1[3];
  v217 = a1;
  v29 = __swift_project_boxed_opaque_existential_0(a1, v28);
  v30 = *v29;
  v31 = v29[1];
  v32 = *(v29 + 16);
  v33 = v29[3];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  v38 = v30;
  v39 = v31;

  sub_22766A070();
  *(v37 + 16) = v38;
  *(v37 + 24) = v39;
  *(v37 + 32) = v32;
  *(v37 + 40) = v33;
  swift_getKeyPath();
  v236 = v27;
  v40 = sub_227662390();
  v42 = v41;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v241 = v219;
  v239 = v40;
  v240 = v42;
  v43 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v44 = sub_22766C820();
  sub_226E93170(&v239, v237, &unk_27D7BC990, &qword_227670A30);
  v45 = v238;
  if (v238)
  {
    v46 = __swift_project_boxed_opaque_existential_0(v237, v238);
    v47 = *(v45 - 8);
    v48 = *(v47 + 64);
    MEMORY[0x28223BE20](v46);
    v50 = &v212 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v47 + 16))(v50);
    v51 = sub_22766D170();
    (*(v47 + 8))(v50, v45);
    __swift_destroy_boxed_opaque_existential_0(v237);
  }

  else
  {
    v51 = 0;
  }

  v52 = objc_opt_self();
  v53 = [v52 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590, &unk_2276777E0);
  v54 = [objc_allocWithZone(v232) initWithLeftExpression:v44 rightExpression:v53 modifier:0 type:4 options:0];

  sub_226E97D1C(&v239, &unk_27D7BC990, &qword_227670A30);
  v55 = qword_2813B2078;
  swift_beginAccess();
  v56 = v54;
  v233 = v55;
  v57 = sub_22766A080();
  v59 = v58;
  MEMORY[0x22AA985C0]();
  if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v207 = *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v57(&v239, 0);
  swift_endAccess();

  swift_getKeyPath();
  v60 = sub_227664570();
  v241 = MEMORY[0x277D83B88];
  v239 = v60;

  v221 = v43;
  v61 = sub_22766C820();
  sub_226E93170(&v239, v237, &unk_27D7BC990, &qword_227670A30);
  v62 = v238;
  v230 = v52;
  if (v238)
  {
    v63 = __swift_project_boxed_opaque_existential_0(v237, v238);
    v64 = *(v62 - 8);
    v65 = *(v64 + 64);
    MEMORY[0x28223BE20](v63);
    v67 = &v212 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v64 + 16))(v67);
    v68 = sub_22766D170();
    (*(v64 + 8))(v67, v62);
    v52 = v230;
    __swift_destroy_boxed_opaque_existential_0(v237);
  }

  else
  {
    v68 = 0;
  }

  v69 = v235;
  v70 = [v52 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v71 = [objc_allocWithZone(v232) initWithLeftExpression:v61 rightExpression:v70 modifier:0 type:4 options:0];

  sub_226E97D1C(&v239, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v72 = v71;
  v73 = sub_22766A080();
  v75 = v74;
  MEMORY[0x22AA985C0]();
  if (*((*v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v208 = *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v73(&v239, 0);
  swift_endAccess();

  v76 = v234;
  v77 = sub_2272325B8(100);
  if (v76)
  {
    (*(v69 + 8))(v236, v242);
    swift_setDeallocating();

    v78 = *(v37 + 40);

    v79 = qword_2813B2078;
    v80 = sub_22766A100();
    (*(*(v80 - 8) + 8))(v37 + v79, v80);
    v81 = *(*v37 + 48);
    v82 = *(*v37 + 52);
    return swift_deallocClassInstance();
  }

  v84 = v77;
  swift_setDeallocating();

  v85 = *(v37 + 40);

  v86 = qword_2813B2078;
  v87 = sub_22766A100();
  v88 = *(v87 - 8);
  v89 = *(v88 + 8);
  v90 = (v88 + 8);
  v89(v37 + v86, v87);
  v91 = *(*v37 + 48);
  v92 = *(*v37 + 52);
  swift_deallocClassInstance();
  v93 = v231;
  sub_22722AE54(v84, v231);

  v94 = v227;
  sub_226E93170(v93, v227, &qword_27D7B8620, &qword_2276711C0);
  v95 = sub_227663180();
  v96 = *(v95 - 8);
  if ((*(v96 + 48))(v94, 1, v95) == 1)
  {
    sub_226E97D1C(v94, &qword_27D7B8620, &qword_2276711C0);
    v97 = v228;
    v98 = v242;
    (*(v69 + 56))(v228, 1, 1, v242);
    v99 = v236;
LABEL_16:
    sub_226E97D1C(v97, &unk_27D7BB570, &unk_227670FC0);
    v103 = v229;
    sub_22766A6C0();
    v104 = v223;
    (*(v69 + 16))(v223, v99, v98);
    v105 = sub_22766B380();
    v106 = sub_22766C8B0();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = v104;
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v239 = v109;
      *v108 = 141558274;
      *(v108 + 4) = 1752392040;
      *(v108 + 12) = 2080;
      v110 = sub_227662390();
      v112 = v111;
      (*(v69 + 8))(v107, v242);
      v113 = sub_226E97AE8(v110, v112, &v239);

      *(v108 + 14) = v113;
      _os_log_impl(&dword_226E8E000, v105, v106, "Preferred URL - no local URL. Using remote URL: %{mask.hash}s", v108, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v109);
      MEMORY[0x22AA9A450](v109, -1, -1);
      v98 = v242;
      MEMORY[0x22AA9A450](v108, -1, -1);

      (*(v224 + 8))(v229, v225);
    }

    else
    {

      (*(v69 + 8))(v104, v98);
      (*(v224 + 8))(v103, v225);
    }

    sub_226E97D1C(v231, &qword_27D7B8620, &qword_2276711C0);
    return (*(v69 + 32))(v226, v236, v98);
  }

  v234 = v90;
  v100 = v228;
  sub_227663160();
  (*(v96 + 8))(v94, v95);
  v97 = v100;
  v101 = v100;
  v98 = v242;
  v102 = (*(v69 + 48))(v101, 1, v242);
  v99 = v236;
  if (v102 == 1)
  {
    goto LABEL_16;
  }

  v233 = v87;
  v114 = *(v69 + 32);
  v114(v222, v97, v98);
  v115 = *(*__swift_project_boxed_opaque_existential_0(v220 + 62, v220[65]) + 32);
  sub_2276696A0();
  v227 = v89;
  v213 = v114;
  v214 = v69 + 32;
  v232 = 0;
  v116 = v239;
  v117 = v240;
  v118 = __swift_project_boxed_opaque_existential_0(v217, v217[3]);
  v119 = *v118;
  v120 = v118[1];
  v121 = *(v118 + 16);
  v122 = v118[3];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v124 = *(v123 + 48);
  v125 = *(v123 + 52);
  v126 = swift_allocObject();
  v127 = v119;
  v128 = v120;

  sub_22766A070();
  v229 = v127;
  *(v126 + 16) = v127;
  *(v126 + 24) = v128;
  v223 = v128;
  *(v126 + 32) = v121;
  v228 = v122;
  *(v126 + 40) = v122;
  swift_getKeyPath();
  v241 = v219;
  v239 = v116;
  v240 = v117;

  v129 = sub_22766C820();
  sub_226E93170(&v239, v237, &unk_27D7BC990, &qword_227670A30);
  v130 = v238;
  if (v238)
  {
    v131 = __swift_project_boxed_opaque_existential_0(v237, v238);
    v132 = *(v130 - 8);
    v133 = *(v132 + 64);
    MEMORY[0x28223BE20](v131);
    v135 = &v212 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v132 + 16))(v135);
    v136 = sub_22766D170();
    (*(v132 + 8))(v135, v130);
    __swift_destroy_boxed_opaque_existential_0(v237);
  }

  else
  {
    v136 = 0;
  }

  v137 = v230;
  v138 = [v230 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  v139 = [objc_allocWithZone(v234) initWithLeftExpression:v129 rightExpression:v138 modifier:0 type:4 options:0];

  sub_226E97D1C(&v239, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v140 = v139;
  v141 = sub_22766A080();
  v143 = v142;
  MEMORY[0x22AA985C0]();
  if (*((*v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v209 = *((*v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v141(&v239, 0);
  swift_endAccess();

  swift_getKeyPath();
  v144 = sub_227664570();
  v241 = MEMORY[0x277D83B88];
  v239 = v144;

  v145 = sub_22766C820();
  sub_226E93170(&v239, v237, &unk_27D7BC990, &qword_227670A30);
  v146 = v238;
  if (v238)
  {
    v147 = __swift_project_boxed_opaque_existential_0(v237, v238);
    v220 = &v212;
    v148 = *(v146 - 8);
    v149 = *(v148 + 64);
    MEMORY[0x28223BE20](v147);
    v151 = &v212 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v148 + 16))(v151);
    v152 = sub_22766D170();
    (*(v148 + 8))(v151, v146);
    v137 = v230;
    __swift_destroy_boxed_opaque_existential_0(v237);
  }

  else
  {
    v152 = 0;
  }

  v153 = [v137 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v154 = [objc_allocWithZone(v234) initWithLeftExpression:v145 rightExpression:v153 modifier:0 type:4 options:0];

  sub_226E97D1C(&v239, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v155 = v154;
  v156 = sub_22766A080();
  v158 = v157;
  MEMORY[0x22AA985C0]();
  if (*((*v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v210 = *((*v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v156(&v239, 0);
  swift_endAccess();

  swift_getKeyPath();
  v159 = sub_227664230();
  v241 = v219;
  v239 = v159;
  v240 = v160;

  v161 = sub_22766C820();
  sub_226E93170(&v239, v237, &unk_27D7BC990, &qword_227670A30);
  v162 = v238;
  if (v238)
  {
    v163 = __swift_project_boxed_opaque_existential_0(v237, v238);
    v221 = &v212;
    v164 = *(v162 - 8);
    v165 = *(v164 + 64);
    MEMORY[0x28223BE20](v163);
    v167 = &v212 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v164 + 16))(v167);
    v168 = sub_22766D170();
    (*(v164 + 8))(v167, v162);
    v137 = v230;
    __swift_destroy_boxed_opaque_existential_0(v237);
  }

  else
  {
    v168 = 0;
  }

  v169 = v235;
  v170 = [v137 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v171 = [objc_allocWithZone(v234) initWithLeftExpression:v161 rightExpression:v170 modifier:0 type:4 options:0];

  sub_226E97D1C(&v239, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v172 = v171;
  v173 = sub_22766A080();
  v175 = v174;
  MEMORY[0x22AA985C0]();
  if (*((*v175 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v175 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v211 = *((*v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v173(&v239, 0);
  swift_endAccess();

  v176 = v232;
  v177 = sub_227284664(0);
  if (v176)
  {

    swift_setDeallocating();
    v227(v126 + qword_2813B2078, v233);
    v178 = *(*v126 + 48);
    v179 = *(*v126 + 52);
    swift_deallocClassInstance();
    v180 = *(v169 + 8);
    v181 = v242;
    v180(v222, v242);
    sub_226E97D1C(v231, &qword_27D7B8620, &qword_2276711C0);
    return (v180)(v236, v181);
  }

  else
  {
    v182 = v177;
    [v177 setResultType_];
    [v182 setFetchLimit_];
    [v182 setFetchOffset_];
    [v182 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v183 = v229;
    v184 = sub_22766C9D0();
    v185 = v242;
    v186 = v222;
    v187 = v184;

    swift_setDeallocating();
    v227(v126 + qword_2813B2078, v233);
    v188 = *(*v126 + 48);
    v189 = *(*v126 + 52);
    swift_deallocClassInstance();
    if (v187 <= 0)
    {
      v232 = 0;
      v190 = v185;
      v191 = v216;
      sub_22766A6C0();
      v192 = v215;
      v193 = v236;
      (*(v169 + 16))(v215, v236, v190);
      v194 = sub_22766B380();
      v195 = sub_22766C8B0();
      if (os_log_type_enabled(v194, v195))
      {
        v196 = swift_slowAlloc();
        v197 = v192;
        v198 = swift_slowAlloc();
        v239 = v198;
        *v196 = 141558274;
        *(v196 + 4) = 1752392040;
        *(v196 + 12) = 2080;
        v199 = sub_227662390();
        v201 = v200;
        v202 = *(v169 + 8);
        v202(v197, v242);
        v203 = sub_226E97AE8(v199, v201, &v239);

        *(v196 + 14) = v203;
        _os_log_impl(&dword_226E8E000, v194, v195, "Preferred URL - have local URL, but bundle isn't completed. Using remote URL: %{mask.hash}s", v196, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v198);
        v204 = v198;
        v193 = v236;
        MEMORY[0x22AA9A450](v204, -1, -1);
        v205 = v196;
        v190 = v242;
        MEMORY[0x22AA9A450](v205, -1, -1);

        (*(v224 + 8))(v216, v225);
        v202(v222, v190);
      }

      else
      {

        v206 = *(v169 + 8);
        v206(v192, v190);
        (*(v224 + 8))(v191, v225);
        v206(v222, v190);
      }

      sub_226E97D1C(v231, &qword_27D7B8620, &qword_2276711C0);
      return v213(v226, v193, v190);
    }

    else
    {
      sub_226E97D1C(v231, &qword_27D7B8620, &qword_2276711C0);
      (*(v169 + 8))(v236, v185);
      return v213(v226, v186, v185);
    }
  }
}

uint64_t sub_22744C878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = a3;
  v65 = a2;
  v78 = a4;
  v5 = sub_2276642E0();
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  MEMORY[0x28223BE20](v5);
  v66 = v7;
  v67 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 8);
  v10 = MEMORY[0x28223BE20](v8);
  v71 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v64 - v11;
  v12 = sub_2276624A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v64 - v17;
  v19 = sub_22766B390();
  v76 = *(v19 - 8);
  v77 = v19;
  v20 = *(v76 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v64 - v24;
  if ((sub_2276622E0() & 1) == 0)
  {
    (*(v13 + 16))(v16, a1, v12);
    v41 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v42 = swift_allocObject();
    (*(v13 + 32))(v42 + v41, v16, v12);
    return sub_227669280();
  }

  v64 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v12;
  sub_227662450();
  v26 = [objc_opt_self() defaultManager];
  v27 = sub_22766BFD0();

  v28 = [v26 fileExistsAtPath_];

  if (v28)
  {
    sub_22766A6C0();
    v29 = *(v13 + 16);
    v30 = v75;
    v29(v18, a1, v75);
    v31 = sub_22766B380();
    v32 = sub_22766C8B0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v73 = v29;
      v74 = a1;
      v34 = v33;
      v35 = swift_slowAlloc();
      v79 = v35;
      *v34 = 141558274;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2080;
      LODWORD(v72) = v32;
      v36 = sub_227662390();
      v38 = v37;
      (*(v13 + 8))(v18, v75);
      v39 = sub_226E97AE8(v36, v38, &v79);
      v30 = v75;

      *(v34 + 14) = v39;
      _os_log_impl(&dword_226E8E000, v31, v72, "Preferred URL - have local URL with completed bundle. Using local URL: %{mask.hash}s", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AA9A450](v35, -1, -1);
      v40 = v34;
      v29 = v73;
      a1 = v74;
      MEMORY[0x22AA9A450](v40, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v18, v30);
    }

    (*(v76 + 8))(v25, v77);
    v61 = v64;
    v29(v64, a1, v30);
    v62 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v63 = swift_allocObject();
    (*(v13 + 32))(v63 + v62, v61, v30);
    return sub_227669280();
  }

  sub_22766A6C0();
  v43 = sub_22766B380();
  v44 = sub_22766C8B0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_226E8E000, v43, v44, "Running asset validator on media streams...", v45, 2u);
    MEMORY[0x22AA9A450](v45, -1, -1);
  }

  (*(v76 + 8))(v23, v77);
  v46 = *__swift_project_boxed_opaque_existential_0((v65 + 416), *(v65 + 440));
  v47 = v72;
  sub_22708193C(byte_283A950D8, v72);
  v48 = v69;
  v49 = v67;
  v50 = v70;
  (*(v69 + 16))(v67, v68, v70);
  v51 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v52 = swift_allocObject();
  (*(v48 + 32))(v52 + v51, v49, v50);
  v53 = swift_allocObject();
  *(v53 + 16) = sub_22744F568;
  *(v53 + 24) = v52;
  v55 = v73;
  v54 = v74;
  v56 = v71;
  (*(v73 + 2))(v71, v47, v74);
  v57 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v58 = swift_allocObject();
  (*(v55 + 4))(v58 + v57, v56, v54);
  v59 = (v58 + ((v9 + v57 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v59 = sub_226F09740;
  v59[1] = v53;
  sub_227669270();
  return (*(v55 + 1))(v47, v54);
}

uint64_t sub_22744D034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_2276624A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v35[-v9];
  v11 = sub_2276642E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_22766B390();
  v40 = *(v16 - 8);
  v41 = v16;
  v17 = *(v40 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v35[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22766A6C0();
  v20 = *(v12 + 16);
  v43 = a1;
  v20(v15, a1, v11);
  v21 = sub_22766B380();
  v22 = sub_22766C8B0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v39 = v3;
    v24 = v23;
    v37 = swift_slowAlloc();
    v45 = v37;
    *v24 = 141558274;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2080;
    v36 = v22;
    sub_227664240();
    v25 = sub_227662390();
    v38 = v8;
    v26 = v10;
    v28 = v27;
    (*(v4 + 8))(v26, v39);
    (*(v12 + 8))(v15, v11);
    v29 = sub_226E97AE8(v25, v28, &v45);
    v10 = v26;
    v8 = v38;

    *(v24 + 14) = v29;
    _os_log_impl(&dword_226E8E000, v21, v36, "Preferred URL - local URL is missing from disk. Using remote URL: %{mask.hash}s", v24, 0x16u);
    v30 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v30, -1, -1);
    v31 = v24;
    v3 = v39;
    MEMORY[0x22AA9A450](v31, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  (*(v40 + 8))(v19, v41);
  sub_227664240();
  (*(v4 + 16))(v8, v10, v3);
  v32 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v33 = swift_allocObject();
  (*(v4 + 32))(v33 + v32, v8, v3);
  sub_227669280();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_22744D4A8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = v9[3];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = v10;
  v19 = v11;

  sub_22766A070();
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  *(v17 + 32) = v12;
  *(v17 + 40) = v13;
  v20 = a4(100);
  if (v5)
  {
    swift_setDeallocating();

    v21 = *(v17 + 40);

    v22 = qword_2813B2078;
    v23 = sub_22766A100();
    (*(*(v23 - 8) + 8))(v17 + v22, v23);
    v24 = *(*v17 + 48);
    v25 = *(*v17 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v27 = v20;
    swift_setDeallocating();

    v28 = *(v17 + 40);

    v29 = qword_2813B2078;
    v30 = sub_22766A100();
    (*(*(v30 - 8) + 8))(v17 + v29, v30);
    v31 = *(*v17 + 48);
    v32 = *(*v17 + 52);
    result = swift_deallocClassInstance();
    *a5 = v27;
  }

  return result;
}

uint64_t sub_22744D6D8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD400, qword_22767B9F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - v10;
  v12 = *a1;
  v13 = a2[75];
  v14 = a2[76];
  __swift_project_boxed_opaque_existential_0(a2 + 72, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6C0, qword_227670F00);
  sub_226ECF5D8(sub_22744F368, v15, v13, v16, v14, v11);

  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  (*(v6 + 16))(v9, v11, v5);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v6 + 32))(v20 + v18, v9, v5);
  v21 = (v20 + v19);
  *v21 = sub_22744F384;
  v21[1] = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
  sub_227669270();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_22744D950@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v82 = a3;
  v92 = sub_2276624A0();
  v5 = *(v92 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v92);
  v87 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  v19 = MEMORY[0x277D84F90];
  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v11;
  *(v16 + 40) = v12;
  KeyPath = swift_getKeyPath();
  v21 = *(a2 + 16);
  if (v21)
  {
    v80 = KeyPath;
    v81 = v16;
    v90[0] = v19;
    sub_226F1EFF0(0, v21, 0);
    v19 = v90[0];
    v23 = *(v5 + 16);
    v22 = v5 + 16;
    v24 = a2 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v84 = *(v22 + 56);
    v85 = v23;
    v86 = v22;
    v25 = (v22 - 8);
    do
    {
      v26 = v87;
      v27 = v92;
      v85(v87, v24, v92);
      v28 = sub_227662390();
      v30 = v29;
      (*v25)(v26, v27);
      v90[0] = v19;
      v32 = *(v19 + 16);
      v31 = *(v19 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_226F1EFF0((v31 > 1), v32 + 1, 1);
        v19 = v90[0];
      }

      *(v19 + 16) = v32 + 1;
      v33 = v19 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      v24 += v84;
      --v21;
    }

    while (v21);
    v16 = v81;
  }

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v90[0] = v19;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v34 = sub_22766C820();
  sub_226E93170(v90, v88, &unk_27D7BC990, &qword_227670A30);
  v35 = v89;
  if (v89)
  {
    v36 = __swift_project_boxed_opaque_existential_0(v88, v89);
    v37 = *(v35 - 8);
    v38 = *(v37 + 64);
    MEMORY[0x28223BE20](v36);
    v40 = &v80 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v40);
    v41 = sub_22766D170();
    (*(v37 + 8))(v40, v35);
    __swift_destroy_boxed_opaque_existential_0(v88);
  }

  else
  {
    v41 = 0;
  }

  v92 = objc_opt_self();
  v42 = [v92 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590, &unk_2276777E0);
  [objc_allocWithZone(v43) initWithLeftExpression:v34 rightExpression:v42 modifier:0 type:10 options:0];

  sub_226E97D1C(v90, &unk_27D7BC990, &qword_227670A30);
  v44 = qword_2813B2078;
  swift_beginAccess();
  v45 = sub_22766A080();
  v47 = v46;
  MEMORY[0x22AA985C0]();
  if (*((*v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v87 = v44;
    sub_22766C360();
  }

  sub_22766C3A0();
  v45(v90, 0);
  swift_endAccess();

  swift_getKeyPath();
  v48 = sub_227664570();
  v91 = MEMORY[0x277D83B88];
  v90[0] = v48;

  v49 = sub_22766C820();
  sub_226E93170(v90, v88, &unk_27D7BC990, &qword_227670A30);
  v50 = v89;
  if (v89)
  {
    v51 = __swift_project_boxed_opaque_existential_0(v88, v89);
    v87 = &v80;
    v52 = v43;
    v53 = v16;
    v54 = *(v50 - 8);
    v55 = *(v54 + 64);
    MEMORY[0x28223BE20](v51);
    v57 = &v80 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v54 + 16))(v57);
    v58 = sub_22766D170();
    (*(v54 + 8))(v57, v50);
    v16 = v53;
    v43 = v52;
    __swift_destroy_boxed_opaque_existential_0(v88);
  }

  else
  {
    v58 = 0;
  }

  v59 = [v92 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v60 = [objc_allocWithZone(v43) initWithLeftExpression:v49 rightExpression:v59 modifier:0 type:4 options:0];

  sub_226E97D1C(v90, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v61 = v60;
  v62 = sub_22766A080();
  v64 = v63;
  MEMORY[0x22AA985C0]();
  if (*((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v79 = *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v62(v90, 0);
  swift_endAccess();

  v65 = v83;
  v66 = sub_2272325B8(100);
  if (v65)
  {
    swift_setDeallocating();

    v67 = *(v16 + 40);

    v68 = qword_2813B2078;
    v69 = sub_22766A100();
    (*(*(v69 - 8) + 8))(v16 + v68, v69);
    v70 = *(*v16 + 48);
    v71 = *(*v16 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v73 = v66;
    swift_setDeallocating();

    v74 = *(v16 + 40);

    v75 = qword_2813B2078;
    v76 = sub_22766A100();
    (*(*(v76 - 8) + 8))(v16 + v75, v76);
    v77 = *(*v16 + 48);
    v78 = *(*v16 + 52);
    result = swift_deallocClassInstance();
    *v82 = v73;
  }

  return result;
}

uint64_t sub_22744E210@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v45 - v13;
  MEMORY[0x28223BE20](v12);
  v55 = &v45 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - v21;
  v23 = sub_2274487A8(*a1);
  v24 = sub_226F40798(v23);

  v51 = *(a2 + 16);
  if (v51)
  {
    v46 = v20;
    v47 = v11;
    v48 = v22;
    v49 = v7;
    v50 = a3;
    v25 = 0;
    v28 = *(v7 + 16);
    v27 = v7 + 16;
    v26 = v28;
    v52 = a2 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v29 = *(v27 + 56);
    v54 = v24 + 56;
    v30 = (v27 - 8);
    v31 = v55;
    while (1)
    {
      v53 = v25;
      v26(v31, v52 + v29 * v25, v6);
      if (*(v24 + 16))
      {
        v32 = *(v24 + 40);
        sub_22744F3B4(&qword_28139BDE0, MEMORY[0x277CC9260]);
        v33 = sub_22766BF50();
        v31 = v55;
        v34 = -1 << *(v24 + 32);
        v35 = v33 & ~v34;
        if ((*(v54 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
        {
          break;
        }
      }

LABEL_3:
      v25 = v53 + 1;
      (*v30)(v31, v6);
      if (v25 == v51)
      {

        v38 = 1;
        v7 = v49;
        v22 = v48;
        goto LABEL_11;
      }
    }

    v36 = ~v34;
    while (1)
    {
      v26(v14, *(v24 + 48) + v35 * v29, v6);
      sub_22744F3B4(&qword_28139BDD8, MEMORY[0x277CC9260]);
      v37 = sub_22766BFB0();
      (*v30)(v14, v6);
      if (v37)
      {
        break;
      }

      v35 = (v35 + 1) & v36;
      v31 = v55;
      if (((*(v54 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v22 = v48;
    v7 = v49;
    (*(v49 + 32))(v48, v55, v6);
    v38 = 0;
LABEL_11:
    v20 = v46;
    v11 = v47;
  }

  else
  {

    v38 = 1;
  }

  (*(v7 + 56))(v22, v38, 1, v6);
  sub_226E93170(v22, v20, &unk_27D7BB570, &unk_227670FC0);
  if ((*(v7 + 48))(v20, 1, v6) == 1)
  {
    sub_226E97D1C(v20, &unk_27D7BB570, &unk_227670FC0);
    *(swift_allocObject() + 16) = MEMORY[0x277D84FA0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
    sub_227669280();
  }

  else
  {
    (*(v7 + 32))(v11, v20, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC38, &unk_22767FF60);
    v39 = *(v7 + 72);
    v40 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_227670CD0;
    (*(v7 + 16))(v41 + v40, v11, v6);
    v42 = sub_226F4F878(v41);
    swift_setDeallocating();
    v43 = *(v7 + 8);
    v43(v41 + v40, v6);
    swift_deallocClassInstance();
    *(swift_allocObject() + 16) = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
    sub_227669280();
    v43(v11, v6);
  }

  return sub_226E97D1C(v22, &unk_27D7BB570, &unk_227670FC0);
}

uint64_t sub_22744E7E8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_227670CD0;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;

  v15 = sub_226F87158(v14, 0, 1, a1);

  if (!v4)
  {
    if (*(v15 + 16))
    {
      v17 = sub_2276642E0();
      (*(*(v17 - 8) + 16))(a4, v15 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)), v17);
    }

    else
    {

      sub_22766A6C0();

      v18 = sub_22766B380();
      v19 = sub_22766C8B0();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v25 = v21;
        *v20 = 136446210;
        *(v20 + 4) = sub_226E97AE8(a2, a3, &v25);
        _os_log_impl(&dword_226E8E000, v18, v19, "[Request Provider] Bundle requests - Catalog workout not found for identifier %{public}s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x22AA9A450](v21, -1, -1);
        MEMORY[0x22AA9A450](v20, -1, -1);
      }

      (*(v10 + 8))(v13, v9);
      v22 = sub_227663190();
      sub_22744F3B4(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D4FD68], v22);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_22744EB04(uint64_t a1, void *a2)
{
  v4 = sub_2276642E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227667D10();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  LODWORD(a1) = *__swift_project_boxed_opaque_existential_0(a2 + 27, a2[30]);
  v14 = *(__swift_project_boxed_opaque_existential_0(a2 + 27, a2[30]) + 1);
  sub_227667D00();
  __swift_project_boxed_opaque_existential_0(a2 + 47, a2[50]);
  v15 = off_283AA5520[0];
  type metadata accessor for AssetScriptClient();
  v15(v13);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_22744ECE8(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5, uint64_t a6)
{
  v61 = a1;
  v66[3] = &type metadata for PersistenceHandle;
  v66[4] = &off_283A9AF78;
  v11 = swift_allocObject();
  v66[0] = v11;
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5;
  *(v11 + 40) = a6;
  v12 = __swift_project_boxed_opaque_existential_0(v66, &type metadata for PersistenceHandle);
  v14 = *v12;
  v13 = v12[1];
  v15 = *(v12 + 16);
  v16 = v12[3];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = a3;
  v22 = a4;

  v23 = v14;
  v24 = v13;

  sub_22766A070();
  *(v20 + 16) = v23;
  *(v20 + 24) = v24;
  *(v20 + 32) = v15;
  *(v20 + 40) = v16;
  swift_getKeyPath();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v64[0] = v61;
  v64[1] = a2;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v25 = sub_22766C820();
  sub_226E93170(v64, v62, &unk_27D7BC990, &qword_227670A30);
  v26 = v63;
  if (v63)
  {
    v27 = __swift_project_boxed_opaque_existential_0(v62, v63);
    v28 = *(v26 - 8);
    v29 = *(v28 + 64);
    MEMORY[0x28223BE20](v27);
    v31 = &v62[-1] - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v31);
    v32 = sub_22766D170();
    (*(v28 + 8))(v31, v26);
    __swift_destroy_boxed_opaque_existential_0(v62);
  }

  else
  {
    v32 = 0;
  }

  v33 = objc_opt_self();
  v34 = &off_2785D6000;
  v35 = [v33 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  v37 = [objc_allocWithZone(v36) initWithLeftExpression:v25 rightExpression:v35 modifier:0 type:4 options:0];

  sub_226E97D1C(v64, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v38 = v37;
  v39 = sub_22766A080();
  v41 = v40;
  MEMORY[0x22AA985C0]();
  if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v61 = *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v39(v64, 0);
  swift_endAccess();

  swift_getKeyPath();
  v42 = sub_227664570();
  v65 = MEMORY[0x277D83B88];
  v64[0] = v42;

  v43 = sub_22766C820();
  sub_226E93170(v64, v62, &unk_27D7BC990, &qword_227670A30);
  v44 = v63;
  if (v63)
  {
    v45 = __swift_project_boxed_opaque_existential_0(v62, v63);
    v61 = &v61;
    v46 = v36;
    v47 = v33;
    v48 = *(v44 - 8);
    v49 = *(v48 + 64);
    MEMORY[0x28223BE20](v45);
    v51 = &v62[-1] - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v48 + 16))(v51);
    v52 = sub_22766D170();
    (*(v48 + 8))(v51, v44);
    v33 = v47;
    v36 = v46;
    v34 = &off_2785D6000;
    __swift_destroy_boxed_opaque_existential_0(v62);
  }

  else
  {
    v52 = 0;
  }

  v53 = [v33 v34[297]];
  swift_unknownObjectRelease();
  v54 = [objc_allocWithZone(v36) initWithLeftExpression:v43 rightExpression:v53 modifier:0 type:4 options:0];

  sub_226E97D1C(v64, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v55 = v54;
  v56 = sub_22766A080();
  v58 = v57;
  MEMORY[0x22AA985C0]();
  if (*((*v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v60 = *((*v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v56(v64, 0);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0(v66);
  return v20;
}

uint64_t sub_22744F3B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22744F3FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276642E0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_22744ADBC(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_22744F4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276642E0() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_22744C878(a1, v6, v7, a2);
}

uint64_t sub_22744F568@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_2276642E0() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_22744D034(v4, a1);
}

uint64_t sub_22744F600(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t objectdestroy_42Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

unint64_t sub_22744F7DC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9558, &qword_227674778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276770E0;
  strcpy((inited + 32), "prefersCache");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = sub_22766C400();
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = sub_22766C4E0();
  *(inited + 80) = 0x646F43726F727265;
  *(inited + 88) = 0xE900000000000065;
  if (a2)
  {
    swift_getErrorValue();
    sub_22766D2C0();
    v4 = sub_22766BFD0();

    *(inited + 96) = v4;
    *(inited + 104) = 0x6D6F44726F727265;
    *(inited + 112) = 0xEB000000006E6961;
    swift_getErrorValue();
    sub_22766D2D0();
  }

  else
  {
    v5 = sub_22766BFD0();

    *(inited + 96) = v5;
    *(inited + 104) = 0x6D6F44726F727265;
    *(inited + 112) = 0xEB000000006E6961;
  }

  v6 = sub_22766BFD0();

  *(inited + 120) = v6;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000227696560;
  if (a2)
  {
    swift_getErrorValue();
    v7 = sub_22766D260();
    if (v7)
    {
      v8 = v7;
      swift_getErrorValue();
      sub_22766D2C0();
    }

    v10 = sub_22766BFD0();

    *(inited + 144) = v10;
    *(inited + 152) = 0xD000000000000015;
    *(inited + 160) = 0x8000000227696580;
    swift_getErrorValue();
    v11 = sub_22766D260();
    if (v11)
    {
      v12 = v11;
      swift_getErrorValue();
      sub_22766D2D0();
    }
  }

  else
  {
    v9 = sub_22766BFD0();

    *(inited + 144) = v9;
    *(inited + 152) = 0xD000000000000015;
    *(inited + 160) = 0x8000000227696580;
  }

  v13 = sub_22766BFD0();

  *(inited + 168) = v13;
  v14 = sub_227148D24(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9560, &qword_227674780);
  swift_arrayDestroy();
  return v14;
}

uint64_t sub_22744FB48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_22744FBA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

BOOL sub_22744FC08(double a1)
{
  v3 = sub_227665030();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = sub_22766B390();
  v35 = *(v33 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_227662750();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_227664FA0();
  sub_227662680();
  v17 = v16;
  v18 = *(v12 + 8);
  v18(v15, v11);
  sub_22766A730();
  v19 = *(v4 + 16);
  v32 = v3;
  v19(v7, v1, v3);
  v34 = v10;
  v20 = sub_22766B380();
  v21 = sub_22766C8B0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36 = v31;
    *v22 = 136315650;
    v30 = v21;
    sub_227664FA0();
    sub_227331C00();
    v23 = sub_22766D140();
    v25 = v24;
    v18(v15, v11);
    (*(v4 + 8))(v7, v32);
    v26 = sub_226E97AE8(v23, v25, &v36);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2048;
    *(v22 + 14) = v17;
    *(v22 + 22) = 2048;
    *(v22 + 24) = a1;
    _os_log_impl(&dword_226E8E000, v20, v30, "Last sync: %s, intervalSinceLastSync: %f, syncInterval: %f", v22, 0x20u);
    v27 = v31;
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AA9A450](v27, -1, -1);
    MEMORY[0x22AA9A450](v22, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v32);
  }

  (*(v35 + 8))(v34, v33);
  return v17 > a1;
}

uint64_t sub_22744FFA0()
{
  result = sub_226F4A780(&unk_283A91B40);
  qword_2813B20C0 = result;
  return result;
}

uint64_t sub_22744FFC8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D80];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22745003C()
{
  if (qword_28139B270 != -1)
  {
    swift_once();
  }
}

uint64_t sub_227450098@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227669430();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2274500C0(uint64_t a1)
{
  *(a1 + 24) = sub_227450128(&qword_2813A54F0);
  result = sub_227450128(&unk_2813A54E0);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_227450128(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227669480();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22745016C(uint64_t a1)
{
  v82 = sub_2276658E0();
  v2 = *(v82 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v82);
  v5 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_227664E50();
  v6 = *(*(v73 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v73);
  v74 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v78 = v66 - v9;
  v77 = sub_227665BA0();
  v10 = *(v77 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v77);
  v76 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    v48 = *(MEMORY[0x277D84F90] + 16);
    v50 = MEMORY[0x277D84F90];
    if (!v48)
    {
LABEL_53:

      return v15;
    }

LABEL_36:
    v51 = 0;
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v51 >= *(v50 + 16))
      {
        goto LABEL_58;
      }

      v52 = v50 + 8 * v51;
      v53 = *(v52 + 32);
      v54 = *(v53 + 16);
      v55 = v15[2];
      v56 = v55 + v54;
      if (__OFADD__(v55, v54))
      {
        goto LABEL_59;
      }

      v57 = *(v52 + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v56 <= v15[3] >> 1)
      {
        if (!*(v53 + 16))
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v55 <= v56)
        {
          v59 = v55 + v54;
        }

        else
        {
          v59 = v55;
        }

        v15 = sub_2273A4E34(isUniquelyReferenced_nonNull_native, v59, 1, v15);
        if (!*(v53 + 16))
        {
LABEL_37:

          if (v54)
          {
            goto LABEL_60;
          }

          goto LABEL_38;
        }
      }

      v60 = (v15[3] >> 1) - v15[2];
      result = sub_2276640B0();
      v61 = *(result - 8);
      if (v60 < v54)
      {
        goto LABEL_61;
      }

      v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v63 = *(v61 + 72);
      swift_arrayInitWithCopy();

      if (v54)
      {
        v64 = v15[2];
        v43 = __OFADD__(v64, v54);
        v65 = v64 + v54;
        if (v43)
        {
          goto LABEL_62;
        }

        v15[2] = v65;
      }

LABEL_38:
      if (v48 == ++v51)
      {
        goto LABEL_53;
      }
    }
  }

  v83 = MEMORY[0x277D84F90];
  v68 = v14;
  sub_226F1F110(0, v14, 0);
  v16 = 0;
  v18 = *(v10 + 16);
  v17 = v10 + 16;
  v72 = v18;
  v71 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
  v67 = (v17 - 8);
  v81 = v2 + 16;
  v79 = v83;
  v80 = (v2 + 8);
  v19 = *(v17 + 56);
  v69 = v17;
  v70 = v19;
  v66[0] = v2;
  while (1)
  {
    v75 = v16;
    v72(v76, v71 + v70 * v16, v77);
    v20 = v78;
    sub_227665B70();
    sub_227450838(v20, v74);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v22 = MEMORY[0x277D52890];
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_22745089C(v78, MEMORY[0x277D510D0]);
      result = (*v67)(v76, v77);
      v30 = *v74;
      goto LABEL_31;
    }

    if (EnumCaseMultiPayload != 3)
    {
      v22 = MEMORY[0x277D52FB8];
    }

    sub_22745089C(v74, v22);
LABEL_26:
    sub_22745089C(v78, MEMORY[0x277D510D0]);
    result = (*v67)(v76, v77);
    v30 = v15;
LABEL_31:
    v45 = v79;
    v83 = v79;
    v47 = *(v79 + 16);
    v46 = *(v79 + 24);
    v48 = v47 + 1;
    v49 = v75;
    if (v47 >= v46 >> 1)
    {
      result = sub_226F1F110((v46 > 1), v47 + 1, 1);
      v49 = v75;
      v45 = v83;
    }

    v16 = v49 + 1;
    *(v45 + 16) = v48;
    v79 = v45;
    *(v45 + 8 * v47 + 32) = v30;
    if (v16 == v68)
    {
      v50 = v79;
      goto LABEL_36;
    }
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_26;
  }

  v23 = *v74;
  v24 = *(*v74 + 16);
  if (!v24)
  {

    v15 = MEMORY[0x277D84F90];
    v30 = MEMORY[0x277D84F90];
LABEL_30:
    sub_22745089C(v78, MEMORY[0x277D510D0]);
    result = (*v67)(v76, v77);
    goto LABEL_31;
  }

  v25 = *(v2 + 80);
  v66[1] = *v74;
  v26 = v23 + ((v25 + 32) & ~v25);
  v27 = v2;
  v28 = *(v2 + 72);
  v29 = *(v27 + 16);
  v30 = MEMORY[0x277D84F90];
  while (2)
  {
    v31 = v82;
    v29(v5, v26, v82);
    v32 = sub_2276658C0();
    result = (*v80)(v5, v31);
    v33 = *(v32 + 16);
    v34 = v30[2];
    v35 = v34 + v33;
    if (!__OFADD__(v34, v33))
    {
      v36 = swift_isUniquelyReferenced_nonNull_native();
      if (v36 && v35 <= v30[3] >> 1)
      {
        if (!*(v32 + 16))
        {
LABEL_11:

          if (v33)
          {
            goto LABEL_55;
          }

          goto LABEL_12;
        }
      }

      else
      {
        if (v34 <= v35)
        {
          v37 = v34 + v33;
        }

        else
        {
          v37 = v34;
        }

        v30 = sub_2273A4E34(v36, v37, 1, v30);
        if (!*(v32 + 16))
        {
          goto LABEL_11;
        }
      }

      v38 = (v30[3] >> 1) - v30[2];
      result = sub_2276640B0();
      v39 = *(result - 8);
      if (v38 < v33)
      {
        goto LABEL_56;
      }

      v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v41 = *(v39 + 72);
      swift_arrayInitWithCopy();

      if (v33)
      {
        v42 = v30[2];
        v43 = __OFADD__(v42, v33);
        v44 = v42 + v33;
        if (v43)
        {
          goto LABEL_57;
        }

        v30[2] = v44;
      }

LABEL_12:
      v26 += v28;
      if (!--v24)
      {

        v15 = MEMORY[0x277D84F90];
        v2 = v66[0];
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_227450838(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664E50();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22745089C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2274508FC(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v62 = sub_227666F60();
  v66 = *(v62 - 8);
  v3 = *(v66 + 8);
  MEMORY[0x28223BE20](v62);
  v53 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227663DD0();
  v56 = *(v5 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v5);
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84B0, &qword_227670D08);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v15 = sub_227663590();
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2276640B0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v70 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v72 = &v50 - v24;
  v25 = sub_227664990();
  v68 = *(v25 - 8);
  v69 = v25;
  v26 = *(v68 + 64);
  MEMORY[0x28223BE20](v25);
  v71 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a2 + 16);
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    v67 = v15;
    v73 = MEMORY[0x277D84F90];
    v63 = v14;
    sub_226F1F150(0, v28, 0);
    v30 = v63;
    v29 = v73;
    v31 = a2 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v61 = (v66 + 32);
    v64 = *(v20 + 72);
    v65 = 0;
    v57 = (v56 + 48);
    v58 = (v55 + 32);
    v50 = (v56 + 32);
    v56 = v55 + 8;
    v66 = v18;
    v51 = v5;
    v59 = v19;
    do
    {
      v32 = v72;
      sub_227141704(v31, v72);
      v33 = v32;
      v34 = v70;
      sub_227141704(v33, v70);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v35 = (*v58)(v18, v34, v67);
        MEMORY[0x28223BE20](v35);
        *(&v50 - 2) = v18;
        v36 = v18;
        v37 = v12;
        v38 = v65;
        sub_227543988(sub_226F1C4F4, v60, v30);
        v65 = v38;
        v12 = v37;
        sub_226F1C514(v30, v37);
        if ((*v57)(v37, 1, v5) == 1)
        {
          sub_226F1C584(v37);
          v39 = sub_227663560();
          v54 = v40;
          v55 = v39;
          sub_227663570();
          sub_227663580();
          v41 = v62;
          v12 = v37;
          v42 = v53;
          v5 = v51;
          sub_227666F30();
          sub_226F1C584(v63);
          v43 = v42;
          v30 = v63;
          (*v61)(v71, v43, v41);
        }

        else
        {
          sub_226F1C584(v30);
          v44 = *v50;
          v45 = v52;
          (*v50)(v52, v37, v5);
          v46 = v45;
          v30 = v63;
          v44(v71, v46, v5);
        }

        swift_storeEnumTagMultiPayload();
        (*v56)(v36, v67);
      }

      else
      {
        (*v61)(v71, v34, v62);
        swift_storeEnumTagMultiPayload();
      }

      sub_227141768(v72);
      v73 = v29;
      v48 = *(v29 + 16);
      v47 = *(v29 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_226F1F150(v47 > 1, v48 + 1, 1);
        v30 = v63;
        v29 = v73;
      }

      *(v29 + 16) = v48 + 1;
      sub_2271417C4(v71, v29 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v48);
      v31 += v64;
      --v28;
      v18 = v66;
    }

    while (v28);
  }

  return v29;
}

uint64_t sub_227450F9C()
{
  v0 = sub_227663560();
  v2 = v1;
  if (v0 == sub_227663D80() && v2 == v3)
  {
  }

  else
  {
    v4 = sub_22766D190();

    v5 = 0;
    if ((v4 & 1) == 0)
    {
      return v5 & 1;
    }
  }

  v6 = sub_227663580();
  v8 = v7;
  v9 = sub_227663DA0();
  if (v8)
  {
    if (v10)
    {
      if (v6 == v9 && v8 == v10)
      {

        v5 = 1;
      }

      else
      {
        v5 = sub_22766D190();
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (!v10)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_2274510E0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D48];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_227451160@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227667E40();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227451188(uint64_t a1)
{
  *(a1 + 24) = sub_2274511F0(&qword_2813A55B0);
  result = sub_2274511F0(&qword_2813A55A8);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2274511F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227667E50();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227451234()
{
  v1 = v0;
  v2 = sub_227669A70();
  v40 = v2;
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = *(v1 + 16);
  v39 = *(v1 + 32);
  v43 = v1;
  ObjectType = swift_getObjectType();
  v46 = v12;
  v13 = *MEMORY[0x277D4EC80];
  v41 = v3[13];
  v45 = v3 + 13;
  v41(v6, v13, v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6A8, &unk_227680630);
  sub_227453450();
  sub_2274534CC();
  sub_227669ED0();

  v38 = v3[1];
  v14 = v40;
  v38(v6, v40);
  v42 = v3 + 1;
  swift_unknownObjectRelease();
  v46 = v12;
  v15 = v41;
  v41(v6, *MEMORY[0x277D4E4F0], v14);
  swift_allocObject();
  swift_weakInit();
  sub_227664030();
  sub_227664420();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v16 = v38;
  v38(v6, v14);
  swift_unknownObjectRelease();
  v46 = v12;
  v15(v6, *MEMORY[0x277D4E648], v14);
  swift_allocObject();
  swift_weakInit();
  sub_2276676E0();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v16(v6, v14);
  swift_unknownObjectRelease();
  v46 = v12;
  v33 = *MEMORY[0x277D4E668];
  v17 = v41;
  (v41)(v6);
  swift_allocObject();
  swift_weakInit();
  v32 = sub_227664E20();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v18 = v38;
  v38(v6, v14);
  swift_unknownObjectRelease();
  v46 = v12;
  v31 = *MEMORY[0x277D4E6C8];
  v17(v6);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8568, &unk_227685490);
  v37 = sub_227453808();
  v36 = sub_22745388C();
  sub_227669EE0();

  v19 = v18;
  v18(v6, v40);
  swift_unknownObjectRelease();
  v46 = v12;
  v30 = *MEMORY[0x277D4E818];
  v20 = v41;
  (v41)(v6);
  swift_allocObject();
  swift_weakInit();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC28, &qword_227685EE0);
  v21 = sub_227453A20();
  v22 = sub_227453AA4();
  v29[0] = v21;
  v29[1] = v22;
  sub_227669EE0();

  v23 = v40;
  v19(v6, v40);
  swift_unknownObjectRelease();
  v46 = v12;
  v20(v6, *MEMORY[0x277D4E6A0], v23);
  swift_allocObject();
  v24 = v43;
  swift_weakInit();
  sub_227669EC0();

  v25 = v40;
  v19(v6, v40);
  swift_unknownObjectRelease();
  v26 = *(v24 + 40);
  ObjectType = *(v24 + 56);
  v39 = swift_getObjectType();
  v46 = v26;
  v20(v6, v33, v25);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_227669EE0();

  v27 = v38;
  v38(v6, v25);
  swift_unknownObjectRelease();
  v46 = v26;
  v20(v6, v31, v25);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v27(v6, v25);
  swift_unknownObjectRelease();
  v46 = v26;
  v41(v6, v30, v25);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v27(v6, v25);
  return swift_unknownObjectRelease();
}

uint64_t sub_227451C68(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_227451C88, 0, 0);
}

uint64_t sub_227451C88()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, v0 + 16);

    v3 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = *__swift_project_boxed_opaque_existential_0((*v3 + 120), *(*v3 + 144));
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *v5 = v0;
    v5[1] = sub_226FAA538;

    return sub_227320744();
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_227451DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_227664030();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227451E70, 0, 0);
}

uint64_t sub_227451E70()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    v0[16] = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_227451FC8;

    return sub_226F226A8();
  }

  else
  {
    v5 = v0[10];
    v6 = sub_227664420();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = v0[15];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_227451FC8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 136);
  v7 = *v3;
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;
  *(v4 + 176) = a3;

  return MEMORY[0x2822009F8](sub_2274520CC, 0, 0);
}

uint64_t sub_2274520CC()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = *(v0 + 176);
  v6 = __swift_project_boxed_opaque_existential_0((*(v0 + 128) + 120), *(*(v0 + 128) + 144));
  sub_227664020();
  sub_226EB2DFC(v2, v1, v5 & 1);
  v7 = *v6;
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *v8 = v0;
  v8[1] = sub_2274521BC;
  v9 = *(v0 + 120);
  v10 = *(v0 + 80);

  return sub_227320BCC(v10, v9);
}

uint64_t sub_2274521BC()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 168) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2274523DC;
  }

  else
  {
    v6 = sub_22745232C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22745232C()
{
  v1 = v0[10];
  v2 = sub_227664420();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2274523DC()
{
  v1 = v0[15];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[1];
  v3 = v0[21];

  return v2();
}

uint64_t sub_22745244C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v5 = sub_227667200();
  v3[12] = v5;
  v6 = *(v5 - 8);
  v3[13] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a2;
  v10 = a2[1];
  v3[14] = v8;
  v3[15] = v9;
  v3[16] = v10;

  return MEMORY[0x2822009F8](sub_227452518, 0, 0);
}

uint64_t sub_227452518()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    v0[17] = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v3 = swift_task_alloc();
    v0[18] = v3;
    *v3 = v0;
    v3[1] = sub_227452670;

    return sub_226F226A8();
  }

  else
  {
    v5 = v0[10];
    v6 = sub_2276676E0();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = v0[14];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_227452670(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 144);
  v7 = *v3;
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;
  *(v4 + 184) = a3;

  return MEMORY[0x2822009F8](sub_227452774, 0, 0);
}

uint64_t sub_227452774()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);

  sub_2276671F0();
  v8 = *__swift_project_boxed_opaque_existential_0((v5 + 120), *(v5 + 144));
  v9 = swift_task_alloc();
  *(v0 + 168) = v9;
  *v9 = v0;
  v9[1] = sub_227452868;
  v10 = *(v0 + 112);
  v11 = *(v0 + 80);

  return sub_227320F5C(v11, v10);
}

uint64_t sub_227452868()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_227452A44;
  }

  else
  {
    v3 = sub_22745297C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22745297C()
{
  v1 = v0[10];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v2 = sub_2276676E0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t sub_227452A44()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];
  v2 = v0[22];

  return v1();
}

uint64_t sub_227452ACC(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_227452AEC, 0, 0);
}

uint64_t sub_227452AEC()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F620FC;
    v5 = v0[10];

    return sub_226F23E24(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_227452C00(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_227452C24, 0, 0);
}

uint64_t sub_227452C24()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[11];

    return sub_226F24870(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_227452D38(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_227452D5C, 0, 0);
}

uint64_t sub_227452D5C()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_22710CB58;
    v5 = v0[11];

    return sub_226F21C5C(v5, 0);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_227452E74(uint64_t a1, void *a2, uint64_t a3)
{
  v3[11] = a1;
  v3[12] = a3;
  v3[13] = *a2;
  return MEMORY[0x2822009F8](sub_227452E9C, 0, 0);
}

uint64_t sub_227452E9C()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 104);
    sub_226E91B50(Strong + 64, v0 + 16);

    v4 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v5 = *v4;
    v6 = *(*v4 + 56);
    v7 = *(*v4 + 64);
    __swift_project_boxed_opaque_existential_0((*v4 + 32), v6);
    v8 = swift_allocObject();
    *(v0 + 112) = v8;
    *(v8 + 16) = v5;
    *(v8 + 24) = v3;
    v9 = *(v7 + 24);

    v15 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 120) = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8568, &unk_227685490);
    *v11 = v0;
    v11[1] = sub_2274530D4;

    return (v15)(v0 + 80, sub_227453DF0, v8, v12, v6, v7);
  }

  else
  {
    **(v0 + 88) = 0;
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_2274530D4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_2274531F0;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_226FABD80;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2274531F0()
{
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_22745325C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_22745327C, 0, 0);
}

uint64_t sub_22745327C()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[10];

    return sub_226F23E24(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2274533B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227451C68(a1, v1);
}

unint64_t sub_227453450()
{
  result = qword_281399078;
  if (!qword_281399078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC6A8, &unk_227680630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399078);
  }

  return result;
}

unint64_t sub_2274534CC()
{
  result = qword_281399070;
  if (!qword_281399070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC6A8, &unk_227680630);
    sub_227453940(&qword_28139B750, MEMORY[0x277D51C68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399070);
  }

  return result;
}

uint64_t sub_227453580(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_227451DAC(a1, a2, v2);
}

uint64_t sub_22745362C(uint64_t a1, uint64_t *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_22745244C(a1, a2, v2);
}

uint64_t sub_2274536D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227452ACC(a1, v1);
}

uint64_t sub_227453770(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227452C00(a1, v1);
}

unint64_t sub_227453808()
{
  result = qword_281398DD0;
  if (!qword_281398DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8568, &unk_227685490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398DD0);
  }

  return result;
}

unint64_t sub_22745388C()
{
  result = qword_281398DC8;
  if (!qword_281398DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8568, &unk_227685490);
    sub_227453940(&qword_28139B8C8, MEMORY[0x277D51068]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398DC8);
  }

  return result;
}

uint64_t sub_227453940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227453988(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227452D38(a1, v1);
}

unint64_t sub_227453A20()
{
  result = qword_281398C30;
  if (!qword_281398C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BDC28, &qword_227685EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C30);
  }

  return result;
}

unint64_t sub_227453AA4()
{
  result = qword_281398C28;
  if (!qword_281398C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BDC28, &qword_227685EE0);
    sub_227453B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C28);
  }

  return result;
}

unint64_t sub_227453B28()
{
  result = qword_28139B278;
  if (!qword_28139B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B278);
  }

  return result;
}

uint64_t sub_227453B7C(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_227452E74(a1, a2, v2);
}

uint64_t sub_227453C28(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22745325C(a1, v1);
}

uint64_t sub_227453CC0(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227452C00(a1, v1);
}

uint64_t sub_227453D58(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227452D38(a1, v1);
}

uint64_t sub_227453E0C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_227453E70()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v6, v2);
  v7 = *(v1 + 17);
  v28 = sub_2276693E0();
  v29[0] = v8;
  v9 = sub_2276693B0();
  v10 = 0;
  v11 = 0x8000000227691D80;
  v12 = 0xD000000000000018;
  if ((v9 & 1) == 0)
  {
    v12 = 0;
    v11 = 0;
  }

  v29[1] = v12;
  v29[2] = v11;
  v13 = MEMORY[0x277D84F90];
LABEL_4:
  v14 = &v29[2 * v10];
  while (++v10 != 3)
  {
    v15 = v14 + 2;
    v16 = *v14;
    v14 += 2;
    if (v16)
    {
      v17 = *(v15 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_226EB3F78(0, *(v13 + 2) + 1, 1, v13);
      }

      v19 = *(v13 + 2);
      v18 = *(v13 + 3);
      if (v19 >= v18 >> 1)
      {
        v13 = sub_226EB3F78((v18 > 1), v19 + 1, 1, v13);
      }

      *(v13 + 2) = v19 + 1;
      v20 = &v13[16 * v19];
      *(v20 + 4) = v17;
      *(v20 + 5) = v16;
      goto LABEL_4;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  swift_arrayDestroy();
  v21 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_0((v1 + 64), *(v1 + 88));
  v22 = sub_22766AC40();

  if (sub_2276693B0())
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_227669390() ^ 1;
  }

  v24 = *(v1 + 16);
  v25 = sub_227669410();
  return v24 & ~((v25 != sub_227669410()) | v23 | v22) & 1;
}

uint64_t sub_227454118@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26[1] = a1;
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBCE8, &unk_22767E460);
  v3 = *(v26[0] - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v26[0]);
  v6 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v10 + 8))(v13, v9);
  v14 = *(v2 + 17);
  v15 = sub_2276693E0();
  v17 = v16;
  v18 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_0((v2 + 24), *(v2 + 48));
  sub_22766AE80();
  swift_getObjectType();
  sub_22766AD90();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v17;
  v20 = v26[0];
  (*(v3 + 16))(v6, v8, v26[0]);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = (v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v3 + 32))(v23 + v21, v6, v20);
  v24 = (v23 + v22);
  *v24 = sub_227454780;
  v24[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC30, &qword_227685FA0);
  sub_227669270();
  swift_unknownObjectRelease();
  return (*(v3 + 8))(v8, v20);
}

uint64_t sub_22745442C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  sub_227454844(a1, v31);
  if (v32)
  {
    v14 = v31[0];
    sub_22766A730();

    v15 = v14;
    v16 = sub_22766B380();
    v17 = sub_22766C890();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = a2;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_226E97AE8(v18, a3, &v30);
      *(v19 + 12) = 2082;
      swift_getErrorValue();
      v21 = sub_22766D250();
      v23 = sub_226E97AE8(v21, v22, &v30);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_226E8E000, v16, v17, "ApplicationInstaller failed to request install for %{public}s with error: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v20, -1, -1);
      MEMORY[0x22AA9A450](v19, -1, -1);
    }

    else
    {
    }

    return (*(v7 + 8))(v11, v6);
  }

  else
  {
    sub_22766A730();

    v24 = sub_22766B380();
    v25 = sub_22766C8B0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_226E97AE8(a2, a3, &v30);
      _os_log_impl(&dword_226E8E000, v24, v25, "ApplicationInstaller successfully requested install for %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA9A450](v27, -1, -1);
      MEMORY[0x22AA9A450](v26, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
    return sub_2274548B4(v31);
  }
}

uint64_t sub_227454788(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBCE8, &unk_22767E460) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_2272B2730(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_227454844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC38, &qword_227685FA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274548B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC38, &qword_227685FA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227454964(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v5 = *(a2 + 16);
  if (!v5)
  {
    return 0;
  }

  v9 = *(a3(0) - 8);
  v10 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  sub_22745AE98(a4, a5);
  v12 = 0;
  while ((sub_22766BFB0() & 1) == 0)
  {
    ++v12;
    v10 += v11;
    if (v5 == v12)
    {
      return 0;
    }
  }

  return v12;
}

uint64_t getEnumTagSinglePayload for ConnectedComponent(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ConnectedComponent(uint64_t result, int a2, int a3)
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

uint64_t sub_227454B28(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276681F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2274582DC(*(a2 + *(v5 + 28)));
  if (v2)
  {
    return result;
  }

  v30 = result;
  v29 = 0;
  sub_227667240();
  v15 = a2;
  v16 = sub_227668090();
  (*(v10 + 8))(v13, v9);
  v17 = v29;
  v18 = sub_227433850(*(v15 + *(v5 + 32)));
  v29 = v17;
  v19 = sub_226F43CB8(v18);

  result = sub_2274424B0(v15, a1);
  if (v16 < 0)
  {
    goto LABEL_17;
  }

  if (!v16)
  {
LABEL_13:
  }

  v20 = 0;
  v21 = 0;
  v22 = v30 + 32;
  while (1)
  {
    result = sub_22718C954(v21, v19);
    if ((result & 1) == 0)
    {
      WorkoutPlanGenerationScaffold.withUnscheduledDay()(v8);
      sub_227442514(a1);
      sub_227442570(v8, a1);
      goto LABEL_6;
    }

    v23 = *(v30 + 16);
    if (!v23)
    {
      break;
    }

    v24 = v20 % v23;
    if (v24 < 0)
    {
      goto LABEL_16;
    }

    v25 = *(v22 + 8 * v24);

    WorkoutPlanGenerationScaffold.withScheduledDay(withDailySchedule:)(v26, v8);

    sub_227442514(a1);
    sub_227442570(v8, a1);
    if (__OFADD__(v20++, 1))
    {
      __break(1u);
      goto LABEL_13;
    }

LABEL_6:
    if (v16 == ++v21)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_227454D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v34[2] = a2;
  v7 = sub_227664B70();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v34 - v12;
  v14 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v34 - v20;
  v22 = *(a1 + *(v19 + 48));
  v23 = sub_227668780();
  if (v23 == sub_227668780())
  {
    v34[1] = v4;
    sub_2274424B0(a1, v21);
    v24 = *(a1 + *(v14 + 64));
    v25 = a3;
    if (!*(v24 + 16))
    {
      return sub_227442570(v21, v25);
    }

    v26 = sub_226F491D8(11, 0, 1);
    if ((v27 & 1) == 0 || *(*(v24 + 56) + 8 * v26) < 1)
    {
LABEL_14:
      if (*(v24 + 16))
      {
        v32 = sub_226F491D8(0, 0, 1);
        if ((v33 & 1) != 0 && *(*(v24 + 56) + 8 * v32) >= 1)
        {
          sub_227456EAC(v21, v18);
          sub_227442514(v21);
          sub_227442570(v18, v21);
        }
      }

      return sub_227442570(v21, v25);
    }

    v28 = sub_227664B40();
    v29 = *(v28 + 16);
    if (!v29)
    {

      v31 = v35;
      (*(v35 + 104))(v13, *MEMORY[0x277D50DB0], v7);
      goto LABEL_13;
    }

    result = sub_2274580D4(v29);
    v31 = v35;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v28 + 16))
    {
      (*(v35 + 16))(v11, v28 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * result, v7);

      (*(v31 + 32))(v13, v11, v7);
LABEL_13:
      sub_227455104(v21, v13, v18);
      (*(v31 + 8))(v13, v7);
      sub_227442514(v21);
      sub_227442570(v18, v21);
      goto LABEL_14;
    }

    __break(1u);
  }

  else
  {

    return sub_2274424B0(a1, a3);
  }

  return result;
}

uint64_t sub_227455104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v120 = a2;
  v125 = a3;
  v5 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v119 = v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v122 = v117 - v10;
  v127 = sub_227664B70();
  v123 = *(v127 - 8);
  v11 = *(v123 + 64);
  v12 = MEMORY[0x28223BE20](v127);
  MEMORY[0x28223BE20](v12);
  v121 = v117 - v13;
  v14 = *(v6 + 68);
  v124 = a1;
  v15 = *(a1 + v14);
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  v118 = v18;
  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v141 = MEMORY[0x277D84F90];
  v129 = v16;
  sub_226F1F090(0, v16, 0);
  v19 = 0;
  v17 = v141;
  v126 = v15;
  v131 = v15 + 32;
  v20 = 40;
  v136 = xmmword_227685FB0;
  do
  {
    v133 = v17;
    *&v132 = v19;
    v21 = *(v131 + 8 * v19);
    v22 = *(v21 + 16);

    if (v22)
    {
      v3 = sub_226F48150();
      sub_226EC1E18();
      v24 = 0;
      v25 = v21;
      v26 = (v21 + 64);
      while (1)
      {
        v27 = *v26;
        v137 = *(v26 - 1);
        v138 = v27;
        v139 = v136;
        v140 = 1;
        v23 = sub_227663B20();
        if (v23)
        {
          break;
        }

        ++v24;
        v26 += 40;
        if (v22 == v24)
        {
          goto LABEL_9;
        }
      }

      v22 = v24;
LABEL_9:
      v21 = v25;
    }

    v28 = *(v21 + 16);
    if (v28 >= v22)
    {
      if (v22 == v28)
      {

        v29 = 0;
        goto LABEL_26;
      }

      v135 = 1;
      *&v134 = v28;
    }

    else
    {
      v135 = -1;
      *&v134 = v22;
      v22 = v28;
    }

    v29 = 0;
    v130 = v21;
    v30 = v21 + 32;
    do
    {
      v31 = __OFADD__(v29, v135);
      v29 += v135;
      if (v31)
      {
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if (v22 == v28)
      {
        goto LABEL_101;
      }

      do
      {
        v32 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (v32 == v28)
        {
          v22 = v28;
          goto LABEL_17;
        }

        if (v32 >= v28)
        {
          goto LABEL_35;
        }

        v33 = v30 + 40 * v32;
        v34 = *(v33 + 32);
        v137 = *(v33 + 16);
        v138 = v34;
        v139 = v136;
        v140 = 1;
        v3 = sub_226F48150();
        sub_226EC1E18();
        v23 = sub_227663B20();
        ++v22;
      }

      while ((v23 & 1) == 0);
      v22 = v32;
LABEL_17:
      ;
    }

    while (v22 != v134);

LABEL_26:
    v17 = v133;
    v141 = v133;
    v36 = v133[2];
    v35 = v133[3];
    v3 = v36 + 1;
    v37 = v132;
    if (v36 >= v35 >> 1)
    {
      sub_226F1F090((v35 > 1), v36 + 1, 1);
      v37 = v132;
      v17 = v141;
    }

    v19 = v37 + 1;
    *(v17 + 16) = v3;
    *(v17 + 8 * v36 + 32) = v29;
  }

  while (v19 != v129);
  v80 = v126;
  v81 = *(v126 + 16);
  v20 = MEMORY[0x277D84F90];
  if (!v81)
  {
    goto LABEL_31;
  }

  v141 = MEMORY[0x277D84F90];
  v133 = v17;
  sub_226F1FE28(0, v81, 0);
  v82 = 0;
  v20 = v141;
  v117[1] = OBJC_IVAR____TtC15SeymourServices21WorkoutPlanFocusUtils_configuration;
  v117[0] = v81;
  while (2)
  {
    if (v82 >= *(v80 + 16))
    {
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v135 = v20;
    v130 = v82;
    v83 = *(v131 + 8 * v82);

    v84 = sub_227667310();
    v85 = v84;
    v86 = *(v83 + 16);
    if (!v86)
    {
LABEL_82:

      v101 = 0;
      goto LABEL_83;
    }

    v87 = 0;
    *&v132 = v83 + 32;
    v88 = v84 + 56;
    *&v134 = v83;
    v129 = v86;
    while (2)
    {
      if (v87 >= *(v83 + 16))
      {
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      if (!*(v85 + 16))
      {
LABEL_73:
        if (++v87 == v86)
        {
          goto LABEL_82;
        }

        continue;
      }

      break;
    }

    v89 = v132 + 40 * v87;
    v90 = *(v89 + 8);
    v92 = *(v89 + 24);
    v93 = *(v89 + 32);
    v94 = *(v85 + 40);
    *&v139 = *(v89 + 16);
    v91 = v139;
    *(&v139 + 1) = v92;
    v140 = v93;
    sub_22766D370();
    *&v136 = v90;

    sub_226EB396C(v91, v92, v93);
    sub_226EB396C(v91, v92, v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    v95 = sub_22766D3F0();
    v96 = -1 << *(v85 + 32);
    v97 = v95 & ~v96;
    if (((*(v88 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
    {
LABEL_72:
      sub_226EB2DFC(v91, v92, v93);

      sub_226EB2DFC(v91, v92, v93);
      v83 = v134;
      v86 = v129;
      goto LABEL_73;
    }

    v98 = ~v96;
    sub_226F48150();
    sub_226EC1E18();
    while (1)
    {
      v99 = *(v85 + 48) + 24 * v97;
      v100 = *(v99 + 16);
      v137 = *v99;
      v138 = v100;
      *&v139 = v91;
      *(&v139 + 1) = v92;
      v140 = v93;
      if (sub_227663B20())
      {
        break;
      }

      v97 = (v97 + 1) & v98;
      if (((*(v88 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    sub_226EB2DFC(v91, v92, v93);
    sub_226EB2DFC(v91, v92, v93);

    v101 = 1;
LABEL_83:
    v20 = v135;
    v141 = v135;
    v103 = *(v135 + 16);
    v102 = *(v135 + 24);
    v17 = v133;
    v104 = v130;
    if (v103 >= v102 >> 1)
    {
      sub_226F1FE28((v102 > 1), v103 + 1, 1);
      v104 = v130;
      v17 = v133;
      v20 = v141;
    }

    v82 = v104 + 1;
    *(v20 + 16) = v103 + 1;
    *(v20 + v103 + 32) = v101;
    v80 = v126;
    if (v82 != v117[0])
    {
      continue;
    }

    break;
  }

LABEL_31:
  v28 = v17;
  v23 = sub_2274CFCF0(v17);
  if (v38)
  {

    return sub_2274424B0(v124, v125);
  }

LABEL_36:
  v40 = v23;
  v133 = v28;
  if (v23 == 2)
  {
    v41 = 0;
    v42 = v133;
    v43 = v133[2];
    v44 = v133 + 4;
    LODWORD(v129) = *MEMORY[0x277D50DB0];
    v45 = (v123 + 104);
    v128 = *MEMORY[0x277D50DA0];
    LODWORD(v136) = *MEMORY[0x277D50DA8];
    v135 = v20;
    v131 = v20 + 31;
    v46 = 1;
    v47 = MEMORY[0x277D84F90];
    v132 = xmmword_2276728D0;
    v134 = xmmword_227670CD0;
LABEL_38:
    v48 = v41;
    while (v43 != v48)
    {
      if (v48 >= *(v42 + 16))
      {
        __break(1u);
        goto LABEL_105;
      }

      v41 = v48 + 1;
      v49 = v44[v48];
      if (v49 == 2)
      {
        if (v46)
        {
          v130 = v47;
          v54 = *(v123 + 72);
          LODWORD(v55) = *(v123 + 80);
          goto LABEL_49;
        }

        if (v48 >= *(v135 + 16))
        {
          goto LABEL_107;
        }

        v54 = *(v123 + 72);
        v55 = *(v123 + 80);
        if (*(v131 + v41) == 1)
        {
          v130 = v47;
LABEL_49:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE28, &qword_227679890);
          v56 = (v55 + 32) & ~v55;
          v53 = swift_allocObject();
          *(v53 + 16) = v132;
          v57 = v53 + v56;
          v58 = *v45;
          v59 = v54;
          v60 = v45;
          v61 = v136;
          v62 = v127;
          v58(v57, v136, v127);
          v63 = v61;
          v45 = v60;
          v58(v57 + v59, v63, v62);
          v47 = v130;
LABEL_50:
          v46 = 0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_51:
            v65 = v47[2];
            v64 = v47[3];
            v42 = v133;
            if (v65 >= v64 >> 1)
            {
              v47 = sub_2273A61B8((v64 > 1), v65 + 1, 1, v47);
              v42 = v133;
            }

            v47[2] = v65 + 1;
            v66 = &v47[2 * v65];
            v66[4] = v41 - 1;
            v66[5] = v53;
            goto LABEL_38;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE28, &qword_227679890);
          v67 = (v55 + 32) & ~v55;
          v53 = swift_allocObject();
          *(v53 + 16) = v132;
          v68 = v53 + v67;
          v69 = *v45;
          v70 = v127;
          (*v45)(v68, v129, v127);
          v69(v68 + v54, v128, v70);
          v46 = 1;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_51;
          }
        }

        v47 = sub_2273A61B8(0, v47[2] + 1, 1, v47);
        goto LABEL_51;
      }

      ++v48;
      if (v49 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE28, &qword_227679890);
        v50 = v123;
        v51 = *(v123 + 72);
        v52 = (*(v123 + 80) + 32) & ~*(v123 + 80);
        v53 = swift_allocObject();
        *(v53 + 16) = v134;
        (*(v50 + 104))(v53 + v52, v136, v127);
        goto LABEL_50;
      }
    }

    if (v47[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9860, &qword_227674CB0);
      v79 = sub_22766D010();
    }

    else
    {
      v79 = MEMORY[0x277D84F98];
    }

    *&v137 = v79;
    sub_227457D68(v47, 1, &v137);

    WorkoutPlanGenerationScaffold.withBodyFocuses(bodyFocusesByDay:forModality:)(v137, 11, 0, 1, v125);
  }

  v71 = v133[2];
  if (v71)
  {
    v72 = v133 + 4;
    v73 = MEMORY[0x277D84F90];
    do
    {
      v77 = *v72++;
      v76 = v77;
      if (v77 >= 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v137 = v73;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226F1F090(0, *(v73 + 16) + 1, 1);
          v73 = v137;
        }

        v75 = *(v73 + 16);
        v74 = *(v73 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_226F1F090((v74 > 1), v75 + 1, 1);
          v73 = v137;
        }

        *(v73 + 16) = v75 + 1;
        *(v73 + 8 * v75 + 32) = v76;
      }

      --v71;
    }

    while (v71);
  }

  else
  {
    v73 = MEMORY[0x277D84F90];
  }

  v105 = *(v73 + 16);

  if (v105 <= 3)
  {

    sub_227455FB8(v124, v133, v125);
  }

  if (v105 < 7)
  {
    v106 = sub_22745A0B0(v133);
    v3 = v123;
    v107 = v123 + 16;
    v108 = *(v123 + 16);
    v22 = v121;
    v28 = v127;
    v108(v121, v120, v127);
    v29 = v122;
    sub_2274424B0(v124, v122);
    v109 = *(v106 + 16);
    if (v109)
    {
      *&v132 = v106;
      v135 = v20;
      *&v136 = v107;
      v110 = (v106 + 32);
      v111 = (v3 + 8);
      v123 = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v112 = v119;
      v113 = v118;
      *&v134 = v108;
      do
      {
        v114 = *v110++;
        v137 = v114;
        v115 = sub_227456678(v113, &v137, v133, v135, v22);
        v116 = *v111;
        (*v111)(v22, v28);
        (v134)(v22, v113, v28);
        WorkoutPlanGenerationScaffold.withBodyFocuses(bodyFocusesByDay:forModality:)(v115, 11, 0, 1, v112);
        v28 = v127;

        v116(v113, v28);
        sub_227442514(v29);
        sub_227442570(v112, v29);
        --v109;
      }

      while (v109);
      goto LABEL_103;
    }

LABEL_102:
    v116 = *(v3 + 8);
LABEL_103:
    v116(v22, v28);

    return sub_227442570(v29, v125);
  }

  if (v40 == 1 && v105 == 7)
  {
    return sub_227456308(v124, v125);
  }

  else
  {
    return sub_2274424B0(v124, v125);
  }
}

uint64_t sub_227455FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_227664B70();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *(a2 + 16);
  v12 = a2 + 32;
  v13 = *MEMORY[0x277D50DA8];
  v15 = (v14 + 104);
  v16 = v14 + 16;
  v42 = v14;
  v40 = (v14 + 8);
  v17 = MEMORY[0x277D84F90];
  while (v11 != v10)
  {
    if (v10 >= v11)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v18 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_21;
    }

    v19 = *(v12 + 8 * v10++);
    if (v19)
    {
      v43 = v16;
      v44 = v17;
      v20 = *v15;
      v39 = v15;
      v20(v9, v13, v6);
      if (v19 < 0)
      {
        goto LABEL_22;
      }

      v35 = v12;
      v36 = a3;
      v38 = v13;
      v37 = a1;
      v21 = sub_22766C380();
      *(v21 + 16) = v19;
      v22 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v23 = *(v42 + 16);
      v41 = v21;
      v23(v21 + v22, v9, v6);
      v24 = v19 - 1;
      if (v19 != 1)
      {
        v25 = v22;
        v26 = *(v42 + 72);
        v27 = v41 + v26 + v25;
        do
        {
          v23(v27, v9, v6);
          v27 += v26;
          --v24;
        }

        while (v24);
      }

      (*v40)(v9, v6);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        a3 = v36;
        a1 = v37;
        v17 = v44;
      }

      else
      {
        v17 = sub_2273A61B8(0, v44[2] + 1, 1, v44);
        a3 = v36;
        a1 = v37;
      }

      v29 = v17[2];
      v28 = v17[3];
      if (v29 >= v28 >> 1)
      {
        v17 = sub_2273A61B8((v28 > 1), v29 + 1, 1, v17);
      }

      v12 = v35;
      v17[2] = v29 + 1;
      v30 = &v17[2 * v29];
      v31 = v41;
      v30[4] = v10 - 1;
      v30[5] = v31;
      v10 = v18;
      v13 = v38;
      v15 = v39;
      v16 = v43;
    }
  }

  if (v17[2])
  {
    v32 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9860, &qword_227674CB0);
    v33 = sub_22766D010();
    v17 = v32;
  }

  else
  {
    v33 = MEMORY[0x277D84F98];
  }

  v45 = v33;
  sub_227457D68(v17, 1, &v45);
  WorkoutPlanGenerationScaffold.withBodyFocuses(bodyFocusesByDay:forModality:)(v45, 11, 0, 1, a3);
}

uint64_t sub_227456308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30[0] = a2;
  v30[1] = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC60, &qword_227686048);
  v2 = *(*(v44 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v44);
  v42 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v43 = v30 - v5;
  v6 = sub_227667340();
  v7 = *(v6 + 16);
  if (v7)
  {
    v46 = MEMORY[0x277D84F90];
    sub_226F1FE08(0, v7, 0);
    v8 = v46;
    v41 = *(v6 + 16);
    v9 = sub_227664B70();
    v10 = 0;
    v11 = *(v9 - 8);
    v12 = *(v11 + 80);
    v37 = (v12 + 32) & ~v12;
    v38 = v12;
    v36 = v6 + v37;
    v34 = v9;
    v35 = v11 + 16;
    v32 = v11 + 32;
    v33 = v11;
    v31 = xmmword_227670CD0;
    v39 = v7;
    v40 = v6;
    v13 = v42;
    do
    {
      if (v41 == v10)
      {
        __break(1u);
LABEL_14:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      if (v10 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v14 = v43;
      v15 = v44;
      v16 = *(v44 + 48);
      v17 = v33;
      v18 = v36 + *(v33 + 72) * v10;
      v19 = *(v33 + 16);
      v45 = v8;
      v20 = v34;
      v19(&v43[v16], v18, v34);
      *v13 = v10;
      v21 = *(v15 + 48);
      (*(v17 + 32))(&v13[v21], &v14[v16], v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE28, &qword_227679890);
      v22 = v37;
      v23 = swift_allocObject();
      *(v23 + 16) = v31;
      v24 = v20;
      v8 = v45;
      v19((v23 + v22), &v13[v21], v24);
      sub_226E97D1C(v13, &qword_27D7BDC60, &qword_227686048);
      v46 = v8;
      v26 = v8[2];
      v25 = v8[3];
      if (v26 >= v25 >> 1)
      {
        sub_226F1FE08((v25 > 1), v26 + 1, 1);
        v8 = v46;
      }

      v8[2] = v26 + 1;
      v27 = &v8[2 * v26];
      v27[4] = v10;
      v27[5] = v23;
      ++v10;
      v6 = v40;
    }

    while (v39 != v10);

    if (!v8[2])
    {
      goto LABEL_11;
    }
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_11:
      v28 = MEMORY[0x277D84F98];
      goto LABEL_12;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9860, &qword_227674CB0);
  v28 = sub_22766D010();
LABEL_12:
  v46 = v28;
  sub_227457D68(v8, 1, &v46);
  WorkoutPlanGenerationScaffold.withBodyFocuses(bodyFocusesByDay:forModality:)(v46, 11, 0, 1, v30[0]);
}

uint64_t sub_227456678(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_227664B70();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v80 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v71 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v18);
  v81 = &v71 - v21;
  v23 = *a2;
  v22 = a2[1];
  v85 = *(v11 + 16);
  v86 = v11 + 16;
  v85(a1, a5, v10);
  v94 = v23;
  v95 = v22;
  v24 = sub_22745A574(&v94, a3, a4);
  v25 = v24;
  v72 = v24[2];
  if (!v72)
  {

    return MEMORY[0x277D84F98];
  }

  v26 = 0;
  v73 = v24 + 4;
  v79 = *MEMORY[0x277D50DA0];
  v84 = (v11 + 104);
  v89 = (v11 + 8);
  v77 = v11 + 32;
  v27 = MEMORY[0x277D84F98];
  v82 = v11;
  v78 = v20;
  v71 = v24;
  while (v26 < v25[2])
  {
    v30 = &v73[3 * v26];
    v31 = v30[1];
    if (v31 < 0)
    {
      goto LABEL_50;
    }

    v76 = *v30;
    if (v31)
    {
      v74 = v27;
      v75 = v26;
      v87 = *(v30 + 16);
      v93 = MEMORY[0x277D84F90];
      sub_226F1FDE8(0, v31, 0);
      v90 = v93;
      v83 = *v84;
      while (1)
      {
        v83(v20, v79, v10);
        sub_22745AE98(&qword_27D7BDC58, MEMORY[0x277D50DB8]);
        sub_22766C290();
        sub_22766C290();
        v32 = v94 == v91 && v95 == v92;
        v33 = v87;
        if (!v32)
        {
          v33 = sub_22766D190() & v87;
        }

        v34 = *v89;
        (*v89)(v20, v10);

        if (v33)
        {
          sub_227456D50(v17);
        }

        else
        {
          v85(v17, a1, v10);
        }

        v35 = sub_227664B40();
        v36 = sub_227454964(v17, v35, MEMORY[0x277D50DB8], &qword_27D7BA7E8, MEMORY[0x277D50DB8]);
        v38 = v37;

        v39 = (v38 & 1) != 0 ? 0 : v36;
        v40 = v39 - 1;
        if (__OFSUB__(v39, 1))
        {
          break;
        }

        v41 = *(sub_227664B40() + 16);

        v42 = __OFADD__(v40, v41);
        v43 = v40 + v41;
        if (v42)
        {
          goto LABEL_45;
        }

        v44 = *(sub_227664B40() + 16);

        if (!v44)
        {
          goto LABEL_46;
        }

        v45 = v43 % v44;
        v46 = sub_227664B40();
        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        if (v45 >= *(v46 + 16))
        {
          goto LABEL_48;
        }

        v88 = v31;
        v47 = v82;
        v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v49 = *(v82 + 72);
        v50 = v80;
        v85(v80, v46 + v48 + v49 * v45, v10);

        v34(a1, v10);
        v51 = *(v47 + 32);
        v51(a1, v50, v10);
        v52 = v81;
        v51(v81, v17, v10);
        v53 = v90;
        v93 = v90;
        v55 = *(v90 + 16);
        v54 = *(v90 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_226F1FDE8(v54 > 1, v55 + 1, 1);
          v52 = v81;
          v53 = v93;
        }

        *(v53 + 16) = v55 + 1;
        v90 = v53;
        v51((v53 + v48 + v55 * v49), v52, v10);
        v31 = v88 - 1;
        v20 = v78;
        if (v88 == 1)
        {
          v11 = v82;
          v25 = v71;
          v26 = v75;
          v27 = v74;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      break;
    }

    v90 = MEMORY[0x277D84F90];
LABEL_30:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = v27;
    v58 = sub_226F491D4(v76);
    v59 = v27[2];
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      goto LABEL_51;
    }

    if (v27[3] >= v61)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v27 = v94;
        if (v57)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v66 = v25;
        v67 = v11;
        v68 = v57;
        sub_226FF309C();
        v69 = v68;
        v11 = v67;
        v25 = v66;
        v27 = v94;
        if (v69)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      LODWORD(v88) = v57;
      sub_226FE8748(v61, isUniquelyReferenced_nonNull_native);
      v62 = sub_226F491D4(v76);
      if ((v88 & 1) != (v63 & 1))
      {
        goto LABEL_53;
      }

      v58 = v62;
      v27 = v94;
      if (v88)
      {
LABEL_3:
        v28 = v27[7];
        v29 = *(v28 + 8 * v58);
        *(v28 + 8 * v58) = v90;

        goto LABEL_4;
      }
    }

    v27[(v58 >> 6) + 8] |= 1 << v58;
    *(v27[6] + 8 * v58) = v76;
    *(v27[7] + 8 * v58) = v90;
    v64 = v27[2];
    v42 = __OFADD__(v64, 1);
    v65 = v64 + 1;
    if (v42)
    {
      goto LABEL_52;
    }

    v27[2] = v65;
LABEL_4:
    if (++v26 == v72)
    {

      return v27;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_227456D50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_227664B40();
  v4 = sub_227454964(v1, v3, MEMORY[0x277D50DB8], &qword_27D7BA7E8, MEMORY[0x277D50DB8]);
  v6 = v5;

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = *(sub_227664B40() + 16);

  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = *(sub_227664B40() + 16);

  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v12 % v13;
  result = sub_227664B40();
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = result;
  if (v14 >= *(result + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v16 = sub_227664B70();
  (*(*(v16 - 8) + 16))(a1, v15 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)) + *(*(v16 - 8) + 72) * v14, v16);
}

uint64_t sub_227456EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + *(type metadata accessor for WorkoutPlanGenerationScaffold() + 60));
  v25 = *(v2 + 16);
  if (v25)
  {
    v3 = 0;
    v23 = v2 + 32;
    v22 = MEMORY[0x277D84F90];
    v24 = v2;
    while (v3 < *(v2 + 16))
    {
      v4 = *(v23 + 8 * v3);
      v26 = v3 + 1;

      v6 = sub_226F43E68(v5, sub_2274571F0, 0);
      v7 = v6;
      if (!*(v6 + 16))
      {
        goto LABEL_3;
      }

      v8 = *(v6 + 40);
      v29 = 0;
      v30 = 0;
      v31 = 1;
      sub_22766D370();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      v9 = sub_22766D3F0();
      v10 = -1 << *(v7 + 32);
      v11 = v9 & ~v10;
      if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
      {
        v12 = ~v10;
        sub_226F48150();
        sub_226EC1E18();
        while (1)
        {
          v13 = *(v7 + 48) + 24 * v11;
          v14 = *(v13 + 16);
          v27 = *v13;
          v28 = v14;
          v29 = 0;
          v30 = 0;
          v31 = 1;
          if (sub_227663B20())
          {
            break;
          }

          v11 = (v11 + 1) & v12;
          if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v15 = sub_2274571FC(v4);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2273A61B8(0, v22[2] + 1, 1, v22);
        }

        v17 = v22[2];
        v16 = v22[3];
        if (v17 >= v16 >> 1)
        {
          v22 = sub_2273A61B8((v16 > 1), v17 + 1, 1, v22);
        }

        v22[2] = v17 + 1;
        v18 = &v22[2 * v17];
        v18[4] = v3;
        v18[5] = v15;
      }

      else
      {
LABEL_3:
      }

      ++v3;
      v2 = v24;
      if (v26 == v25)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
LABEL_18:
    if (v22[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9860, &qword_227674CB0);
      *&v27 = sub_22766D010();
      sub_227457D68(v22, 1, &v27);
      WorkoutPlanGenerationScaffold.withBodyFocuses(bodyFocusesByDay:forModality:)(v27, 0, 0, 1, a2);
    }

    else
    {
      sub_2274424B0(a1, a2);
    }
  }

  return result;
}

uint64_t sub_2274571FC(uint64_t a1)
{
  v2 = sub_227664B70();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v93 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v95 = &v85 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v100 = &v85 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v99 = &v85 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v98 = &v85 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v97 = &v85 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v91 = &v85 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v85 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v87 = &v85 - v21;
  result = MEMORY[0x28223BE20](v20);
  v92 = &v85 - v24;
  v117 = MEMORY[0x277D84FA0];
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = 0;
    v96 = OBJC_IVAR____TtC15SeymourServices21WorkoutPlanFocusUtils_configuration;
    v104 = v23 + 32;
    v101 = (v23 + 16);
    v102 = (v23 + 8);
    v86 = *MEMORY[0x277D50DA8];
    v103 = v23;
    v85 = (v23 + 104);
    v90 = v25 - 1;
    v94 = MEMORY[0x277D84F90];
    v27 = a1 + 64;
    v89 = a1 + 64;
    v105 = v2;
    v109 = v25;
    while (1)
    {
      v28 = (v27 + 40 * v26);
      v29 = v26;
      while (1)
      {
        if (v29 >= v25)
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          return result;
        }

        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_44;
        }

        v31 = *(v28 - 4);
        v30 = *(v28 - 3);
        v33 = *(v28 - 2);
        v32 = *(v28 - 1);
        v34 = *v28;
        v116 = 0;
        v110 = v29;
        v111 = v33;
        v112 = v32;
        LOBYTE(v113) = v34;
        v35 = v30;

        sub_226EB396C(v33, v32, v34);
        sub_226F48150();
        sub_226EC1E18();
        result = sub_227663B40();
        if (result)
        {
          break;
        }

        v116 = 11;
        v111 = v33;
        v112 = v32;
        LOBYTE(v113) = v34;
        if (sub_227663B40())
        {
          v111 = v31;
          v112 = v35;
          v113 = v33;
          v114 = v32;
          v115 = v34;
          v36 = sub_22745A7D4(&v111);
          if (v36[2])
          {
            v37 = v103;
            v38 = *(v103 + 16);
            v39 = v36 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
            v106 = v35;
            v107 = v26;
            v40 = v98;
            v108 = v34;
            v41 = v105;
            v38(v98, v39, v105);

            v42 = v97;
            (*(v37 + 32))(v97, v40, v41);
            v43 = v100;
            v38(v100, v42, v41);
            v44 = v99;
            v45 = v43;
            v26 = v107;
            sub_2270C0F38(v99, v45);

            sub_226EB2DFC(v33, v32, v108);
            v46 = *(v37 + 8);
            v46(v44, v41);
            v47 = v42;
            v25 = v109;
            result = (v46)(v47, v41);
            goto LABEL_6;
          }

          sub_226EB2DFC(v33, v32, v34);
        }

        else
        {
          v116 = 8;
          v111 = v33;
          v112 = v32;
          LOBYTE(v113) = v34;
          if (sub_227663B40())
          {
            goto LABEL_18;
          }

          v48 = sub_227667320();
          if (!*(v48 + 16) || (v49 = sub_226F491D8(v33, v32, v34), (v50 & 1) == 0))
          {

LABEL_18:

            result = sub_226EB2DFC(v33, v32, v34);
            goto LABEL_5;
          }

          v51 = v103;
          v52 = *(v48 + 56) + *(v103 + 72) * v49;
          v53 = *(v103 + 16);
          v54 = v93;
          v108 = v34;
          v106 = v35;
          v55 = v105;
          v56 = v53;
          v53(v93, v52, v105);

          v57 = v95;
          (*(v51 + 32))(v95, v54, v55);
          v107 = v26;
          v58 = v100;
          v56(v100, v57, v55);
          v59 = v99;
          v60 = v58;
          v26 = v107;
          sub_2270C0F38(v99, v60);

          sub_226EB2DFC(v33, v32, v108);
          v61 = *(v51 + 8);
          v61(v59, v55);
          result = (v61)(v95, v55);
        }

LABEL_5:
        v25 = v109;
LABEL_6:
        v29 = v110 + 1;
        v28 += 40;
        if (v26 == v25)
        {
          goto LABEL_42;
        }
      }

      v108 = v34;
      v62 = v109;
      v63 = 0;
      v64 = 0;
      v65 = v117;
      v66 = 1 << *(v117 + 32);
      v67 = v105;
      v68 = v92;
      while (1)
      {
        v69 = *(v117 + 8 * v64 + 56);
        if (v69)
        {
          break;
        }

        ++v64;
        v63 -= 64;
        if ((v66 + 63) >> 6 == v64)
        {
          goto LABEL_24;
        }
      }

      v70 = __clz(__rbit64(v69));
      if (v70 - v66 == v63)
      {
LABEL_24:
        (*v85)(v92, v86, v105);
        (*v101)(v91, v68, v67);
        goto LABEL_32;
      }

      if (-v63 < 0)
      {
        goto LABEL_45;
      }

      v71 = v70 - v63;
      if (v71 >= v66)
      {
        goto LABEL_45;
      }

      if (((*(v117 + 56 + 8 * (v64 & 0x3FFFFFFFFFFFFFFLL)) >> v70) & 1) == 0)
      {
        goto LABEL_46;
      }

      v72 = v103;
      v73 = *(v117 + 48) + *(v103 + 72) * v71;
      v74 = v88;
      v75 = v105;
      v107 = *(v103 + 16);
      v107(v88, v73, v105);
      v76 = *(v72 + 32);
      v77 = v87;
      v106 = v76;
      (v76)(v87, v74, v75);
      if (*(v65 + 16) == 1)
      {
        v78 = v92;
        v106();
      }

      else
      {
        (*v102)(v77, v75);
        v78 = v92;
        (*v85)(v92, v86, v75);
      }

      v107(v91, v78, v75);
LABEL_32:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_2273A6FA4(0, v94[2] + 1, 1, v94);
      }

      v79 = v108;
      v81 = v94[2];
      v80 = v94[3];
      if (v81 >= v80 >> 1)
      {
        v94 = sub_2273A6FA4(v80 > 1, v81 + 1, 1, v94);
      }

      v82 = v94;
      v94[2] = v81 + 1;
      v83 = v82 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v81;
      v84 = v105;
      (*(v103 + 32))(v83, v91, v105);

      if (v90 == v110)
      {
        sub_226EB2DFC(v33, v32, v79);
        result = (*v102)(v92, v84);
      }

      else
      {

        sub_226EB2DFC(v33, v32, v79);
        result = (*v102)(v92, v84);
        v117 = MEMORY[0x277D84FA0];
      }

      v25 = v62;
      v27 = v89;
      if (v26 == v62)
      {
        goto LABEL_42;
      }
    }
  }

  v94 = MEMORY[0x277D84F90];
LABEL_42:

  return v94;
}

uint64_t sub_227457BCC()
{
  v1 = OBJC_IVAR____TtC15SeymourServices21WorkoutPlanFocusUtils_configuration;
  v2 = sub_227667370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15SeymourServices21WorkoutPlanFocusUtils_objectiveUtils);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanFocusUtils()
{
  result = qword_27D7BDC40;
  if (!qword_27D7BDC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227457CCC()
{
  result = sub_227667370();
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

void sub_227457D68(void *a1, char a2, void *a3)
{
  v45 = a1[2];
  if (!v45)
  {
    goto LABEL_23;
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = *a3;
  v9 = sub_226F491D4(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_226FF309C();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v20 = swift_allocError();
    swift_willThrow();

    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_226FE8748(v13, a2 & 1);
  v17 = *a3;
  v18 = sub_226F491D4(v7);
  if ((v15 & 1) != (v19 & 1))
  {
LABEL_28:
    sub_22766D220();
    __break(1u);
LABEL_29:
    sub_22766CE20();
    MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
    sub_22766CF90();
    MEMORY[0x22AA98450](39, 0xE100000000000000);
    sub_22766CFB0();
    __break(1u);
    return;
  }

  v14 = v18;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v22[6] + 8 * v14) = v7;
  *(v22[7] + 8 * v14) = v6;
  v23 = v22[2];
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22[2] = v25;
  if (v45 != 1)
  {
    v26 = a1 + 7;
    v27 = 1;
    while (v27 < a1[2])
    {
      v29 = *(v26 - 1);
      v28 = *v26;
      v30 = *a3;
      v31 = sub_226F491D4(v29);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_25;
      }

      v36 = v31;
      v37 = v32;
      v38 = v30[3];

      if (v38 < v35)
      {
        sub_226FE8748(v35, 1);
        v39 = *a3;
        v40 = sub_226F491D4(v29);
        if ((v37 & 1) != (v41 & 1))
        {
          goto LABEL_28;
        }

        v36 = v40;
      }

      if (v37)
      {
        goto LABEL_9;
      }

      v42 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v42[6] + 8 * v36) = v29;
      *(v42[7] + 8 * v36) = v28;
      v43 = v42[2];
      v24 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v24)
      {
        goto LABEL_26;
      }

      ++v27;
      v42[2] = v44;
      v26 += 2;
      if (v45 == v27)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

unint64_t sub_2274580D4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_227664440();
    sub_22745AE98(&qword_27D7BB388, MEMORY[0x277D508E8]);
    v2 = sub_22766BF40();
    v3 = v2 * v1;
    result = (v2 * v1) >> 64;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      if (v4 > v3)
      {
        do
        {
          v5 = sub_22766BF40();
        }

        while (v4 > v5 * v1);
        return (v5 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_22745819C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227458238(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2274582DC(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v192[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_227664B70();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v192[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 <= 39)
  {
    switch(a1)
    {
      case 10:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
        v207 = swift_allocObject();
        *(v207 + 16) = xmmword_227675BD0;
        *&v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E38, &qword_227686050);
        v116 = swift_allocObject();
        v203 = xmmword_227670CD0;
        *(v116 + 16) = xmmword_227670CD0;
        v117 = *MEMORY[0x277D50DA8];
        v199 = v8[13];
        v199(v11, v117, v7);
        v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACD8, &qword_227679728);
        v118 = swift_allocObject();
        *(v118 + 16) = v203;
        *(v118 + 32) = sub_227664B60();
        *(v118 + 40) = v119;
        *(v118 + 48) = 0;
        v120 = sub_226F3EAA8(v118);
        swift_setDeallocating();
        sub_22745AE44(v118 + 32);
        swift_deallocClassInstance();
        v200 = xmmword_227685FB0;
        *(v116 + 48) = xmmword_227685FB0;
        *(v116 + 64) = 1;
        *(v116 + 32) = 10;
        *(v116 + 40) = v120;
        *&v198 = v8[1];
        v205 = v7;
        v206 = v8 + 1;
        (v198)(v11, v7);
        v121 = v207;
        *(v207 + 32) = v116;
        v122 = swift_allocObject();
        *(v122 + 16) = v203;
        v123 = v199;
        v199(v11, *MEMORY[0x277D50DB0], v7);
        v124 = swift_allocObject();
        *(v124 + 16) = v203;
        *(v124 + 32) = sub_227664B60();
        *(v124 + 40) = v125;
        *(v124 + 48) = 0;
        v126 = sub_226F3EAA8(v124);
        swift_setDeallocating();
        sub_22745AE44(v124 + 32);
        swift_deallocClassInstance();
        *(v122 + 48) = v200;
        *(v122 + 64) = 1;
        *(v122 + 32) = 10;
        *(v122 + 40) = v126;
        v127 = v205;
        v128 = v198;
        (v198)(v11, v205);
        v129 = v121;
        *(v121 + 40) = v122;
        v130 = swift_allocObject();
        *(v130 + 16) = v203;
        v123(v11, *MEMORY[0x277D50DA0], v127);
        v131 = swift_allocObject();
        *(v131 + 16) = v203;
        *(v131 + 32) = sub_227664B60();
        *(v131 + 40) = v132;
        *(v131 + 48) = 0;
        v133 = sub_226F3EAA8(v131);
        swift_setDeallocating();
        sub_22745AE44(v131 + 32);
        swift_deallocClassInstance();
        *(v130 + 48) = v200;
        *(v130 + 64) = 1;
        *(v130 + 32) = 10;
        *(v130 + 40) = v133;
        v128(v11, v205);
        result = v129;
        *(v129 + 48) = v130;
        return result;
      case 20:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
        v207 = swift_allocObject();
        *(v207 + 16) = xmmword_227675BD0;
        v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E38, &qword_227686050);
        v169 = swift_allocObject();
        v203 = xmmword_227670CD0;
        *(v169 + 16) = xmmword_227670CD0;
        v170 = *MEMORY[0x277D50DA8];
        v199 = v8[13];
        v199(v11, v170, v7);
        *&v200 = v8 + 13;
        *&v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACD8, &qword_227679728);
        v171 = swift_allocObject();
        *(v171 + 16) = v203;
        *(v171 + 32) = sub_227664B60();
        *(v171 + 40) = v172;
        *(v171 + 48) = 0;
        v173 = sub_226F3EAA8(v171);
        swift_setDeallocating();
        sub_22745AE44(v171 + 32);
        swift_deallocClassInstance();
        v202 = xmmword_227685FB0;
        *(v169 + 48) = xmmword_227685FB0;
        *(v169 + 64) = 1;
        *(v169 + 32) = 20;
        *(v169 + 40) = v173;
        v174 = v8[1];
        v206 = v8 + 1;
        *&v197 = v174;
        v174(v11, v7);
        *(v207 + 32) = v169;
        v175 = swift_allocObject();
        v195 = xmmword_2276728D0;
        *(v175 + 16) = xmmword_2276728D0;
        LODWORD(v196) = *MEMORY[0x277D50DA0];
        v176 = v199;
        (v199)(v11);
        v177 = swift_allocObject();
        *(v177 + 16) = v203;
        *(v177 + 32) = sub_227664B60();
        *(v177 + 40) = v178;
        *(v177 + 48) = 0;
        v179 = sub_226F3EAA8(v177);
        swift_setDeallocating();
        sub_22745AE44(v177 + 32);
        swift_deallocClassInstance();
        *(v175 + 48) = v202;
        *(v175 + 64) = 1;
        *(v175 + 32) = 10;
        *(v175 + 40) = v179;
        v205 = v7;
        v180 = v7;
        v181 = v197;
        (v197)(v11, v180);
        LODWORD(v194) = *MEMORY[0x277D50DB0];
        v176(v11);
        v182 = swift_allocObject();
        *(v182 + 16) = v203;
        *(v182 + 32) = sub_227664B60();
        *(v182 + 40) = v183;
        *(v182 + 48) = 0;
        v184 = sub_226F3EAA8(v182);
        swift_setDeallocating();
        sub_22745AE44(v182 + 32);
        swift_deallocClassInstance();
        *(v175 + 88) = v202;
        *(v175 + 104) = 1;
        *(v175 + 72) = 10;
        *(v175 + 80) = v184;
        v185 = v205;
        v181(v11, v205);
        *(v207 + 40) = v175;
        v34 = swift_allocObject();
        *(v34 + 16) = v195;
        v64 = v199;
        v199(v11, v194, v185);
        v186 = swift_allocObject();
        *(v186 + 16) = v203;
        *(v186 + 32) = sub_227664B60();
        *(v186 + 40) = v187;
        *(v186 + 48) = 0;
        v67 = sub_226F3EAA8(v186);
        swift_setDeallocating();
        sub_22745AE44(v186 + 32);
        swift_deallocClassInstance();
        *(v34 + 48) = v202;
        *(v34 + 64) = 1;
        v68 = 10;
        break;
      case 30:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
        v207 = swift_allocObject();
        *(v207 + 16) = xmmword_227675BD0;
        v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E38, &qword_227686050);
        v47 = swift_allocObject();
        v203 = xmmword_227670CD0;
        *(v47 + 16) = xmmword_227670CD0;
        v48 = *MEMORY[0x277D50DA8];
        v199 = v8[13];
        v199(v11, v48, v7);
        *&v200 = v8 + 13;
        *&v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACD8, &qword_227679728);
        v49 = swift_allocObject();
        *(v49 + 16) = v203;
        *(v49 + 32) = sub_227664B60();
        *(v49 + 40) = v50;
        *(v49 + 48) = 0;
        v51 = sub_226F3EAA8(v49);
        swift_setDeallocating();
        sub_22745AE44(v49 + 32);
        swift_deallocClassInstance();
        v202 = xmmword_227685FB0;
        *(v47 + 48) = xmmword_227685FB0;
        *(v47 + 64) = 1;
        *(v47 + 32) = 30;
        *(v47 + 40) = v51;
        v52 = v8[1];
        v206 = v8 + 1;
        *&v197 = v52;
        v52(v11, v7);
        *(v207 + 32) = v47;
        v53 = swift_allocObject();
        v195 = xmmword_2276728D0;
        *(v53 + 16) = xmmword_2276728D0;
        LODWORD(v196) = *MEMORY[0x277D50DA0];
        v54 = v199;
        (v199)(v11);
        v55 = swift_allocObject();
        *(v55 + 16) = v203;
        *(v55 + 32) = sub_227664B60();
        *(v55 + 40) = v56;
        *(v55 + 48) = 0;
        v57 = sub_226F3EAA8(v55);
        swift_setDeallocating();
        sub_22745AE44(v55 + 32);
        swift_deallocClassInstance();
        *(v53 + 48) = v202;
        *(v53 + 64) = 1;
        *(v53 + 32) = 20;
        *(v53 + 40) = v57;
        v205 = v7;
        v58 = v7;
        v59 = v197;
        (v197)(v11, v58);
        LODWORD(v194) = *MEMORY[0x277D50DB0];
        v54(v11);
        v60 = swift_allocObject();
        *(v60 + 16) = v203;
        *(v60 + 32) = sub_227664B60();
        *(v60 + 40) = v61;
        *(v60 + 48) = 0;
        v62 = sub_226F3EAA8(v60);
        swift_setDeallocating();
        sub_22745AE44(v60 + 32);
        swift_deallocClassInstance();
        *(v53 + 88) = v202;
        *(v53 + 104) = 1;
        *(v53 + 72) = 10;
        *(v53 + 80) = v62;
        v63 = v205;
        v59(v11, v205);
        *(v207 + 40) = v53;
        v34 = swift_allocObject();
        *(v34 + 16) = v195;
        v64 = v199;
        v199(v11, v194, v63);
        v65 = swift_allocObject();
        *(v65 + 16) = v203;
        *(v65 + 32) = sub_227664B60();
        *(v65 + 40) = v66;
        *(v65 + 48) = 0;
        v67 = sub_226F3EAA8(v65);
        swift_setDeallocating();
        sub_22745AE44(v65 + 32);
        swift_deallocClassInstance();
        *(v34 + 48) = v202;
        *(v34 + 64) = 1;
        v68 = 20;
        break;
      default:
        goto LABEL_14;
    }

    *(v34 + 32) = v68;
    *(v34 + 40) = v67;
    v188 = v205;
    v41 = v197;
    (v197)(v11, v205);
    v64(v11, v196, v188);
    v189 = swift_allocObject();
    *(v189 + 16) = v203;
    *(v189 + 32) = sub_227664B60();
    *(v189 + 40) = v190;
    *(v189 + 48) = 0;
    v191 = sub_226F3EAA8(v189);
    swift_setDeallocating();
    sub_22745AE44(v189 + 32);
    swift_deallocClassInstance();
    *(v34 + 88) = v202;
    *(v34 + 104) = 1;
    *(v34 + 72) = 10;
    *(v34 + 80) = v191;
    v167 = v11;
    v168 = v205;
    goto LABEL_21;
  }

  if (a1 > 59)
  {
    if (a1 == 60)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
      v207 = swift_allocObject();
      *(v207 + 16) = xmmword_227675BD0;
      v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E38, &qword_227686050);
      v140 = swift_allocObject();
      v198 = xmmword_2276728D0;
      *(v140 + 16) = xmmword_2276728D0;
      LODWORD(v195) = *MEMORY[0x277D50DA8];
      v141 = v8;
      *&v200 = v8[13];
      (v200)(v11);
      *&v197 = v8 + 13;
      v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACD8, &qword_227679728);
      v142 = v7;
      inited = swift_initStackObject();
      v203 = xmmword_227670CD0;
      *(inited + 16) = xmmword_227670CD0;
      *(inited + 32) = sub_227664B60();
      *(inited + 40) = v144;
      *(inited + 48) = 0;
      v145 = sub_226F3EAA8(inited);
      swift_setDeallocating();
      sub_22745AE44(inited + 32);
      v202 = xmmword_227685FB0;
      *(v140 + 48) = xmmword_227685FB0;
      *(v140 + 64) = 1;
      *(v140 + 32) = 30;
      *(v140 + 40) = v145;
      v201 = v141[1];
      v205 = v142;
      v201(v11, v142);
      v206 = v141 + 1;
      v146 = v142;
      v147 = v200;
      (v200)(v11, v195, v146);
      v148 = swift_initStackObject();
      *(v148 + 16) = v203;
      *(v148 + 32) = sub_227664B60();
      *(v148 + 40) = v149;
      *(v148 + 48) = 0;
      v150 = sub_226F3EAA8(v148);
      swift_setDeallocating();
      sub_22745AE44(v148 + 32);
      *(v140 + 88) = v202;
      *(v140 + 104) = 1;
      *(v140 + 72) = 30;
      *(v140 + 80) = v150;
      v201(v11, v205);
      *(v207 + 32) = v140;
      v151 = swift_allocObject();
      *(v151 + 16) = v198;
      LODWORD(v195) = *MEMORY[0x277D50DA0];
      v152 = v147;
      v147(v11);
      v153 = swift_initStackObject();
      *(v153 + 16) = v203;
      *(v153 + 32) = sub_227664B60();
      *(v153 + 40) = v154;
      *(v153 + 48) = 0;
      v155 = sub_226F3EAA8(v153);
      swift_setDeallocating();
      sub_22745AE44(v153 + 32);
      *(v151 + 48) = v202;
      *(v151 + 64) = 1;
      *(v151 + 32) = 30;
      *(v151 + 40) = v155;
      v156 = v201;
      v201(v11, v205);
      LODWORD(v194) = *MEMORY[0x277D50DB0];
      v152(v11);
      v157 = swift_initStackObject();
      *(v157 + 16) = v203;
      *(v157 + 32) = sub_227664B60();
      *(v157 + 40) = v158;
      *(v157 + 48) = 0;
      v159 = sub_226F3EAA8(v157);
      swift_setDeallocating();
      sub_22745AE44(v157 + 32);
      *(v151 + 88) = v202;
      *(v151 + 104) = 1;
      *(v151 + 72) = 30;
      *(v151 + 80) = v159;
      v160 = v205;
      v156(v11, v205);
      *(v207 + 40) = v151;
      v34 = swift_allocObject();
      *(v34 + 16) = v198;
      (v200)(v11, v194, v160);
      v161 = swift_initStackObject();
      *(v161 + 16) = v203;
      *(v161 + 32) = sub_227664B60();
      *(v161 + 40) = v162;
      *(v161 + 48) = 0;
      v163 = sub_226F3EAA8(v161);
      swift_setDeallocating();
      sub_22745AE44(v161 + 32);
      *(v34 + 48) = v202;
      *(v34 + 64) = 1;
      *(v34 + 32) = 30;
      *(v34 + 40) = v163;
      v164 = v205;
      v41 = v201;
      v201(v11, v205);
      v42 = v164;
      (v200)(v11, v195, v164);
      v165 = swift_initStackObject();
      *(v165 + 16) = v203;
      *(v165 + 32) = sub_227664B60();
      *(v165 + 40) = v166;
      *(v165 + 48) = 0;
      v45 = sub_226F3EAA8(v165);
      swift_setDeallocating();
      sub_22745AE44(v165 + 32);
      *(v34 + 88) = v202;
      *(v34 + 104) = 1;
      v46 = 30;
      goto LABEL_18;
    }

    if (a1 == 90)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
      v207 = swift_allocObject();
      v197 = xmmword_227675BD0;
      *(v207 + 16) = xmmword_227675BD0;
      v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E38, &qword_227686050);
      v69 = swift_allocObject();
      *(v69 + 16) = v197;
      LODWORD(v196) = *MEMORY[0x277D50DA8];
      v70 = v8[13];
      *&v200 = v8 + 13;
      v70(v11);
      v71 = v70;
      v199 = v70;
      v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACD8, &qword_227679728);
      v72 = swift_initStackObject();
      v203 = xmmword_227670CD0;
      *(v72 + 16) = xmmword_227670CD0;
      *(v72 + 32) = sub_227664B60();
      *(v72 + 40) = v73;
      *(v72 + 48) = 0;
      v74 = sub_226F3EAA8(v72);
      swift_setDeallocating();
      sub_22745AE44(v72 + 32);
      v202 = xmmword_227685FB0;
      *(v69 + 48) = xmmword_227685FB0;
      *(v69 + 64) = 1;
      *(v69 + 32) = 30;
      *(v69 + 40) = v74;
      *&v198 = v8[1];
      v206 = v8 + 1;
      (v198)(v11, v7);
      LODWORD(v195) = *MEMORY[0x277D50DB0];
      v71(v11);
      v75 = swift_initStackObject();
      *(v75 + 16) = v203;
      *(v75 + 32) = sub_227664B60();
      *(v75 + 40) = v76;
      *(v75 + 48) = 0;
      v77 = sub_226F3EAA8(v75);
      swift_setDeallocating();
      sub_22745AE44(v75 + 32);
      *(v69 + 88) = v202;
      *(v69 + 104) = 1;
      *(v69 + 72) = 30;
      *(v69 + 80) = v77;
      v78 = v198;
      (v198)(v11, v7);
      v193 = *MEMORY[0x277D50DA0];
      (v199)(v11);
      v79 = swift_initStackObject();
      *(v79 + 16) = v203;
      *(v79 + 32) = sub_227664B60();
      *(v79 + 40) = v80;
      *(v79 + 48) = 0;
      v81 = v7;
      v82 = sub_226F3EAA8(v79);
      swift_setDeallocating();
      sub_22745AE44(v79 + 32);
      *(v69 + 128) = v202;
      *(v69 + 144) = 1;
      *(v69 + 112) = 30;
      *(v69 + 120) = v82;
      v78(v11, v81);
      *(v207 + 32) = v69;
      v83 = swift_allocObject();
      *(v83 + 16) = v197;
      v84 = v81;
      v85 = v81;
      v86 = v199;
      v199(v11, v195, v84);
      v87 = swift_initStackObject();
      *(v87 + 16) = v203;
      *(v87 + 32) = sub_227664B60();
      *(v87 + 40) = v88;
      *(v87 + 48) = 0;
      v89 = sub_226F3EAA8(v87);
      swift_setDeallocating();
      sub_22745AE44(v87 + 32);
      *(v83 + 48) = v202;
      *(v83 + 64) = 1;
      *(v83 + 32) = 30;
      *(v83 + 40) = v89;
      v90 = v85;
      v205 = v85;
      v91 = v85;
      v92 = v198;
      (v198)(v11, v91);
      v86(v11, v193, v90);
      v93 = swift_initStackObject();
      *(v93 + 16) = v203;
      *(v93 + 32) = sub_227664B60();
      *(v93 + 40) = v94;
      *(v93 + 48) = 0;
      v95 = sub_226F3EAA8(v93);
      swift_setDeallocating();
      sub_22745AE44(v93 + 32);
      *(v83 + 88) = v202;
      *(v83 + 104) = 1;
      *(v83 + 72) = 30;
      *(v83 + 80) = v95;
      v96 = v205;
      v92(v11, v205);
      v199(v11, v196, v96);
      v97 = swift_initStackObject();
      *(v97 + 16) = v203;
      *(v97 + 32) = sub_227664B60();
      *(v97 + 40) = v98;
      *(v97 + 48) = 0;
      v99 = sub_226F3EAA8(v97);
      swift_setDeallocating();
      sub_22745AE44(v97 + 32);
      *(v83 + 128) = v202;
      *(v83 + 144) = 1;
      *(v83 + 112) = 30;
      *(v83 + 120) = v99;
      v100 = v198;
      (v198)(v11, v96);
      *(v207 + 40) = v83;
      v101 = swift_allocObject();
      *(v101 + 16) = v197;
      v102 = v199;
      v199(v11, v193, v96);
      v103 = swift_initStackObject();
      *(v103 + 16) = v203;
      *(v103 + 32) = sub_227664B60();
      *(v103 + 40) = v104;
      *(v103 + 48) = 0;
      v105 = sub_226F3EAA8(v103);
      swift_setDeallocating();
      sub_22745AE44(v103 + 32);
      *(v101 + 48) = v202;
      *(v101 + 64) = 1;
      *(v101 + 32) = 30;
      *(v101 + 40) = v105;
      v106 = v205;
      v100(v11, v205);
      v107 = v106;
      v102(v11, v196, v106);
      v108 = swift_initStackObject();
      *(v108 + 16) = v203;
      *(v108 + 32) = sub_227664B60();
      *(v108 + 40) = v109;
      *(v108 + 48) = 0;
      v110 = sub_226F3EAA8(v108);
      swift_setDeallocating();
      sub_22745AE44(v108 + 32);
      *(v101 + 88) = v202;
      *(v101 + 104) = 1;
      *(v101 + 72) = 30;
      *(v101 + 80) = v110;
      v111 = v198;
      (v198)(v11, v107);
      v199(v11, v195, v107);
      v112 = swift_initStackObject();
      *(v112 + 16) = v203;
      *(v112 + 32) = sub_227664B60();
      *(v112 + 40) = v113;
      *(v112 + 48) = 0;
      v114 = sub_226F3EAA8(v112);
      swift_setDeallocating();
      sub_22745AE44(v112 + 32);
      *(v101 + 128) = v202;
      *(v101 + 144) = 1;
      *(v101 + 112) = 30;
      *(v101 + 120) = v114;
      v111(v11, v107);
      result = v207;
      *(v207 + 48) = v101;
      return result;
    }
  }

  else if (a1 == 40 || a1 == 45)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
    v207 = swift_allocObject();
    *(v207 + 16) = xmmword_227675BD0;
    v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E38, &qword_227686050);
    v12 = swift_allocObject();
    v198 = xmmword_2276728D0;
    *(v12 + 16) = xmmword_2276728D0;
    LODWORD(v195) = *MEMORY[0x277D50DA8];
    v13 = v8[13];
    v201 = (v8 + 13);
    v13(v11);
    *&v197 = v13;
    v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACD8, &qword_227679728);
    v14 = v8;
    v15 = v7;
    v16 = swift_initStackObject();
    v202 = xmmword_227670CD0;
    *(v16 + 16) = xmmword_227670CD0;
    *(v16 + 32) = sub_227664B60();
    *(v16 + 40) = v17;
    *(v16 + 48) = 0;
    v18 = sub_226F3EAA8(v16);
    swift_setDeallocating();
    sub_22745AE44(v16 + 32);
    v203 = xmmword_227685FB0;
    *(v12 + 48) = xmmword_227685FB0;
    *(v12 + 64) = 1;
    *(v12 + 32) = 20;
    *(v12 + 40) = v18;
    *&v200 = v14[1];
    (v200)(v11, v15);
    v206 = v14 + 1;
    (v13)(v11, v195, v15);
    v19 = swift_initStackObject();
    *(v19 + 16) = v202;
    *(v19 + 32) = sub_227664B60();
    *(v19 + 40) = v20;
    *(v19 + 48) = 0;
    v21 = sub_226F3EAA8(v19);
    swift_setDeallocating();
    sub_22745AE44(v19 + 32);
    *(v12 + 88) = v203;
    *(v12 + 104) = 1;
    *(v12 + 72) = 20;
    *(v12 + 80) = v21;
    v205 = v15;
    v22 = v15;
    v23 = v200;
    (v200)(v11, v22);
    *(v207 + 32) = v12;
    v24 = swift_allocObject();
    *(v24 + 16) = v198;
    LODWORD(v195) = *MEMORY[0x277D50DA0];
    v25 = v197;
    (v197)(v11);
    v26 = swift_initStackObject();
    *(v26 + 16) = v202;
    *(v26 + 32) = sub_227664B60();
    *(v26 + 40) = v27;
    *(v26 + 48) = 0;
    v28 = sub_226F3EAA8(v26);
    swift_setDeallocating();
    sub_22745AE44(v26 + 32);
    *(v24 + 48) = v203;
    *(v24 + 64) = 1;
    *(v24 + 32) = 20;
    *(v24 + 40) = v28;
    v29 = v205;
    v23(v11, v205);
    LODWORD(v194) = *MEMORY[0x277D50DB0];
    v30 = v29;
    v25(v11);
    v31 = swift_allocObject();
    *(v31 + 16) = v202;
    *(v31 + 32) = sub_227664B60();
    *(v31 + 40) = v32;
    *(v31 + 48) = 0;
    v33 = sub_226F3EAA8(v31);
    swift_setDeallocating();
    sub_22745AE44(v31 + 32);
    swift_deallocClassInstance();
    *(v24 + 88) = v203;
    *(v24 + 104) = 1;
    *(v24 + 72) = 20;
    *(v24 + 80) = v33;
    (v200)(v11, v30);
    *(v207 + 40) = v24;
    v34 = swift_allocObject();
    *(v34 + 16) = v198;
    v35 = v30;
    v36 = v197;
    (v197)(v11, v194, v35);
    v37 = swift_allocObject();
    *(v37 + 16) = v202;
    *(v37 + 32) = sub_227664B60();
    *(v37 + 40) = v38;
    *(v37 + 48) = 0;
    v39 = sub_226F3EAA8(v37);
    swift_setDeallocating();
    sub_22745AE44(v37 + 32);
    swift_deallocClassInstance();
    *(v34 + 48) = v203;
    *(v34 + 64) = 1;
    *(v34 + 32) = 20;
    *(v34 + 40) = v39;
    v40 = v205;
    v41 = v200;
    (v200)(v11, v205);
    v42 = v40;
    v36(v11, v195, v40);
    v43 = swift_allocObject();
    *(v43 + 16) = v202;
    *(v43 + 32) = sub_227664B60();
    *(v43 + 40) = v44;
    *(v43 + 48) = 0;
    v45 = sub_226F3EAA8(v43);
    swift_setDeallocating();
    sub_22745AE44(v43 + 32);
    swift_deallocClassInstance();
    *(v34 + 88) = v203;
    *(v34 + 104) = 1;
    v46 = 20;
LABEL_18:
    *(v34 + 72) = v46;
    *(v34 + 80) = v45;
    v167 = v11;
    v168 = v42;
LABEL_21:
    v41(v167, v168);
    result = v207;
    *(v207 + 48) = v34;
    return result;
  }

LABEL_14:
  sub_22766A630();
  v134 = sub_22766B380();
  v135 = sub_22766C890();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    *v136 = 134217984;
    *(v136 + 4) = a1;
    _os_log_impl(&dword_226E8E000, v134, v135, "Duration %ld not supported.", v136, 0xCu);
    MEMORY[0x22AA9A450](v136, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v137 = sub_227664EC0();
  sub_22745AE98(&qword_28139B898, MEMORY[0x277D51210]);
  v138 = swift_allocError();
  (*(*(v137 - 8) + 104))(v139, *MEMORY[0x277D51188], v137);
  v204 = v138;
  return swift_willThrow();
}

uint64_t sub_22745A0B0(uint64_t a1)
{
  v2 = sub_227662950();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227662970();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v40 - v11;
  v12 = MEMORY[0x277D84F90];
  v43 = *(a1 + 16);
  if (v43)
  {
    v13 = 0;
    v14 = a1 + 32;
    v15 = v43;
    do
    {
      if (*(v14 + 8 * v13) >= 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226F1F090(0, v12[2] + 1, 1);
          v15 = v43;
          v12 = v44;
        }

        v17 = v12[2];
        v16 = v12[3];
        if (v17 >= v16 >> 1)
        {
          sub_226F1F090((v16 > 1), v17 + 1, 1);
          v15 = v43;
          v12 = v44;
        }

        v12[2] = v17 + 1;
        v12[v17 + 4] = v13;
      }

      ++v13;
    }

    while (v15 != v13);
  }

  sub_22745AE98(&qword_27D7BDC68, MEMORY[0x277CC9A28]);
  sub_22766CC70();
  v19 = v12[2];
  if (v19)
  {
    v20 = v12 + 4;
    do
    {
      v21 = *v20++;
      v45 = v21;
      sub_22766CC50();
      --v19;
    }

    while (v19);
  }

  v22 = v41;
  v23 = v42;
  (*(v42 + 32))(v41, v10, v6);
  sub_227662960();
  (*(v23 + 8))(v22, v6);
  sub_22745AE98(&qword_27D7BDC70, MEMORY[0x277CC9A18]);
  v24 = sub_22766C7B0();
  if (v24)
  {
    v25 = v24;
    v45 = MEMORY[0x277D84F90];
    sub_226F1FDA8(0, v24 & ~(v24 >> 63), 0);
    v26 = v45;
    v27 = v5;
    sub_22766C760();
    if ((v25 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        v28 = sub_22766C7D0();
        v30 = *v29;
        v27 = v29[1];
        v28(&v44, 0);
        if (__OFSUB__(v27, 1))
        {
          break;
        }

        v45 = v26;
        v32 = v26[2];
        v31 = v26[3];
        if (v32 >= v31 >> 1)
        {
          sub_226F1FDA8((v31 > 1), v32 + 1, 1);
          v26 = v45;
        }

        v26[2] = v32 + 1;
        v33 = &v26[2 * v32];
        v33[4] = v30;
        v33[5] = v27 - 1;
        sub_22766C7C0();
        if (!--v25)
        {
          (*(v40 + 8))(v5, v2);
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_34:
    result = sub_2272EC588(v26);
    v26 = result;
    v39 = *(result + 16);
    if (!v39)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  (*(v40 + 8))(v5, v2);
  v26 = MEMORY[0x277D84F90];
LABEL_21:
  v34 = v26[2];
  if (!v34)
  {
    return v26;
  }

  if (v26[4])
  {
    return v26;
  }

  v35 = &v26[2 * v34 + 4];
  v36 = *(v35 - 8);
  if (v36 != v43 - 1)
  {
    return v26;
  }

  v2 = v26[5];
  v27 = *(v35 - 16);
  if (!v27 && v2 == v36)
  {
    return v26;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_34;
  }

  v39 = v26[2];
  if (v39)
  {
LABEL_30:
    v26[4] = v27;
    v26[5] = v2;
    v26[2] = v39 - 1;
    return v26;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t *sub_22745A574(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v26 = *(a2 + 16);
  if (v26 != *(a3 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v6 = *result;
  v5 = result[1];
  v7 = v5 - *result;
  if (v5 >= *result)
  {
    if (__OFSUB__(v5, *result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v7 != -1)
    {
      v14 = sub_2274CD830(v7 + 1, 0);
      result = sub_227458238(v27, (v14 + 4), v13, v6, v5);
      if (result != v13)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      v11 = v14;
      v12 = v14[2];
      if (!v12)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

LABEL_24:
    v11 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (!v12)
    {
      goto LABEL_25;
    }

LABEL_16:
    v27[0] = MEMORY[0x277D84F90];
    v25 = v11;
    sub_226F1FDC8(0, v12, 0);
    result = v25;
    v15 = v26;
    v16 = v27[0];
    v17 = a2 + 32;
    for (i = 4; ; ++i)
    {
      v19 = result[i];
      if (v19 >= v15)
      {
        break;
      }

      v20 = *(v17 + 8 * v19);
      v21 = *(a3 + 32 + v19);
      v27[0] = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F1FDC8((v22 > 1), v23 + 1, 1);
        result = v25;
        v15 = v26;
        v16 = v27[0];
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 24 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v20;
      *(v24 + 48) = v21;
      if (!--v12)
      {

        return v16;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v8 = v26 - v6;
  if (v26 < v6)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (__OFSUB__(v26, v6))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v8)
  {
    v9 = MEMORY[0x277D84F90];
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  v9 = sub_2274CD830(v26 - v6, 0);
  result = sub_22745819C(v27, (v9 + 4), v8, v6, v26);
  if (result != v8)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v5 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_8:
  v10 = sub_2274CD830(v5 + 1, 0);
  result = sub_227458238(v27, (v10 + 4), v5 + 1, 0, v5);
  if (result != (v5 + 1))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v27[0] = v9;
  sub_227460C54(v10);
  v11 = v27[0];
  v12 = *(v27[0] + 16);
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_25:

  return MEMORY[0x277D84F90];
}

void *sub_22745A7D4(uint64_t a1)
{
  v57 = sub_22766B390();
  v2 = *(v57 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v57);
  v60 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &qword_27D7BDC50;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC50, &unk_227686038);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v61 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  v12 = sub_227664B70();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v51 = &v50 - v17;
  v52 = v16;
  v18 = *(a1 + 8);
  v19 = v18 + 56;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 56);
  v23 = (v20 + 63) >> 6;
  v64 = (v16 + 48);
  v65 = (v16 + 56);
  v58 = (v16 + 32);
  v56 = (v2 + 8);

  v25 = 0;
  v59 = MEMORY[0x277D84F90];
  *&v26 = 136315138;
  v54 = v26;
  for (i = v18; v22; v18 = i)
  {
LABEL_11:
    while (1)
    {
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = *(v18 + 48) + 24 * (v28 | (v25 << 6));
      if (!*(v29 + 16))
      {
        break;
      }

      (*v65)(v11, 1, 1, v12);
LABEL_6:
      result = sub_226E97D1C(v11, v5, &unk_227686038);
      if (!v22)
      {
        goto LABEL_7;
      }
    }

    v30 = *v29;
    v31 = *(v29 + 8);
    swift_bridgeObjectRetain_n();
    v32 = v12;
    v33 = v61;
    sub_227664B50();
    v63 = *v64;
    if (v63(v33, 1, v32) == 1)
    {
      v55 = v32;
      sub_226E97D1C(v33, v5, &unk_227686038);
      v34 = v60;
      sub_22766A630();

      v35 = sub_22766B380();
      v36 = sub_22766C890();
      sub_226F49200(v30, v31, 0);
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v50 = v35;
        v38 = v37;
        v39 = v36;
        v40 = swift_slowAlloc();
        v66 = v40;
        *v38 = v54;
        *(v38 + 4) = sub_226E97AE8(v30, v31, &v66);
        v41 = v39;
        v42 = v50;
        _os_log_impl(&dword_226E8E000, v50, v41, "Could not determine strength focus from identifier: %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v38, -1, -1);

        (*v56)(v60, v57);
      }

      else
      {

        (*v56)(v34, v57);
      }

      v43 = 1;
      v5 = &qword_27D7BDC50;
      v12 = v55;
    }

    else
    {
      (*v58)(v11, v33, v32);
      v43 = 0;
      v12 = v32;
    }

    v18 = i;
    (*v65)(v11, v43, 1, v12);
    sub_226F49200(v30, v31, 0);
    if (v63(v11, 1, v12) == 1)
    {
      goto LABEL_6;
    }

    v44 = *v58;
    v45 = v51;
    (*v58)(v51, v11, v12);
    v44(v53, v45, v12);
    v46 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_2273A6FA4(0, v59[2] + 1, 1, v59);
    }

    v48 = v59[2];
    v47 = v59[3];
    if (v48 >= v47 >> 1)
    {
      v59 = sub_2273A6FA4(v47 > 1, v48 + 1, 1, v59);
    }

    v49 = v59;
    v59[2] = v48 + 1;
    result = (v44)(v49 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v48, v53, v12);
    v5 = v46;
  }

LABEL_7:
  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v23)
    {

      return v59;
    }

    v22 = *(v19 + 8 * v27);
    ++v25;
    if (v22)
    {
      v25 = v27;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22745ADD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22745AE98(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22745AEE0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2276627D0();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v38 - v11;
  v13 = sub_2276694E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 zoneName];
  if (v19)
  {
    v20 = v19;
    v42 = a2;
    v43 = v4;
    sub_22766C000();

    sub_2276694B0();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_226E97D1C(v12, &qword_27D7B8460, qword_2276709E0);
    }

    else
    {
      (*(v14 + 32))(v18, v12, v13);
      v21 = [a1 key];
      if (v21)
      {
        v22 = v21;
        v23 = sub_227662590();
        v25 = v24;

        v26 = [a1 etag];
        if (v26)
        {
          v27 = v26;
          v40 = sub_22766C000();
          v41 = v28;

          v29 = [a1 identifier];
          if (v29)
          {
            v30 = v29;
            v31 = v44;
            sub_2276627B0();

            v39 = a1;
            v45 = *(v45 + 32);
            (v45)(v48, v31, v43);
            v32 = v42;
            (*(v14 + 16))(v42, v18, v13);
            v46 = v23;
            v47 = v25;
            v33 = type metadata accessor for SyncEncryptionKey();
            v44 = v33[5];
            sub_226F5E0B4(v23, v25);
            sub_22766B490();

            sub_226EDC420(v23, v25);
            (*(v14 + 8))(v18, v13);
            (v45)(v32 + v33[7], v48, v43);
            v34 = (v32 + v33[6]);
            v35 = v41;
            *v34 = v40;
            v34[1] = v35;
            return;
          }

          (*(v14 + 8))(v18, v13);
          sub_226EDC420(v23, v25);
        }

        else
        {
          (*(v14 + 8))(v18, v13);
          sub_226EDC420(v23, v25);
        }
      }

      else
      {
        (*(v14 + 8))(v18, v13);
      }
    }
  }

  v36 = sub_227664DD0();
  sub_226EAC0B4(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51028], v36);
  swift_willThrow();
}

uint64_t sub_22745B418(uint64_t a1)
{
  result = sub_226EAC0B4(qword_28139AA58, type metadata accessor for SyncEncryptionKey);
  *(a1 + 8) = result;
  return result;
}

void sub_22745B470(void *a1)
{
  v2 = v1;
  sub_2276694C0();
  v4 = sub_22766BFD0();

  [a1 setZoneName_];

  v5 = type metadata accessor for SyncEncryptionKey();
  v6 = v1 + v5[5];
  sub_22766B470();
  v7 = sub_227662560();
  sub_226EDC420(v14, v15);
  [a1 setKey_];

  v8 = (v2 + v5[6]);
  v9 = *v8;
  v10 = v8[1];
  v11 = sub_22766BFD0();
  [a1 setEtag_];

  v12 = v2 + v5[7];
  v13 = sub_227662790();
  [a1 setIdentifier_];
}

size_t sub_22745B5BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC78, &qword_2276860A0);
  v1 = *(v0 - 8);
  v49 = v0;
  v50 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v46 = &v42 - v3;
  v48 = type metadata accessor for SyncEncryptionKey();
  v47 = *(v48 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v48);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B4E0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2276694D0();
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = sub_2274CD740(*(v9 + 16), 0);
    v13 = *(sub_2276694E0() - 8);
    v14 = sub_2274CDD98(v64, (v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80))), v11, v10);
    sub_226EBB21C();
    if (v14 == v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v12 = MEMORY[0x277D84F90];
LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC80, &qword_2276860A8);
  v15 = sub_22766B4C0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_227670CD0;
  sub_22766B4D0();
  sub_22766B4A0();
  v45 = v15;
  v19 = sub_22766C330();

  v20 = sub_22766C090();
  v21 = sub_227662780();
  v62 = v19;
  v63 = v12;
  v64[0] = &v63;
  v64[1] = &v62;
  v60 = v21;
  v61 = v20;
  v64[2] = &v61;
  v64[3] = &v60;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D30, &qword_227671EF8);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC88, qword_2276860B0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84D0, &unk_227675750);
  v52 = sub_226F5BF60(&qword_27D7B8D40, &qword_27D7B8D30, &qword_227671EF8);
  v53 = sub_226F5BF60(&unk_27D7BDC90, &qword_27D7BDC88, qword_2276860B0);
  v54 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v55 = sub_226F5BF60(&qword_27D7B84F0, &qword_27D7B84D0, &unk_227675750);
  v22 = sub_2276638E0();

  v23 = *(v22 + 16);
  if (v23)
  {
    v51 = MEMORY[0x277D84F90];
    result = sub_226F1EF70(0, v23, 0);
    v25 = 0;
    v26 = v51;
    v43 = v22 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v42 = (v16 + 16);
    v27 = v6;
    v44 = v22;
    v28 = v46;
    while (v25 < *(v22 + 16))
    {
      v29 = v23;
      sub_22745BC10(v43 + *(v50 + 72) * v25, v28);
      v30 = v49[12];
      v31 = (v28 + v49[16]);
      v32 = *v31;
      v33 = v31[1];
      v34 = v49[20];
      v35 = sub_2276694E0();
      (*(*(v35 - 8) + 16))(v27, v28, v35);
      v36 = v48;
      (*v42)(v27 + *(v48 + 20), v28 + v30, v45);
      v37 = *(v36 + 28);
      v38 = sub_2276627D0();
      (*(*(v38 - 8) + 16))(v27 + v37, v28 + v34, v38);
      v39 = (v27 + *(v36 + 24));
      *v39 = v32;
      v39[1] = v33;

      sub_226E97D1C(v28, &qword_27D7BDC78, &qword_2276860A0);
      v51 = v26;
      v41 = *(v26 + 16);
      v40 = *(v26 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_226F1EF70(v40 > 1, v41 + 1, 1);
        v26 = v51;
      }

      ++v25;
      *(v26 + 16) = v41 + 1;
      result = sub_22706C9CC(v27, v26 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v41);
      v23 = v29;
      v22 = v44;
      if (v29 == v25)
      {

        return v26;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22745BC10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDC78, &qword_2276860A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22745BC80(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96D0, &qword_227674908);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = sub_227664900();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22745BFBC(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22745C02C(v7);
  }

  (*(v9 + 32))(v12, v7, v8);
  v14 = sub_2276648D0();
  v16 = v15;
  sub_227662570();
  sub_226EDC420(v14, v16);
  v17 = sub_22766BFD0();

  v18 = sub_22766BFD0();
  [v2 setValue:v17 forHTTPHeaderField:v18];

  v19 = sub_2276648C0();
  v21 = v20;
  sub_227662570();
  sub_226EDC420(v19, v21);
  v22 = sub_22766BFD0();

  v23 = sub_22766BFD0();
  [v2 setValue:v22 forHTTPHeaderField:v23];

  sub_2276648F0();
  v24 = sub_22766BFD0();

  v25 = sub_22766BFD0();
  [v2 setValue:v24 forHTTPHeaderField:v25];

  sub_2276648B0();
  v26 = sub_22766BFD0();

  v27 = sub_22766BFD0();
  [v2 setValue:v26 forHTTPHeaderField:v27];

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22745BFBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96D0, &qword_227674908);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22745C02C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96D0, &qword_227674908);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22745C124@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D20];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22745C19C(uint64_t a1)
{
  v2 = MEMORY[0x277D52D18];
  *(a1 + 24) = sub_22745C220(&qword_2813A5618, MEMORY[0x277D52D18]);
  result = sub_22745C220(&qword_2813A5610, v2);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22745C220(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22745C268()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276707E0;
  v3 = *MEMORY[0x277CEE3A8];
  *(inited + 32) = sub_22766C000();
  *(inited + 40) = v4;
  v5 = *MEMORY[0x277CEE3B0];
  *(inited + 48) = sub_22766C000();
  *(inited + 56) = v6;
  v7 = *MEMORY[0x277CEE3B8];
  *(inited + 64) = sub_22766C000();
  *(inited + 72) = v8;
  v9 = *MEMORY[0x277CEE3C0];
  *(inited + 80) = sub_22766C000();
  *(inited + 88) = v10;
  sub_226F3E6A8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v11 = objc_allocWithZone(MEMORY[0x277CEE668]);
  v12 = sub_22766C570();

  v13 = [v11 initWithEnabledActionTypes_];

  sub_227665910();
  v14 = sub_22766BFD0();

  [v13 setUserNotificationExtensionId_];

  v15 = *__swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_bagConsumer), *(v1 + OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_bagConsumer + 24));
  v16 = v13;
  v17 = [objc_allocWithZone(MEMORY[0x277CEE670]) initWithConfiguration:v16 bag:sub_226E9EF44()];

  swift_unknownObjectRelease();
  [v17 setDelegate_];

  v18 = *(v1 + OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_state);
  *(v1 + OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_state) = v17;
}

id sub_22745C478()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EngagementPushHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22745C52C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_state);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22766BE90();
  v4 = [v2 shouldHandleNotification_];

  return v4;
}

void sub_22745C5C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15SeymourServices21EngagementPushHandler_state);
  if (v1)
  {
    v2 = v1;
    v3 = sub_22766BE90();
    [v2 handleNotification_];
  }
}

uint64_t sub_22745C6EC(void *a1)
{
  v2 = [a1 badgeIdentifier];
  v3 = sub_22766C000();
  v5 = v4;

  v6 = [a1 bundleIdentifier];
  v7 = sub_22766C000();
  v9 = v8;

  v10 = [a1 enabled];
  v11 = [a1 metrics];
  if (v11)
  {
    v12 = v11;
    v13 = sub_22766BEB0();

    v14 = sub_2275A5364(v13);
  }

  else
  {
    v14 = 0;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_226F966B0(v3, v5, v7, v9, v10, v14);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t WorkoutPlanModalityDurationGroup.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000002BLL, 0x80000002276A0CB0);
  v5 = sub_22766D140();
  MEMORY[0x22AA98450](v5);

  MEMORY[0x22AA98450](0xD000000000000010, 0x80000002276A0CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_227663AD0();
  MEMORY[0x22AA98450]();

  MEMORY[0x22AA98450](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_22745C9B4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_226EC0768(*a1);
  v5 = v4;
  if (v3 == sub_226EC0768(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22766D190();
  }

  return v8 & 1;
}

uint64_t sub_22745CA3C()
{
  v1 = *v0;
  sub_22766D370();
  sub_226EC0768(v1);
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_22745CAA0()
{
  sub_226EC0768(*v0);
  sub_22766C100();
}

uint64_t sub_22745CAF4()
{
  v1 = *v0;
  sub_22766D370();
  sub_226EC0768(v1);
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_22745CB54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22745CBB0();
  *a2 = result;
  return result;
}

unint64_t sub_22745CB84@<X0>(unint64_t *a1@<X8>)
{
  result = sub_226EC0768(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}