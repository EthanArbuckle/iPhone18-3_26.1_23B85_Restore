void sub_2312857F8(uint64_t a1, char a2, uint64_t *a3)
{
  v45 = a3;
  v6 = sub_231368260();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DD8, &unk_231370740);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v43 = &v38 - v14;
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_13:

    return;
  }

  v38 = v3;
  v39 = v7;
  v15 = 0;
  v41 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v40 = *(v12 + 48);
  v44 = (v7 + 32);
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_23136A970();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v13;
    v17 = v43;
    sub_23123EA8C(v41 + *(v13 + 72) * v15, v43, &qword_27DD43DD8, &unk_231370740);
    v18 = *v44;
    v19 = v6;
    (*v44)(v46, v17, v6);
    v20 = *(v17 + v40);
    v21 = *v45;
    v23 = sub_231216480();
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_19;
    }

    v26 = v22;
    if (v21[3] < v24 + v25)
    {
      break;
    }

    if (a2)
    {
      if (v22)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44378, &qword_231373038);
      sub_23136A710();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v31 = v46;
    v32 = *v45;
    *(*v45 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    v6 = v19;
    v18((v32[6] + *(v39 + 72) * v23), v31, v19);
    *(v32[7] + 8 * v23) = v20;
    v33 = v32[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_20;
    }

    ++v15;
    v32[2] = v35;
    a2 = 1;
    v13 = v16;
    if (v42 == v15)
    {
      goto LABEL_13;
    }
  }

  v27 = v45;
  sub_2312B5E4C();
  v28 = *v27;
  v29 = sub_231216480();
  if ((v26 & 1) != (v30 & 1))
  {
    goto LABEL_21;
  }

  v23 = v29;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v36 = swift_allocError();
  swift_willThrow();

  v49 = v36;
  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v39 + 8))(v46, v19);

    return;
  }

LABEL_22:
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_23136A650();
  MEMORY[0x23192A730](0xD00000000000001BLL, 0x800000023137D480);
  sub_23136A6F0();
  MEMORY[0x23192A730](39, 0xE100000000000000);
  sub_23136A750();
  __break(1u);
}

void sub_231285C70(uint64_t a1, char a2, uint64_t *a3)
{
  v46 = a3;
  v6 = sub_231367C70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435E0, &qword_23136CB20);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v44 = &v38 - v14;
  v43 = *(a1 + 16);
  if (!v43)
  {
LABEL_13:

    return;
  }

  v38 = v3;
  v39 = v6;
  v15 = 0;
  v42 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v16 = *(v12 + 48);
  v40 = v7;
  v41 = v16;
  v45 = (v7 + 32);
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_23136A970();
      __break(1u);
      goto LABEL_22;
    }

    v17 = v13;
    v18 = v44;
    sub_23123EA8C(v42 + *(v13 + 72) * v15, v44, &qword_27DD435E0, &qword_23136CB20);
    v19 = *v45;
    (*v45)(v47, v18, v6);
    v20 = *(v18 + v41);
    v21 = *v46;
    v23 = sub_2312167DC();
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_19;
    }

    v26 = v22;
    if (v21[3] < v24 + v25)
    {
      break;
    }

    if (a2)
    {
      if (v22)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44368, &qword_231373028);
      sub_23136A710();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v31 = v47;
    v32 = *v46;
    *(*v46 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    v6 = v39;
    v19((v32[6] + *(v40 + 72) * v23), v31, v39);
    *(v32[7] + 8 * v23) = v20;
    v33 = v32[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_20;
    }

    ++v15;
    v32[2] = v35;
    a2 = 1;
    v13 = v17;
    if (v43 == v15)
    {
      goto LABEL_13;
    }
  }

  v27 = v46;
  sub_2312B60F8();
  v28 = *v27;
  v29 = sub_2312167DC();
  if ((v26 & 1) != (v30 & 1))
  {
    goto LABEL_21;
  }

  v23 = v29;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v36 = swift_allocError();
  swift_willThrow();

  v50 = v36;
  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v40 + 8))(v47, v39);

    return;
  }

LABEL_22:
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_23136A650();
  MEMORY[0x23192A730](0xD00000000000001BLL, 0x800000023137D480);
  sub_23136A6F0();
  MEMORY[0x23192A730](39, 0xE100000000000000);
  sub_23136A750();
  __break(1u);
}

void sub_2312860D4(uint64_t a1, char a2, uint64_t *a3)
{
  v38 = *(a1 + 16);
  v39 = a3;
  if (!v38)
  {

    return;
  }

  v37 = v3;
  v6 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_23136A970();
      __break(1u);
      goto LABEL_22;
    }

    sub_23123EA8C(i, &v45, &qword_27DD44048, &unk_231370F00);
    v8 = v45;
    v44 = v45;
    v42 = v46;
    v43 = v47;
    v9 = *v39;
    v17 = sub_231215F6C(v45, *(&v45 + 1));
    v18 = v9[2];
    v19 = (v10 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v10;
    if (v9[3] < v20)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44388, &unk_231373050);
      sub_23136A710();
      if (v21)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v26 = *v39;
    *(*v39 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    *(v26[6] + 16 * v17) = v8;
    v27 = (v26[7] + 32 * v17);
    v28 = v43;
    *v27 = v42;
    v27[1] = v28;
    v29 = v26[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_20;
    }

    ++v6;
    v26[2] = v31;
    a2 = 1;
    if (v38 == v6)
    {

      return;
    }
  }

  v22 = v39;
  sub_2312B656C(v20, a2 & 1, v11, v12, v13, v14, v15, v16, v34, v35, v36, v37, v38, v39, v40, v41, v42, *(&v42 + 1), v43, *(&v43 + 1), v44, v45, v46, *(&v46 + 1), v47, *(&v47 + 1), v48, v49, v50, v51, v52, v53, v54, v55);
  v23 = *v22;
  v24 = sub_231215F6C(v8, *(&v8 + 1));
  if ((v21 & 1) != (v25 & 1))
  {
    goto LABEL_21;
  }

  v17 = v24;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v32 = swift_allocError();
  swift_willThrow();

  v49 = v32;
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2311D1F18(&v42, &qword_27DD443C0, &unk_23136E000);

    return;
  }

LABEL_22:
  sub_23136A650();
  MEMORY[0x23192A730](0xD00000000000001BLL, 0x800000023137D480);
  sub_23136A6F0();
  MEMORY[0x23192A730](39, 0xE100000000000000);
  sub_23136A750();
  __break(1u);
}

unint64_t sub_2312863F8()
{
  result = qword_280F85058;
  if (!qword_280F85058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85058);
  }

  return result;
}

unint64_t sub_23128644C()
{
  result = qword_280F850A8;
  if (!qword_280F850A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F850A8);
  }

  return result;
}

unint64_t sub_2312864A0()
{
  result = qword_27DD441A8;
  if (!qword_27DD441A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD441A8);
  }

  return result;
}

unint64_t sub_2312864F4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_75_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD44198, &qword_231371838);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_231286568()
{
  result = qword_280F85040;
  if (!qword_280F85040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85040);
  }

  return result;
}

unint64_t sub_2312865BC()
{
  result = qword_280F850C8;
  if (!qword_280F850C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F850C8);
  }

  return result;
}

unint64_t sub_231286640()
{
  result = qword_280F85088;
  if (!qword_280F85088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85088);
  }

  return result;
}

unint64_t sub_231286694()
{
  result = qword_280F850D0;
  if (!qword_280F850D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F850D0);
  }

  return result;
}

unint64_t sub_2312866E8()
{
  result = qword_280F85070;
  if (!qword_280F85070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85070);
  }

  return result;
}

unint64_t sub_23128673C()
{
  result = qword_27DD44200;
  if (!qword_27DD44200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44200);
  }

  return result;
}

unint64_t sub_231286790()
{
  result = qword_27DD44208;
  if (!qword_27DD44208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44208);
  }

  return result;
}

unint64_t sub_2312867E4()
{
  result = qword_27DD44210;
  if (!qword_27DD44210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44210);
  }

  return result;
}

unint64_t sub_231286868()
{
  result = qword_27DD44218;
  if (!qword_27DD44218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44218);
  }

  return result;
}

unint64_t sub_2312868BC()
{
  result = qword_27DD44220;
  if (!qword_27DD44220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44220);
  }

  return result;
}

unint64_t sub_231286910()
{
  result = qword_27DD44228;
  if (!qword_27DD44228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44228);
  }

  return result;
}

unint64_t sub_231286964()
{
  result = qword_27DD44230;
  if (!qword_27DD44230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44230);
  }

  return result;
}

unint64_t sub_2312869B8()
{
  result = qword_280F85090;
  if (!qword_280F85090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85090);
  }

  return result;
}

unint64_t sub_231286A0C()
{
  result = qword_280F850B0;
  if (!qword_280F850B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F850B0);
  }

  return result;
}

unint64_t sub_231286A60()
{
  result = qword_280F85398;
  if (!qword_280F85398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85398);
  }

  return result;
}

unint64_t sub_231286AB4()
{
  result = qword_280F85370;
  if (!qword_280F85370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85370);
  }

  return result;
}

unint64_t sub_231286B08()
{
  result = qword_280F85458;
  if (!qword_280F85458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85458);
  }

  return result;
}

unint64_t sub_231286B5C()
{
  result = qword_280F81B80;
  if (!qword_280F81B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F81B80);
  }

  return result;
}

unint64_t sub_231286BE8()
{
  result = qword_280F85390;
  if (!qword_280F85390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85390);
  }

  return result;
}

unint64_t sub_231286C3C()
{
  result = qword_280F85478[0];
  if (!qword_280F85478[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F85478);
  }

  return result;
}

unint64_t sub_231286C90()
{
  result = qword_280F81B98[0];
  if (!qword_280F81B98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F81B98);
  }

  return result;
}

unint64_t sub_231286CE4()
{
  result = qword_280F853B0;
  if (!qword_280F853B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F853B0);
  }

  return result;
}

unint64_t sub_231286D38()
{
  result = qword_27DD44298;
  if (!qword_27DD44298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44298);
  }

  return result;
}

unint64_t sub_231286D8C()
{
  result = qword_280F82E68;
  if (!qword_280F82E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F82E68);
  }

  return result;
}

unint64_t sub_231286DE0()
{
  result = qword_280F82E80;
  if (!qword_280F82E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F82E80);
  }

  return result;
}

unint64_t sub_231286E34(uint64_t a1)
{
  result = OUTLINED_FUNCTION_75_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD42F68, &qword_23136B890);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_231286EA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 424))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231286EE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 392) = 0u;
    *(result + 408) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 424) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 424) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_231286FBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231286FFC(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SiriSuggestionsRuntimeConfig.SiriSuggestionsEventConfig(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SiriSuggestionsRuntimeConfig.SiriSuggestionsEventConfig(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2312870CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23128710C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_231287170(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2312871B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignalGeneratorConfig(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SignalGeneratorConfig(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_231287258(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231287298(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2312872F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231287334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriSuggestionsRuntimeConfig.SiriSuggestionsEngagementConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231287504(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_53_7(-1);
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
      return OUTLINED_FUNCTION_53_7((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_53_7((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_53_7((*a1 | (v4 << 8)) - 5);
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

  return OUTLINED_FUNCTION_53_7(v8);
}

_BYTE *sub_231287588(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_65_4(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_63_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_64_5(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_51_6(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231287654(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_53_7(-1);
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
      return OUTLINED_FUNCTION_53_7((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_53_7((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_53_7((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_53_7(v8);
}

_BYTE *sub_2312876D8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_65_4(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_63_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_64_5(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_51_6(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2312877A8()
{
  result = qword_27DD442C0;
  if (!qword_27DD442C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD442C0);
  }

  return result;
}

unint64_t sub_231287800()
{
  result = qword_27DD442C8;
  if (!qword_27DD442C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD442C8);
  }

  return result;
}

unint64_t sub_231287858()
{
  result = qword_27DD442D0;
  if (!qword_27DD442D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD442D0);
  }

  return result;
}

unint64_t sub_2312878B0()
{
  result = qword_27DD442D8;
  if (!qword_27DD442D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD442D8);
  }

  return result;
}

unint64_t sub_231287908()
{
  result = qword_27DD442E0;
  if (!qword_27DD442E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD442E0);
  }

  return result;
}

unint64_t sub_231287960()
{
  result = qword_27DD442E8;
  if (!qword_27DD442E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD442E8);
  }

  return result;
}

unint64_t sub_2312879B8()
{
  result = qword_27DD442F0;
  if (!qword_27DD442F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD442F0);
  }

  return result;
}

unint64_t sub_231287A10()
{
  result = qword_27DD442F8;
  if (!qword_27DD442F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD442F8);
  }

  return result;
}

unint64_t sub_231287A68()
{
  result = qword_27DD44300;
  if (!qword_27DD44300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44300);
  }

  return result;
}

unint64_t sub_231287AC0()
{
  result = qword_27DD44308;
  if (!qword_27DD44308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44308);
  }

  return result;
}

unint64_t sub_231287B18()
{
  result = qword_27DD44310;
  if (!qword_27DD44310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44310);
  }

  return result;
}

unint64_t sub_231287B70()
{
  result = qword_27DD44318;
  if (!qword_27DD44318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44318);
  }

  return result;
}

unint64_t sub_231287BC8()
{
  result = qword_27DD44320;
  if (!qword_27DD44320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44320);
  }

  return result;
}

unint64_t sub_231287C20()
{
  result = qword_280F82E70;
  if (!qword_280F82E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F82E70);
  }

  return result;
}

unint64_t sub_231287C78()
{
  result = qword_280F82E78;
  if (!qword_280F82E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F82E78);
  }

  return result;
}

unint64_t sub_231287CD0()
{
  result = qword_280F853A0;
  if (!qword_280F853A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F853A0);
  }

  return result;
}

unint64_t sub_231287D28()
{
  result = qword_280F853A8;
  if (!qword_280F853A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F853A8);
  }

  return result;
}

unint64_t sub_231287D80()
{
  result = qword_280F81B88;
  if (!qword_280F81B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F81B88);
  }

  return result;
}

unint64_t sub_231287DD8()
{
  result = qword_280F81B90;
  if (!qword_280F81B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F81B90);
  }

  return result;
}

unint64_t sub_231287E30()
{
  result = qword_280F7CE80;
  if (!qword_280F7CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CE80);
  }

  return result;
}

unint64_t sub_231287E88()
{
  result = qword_280F7CE88;
  if (!qword_280F7CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CE88);
  }

  return result;
}

unint64_t sub_231287EE0()
{
  result = qword_280F85468;
  if (!qword_280F85468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85468);
  }

  return result;
}

unint64_t sub_231287F38()
{
  result = qword_280F85470;
  if (!qword_280F85470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85470);
  }

  return result;
}

unint64_t sub_231287F90()
{
  result = qword_280F85380;
  if (!qword_280F85380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85380);
  }

  return result;
}

unint64_t sub_231287FE8()
{
  result = qword_280F85388;
  if (!qword_280F85388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85388);
  }

  return result;
}

unint64_t sub_231288040()
{
  result = qword_280F85060;
  if (!qword_280F85060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85060);
  }

  return result;
}

unint64_t sub_231288098()
{
  result = qword_280F85068;
  if (!qword_280F85068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85068);
  }

  return result;
}

unint64_t sub_2312880F0()
{
  result = qword_280F85CF8;
  if (!qword_280F85CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85CF8);
  }

  return result;
}

unint64_t sub_231288148()
{
  result = qword_280F85A30;
  if (!qword_280F85A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85A30);
  }

  return result;
}

unint64_t sub_2312881A0()
{
  result = qword_280F85D00;
  if (!qword_280F85D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85D00);
  }

  return result;
}

unint64_t sub_2312881F8()
{
  result = qword_280F85A50;
  if (!qword_280F85A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85A50);
  }

  return result;
}

unint64_t sub_231288250()
{
  result = qword_280F85078;
  if (!qword_280F85078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85078);
  }

  return result;
}

unint64_t sub_2312882A8()
{
  result = qword_280F85080;
  if (!qword_280F85080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85080);
  }

  return result;
}

unint64_t sub_231288300()
{
  result = qword_280F850B8;
  if (!qword_280F850B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F850B8);
  }

  return result;
}

unint64_t sub_231288358()
{
  result = qword_280F850C0;
  if (!qword_280F850C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F850C0);
  }

  return result;
}

unint64_t sub_2312883B0()
{
  result = qword_280F85098;
  if (!qword_280F85098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85098);
  }

  return result;
}

unint64_t sub_231288408()
{
  result = qword_280F850A0;
  if (!qword_280F850A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F850A0);
  }

  return result;
}

unint64_t sub_231288460()
{
  result = qword_280F85048;
  if (!qword_280F85048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85048);
  }

  return result;
}

unint64_t sub_2312884B8()
{
  result = qword_280F85050;
  if (!qword_280F85050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85050);
  }

  return result;
}

unint64_t sub_23128850C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_75_3(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_34_1();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_23128854C()
{
  result = qword_280F84FC8;
  if (!qword_280F84FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F84FC8);
  }

  return result;
}

unint64_t sub_2312885A0()
{
  result = qword_280F85A80;
  if (!qword_280F85A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85A80);
  }

  return result;
}

unint64_t sub_2312885F4()
{
  result = qword_280F85038;
  if (!qword_280F85038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85038);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_9()
{
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);

  return sub_23136A820();
}

uint64_t OUTLINED_FUNCTION_56_6()
{
  v2 = *(v1 + 8);
  result = *(v0 + 136);
  v4 = *(v0 + 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_79_2()
{

  return sub_23136A820();
}

uint64_t OUTLINED_FUNCTION_80_2(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FEBD8](v2, a2, 22, 1, 490);
}

void *AppIntentUpdateRefresher.__allocating_init(refreshableService:interestedIntentNames:intentDiscoverer:)()
{
  OUTLINED_FUNCTION_14_17();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  sub_2311D38A8(v0, (v4 + 5));
  return v4;
}

void *AppIntentUpdateRefresher.init(refreshableService:interestedIntentNames:intentDiscoverer:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_2311D38A8(a4, (v4 + 5));
  return v4;
}

BOOL sub_231288938(uint64_t a1)
{
  sub_2313698C0();
  OUTLINED_FUNCTION_21();
  v58 = v3;
  v59 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v2);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439E0, &unk_23136EDD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v55 - v12;
  v14 = sub_231368480();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  v56 = v8;
  v57 = a1;
  if (v19)
  {
    v60 = (v16 + 8);
    v61 = (v16 + 32);
    v20 = (a1 + 40);
    v63 = MEMORY[0x277D84FA0];
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v23 = v62[9];
      __swift_project_boxed_opaque_existential_1(v62 + 5, v62[8]);
      sub_231369EE0();
      sub_231368A80();

      if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
      {
        sub_231228E9C(v13, &qword_27DD439E0, &unk_23136EDD0);
      }

      else
      {
        (*v61)(v18, v13, v14);
        v24 = v63;
        sub_231369EE0();
        v25 = sub_231368460();
        v26 = sub_231288F74(v25, v24);
        (*v60)(v18, v14);

        v63 = v26;
      }

      v20 += 2;
      --v19;
    }

    while (v19);
  }

  else
  {
    v63 = MEMORY[0x277D84FA0];
  }

  v27 = v63;
  v28 = v62[4];
  sub_231369EE0();
  v29 = sub_231289078(v28, v27);

  if ((v29 & 1) == 0)
  {
    v30 = v55;
    sub_2313690F0();
    v43 = v57;
    sub_231369EE0();

    v32 = sub_2313698A0();
    v44 = sub_23136A390();

    if (os_log_type_enabled(v32, v44))
    {
      v45 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v45 = 136315650;
      LODWORD(v62) = v29;
      v46 = MEMORY[0x23192A860](v43);
      sub_2311CFD58(v46, v47, &v64);

      OUTLINED_FUNCTION_11_15();
      v48 = sub_23136A320();
      v50 = v49;

      sub_2311CFD58(v48, v50, &v64);

      OUTLINED_FUNCTION_12_13();
      LOBYTE(v29) = v62;
      v51 = sub_23136A320();
      v53 = sub_2311CFD58(v51, v52, &v64);

      *(v45 + 24) = v53;
      _os_log_impl(&dword_2311CB000, v32, v44, "%s have intents: %s that intersect our interestedIntentNames: %s. Refreshing service", v45, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v58 + 8))(v55, v59);
      goto LABEL_15;
    }

LABEL_14:

    (*(v58 + 8))(v30, v59);
    goto LABEL_15;
  }

  v30 = v56;
  sub_2313690F0();
  v31 = v57;
  sub_231369EE0();

  v32 = sub_2313698A0();
  v33 = sub_23136A390();

  if (!os_log_type_enabled(v32, v33))
  {
    goto LABEL_14;
  }

  v34 = swift_slowAlloc();
  v64 = swift_slowAlloc();
  *v34 = 136315650;
  v35 = MEMORY[0x23192A860](v31, MEMORY[0x277D837D0]);
  sub_2311CFD58(v35, v36, &v64);

  OUTLINED_FUNCTION_11_15();
  v37 = sub_23136A320();
  v39 = v38;

  sub_2311CFD58(v37, v39, &v64);

  OUTLINED_FUNCTION_12_13();
  v40 = sub_23136A320();
  v42 = sub_2311CFD58(v40, v41, &v64);

  *(v34 + 24) = v42;
  _os_log_impl(&dword_2311CB000, v32, v33, "%s does NOT have intents: %s that we are interested in: %s", v34, 0x20u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();

  (*(v58 + 8))(v56, v59);
LABEL_15:

  return (v29 & 1) == 0;
}

uint64_t sub_231288F74(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_231369EE0();
    sub_23122E218();
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return a2;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231289078(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  sub_231369EE0();
  result = sub_231369EE0();
  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v25 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v6 + 40);
      sub_23136A9D0();
      sub_231369EE0();
      sub_23136A060();
      v19 = sub_23136AA00();
      v20 = ~(-1 << *(v6 + 32));
      do
      {
        v21 = v19 & v20;
        if (((*(v6 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {

          v4 = v25;
          goto LABEL_13;
        }

        v22 = (*(v6 + 48) + 16 * v21);
        if (*v22 == v17 && v22[1] == v16)
        {
          break;
        }

        v24 = sub_23136A900();
        v19 = v21 + 1;
      }

      while ((v24 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231289250()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313698C0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_43();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312892F4()
{
  v1 = v0[3];
  if (sub_231288938(v0[2]))
  {
    v2 = v0[3];
    v3 = *(v2 + 16);
    v0[7] = v3;
    if (v3)
    {
      v4 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      v6 = *(MEMORY[0x277D607F0] + 4);
      swift_unknownObjectRetain();
      v7 = swift_task_alloc();
      v0[8] = v7;
      *v7 = v0;
      OUTLINED_FUNCTION_34_0(v7);

      return MEMORY[0x2821C6518](ObjectType, v4);
    }

    v8 = v0[6];
    sub_2313690F0();
    v9 = sub_2313698A0();
    v10 = sub_23136A3B0();
    v11 = OUTLINED_FUNCTION_18_0(v10);
    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[4];
    if (v11)
    {
      *OUTLINED_FUNCTION_63() = 0;
      OUTLINED_FUNCTION_16_17(&dword_2311CB000, v15, v16, "refreshableService not set for AppIntentUpdateRefresher");
      OUTLINED_FUNCTION_29();
    }

    v17 = OUTLINED_FUNCTION_4_15();
    v18(v17);
  }

  v19 = v0[6];

  OUTLINED_FUNCTION_56_0();

  return v20();
}

uint64_t sub_231289474()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231289558()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_2312895B8()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313698C0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_43();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23128965C()
{
  v1 = v0[3];
  if (sub_231288938(v0[2]))
  {
    v2 = v0[3];
    v3 = *(v2 + 16);
    v0[7] = v3;
    if (v3)
    {
      v4 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      v6 = *(MEMORY[0x277D607F0] + 4);
      swift_unknownObjectRetain();
      v7 = swift_task_alloc();
      v0[8] = v7;
      *v7 = v0;
      OUTLINED_FUNCTION_34_0(v7);

      return MEMORY[0x2821C6518](ObjectType, v4);
    }

    v8 = v0[6];
    sub_2313690F0();
    v9 = sub_2313698A0();
    v10 = sub_23136A3B0();
    v11 = OUTLINED_FUNCTION_18_0(v10);
    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[4];
    if (v11)
    {
      *OUTLINED_FUNCTION_63() = 0;
      OUTLINED_FUNCTION_16_17(&dword_2311CB000, v15, v16, "refreshableService not set for AppIntentUpdateRefresher");
      OUTLINED_FUNCTION_29();
    }

    v17 = OUTLINED_FUNCTION_4_15();
    v18(v17);
  }

  v19 = v0[6];

  OUTLINED_FUNCTION_56_0();

  return v20();
}

uint64_t sub_2312897DC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void *AppIntentUpdateRefresher.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  return v0;
}

uint64_t AppIntentUpdateRefresher.__deallocating_deinit()
{
  AppIntentUpdateRefresher.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_231289924()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209AAC;

  return sub_231289250();
}

uint64_t sub_2312899BC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209AAC;

  return sub_2312895B8();
}

uint64_t AppInstallUpdater.__allocating_init(intentDiscoverer:refreshableService:bookkeepingXPCClient:)()
{
  OUTLINED_FUNCTION_14_17();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  ObjectType = swift_getObjectType();
  v15 = sub_23128A92C(v12, v3, v0, v1, v6, ObjectType, v7, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v15;
}

uint64_t AppInstallUpdater.start(container:)()
{
  OUTLINED_FUNCTION_8();
  v1[26] = v2;
  v1[27] = v0;
  v1[25] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44390, &qword_231373078) - 8) + 64);
  v1[28] = OUTLINED_FUNCTION_43();
  v5 = sub_2313698C0();
  v1[29] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[30] = v6;
  v8 = *(v7 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v9 = sub_2313680F0();
  v1[33] = v9;
  OUTLINED_FUNCTION_0(v9);
  v1[34] = v10;
  v12 = *(v11 + 64);
  v1[35] = OUTLINED_FUNCTION_43();
  v13 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231289C90()
{
  sub_2311CF324(*(v0 + 216) + OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_bookkeepingXPCClient, v0 + 16);
  v1 = type metadata accessor for AutoCompleteIndexUpdater();
  swift_allocObject();
  v2 = sub_2312A425C((v0 + 16));
  sub_23126EFE8();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5 >= *(v3 + 24) >> 1)
  {
    sub_23126EFE8();
    v4 = v12;
  }

  *(v0 + 288) = v4;
  v6 = *(v0 + 200);
  *(v0 + 80) = v1;
  *(v0 + 88) = sub_23128AB5C(qword_280F80CC8, 255, type metadata accessor for AutoCompleteIndexUpdater);
  *(v0 + 56) = v2;
  *(v4 + 16) = v5 + 1;
  sub_2311D38A8((v0 + 56), v4 + 40 * v5 + 32);
  swift_getObjectType();
  v7 = *(MEMORY[0x277D610B8] + 4);
  v8 = swift_task_alloc();
  *(v0 + 296) = v8;
  *v8 = v0;
  v8[1] = sub_231289E3C;
  v9 = *(v0 + 264);
  v11 = *(v0 + 200);
  v10 = *(v0 + 208);

  return MEMORY[0x2821C72A8](v9);
}

uint64_t sub_231289E3C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 296);
  v3 = *(v1 + 216);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v7 + 304) = v6;

  v8 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231289F3C()
{
  v65 = v0;
  v1 = *(v0 + 304);
  if (!v1)
  {
    v18 = *(v0 + 288);
    goto LABEL_22;
  }

  v2 = *(v1 + 16);
  v59 = *(v0 + 304);
  if (v2)
  {
    v3 = *(v0 + 272);
    v5 = *(v3 + 16);
    v4 = v3 + 16;
    v61 = v5;
    updated = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v0 = *(v4 + 56);
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = *(v63 + 280);
      v9 = *(v63 + 264);
      v61(v8, updated, v9);
      v10 = sub_2313680E0();
      (*(v4 - 8))(v8, v9);
      v11 = *(v10 + 16);
      v12 = *(v7 + 16);
      v13 = v11 + v12;
      if (__OFADD__(v12, v11))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v13 > *(v7 + 24) >> 1)
      {
        sub_23126DC90();
        v7 = v14;
      }

      if (*(v10 + 16))
      {
        if ((*(v7 + 24) >> 1) - *(v7 + 16) < v11)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        if (v11)
        {
          v15 = *(v7 + 16);
          v16 = __OFADD__(v15, v11);
          v17 = v11 + v15;
          if (v16)
          {
            goto LABEL_30;
          }

          *(v7 + 16) = v17;
        }
      }

      else
      {

        if (v11)
        {
          goto LABEL_28;
        }
      }

      updated += v0;
      if (!--v2)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_18:
    v0 = v63;
    v19 = *(v63 + 288);
    v20 = *(v63 + 216);

    v21 = *(v20 + OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_refreshableService);
    v22 = *(v20 + OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_refreshableService + 8);
    swift_unknownObjectRetain();
    v23 = sub_231369EE0();
    v24 = sub_231255354(v23);
    sub_2311CF324(v20 + 112, v63 + 96);
    updated = type metadata accessor for AppIntentUpdateRefresher();
    v11 = swift_allocObject();
    v11[2] = v21;
    v11[3] = v22;
    v11[4] = v24;
    sub_2311D38A8((v63 + 96), (v11 + 5));
    v12 = *(v19 + 16);
    v13 = (v12 + 1);
    v26 = *(v63 + 288);
    if (v12 < *(v19 + 24) >> 1)
    {
      goto LABEL_19;
    }
  }

  sub_23126EFE8();
  v26 = v58;
LABEL_19:
  v27 = *(v0 + 256);
  *(v0 + 160) = updated;
  *(v0 + 168) = sub_23128AB5C(qword_280F80D98, v25, type metadata accessor for AppIntentUpdateRefresher);
  *(v0 + 136) = v11;
  *(v26 + 16) = v13;
  sub_2311D38A8((v0 + 136), v26 + 40 * v12 + 32);
  sub_231369100();
  sub_231369EE0();
  v28 = sub_2313698A0();
  v29 = sub_23136A390();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 256);
  v33 = *(v0 + 232);
  v32 = *(v0 + 240);
  if (v30)
  {
    v62 = *(v0 + 232);
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v64 = v35;
    *v34 = 136315138;
    v36 = MEMORY[0x23192A860](v7, MEMORY[0x277D837D0]);
    v60 = v31;
    v38 = v37;

    v0 = v63;
    v39 = sub_2311CFD58(v36, v38, &v64);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_2311CB000, v28, v29, "Starting the AppIntentUpdater listener with registered intent names: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v32 + 8))(v60, v62);
  }

  else
  {

    (*(v32 + 8))(v31, v33);
  }

LABEL_22:
  v40 = *(v0 + 248);
  v42 = *(v0 + 216);
  v41 = *(v0 + 224);
  v43 = v42[23];
  __swift_project_boxed_opaque_existential_1(v42 + 19, v42[22]);
  sub_231368D30();

  v44 = sub_2313681F0();
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v44);
  v45 = OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_appRegistrationEventObserverToken;
  swift_beginAccess();
  sub_23128AAC8(v41, v42 + v45);
  swift_endAccess();
  sub_2313690F0();
  v46 = sub_2313698A0();
  v47 = sub_23136A390();
  if (OUTLINED_FUNCTION_18_0(v47))
  {
    *OUTLINED_FUNCTION_63() = 0;
    OUTLINED_FUNCTION_57(&dword_2311CB000, v48, v49, "Registered observer with app registration notification to update third party suggestions and build autocomplete index when apps are installed/un-installed");
    OUTLINED_FUNCTION_29();
  }

  v50 = *(v0 + 280);
  v52 = *(v0 + 248);
  v51 = *(v0 + 256);
  v53 = *(v0 + 232);
  v54 = *(v0 + 240);
  v55 = *(v0 + 224);

  (*(v54 + 8))(v52, v53);

  OUTLINED_FUNCTION_56_0();

  return v56();
}

uint64_t AppInstallUpdater.destroy()()
{
  OUTLINED_FUNCTION_8();
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44390, &qword_231373078) - 8) + 64);
  v1[6] = OUTLINED_FUNCTION_43();
  v3 = sub_2313681F0();
  v1[7] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[8] = v4;
  v6 = *(v5 + 64);
  v1[9] = OUTLINED_FUNCTION_43();
  v7 = sub_2313698C0();
  v1[10] = v7;
  OUTLINED_FUNCTION_0(v7);
  v1[11] = v8;
  v10 = *(v9 + 64);
  v1[12] = OUTLINED_FUNCTION_43();
  v11 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23128A57C()
{
  v1 = v0[12];
  sub_2313690F0();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_18_0(v3))
  {
    *OUTLINED_FUNCTION_63() = 0;
    OUTLINED_FUNCTION_57(&dword_2311CB000, v4, v5, "destroying AppIntentUpdater");
    OUTLINED_FUNCTION_29();
  }

  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];

  v12 = OUTLINED_FUNCTION_4_15();
  v13(v12);
  v14 = OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_appRegistrationEventObserverToken;
  swift_beginAccess();
  sub_23128ABA4(v11 + v14, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v9) == 1)
  {
    sub_231228E9C(v0[6], &qword_27DD44390, &qword_231373078);
  }

  else
  {
    v15 = v0[5];
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    v16 = v15[23];
    __swift_project_boxed_opaque_existential_1(v15 + 19, v15[22]);
    sub_231368D20();
    v17 = OUTLINED_FUNCTION_4_15();
    v18(v17);
  }

  v19 = v0[12];
  v20 = v0[9];
  v21 = v0[6];

  OUTLINED_FUNCTION_56_0();

  return v22();
}

uint64_t AppInstallUpdater.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  sub_231228E9C(v0 + OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_appRegistrationEventObserverToken, &qword_27DD44390, &qword_231373078);
  v1 = *(v0 + OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_refreshableService);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_bookkeepingXPCClient));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AppInstallUpdater.__deallocating_deinit()
{
  AppInstallUpdater.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23128A7F4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209AAC;

  return AppInstallUpdater.start(container:)();
}

uint64_t sub_23128A89C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311D05C8;

  return AppInstallUpdater.destroy()();
}

uint64_t sub_23128A92C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21();
  v15 = v14;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v27 - v22;
  (*(v15 + 32))(&v27 - v22);
  v24 = [objc_opt_self() defaultCenter];
  sub_2311CF324(a3, v28);
  (*(v15 + 16))(v21, v23, a5);
  v25 = sub_23128AFF0(v21, v24, a2, v28, a5, a6, a7, a8);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  (*(v15 + 8))(v23, a5);
  return v25;
}

uint64_t sub_23128AAC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44390, &qword_231373078);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23128AB5C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_23128ABA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44390, &qword_231373078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of AppIntentUpdateRefresher.appInstalled(bundleIds:)(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  OUTLINED_FUNCTION_34_0(v6);

  return v8(a1);
}

uint64_t dispatch thunk of AppIntentUpdateRefresher.appUnInstalled(bundleIds:)(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  OUTLINED_FUNCTION_34_0(v6);

  return v8(a1);
}

uint64_t type metadata accessor for AppInstallUpdater()
{
  result = qword_280F83BD8;
  if (!qword_280F83BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23128AECC()
{
  sub_23128AF98();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23128AF98()
{
  if (!qword_280F7C9B0)
  {
    sub_2313681F0();
    v0 = sub_23136A4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280F7C9B0);
    }
  }
}

uint64_t sub_23128AFF0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a5;
  v28 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v15 = type metadata accessor for AppInstallUpdater();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v24 = sub_23128B114();
  v25 = MEMORY[0x277D613B8];
  *&v23 = a2;
  swift_defaultActor_initialize();
  v19 = OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_appRegistrationEventObserverToken;
  v20 = sub_2313681F0();
  __swift_storeEnumTagSinglePayload(v18 + v19, 1, 1, v20);
  sub_2311D38A8(&v26, v18 + 112);
  sub_2311D38A8(&v23, v18 + 152);
  v21 = (v18 + OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_refreshableService);
  *v21 = a3;
  v21[1] = a8;
  sub_2311D38A8(a4, v18 + OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_bookkeepingXPCClient);
  return v18;
}

unint64_t sub_23128B114()
{
  result = qword_280F7C798;
  if (!qword_280F7C798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F7C798);
  }

  return result;
}

uint64_t dispatch thunk of DataService.createDataProvider(candidates:generationId:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_231209C08;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_23128B2F0()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for NoOpDataProvider();
  v3 = swift_allocObject();
  v1[3] = v2;
  v1[4] = &off_2845F57A8;
  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23128B394(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209C08;

  return sub_23128B2D0(a1);
}

double sub_23128B42C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_23128B4B4()
{
  v1 = *(v0 + 16);
  v2 = sub_2312981F0();
  type metadata accessor for DefaultFinalizerProvider();
  *(swift_initStackObject() + 16) = v2;
  v3 = sub_2312E8768();

  return v3;
}

uint64_t sub_23128B534()
{
  v2 = *v0;
  v3 = sub_23128B4B4();
  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_23128B594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3(a6);
  v18 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  *(v6 + 16) = v16;
  *v16 = v6;
  v16[1] = sub_23128B6D0;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_23128B6D0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_24();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v6.n128_f64[0] = OUTLINED_FUNCTION_3_21();

  return v5(v6);
}

uint64_t sub_23128B7B0@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  sub_2311CF324(a1, v25);
  v3 = v26;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v24[3] = &type metadata for SiriSuggestionsRuntimeConfig;
  v24[4] = &off_2845F6CC8;
  v24[0] = swift_allocObject();
  memcpy((v24[0] + 16), v7, 0x1A8uLL);
  v9 = type metadata accessor for DiscoverabilityScorer();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v24, &type metadata for SiriSuggestionsRuntimeConfig);
  v14 = *(off_2845F0E60 + 8);
  MEMORY[0x28223BE20](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  *(v12 + 5) = &type metadata for SiriSuggestionsRuntimeConfig;
  *(v12 + 6) = &off_2845F6CC8;
  v18 = swift_allocObject();
  *(v12 + 2) = v18;
  memcpy((v18 + 16), v16, 0x1A8uLL);
  v19 = OBJC_IVAR____TtC15SiriSuggestions21DiscoverabilityScorer_objective;
  v20 = *MEMORY[0x277D61380];
  v21 = sub_2313694E0();
  OUTLINED_FUNCTION_11(v21);
  (*(v22 + 104))(&v12[v19], v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v25);
  a2[3] = v9;
  a2[4] = &off_2845F6680;
  *a2 = v12;
  return result;
}

double sub_23128BA58()
{
  swift_beginAccess();
  sub_2311ED450(0.0, 1.0);
  v1 = v0;
  swift_endAccess();
  return v1;
}

uint64_t sub_23128BAC0()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions12RandomScorer_randomNumber;
  v2 = sub_231369500();
  OUTLINED_FUNCTION_11(v2);
  (*(v3 + 8))(v0 + v1);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23128BB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *v4;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_23128BBB4, v6, 0);
}

uint64_t sub_23128BBB4()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 48);
  v2.n128_f64[0] = sub_23128BA58();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_23128BC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_23128BC38, 0, 0);
}

uint64_t sub_23128BC38()
{
  v1 = v0[6];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  OUTLINED_FUNCTION_3(v3);
  v13 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_23128BD60;
  v8 = v0[4];
  v9 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  return v13(v11, v10, v8, v9, v2, v3);
}

uint64_t sub_23128BD60()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_24();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v6.n128_f64[0] = OUTLINED_FUNCTION_3_21();

  return v5(v6);
}

uint64_t sub_23128BE40()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = OBJC_IVAR____TtC15SiriSuggestions22DefaultObjectiveScorer_objective;
  v2 = sub_2313694E0();
  OUTLINED_FUNCTION_11(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23128BF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = a5(319);
  if (v6 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23128BFBC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15SiriSuggestions22DefaultObjectiveScorer_objective;
  v5 = sub_2313694E0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_23128C038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23128B6D0;

  return sub_23128BC10(a1, a2, a3, a4);
}

uint64_t sub_23128C0F8(uint64_t a1, uint64_t *a2)
{
  v5 = 0;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v7 = *(type metadata accessor for RankedCandidateSuggestion() - 8);
    result = sub_23128D18C(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, a2);
    if (v2)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

uint64_t sub_23128C1D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443B0, &qword_2313734C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v35 = (&v33 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443B8, qword_2313734C8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v33 - v17);
  v19 = 0;
  v36 = a1;
  v20 = *(a1 + 16);
  while (2)
  {
    v34 = a2;
    while (1)
    {
      if (v19 == v20)
      {
        v21 = 1;
        v19 = v20;
      }

      else
      {
        if (v19 >= v20)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v22 = type metadata accessor for RankedCandidateSuggestion();
        v24 = *(v22 - 8);
        result = v22 - 8;
        v23 = v24;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_19;
        }

        v25 = v35;
        v26 = v36 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19;
        v27 = *(v8 + 48);
        *v35 = v19;
        sub_2311E1984(v26, v25 + v27);
        sub_2311F0440(v25, v15, &qword_27DD443B0, &qword_2313734C0);
        v21 = 0;
        ++v19;
      }

      __swift_storeEnumTagSinglePayload(v15, v21, 1, v8);
      sub_2311F0440(v15, v18, &qword_27DD443B8, qword_2313734C8);
      if (__swift_getEnumTagSinglePayload(v18, 1, v8) == 1)
      {
        return 0;
      }

      v28 = *v18;
      v29 = v18 + *(v8 + 48);
      v30 = type metadata accessor for RankedCandidateSuggestion();
      sub_2311F03B0(v29 + *(v30 + 24), v7, &qword_27DD42F20, &qword_23136D410);
      sub_2311E1928(v29);
      v31 = sub_231366E80();
      if (__swift_getEnumTagSinglePayload(v7, 1, v31) == 1)
      {
        break;
      }

      v32 = sub_231366E60();
      result = (*(*(v31 - 8) + 8))(v7, v31);
      if (v32)
      {
        goto LABEL_13;
      }
    }

    result = sub_2311D1F18(v7, &qword_27DD42F20, &qword_23136D410);
LABEL_13:
    a2 = v34 - 1;
    if (!__OFSUB__(v34, 1))
    {
      if (v34 != 1)
      {
        continue;
      }

      return v28;
    }

    break;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23128C514(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43780, &qword_231377300) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_231367300();
  v3[6] = v5;
  OUTLINED_FUNCTION_0(v5);
  v3[7] = v6;
  v8 = *(v7 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v9 = type metadata accessor for RankedCandidateSuggestion();
  v3[11] = v9;
  OUTLINED_FUNCTION_0(v9);
  v3[12] = v10;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v13 = sub_2313698C0();
  v3[17] = v13;
  OUTLINED_FUNCTION_0(v13);
  v3[18] = v14;
  v16 = *(v15 + 64) + 15;
  v3[19] = swift_task_alloc();
  v17 = sub_231367C70();
  v3[20] = v17;
  OUTLINED_FUNCTION_0(v17);
  v3[21] = v18;
  v20 = *(v19 + 64) + 15;
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23128C740, 0, 0);
}

uint64_t sub_23128C740()
{
  v144 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[3];
  v142 = &unk_2845F0F48;
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2313677D0();
  v6 = *(v2 + 88);
  v7 = OUTLINED_FUNCTION_26_1();
  v9 = v8(v7);
  v10 = v0[21];
  v11 = v0[22];
  v12 = v0[20];
  v136 = v0;
  if (v9 == *MEMORY[0x277D60AC0])
  {
    (*(v10 + 96))(v11, v12);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
    v14 = sub_2313681A0();
    v15 = *(v14 - 8);
    v16 = (*(v15 + 88))(v11, v14);
    v17 = v0[22];
    if (v16 == *MEMORY[0x277D60DC0])
    {
      v18 = *(v15 + 96);
      v19 = OUTLINED_FUNCTION_26_1();
      v20(v19);
      v21 = *(sub_231368270() - 8);
      v22 = *(v21 + 88);
      v23 = OUTLINED_FUNCTION_26_1();
      v25 = v24(v23);
      v26 = *MEMORY[0x277D60E60];
      v27 = *(v21 + 8);
      v28 = OUTLINED_FUNCTION_26_1();
      v29(v28);
      v30 = sub_231368210();
      OUTLINED_FUNCTION_11(v30);
      (*(v31 + 8))(v11 + v13);
      v0 = v136;
      if (v25 == v26)
      {
        v33 = v4[3];
        v32 = v4[4];
        __swift_project_boxed_opaque_existential_1(v136[3], v33);
        v34 = sub_2313677F0();
        if (v34 != 2 && (v34 & 1) != 0)
        {
          sub_2312672E0(&unk_2845F0F78);
        }
      }
    }

    else
    {
      v35 = sub_231368210();
      OUTLINED_FUNCTION_11(v35);
      (*(v36 + 8))(v11 + v13);
      v37 = *(v15 + 8);
      v38 = OUTLINED_FUNCTION_26_1();
      v39(v38);
    }
  }

  else
  {
    (*(v10 + 8))(v11, v12);
  }

  v40 = sub_23128C0F8(v0[2], &v142);
  if ((v41 & 1) == 0)
  {
    v42 = v40;
    v43 = sub_23128C1D8(v0[2], *(v0[4] + 16));
    v45 = (v44 & 1) != 0 ? *(v0[2] + 16) - 1 : v43;
    if (v45 != v42)
    {
      v47 = v0[19];
      v48 = v0;
      v49 = v0[2];
      sub_2313690F0();
      sub_231369EE0();
      v50 = sub_2313698A0();
      v51 = sub_23136A3A0();

      v134 = v45;
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        result = swift_slowAlloc();
        v143 = result;
        *v52 = 136315650;
        if (v42 < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v54 = v136[2];
        if (v42 >= *(v54 + 16))
        {
LABEL_59:
          __break(1u);
          return result;
        }

        v55 = result;
        v56 = v136[18];
        v139 = v136[19];
        v57 = v136[17];
        v58 = (v54 + ((*(v136[12] + 80) + 32) & ~*(v136[12] + 80)) + *(v136[12] + 72) * v42 + *(v136[11] + 20));
        v59 = v58[4];
        __swift_project_boxed_opaque_existential_1(v58, v58[3]);
        v60 = sub_231368320();
        v62 = sub_2311CFD58(v60, v61, &v143);

        *(v52 + 4) = v62;
        *(v52 + 12) = 2048;
        *(v52 + 14) = v42;
        *(v52 + 22) = 2048;
        v45 = v134;
        *(v52 + 24) = v134;
        _os_log_impl(&dword_2311CB000, v50, v51, "Moving %s from position %ld into position %ld", v52, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        MEMORY[0x23192B930](v55, -1, -1);
        MEMORY[0x23192B930](v52, -1, -1);

        v63 = *(v56 + 8);
        v48 = (v56 + 8);
        v63(v139, v57);
        v64 = v136;
      }

      else
      {
        v66 = v0[18];
        v65 = *(v48 + 19);
        v67 = *(v48 + 17);

        (*(v66 + 8))(v65, v67);
        v64 = v48;
        if (v42 < 0)
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }
      }

      v68 = v64[2];
      if (v42 < *(v68 + 16))
      {
        v69 = v64[12];
        v131 = v64[11];
        v48 = v64[7];
        v70 = *(v69 + 72);
        v135 = (*(v69 + 80) + 32) & ~*(v69 + 80);
        sub_2311E1984(v135 + v70 * v42 + v68, v64[16]);
        v71 = 1;
        if (v42 >= v45)
        {
          v71 = -1;
        }

        v133 = v71;
        v72 = (v48 + 16);
        v73 = v48 + 8;
        v74 = v64[2];
        sub_231369EE0();
        v75 = v133;
        v132 = v70;
        v128 = v133 * v70;
        v129 = v42;
        v76 = v135 + v70 * v42;
        v77 = v42;
        v130 = (v48 + 16);
        while (1)
        {
          v78 = v45 >= v77;
          if (v42 < v45)
          {
            v78 = v77 >= v45;
          }

          if (v78)
          {
            break;
          }

          v79 = v77 + v75;
          if (__OFADD__(v77, v75))
          {
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          if ((v79 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v48 = *(v74 + 16);
          if (v79 >= v48)
          {
            goto LABEL_47;
          }

          v140 = v77;
          v80 = v64[10];
          v81 = v64[6];
          v82 = v74 + v135 + v79 * v132;
          sub_2311E1984(v82, v64[14]);
          v83 = *v72;
          (*v72)(v80, v82, v81);
          if (v140 >= v48)
          {
            goto LABEL_48;
          }

          v84 = v64[9];
          v86 = v64[5];
          v85 = v64[6];
          v83(v84, v74 + v76, v85);
          sub_2313672D0();
          v48 = *v73;
          (*v73)(v84, v85);
          v87 = sub_231367290();
          __swift_storeEnumTagSinglePayload(v86, 0, 1, v87);
          if (v140 >= *(v74 + 16))
          {
            goto LABEL_49;
          }

          v88 = v64[14];
          v89 = v64[15];
          v90 = v64[10];
          v91 = v64[8];
          v92 = v76;
          v93 = v73;
          v94 = v64[6];
          v137 = v92;
          v83(v91, v74 + v92, v94);
          sub_2313672C0();
          v95 = v94;
          v73 = v93;
          (v48)(v91, v95);
          sub_2313672A0();
          sub_2311CF324(v88 + v131[5], v89 + v131[5]);
          sub_2311F03B0(v88 + v131[6], v89 + v131[6], &qword_27DD42F20, &qword_23136D410);
          v96 = v131[7];
          v97 = sub_231369050();
          OUTLINED_FUNCTION_11(v97);
          (*(v98 + 16))(v89 + v96, v88 + v96);
          sub_2311E1928(v88);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_23128D81C(v74);
            v74 = v99;
          }

          v45 = v134;
          v42 = v129;
          v72 = v130;
          v64 = v136;
          if (v140 >= *(v74 + 16))
          {
            goto LABEL_50;
          }

          sub_23128D830(v136[15], v74 + v137);
          v75 = v133;
          v77 = v140 + v133;
          v76 = v137 + v128;
        }

        v48 = v73;
        v100 = v64[16];
        v101 = v64[10];
        v102 = v64[6];
        sub_2311E1984(v100, v64[14]);
        v103 = *v72;
        (*v72)(v101, v100, v102);
        if (v45 < 0)
        {
          goto LABEL_53;
        }

        if (v45 < *(v74 + 16))
        {
          v104 = v64[9];
          v106 = v64[5];
          v105 = v64[6];
          v103(v104, v74 + v135 + v132 * v45, v105);
          sub_2313672D0();
          v107 = *v48;
          (*v48)(v104, v105);
          v108 = sub_231367290();
          __swift_storeEnumTagSinglePayload(v106, 0, 1, v108);
          if (v45 >= *(v74 + 16))
          {
            goto LABEL_55;
          }

          v110 = v64[13];
          v109 = v64[14];
          v111 = v64;
          v112 = v64[10];
          v113 = v111[8];
          v114 = v111[6];
          v133 = v132 * v45;
          v103(v113, v74 + v135 + v132 * v45, v114);
          sub_2313672C0();
          v107(v113, v114);
          sub_2313672A0();
          sub_2311CF324(v109 + v131[5], v110 + v131[5]);
          sub_2311F03B0(v109 + v131[6], v110 + v131[6], &qword_27DD42F20, &qword_23136D410);
          v115 = v131[7];
          v116 = sub_231369050();
          OUTLINED_FUNCTION_11(v116);
          (*(v117 + 16))(v110 + v115, v109 + v115);
          sub_2311E1928(v109);
          v48 = v74;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_40;
          }

          goto LABEL_56;
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        sub_23128D81C(v48);
        v48 = v127;
LABEL_40:
        v0 = v136;
        result = sub_2311E1928(v136[16]);
        if (v134 < *(v48 + 2))
        {
          sub_23128D830(v136[13], &v48[v135 + v133]);
          v46 = v48;
          goto LABEL_42;
        }

        __break(1u);
        goto LABEL_58;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  v46 = v0[2];
  sub_231369EE0();
LABEL_42:
  v118 = v0[22];
  v119 = v0[19];
  v121 = v0[15];
  v120 = v0[16];
  v123 = v0[13];
  v122 = v0[14];
  v125 = v0[9];
  v124 = v0[10];
  v138 = v0[8];
  v141 = v0[5];

  v126 = v0[1];

  return v126(v46);
}

uint64_t sub_23128D18C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v39[-v6];
  v7 = sub_231367D80();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v41 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437F0, &unk_23136DFE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v39[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v45 = &v39[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v39[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v39[-v21];
  v23 = *a2;
  v42 = type metadata accessor for RankedCandidateSuggestion();
  v43 = a1;
  v24 = (a1 + *(v42 + 20));
  v25 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_231369EE0();
  v49[0] = sub_231368320();
  v49[1] = v26;
  v48 = v49;
  v27 = v50;
  LOBYTE(a2) = sub_231217FE8(sub_23128D8E8, v47, v23);
  v50 = v27;

  if ((a2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v28 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_2313682C0();
  v29 = v46;
  (*(v46 + 104))(v20, *MEMORY[0x277D60B78], v7);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v7);
  v30 = *(v10 + 48);
  sub_2311F03B0(v22, v13, &qword_27DD42F18, &unk_23136B810);
  sub_2311F03B0(v20, &v13[v30], &qword_27DD42F18, &unk_23136B810);
  if (__swift_getEnumTagSinglePayload(v13, 1, v7) == 1)
  {
    sub_2311D1F18(v20, &qword_27DD42F18, &unk_23136B810);
    sub_2311D1F18(v22, &qword_27DD42F18, &unk_23136B810);
    if (__swift_getEnumTagSinglePayload(&v13[v30], 1, v7) == 1)
    {
      sub_2311D1F18(v13, &qword_27DD42F18, &unk_23136B810);
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v31 = v45;
  sub_2311F03B0(v13, v45, &qword_27DD42F18, &unk_23136B810);
  if (__swift_getEnumTagSinglePayload(&v13[v30], 1, v7) == 1)
  {
    sub_2311D1F18(v20, &qword_27DD42F18, &unk_23136B810);
    sub_2311D1F18(v22, &qword_27DD42F18, &unk_23136B810);
    (*(v29 + 8))(v31, v7);
LABEL_7:
    sub_2311D1F18(v13, &qword_27DD437F0, &unk_23136DFE0);
LABEL_8:
    v32 = 0;
    return v32 & 1;
  }

  v34 = &v13[v30];
  v35 = v41;
  (*(v29 + 32))(v41, v34, v7);
  sub_23128D908();
  v40 = sub_231369F60();
  v36 = *(v29 + 8);
  v36(v35, v7);
  sub_2311D1F18(v20, &qword_27DD42F18, &unk_23136B810);
  sub_2311D1F18(v22, &qword_27DD42F18, &unk_23136B810);
  v36(v31, v7);
  sub_2311D1F18(v13, &qword_27DD42F18, &unk_23136B810);
  if ((v40 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v37 = v44;
  sub_2311F03B0(v43 + *(v42 + 24), v44, &qword_27DD42F20, &qword_23136D410);
  v38 = sub_231366E80();
  if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
  {
    sub_2311D1F18(v37, &qword_27DD42F20, &qword_23136D410);
    v32 = 1;
  }

  else
  {
    v32 = sub_231366E60();
    (*(*(v38 - 8) + 8))(v37, v38);
  }

  return v32 & 1;
}

uint64_t sub_23128D760(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23120B320;

  return sub_23128C514(a1, a2);
}

uint64_t sub_23128D830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RankedCandidateSuggestion();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23128D908()
{
  result = qword_280F7CA50;
  if (!qword_280F7CA50)
  {
    sub_231367D80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CA50);
  }

  return result;
}

uint64_t sub_23128D960(uint64_t a1)
{
  v1[7] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23128DA08, 0, 0);
}

uint64_t sub_23128DA08()
{
  sub_23128DC20(v0[7], (v0 + 2));
  if (v0[5])
  {
    v2 = v0[8];
    v1 = v0[9];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_2313682C0();
    sub_23128DCF8(v1, v2);
    v4 = sub_231367D80();
    if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
    {
      v5 = 0xF000000000000007;
    }

    else
    {
      v6 = v0[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43008, &unk_23136B8E0);
      v7 = swift_allocBox();
      (*(*(v4 - 8) + 32))(v8, v6, v4);
      v5 = v7 | 0x8000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  else
  {
    sub_23128DC90((v0 + 2));
    v5 = 0xF000000000000007;
  }

  v10 = v0[8];
  v9 = v0[9];

  v11 = v0[1];

  return v11(v5);
}

uint64_t sub_23128DB8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23120B320;

  return sub_23128D960(a1);
}

uint64_t sub_23128DC20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F50, &qword_23136D440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23128DC90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F50, &qword_23136D440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23128DCF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SimpleDialogService.templateDialog(propertyProvider:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v3 = sub_2313698C0();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23128DE40, 0, 0);
}

uint64_t sub_23128DE40()
{
  v31 = v0;
  sub_2311CF324(*(v0 + 136), v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439F8, &qword_23136EDE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440C8, &qword_231371550);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 168);
  if (v1)
  {
    v3 = *(v0 + 144);
    sub_2311E6A28((v0 + 96), v0 + 16);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
    v6 = (*(v5 + 16))(v3, v4, v5);
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

    v9 = *(v0 + 8);

    return v9(v6, v8);
  }

  else
  {
    v11 = *(v0 + 136);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_23128E1A0(v0 + 96);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    swift_getDynamicType();
    sub_231369120();
    v12 = sub_2313698A0();
    v13 = sub_23136A3B0();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 160);
    v16 = *(v0 + 168);
    v17 = *(v0 + 152);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315138;
      v20 = sub_23136AA70();
      v22 = sub_2311CFD58(v20, v21, &v29);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2311CB000, v12, v13, "Unknown property provider type: '%s'", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x23192B930](v19, -1, -1);
      MEMORY[0x23192B930](v18, -1, -1);

      (*(v15 + 8))(v16, v17);
    }

    else
    {

      (*(v15 + 8))(v16, v17);
    }

    v23 = *(v0 + 168);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_23136A650();

    v29 = 0xD000000000000025;
    v30 = 0x800000023137EFF0;
    v24 = sub_23136AA70();
    MEMORY[0x23192A730](v24);

    v26 = v29;
    v25 = v30;
    v27 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_23128E3CC(v26, v25, 0, 0);
    swift_willThrow();

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_23128E1A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440D0, &unk_231371558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23128E220(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23128E2BC;

  return SimpleDialogService.templateDialog(propertyProvider:dialogProperties:environment:viewContext:)(a1, a2);
}

uint64_t sub_23128E2BC(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

id sub_23128E3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_231369FA0();

  if (a4)
  {
    v8 = sub_231369E70();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

void *sub_23128E4E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CEB7D8]) initWithConsumerSubType_];
  v1 = [v0 suggestionLayoutFromCache];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 allSuggestionsInLayout];

    sub_231207BDC(0, &unk_27DD443E0, 0x277D42068);
    v2 = sub_23136A1A0();
  }

  return v2;
}

void sub_23128E594(uint64_t a1)
{
  v3 = sub_2313698C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v138 - v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v138 - v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_0();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v138 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v138 - v21;
  v23 = sub_2313680B0();
  sub_231210C60(v23, v24, a1);

  if (v162)
  {
    v25 = swift_dynamicCast();
    v26 = v165;
    if (!v25)
    {
      v26 = 0;
    }

    v146 = v26;
    if (v25)
    {
      v27 = *(&v165 + 1);
    }

    else
    {
      v27 = 0;
    }

    v150 = v27;
  }

  else
  {
    sub_23128F7CC(&v161);
    v146 = 0;
    v150 = 0;
  }

  v28 = sub_2313680C0();
  sub_231210C60(v28, v29, a1);

  if (v162)
  {
    v30 = swift_dynamicCast();
    v31 = v165;
    if (!v30)
    {
      v31 = 0;
    }

    v144 = v31;
    if (v30)
    {
      v32 = *(&v165 + 1);
    }

    else
    {
      v32 = 0;
    }

    v148 = v32;
  }

  else
  {
    sub_23128F7CC(&v161);
    v144 = 0;
    v148 = 0;
  }

  v33 = *(v1 + 16);
  v34 = *(v1 + 24);
  v35 = v33();
  sub_231369170();
  sub_231369EE0();
  v36 = sub_2313698A0();
  v37 = sub_23136A390();
  v38 = os_log_type_enabled(v36, v37);
  v152 = v3;
  v159 = v8;
  if (v38)
  {
    v39 = -1;
    v40 = OUTLINED_FUNCTION_60();
    *v40 = 134217984;
    if (v35)
    {
      v39 = sub_23125D7A0(v35);
    }

    *(v40 + 4) = v39;

    _os_log_impl(&dword_2311CB000, v36, v37, "got %ld suggestions from proactive cache", v40, 0xCu);
    OUTLINED_FUNCTION_29();

    v3 = v152;
  }

  else
  {
  }

  v42 = *(v4 + 8);
  v41 = v4 + 8;
  v160 = v42;
  v42(v22, v3);
  if (v35)
  {
    v43 = v35;
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
  }

  v157 = sub_23125D7A0(v43);
  if (!v157)
  {
LABEL_102:

    return;
  }

  v145 = v16;
  v143 = v11;
  v45 = 0;
  v156 = v43 & 0xC000000000000001;
  v149 = v43 & 0xFFFFFFFFFFFFFF8;
  v147 = MEMORY[0x277D84F90];
  *&v44 = 136315138;
  v151 = v44;
  v46 = &off_278908000;
  *&v44 = 136315394;
  v142 = v44;
  v158 = v41;
  v154 = v20;
  v155 = v43;
  while (1)
  {
    if (v156)
    {
      v47 = MEMORY[0x23192AD10](v45, v43);
    }

    else
    {
      if (v45 >= *(v149 + 16))
      {
        goto LABEL_104;
      }

      v47 = *(v43 + 8 * v45 + 32);
    }

    v48 = v47;
    v49 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    sub_231369160();
    v50 = v48;
    v51 = sub_2313698A0();
    v52 = sub_23136A390();

    if (os_log_type_enabled(v51, v52))
    {
      v3 = OUTLINED_FUNCTION_60();
      v53 = OUTLINED_FUNCTION_29_0();
      *v3 = OUTLINED_FUNCTION_3_22(v53).n128_u32[0];
      v54 = [v50 v46[213]];
      v153 = v45;
      v55 = [v54 executableType];

      *&v165 = v55;
      type metadata accessor for ATXSuggestionExecutableType(0);
      v56 = sub_23136A010();
      v58 = sub_2311CFD58(v56, v57, &v161);
      v46 = &off_278908000;

      *(v3 + 4) = v58;
      _os_log_impl(&dword_2311CB000, v51, v52, "Received proactive suggestion: %s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_0_23();

      v45 = v153;
    }

    else
    {
    }

    OUTLINED_FUNCTION_7_13();
    v59();
    v60 = [v50 v46[213]];
    v61 = [v60 executableType];

    if (v61 == 1)
    {
      if (v150)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_11_16(&v168);
      v86 = sub_2313698A0();
      v87 = sub_23136A3A0();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_2311CB000, v86, v87, "Found app prediction", v88, 2u);
        OUTLINED_FUNCTION_9_10();
      }

      OUTLINED_FUNCTION_7_13();
      v89();
      v90 = [v50 executableSpecification];
      v91 = [v90 executableObject];

      if (v91)
      {
        *&v165 = v91;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443C8, &qword_231373648);
        if (swift_dynamicCast())
        {
          v92 = v161;
          v93 = [v50 scoreSpecification];
          v94 = [v93 suggestedConfidenceCategory];

          if (v94 == 4 || (v95 = [v50 scoreSpecification], v96 = objc_msgSend(v95, sel_suggestedConfidenceCategory), v95, v96 == 3))
          {
            v97 = v143;
            sub_231369160();
            sub_231369EE0();
            v98 = sub_2313698A0();
            v99 = sub_23136A3A0();

            if (os_log_type_enabled(v98, v99))
            {
              v100 = OUTLINED_FUNCTION_60();
              v3 = OUTLINED_FUNCTION_29_0();
              *v100 = OUTLINED_FUNCTION_3_22(v3).n128_u32[0];
              *(v100 + 4) = sub_2311CFD58(v92, *(&v92 + 1), &v161);
              _os_log_impl(&dword_2311CB000, v98, v99, "app prediction for %s received with enough confidence", v100, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v3);
              OUTLINED_FUNCTION_0_23();
              OUTLINED_FUNCTION_9_10();

              v101 = v143;
            }

            else
            {

              v101 = v97;
            }

            v160(v101, v3);
            v114 = [v50 scoreSpecification];
            [v114 rawScore];

            v162 = sub_231368840();
            __swift_allocate_boxed_opaque_existential_1(&v161);
            sub_231368830();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_2_14();
            }

            OUTLINED_FUNCTION_8_15();
            if (v115)
            {
              OUTLINED_FUNCTION_1_25();
            }

            OUTLINED_FUNCTION_4_16();
            sub_2312250F8(&v161, (v116 + 32));
            goto LABEL_100;
          }
        }
      }

      goto LABEL_96;
    }

    if (v61 != 2 || !v150)
    {
LABEL_49:
      sub_231369160();
      v76 = v50;
      v77 = sub_2313698A0();
      v78 = sub_23136A390();

      v46 = &off_278908000;
      if (os_log_type_enabled(v77, v78))
      {
        v3 = OUTLINED_FUNCTION_60();
        v79 = OUTLINED_FUNCTION_29_0();
        *v3 = OUTLINED_FUNCTION_3_22(v79).n128_u32[0];
        v80 = [v76 executableSpecification];
        v81 = [v80 executableType];

        *&v165 = v81;
        type metadata accessor for ATXSuggestionExecutableType(0);
        v82 = sub_23136A010();
        v84 = sub_2311CFD58(v82, v83, &v161);
        v46 = &off_278908000;

        *(v3 + 4) = v84;
        _os_log_impl(&dword_2311CB000, v77, v78, "[warning] Unknown executable type: %s", v3, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_0_23();
      }

      else
      {
      }

      OUTLINED_FUNCTION_7_13();
      v85();
      goto LABEL_101;
    }

    OUTLINED_FUNCTION_11_16(&v169);
    v62 = sub_2313698A0();
    v63 = sub_23136A3A0();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_2311CB000, v62, v63, "Found a proactive action suggestion", v64, 2u);
      OUTLINED_FUNCTION_9_10();
    }

    OUTLINED_FUNCTION_7_13();
    v65();
    v46 = &off_278908000;
    v66 = [v50 executableSpecification];
    v67 = [v66 executableObject];

    if (v67)
    {
      objc_opt_self();
      v68 = swift_dynamicCastObjCClass();
      if (v68)
      {
        v69 = v68;
        v70 = [v68 bundleId];
        v71 = sub_231369FD0();
        v73 = v72;

        if (v71 == v146 && v150 == v73)
        {
        }

        else
        {
          v75 = sub_23136A900();

          if ((v75 & 1) == 0)
          {
            swift_unknownObjectRelease();
LABEL_96:

            goto LABEL_100;
          }
        }

        OUTLINED_FUNCTION_11_16(v167);
        swift_unknownObjectRetain();
        v102 = sub_2313698A0();
        v103 = sub_23136A3A0();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v102, v103))
        {
          v140 = v103;
          v153 = v102;
          v104 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          *&v161 = v139;
          *v104 = v142;
          v105 = [v69 bundleId];
          v106 = sub_231369FD0();
          v108 = v107;

          v109 = sub_2311CFD58(v106, v108, &v161);

          *(v104 + 4) = v109;
          v141 = v104;
          *(v104 + 12) = 2080;
          v110 = [v69 intent];
          v111 = v110;
          if (v110)
          {
            v112 = [v110 _dictionaryRepresentation];

            v111 = sub_231369E80();
          }

          *&v165 = v111;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443D8, &unk_231373650);
          v117 = sub_23136A010();
          v119 = sub_2311CFD58(v117, v118, &v161);

          v120 = v141;
          *(v141 + 14) = v119;
          v121 = v153;
          _os_log_impl(&dword_2311CB000, v153, v140, "%s with intent: %s", v120, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_9_10();
          OUTLINED_FUNCTION_29();

          v113 = v145;
          v3 = v152;
        }

        else
        {

          v113 = v73;
        }

        v160(v113, v3);
        v122 = v148;
        v46 = &off_278908000;
        if (v148)
        {
          sub_231369EE0();
          v123 = [v69 intent];
          if (v123)
          {
            v124 = v123;
            v125 = [v123 _dictionaryRepresentation];

            v126 = sub_231369E80();
            *&v163 = v144;
            *(&v163 + 1) = v122;
            sub_231369EE0();
            sub_23136A5F0();
            sub_231210E90(&v161, v126);

            sub_2311E57D4(&v161);
          }

          else
          {
            v165 = 0u;
            v166 = 0u;
          }

          sub_23128F834(&v165, &v163);
          if (v164)
          {

            sub_2312250F8(&v163, &v161);
            sub_2311D1D6C(&v161, &v163);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_2_14();
            }

            OUTLINED_FUNCTION_8_15();
            if (v115)
            {
              OUTLINED_FUNCTION_1_25();
            }

            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1Tm(&v161);
            sub_23128F7CC(&v165);
            OUTLINED_FUNCTION_4_16();
            v130 = &v163;
            goto LABEL_92;
          }

          sub_23128F7CC(&v163);
          OUTLINED_FUNCTION_11_16(&v166);
          v131 = v148;
          sub_231369EE0();
          v132 = sub_2313698A0();
          v133 = sub_23136A390();
          v148 = v131;

          LODWORD(v141) = v133;
          v153 = v132;
          if (os_log_type_enabled(v132, v133))
          {
            v134 = OUTLINED_FUNCTION_60();
            v3 = OUTLINED_FUNCTION_29_0();
            *v134 = OUTLINED_FUNCTION_3_22(v3).n128_u32[0];
            v135 = sub_2311CFD58(v144, v148, &v161);

            *(v134 + 4) = v135;
            v136 = v153;
            _os_log_impl(&dword_2311CB000, v153, v141, "[warning] Unable to find entityId: %s in intent. Ignoring", v134, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v3);
            OUTLINED_FUNCTION_0_23();
            OUTLINED_FUNCTION_9_10();

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          OUTLINED_FUNCTION_7_13();
          v137();
          sub_23128F7CC(&v165);
LABEL_100:
          v46 = &off_278908000;
          goto LABEL_101;
        }

        v127 = [v69 intent];
        if (v127)
        {
          v128 = v127;
          v162 = sub_231207BDC(0, &qword_27DD443D0, 0x277CD3D30);
          *&v161 = v128;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_2_14();
          }

          OUTLINED_FUNCTION_8_15();
          if (v115)
          {
            OUTLINED_FUNCTION_1_25();
          }

          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_4_16();
          v130 = &v161;
LABEL_92:
          sub_2312250F8(v130, (v129 + 32));
          goto LABEL_100;
        }

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

LABEL_101:
    v45 = v45 + 1;
    v43 = v155;
    if (v49 == v157)
    {
      goto LABEL_102;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
}

uint64_t sub_23128F74C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_23128F7CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443C0, &unk_23136E000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23128F834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443C0, &unk_23136E000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23128F8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28[-1] - v13;
  v29[0] = a4;
  v29[1] = a5;
  sub_231277750(a3, &v28[-1] - v13);
  v15 = sub_23136A2C0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_231290C88(v14);
  }

  else
  {
    sub_23136A2B0();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_23136A260();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_23136A030();
      v23 = *(v22 + 16);
      sub_231290878(v22 + 32, v29, a6, v28);

      v24 = v28[0];
      sub_231290C88(a3);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_231290C88(a3);
  v25 = swift_allocObject();
  v25[2] = a6;
  v25[3] = a4;
  v25[4] = a5;
  if (v21 | v19)
  {
    v28[1] = 0;
    v28[2] = 0;
    v28[3] = v19;
    v28[4] = v21;
  }

  return swift_task_create();
}

uint64_t RequestsDebouncer.__allocating_init(clock:config:requestName:)(uint64_t *a1, double *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  RequestsDebouncer.init(clock:config:requestName:)(a1, a2, a3, a4);
  return v8;
}

double sub_23128FB68()
{
  result = 1.0;
  xmmword_280F85A10 = xmmword_231373660;
  qword_280F85A20 = 0x4010000000000000;
  return result;
}

double static DebouncerConfig.defaultConfig.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_280F85BD8 != -1)
  {
    swift_once();
  }

  result = *&qword_280F85A20;
  *a1 = xmmword_280F85A10;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23128FC18(uint64_t a1)
{
  v2 = *(v1 + 208);
  *(v1 + 208) = a1;
}

uint64_t RequestsDebouncer.init(clock:config:requestName:)(uint64_t *a1, double *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 2);
  swift_defaultActor_initialize();
  *(v5 + 208) = 0;
  sub_2311CF324(a1, v5 + 112);
  *(v5 + 152) = v9;
  *(v5 + 160) = v10;
  *(v5 + 168) = v11;
  *(v5 + 176) = a3;
  *(v5 + 184) = a4;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231368F20();
  *(v5 + 192) = v10;
  *(v5 + 200) = v13 - v10;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t sub_23128FCD4()
{
  OUTLINED_FUNCTION_8();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v1[6] = *v0;
  v5 = sub_2313698C0();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23128FDC8, v0, 0);
}

uint64_t sub_23128FDC8()
{
  v50 = v0;
  v1 = v0[5];
  v2 = *(v1 + 144);
  __swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
  sub_231368F20();
  v4 = v3;
  v5 = *(v1 + 200);
  if (v3 < v5 && (v6 = v0[5], v7 = sub_23128FC10(), v0[11] = v7, v5 = *(v1 + 200), v7))
  {
    v8 = v7;
    v9 = v0[10];
    v10 = v0[5];
    sub_231369100();

    v11 = sub_2313698A0();
    v12 = sub_23136A3A0();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[10];
    v15 = v0[7];
    v16 = v0[8];
    if (v13)
    {
      v17 = v0[5];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v49 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_2311CFD58(*(v17 + 176), *(v17 + 184), &v49);
      *(v18 + 12) = 2048;
      *(v18 + 14) = v5 - v4;
      _os_log_impl(&dword_2311CB000, v11, v12, "%s request is already scheduled in %f seconds. Skipping this one.", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    (*(v16 + 8))(v14, v15);
    v20 = v0[6];
    v21 = *(MEMORY[0x277D857E0] + 4);
    v22 = swift_task_alloc();
    v0[12] = v22;
    v23 = *(v20 + 80);
    *v22 = v0;
    v22[1] = sub_231290178;
    v24 = v0[2];
    v25 = v8;
  }

  else
  {
    v26 = v0[5];
    v27 = v4 - v5;
    v28 = v26[24];
    if (v28 >= v27)
    {
      v29 = v28 * v26[21];
    }

    else
    {
      v28 = v26[19];
      v29 = v26[20];
    }

    v30 = v0[9];
    v26[24] = v29;
    sub_2313690F0();

    v31 = sub_2313698A0();
    v32 = sub_23136A3A0();

    v33 = os_log_type_enabled(v31, v32);
    v35 = v0[8];
    v34 = v0[9];
    v36 = v0[7];
    if (v33)
    {
      v37 = v0[5];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49 = v39;
      *v38 = 136315394;
      *(v38 + 4) = sub_2311CFD58(*(v37 + 176), *(v37 + 184), &v49);
      *(v38 + 12) = 2048;
      *(v38 + 14) = v28;
      _os_log_impl(&dword_2311CB000, v31, v32, "Scheduling %s in %f seconds.", v38, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    (*(v35 + 8))(v34, v36);
    v40 = v0[4];
    v41 = v0[5];
    v42 = v0[3];
    *(v1 + 200) = v4 + v28;
    v43 = sub_231290428(v42, v40, v1 + 112, v4 + v28);
    sub_23128FC18(v43);
    v24 = sub_23128FC10();
    v0[13] = v24;
    if (!v24)
    {
      __break(1u);
      return MEMORY[0x282200460](v24, v25, v23);
    }

    v44 = v24;
    v45 = v0[6];
    v46 = *(MEMORY[0x277D857E0] + 4);
    v47 = swift_task_alloc();
    v0[14] = v47;
    v23 = *(v45 + 80);
    *v47 = v0;
    v47[1] = sub_2312902E0;
    v24 = v0[2];
    v25 = v44;
  }

  return MEMORY[0x282200460](v24, v25, v23);
}

uint64_t sub_231290178()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 96);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  return MEMORY[0x2822009F8](sub_231290278, v3, 0);
}

uint64_t sub_231290278()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[11];

  v3 = v0[9];
  v2 = v0[10];

  OUTLINED_FUNCTION_56_0();

  return v4();
}

uint64_t sub_2312902E0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = *(v1 + 80);
  v7 = *(v1 + 72);

  v8 = *(v4 + 8);

  return v8();
}

uint64_t sub_231290428(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_23136A2C0();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  sub_2311CF324(a3, v19);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = *(v9 + 80);
  *(v15 + 32) = v16;
  *(v15 + 40) = a4;
  sub_2311D38A8(v19, v15 + 48);
  *(v15 + 88) = a1;
  *(v15 + 96) = a2;

  return sub_23128F8B0(0, 0, v13, &unk_2313737C8, v15, v16);
}

uint64_t sub_231290568(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 32) = a5;
  *(v7 + 24) = a2;
  *(v7 + 16) = a1;
  return MEMORY[0x2822009F8](sub_231290594, 0, 0);
}

uint64_t sub_231290594()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_231368F20();
  v5 = v2 - v4;
  v6 = *(MEMORY[0x277D613B0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_231290658;
  v8.n128_f64[0] = v5;

  return MEMORY[0x2821C7898](v7, v8);
}

uint64_t sub_231290658()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = v2[7];
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  if (v0)
  {
  }

  v12 = (v3[5] + *v3[5]);
  v7 = *(v3[5] + 4);
  v8 = swift_task_alloc();
  v3[8] = v8;
  *v8 = v5;
  v8[1] = sub_231275BCC;
  v9 = v3[6];
  v10 = v3[2];

  return v12(v10);
}

uint64_t *RequestsDebouncer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  v1 = v0[23];

  v2 = v0[26];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RequestsDebouncer.__deallocating_deinit()
{
  RequestsDebouncer.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_231290878@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = v7;
    v8[4] = v6;

    result = swift_task_create();
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DebouncerConfig(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DebouncerConfig(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t dispatch thunk of RequestsDebouncer.waitAndRun(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 224);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_33(v9);
  *v10 = v11;
  v10[1] = sub_2311D05C8;

  return v13(a1, a2, a3);
}

uint64_t sub_231290BB4(uint64_t a1)
{
  v4 = *(v1 + 3);
  v3 = *(v1 + 4);
  v5 = *(v1 + 2);
  v6 = v1[5];
  v7 = *(v1 + 11);
  v8 = *(v1 + 12);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_33(v9);
  *v10 = v11;
  v10[1] = sub_231209AAC;

  return sub_231290568(a1, v6, v5, v4, (v1 + 6), v7, v8);
}

uint64_t sub_231290C88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231290CF0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_33(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_15(v5);

  return v8(v7);
}

uint64_t sub_231290D94()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_33(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_15(v5);

  return v8(v7);
}

uint64_t sub_231290E64()
{
  OUTLINED_FUNCTION_8();
  v1[24] = v2;
  v1[25] = v0;
  v3 = sub_231368570();
  v1[26] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[27] = v4;
  v6 = *(v5 + 64) + 15;
  v1[28] = swift_task_alloc();
  v7 = sub_2313698C0();
  v1[29] = v7;
  OUTLINED_FUNCTION_0(v7);
  v1[30] = v8;
  v10 = *(v9 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v11 = sub_231367D80();
  v1[34] = v11;
  OUTLINED_FUNCTION_0(v11);
  v1[35] = v12;
  v14 = *(v13 + 64) + 15;
  v1[36] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437F0, &unk_23136DFE0);
  v1[37] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_23129105C()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[37];
  v3 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[24];
  v8 = v7[4];
  v49 = v7;
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_2313682C0();
  (*(v5 + 104))(v2, *MEMORY[0x277D60B80], v6);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  v9 = *(v4 + 48);
  sub_2311E66F0(v1, v3, &qword_27DD42F18, &unk_23136B810);
  sub_2311E66F0(v2, v3 + v9, &qword_27DD42F18, &unk_23136B810);
  if (__swift_getEnumTagSinglePayload(v3, 1, v6) == 1)
  {
    v10 = v0[41];
    v11 = v0[34];
    sub_2311D1F18(v0[40], &qword_27DD42F18, &unk_23136B810);
    sub_2311D1F18(v10, &qword_27DD42F18, &unk_23136B810);
    if (__swift_getEnumTagSinglePayload(v3 + v9, 1, v11) == 1)
    {
      sub_2311D1F18(v0[38], &qword_27DD42F18, &unk_23136B810);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v12 = v0[34];
  sub_2311E66F0(v0[38], v0[39], &qword_27DD42F18, &unk_23136B810);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3 + v9, 1, v12);
  v15 = v0[40];
  v14 = v0[41];
  v16 = v0[39];
  if (EnumTagSinglePayload == 1)
  {
    v18 = v0[34];
    v17 = v0[35];
    sub_2311D1F18(v0[40], &qword_27DD42F18, &unk_23136B810);
    sub_2311D1F18(v14, &qword_27DD42F18, &unk_23136B810);
    (*(v17 + 8))(v16, v18);
LABEL_6:
    sub_2311D1F18(v0[38], &qword_27DD437F0, &unk_23136DFE0);
    goto LABEL_7;
  }

  v48 = v0[38];
  v28 = v0[35];
  v29 = v0[36];
  v30 = v0[34];
  (*(v28 + 32))(v29, v3 + v9, v30);
  sub_2312921C4(&qword_280F7CA50, MEMORY[0x277D60BA8]);
  v31 = sub_231369F60();
  v32 = *(v28 + 8);
  v32(v29, v30);
  sub_2311D1F18(v15, &qword_27DD42F18, &unk_23136B810);
  sub_2311D1F18(v14, &qword_27DD42F18, &unk_23136B810);
  v32(v16, v30);
  sub_2311D1F18(v48, &qword_27DD42F18, &unk_23136B810);
  if (v31)
  {
LABEL_11:
    v33 = v0[33];
    sub_231369160();
    v34 = sub_2313698A0();
    v35 = sub_23136A3A0();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[33];
    v38 = v0[29];
    v39 = v0[30];
    if (v36)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2311CB000, v34, v35, "Not running ThirdPartyParameter resolver for siriAutoComplete deliveryVehicle.", v40, 2u);
      OUTLINED_FUNCTION_29();
    }

    v41 = *(v39 + 8);
    v42 = OUTLINED_FUNCTION_28_0();
    v43(v42);
    OUTLINED_FUNCTION_5_15();

    v44 = v0[1];
    OUTLINED_FUNCTION_7();

    __asm { BRAA            X2, X16 }
  }

LABEL_7:
  v19 = v49[4];
  __swift_project_boxed_opaque_existential_1(v0[24], v49[3]);
  v20 = sub_231368300();
  v22 = v21;
  v0[42] = v20;
  v0[43] = v21;
  v0[44] = swift_getObjectType();
  v23 = *(*(v22 + 8) + 8);
  sub_23136A260();
  OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_2312914DC()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = sub_2313693C0();
  v6 = v5;
  swift_unknownObjectRelease();
  v0[45] = v4;
  v0[46] = v6;
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23129155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v65 = v14;
  v15 = v14[46];
  if (v15)
  {
    v16 = v14[32];
    sub_231369160();
    sub_231369EE0();
    v17 = sub_2313698A0();
    v18 = sub_23136A3A0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v14[45];
      v20 = v14[32];
      v21 = v14[29];
      v22 = v14[30];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v64 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_2311CFD58(v19, v15, &v64);
      _os_log_impl(&dword_2311CB000, v17, v18, "Found thirdPartyAppId in context '%s'", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v22 + 8))(v20, v21);
    }

    else
    {
      v36 = v14[32];
      v37 = v14[29];
      v38 = v14[30];

      (*(v38 + 8))(v36, v37);
    }

    v40 = v14[27];
    v39 = v14[28];
    v41 = v14[26];
    (*(v40 + 16))(v39, v14[25] + OBJC_IVAR____TtC15SiriSuggestions27ThirdPartyParameterResolver_resolutionParameter, v41);
    v42 = (*(v40 + 88))(v39, v41);
    if (v42 == *MEMORY[0x277D60FB0])
    {
      v43 = v14[45];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_23136B670;
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 32) = v43;
      *(v44 + 40) = v15;
      OUTLINED_FUNCTION_6_14();

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_40();

      __asm { BRAA            X2, X16 }
    }

    if (v42 == *MEMORY[0x277D60FB8])
    {
      v47 = v14[45];
      v48 = (v14[25] + OBJC_IVAR____TtC15SiriSuggestions27ThirdPartyParameterResolver_appUtils);
      v49 = v48[4];
      __swift_project_boxed_opaque_existential_1(v48, v48[3]);
      sub_2313694D0();

      v50 = v14[6];
      __swift_project_boxed_opaque_existential_1(v14 + 2, v14[5]);
      v51 = *(MEMORY[0x277D60D78] + 4);
      v52 = swift_task_alloc();
      v14[47] = v52;
      *v52 = v14;
      v52[1] = sub_231291958;
      OUTLINED_FUNCTION_40();

      return MEMORY[0x2821C6CC0](v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v61 = v14[26];
      OUTLINED_FUNCTION_40();

      return MEMORY[0x2821FDEB8]();
    }
  }

  else
  {
    v25 = v14[24];
    v26 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    OUTLINED_FUNCTION_28_0();
    v27 = sub_231368300();
    v29 = v28;
    v14[48] = v27;
    v14[49] = swift_getObjectType();
    v30 = *(v29 + 8);
    v14[50] = v30;
    v31 = *(v30 + 8);
    sub_23136A260();
    OUTLINED_FUNCTION_40();

    return MEMORY[0x2822009F8](v32, v33, v34);
  }
}

uint64_t sub_231291958()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 376);
  v6 = *v0;

  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void sub_231291A48()
{
  v4 = v0;
  sub_2311E66F0(v0 + 56, v0 + 96, &qword_27DD43830, &unk_23136E070);
  if (*(v0 + 120))
  {
    sub_2311E6A28((v0 + 96), v0 + 136);
    sub_231291DF4((v0 + 136), &v3);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    sub_2311D1F18(v0 + 56, &qword_27DD43830, &unk_23136E070);
  }

  else
  {
    sub_2311D1F18(v0 + 56, &qword_27DD43830, &unk_23136E070);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_6_14();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_231291BA8()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[48];
  v4 = sub_231367740();
  v6 = v5;
  v0[22] = v4;
  v0[23] = v5;
  swift_unknownObjectRelease();
  v0[51] = v6;
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_231291C1C()
{
  v1 = v0[51];
  v2 = v0[31];
  sub_231369160();
  sub_231369EE0();
  v3 = sub_2313698A0();
  v4 = sub_23136A3A0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[51];
  if (v5)
  {
    v7 = v0[22];
    v9 = v0[30];
    v8 = v0[31];
    v10 = v0[29];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    v13 = sub_2311CFD58(v7, v6, &v27);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_2311CB000, v3, v4, "No thirdPartyAppId in suggestion's context %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v14 = *(v9 + 8);
    v15 = OUTLINED_FUNCTION_28_0();
    v16(v15);
  }

  else
  {
    v18 = v0[30];
    v17 = v0[31];
    v19 = v0[29];
    v20 = v0[51];

    v21 = *(v18 + 8);
    v22 = OUTLINED_FUNCTION_28_0();
    v23(v22);
  }

  OUTLINED_FUNCTION_5_15();

  v24 = v0[1];
  OUTLINED_FUNCTION_40();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_231291DF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23136B670;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231367630();
  v6 = v11;
  v7 = __swift_project_boxed_opaque_existential_1(v10, v11);
  *(v4 + 56) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v7, v6);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v10);
  *a2 = v4;
  return result;
}

uint64_t sub_231291EE8()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions27ThirdPartyParameterResolver_resolutionParameter;
  v2 = sub_231368570();
  OUTLINED_FUNCTION_11(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions27ThirdPartyParameterResolver_appUtils));
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ThirdPartyParameterResolver()
{
  result = qword_280F7F150;
  if (!qword_280F7F150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231291FE0()
{
  result = sub_231368570();
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

uint64_t sub_23129209C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311EC8F4;

  return sub_231290E64();
}

uint64_t sub_2312921C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_5_15()
{
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[36];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[31];
  v10 = v0[28];
}

uint64_t sub_231292278(uint64_t *a1, uint64_t a2)
{
  v53 = a2;
  v3 = sub_231367D80();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v56 = &v50 - v9;
  MEMORY[0x28223BE20](v8);
  v63 = &v50 - v10;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C48, &unk_231370DE0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23136FAB0;
  sub_2313690A0();
  HasNoEngagementPolicy = type metadata accessor for HasNoEngagementPolicy();
  swift_allocObject();
  v18 = sub_2312E8D30(&v66, 0, 1);
  *(v16 + 56) = HasNoEngagementPolicy;
  *(v16 + 64) = &off_2845F6340;
  *(v16 + 32) = v18;
  v19 = type metadata accessor for NotExposedTooManyTimesPolicy();
  v20 = swift_allocObject();
  *(v20 + 16) = v11;
  *(v16 + 96) = v19;
  *(v16 + 104) = &off_2845F6320;
  v52 = v16;
  *(v16 + 72) = v20;
  *&v66 = v11;
  *(&v66 + 1) = v12;
  v67 = v13;
  v68 = v14;
  v69 = v15;
  sub_2312927D0();
  sub_231367A10();
  v22 = v21;
  result = sub_231367D60();
  v24 = result;
  v25 = 0;
  v64 = *(result + 16);
  v62 = v4 + 16;
  v60 = v4 + 88;
  v59 = *MEMORY[0x277D60BA0];
  v58 = (v4 + 8);
  v51 = (v4 + 96);
  v61 = v4;
  v54 = (v4 + 32);
  v57 = MEMORY[0x277D84F90];
  v26 = v63;
LABEL_2:
  v27 = v56;
  while (1)
  {
    if (v64 == v25)
    {

      v42 = v53;
      sub_2311CF324(v53, v65);
      v43 = type metadata accessor for NotShownPreviousSuggestionTooSoonPolicy();
      swift_allocObject();
      v44 = sub_2312EA284(v65, v57, v22);
      v45 = v52;
      v52[17] = v43;
      v45[18] = &off_2845F6310;
      v45[14] = v44;
      v46 = type metadata accessor for NotSpokenSuggestionBeforePolicy();
      v47 = swift_allocObject();
      v45[22] = v46;
      v45[23] = &off_2845F6300;
      v45[19] = v47;
      sub_2311CF324(v42, &v66);
      v48 = type metadata accessor for NotSpokenAgainTooSoonPolicy();
      v49 = swift_allocObject();
      *(v49 + 16) = 0xD000000000000012;
      *(v49 + 24) = 0x800000023137F1A0;
      sub_2311D38A8(&v66, v49 + 32);
      v45[27] = v48;
      v45[28] = &off_2845F62E0;
      v45[24] = v49;
      return v45;
    }

    if (v25 >= *(v24 + 16))
    {
      break;
    }

    v28 = v3;
    v29 = v61;
    v30 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v31 = *(v61 + 72);
    v32 = *(v61 + 16);
    v32(v26, v24 + v30 + v31 * v25, v28);
    v32(v27, v26, v28);
    v33 = *(v29 + 88);
    v3 = v28;
    v34 = v33(v27, v28);
    if (v34 == v59)
    {
      (*v51)(v27, v28);
      v36 = sub_231367020();
      (*(*(v36 - 8) + 8))(v27, v36);
      v37 = *v54;
      (*v54)(v55, v26, v3);
      v38 = v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v65[0] = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2311F5784(0, *(v38 + 16) + 1, 1);
        v38 = *&v65[0];
      }

      v41 = *(v38 + 16);
      v40 = *(v38 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_2311F5784(v40 > 1, v41 + 1, 1);
        v38 = *&v65[0];
      }

      ++v25;
      *(v38 + 16) = v41 + 1;
      v57 = v38;
      result = v37((v38 + v30 + v41 * v31), v55, v3);
      goto LABEL_2;
    }

    v35 = *v58;
    (*v58)(v27, v28);
    result = v35(v26, v28);
    ++v25;
  }

  __break(1u);
  return result;
}

unint64_t sub_2312927D0()
{
  result = qword_280F85378;
  if (!qword_280F85378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85378);
  }

  return result;
}

uint64_t sub_231292824(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_231369050();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312928E4, 0, 0);
}

uint64_t sub_2312928E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_23128DC20(v18[7], (v18 + 2));
  v19 = v18[5];
  if (v19)
  {
    v20 = v18[6];
    __swift_project_boxed_opaque_existential_1(v18 + 2, v18[5]);
    v21 = *(MEMORY[0x277D60F68] + 4);
    v27 = swift_task_alloc();
    v18[11] = v27;
    *v27 = v18;
    v27[1] = sub_2312929FC;
    v28 = v18[10];

    return MEMORY[0x2821C6E60](v28, v19, v20, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    sub_23128DC90((v18 + 2));
    v29 = v18[10];

    v30 = v18[1];

    return v30(0xF000000000000007);
  }
}

uint64_t sub_2312929FC()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_231292AF8, 0, 0);
}

uint64_t sub_231292AF8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = sub_231369040();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  v8 = v0[10];

  v9 = v0[1];

  return v9(v7 | 0x4000000000000000);
}

uint64_t sub_231292BE0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23120B320;

  return sub_231292824(a1);
}

uint64_t sub_231292C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  return MEMORY[0x2822009F8](sub_231292C98, 0, 0);
}

uint64_t sub_231292C98()
{
  sub_2312108A0(*(v0 + 200) + 16, v0 + 56);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 200);
    sub_2311E6A28((v0 + 56), v0 + 16);
    sub_2312108A0(v1 + 56, v0 + 136);
    if (*(v0 + 160))
    {
      sub_2311E6A28((v0 + 136), v0 + 96);
      v2 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      OUTLINED_FUNCTION_1_6();
      v11 = v3 + *v3;
      v5 = *(v4 + 4);
      v6 = swift_task_alloc();
      *(v0 + 208) = v6;
      *v6 = v0;
      v7 = OUTLINED_FUNCTION_0_24(v6);

      return v8(v7);
    }

    sub_231210910(v0 + 136);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  else
  {
    sub_231210910(v0 + 56);
  }

  v10 = *(v0 + 8);

  return v10(0xF000000000000007);
}

uint64_t sub_231292E34()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 208);
  v4 = *v0;
  *(*v0 + 216) = v2;

  return MEMORY[0x2822009F8](sub_231292F30, 0, 0);
}

uint64_t sub_231292F30()
{
  v1 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  OUTLINED_FUNCTION_1_6();
  v9 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_0_24(v5);

  return v7(v6);
}

uint64_t sub_231293030()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 224);
  v4 = *v0;
  *(*v0 + 232) = v2;

  return MEMORY[0x2822009F8](sub_23129312C, 0, 0);
}

uint64_t sub_23129312C()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[27];
  v2 = v0[29];
  if ((~v1 & 0xF000000000000007) == 0)
  {
    goto LABEL_4;
  }

  if ((~v2 & 0xF000000000000007) == 0)
  {
    v2 = v0[27];
LABEL_4:
    sub_2312932F4(v2);
    v3 = 0xF000000000000007;
    goto LABEL_6;
  }

  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v3 = v4 | 0xC000000000000000;
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_2312931E0()
{
  sub_231210910(v0 + 16);
  sub_231210910(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_231293244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2311F4480;

  return sub_231292C74(a1, a2, a3);
}

uint64_t sub_2312932F4(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_23129330C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v115 = a3;
  v107 = a4;
  v112 = a2;
  v116 = a5;
  v6 = sub_231367BD0();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v105 = v8;
  v106 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_23();
  v104 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443F0, &unk_231373A20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v109 = &v101 - v14;
  v108 = sub_231367DB0();
  v15 = OUTLINED_FUNCTION_0_0(v108);
  v103 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_23();
  v102 = v19;
  v113 = sub_231367070();
  v20 = OUTLINED_FUNCTION_0_0(v113);
  v111 = v21;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v20);
  v110 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v101 - v26;
  v28 = sub_231367C70();
  v29 = OUTLINED_FUNCTION_0_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_23();
  v35 = v34;
  v36 = a1[3];
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  v38 = MEMORY[0x231929610](v36, v37);
  v40 = v39;
  sub_2313691C0();
  v41 = MEMORY[0x231927690]();
  v43 = v42;

  if (v38 == v41 && v40 == v43)
  {

    goto LABEL_10;
  }

  v45 = sub_23136A900();

  if (v45)
  {
LABEL_10:
    v54 = *MEMORY[0x277D60B98];
    v55 = sub_231367D80();
    v56 = OUTLINED_FUNCTION_11(v55);
    v58 = *(v57 + 104);
    v59 = v56;
    v60 = v116;

    return v58(v60, v54, v59);
  }

  (*(v31 + 16))(v35, v115, v28);
  v46 = (*(v31 + 88))(v35, v28);
  if (v46 == *MEMORY[0x277D60AC0])
  {
    (*(v31 + 96))(v35, v28);
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
    v48 = sub_231368210();
    OUTLINED_FUNCTION_11(v48);
    (*(v49 + 8))(v35 + v47);
    v50 = *(v114 + 48);
    __swift_project_boxed_opaque_existential_1((v114 + 16), *(v114 + 40));
    if (sub_231368410())
    {
      v51 = *MEMORY[0x277D60B78];
      v52 = sub_231367D80();
      OUTLINED_FUNCTION_7_0(v52);
      (*(v53 + 104))(v116, v51);
    }

    else
    {
      v66 = v112[4];
      __swift_project_boxed_opaque_existential_1(v112, v112[3]);
      v115 = v66;
      sub_231368390();
      v67 = *MEMORY[0x277D60820];
      v69 = v110;
      v68 = v111;
      v70 = v113;
      v114 = *(v111 + 104);
      (v114)(v110, v67, v113);
      v71 = sub_23131210C(v27, v69);
      v72 = *(v68 + 8);
      v72(v69, v70);
      v72(v27, v70);
      if (v71 & 1) != 0 || (sub_231368390(), (v114)(v69, *MEMORY[0x277D60838], v70), v73 = sub_23131210C(v27, v69), v72(v69, v70), v72(v27, v70), (v73))
      {
        v74 = MEMORY[0x277D607E0];
      }

      else
      {
        v74 = MEMORY[0x277D607E8];
      }

      v88 = *v74;
      v89 = sub_231367020();
      OUTLINED_FUNCTION_7_0(v89);
      v91 = v116;
      (*(v90 + 104))(v116, v88);
      v92 = *MEMORY[0x277D60BA0];
      v93 = sub_231367D80();
      OUTLINED_FUNCTION_7_0(v93);
      (*(v94 + 104))(v91, v92);
    }

    v95 = sub_2313681A0();
    OUTLINED_FUNCTION_11(v95);
    return (*(v96 + 8))(v35);
  }

  else
  {
    if (v46 == *MEMORY[0x277D60AE0])
    {
      v62 = MEMORY[0x277D60B98];
    }

    else
    {
      if (v46 != *MEMORY[0x277D60AD0])
      {
        v85 = *MEMORY[0x277D60B88];
        v86 = sub_231367D80();
        OUTLINED_FUNCTION_7_0(v86);
        (*(v87 + 104))(v116, v85);
        return (*(v31 + 8))(v35, v28);
      }

      if (v107)
      {
        v75 = v104;
        sub_2313691E0();
        sub_231367BC0();
        (*(v105 + 8))(v75, v106);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443F8, &unk_231373A30);
        v77 = v108;
        v76 = v109;
        v78 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v76, v78 ^ 1u, 1, v77);
        if (__swift_getEnumTagSinglePayload(v76, 1, v77) != 1)
        {
          v79 = *(v103 + 32);
          v80 = v102;
          v79(v102, v76, v77);
          v81 = v116;
          v79(v116, v80, v77);
          v82 = *MEMORY[0x277D60B90];
          v83 = sub_231367D80();
          OUTLINED_FUNCTION_7_0(v83);
          return (*(v84 + 104))(v81, v82);
        }
      }

      else
      {
        v76 = v109;
        __swift_storeEnumTagSinglePayload(v109, 1, 1, v108);
      }

      sub_231293C20(v76);
      sub_2311CF324(a1, v117);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
      sub_2313694A0();
      if (swift_dynamicCast())
      {
        sub_231369490();
        v97 = v116;
        sub_231367DA0();

        v98 = *MEMORY[0x277D60B90];
        v99 = sub_231367D80();
        OUTLINED_FUNCTION_7_0(v99);
        return (*(v100 + 104))(v97, v98);
      }

      v62 = MEMORY[0x277D60B88];
    }

    v63 = *v62;
    v64 = sub_231367D80();
    OUTLINED_FUNCTION_7_0(v64);
    return (*(v65 + 104))(v116, v63);
  }
}

uint64_t sub_231293C20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443F0, &unk_231373A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void SpecificDefinitionSuggestionServiceFactory.__allocating_init(ownerDefinitionFactories:generatorFactories:resolverFactories:finalizerFactories:configDirectory:overrideCatTemplateDirectory:featureEnabledProvider:clock:dataServiceFactory:appUtils:selfLogger:suggestionsLoggerFactory:featureServiceFactory:bookkeepingXPCClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_11_0();
  v80 = v26;
  v81 = v27;
  v89 = v29;
  v90 = v28;
  v91 = v31;
  v92 = v30;
  v83 = v32;
  v84 = v33;
  v82 = v34;
  v79 = a26;
  v78 = a25;
  v77 = a24;
  v76 = a23;
  v87 = a22;
  v88 = a21;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44108, &unk_231373A40);
  v36 = OUTLINED_FUNCTION_40_0(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v86 = &v72 - v39;
  v85 = sub_231366690();
  OUTLINED_FUNCTION_21();
  v75 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v74 = &v72 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DefaultRuntimeConfigProvider();
  v45 = OUTLINED_FUNCTION_16_18();
  *(v45 + 16) = sub_2311F0E84;
  *(v45 + 24) = 0;
  v46 = type metadata accessor for DefaultOwnerConfigProviderFactory();
  v73 = OUTLINED_FUNCTION_15_16();
  v47 = type metadata accessor for DefaultEngagementEstimatorModelProvider();
  swift_allocObject();
  DefaultEngagementEstimatorModelProvider.init()();
  v49 = v48;
  v50 = type metadata accessor for DefaultNormalizerProvider();
  v51 = OUTLINED_FUNCTION_16_18();
  *(v51 + 16) = 0xD000000000000028;
  *(v51 + 24) = 0x800000023137F290;
  v52 = type metadata accessor for DefaultDenyListsProvider();
  v53 = OUTLINED_FUNCTION_15_16();
  v103 = v52;
  v104 = &protocol witness table for DefaultDenyListsProvider;
  *&v102 = v53;
  type metadata accessor for ConfigRetrievalWrapper();
  v54 = swift_allocObject();
  v54[5] = v44;
  v54[6] = &protocol witness table for DefaultRuntimeConfigProvider;
  v54[2] = v45;
  v54[10] = v46;
  v54[11] = &off_2845F3210;
  v54[7] = v73;
  v54[15] = v47;
  v54[16] = &protocol witness table for DefaultEngagementEstimatorModelProvider;
  v54[12] = v49;
  v54[20] = v50;
  v54[21] = &off_2845F5D90;
  v54[17] = v51;
  sub_2311D38A8(&v102, (v54 + 22));
  v55 = v74;
  v56 = v75;
  v57 = v85;
  (*(v75 + 16))(v74, v92, v85);
  v58 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v73 = swift_allocObject();
  (*(v56 + 32))(v73 + v58, v55, v57);
  sub_2311E66F0(v91, v86, &qword_27DD44108, &unk_231373A40);
  sub_2311CF324(v90, &v102);
  sub_2311CF324(v89, v101);
  sub_2311CF324(v88, v98);
  sub_2311E66F0(v87, v97, &qword_27DD43818, &unk_23136E030);
  v59 = v76;
  sub_2311CF324(v76, v96);
  v60 = v77;
  sub_2311E66F0(v77, v95, &qword_27DD44400, &qword_231373A50);
  v61 = v78;
  sub_2311CF324(v78, v94);
  v62 = v79;
  sub_2311CF324(v79, v93);
  v63 = v99;
  v64 = v100;
  __swift_mutable_project_boxed_opaque_existential_1(v98, v99);
  OUTLINED_FUNCTION_21();
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_1_4();
  v70 = v69 - v68;
  (*(v71 + 16))(v69 - v68);
  sub_23129687C(v81, v82, v83, v84, v54, sub_231295BE4, v73, v86, &v102, v101, v70, v97, v96, v95, v94, v93, v80, v63, v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v98);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  sub_2311D1F18(v60, &qword_27DD44400, &qword_231373A50);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  sub_2311D1F18(v87, &qword_27DD43818, &unk_23136E030);
  __swift_destroy_boxed_opaque_existential_1Tm(v88);
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  sub_2311D1F18(v91, &qword_27DD44108, &unk_231373A40);
  (*(v56 + 8))(v92, v85);
  OUTLINED_FUNCTION_9_0();
}

void SpecificDefinitionSuggestionServiceFactory.__allocating_init(ownerDefinitionFactories:generatorFactories:resolverFactories:finalizerFactories:configRetrievalWrapper:configOverride:overrideCatTemplateDirectory:featureEnabledProvider:clock:dataServiceFactory:appUtils:selfLogger:suggestionsLoggerFactory:featureServiceFactory:bookkeepingXPCClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t *a22, uint64_t *a23, uint64_t a24, uint64_t *a25, uint64_t a26, uint64_t *a27, uint64_t a28)
{
  OUTLINED_FUNCTION_11_0();
  v52 = v29;
  v53 = v30;
  v50 = v31;
  v51 = v32;
  v48 = v33;
  v49 = v34;
  v36 = v35;
  v38 = v37;
  v39 = a23[3];
  v40 = a23[4];
  __swift_mutable_project_boxed_opaque_existential_1(a23, v39);
  OUTLINED_FUNCTION_21();
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_4();
  v46 = v45 - v44;
  (*(v47 + 16))(v45 - v44);
  sub_23129687C(v38, v36, v48, v49, v50, v51, v52, v53, a21, a22, v46, a24, a25, a26, a27, a28, v28, v39, v40);
  __swift_destroy_boxed_opaque_existential_1Tm(a23);
  OUTLINED_FUNCTION_9_0();
}

void sub_231294390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void (*a29)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_11_0();
  v53 = v30;
  v54 = v31;
  v51 = v32;
  v52 = v33;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = *(v38 + 24);
  v42 = *(v38 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v38, v43);
  OUTLINED_FUNCTION_21();
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1_4();
  v49 = v48 - v47;
  (*(v50 + 16))(v48 - v47);
  a29(v41, v49, v37, v35, v51, v52, v53, v54, a21, a22, a23, a24, a25, a26, a27, a28, v29, v43, v42);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  OUTLINED_FUNCTION_9_0();
}

void static SpecificDefinitionSuggestionServiceFactory.create(ownerDefinitionFactories:generatorFactories:resolverFactories:finalizerFactories:runtimeConfig:configOverride:featureEnabledProvider:clock:store:featureServiceFactory:bookkeepingXPCClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_11_0();
  v83 = v24;
  v84 = v25;
  v77 = v26;
  v78 = v27;
  v29 = v28;
  v85 = v30;
  v82 = v31;
  v81 = a24;
  v80 = a23;
  sub_231368DB0();
  OUTLINED_FUNCTION_21();
  v75 = v33;
  v76 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_4();
  v74 = v37 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44108, &unk_231373A40);
  v39 = OUTLINED_FUNCTION_40_0(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v79 = &v74 - v42;
  memcpy(v116, v29, 0x1A8uLL);
  v115 = 0;
  memset(v114, 0, sizeof(v114));
  sub_2313690A0();
  v43 = sub_231366EF0();
  v44 = sub_231366EE0();
  v112[4] = MEMORY[0x277D60670];
  v112[3] = v43;
  v112[0] = v44;
  v45 = swift_allocObject();
  memcpy((v45 + 16), v116, 0x1A8uLL);
  v46 = type metadata accessor for DefaultRuntimeConfigProvider();
  v47 = OUTLINED_FUNCTION_16_18();
  *(v47 + 16) = sub_231297034;
  *(v47 + 24) = v45;
  v48 = type metadata accessor for DefaultOwnerConfigProviderFactory();
  v49 = OUTLINED_FUNCTION_15_16();
  v50 = type metadata accessor for DefaultEngagementEstimatorModelProvider();
  swift_allocObject();
  DefaultEngagementEstimatorModelProvider.init()();
  v52 = v51;
  v53 = type metadata accessor for DefaultNormalizerProvider();
  v54 = OUTLINED_FUNCTION_16_18();
  *(v54 + 16) = 0xD000000000000028;
  *(v54 + 24) = 0x800000023137F290;
  v55 = type metadata accessor for DefaultDenyListsProvider();
  v56 = OUTLINED_FUNCTION_15_16();
  *(&v87 + 1) = v55;
  v88 = &protocol witness table for DefaultDenyListsProvider;
  *&v86 = v56;
  type metadata accessor for ConfigRetrievalWrapper();
  v57 = swift_allocObject();
  v57[5] = v46;
  v57[6] = &protocol witness table for DefaultRuntimeConfigProvider;
  v57[2] = v47;
  v57[10] = v48;
  v57[11] = &off_2845F3210;
  v57[7] = v49;
  v58 = v77;
  v57[15] = v50;
  v57[16] = &protocol witness table for DefaultEngagementEstimatorModelProvider;
  v57[12] = v52;
  v57[20] = v53;
  v57[21] = &off_2845F5D90;
  v57[17] = v54;
  sub_2311D38A8(&v86, (v57 + 22));
  sub_2311CF324(v78, v111);
  sub_2311CF324(&v113, v110);
  v109 = 0;
  memset(v108, 0, sizeof(v108));
  sub_2311CF324(v112, v107);
  sub_2311E66F0(v114, v106, &qword_27DD44400, &qword_231373A50);
  sub_2311CF324(v80, v105);
  sub_2311CF324(v81, v104);
  v103[3] = &type metadata for DefaultDataServiceFactory;
  v103[4] = &off_2845F6C20;
  v59 = type metadata accessor for DefaultGeneratorProvider();
  v60 = swift_allocObject();
  v60[3] = 0xD000000000000018;
  v60[4] = 0x800000023137CCA0;
  v60[2] = v85;
  v61 = sub_231366690();
  v62 = v79;
  __swift_storeEnumTagSinglePayload(v79, 1, 1, v61);
  sub_2311CF324(v111, v102);
  sub_2311CF324(v110, v101);
  sub_2311CF324(v103, v100);
  sub_2311E66F0(v108, v99, &qword_27DD43818, &unk_23136E030);
  sub_2311CF324(v107, v98);
  v63 = v62;
  v64 = v82;
  sub_2311E66F0(v106, v97, &qword_27DD44400, &qword_231373A50);
  sub_2311CF324(v105, v96);
  sub_2311CF324(v104, v95);
  v65 = OUTLINED_FUNCTION_52_6(v83);
  v94[3] = v59;
  v94[4] = sub_23129707C(&qword_27DD44408, type metadata accessor for DefaultGeneratorProvider);
  v94[0] = v60;
  v65[2] = v64;
  sub_2311CF324(v94, (v65 + 3));
  v66 = MEMORY[0x277D84F90];
  v65[8] = MEMORY[0x277D84F90];
  v65[9] = v66;
  v67 = v84;
  v65[10] = v57;
  v65[11] = v67;
  v65[12] = v58;
  sub_2311E66F0(v63, v65 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_overrideCatTemplateDirectory, &qword_27DD44108, &unk_231373A40);
  sub_2311CF324(v102, v65 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureEnabledProvider);
  sub_2311CF324(v101, v65 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_clock);
  sub_2311CF324(v100, v65 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_dataServiceFactory);
  sub_2311E66F0(v99, &v89, &qword_27DD43818, &unk_23136E030);
  if (v90)
  {
    sub_2311D38A8(&v89, &v91);
    sub_231286BB0(v116, &v86);
    sub_231369EE0();
    sub_231369EE0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44430, &qword_231373A58);
    sub_231286BB0(v116, &v86);
    sub_231369EE0();
    sub_231369EE0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44438, &qword_231373A60);
    sub_231369EC0();
    v68 = sub_231368F10();
    v69 = v74;
    sub_231368DA0();
    v70 = type metadata accessor for AppUtilsService();
    v71 = OUTLINED_FUNCTION_52_6(v70);
    *(v71 + 16) = v68;
    (*(v75 + 32))(v71 + OBJC_IVAR____TtC15SiriSuggestions15AppUtilsService_homescreenAppPicker, v69, v76);
    v92 = v70;
    v93 = sub_23129707C(&qword_27DD44440, type metadata accessor for AppUtilsService);
    *&v91 = v71;
    if (v90)
    {
      sub_2311D1F18(&v89, &qword_27DD43818, &unk_23136E030);
    }
  }

  sub_2311D38A8(&v91, v65 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_appUtils);
  sub_2311CF324(v98, v65 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_selfLogger);
  sub_2311E66F0(v97, &v91, &qword_27DD44400, &qword_231373A50);
  if (v92)
  {
    OUTLINED_FUNCTION_7_14(v97);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    OUTLINED_FUNCTION_14_18(v99);
    __swift_destroy_boxed_opaque_existential_1Tm(v100);
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    __swift_destroy_boxed_opaque_existential_1Tm(v102);
    sub_2311D1F18(v63, &qword_27DD44108, &unk_231373A40);
    __swift_destroy_boxed_opaque_existential_1Tm(v104);
    __swift_destroy_boxed_opaque_existential_1Tm(v105);
    OUTLINED_FUNCTION_7_14(v106);
    __swift_destroy_boxed_opaque_existential_1Tm(v107);
    OUTLINED_FUNCTION_14_18(v108);
    OUTLINED_FUNCTION_6_15();
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
    __swift_destroy_boxed_opaque_existential_1Tm(v94);
    sub_2311D38A8(&v91, &v86);
  }

  else
  {
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
    sub_2311CF324(v101, &v89);
    v72 = sub_231366DE0();
    OUTLINED_FUNCTION_52_6(v72);
    v73 = sub_231366DD0();
    *(&v87 + 1) = v72;
    v88 = &protocol witness table for SiriRemembersLogger;
    *&v86 = v73;
    OUTLINED_FUNCTION_7_14(v97);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    OUTLINED_FUNCTION_14_18(v99);
    __swift_destroy_boxed_opaque_existential_1Tm(v100);
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    __swift_destroy_boxed_opaque_existential_1Tm(v102);
    sub_2311D1F18(v63, &qword_27DD44108, &unk_231373A40);
    __swift_destroy_boxed_opaque_existential_1Tm(v104);
    __swift_destroy_boxed_opaque_existential_1Tm(v105);
    OUTLINED_FUNCTION_7_14(v106);
    __swift_destroy_boxed_opaque_existential_1Tm(v107);
    OUTLINED_FUNCTION_14_18(v108);
    OUTLINED_FUNCTION_6_15();
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
    __swift_destroy_boxed_opaque_existential_1Tm(v94);
    if (v92)
    {
      sub_2311D1F18(&v91, &qword_27DD44400, &qword_231373A50);
    }
  }

  sub_2311D38A8(&v86, v65 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_suggestionsLoggerFactory);
  sub_2311D38A8(v96, v65 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureServiceFactory);
  sub_2311D38A8(v95, v65 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_bookkeepingXPCClient);
  __swift_destroy_boxed_opaque_existential_1Tm(v112);
  OUTLINED_FUNCTION_9_0();
}

void *static SpecificDefinitionSuggestionServiceFactory.create(ownerDefinitionFactories:generatorFactories:resolverFactories:finalizerFactories:runtimeConfig:configOverride:featureEnabledProvider:clock:selfLogger:suggestionsLoggerFactory:dataServiceFactory:featureServiceFactory:bookkeepingXPCClient:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14)
{
  v20 = a12[3];
  v19 = a12[4];
  v21 = __swift_project_boxed_opaque_existential_1(a12, v20);
  return sub_2312963EC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, v21, a13, a14, v14, v20, v19);
}

uint64_t sub_231294E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for DefaultOwnerDefinitionProvider();
  v8 = *(v3 + 16);
  ObjectType = swift_getObjectType();
  sub_2311CF324(v3 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureEnabledProvider, v13);
  v10 = sub_23123B154(v8, a1, a2, a1, v13, 0, v7, ObjectType, *(a2 + 8));
  a3[3] = &type metadata for BundleSpoofingOwnerDefinitionProvider;
  a3[4] = &off_2845F5BE8;
  v11 = swift_allocObject();
  *a3 = v11;
  v11[5] = v7;
  v11[6] = &off_2845F43B8;
  v11[2] = v10;
  v11[7] = a1;
  v11[8] = a2;
  swift_unknownObjectRetain_n();
  return sub_231369EE0();
}

uint64_t SpecificDefinitionSuggestionServiceFactory.create(refreshableService:)()
{
  OUTLINED_FUNCTION_8();
  v1[65] = v0;
  v1[63] = v2;
  v1[64] = v3;
  v1[62] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44108, &unk_231373A40);
  OUTLINED_FUNCTION_40_0(v5);
  v7 = *(v6 + 64) + 15;
  v1[66] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231294FE8()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  sub_231294E58(*(v0 + 504), *(v0 + 512), (v0 + 16));
  type metadata accessor for SuggestionPipelineFactories();
  v3 = *(v2 + 64);
  v4 = type metadata accessor for DefaultResolverProvider();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v0 + 120) = v4;
  *(v0 + 128) = &off_2845F3980;
  *(v0 + 96) = v5;
  v6 = *(v2 + 72);
  v7 = type metadata accessor for DefaultFinalizerProvider();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v0 + 160) = v7;
  *(v0 + 168) = &off_2845F6280;
  *(v0 + 136) = v8;
  sub_231369EE0();
  sub_231369EE0();
  sub_2312BD618(v0 + 16, v2 + 24, v0 + 96, v0 + 136, (v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v9 = *(v2 + 96);
  v21 = *(v2 + 80);
  sub_2311E66F0(v2 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_overrideCatTemplateDirectory, v1, &qword_27DD44108, &unk_231373A40);
  sub_2311CF324(v0 + 56, v0 + 176);
  sub_2311CF324(v2 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureEnabledProvider, v0 + 216);
  sub_2311CF324(v2 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_clock, v0 + 256);
  sub_2311CF324(v2 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_dataServiceFactory, v0 + 296);
  sub_2311CF324(v2 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_appUtils, v0 + 336);
  v10 = sub_231366EF0();

  v11 = sub_231366EE0();
  sub_2311CF324(v2 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_suggestionsLoggerFactory, v0 + 376);
  sub_2311CF324(v2 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureServiceFactory, v0 + 416);
  sub_2311CF324(v2 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_bookkeepingXPCClient, v0 + 456);
  v12 = type metadata accessor for DefaultSuggestionServiceFactory();
  v13 = OUTLINED_FUNCTION_52_6(v12);
  *(v0 + 536) = v13;
  v14 = (v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_selfLogger);
  v15 = MEMORY[0x277D60670];
  v14[3] = v10;
  v14[4] = v15;
  *v14 = v11;
  *(v13 + 16) = 1;
  *(v13 + 24) = v21;
  *(v13 + 40) = v9;
  sub_2312970C4(v1, v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_overrideCatTemplateDirectory);
  sub_2311D38A8((v0 + 176), v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_pipelineFactory);
  sub_2311D38A8((v0 + 216), v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_featureEnabledProvider);
  sub_2311D38A8((v0 + 256), v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_clock);
  sub_2311D38A8((v0 + 296), v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_dataServiceFactory);
  sub_2311D38A8((v0 + 336), v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_appUtils);
  sub_2311D38A8((v0 + 376), v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_suggestionsLoggerFactory);
  sub_2311D38A8((v0 + 416), v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_featureServiceFactory);
  sub_2311D38A8((v0 + 456), v13 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_bookkeepingXPCClient);
  v16 = swift_task_alloc();
  *(v0 + 544) = v16;
  *v16 = v0;
  v16[1] = sub_23129534C;
  v17 = *(v0 + 504);
  v18 = *(v0 + 512);
  v19 = *(v0 + 496);

  return DefaultSuggestionServiceFactory.create(refreshableService:)();
}

uint64_t sub_23129534C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 544);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231295430()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[67];
  v2 = v0[66];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v3 = v0[1];

  return v3();
}

void *SpecificDefinitionSuggestionServiceFactory.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[12];

  sub_2311D1F18(v0 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_overrideCatTemplateDirectory, &qword_27DD44108, &unk_231373A40);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureEnabledProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_clock));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_dataServiceFactory));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_appUtils));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_selfLogger));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_suggestionsLoggerFactory));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureServiceFactory));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_bookkeepingXPCClient));
  return v0;
}

uint64_t SpecificDefinitionSuggestionServiceFactory.__deallocating_deinit()
{
  SpecificDefinitionSuggestionServiceFactory.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2312955E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311D44D4;

  return SpecificDefinitionSuggestionServiceFactory.create(refreshableService:)();
}

uint64_t sub_23129569C()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_1();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2312956C4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  ObjectType = swift_getObjectType();
  v5 = *(MEMORY[0x277D610D8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  v7 = *(v3 + 8);
  *v6 = v0;
  v6[1] = sub_231295778;

  return MEMORY[0x2821C72C8](ObjectType, v7);
}

uint64_t sub_231295778()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23129585C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_231295980;

  return v8(v2, v3);
}

uint64_t sub_231295980()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 32);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_231295A6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231295AF8;

  return sub_23129569C();
}

uint64_t sub_231295AF8()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_231295BE4()
{
  v0 = sub_231366690();
  OUTLINED_FUNCTION_40_0(v0);
  v2 = *(v1 + 80);
  return sub_231294190();
}

void *sub_231295C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 *a12, __int128 *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v35 = a7;
  v36 = a8;
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v30 = a10;
  v31 = a9;
  v29 = a11;
  v19 = *(a15 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](a14);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v21 + 48);
  v25 = *(v21 + 52);
  v26 = swift_allocObject();
  (*(v19 + 16))(v23, a2, a15);
  v27 = sub_231295DE0(a1, v23, a3, v32, v33, v34, v35, v36, v31, *(&v31 + 1), v30, *(&v30 + 1), v29, *(&v29 + 1), a12, a13, v26, a15, a16);
  (*(v19 + 8))(a2, a15);
  return v27;
}

void *sub_231295DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 *a15, __int128 *a16, void *a17, uint64_t a18, uint64_t a19)
{
  v46 = a7;
  v49 = a6;
  v48 = a4;
  v47 = a3;
  v45 = a1;
  v53 = a16;
  v52 = a15;
  v50 = a14;
  v51 = a13;
  v44 = sub_231368DB0();
  v43 = *(v44 - 8);
  v22 = *(v43 + 64);
  MEMORY[0x28223BE20](v44);
  v42 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60[3] = a18;
  v60[4] = a19;
  v24 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
  (*(*(a18 - 8) + 32))(boxed_opaque_existential_1, a2, a18);
  a17[2] = v45;
  v26 = v46;
  sub_2311CF324(v60, (a17 + 3));
  v27 = v48;
  a17[8] = v47;
  a17[9] = v27;
  v28 = v49;
  a17[10] = v24;
  a17[11] = v28;
  a17[12] = v26;
  v49 = a8;
  sub_2311E66F0(a8, a17 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_overrideCatTemplateDirectory, &qword_27DD44108, &unk_231373A40);
  v48 = a9;
  sub_2311CF324(a9, a17 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureEnabledProvider);
  sub_2311CF324(a10, a17 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_clock);
  sub_2311CF324(a11, a17 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_dataServiceFactory);
  sub_2311E66F0(a12, &v55, &qword_27DD43818, &unk_23136E030);
  if (v56)
  {
    sub_2311D38A8(&v55, &v57);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44430, &qword_231373A58);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44438, &qword_231373A60);
    sub_231369EC0();
    v29 = sub_231368F10();
    v30 = v42;
    sub_231368DA0();
    v31 = type metadata accessor for AppUtilsService();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    v34 = swift_allocObject();
    *(v34 + 16) = v29;
    (*(v43 + 32))(v34 + OBJC_IVAR____TtC15SiriSuggestions15AppUtilsService_homescreenAppPicker, v30, v44);
    *(&v58 + 1) = v31;
    v59 = sub_23129707C(&qword_27DD44440, type metadata accessor for AppUtilsService);
    *&v57 = v34;
    if (v56)
    {
      sub_2311D1F18(&v55, &qword_27DD43818, &unk_23136E030);
    }
  }

  sub_2311D38A8(&v57, a17 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_appUtils);
  v35 = v51;
  sub_2311CF324(v51, a17 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_selfLogger);
  v36 = v50;
  sub_2311E66F0(v50, &v55, &qword_27DD44400, &qword_231373A50);
  if (v56)
  {

    sub_2311D1F18(v36, &qword_27DD44400, &qword_231373A50);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    sub_2311D1F18(a12, &qword_27DD43818, &unk_23136E030);
    __swift_destroy_boxed_opaque_existential_1Tm(a11);
    __swift_destroy_boxed_opaque_existential_1Tm(a10);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    sub_2311D1F18(v49, &qword_27DD44108, &unk_231373A40);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    sub_2311D38A8(&v55, &v57);
  }

  else
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    sub_2311CF324(a10, v54);
    v37 = sub_231366DE0();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v40 = sub_231366DD0();
    *(&v58 + 1) = v37;
    v59 = &protocol witness table for SiriRemembersLogger;

    *&v57 = v40;
    sub_2311D1F18(v36, &qword_27DD44400, &qword_231373A50);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    sub_2311D1F18(a12, &qword_27DD43818, &unk_23136E030);
    __swift_destroy_boxed_opaque_existential_1Tm(a11);
    __swift_destroy_boxed_opaque_existential_1Tm(a10);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    sub_2311D1F18(v49, &qword_27DD44108, &unk_231373A40);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    if (v56)
    {
      sub_2311D1F18(&v55, &qword_27DD44400, &qword_231373A50);
    }
  }

  sub_2311D38A8(&v57, a17 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_suggestionsLoggerFactory);
  sub_2311D38A8(v52, a17 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureServiceFactory);
  sub_2311D38A8(v53, a17 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_bookkeepingXPCClient);
  return a17;
}

void *sub_2312963EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v57 = a8;
  v68 = a7;
  v69 = a6;
  v67 = a4;
  v64 = a2;
  v65 = a3;
  v62 = a1;
  v66 = a17;
  v60 = a14;
  v59 = a13;
  v56 = a10;
  v55 = a9;
  v58 = a11;
  v63 = a15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44108, &unk_231373A40);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v70 = &v50 - v21;
  v51 = a16;
  v61 = *(a16 - 8);
  v22 = v61;
  v23 = *(v61 + 64);
  v24 = MEMORY[0x28223BE20](v20);
  v54 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v52 = *(v22 + 16);
  v53 = &v50 - v26;
  v52();
  memcpy(v82, a5, 0x1A8uLL);
  v27 = swift_allocObject();
  memcpy((v27 + 16), a5, 0x1A8uLL);
  v28 = type metadata accessor for DefaultRuntimeConfigProvider();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_231297414;
  *(v29 + 24) = v27;
  v30 = type metadata accessor for DefaultOwnerConfigProviderFactory();
  v50 = swift_allocObject();
  v31 = type metadata accessor for DefaultEngagementEstimatorModelProvider();
  swift_allocObject();
  DefaultEngagementEstimatorModelProvider.init()();
  v33 = v32;
  v34 = type metadata accessor for DefaultNormalizerProvider();
  v35 = swift_allocObject();
  *(v35 + 16) = 0xD000000000000028;
  *(v35 + 24) = 0x800000023137F290;
  v36 = type metadata accessor for DefaultDenyListsProvider();
  v37 = swift_allocObject();
  v72 = v36;
  v73 = &protocol witness table for DefaultDenyListsProvider;
  *&v71 = v37;
  type metadata accessor for ConfigRetrievalWrapper();
  v38 = swift_allocObject();
  v38[5] = v28;
  v38[6] = &protocol witness table for DefaultRuntimeConfigProvider;
  v38[2] = v29;
  v38[10] = v30;
  v38[11] = &off_2845F3210;
  v38[7] = v50;
  v38[15] = v31;
  v38[16] = &protocol witness table for DefaultEngagementEstimatorModelProvider;
  v38[12] = v33;
  v38[20] = v34;
  v38[21] = &off_2845F5D90;
  v38[17] = v35;
  sub_2311D38A8(&v71, (v38 + 22));
  v39 = sub_231366690();
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v39);
  sub_2311CF324(v57, v81);
  sub_2311CF324(v55, v80);
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  sub_2311CF324(v56, v77);
  sub_2311E66F0(v58, v76, &qword_27DD44400, &qword_231373A50);
  sub_2311CF324(v59, v75);
  sub_2311CF324(v60, v74);
  v41 = v53;
  v40 = v54;
  v42 = v51;
  (v52)(v54, v53, v51);
  sub_231286BB0(v82, &v71);
  v43 = v62;
  sub_231369EE0();
  v44 = v64;
  sub_231369EE0();
  v45 = v65;
  sub_231369EE0();
  v46 = v67;
  sub_231369EE0();
  v47 = v68;

  v48 = sub_23129687C(v43, v44, v45, v46, v38, v69, v47, v70, v81, v80, v40, v78, v77, v76, v75, v74, v63, v42, v66);
  (*(v61 + 8))(v41, v42);
  return v48;
}

void *sub_23129687C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v63 = a2;
  v64 = a8;
  v59 = a6;
  v60 = a7;
  v57 = a1;
  v58 = a5;
  v56 = a16;
  v65 = a15;
  v55 = a14;
  v54 = a12;
  v19 = sub_231368DB0();
  v52 = *(v19 - 8);
  v53 = v19;
  v20 = *(v52 + 64);
  MEMORY[0x28223BE20](v19);
  v51 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44108, &unk_231373A40);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v50 - v24;

  v81[3] = a18;
  v81[4] = a19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v81);
  (*(*(a18 - 8) + 32))(boxed_opaque_existential_1, a11, a18);
  v27 = type metadata accessor for DefaultGeneratorProvider();
  v28 = swift_allocObject();
  v28[3] = 0xD000000000000018;
  v28[4] = 0x800000023137CCA0;
  v28[2] = v63;
  v29 = sub_231366690();
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v29);
  v61 = a9;
  sub_2311CF324(a9, v80);
  v63 = a10;
  v30 = v54;
  sub_2311CF324(a10, v79);
  sub_2311CF324(v81, v78);
  sub_2311E66F0(v30, v77, &qword_27DD43818, &unk_23136E030);
  v62 = a13;
  v31 = v55;
  sub_2311CF324(a13, v76);
  sub_2311E66F0(v31, v75, &qword_27DD44400, &qword_231373A50);
  sub_2311CF324(v65, v74);
  v32 = v56;
  sub_2311CF324(v56, v73);
  v33 = *(a17 + 48);
  v34 = *(a17 + 52);
  v35 = swift_allocObject();
  v72[3] = v27;
  v72[4] = sub_23129707C(&qword_27DD44408, type metadata accessor for DefaultGeneratorProvider);
  v72[0] = v28;
  v35[2] = v57;
  sub_2311CF324(v72, (v35 + 3));
  v36 = MEMORY[0x277D84F90];
  v35[8] = MEMORY[0x277D84F90];
  v35[9] = v36;
  v37 = v59;
  v35[10] = v58;
  v35[11] = v37;
  v35[12] = v60;
  sub_2311E66F0(v25, v35 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_overrideCatTemplateDirectory, &qword_27DD44108, &unk_231373A40);
  sub_2311CF324(v80, v35 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureEnabledProvider);
  sub_2311CF324(v79, v35 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_clock);
  sub_2311CF324(v78, v35 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_dataServiceFactory);
  sub_2311E66F0(v77, &v67, &qword_27DD43818, &unk_23136E030);
  if (v68)
  {
    sub_2311D38A8(&v67, &v69);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44430, &qword_231373A58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44438, &qword_231373A60);
    sub_231369EC0();
    v38 = sub_231368F10();
    v39 = v51;
    sub_231368DA0();
    v40 = type metadata accessor for AppUtilsService();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    v43 = v31;
    v44 = swift_allocObject();
    *(v44 + 16) = v38;
    (*(v52 + 32))(v44 + OBJC_IVAR____TtC15SiriSuggestions15AppUtilsService_homescreenAppPicker, v39, v53);
    *(&v70 + 1) = v40;
    v71 = sub_23129707C(&qword_27DD44440, type metadata accessor for AppUtilsService);
    *&v69 = v44;
    v31 = v43;
    if (v68)
    {
      sub_2311D1F18(&v67, &qword_27DD43818, &unk_23136E030);
    }
  }

  sub_2311D38A8(&v69, v35 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_appUtils);
  sub_2311CF324(v76, v35 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_selfLogger);
  sub_2311E66F0(v75, &v67, &qword_27DD44400, &qword_231373A50);
  if (v68)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    sub_2311D1F18(v31, &qword_27DD44400, &qword_231373A50);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    sub_2311D1F18(v30, &qword_27DD43818, &unk_23136E030);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    sub_2311D1F18(v64, &qword_27DD44108, &unk_231373A40);
    sub_2311D1F18(v75, &qword_27DD44400, &qword_231373A50);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    sub_2311D1F18(v77, &qword_27DD43818, &unk_23136E030);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    sub_2311D1F18(v25, &qword_27DD44108, &unk_231373A40);
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    sub_2311D38A8(&v67, &v69);
  }

  else
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    sub_2311CF324(v79, &v66);
    v45 = sub_231366DE0();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v48 = sub_231366DD0();
    *(&v70 + 1) = v45;
    v71 = &protocol witness table for SiriRemembersLogger;
    *&v69 = v48;
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    sub_2311D1F18(v31, &qword_27DD44400, &qword_231373A50);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    sub_2311D1F18(v30, &qword_27DD43818, &unk_23136E030);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    sub_2311D1F18(v64, &qword_27DD44108, &unk_231373A40);
    sub_2311D1F18(v75, &qword_27DD44400, &qword_231373A50);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    sub_2311D1F18(v77, &qword_27DD43818, &unk_23136E030);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    sub_2311D1F18(v25, &qword_27DD44108, &unk_231373A40);
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    if (v68)
    {
      sub_2311D1F18(&v67, &qword_27DD44400, &qword_231373A50);
    }
  }

  sub_2311D38A8(&v69, v35 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_suggestionsLoggerFactory);
  sub_2311D38A8(v74, v35 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_featureServiceFactory);
  sub_2311D38A8(v73, v35 + OBJC_IVAR____TtC15SiriSuggestions42SpecificDefinitionSuggestionServiceFactory_bookkeepingXPCClient);
  return v35;
}

uint64_t sub_23129707C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2312970C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44108, &unk_231373A40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SpecificDefinitionSuggestionServiceFactory()
{
  result = qword_27DD44470;
  if (!qword_27DD44470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_231297188()
{
  sub_2312972B0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2312972B0()
{
  if (!qword_280F85960)
  {
    sub_231366690();
    v0 = sub_23136A4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280F85960);
    }
  }
}

uint64_t objectdestroy_2Tm()
{
  v1 = v0[7];

  v2 = v0[13];

  v3 = v0[24];

  v4 = v0[26];

  v5 = v0[31];

  v6 = v0[33];

  v7 = v0[49];

  v8 = v0[53];

  return MEMORY[0x2821FE8E8](v0, 440, 7);
}

uint64_t sub_231297378(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2312973B8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_7_14(uint64_t a1)
{

  return sub_2311D1F18(a1, v1, v2);
}

uint64_t sub_231297444(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3(a2);
  v10 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_231297550;

  return v10(a1, a2);
}

uint64_t sub_231297550(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_14();

  return v6(a1);
}

uint64_t sub_231297640(__int128 *a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 1;
  *(v1 + 120) = MEMORY[0x277D84F90];
  sub_2311D38A8(a1, v1 + 128);
  return v1;
}

uint64_t sub_2312976AC()
{
  v1 = *(v0 + 16);
  if (*(v1 + 112) == 1)
  {
    v2 = *(v1 + 152);
    v3 = *(v1 + 160);
    __swift_project_boxed_opaque_existential_1((v1 + 128), v2);
    OUTLINED_FUNCTION_3(v3);
    v12 = (v4 + *v4);
    v6 = *(v5 + 4);
    v7 = swift_task_alloc();
    *(v0 + 24) = v7;
    *v7 = v0;
    v7[1] = sub_231297814;

    return v12(v2, v3);
  }

  else
  {
    v9 = *(v1 + 120);
    OUTLINED_FUNCTION_14();
    v13 = v10;
    v11 = sub_231369EE0();

    return v13(v11);
  }
}

uint64_t sub_231297814()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 32) = v5;

  return MEMORY[0x2822009F8](sub_231297924, v2, 0);
}

uint64_t sub_231297924()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  *(v1 + 120) = *(v0 + 32);

  *(v1 + 112) = 0;
  v3 = *(*(v0 + 16) + 120);
  OUTLINED_FUNCTION_14();
  v7 = v4;
  v5 = sub_231369EE0();

  return v7(v5);
}

uint64_t sub_2312979C8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231297550;

  return sub_23129768C();
}

void *BundleOwnerDefinitionProvider.__allocating_init(directoryURLs:refreshableService:globalLifecycleContainer:featureFlagProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2_16();
  ObjectType = swift_getObjectType();

  return sub_23129A5B0(v11, v10, v9, v8, a6, v6, ObjectType, v7);
}

uint64_t sub_231297AEC()
{
  v1 = v0[7];
  v2 = v1[2];
  v0[8] = sub_23129826C(&qword_27DD43BC8, &unk_23136F8B8, sub_231298C08);
  v0[9] = v1[4];
  v3 = v1[5];
  v0[10] = v3;
  ObjectType = swift_getObjectType();
  v5 = *(MEMORY[0x277D610D8] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  v7 = *(v3 + 8);
  *v6 = v0;
  v6[1] = sub_231297BDC;

  return MEMORY[0x2821C72C8](ObjectType, v7);
}

uint64_t sub_231297BDC()
{
  v1 = *(*v0 + 88);
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  return MEMORY[0x2822009F8](sub_231297CD0, 0, 0);
}

uint64_t sub_231297CD0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  sub_2311CF324(v3 + 64, v0 + 16);
  type metadata accessor for DefaultOwnerDefinitionProvider();
  v7 = swift_allocObject();
  ObjectType = swift_getObjectType();
  *(v0 + 96) = sub_23123B1CC(v4, v1, v2, v5, (v0 + 16), 1, v7, ObjectType, v6);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_231297DF0;

  return sub_2312390B8();
}

uint64_t sub_231297DF0(uint64_t a1)
{
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(a1);
}

void *BundleOwnerDefinitionProvider.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();
  v4 = v0[6];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  return v0;
}

uint64_t BundleOwnerDefinitionProvider.__deallocating_deinit()
{
  BundleOwnerDefinitionProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_231297F74()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231298004;

  return BundleOwnerDefinitionProvider.ownerDefinitionsAvailable()();
}

uint64_t sub_231298004(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

uint64_t sub_2312980F8()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_23129826C(&qword_27DD43770, &unk_231373CE0, sub_231299260);
}

uint64_t sub_231298174()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_23129826C(&qword_27DD44488, &qword_231373CF8, sub_2312998B8);
}

uint64_t sub_2312981F0()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_23129826C(&qword_27DD44498, &qword_231373D08, sub_231299F10);
}

uint64_t sub_23129826C(uint64_t *a1, uint64_t *a2, void (*a3)(char *, void *, char *))
{
  v110 = a3;
  v90 = a2;
  v89 = a1;
  v116[3] = *MEMORY[0x277D85DE8];
  v4 = sub_231366690();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v105 = v6;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v89 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v89 - v15;
  v107 = sub_2313698C0();
  v17 = OUTLINED_FUNCTION_0_0(v107);
  v92 = v18;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v99 = &v89 - v25;
  MEMORY[0x28223BE20](v24);
  v91 = &v89 - v26;
  v115[0] = MEMORY[0x277D84F90];
  v106 = *(v3 + 16);
  v104 = *(v106 + 16);
  if (v104)
  {
    v103 = objc_opt_self();
    v27 = 0;
    v95 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v102 = v106 + v95;
    v101 = v92 + 8;
    v113 = (v105 + 8);
    *&v28 = 136315394;
    v93 = v28;
    *&v28 = 136315138;
    v94 = v28;
    v111 = v4;
    v97 = v14;
    v112 = v105 + 16;
    v108 = v16;
    v96 = v23;
    do
    {
      if (v27 >= *(v106 + 16))
      {
        goto LABEL_30;
      }

      v29 = *(v105 + 72);
      v109 = v27;
      v30 = *(v105 + 16);
      v30(v16, v102 + v29 * v27, v4);
      v31 = [v103 defaultManager];
      v32 = sub_2313665F0();
      v116[0] = 0;
      v33 = [v31 contentsOfDirectoryAtURL:v32 includingPropertiesForKeys:0 options:1 error:v116];

      v34 = v116[0];
      if (v33)
      {
        v35 = sub_23136A1A0();
        v36 = v34;

        v37 = v99;
        sub_2313690F0();
        sub_231369EE0();
        v38 = sub_2313698A0();
        v39 = sub_23136A390();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v98 = v39;
          v41 = v40;
          v100 = swift_slowAlloc();
          v116[0] = v100;
          *v41 = v94;
          v42 = sub_231367BB0();
          v44 = sub_2311CFD58(v42, v43, v116);

          *(v41 + 4) = v44;
          v4 = v111;
          _os_log_impl(&dword_2311CB000, v38, v98, "reading candidateBundleURLs:\n%s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v100);
          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_29();
        }

        OUTLINED_FUNCTION_1_26();
        v45(v37, v107);
        v16 = v108;
        v46 = *(v35 + 16);
        if (v46)
        {
          v47 = v30;
          v100 = (v113 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v48 = 0;
          v49 = v35 + v95;
          while (1)
          {
            if (v48 >= *(v35 + 16))
            {
              __break(1u);
LABEL_30:
              __break(1u);
            }

            v47(v11, v49, v4);
            if (sub_231366590() == 0x656C646E7562 && v50 == 0xE600000000000000)
            {
            }

            else
            {
              v52 = sub_23136A900();

              if ((v52 & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            v54 = MEMORY[0x23192B1C0](v53);
            v110(v11, v115, v114);
            objc_autoreleasePoolPop(v54);
LABEL_18:
            ++v48;
            v55 = *v113;
            v4 = v111;
            (*v113)(v11, v111);
            v49 += v29;
            v47 = v30;
            if (v46 == v48)
            {
              v16 = v108;
              goto LABEL_23;
            }
          }
        }

        v55 = *v113;
LABEL_23:
        v55(v16, v4);
      }

      else
      {
        v56 = v116[0];
        v57 = v16;
        v58 = sub_231366570();

        swift_willThrow();
        v59 = v96;
        sub_2313690F0();
        v60 = v97;
        v30(v97, v57, v4);
        v61 = v58;
        v62 = sub_2313698A0();
        v63 = sub_23136A3B0();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v116[0] = swift_slowAlloc();
          *v64 = v93;
          sub_23129A68C();
          LODWORD(v100) = v63;
          v65 = sub_23136A8B0();
          v67 = v66;
          v68 = *v113;
          (*v113)(v97, v111);
          v69 = sub_2311CFD58(v65, v67, v116);

          *(v64 + 4) = v69;
          *(v64 + 12) = 2080;
          v115[1] = v58;
          v70 = v58;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
          v71 = sub_23136A010();
          v73 = sub_2311CFD58(v71, v72, v116);

          *(v64 + 14) = v73;
          v4 = v111;
          _os_log_impl(&dword_2311CB000, v62, v100, "Unable to load bundle at: %s. %s", v64, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_29();
          v74 = v96;
          OUTLINED_FUNCTION_29();

          OUTLINED_FUNCTION_1_26();
          v75(v74, v107);
          v16 = v108;
          v68(v108, v4);
        }

        else
        {

          v76 = *v113;
          (*v113)(v60, v4);
          OUTLINED_FUNCTION_1_26();
          v77(v59, v107);
          v16 = v108;
          v76(v108, v4);
        }
      }

      v27 = v109 + 1;
    }

    while (v109 + 1 != v104);
  }

  v78 = v91;
  sub_2313690F0();
  v79 = sub_2313698A0();
  v80 = sub_23136A390();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v116[0] = v82;
    *v81 = 136315138;
    swift_beginAccess();
    sub_231369EE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v89, v90);
    v83 = sub_231367BB0();
    v85 = v84;

    v86 = sub_2311CFD58(v83, v85, v116);

    *(v81 + 4) = v86;
    _os_log_impl(&dword_2311CB000, v79, v80, "Loaded classes from bundles:\n%s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  (*(v92 + 8))(v78, v107);
  swift_beginAccess();
  result = v115[0];
  v88 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_231298C08(void (*a1)(char *, uint64_t), uint64_t *a2)
{
  v3 = v2;
  v73 = a2;
  v5 = sub_231366690();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2313698C0();
  v77 = *(v10 - 8);
  v78 = v10;
  v11 = *(v77 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v72 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v70 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v70 - v17;
  sub_2313690F0();
  v19 = *(v6 + 16);
  v76 = a1;
  v19(v9, a1, v5);
  v20 = sub_2313698A0();
  v21 = sub_23136A390();
  v22 = os_log_type_enabled(v20, v21);
  v74 = v16;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v75 = v2;
    v24 = v23;
    v71 = swift_slowAlloc();
    v80 = v71;
    *v24 = 136315138;
    sub_23129A68C();
    v25 = sub_23136A8B0();
    v27 = v26;
    (*(v6 + 8))(v9, v5);
    v28 = sub_2311CFD58(v25, v27, &v80);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_2311CB000, v20, v21, "checking candidateBundleURL: %s", v24, 0xCu);
    v29 = v71;
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    MEMORY[0x23192B930](v29, -1, -1);
    v30 = v24;
    v3 = v75;
    MEMORY[0x23192B930](v30, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v31 = v78;
  v32 = *(v77 + 8);
  v32(v18, v78);
  v33 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v34 = sub_2313665F0();
  v35 = [v33 initWithURL_];

  if (v35)
  {
    if ([v35 principalClass])
    {
      v75 = v3;
      ObjCClassMetadata = swift_getObjCClassMetadata();
      v37 = v74;
      sub_2313690F0();
      v38 = sub_2313698A0();
      v39 = sub_23136A390();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v76 = v35;
        v41 = v40;
        v42 = swift_slowAlloc();
        v80 = v42;
        *v41 = 136315138;
        v43 = sub_23136AA70();
        v71 = ObjCClassMetadata;
        v45 = sub_2311CFD58(v43, v44, &v80);
        ObjCClassMetadata = v71;

        *(v41 + 4) = v45;
        _os_log_impl(&dword_2311CB000, v38, v39, "checking principal class: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        v46 = v42;
        v31 = v78;
        MEMORY[0x23192B930](v46, -1, -1);
        v47 = v41;
        v35 = v76;
        MEMORY[0x23192B930](v47, -1, -1);
      }

      v32(v37, v31);
      v48 = dynamic_cast_existential_1_conditional(ObjCClassMetadata);
      if (v48)
      {
        v50 = v48;
        v51 = v49;
        v52 = v73;
        sub_2311E9C04();
        v53 = *(*v52 + 16);
        sub_231259268(v53);

        v54 = *v52;
        *(v54 + 16) = v53 + 1;
        v55 = v54 + 16 * v53;
        *(v55 + 32) = v50;
        *(v55 + 40) = v51;
      }

      else
      {
        v76 = v32;
        v56 = v72;
        sub_2313690F0();
        v57 = sub_2313698A0();
        v58 = sub_23136A3B0();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v80 = v60;
          *v59 = 136315394;
          v61 = sub_23136AA70();
          v63 = v31;
          v64 = sub_2311CFD58(v61, v62, &v80);

          *(v59 + 4) = v64;
          *(v59 + 12) = 2080;
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43BC8, &unk_23136F8B8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444A8, &qword_231373D20);
          v65 = sub_23136A010();
          v67 = sub_2311CFD58(v65, v66, &v80);

          *(v59 + 14) = v67;
          _os_log_impl(&dword_2311CB000, v57, v58, "principal class %s does not conform to %s", v59, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23192B930](v60, -1, -1);
          MEMORY[0x23192B930](v59, -1, -1);

          v68 = v56;
          v69 = v63;
        }

        else
        {

          v68 = v56;
          v69 = v31;
        }

        v76(v68, v69);
      }
    }

    else
    {
    }
  }
}

void sub_231299260(void (*a1)(char *, uint64_t), uint64_t *a2)
{
  v3 = v2;
  v73 = a2;
  v5 = sub_231366690();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2313698C0();
  v77 = *(v10 - 8);
  v78 = v10;
  v11 = *(v77 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v72 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v70 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v70 - v17;
  sub_2313690F0();
  v19 = *(v6 + 16);
  v76 = a1;
  v19(v9, a1, v5);
  v20 = sub_2313698A0();
  v21 = sub_23136A390();
  v22 = os_log_type_enabled(v20, v21);
  v74 = v16;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v75 = v2;
    v24 = v23;
    v71 = swift_slowAlloc();
    v80 = v71;
    *v24 = 136315138;
    sub_23129A68C();
    v25 = sub_23136A8B0();
    v27 = v26;
    (*(v6 + 8))(v9, v5);
    v28 = sub_2311CFD58(v25, v27, &v80);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_2311CB000, v20, v21, "checking candidateBundleURL: %s", v24, 0xCu);
    v29 = v71;
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    MEMORY[0x23192B930](v29, -1, -1);
    v30 = v24;
    v3 = v75;
    MEMORY[0x23192B930](v30, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v31 = v78;
  v32 = *(v77 + 8);
  v32(v18, v78);
  v33 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v34 = sub_2313665F0();
  v35 = [v33 initWithURL_];

  if (v35)
  {
    if ([v35 principalClass])
    {
      v75 = v3;
      ObjCClassMetadata = swift_getObjCClassMetadata();
      v37 = v74;
      sub_2313690F0();
      v38 = sub_2313698A0();
      v39 = sub_23136A390();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v76 = v35;
        v41 = v40;
        v42 = swift_slowAlloc();
        v80 = v42;
        *v41 = 136315138;
        v43 = sub_23136AA70();
        v71 = ObjCClassMetadata;
        v45 = sub_2311CFD58(v43, v44, &v80);
        ObjCClassMetadata = v71;

        *(v41 + 4) = v45;
        _os_log_impl(&dword_2311CB000, v38, v39, "checking principal class: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        v46 = v42;
        v31 = v78;
        MEMORY[0x23192B930](v46, -1, -1);
        v47 = v41;
        v35 = v76;
        MEMORY[0x23192B930](v47, -1, -1);
      }

      v32(v37, v31);
      v48 = dynamic_cast_existential_1_conditional(ObjCClassMetadata);
      if (v48)
      {
        v50 = v48;
        v51 = v49;
        v52 = v73;
        sub_2311E9C1C();
        v53 = *(*v52 + 16);
        sub_231259298(v53);

        v54 = *v52;
        *(v54 + 16) = v53 + 1;
        v55 = v54 + 16 * v53;
        *(v55 + 32) = v50;
        *(v55 + 40) = v51;
      }

      else
      {
        v76 = v32;
        v56 = v72;
        sub_2313690F0();
        v57 = sub_2313698A0();
        v58 = sub_23136A3B0();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v80 = v60;
          *v59 = 136315394;
          v61 = sub_23136AA70();
          v63 = v31;
          v64 = sub_2311CFD58(v61, v62, &v80);

          *(v59 + 4) = v64;
          *(v59 + 12) = 2080;
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43770, &unk_231373CE0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44480, &qword_231373CF0);
          v65 = sub_23136A010();
          v67 = sub_2311CFD58(v65, v66, &v80);

          *(v59 + 14) = v67;
          _os_log_impl(&dword_2311CB000, v57, v58, "principal class %s does not conform to %s", v59, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23192B930](v60, -1, -1);
          MEMORY[0x23192B930](v59, -1, -1);

          v68 = v56;
          v69 = v63;
        }

        else
        {

          v68 = v56;
          v69 = v31;
        }

        v76(v68, v69);
      }
    }

    else
    {
    }
  }
}

void sub_2312998B8(void (*a1)(char *, uint64_t), uint64_t *a2)
{
  v3 = v2;
  v73 = a2;
  v5 = sub_231366690();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2313698C0();
  v77 = *(v10 - 8);
  v78 = v10;
  v11 = *(v77 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v72 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v70 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v70 - v17;
  sub_2313690F0();
  v19 = *(v6 + 16);
  v76 = a1;
  v19(v9, a1, v5);
  v20 = sub_2313698A0();
  v21 = sub_23136A390();
  v22 = os_log_type_enabled(v20, v21);
  v74 = v16;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v75 = v2;
    v24 = v23;
    v71 = swift_slowAlloc();
    v80 = v71;
    *v24 = 136315138;
    sub_23129A68C();
    v25 = sub_23136A8B0();
    v27 = v26;
    (*(v6 + 8))(v9, v5);
    v28 = sub_2311CFD58(v25, v27, &v80);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_2311CB000, v20, v21, "checking candidateBundleURL: %s", v24, 0xCu);
    v29 = v71;
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    MEMORY[0x23192B930](v29, -1, -1);
    v30 = v24;
    v3 = v75;
    MEMORY[0x23192B930](v30, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v31 = v78;
  v32 = *(v77 + 8);
  v32(v18, v78);
  v33 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v34 = sub_2313665F0();
  v35 = [v33 initWithURL_];

  if (v35)
  {
    if ([v35 principalClass])
    {
      v75 = v3;
      ObjCClassMetadata = swift_getObjCClassMetadata();
      v37 = v74;
      sub_2313690F0();
      v38 = sub_2313698A0();
      v39 = sub_23136A390();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v76 = v35;
        v41 = v40;
        v42 = swift_slowAlloc();
        v80 = v42;
        *v41 = 136315138;
        v43 = sub_23136AA70();
        v71 = ObjCClassMetadata;
        v45 = sub_2311CFD58(v43, v44, &v80);
        ObjCClassMetadata = v71;

        *(v41 + 4) = v45;
        _os_log_impl(&dword_2311CB000, v38, v39, "checking principal class: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        v46 = v42;
        v31 = v78;
        MEMORY[0x23192B930](v46, -1, -1);
        v47 = v41;
        v35 = v76;
        MEMORY[0x23192B930](v47, -1, -1);
      }

      v32(v37, v31);
      v48 = dynamic_cast_existential_1_conditional(ObjCClassMetadata);
      if (v48)
      {
        v50 = v48;
        v51 = v49;
        v52 = v73;
        sub_2311E9C34();
        v53 = *(*v52 + 16);
        sub_2312592B0(v53);

        v54 = *v52;
        *(v54 + 16) = v53 + 1;
        v55 = v54 + 16 * v53;
        *(v55 + 32) = v50;
        *(v55 + 40) = v51;
      }

      else
      {
        v76 = v32;
        v56 = v72;
        sub_2313690F0();
        v57 = sub_2313698A0();
        v58 = sub_23136A3B0();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v80 = v60;
          *v59 = 136315394;
          v61 = sub_23136AA70();
          v63 = v31;
          v64 = sub_2311CFD58(v61, v62, &v80);

          *(v59 + 4) = v64;
          *(v59 + 12) = 2080;
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44488, &qword_231373CF8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44490, &qword_231373D00);
          v65 = sub_23136A010();
          v67 = sub_2311CFD58(v65, v66, &v80);

          *(v59 + 14) = v67;
          _os_log_impl(&dword_2311CB000, v57, v58, "principal class %s does not conform to %s", v59, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23192B930](v60, -1, -1);
          MEMORY[0x23192B930](v59, -1, -1);

          v68 = v56;
          v69 = v63;
        }

        else
        {

          v68 = v56;
          v69 = v31;
        }

        v76(v68, v69);
      }
    }

    else
    {
    }
  }
}

void sub_231299F10(void *a1, uint64_t *a2)
{
  v71 = a2;
  v4 = sub_231366690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v76 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v66[-v9];
  v11 = sub_2313698C0();
  v75 = *(v11 - 8);
  v12 = *(v75 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v70 = &v66[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v72 = &v66[-v16];
  MEMORY[0x28223BE20](v15);
  v18 = &v66[-v17];
  sub_2313690F0();
  v19 = *(v5 + 16);
  v77 = a1;
  v78 = v4;
  v74 = v19;
  v19(v10, a1, v4);
  v20 = sub_2313698A0();
  v21 = sub_23136A390();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v69 = v2;
    v23 = v22;
    v68 = swift_slowAlloc();
    v80 = v68;
    *v23 = 136315138;
    sub_23129A68C();
    v67 = v21;
    v24 = v78;
    v25 = sub_23136A8B0();
    v73 = v11;
    v27 = v26;
    (*(v5 + 8))(v10, v24);
    v28 = sub_2311CFD58(v25, v27, &v80);
    v11 = v73;

    *(v23 + 4) = v28;
    _os_log_impl(&dword_2311CB000, v20, v67, "checking candidateBundleURL: %s", v23, 0xCu);
    v29 = v68;
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x23192B930](v29, -1, -1);
    MEMORY[0x23192B930](v23, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v10, v78);
  }

  v30 = *(v75 + 8);
  v30(v18, v11);
  sub_23127D34C();
  v31 = v76;
  v74(v76, v77, v78);
  v32 = sub_231278AC0(v31);
  if (v32)
  {
    v33 = v32;
    if ([v32 principalClass])
    {
      v73 = v11;
      ObjCClassMetadata = swift_getObjCClassMetadata();
      v35 = v72;
      sub_2313690F0();
      v36 = sub_2313698A0();
      v37 = sub_23136A390();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v78 = v30;
        v40 = v39;
        v80 = v39;
        *v38 = 136315138;
        v41 = sub_23136AA70();
        v77 = v33;
        v43 = sub_2311CFD58(v41, v42, &v80);
        v33 = v77;

        *(v38 + 4) = v43;
        _os_log_impl(&dword_2311CB000, v36, v37, "checking principal class: %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        v44 = v40;
        v30 = v78;
        MEMORY[0x23192B930](v44, -1, -1);
        MEMORY[0x23192B930](v38, -1, -1);

        v45 = v72;
      }

      else
      {

        v45 = v35;
      }

      v30(v45, v73);
      v46 = dynamic_cast_existential_1_conditional(ObjCClassMetadata);
      if (v46)
      {
        v48 = v46;
        v49 = v47;
        v50 = v71;
        sub_2311E9C4C();
        v51 = *(*v50 + 16);
        sub_2312592F4(v51);

        v52 = *v50;
        *(v52 + 16) = v51 + 1;
        v53 = v52 + 16 * v51;
        *(v53 + 32) = v48;
        *(v53 + 40) = v49;
      }

      else
      {
        v54 = v70;
        sub_2313690F0();
        v55 = sub_2313698A0();
        v56 = sub_23136A3B0();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v78 = v30;
          v58 = v57;
          v59 = swift_slowAlloc();
          v80 = v59;
          *v58 = 136315394;
          v60 = sub_23136AA70();
          v62 = sub_2311CFD58(v60, v61, &v80);

          *(v58 + 4) = v62;
          *(v58 + 12) = 2080;
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44498, &qword_231373D08);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444A0, &unk_231373D10);
          v63 = sub_23136A010();
          v65 = sub_2311CFD58(v63, v64, &v80);

          *(v58 + 14) = v65;
          _os_log_impl(&dword_2311CB000, v55, v56, "principal class %s does not conform to %s", v58, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23192B930](v59, -1, -1);
          MEMORY[0x23192B930](v58, -1, -1);

          v78(v70, v73);
        }

        else
        {

          v30(v54, v73);
        }
      }
    }

    else
    {
    }
  }
}

void *sub_23129A5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444B0, &qword_231373D28);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[6] = v9;
  v15[7] = a8;
  sub_2311D38A8(v8, (v15 + 8));
  sub_231369EE0();
  return v15;
}

unint64_t sub_23129A68C()
{
  result = qword_280F85968[0];
  if (!qword_280F85968[0])
  {
    sub_231366690();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F85968);
  }

  return result;
}

uint64_t sub_23129A6E4(uint64_t a1)
{
  v2 = sub_2313698C0();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_231367D20();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444C8, &unk_2313744B0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v44[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444D0, &unk_231373E70);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v44[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v44[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v44[-v23];
  v50 = a1;
  sub_231369240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F70, &qword_2313744C0);
  v25 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v24, v25 ^ 1u, 1, v5);
  (*(v6 + 104))(v22, *MEMORY[0x277D60B50], v5);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
  v26 = *(v11 + 56);
  sub_23129C608(v24, v14);
  sub_23129C608(v22, &v14[v26]);
  if (__swift_getEnumTagSinglePayload(v14, 1, v5) != 1)
  {
    sub_23129C608(v14, v19);
    if (__swift_getEnumTagSinglePayload(&v14[v26], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v14[v26], v5);
      sub_23129C678(&qword_27DD444D8, 255, MEMORY[0x277D60B68]);
      v45 = sub_231369F60();
      v28 = *(v6 + 8);
      v28(v9, v5);
      sub_231228E9C(v22, &qword_27DD444D0, &unk_231373E70);
      v28(v19, v5);
      sub_231228E9C(v14, &qword_27DD444D0, &unk_231373E70);
      sub_231228E9C(v24, &qword_27DD444D0, &unk_231373E70);
      if (v45)
      {
        goto LABEL_9;
      }

      return 0;
    }

    sub_231228E9C(v22, &qword_27DD444D0, &unk_231373E70);
    (*(v6 + 8))(v19, v5);
LABEL_6:
    sub_231228E9C(v14, &qword_27DD444C8, &unk_2313744B0);
    sub_231228E9C(v24, &qword_27DD444D0, &unk_231373E70);
    return 0;
  }

  sub_231228E9C(v22, &qword_27DD444D0, &unk_231373E70);
  if (__swift_getEnumTagSinglePayload(&v14[v26], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_231228E9C(v14, &qword_27DD444D0, &unk_231373E70);
  sub_231228E9C(v24, &qword_27DD444D0, &unk_231373E70);
LABEL_9:
  v27 = v50;
  v29 = sub_231369250();
  v31 = v30;
  v32 = v46;
  sub_231369130();
  sub_231369EE0();
  v33 = sub_2313698A0();
  v34 = sub_23136A390();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v51 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_2311CFD58(v29, v31, &v51);
    _os_log_impl(&dword_2311CB000, v33, v34, "Getting app specific AppIntent suggestions for %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x23192B930](v36, -1, -1);
    MEMORY[0x23192B930](v35, -1, -1);
  }

  (*(v47 + 8))(v32, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433F8, &qword_231373E80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_23136B670;
  v38 = *(v49 + 16);
  v39 = *(v49 + 24);
  v40 = type metadata accessor for AppIntentCandidateSuggestionConfigurator();
  v41 = swift_allocObject();
  v41[2] = v29;
  v41[3] = v31;
  v41[4] = v38;
  v41[5] = v39;
  *(v37 + 56) = v40;
  *(v37 + 64) = sub_23129C678(&qword_27DD444E0, v42, type metadata accessor for AppIntentCandidateSuggestionConfigurator);
  *(v37 + 32) = v41;

  sub_231369EE0();
  return v27;
}

uint64_t sub_23129AD50(uint64_t a1)
{
  v2 = sub_231367D20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444C8, &unk_2313744B0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444D0, &unk_231373E70);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v26[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v26[-v20];
  v28 = a1;
  sub_231369240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F70, &qword_2313744C0);
  v22 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v21, v22 ^ 1u, 1, v2);
  (*(v3 + 104))(v19, *MEMORY[0x277D60B50], v2);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v2);
  v23 = *(v8 + 56);
  sub_23129C608(v21, v11);
  sub_23129C608(v19, &v11[v23]);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) != 1)
  {
    sub_23129C608(v11, v16);
    if (__swift_getEnumTagSinglePayload(&v11[v23], 1, v2) != 1)
    {
      (*(v3 + 32))(v6, &v11[v23], v2);
      sub_23129C678(&qword_27DD444D8, 255, MEMORY[0x277D60B68]);
      v27 = sub_231369F60();
      v25 = *(v3 + 8);
      v25(v6, v2);
      sub_231228E9C(v19, &qword_27DD444D0, &unk_231373E70);
      v25(v16, v2);
      sub_231228E9C(v11, &qword_27DD444D0, &unk_231373E70);
      sub_231228E9C(v21, &qword_27DD444D0, &unk_231373E70);
      if (v27)
      {
        return sub_23129A6E4(v28);
      }

      return 0;
    }

    sub_231228E9C(v19, &qword_27DD444D0, &unk_231373E70);
    (*(v3 + 8))(v16, v2);
LABEL_6:
    sub_231228E9C(v11, &qword_27DD444C8, &unk_2313744B0);
    sub_231228E9C(v21, &qword_27DD444D0, &unk_231373E70);
    return 0;
  }

  sub_231228E9C(v19, &qword_27DD444D0, &unk_231373E70);
  if (__swift_getEnumTagSinglePayload(&v11[v23], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_231228E9C(v11, &qword_27DD444D0, &unk_231373E70);
  sub_231228E9C(v21, &qword_27DD444D0, &unk_231373E70);
  return sub_23129A6E4(v28);
}

void sub_23129B1A4(uint64_t a1)
{
  v2 = sub_2313698C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v44 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v43[1] = v43 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = v43 - v9;
  sub_231369130();
  sub_231369EE0();
  v11 = sub_2313698A0();
  v12 = sub_23136A3A0();

  v13 = os_log_type_enabled(v11, v12);
  v47 = v2;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v49[0] = v15;
    *v14 = 136315138;
    v16 = sub_2313692F0();
    v17 = MEMORY[0x23192A860](a1, v16);
    v19 = sub_2311CFD58(v17, v18, v49);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_2311CB000, v11, v12, "Determining valid app intents for signals: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  v45 = *(v3 + 8);
  v45(v10, v2);
  v20 = sub_23125D7A0(a1);
  v21 = 0;
  v48 = MEMORY[0x277D84F90];
  v46 = v3;
  while (v20 != v21)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x23192AD10](v21, a1);
    }

    else
    {
      if (v21 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v22 = *(a1 + 8 * v21 + 32);
    }

    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v24 = sub_23129AD50(v22);
    v26 = v25;

    ++v21;
    if (v24)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = *(v48 + 16);
        sub_23126DE48();
        v48 = v31;
      }

      v27 = *(v48 + 16);
      if (v27 >= *(v48 + 24) >> 1)
      {
        sub_23126DE48();
        v48 = v32;
      }

      v28 = v48;
      *(v48 + 16) = v27 + 1;
      v29 = v28 + 16 * v27;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v21 = v23;
    }
  }

  sub_23127DEFC(v48);
  v33 = v44;
  sub_231369130();
  sub_231369EE0();
  v34 = sub_2313698A0();
  v35 = sub_23136A3A0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v49[0] = v37;
    *v36 = 136315138;
    sub_2313692F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444C0, &qword_231373E68);
    OUTLINED_FUNCTION_0_25();
    sub_23129C678(v38, 255, v39);
    v40 = sub_231369E90();
    v42 = sub_2311CFD58(v40, v41, v49);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_2311CB000, v34, v35, "Found app intent suggestions for signals: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  v45(v33, v47);
}

uint64_t sub_23129B7D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2313667A0();
  OUTLINED_FUNCTION_40_0(v3);
  v5 = *(v4 + 64);
  v2[4] = OUTLINED_FUNCTION_43();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  OUTLINED_FUNCTION_40_0(v6);
  v8 = *(v7 + 64);
  v2[5] = OUTLINED_FUNCTION_43();
  v9 = sub_231368FB0();
  v2[6] = v9;
  OUTLINED_FUNCTION_0(v9);
  v2[7] = v10;
  v12 = *(v11 + 64);
  v2[8] = OUTLINED_FUNCTION_43();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
  OUTLINED_FUNCTION_40_0(v13);
  v15 = *(v14 + 64);
  v2[9] = OUTLINED_FUNCTION_43();
  v16 = sub_2313673A0();
  OUTLINED_FUNCTION_40_0(v16);
  v18 = *(v17 + 64);
  v2[10] = OUTLINED_FUNCTION_43();
  v19 = sub_231367490();
  v2[11] = v19;
  OUTLINED_FUNCTION_0(v19);
  v2[12] = v20;
  v22 = *(v21 + 64);
  v2[13] = OUTLINED_FUNCTION_43();
  v23 = sub_2313698C0();
  v2[14] = v23;
  OUTLINED_FUNCTION_0(v23);
  v2[15] = v24;
  v26 = *(v25 + 64);
  v2[16] = OUTLINED_FUNCTION_43();

  return MEMORY[0x2822009F8](sub_23129B9B8, 0, 0);
}

uint64_t sub_23129B9B8()
{
  v1 = v0[16];
  sub_231369130();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2311CB000, v2, v3, "Updating app intent context", v4, 2u);
    OUTLINED_FUNCTION_29();
  }

  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v21 = v0[9];
  v22 = v0[10];
  v8 = v0[7];
  v9 = v0[8];
  v20 = v0[6];
  v23 = v0[5];
  v10 = v0[3];
  v24 = v0[4];
  v25 = v0[13];
  v11 = v0[2];

  (*(v6 + 8))(v5, v7);
  v0[17] = *v11;
  v12 = v11[1];
  v0[18] = v12;
  ObjectType = swift_getObjectType();
  v0[19] = ObjectType;
  sub_231367360();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444E8, qword_231373EA0);
  sub_231369EC0();
  v0[20] = *(v10 + 16);
  v0[21] = *(v10 + 24);
  (*(v8 + 104))(v9, *MEMORY[0x277D61260], v20);
  sub_231367950();
  v13 = *(v8 + 8);
  v0[22] = v13;
  v0[23] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v9, v20);
  v14 = sub_231367960();
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v14);
  v15 = sub_231367550();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v15);
  sub_231366790();
  sub_231367420();
  v16 = *(MEMORY[0x277D61338] + 4);
  v17 = swift_task_alloc();
  v0[24] = v17;
  *v17 = v0;
  v17[1] = sub_23129BC68;
  v18 = v0[13];

  return MEMORY[0x2821C7788](v18, ObjectType, v12);
}

uint64_t sub_23129BC68()
{
  OUTLINED_FUNCTION_12();
  v2 = v1[24];
  v3 = v1[13];
  v4 = v1[12];
  v5 = v1[11];
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_23129BDB4, 0, 0);
}

uint64_t sub_23129BDB4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_23129BF38(v0[8]);
  v4 = *(*(v2 + 8) + 8);
  v6 = sub_23136A260();

  return MEMORY[0x2822009F8](sub_23129BE4C, v6, v5);
}

uint64_t sub_23129BE4C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[13];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  v13 = v0[6];
  v16 = v0[5];
  v17 = v0[4];
  sub_231369440();
  v1(v12, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_23129BF38@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D61260];
  v3 = sub_231368FB0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_23129BFAC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_23129BFD4()
{
  sub_23129BFAC();

  return swift_deallocClassInstance();
}

uint64_t sub_23129C02C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);
  sub_231369EE0();
  return v1;
}

uint64_t sub_23129C064(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23129C0FC;

  return sub_23129B7D8(a1);
}

uint64_t sub_23129C0FC()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_23129C1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D611E0] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23129C294;

  return MEMORY[0x2821C74C8](a1, a2, a3);
}

uint64_t sub_23129C294(uint64_t a1)
{
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(a1);
}

uint64_t sub_23129C384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D611D8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23129C434;

  return MEMORY[0x2821C74B8](a1, a2, a3);
}

uint64_t sub_23129C434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 16);
  v9 = *v3;
  OUTLINED_FUNCTION_2();
  *v10 = v9;

  v11 = *(v9 + 8);

  return v11(a1, a2, a3);
}

uint64_t sub_23129C53C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23129C678(&qword_27DD444E0, a2, type metadata accessor for AppIntentCandidateSuggestionConfigurator);

  return MEMORY[0x2821C74C0](a1, a2, v4);
}

uint64_t sub_23129C608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD444D0, &unk_231373E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23129C678(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_23129C6C0()
{
  v0 = sub_2313698C0();
  __swift_allocate_value_buffer(v0, qword_280F8E510);
  __swift_project_value_buffer(v0, qword_280F8E510);
  sub_2313691B0();
  return sub_2313698B0();
}

uint64_t sub_23129C724()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_231366750();
  v1[4] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_43();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}