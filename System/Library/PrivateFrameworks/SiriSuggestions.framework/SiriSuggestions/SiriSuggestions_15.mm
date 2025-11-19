uint64_t sub_2313076D4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_23136A230();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_231374850)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t ResolutionService.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  return v0;
}

uint64_t ResolutionService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_231307804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23136C1C0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44660, &qword_231376F90);
  *(v6 + 64) = a3;
  sub_231369EE0();
  sub_231369EE0();
  return v6;
}

unint64_t *sub_2313078A4(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_231307FAC(v9, v4, v2);
      MEMORY[0x23192B930](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_2312B3C88(0, v4, v5);
  sub_231307DB0(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_231307A08(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      sub_231369EE0();
      v4 = sub_231307F0C(v13, v7, v4, a2);
      MEMORY[0x23192B930](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v8);
  v9 = v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_2312B3C88(0, v7, v9);
  sub_231369EE0();
  v10 = sub_231307BCC(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_231307BCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v26 = result;
  v27 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v29 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v29 + 56) + 8 * v14);
    v19 = *(a4 + 16);
    sub_231369EE0();

    if (v19 && (v20 = sub_231215F6C(v16, v17), (v21 & 1) != 0))
    {
      sub_231247A14(*(a4 + 56) + 32 * v20, v28, &qword_27DD443C0, &unk_23136E000);
      sub_231228E9C(v28, &qword_27DD43800, &qword_231377070);
    }

    else
    {
      memset(v28, 0, 24);
      v28[3] = 1;
      sub_231228E9C(v28, &qword_27DD43800, &qword_231377070);

      *(v26 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_17:
        sub_231241904(v26, a2, v27, v29);
        v24 = v23;

        return v24;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_17;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_231307DB0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 16 * v13 + 8);
    v15 = *(*(a3 + 56) + 8 * v13);
    sub_231369EE0();

    v16 = sub_231368530();

    if (v16)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:
        sub_231241904(a1, a2, v20, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_231307F0C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_231307BCC(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_231307FAC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_231307DB0(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_231308024(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23136A8A0();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43668, &qword_23136CBB0);
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_23120738C(v7, v8, a1, v4);
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
    return sub_231207308(0, v2, 1, a1);
  }

  return result;
}

void *sub_23130813C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a2, a4);
  v14 = sub_23130825C(a1, v12, v13, a4, a5);
  (*(v9 + 8))(a2, a4);
  return v14;
}

void *sub_23130825C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3[6] = a4;
  a3[7] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 3);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  a3[2] = a1;
  return a3;
}

uint64_t sub_231308324(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_231308418;

  return v6(v2 + 16);
}

uint64_t sub_231308418()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  *v3 = *(v1 + 16);
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_23130853C()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_33(v4);
  *v5 = v6;
  v5[1] = sub_231209AAC;
  v7 = OUTLINED_FUNCTION_24_2();

  return sub_2313042D0(v7, v8, v2, v9, v3, v10, v11);
}

uint64_t sub_2313085F0()
{
  OUTLINED_FUNCTION_26();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_33(v3);
  *v4 = v5;
  v4[1] = sub_231209AAC;
  v6 = OUTLINED_FUNCTION_24_2();

  return v7(v6);
}

uint64_t sub_231308694()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_28_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_26(v1);

  return sub_2313053F8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_231308728(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 48) = v4;
  *v4 = v2;
  v4[1] = sub_23130881C;

  return v6(v2 + 16);
}

uint64_t sub_23130881C()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = v1[6];
  v5 = v1[5];
  v6 = *v0;
  *v3 = *v0;

  v7 = *(v2 + 3);
  *v5 = v1[2];
  *(v5 + 8) = v7;
  v8 = v6[1];

  return v8();
}

uint64_t sub_231308944()
{
  v19 = v0[2];
  v18 = v0[3];
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[12];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_33(v5);
  *v6 = v7;
  v6[1] = sub_2311D05C8;
  OUTLINED_FUNCTION_40();

  return sub_231305D74(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_231308A34()
{
  OUTLINED_FUNCTION_26();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_33(v3);
  *v4 = v5;
  v4[1] = sub_231209AAC;
  v6 = OUTLINED_FUNCTION_24_2();

  return v7(v6);
}

uint64_t sub_231308AD8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[10];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_33(v5);
  *v6 = v7;
  v6[1] = sub_2311D05C8;
  v8 = OUTLINED_FUNCTION_24_2();

  return sub_231306450(v8, v9, v2, v3, v10, v4, v11, v12);
}

unint64_t sub_231308BAC()
{
  result = qword_280F7CA30;
  if (!qword_280F7CA30)
  {
    sub_231367DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CA30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_27(uint64_t result)
{
  *(result + 8) = sub_231303F74;
  v2 = *(v1 + 280);
  v3 = *(v1 + 264);
  return result;
}

void OUTLINED_FUNCTION_28_17()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

void *sub_231308C64(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_2313690A0();
  v2 = sub_231369EE0();
  v3 = sub_231255354(v2);
  v4 = sub_231369EE0();
  v5 = sub_231255354(v4);
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  memcpy(v6 + 4, __dst, 0x48uLL);
  v6[13] = v1;
  v7 = swift_allocObject();
  memcpy(v7 + 2, __dst, 0x48uLL);
  v7[11] = sub_23130ED2C;
  v7[12] = v6;
  sub_2311D38A8(v9, (v7 + 13));
  sub_2311E6694(__dst, v9);
  return v7;
}

void sub_231308D50(uint64_t *a1)
{
  v2 = *(type metadata accessor for RankedCandidateSuggestion() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E65A4(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_23130ED60(v6);
  *a1 = v3;
}

void sub_231308DF8(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E65BC(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_23130EE90(v6);
  *a1 = v3;
}

BOOL sub_231308EAC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) != 0);
  return v6 == 0;
}

void *sub_231308F0C(void *__src, __int128 *a2, uint64_t a3, uint64_t a4)
{
  memcpy(v4 + 2, __src, 0x48uLL);
  v4[11] = a3;
  v4[12] = a4;
  sub_2311D38A8(a2, (v4 + 13));
  return v4;
}

uint64_t sub_231308F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD449A8, &unk_2313772C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23136D280;
  sub_231309024(a3, a1, a2, (v8 + 32));
  sub_231309154(a1, (v8 + 72));
  sub_23130924C(a2, a3[1], (v8 + 112));
  v9 = type metadata accessor for NestedTopTierCriteria();
  result = swift_allocObject();
  *(result + 16) = v8;
  a4[3] = v9;
  a4[4] = &off_2845F6930;
  *a4 = result;
  return result;
}

uint64_t sub_231309024@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_15_24();
  v8 = swift_allocObject();
  memcpy(v8 + 2, __src, 0x48uLL);
  v8[11] = a2;
  v8[12] = a3;
  v9 = type metadata accessor for Dedupper();
  OUTLINED_FUNCTION_15_24();
  v10 = swift_allocObject();
  v10[2] = MEMORY[0x277D84F98];
  v10[3] = sub_23130941C;
  v10[4] = 0;
  v10[5] = sub_23130ED54;
  v10[6] = v8;
  v10[7] = sub_23130E438;
  v10[8] = 0;
  v10[9] = sub_2311ECEF4;
  v10[10] = 0;
  v10[11] = 0xD000000000000011;
  v10[12] = 0x8000000231381430;
  a4[3] = v9;
  a4[4] = &off_2845F6918;
  *a4 = v10;
  sub_2311E6694(__dst, &v12);
  sub_231369EE0();
  return sub_231369EE0();
}

uint64_t sub_231309154@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_54();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = type metadata accessor for Dedupper();
  OUTLINED_FUNCTION_15_24();
  v6 = swift_allocObject();
  v6[2] = MEMORY[0x277D84F98];
  v6[3] = sub_23130935C;
  v6[4] = 0;
  v6[5] = sub_23130ED4C;
  v6[6] = v4;
  v6[7] = sub_23130E438;
  v6[8] = 0;
  v6[9] = sub_2311ECEF4;
  v6[10] = 0;
  v6[11] = 0xD000000000000014;
  v6[12] = 0x8000000231381410;
  a2[3] = v5;
  a2[4] = &off_2845F6918;
  *a2 = v6;

  return sub_231369EE0();
}

uint64_t sub_23130924C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_54();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = type metadata accessor for Dedupper();
  OUTLINED_FUNCTION_15_24();
  v9 = swift_allocObject();
  v9[2] = MEMORY[0x277D84F98];
  v9[3] = sub_231309574;
  v9[4] = 0;
  v9[5] = sub_23130ED3C;
  v9[6] = v6;
  v9[7] = sub_23122DA98;
  v9[8] = 0;
  v9[9] = sub_23130ED44;
  v9[10] = v7;
  v9[11] = 0xD000000000000017;
  v9[12] = 0x80000002313813F0;
  a3[3] = v8;
  a3[4] = &off_2845F6918;
  *a3 = v9;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_23130939C(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00) + 28));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = MEMORY[0x231929610](v4, v5);
  LOBYTE(a2) = sub_2311EFC44(v6, v7, a2);

  return a2 & 1;
}

uint64_t sub_23130941C(uint64_t a1)
{
  v1 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00) + 28));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return MEMORY[0x231929610](v2, v3);
}

BOOL sub_23130947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 40))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
    v8 = (a1 + *(v7 + 28));
    v9 = v8[3];
    v10 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v11 = MEMORY[0x231929610](v9, v10);
    LOBYTE(a3) = sub_2311EFC44(v11, v12, a3);

    if (a3)
    {
      return 0;
    }

    else
    {
      v14 = (a1 + *(v7 + 48));
      v15 = v14[4];
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      v16 = sub_231367E20();
      v18 = sub_2311EFC44(v16, v17, a4);

      return !v18;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231309574(uint64_t a1)
{
  v1 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00) + 48));
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  return sub_231367E20();
}

uint64_t sub_2313095D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  v5 = (a1 + *(v4 + 48));
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v7 = sub_231367E20();
  LOBYTE(a2) = sub_2311EFC44(v7, v8, a2);

  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = *(a1 + *(v4 + 40));
  sub_2313692F0();

  sub_231369270();
  if (!v9)
  {

LABEL_5:
    v10 = 0;
    return v10 & 1;
  }

  sub_231311760(&qword_280F7C908, MEMORY[0x277D612D0]);
  v10 = sub_231369F60();

  return v10 & 1;
}

BOOL sub_231309704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  v9 = *(a1 + *(v8 + 40));
  sub_2313692F0();

  sub_231369270();
  if (!v9)
  {

    return 0;
  }

  sub_231311760(&qword_280F7C908, MEMORY[0x277D612D0]);
  v10 = sub_231369F60();

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = (a1 + *(v8 + 48));
  v12 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v13 = sub_231367E20();
  v15 = sub_2311EFC44(v13, v14, a3);

  if (!v15)
  {
    return 0;
  }

  v16 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v17 = sub_231367E20();
  v19 = sub_231210AF8(v17, v18, a2);

  v20 = v19;
  if ((v19 & 0x100000000) != 0)
  {
    v20 = 0;
  }

  return v20 > a4;
}

uint64_t sub_231309894(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v288 = a1;
  v295 = sub_2313698C0();
  v264 = *(v295 - 8);
  v7 = *(v264 + 64);
  MEMORY[0x28223BE20](v295);
  v265 = &v245 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v245 - v10;
  MEMORY[0x28223BE20](v12);
  v279 = &v245 - v13;
  MEMORY[0x28223BE20](v14);
  v259 = &v245 - v15;
  v296 = sub_231367290();
  v16 = *(v296 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v296);
  v272 = &v245 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v271 = &v245 - v20;
  MEMORY[0x28223BE20](v21);
  v294 = &v245 - v22;
  v257 = sub_231369330();
  v23 = *(v257 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v257);
  v26 = &v245 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD449C0, &qword_2313772F0);
  v27 = *(*(v256 - 8) + 64);
  MEMORY[0x28223BE20](v256);
  v255 = &v245 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD449C8, &qword_2313772F8);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v254 = &v245 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F00, &unk_231375F50);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v245 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v258 = &v245 - v37;
  MEMORY[0x28223BE20](v38);
  v263 = &v245 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v267 = &v245 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v245 - v44;
  v290 = type metadata accessor for RankedCandidateSuggestion();
  v46 = *(*(v290 - 8) + 64);
  MEMORY[0x28223BE20](v290);
  v286 = (&v245 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v48);
  v302 = &v245 - v49;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  v268 = *(v305 - 1);
  v50 = *(v268 + 64);
  MEMORY[0x28223BE20](v305);
  v260 = &v245 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v252 = &v245 - v53;
  MEMORY[0x28223BE20](v54);
  v289 = &v245 - v55;
  MEMORY[0x28223BE20](v56);
  v276 = &v245 - v57;
  MEMORY[0x28223BE20](v58);
  v285 = (&v245 - v59);
  MEMORY[0x28223BE20](v60);
  v287 = &v245 - v61;
  MEMORY[0x28223BE20](v62);
  v293 = &v245 - v63;
  MEMORY[0x28223BE20](v64);
  v278 = &v245 - v65;
  MEMORY[0x28223BE20](v66);
  v253 = &v245 - v67;
  MEMORY[0x28223BE20](v68);
  v303 = &v245 - v69;
  v261 = *(a4 + 24);
  v310[0] = a2;
  sub_231369EE0();
  sub_231308DF8(v310);
  v71 = *(v310[0] + 16);
  v270 = a3;
  v262 = v16;
  if (v71)
  {
    v246 = v26;
    v275 = v11;
    v284 = 0;
    v72 = (*(v268 + 80) + 32) & ~*(v268 + 80);
    v251 = v310[0];
    v274 = v72;
    v73 = v310[0] + v72;
    v250 = (v23 + 104);
    v281 = *(v268 + 72);
    v245 = (v23 + 32);
    v247 = (v23 + 8);
    v280 = (v16 + 104);
    *&v291 = v16 + 8;
    v304 = MEMORY[0x277D84F90];
    v74 = *MEMORY[0x277D612F0];
    v248 = *MEMORY[0x277D60720];
    v249 = v74;
    v277 = *MEMORY[0x277D60728];
    v292 = (v264 + 8);
    v269 = *MEMORY[0x277D60730];
    *&v70 = 136315138;
    v266 = v70;
    *&v70 = 136315394;
    v273 = v70;
    v75 = v305;
    v282 = v45;
    v283 = v35;
    v76 = v303;
    while (1)
    {
      v300 = v73;
      v301 = v71;
      sub_231311704(v73, v76, &qword_27DD434C0, &unk_23136CA00);
      v77 = v302;
      sub_2311E1984(v76, v302);
      if (*(v76 + v75[8]) == 1)
      {
        sub_231311704(v76 + *(v290 + 24), v45, &qword_27DD42F20, &qword_23136D410);
        v78 = sub_231366E80();
        if (__swift_getEnumTagSinglePayload(v45, 1, v78) == 1)
        {
          sub_231228E9C(v45, &qword_27DD42F20, &qword_23136D410);
        }

        else
        {
          v79 = sub_231366E60();
          (*(*(v78 - 8) + 8))(v45, v78);
          if (v79)
          {
            v80 = v288[3];
            v81 = v288[4];
            __swift_project_boxed_opaque_existential_1(v288, v80);
            if (((*(v81 + 8))(v76, 0, v80, v81) & 1) != 0 && v284 < v270)
            {
              swift_beginAccess();
              v82 = (v77 + *(v290 + 20));
              v83 = v82[4];
              __swift_project_boxed_opaque_existential_1(v82, v82[3]);
              v84 = v254;
              sub_231317680(v254);
              v85 = sub_231367260();
              if (__swift_getEnumTagSinglePayload(v84, 1, v85) == 1)
              {
                sub_231228E9C(v84, &qword_27DD449C8, &qword_2313772F8);
                v86 = 1;
                v87 = v257;
                v88 = v258;
                v89 = v263;
              }

              else
              {
                v163 = v263;
                sub_231367250();
                v89 = v163;
                (*(*(v85 - 8) + 8))(v84, v85);
                v86 = 0;
                v87 = v257;
                v88 = v258;
              }

              __swift_storeEnumTagSinglePayload(v89, v86, 1, v87);
              (*v250)(v88, v249, v87);
              __swift_storeEnumTagSinglePayload(v88, 0, 1, v87);
              v164 = v255;
              v165 = *(v256 + 48);
              sub_231311704(v89, v255, &qword_27DD43F00, &unk_231375F50);
              v299 = v165;
              v166 = v164 + v165;
              v167 = v87;
              sub_231311704(v88, v166, &qword_27DD43F00, &unk_231375F50);
              if (__swift_getEnumTagSinglePayload(v164, 1, v87) == 1)
              {
                sub_231228E9C(v88, &qword_27DD43F00, &unk_231375F50);
                sub_231228E9C(v263, &qword_27DD43F00, &unk_231375F50);
                EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v164 + v299, 1, v87);
                v169 = v302;
                v170 = v253;
                if (EnumTagSinglePayload == 1)
                {
                  sub_231228E9C(v164, &qword_27DD43F00, &unk_231375F50);
                  v171 = v286;
                  v172 = v259;
                  goto LABEL_41;
                }

LABEL_38:
                sub_231228E9C(v164, &qword_27DD449C0, &qword_2313772F0);
                v171 = v286;
                v172 = v259;
                goto LABEL_39;
              }

              sub_231311704(v164, v35, &qword_27DD43F00, &unk_231375F50);
              v173 = v299;
              if (__swift_getEnumTagSinglePayload(v164 + v299, 1, v87) == 1)
              {
                sub_231228E9C(v258, &qword_27DD43F00, &unk_231375F50);
                sub_231228E9C(v263, &qword_27DD43F00, &unk_231375F50);
                (*v247)(v35, v87);
                v169 = v302;
                v170 = v253;
                goto LABEL_38;
              }

              v176 = v246;
              (*v245)(v246, v164 + v173, v87);
              sub_231311760(&qword_280F7C8E8, MEMORY[0x277D61310]);
              LODWORD(v299) = sub_231369F60();
              v177 = *v247;
              (*v247)(v176, v167);
              sub_231228E9C(v258, &qword_27DD43F00, &unk_231375F50);
              sub_231228E9C(v263, &qword_27DD43F00, &unk_231375F50);
              v177(v35, v167);
              sub_231228E9C(v164, &qword_27DD43F00, &unk_231375F50);
              v171 = v286;
              v169 = v302;
              v170 = v253;
              v172 = v259;
              if (v299)
              {
LABEL_41:
                v178 = v294;
                v179 = v296;
                (*v280)(v294, v277, v296);
                sub_23130B6E4(v178, v169, v171);
                (*v291)(v178, v179);
              }

              else
              {
LABEL_39:
                v174 = v294;
                v175 = v296;
                (*v280)(v294, v248, v296);
                sub_23130B6E4(v174, v169, v171);
                (*v291)(v174, v175);
              }

              swift_beginAccess();
              sub_23128D830(v171, v169);
              sub_231369150();
              sub_231311704(v303, v170, &qword_27DD434C0, &unk_23136CA00);
              v180 = sub_2313698A0();
              v181 = sub_23136A3A0();
              if (os_log_type_enabled(v180, v181))
              {
                v182 = swift_slowAlloc();
                v309[0] = swift_slowAlloc();
                v183 = v309[0];
                *v182 = v266;
                v184 = v170 + v75[16];
                v185 = sub_231369040();
                v187 = v186;
                sub_231228E9C(v170, &qword_27DD434C0, &unk_23136CA00);
                v188 = sub_2311CFD58(v185, v187, v309);

                *(v182 + 4) = v188;
                _os_log_impl(&dword_2311CB000, v180, v181, "Added a topTier suggestion %s", v182, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v183);
                MEMORY[0x23192B930](v183, -1, -1);
                MEMORY[0x23192B930](v182, -1, -1);

                (*v292)(v259, v295);
              }

              else
              {

                sub_231228E9C(v170, &qword_27DD434C0, &unk_23136CA00);
                (*v292)(v172, v295);
              }

              ++v284;
              v117 = v302;
              v118 = v303;
              goto LABEL_20;
            }
          }
        }
      }

      v90 = *(v76 + v75[10]);
      sub_2313692F0();

      v91 = sub_2313692C0();
      if (!v90)
      {
        break;
      }

      v309[0] = v90;
      v308[0] = v91;
      sub_231311760(&qword_280F7C908, MEMORY[0x277D612D0]);
      v92 = sub_231369F60();

      v93 = v278;
      if ((v92 & 1) == 0)
      {
        goto LABEL_15;
      }

      v94 = v294;
      v95 = v296;
      (*v280)(v294, v269, v296);
      swift_beginAccess();
      v96 = v286;
      sub_23130B6E4(v94, v77, v286);
      v299 = *v291;
      (v299)(v94, v95);
LABEL_16:
      swift_beginAccess();
      sub_23128D830(v96, v77);
      v99 = v279;
      sub_231369150();
      sub_231311704(v76, v93, &qword_27DD434C0, &unk_23136CA00);
      v100 = v77;
      v101 = sub_2313698A0();
      v102 = sub_23136A3A0();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v309[0] = v104;
        *v103 = v273;
        v105 = v93 + v75[16];
        v106 = sub_231369040();
        v107 = v93;
        v109 = v108;
        sub_231228E9C(v107, &qword_27DD434C0, &unk_23136CA00);
        v110 = sub_2311CFD58(v106, v109, v309);

        *(v103 + 4) = v110;
        *(v103 + 12) = 2080;
        swift_beginAccess();
        v111 = v294;
        sub_2313672D0();
        v112 = sub_231367280();
        v114 = v113;
        v115 = v111;
        v75 = v305;
        (v299)(v115, v296);
        v116 = sub_2311CFD58(v112, v114, v309);

        *(v103 + 14) = v116;
        _os_log_impl(&dword_2311CB000, v101, v102, "Added a other tier suggestion %s to %s", v103, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23192B930](v104, -1, -1);
        MEMORY[0x23192B930](v103, -1, -1);
      }

      else
      {

        sub_231228E9C(v93, &qword_27DD434C0, &unk_23136CA00);
      }

      (*v292)(v99, v295);
      v117 = v100;
      v118 = v303;
LABEL_20:
      v119 = v287;
      sub_231311704(v118, v287, &qword_27DD434C0, &unk_23136CA00);
      swift_beginAccess();
      v120 = v293;
      sub_2311E1984(v117, v293);
      sub_2311CF324(v119 + v75[7], v120 + v75[7]);
      v121 = v75[9];
      LODWORD(v299) = *(v119 + v75[8]);
      v122 = *(v119 + v121);
      v123 = *(v119 + v75[10]);
      v124 = v119 + v75[11];
      v298 = *v124;
      LODWORD(v297) = *(v124 + 8);
      sub_2311CF324(v119 + v75[12], v120 + v75[12]);
      v125 = v75[13];
      v126 = sub_231368BC0();
      (*(*(v126 - 8) + 16))(v120 + v125, v119 + v125, v126);
      v127 = v75[14];
      v128 = v305[15];
      v129 = (v119 + v127);
      v130 = *v129;
      v131 = *(v129 + 8);
      v132 = sub_231367C70();
      (*(*(v132 - 8) + 16))(v120 + v128, v119 + v128, v132);
      v133 = v305[16];
      v134 = sub_231369050();
      v135 = v120 + v133;
      v136 = v119 + v133;
      v75 = v305;
      (*(*(v134 - 8) + 16))(v135, v136, v134);

      v137 = v119;
      v138 = v120;
      sub_231228E9C(v137, &qword_27DD434C0, &unk_23136CA00);
      *(v120 + v75[8]) = v299;
      *(v120 + v75[9]) = v122;
      *(v120 + v75[10]) = v123;
      v139 = v120 + v75[11];
      *v139 = v298;
      *(v139 + 8) = v297;
      v140 = v120 + v75[14];
      *v140 = v130;
      *(v140 + 8) = v131;
      v141 = v288[3];
      v142 = v288[4];
      __swift_project_boxed_opaque_existential_1(v288, v141);
      if ((*(v142 + 16))(v138, v141, v142))
      {
        v143 = v275;
        sub_231369150();
        v144 = v276;
        sub_231311704(v303, v276, &qword_27DD434C0, &unk_23136CA00);
        v145 = sub_2313698A0();
        v146 = sub_23136A3A0();
        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          v148 = v143;
          v149 = swift_slowAlloc();
          v309[0] = v149;
          *v147 = v266;
          v150 = v144 + v75[16];
          v151 = sub_231369040();
          v152 = v144;
          v154 = v153;
          sub_231228E9C(v152, &qword_27DD434C0, &unk_23136CA00);
          v155 = sub_2311CFD58(v151, v154, v309);

          *(v147 + 4) = v155;
          _os_log_impl(&dword_2311CB000, v145, v146, "Filtering out %s", v147, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v149);
          MEMORY[0x23192B930](v149, -1, -1);
          MEMORY[0x23192B930](v147, -1, -1);

          (*v292)(v148, v295);
        }

        else
        {

          sub_231228E9C(v144, &qword_27DD434C0, &unk_23136CA00);
          (*v292)(v143, v295);
        }

        sub_231228E9C(v293, &qword_27DD434C0, &unk_23136CA00);
        v76 = v303;
        sub_231228E9C(v303, &qword_27DD434C0, &unk_23136CA00);
        sub_2311E1928(v302);
        v158 = v289;
        v45 = v282;
        v35 = v283;
        v162 = v281;
      }

      else
      {
        sub_231311704(v138, v285, &qword_27DD434C0, &unk_23136CA00);
        v156 = v304;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v282;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23126DC68(0, *(v156 + 16) + 1, 1, v156);
          v156 = v189;
        }

        v158 = v289;
        v35 = v283;
        v160 = *(v156 + 16);
        v159 = *(v156 + 24);
        v304 = v156;
        if (v160 >= v159 >> 1)
        {
          sub_23126DC68(v159 > 1, v160 + 1, 1, v304);
          v304 = v190;
        }

        sub_231228E9C(v138, &qword_27DD434C0, &unk_23136CA00);
        v76 = v303;
        sub_231228E9C(v303, &qword_27DD434C0, &unk_23136CA00);
        v161 = v304;
        *(v304 + 16) = v160 + 1;
        v162 = v281;
        sub_231311624(v285, v161 + v274 + v160 * v281);
        sub_2311E1928(v302);
      }

      v73 = v300 + v162;
      v71 = v301 - 1;
      if (v301 == 1)
      {

        v192 = v270;
        v193 = v268;
        result = v304;
        goto LABEL_47;
      }
    }

    v93 = v278;
LABEL_15:
    v97 = v294;
    v98 = v296;
    (*v280)(v294, v277, v296);
    swift_beginAccess();
    v96 = v286;
    sub_23130B6E4(v97, v77, v286);
    v299 = *v291;
    (v299)(v97, v98);
    goto LABEL_16;
  }

  v192 = a3;

  v284 = 0;
  result = MEMORY[0x277D84F90];
  v193 = v268;
  v158 = v289;
LABEL_47:
  v195 = 0;
  LODWORD(v298) = *MEMORY[0x277D60728];
  v299 = v262 + 8;
  v300 = (v262 + 104);
  LODWORD(v293) = *MEMORY[0x277D60720];
  v196 = &unk_23136CA00;
  v197 = &qword_27DD42F20;
  v292 = (v264 + 8);
  *&v191 = 136315138;
  v291 = v191;
  v198 = v267;
  while (v284 < v192 && v195 < *(result + 16))
  {
    v199 = (*(v193 + 80) + 32) & ~*(v193 + 80);
    v303 = v195;
    v304 = result;
    v301 = v199;
    v302 = *(v193 + 72) * v195;
    sub_231311704(result + v199 + v302, v158, &qword_27DD434C0, v196);
    swift_beginAccess();
    sub_231311704(v158 + *(v290 + 24), v198, v197, &qword_23136D410);
    v200 = v197;
    v201 = v196;
    v202 = sub_231366E80();
    if (__swift_getEnumTagSinglePayload(v198, 1, v202) == 1)
    {
      sub_231228E9C(v198, v200, &qword_23136D410);
      sub_231228E9C(v158, &qword_27DD434C0, v201);
      v196 = v201;
      goto LABEL_68;
    }

    v203 = sub_231366E60();
    (*(*(v202 - 8) + 8))(v198, v202);
    if ((v203 & 1) == 0)
    {
      v196 = &unk_23136CA00;
      sub_231228E9C(v158, &qword_27DD434C0, &unk_23136CA00);
      goto LABEL_68;
    }

    sub_2313672D0();
    v297 = *v300;
    v297(v272, v298, v296);
    sub_231311760(&qword_27DD449B8, MEMORY[0x277D60738]);
    sub_23136A140();
    sub_23136A140();
    if (v308[0] == v306 && v308[1] == v307)
    {
      v205 = 1;
    }

    else
    {
      v205 = sub_23136A900();
    }

    v206 = v265;
    v207 = *v299;
    v208 = v296;
    (*v299)(v272, v296);
    v207(v271, v208);

    if ((v205 & 1) == 0)
    {
      v158 = v289;
LABEL_66:
      v196 = &unk_23136CA00;
      sub_231228E9C(v158, &qword_27DD434C0, &unk_23136CA00);
      v192 = v270;
      v198 = v267;
LABEL_67:
      v193 = v268;
LABEL_68:
      v197 = v200;
      goto LABEL_69;
    }

    v209 = v288[3];
    v210 = v288[4];
    __swift_project_boxed_opaque_existential_1(v288, v209);
    v158 = v289;
    if (((*(v210 + 8))(v289, 1, v209, v210) & 1) == 0)
    {
      goto LABEL_66;
    }

    v211 = v305;
    v198 = v267;
    if (((*(v158 + v305[8]) | v261) & 1) == 0)
    {
      v196 = &unk_23136CA00;
      sub_231228E9C(v158, &qword_27DD434C0, &unk_23136CA00);
      v192 = v270;
      goto LABEL_67;
    }

    v212 = v206;
    sub_231369150();
    v213 = sub_2313698A0();
    v214 = sub_23136A3A0();
    if (os_log_type_enabled(v213, v214))
    {
      v215 = swift_slowAlloc();
      v285 = v215;
      v286 = swift_slowAlloc();
      v308[0] = v286;
      *v215 = v291;
      v216 = v289;
      v217 = &v289[v211[16]];
      v218 = sub_231369040();
      v220 = sub_2311CFD58(v218, v219, v308);

      v221 = v285;
      *(v285 + 1) = v220;
      _os_log_impl(&dword_2311CB000, v213, v214, "Promoting candidate: %s to tier1", v221, 0xCu);
      v222 = v286;
      __swift_destroy_boxed_opaque_existential_1Tm(v286);
      MEMORY[0x23192B930](v222, -1, -1);
      MEMORY[0x23192B930](v221, -1, -1);

      (*v292)(v265, v295);
    }

    else
    {

      (*v292)(v212, v295);
      v216 = v289;
    }

    v223 = v297;
    v224 = v252;
    sub_231311704(v216, v252, &qword_27DD434C0, &unk_23136CA00);
    v225 = v294;
    v226 = v296;
    v223(v294, v293, v296);
    v227 = v216;
    v228 = v287;
    sub_23130B6E4(v225, v227, v287);
    v207(v225, v226);
    sub_2311CF324(v224 + v211[7], v228 + v211[7]);
    v229 = v211[9];
    LODWORD(v297) = *(v224 + v211[8]);
    v230 = *(v224 + v229);
    v231 = *(v224 + v211[10]);
    v232 = v224 + v211[11];
    v286 = *v232;
    LODWORD(v285) = *(v232 + 8);
    sub_2311CF324(v224 + v211[12], v228 + v211[12]);
    v233 = v211[13];
    v234 = sub_231368BC0();
    (*(*(v234 - 8) + 16))(v228 + v233, v224 + v233, v234);
    v235 = v211[15];
    v236 = v224 + v211[14];
    v283 = *v236;
    LODWORD(v282) = *(v236 + 8);
    v237 = sub_231367C70();
    (*(*(v237 - 8) + 16))(v228 + v235, v224 + v235, v237);
    v238 = v211[16];
    v239 = sub_231369050();
    v240 = v228 + v238;
    v241 = v224 + v238;
    v196 = &unk_23136CA00;
    (*(*(v239 - 8) + 16))(v240, v241, v239);

    sub_231228E9C(v224, &qword_27DD434C0, &unk_23136CA00);
    *(v228 + v211[8]) = v297;
    *(v228 + v211[9]) = v230;
    *(v228 + v211[10]) = v231;
    v242 = v228 + v211[11];
    *v242 = v286;
    *(v242 + 8) = v285;
    v243 = v228 + v211[14];
    *v243 = v283;
    *(v243 + 8) = v282;
    sub_231311694(v228, v227);
    sub_231311704(v227, v260, &qword_27DD434C0, &unk_23136CA00);
    v158 = v227;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23128D808(v304);
      v304 = v244;
    }

    v192 = v270;
    v198 = v267;
    v193 = v268;
    v197 = v200;
    if (v303 >= *(v304 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    sub_231311694(v260, v304 + v301 + v302);
    sub_231228E9C(v158, &qword_27DD434C0, &unk_23136CA00);
    ++v284;
LABEL_69:
    result = v304;
    v195 = v303 + 1;
  }

  return result;
}

uint64_t sub_23130B6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43780, &qword_231377300);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - v8;
  v10 = sub_231367300();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v18 = v17 - v16;
  v19 = type metadata accessor for RankedCandidateSuggestion();
  v20 = (v19 - 8);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_4();
  v24 = v23 - v22;
  sub_2311E1984(a2, v23 - v22);
  (*(v13 + 16))(v18, a2, v10);
  v25 = sub_231367290();
  (*(*(v25 - 8) + 16))(v9, a1, v25);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v25);
  sub_2313672A0();
  sub_2311CF324(v24 + v20[7], a3 + v20[7]);
  sub_231311704(v24 + v20[8], a3 + v20[8], &qword_27DD42F20, &qword_23136D410);
  v26 = v20[9];
  v27 = sub_231369050();
  OUTLINED_FUNCTION_7_0(v27);
  (*(v28 + 16))(a3 + v26, v24 + v26);
  return sub_2311E1928(v24);
}

uint64_t sub_23130B920()
{
  OUTLINED_FUNCTION_8();
  v1[39] = v2;
  v1[40] = v0;
  v1[38] = v3;
  v4 = sub_2313698C0();
  v1[41] = v4;
  v5 = *(v4 - 8);
  v1[42] = v5;
  v6 = *(v5 + 64) + 15;
  v1[43] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23130B9D8()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[40];
  memcpy(v0 + 11, (v1 + 16), 0x48uLL);
  v0[44] = v0[11];
  memcpy(v0 + 20, (v1 + 16), 0x48uLL);
  sub_2311E6694((v0 + 11), (v0 + 29));
  v2 = swift_task_alloc();
  v0[45] = v2;
  *v2 = v0;
  v2[1] = sub_23130BAA8;
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[38];

  return sub_23130BE10(v5, v3, (v0 + 20));
}

uint64_t sub_23130BAA8()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  v2 = *(*v0 + 360);
  v8 = *v0;
  v1[46] = v3;

  memcpy(v1 + 2, v1 + 20, 0x48uLL);
  sub_231286838((v1 + 2));
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23130BBB4()
{
  v26 = v0;
  v1 = v0[46];
  if (*(v1 + 16) >= v0[44])
  {
    v2 = v0[43];
    v3 = v0[40];
    sub_231369150();

    v4 = sub_2313698A0();
    v5 = sub_23136A3A0();
    if (OUTLINED_FUNCTION_40_1(v5))
    {
      v6 = v0[44];
      v7 = v0[40];
      v8 = OUTLINED_FUNCTION_60();
      *v8 = 134217984;
      *(v8 + 4) = v6;

      _os_log_impl(&dword_2311CB000, v4, v3, "combined suggestions more than max (%ld). Reranking top tiers and Truncating", v8, 0xCu);
      OUTLINED_FUNCTION_29();
    }

    else
    {
      v9 = v0[40];
    }

    v10 = v0[46];
    (*(v0[42] + 8))(v0[43], v0[41]);
    v25 = v10;
    sub_231369EE0();
    sub_231308D50(&v25);
    v11 = v0[46];
    v12 = v0[44];

    sub_2312EEC20(v12, v25);
    v14 = v13;
    v16 = v15;
    if (v15)
    {
      sub_23136A930();
      swift_unknownObjectRetain_n();
      v20 = swift_dynamicCastClass();
      if (!v20)
      {
        swift_unknownObjectRelease();
        v20 = MEMORY[0x277D84F90];
      }

      v21 = *(v20 + 16);

      if (__OFSUB__(v16 >> 1, v14))
      {
        __break(1u);
      }

      else if (v21 == (v16 >> 1) - v14)
      {
        v1 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v1)
        {
          goto LABEL_14;
        }

        v1 = MEMORY[0x277D84F90];
        goto LABEL_13;
      }

      swift_unknownObjectRelease();
    }

    v17 = OUTLINED_FUNCTION_27();
    sub_231259354(v17, v18, v14, v16);
    v1 = v19;
LABEL_13:
    swift_unknownObjectRelease();
  }

LABEL_14:
  v22 = v0[43];

  v23 = v0[1];

  return v23(v1);
}

uint64_t sub_23130BE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 312) = a3;
  *(v4 + 320) = v3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD449B0, &unk_2313772E0) - 8) + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  v7 = *(type metadata accessor for RankedCandidateSuggestion() - 8);
  *(v4 + 336) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  v9 = sub_231367290();
  *(v4 + 368) = v9;
  v10 = *(v9 - 8);
  *(v4 + 376) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = swift_task_alloc();
  v12 = sub_2313698C0();
  *(v4 + 448) = v12;
  v13 = *(v12 - 8);
  *(v4 + 456) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 480) = swift_task_alloc();
  *(v4 + 488) = swift_task_alloc();
  *(v4 + 496) = swift_task_alloc();
  *(v4 + 504) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  *(v4 + 512) = v15;
  v16 = *(v15 - 8);
  *(v4 + 520) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 528) = swift_task_alloc();
  *(v4 + 536) = swift_task_alloc();
  *(v4 + 544) = swift_task_alloc();
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  *(v4 + 584) = swift_task_alloc();
  *(v4 + 592) = swift_task_alloc();
  *(v4 + 600) = swift_task_alloc();
  *(v4 + 608) = swift_task_alloc();
  *(v4 + 144) = *a3;
  *(v4 + 616) = *(a3 + 16);
  v18 = *(a3 + 40);
  *(v4 + 16) = *(a3 + 24);
  *(v4 + 32) = v18;
  *(v4 + 48) = *(a3 + 56);
  v19 = swift_task_alloc();
  *(v4 + 624) = v19;
  *v19 = v4;
  v19[1] = sub_23130C1D4;

  return sub_2312C61EC();
}

uint64_t sub_23130C1D4()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 624);
  v7 = *v0;
  *(*v0 + 632) = v2;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23130C2C8()
{
  v732 = v0;
  v1 = v0[79];
  v2 = v0[77];
  v721 = v0[65];
  v3 = v0[47];
  v5 = v0[39];
  v4 = v0[40];
  v640 = *(v4 + 96);
  v649 = *(v4 + 88);
  v649();
  v726 = *v5;
  v727 = v2;
  v728 = *(v5 + 24);
  v729 = *(v5 + 40);
  v730 = *(v5 + 56);
  v724 = v0;
  result = sub_231309894(v0 + 8, v1, v2, &v726);
  v7 = result;
  v8 = 0;
  buf = *(result + 16);
  v713 = v3 + 104;
  LODWORD(v699) = *MEMORY[0x277D60720];
  v706 = v3 + 8;
  v656 = MEMORY[0x277D84F90];
  v680 = result;
  while (buf != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
      return result;
    }

    v9 = v724[76];
    v11 = v724[54];
    v10 = v724[55];
    v12 = v724[46];
    v13 = *(v721 + 80);
    OUTLINED_FUNCTION_35_0();
    v15 = *(v14 + 72);
    v671 = v16;
    sub_231311704(v7 + v16 + v15 * v8, v9, &qword_27DD434C0, &unk_23136CA00);
    v17 = sub_2313672D0();
    v25 = OUTLINED_FUNCTION_8_26(v17, v18, v19, v20, v21, v22, v23, v24, v567, v573, v580, v587, v594, v601, v608, v615, v622, v630, v640, v649, v656, i, v671, v680, buf, v699, v706, v713);
    v26(v25);
    OUTLINED_FUNCTION_1_41();
    sub_231311760(&qword_27DD449B8, v27);
    OUTLINED_FUNCTION_54_0();
    sub_23136A140();
    OUTLINED_FUNCTION_54_0();
    sub_23136A140();
    v28 = v724[23];
    v30 = v724[54];
    v29 = v724[55];
    v31 = v724[46];
    v32 = v724[20] == v724[22] && v724[21] == v28;
    if (v32)
    {
      v37 = *v706;
      v38 = OUTLINED_FUNCTION_40_14();
      v37(v38);
      v39 = OUTLINED_FUNCTION_17_18();
      v37(v39);

LABEL_11:
      sub_231311624(v724[76], v724[75]);
      v40 = v656;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v726 = v656;
      v7 = v680;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_6_25();
        v40 = v726;
      }

      OUTLINED_FUNCTION_9_27();
      if (v43)
      {
        OUTLINED_FUNCTION_3_35(v42);
        OUTLINED_FUNCTION_32_14();
        v40 = v726;
      }

      ++v8;
      v44 = v724[75];
      *(v40 + 16) = v28;
      v656 = v40;
      result = sub_231311624(v44, v40 + v670 + v29 * v15);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_16_24();
      v34 = *v706;
      v35 = OUTLINED_FUNCTION_40_14();
      v34(v35);
      v36 = OUTLINED_FUNCTION_17_18();
      v34(v36);

      if (v33)
      {
        goto LABEL_11;
      }

      result = sub_231228E9C(v724[76], &qword_27DD434C0, &unk_23136CA00);
      ++v8;
      v7 = v680;
    }
  }

  v45 = v724;
  v46 = v724[63];
  sub_231369150();
  v47 = v656;

  v48 = sub_2313698A0();
  v49 = sub_23136A3A0();

  v50 = os_log_type_enabled(v48, v49);
  if (v50)
  {
    v58 = OUTLINED_FUNCTION_60();
    v631 = swift_slowAlloc();
    v731[0] = v631;
    *v58 = 136315138;
    v59 = *(v656 + 16);
    v60 = MEMORY[0x277D84F90];
    if (v59)
    {
      LODWORD(v615) = v49;
      v672 = v724[64];
      *&v726 = MEMORY[0x277D84F90];
      sub_2311F4E34();
      v60 = v726;
      OUTLINED_FUNCTION_0_37(v61, v62, v63, v64, v65, v66, v67, v68, v567, v573, v580, v587, v594, v601, v58, v615, v48, v631, v640, v649, v656, i, v672, v680, buf, v699, v706, v713, v721);
      v70 = v47 + v69;
      i = *(v71 + 72);
      do
      {
        v72 = v724[74];
        sub_231311704(v70, v72, &qword_27DD434C0, &unk_23136CA00);
        v73 = v72 + *(v670 + 64);
        v74 = sub_231369040();
        v76 = v75;
        sub_231228E9C(v72, &qword_27DD434C0, &unk_23136CA00);
        *&v726 = v60;
        v78 = *(v60 + 16);
        v77 = *(v60 + 24);
        if (v78 >= v77 >> 1)
        {
          OUTLINED_FUNCTION_3_35(v77);
          sub_2311F4E34();
          v60 = v726;
        }

        *(v60 + 16) = v78 + 1;
        v79 = v60 + 16 * v78;
        *(v79 + 32) = v74;
        *(v79 + 40) = v76;
        v70 += i;
        --v59;
      }

      while (v59);
      v48 = v622;
      LOBYTE(v49) = v615;
      v58 = v608;
    }

    v85 = v724[63];
    v87 = v724[56];
    v86 = v724[57];
    v724[38] = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
    sub_2311E5648();
    v88 = sub_231369F50();
    v90 = v89;

    v91 = sub_2311CFD58(v88, v90, v731);

    *(v58 + 4) = v91;
    _os_log_impl(&dword_2311CB000, v48, v49, "Found tier1 suggestions:\n%s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v631);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v83 = *(v86 + 8);
    v83(v85, v87);
    v7 = v680;
  }

  else
  {
    v80 = v724[63];
    OUTLINED_FUNCTION_23_16(v50, v51, v52, v53, v54, v55, v56, v57, v567, v573, v580, v587, v594, v601, v608, v615, v622, v630, v640, v649, v656, i, v670, v680, buf, v699, v706, v713, v721, v724);
    v82 = *(v81 + 448);

    v83 = v45[1];
    v84 = OUTLINED_FUNCTION_27();
    (v83)(v84);
    v45 = v724;
  }

  if (!*(v656 + 16))
  {
    v96 = v45[62];

    sub_231369150();
    v97 = sub_2313698A0();
    v98 = sub_23136A3A0();
    if (OUTLINED_FUNCTION_40_1(v98))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_57(&dword_2311CB000, v99, v100, "Unable to find top tiered candidates. Using all suggestions as eligible");
      OUTLINED_FUNCTION_29();
    }

    v101 = v724[79];
    v102 = v724[62];
    v103 = v724[57];
    v104 = v724[56];

    v83(v102, v104);
    v105 = *(v101 + 16);
    v106 = v724;
    v107 = v724[79];
    if (v105)
    {
      v108 = v724[64];
      OUTLINED_FUNCTION_5_28(MEMORY[0x277D84F90]);
      sub_2311F5764();
      v109 = v726;
      OUTLINED_FUNCTION_0_37(v110, v111, v112, v113, v114, v115, v116, v117, v567, v573, v580, v587, v594, v601, v608, v615, v622, v631, v640, v649, v656, i, v670, v680, buf, v699, v706, v713, v721);
      i = v118;
      v119 = v107 + v118;
      v656 = *(v120 + 72);
      do
      {
        bufg = v109;
        v121 = v106[74];
        v122 = v106[73];
        sub_231311704(v119, v121, &qword_27DD434C0, &unk_23136CA00);
        sub_2311E1984(v121, v122);
        sub_2311CF324(v121 + v108[7], v122 + v108[7]);
        v123 = *(v121 + v108[9]);
        v7 = *(v121 + v108[10]);
        v124 = v108[12];
        OUTLINED_FUNCTION_14_26(v108[11]);
        v125 = v108[13];
        v126 = sub_231368BC0();
        OUTLINED_FUNCTION_7_0(v126);
        v128 = *(v127 + 16);
        v129 = OUTLINED_FUNCTION_13_21();
        v130(v129);
        v131 = v108[15];
        v132 = v121 + v108[14];
        v133 = *v132;
        v134 = *(v132 + 8);
        v135 = sub_231367C70();
        OUTLINED_FUNCTION_7_0(v135);
        v137 = *(v136 + 16);
        v138 = OUTLINED_FUNCTION_13_21();
        v139(v138);
        v140 = v108[16];
        v141 = sub_231369050();
        OUTLINED_FUNCTION_7_0(v141);
        v143 = *(v142 + 16);
        v144 = OUTLINED_FUNCTION_13_21();
        v145(v144);

        sub_231228E9C(v121, &qword_27DD434C0, &unk_23136CA00);
        *(v122 + v108[8]) = 1;
        *(v122 + v108[9]) = v123;
        *(v122 + v108[10]) = v7;
        OUTLINED_FUNCTION_26_18(v108[11], v567, v573, v580, v587, v594, v601, v608, v615, v622, v631, v640, v649, v656, i, v670, v680);
        v146 = v122 + v108[14];
        *v146 = v133;
        v109 = bufg;
        *(v146 + 8) = v134;
        *&v726 = bufg;
        v148 = *(bufg + 2);
        v147 = *(bufg + 3);
        if (v148 >= v147 >> 1)
        {
          OUTLINED_FUNCTION_3_35(v147);
          OUTLINED_FUNCTION_32_14();
          v109 = v726;
        }

        v106 = v724;
        v149 = v724[73];
        *(v109 + 16) = v148 + 1;
        sub_231311624(v149, v109 + i + v148 * v656);
        v119 += v656;
        --v105;
      }

      while (v105);
      v201 = v724[79];
    }

    else
    {
      v238 = v724[79];

      v109 = MEMORY[0x277D84F90];
    }

    v239 = v106[77];
    v240 = v106[61];
    v241 = v106[40];
    (v649)(v202);
    v726 = *(v106 + 9);
    v727 = v239;
    OUTLINED_FUNCTION_25_17();
    v242 = sub_231309894(v106 + 13, v109, v239, &v726);

    __swift_destroy_boxed_opaque_existential_1Tm(v106 + 13);
    sub_231369150();
    sub_231369EE0();
    v243 = sub_2313698A0();
    v244 = sub_23136A3A0();

    LODWORD(v649) = v244;
    bufc = v242;
    if (!os_log_type_enabled(v243, v244))
    {
      v300 = v106[61];
      v301 = v106;
      v302 = v106[57];
      v303 = v301[56];

      v304 = *(v302 + 8);
      v305 = OUTLINED_FUNCTION_27();
      v306(v305);
      goto LABEL_108;
    }

    OUTLINED_FUNCTION_60();
    result = OUTLINED_FUNCTION_33_15();
    v252 = 0;
    v633 = result;
    v731[0] = result;
    v642 = v244;
    *v244 = 136315138;
    v680 = *(v242 + 16);
    v656 = MEMORY[0x277D84F90];
    for (i = v243; ; v243 = i)
    {
      while (1)
      {
        if (v680 == v252)
        {
          if (*(v656 + 16))
          {
            v717 = v106[64];
            OUTLINED_FUNCTION_4_26(MEMORY[0x277D84F90]);
            sub_2311F4E34();
            v307 = v726;
            OUTLINED_FUNCTION_0_37(v308, v309, v310, v311, v312, v313, v314, v315, v567, v573, v580, v587, v594, v601, v608, v615, v622, v633, v642, v649, v656, i, v670, v680, bufc, v699, v706, v717, v721);
            OUTLINED_FUNCTION_22_20();
            do
            {
              v316 = v106[74];
              sub_231311704(v243, v316, &qword_27DD434C0, &unk_23136CA00);
              v317 = v316 + *(v713 + 64);
              sub_231369040();
              OUTLINED_FUNCTION_31_21();
              OUTLINED_FUNCTION_36_13();
              if (v43)
              {
                OUTLINED_FUNCTION_3_35(v318);
                OUTLINED_FUNCTION_39_12();
                sub_2311F4E34();
                v307 = v726;
              }

              OUTLINED_FUNCTION_18_21();
            }

            while (!v32);

            v243 = i;
          }

          else
          {

            v307 = MEMORY[0x277D84F90];
          }

          v397 = v106[61];
          v398 = v106[56];
          v399 = v106[57];
          v400 = MEMORY[0x23192A860](v307, MEMORY[0x277D837D0]);
          v402 = v401;

          v403 = sub_2311CFD58(v400, v402, v731);

          *(v642 + 4) = v403;
          OUTLINED_FUNCTION_30_15(&dword_2311CB000, v404, v405, "Found new tiering: %s", v406, v407, v408, v409, v567, v573, v580, v587, v594, v601, v608, v615, v622, v633, v642, v649);
          __swift_destroy_boxed_opaque_existential_1Tm(v631);
          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_29();

          v410 = *(v399 + 8);
          v411 = OUTLINED_FUNCTION_27();
          v412(v411);
          v242 = bufc;
LABEL_108:
          v413 = *(v242 + 16);
          if (!v413)
          {
            goto LABEL_147;
          }

          v45 = v724;
          v414 = v724[42];
          OUTLINED_FUNCTION_4_26(MEMORY[0x277D84F90]);
          sub_2311F571C();
          v328 = v726;
          OUTLINED_FUNCTION_0_37(v415, v416, v417, v418, v419, v420, v421, v422, v567, v573, v580, v587, v594, v601, v608, v615, v622, v631, v640, v649, v656, i, v670, v680, bufc, v699, v706, v713, v721);
          v424 = v242 + v423;
          v426 = *(v425 + 72);
          do
          {
            v427 = v724[74];
            v428 = v724[45];
            OUTLINED_FUNCTION_45_10();
            sub_2311E1984(v427, v428);
            v429 = OUTLINED_FUNCTION_17_18();
            sub_231228E9C(v429, v430, &unk_23136CA00);
            OUTLINED_FUNCTION_38_11();
            if (v43)
            {
              OUTLINED_FUNCTION_3_35(v431);
              OUTLINED_FUNCTION_39_12();
              sub_2311F571C();
              v328 = v726;
            }

            v432 = v724[45];
            *(v328 + 16) = v427;
            v433 = *(v414 + 80);
            OUTLINED_FUNCTION_35_0();
            OUTLINED_FUNCTION_29_14(v434, v435);
            v424 += v426;
            --v413;
          }

          while (v413);
LABEL_146:
          __swift_destroy_boxed_opaque_existential_1Tm(v45 + 8);

          goto LABEL_149;
        }

        if (v252 >= *(v242 + 16))
        {
          goto LABEL_153;
        }

        v253 = v106[72];
        v255 = v106[52];
        v254 = v106[53];
        v256 = v106[46];
        OUTLINED_FUNCTION_0_37(result, v245, v246, v247, v248, v249, v250, v251, v567, v573, v580, v587, v594, v601, v608, v615, v622, v633, v642, v649, v656, i, v670, v680, bufc, v699, v706, v713, v721);
        v258 = OUTLINED_FUNCTION_20_22(v257);
        sub_231311704(v258, v259, &qword_27DD434C0, &unk_23136CA00);
        v260 = sub_2313672D0();
        v268 = OUTLINED_FUNCTION_8_26(v260, v261, v262, v263, v264, v265, v266, v267, v569, v575, v582, v589, v596, v603, v610, v617, v625, v634, v643, v651, v658, v665, v675, v682, bufh, v701, v708, v716);
        v269(v268);
        OUTLINED_FUNCTION_1_41();
        sub_231311760(&qword_27DD449B8, v270);
        OUTLINED_FUNCTION_10_29();
        sub_23136A140();
        OUTLINED_FUNCTION_10_29();
        sub_23136A140();
        v277 = v106[32];
        v278 = v106[34];
        v279 = v106[35];
        v281 = v106[52];
        v280 = v106[53];
        v282 = v106[46];
        if (v277 != v278 || v106[33] != v279)
        {
          break;
        }

        v294 = OUTLINED_FUNCTION_42_13(v277, v271, v278, v272, v273, v274, v275, v276, v570, v576, v583, v590, v597, v604, v611, v618, v626, v635, v644, v652, v659, v666, v676, v683, bufd, v702, v709);
        (v106)(v294);
        v295 = OUTLINED_FUNCTION_10_29();
        (v106)(v295);

LABEL_78:
        v106 = v724;
        sub_231311624(v724[72], v724[71]);
        v296 = v656;
        v297 = swift_isUniquelyReferenced_nonNull_native();
        *&v726 = v656;
        if ((v297 & 1) == 0)
        {
          OUTLINED_FUNCTION_6_25();
          v296 = v726;
        }

        v242 = bufc;
        OUTLINED_FUNCTION_9_27();
        if (v43)
        {
          OUTLINED_FUNCTION_3_35(v298);
          OUTLINED_FUNCTION_32_14();
          v296 = v726;
        }

        v252 = &v243->isa + 1;
        v299 = v724[71];
        *(v296 + 16) = v279;
        v656 = v296;
        result = sub_231311624(v299, v296 + v670 + v255 * v7);
        v243 = i;
      }

      v284 = OUTLINED_FUNCTION_16_24();
      v292 = OUTLINED_FUNCTION_28_18(v284, v285, v286, v287, v288, v289, v290, v291, v570, v576, v583, v590, v597, v604, v611, v618, v626, v635, v644, v652, v659, v666, v676, v683, bufd, v702, v709);
      (v106)(v292);
      v293 = OUTLINED_FUNCTION_10_29();
      (v106)(v293);

      if (v255)
      {
        goto LABEL_78;
      }

      v106 = v724;
      result = sub_231228E9C(v724[72], &qword_27DD434C0, &unk_23136CA00);
      v252 = &v243->isa + 1;
      v242 = bufc;
    }
  }

  v92 = v45[79];
  v93 = v45[64];
  v94 = v45[41];

  sub_231217CD4(v656, v94);
  if (__swift_getEnumTagSinglePayload(v94, 1, v93) == 1)
  {
    sub_231228E9C(v45[41], &qword_27DD449B0, &unk_2313772E0);
    v95 = 0;
  }

  else
  {
    v150 = v45[41];
    v95 = *(v150 + *(v45[64] + 36));

    sub_231228E9C(v150, &qword_27DD434C0, &unk_23136CA00);
  }

  sub_2313692F0();
  v151 = sub_231369270();
  if (!v95)
  {

LABEL_58:
    v203 = v45[58];
    sub_231369150();

    v204 = sub_2313698A0();
    v205 = sub_23136A3A0();

    v206 = os_log_type_enabled(v204, v205);
    if (v206)
    {
      LODWORD(v699) = v205;
      OUTLINED_FUNCTION_60();
      v674 = OUTLINED_FUNCTION_33_15();
      v731[0] = v674;
      bufb = v205;
      *v205 = 136315138;
      v214 = *(v656 + 16);
      if (v214)
      {
        v715 = v45[64];
        OUTLINED_FUNCTION_5_28(MEMORY[0x277D84F90]);
        sub_2311F4E34();
        v215 = v726;
        OUTLINED_FUNCTION_0_37(v216, v217, v218, v219, v220, v221, v222, v223, v567, v573, v580, v587, v594, v601, v608, v615, v622, v631, v640, v204, v656, v83, v674, v680, v205, v699, v706, v715, v721);
        OUTLINED_FUNCTION_22_20();
        do
        {
          v224 = v45[74];
          sub_231311704(v204, v224, &qword_27DD434C0, &unk_23136CA00);
          v225 = v224 + *(v713 + 64);
          v226 = sub_231369040();
          v228 = v227;
          v229 = OUTLINED_FUNCTION_54_0();
          sub_231228E9C(v229, v230, &unk_23136CA00);
          *&v726 = v215;
          v232 = *(v215 + 16);
          v231 = *(v215 + 24);
          if (v232 >= v231 >> 1)
          {
            OUTLINED_FUNCTION_3_35(v231);
            sub_2311F4E34();
            v215 = v726;
          }

          *(v215 + 16) = v232 + 1;
          v233 = v215 + 16 * v232;
          *(v233 + 32) = v226;
          *(v233 + 40) = v228;
          v204 = (v204 + v706);
          --v214;
        }

        while (v214);

        v83 = i;
        v204 = v649;
      }

      else
      {

        v215 = MEMORY[0x277D84F90];
      }

      v320 = v45[57];
      v319 = v45[58];
      v321 = v45[56];
      v322 = MEMORY[0x23192A860](v215, MEMORY[0x277D837D0]);
      v324 = v323;

      v325 = sub_2311CFD58(v322, v324, v731);

      *(bufb + 4) = v325;
      _os_log_impl(&dword_2311CB000, v204, v699, "Found top tiered candidates: %s", bufb, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v674);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v83(v319, v321);
      v7 = v680;
    }

    else
    {
      v234 = v45[58];
      OUTLINED_FUNCTION_23_16(v206, v207, v208, v209, v210, v211, v212, v213, v567, v573, v580, v587, v594, v601, v608, v615, v622, v631, v640, v649, v656, i, v670, v680, buf, v699, v706, v713, v721, v724);
      v236 = *(v235 + 448);

      v45 = v725;
      v237 = OUTLINED_FUNCTION_27();
      (v83)(v237);
    }

    v326 = *(v7 + 16);
    if (!v326)
    {

      goto LABEL_148;
    }

    v327 = v45[42];
    OUTLINED_FUNCTION_4_26(MEMORY[0x277D84F90]);
    sub_2311F571C();
    v328 = v726;
    OUTLINED_FUNCTION_0_37(v329, v330, v331, v332, v333, v334, v335, v336, v567, v573, v580, v587, v594, v601, v608, v615, v622, v631, v640, v649, v656, i, v674, v680, bufb, v699, v706, v713, v721);
    v338 = v7 + v337;
    v340 = *(v339 + 72);
    do
    {
      v341 = v45[74];
      v342 = v45[43];
      sub_231311704(v338, v341, &qword_27DD434C0, &unk_23136CA00);
      sub_2311E1984(v341, v342);
      v343 = OUTLINED_FUNCTION_54_0();
      sub_231228E9C(v343, v344, &unk_23136CA00);
      *&v726 = v328;
      v346 = *(v328 + 16);
      v345 = *(v328 + 24);
      if (v346 >= v345 >> 1)
      {
        OUTLINED_FUNCTION_3_35(v345);
        sub_2311F571C();
        v328 = v726;
      }

      v347 = v45[43];
      *(v328 + 16) = v346 + 1;
      v348 = *(v327 + 80);
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_29_14(v349, v350);
      v338 += v340;
      --v326;
    }

    while (v326);
    goto LABEL_146;
  }

  v45[36] = v95;
  v45[37] = v151;
  sub_231311760(&qword_280F7C908, MEMORY[0x277D612D0]);
  v152 = sub_231369F60();

  v153 = v45[36];

  if ((v152 & 1) == 0 || *(v656 + 16) >= v45[77])
  {
    goto LABEL_58;
  }

  v623 = *(v656 + 16);
  v154 = v45[60];
  sub_231369150();
  v155 = sub_2313698A0();
  v156 = sub_23136A3A0();
  v157 = OUTLINED_FUNCTION_40_1(v156);
  if (v157)
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_57(&dword_2311CB000, v165, v166, "Special homescreen case. Adding remaining homescreen suggestions as eligible");
    OUTLINED_FUNCTION_29();
  }

  v167 = v45[60];
  OUTLINED_FUNCTION_23_16(v157, v158, v159, v160, v161, v162, v163, v164, v567, v573, v580, v587, v594, v601, v608, v615, v623, v631, v640, v649, v656, i, v670, v680, buf, v699, v706, v713, v721, v724);
  v169 = *(v168 + 448);

  v170 = v724;
  result = (v83)(v167, v169);
  v178 = 0;
  LODWORD(v641) = *MEMORY[0x277D60728];
  v632 = MEMORY[0x277D84F90];
  while (bufa != v178)
  {
    if (v178 >= *(v7 + 16))
    {
      goto LABEL_154;
    }

    v179 = v170[70];
    v181 = v170[50];
    v180 = v170[51];
    v182 = v170[46];
    OUTLINED_FUNCTION_0_37(result, v171, v172, v173, v174, v175, v176, v177, v568, v574, v581, v588, v595, v602, v609, v616, v624, v632, v641, v650, v657, v664, v673, v681, bufa, v700, v707, v714, v722);
    v664 = v184;
    v650 = *(v183 + 72);
    sub_231311704(v7 + v184 + v650 * v178, v179, &qword_27DD434C0, &unk_23136CA00);
    sub_2313672D0();
    (*v714)(v181, v641, v182);
    OUTLINED_FUNCTION_1_41();
    sub_231311760(&qword_27DD449B8, v185);
    OUTLINED_FUNCTION_54_0();
    sub_23136A140();
    OUTLINED_FUNCTION_54_0();
    sub_23136A140();
    v186 = v170[27];
    v188 = v170[50];
    v187 = v170[51];
    v189 = v170[46];
    if (v170[24] == v170[26] && v170[25] == v186)
    {
      v194 = *v707;
      v195 = OUTLINED_FUNCTION_40_14();
      v194(v195);
      v196 = OUTLINED_FUNCTION_17_18();
      v194(v196);
    }

    else
    {
      LODWORD(v673) = OUTLINED_FUNCTION_16_24();
      v191 = *v707;
      v192 = OUTLINED_FUNCTION_40_14();
      v191(v192);
      v193 = OUTLINED_FUNCTION_17_18();
      v191(v193);

      if ((v673 & 1) == 0)
      {
        v170 = v724;
        result = sub_231228E9C(v724[70], &qword_27DD434C0, &unk_23136CA00);
        ++v178;
        v7 = v681;
        continue;
      }
    }

    v170 = v724;
    sub_231311624(v724[70], v724[69]);
    v197 = v632;
    v198 = swift_isUniquelyReferenced_nonNull_native();
    *&v726 = v632;
    v7 = v681;
    if ((v198 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_25();
      v197 = v726;
    }

    OUTLINED_FUNCTION_9_27();
    if (v43)
    {
      OUTLINED_FUNCTION_3_35(v199);
      OUTLINED_FUNCTION_32_14();
      v197 = v726;
    }

    ++v178;
    v200 = v724[69];
    v197[2] = v186;
    v632 = v197;
    result = sub_231311624(v200, v197 + v664 + v187 * v650);
  }

  v351 = v632[2];
  if (v351)
  {
    v352 = v170[64];
    OUTLINED_FUNCTION_5_28(MEMORY[0x277D84F90]);
    v354 = v353;
    sub_2311F5764();
    v355 = v726;
    OUTLINED_FUNCTION_0_37(v356, v357, v358, v359, v360, v361, v362, v363, v568, v574, v581, v588, v595, v602, v609, v616, v624, v632, v641, v650, v657, v664, v673, v681, bufa, v700, v707, v714, v722);
    v664 = v364;
    v365 = v354 + v364;
    v650 = *(v366 + 72);
    do
    {
      bufi = v355;
      v367 = v170[74];
      v368 = v170[68];
      sub_231311704(v365, v367, &qword_27DD434C0, &unk_23136CA00);
      sub_2311E1984(v367, v368);
      sub_2311CF324(v367 + v352[7], v368 + v352[7]);
      v7 = *(v367 + v352[9]);
      v369 = *(v367 + v352[10]);
      v370 = v352[12];
      OUTLINED_FUNCTION_14_26(v352[11]);
      v371 = v352[13];
      v372 = sub_231368BC0();
      OUTLINED_FUNCTION_7_0(v372);
      v374 = *(v373 + 16);
      v375 = OUTLINED_FUNCTION_13_21();
      v376(v375);
      v377 = v352[15];
      v378 = v367 + v352[14];
      v379 = *v378;
      v380 = *(v378 + 8);
      v381 = sub_231367C70();
      OUTLINED_FUNCTION_7_0(v381);
      v383 = *(v382 + 16);
      v384 = OUTLINED_FUNCTION_13_21();
      v385(v384);
      v386 = v352[16];
      v387 = sub_231369050();
      OUTLINED_FUNCTION_7_0(v387);
      v389 = *(v388 + 16);
      v390 = OUTLINED_FUNCTION_13_21();
      v391(v390);

      v392 = v367;
      v355 = bufi;
      sub_231228E9C(v392, &qword_27DD434C0, &unk_23136CA00);
      *(v368 + v352[8]) = 1;
      *(v368 + v352[9]) = v7;
      *(v368 + v352[10]) = v369;
      OUTLINED_FUNCTION_26_18(v352[11], v568, v574, v581, v588, v595, v602, v609, v616, v624, v632, v641, v650, v657, v664, v673, v681);
      v393 = v368 + v352[14];
      *v393 = v379;
      *(v393 + 8) = v380;
      *&v726 = bufi;
      v395 = *(bufi + 2);
      v394 = *(bufi + 3);
      if (v395 >= v394 >> 1)
      {
        OUTLINED_FUNCTION_3_35(v394);
        OUTLINED_FUNCTION_32_14();
        v355 = v726;
      }

      v170 = v724;
      v396 = v724[68];
      *(v355 + 16) = v395 + 1;
      sub_231311624(v396, v355 + v664 + v395 * v650);
      v365 += v650;
      --v351;
    }

    while (v351);
  }

  else
  {

    v355 = MEMORY[0x277D84F90];
  }

  v436 = v170[77];
  v437 = v170[59];
  v438 = v170[40];
  v726 = *(v170 + 9);
  v727 = v436;
  OUTLINED_FUNCTION_25_17();
  v440 = sub_231309894(v170 + 8, v355, v439, &v726);

  *&v726 = v657;
  sub_2312671B4(v440);
  v441 = v726;
  sub_231369150();
  sub_231369EE0();
  v442 = sub_2313698A0();
  v443 = sub_23136A3A0();

  LODWORD(v650) = v443;
  bufe = v441;
  if (!os_log_type_enabled(v442, v443))
  {
    v499 = v170[59];
    v500 = v170;
    v501 = v170[57];
    v502 = v500[56];

    v503 = *(v501 + 8);
    v504 = OUTLINED_FUNCTION_27();
    v505(v504);
    goto LABEL_141;
  }

  OUTLINED_FUNCTION_60();
  result = OUTLINED_FUNCTION_33_15();
  v451 = 0;
  v636 = result;
  v731[0] = result;
  v645 = v443;
  *v443 = 136315138;
  v681 = *(v441 + 2);
  v657 = MEMORY[0x277D84F90];
  v664 = v442;
  while (v681 != v451)
  {
    if (v451 >= *(v441 + 2))
    {
      goto LABEL_155;
    }

    v452 = v170[67];
    v454 = v170[48];
    v453 = v170[49];
    v455 = v170[46];
    OUTLINED_FUNCTION_0_37(result, v444, v445, v446, v447, v448, v449, v450, v568, v574, v581, v588, v595, v602, v609, v616, v624, v636, v645, v650, v657, v664, v673, v681, bufe, v700, v707, v714, v722);
    v457 = OUTLINED_FUNCTION_20_22(v456);
    sub_231311704(v457, v458, &qword_27DD434C0, &unk_23136CA00);
    v459 = sub_2313672D0();
    v467 = OUTLINED_FUNCTION_8_26(v459, v460, v461, v462, v463, v464, v465, v466, v571, v577, v584, v591, v598, v605, v612, v619, v627, v637, v646, v653, v660, v667, v677, v684, bufj, v703, v710, v718);
    v468(v467);
    OUTLINED_FUNCTION_1_41();
    sub_231311760(&qword_27DD449B8, v469);
    OUTLINED_FUNCTION_10_29();
    sub_23136A140();
    OUTLINED_FUNCTION_10_29();
    sub_23136A140();
    v476 = v170[28];
    v477 = v170[30];
    v478 = v170[31];
    v480 = v170[48];
    v479 = v170[49];
    v481 = v170[46];
    if (v476 == v477 && v170[29] == v478)
    {
      v493 = OUTLINED_FUNCTION_42_13(v476, v470, v477, v471, v472, v473, v474, v475, v572, v578, v585, v592, v599, v606, v613, v620, v628, v638, v647, v654, v661, v668, v678, v685, buff, v704, v711);
      (v170)(v493);
      v494 = OUTLINED_FUNCTION_10_29();
      (v170)(v494);
    }

    else
    {
      v483 = OUTLINED_FUNCTION_16_24();
      v491 = OUTLINED_FUNCTION_28_18(v483, v484, v485, v486, v487, v488, v489, v490, v572, v578, v585, v592, v599, v606, v613, v620, v628, v638, v647, v654, v661, v668, v678, v685, buff, v704, v711);
      (v170)(v491);
      v492 = OUTLINED_FUNCTION_10_29();
      (v170)(v492);

      if ((v454 & 1) == 0)
      {
        v170 = v724;
        result = sub_231228E9C(v724[67], &qword_27DD434C0, &unk_23136CA00);
        v451 = &v442->isa + 1;
        v441 = bufe;
        v442 = v664;
        continue;
      }
    }

    v170 = v724;
    sub_231311624(v724[67], v724[66]);
    v495 = v657;
    v496 = swift_isUniquelyReferenced_nonNull_native();
    *&v726 = v657;
    if ((v496 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_25();
      v495 = v726;
    }

    v441 = bufe;
    OUTLINED_FUNCTION_9_27();
    if (v43)
    {
      OUTLINED_FUNCTION_3_35(v497);
      OUTLINED_FUNCTION_32_14();
      v495 = v726;
    }

    v451 = &v442->isa + 1;
    v498 = v724[66];
    *(v495 + 16) = v478;
    v657 = v495;
    result = sub_231311624(v498, v495 + v673 + v454 * v7);
    v442 = v664;
  }

  if (*(v657 + 16))
  {
    v719 = v170[64];
    OUTLINED_FUNCTION_4_26(MEMORY[0x277D84F90]);
    sub_2311F4E34();
    v506 = v726;
    OUTLINED_FUNCTION_0_37(v507, v508, v509, v510, v511, v512, v513, v514, v568, v574, v581, v588, v595, v602, v609, v616, v624, v636, v645, v650, v657, v664, v673, v681, bufe, v700, v707, v719, v722);
    OUTLINED_FUNCTION_22_20();
    do
    {
      v515 = v170[74];
      sub_231311704(v442, v515, &qword_27DD434C0, &unk_23136CA00);
      v516 = v515 + *(v714 + 64);
      sub_231369040();
      OUTLINED_FUNCTION_31_21();
      OUTLINED_FUNCTION_36_13();
      if (v43)
      {
        OUTLINED_FUNCTION_3_35(v517);
        OUTLINED_FUNCTION_39_12();
        sub_2311F4E34();
        v506 = v726;
      }

      OUTLINED_FUNCTION_18_21();
    }

    while (!v32);

    v442 = v664;
  }

  else
  {

    v506 = MEMORY[0x277D84F90];
  }

  v518 = v170[59];
  v519 = v170[56];
  v520 = v170[57];
  v521 = MEMORY[0x23192A860](v506, MEMORY[0x277D837D0]);
  v523 = v522;

  v524 = sub_2311CFD58(v521, v523, v731);

  *(v645 + 4) = v524;
  OUTLINED_FUNCTION_30_15(&dword_2311CB000, v525, v526, "Found new tiering: %s", v527, v528, v529, v530, v568, v574, v581, v588, v595, v602, v609, v616, v624, v636, v645, v650);
  __swift_destroy_boxed_opaque_existential_1Tm(v632);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();

  v531 = *(v520 + 8);
  v532 = OUTLINED_FUNCTION_27();
  v533(v532);
  v441 = bufe;
LABEL_141:
  v534 = *(v441 + 2);
  if (v534)
  {
    v45 = v724;
    v535 = v724[42];
    OUTLINED_FUNCTION_4_26(MEMORY[0x277D84F90]);
    sub_2311F571C();
    v328 = v726;
    OUTLINED_FUNCTION_0_37(v536, v537, v538, v539, v540, v541, v542, v543, v568, v574, v581, v588, v595, v602, v609, v616, v624, v632, v641, v650, v657, v664, v673, v681, bufe, v700, v707, v714, v722);
    v545 = &v441[v544];
    v547 = *(v546 + 72);
    do
    {
      v548 = v724[74];
      v549 = v724[44];
      OUTLINED_FUNCTION_45_10();
      sub_2311E1984(v548, v549);
      v550 = OUTLINED_FUNCTION_17_18();
      sub_231228E9C(v550, v551, &unk_23136CA00);
      OUTLINED_FUNCTION_38_11();
      if (v43)
      {
        OUTLINED_FUNCTION_3_35(v552);
        OUTLINED_FUNCTION_39_12();
        sub_2311F571C();
        v328 = v726;
      }

      v553 = v724[44];
      *(v328 + 16) = v548;
      v554 = *(v535 + 80);
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_29_14(v555, v556);
      v545 += v547;
      --v534;
    }

    while (v534);
    goto LABEL_146;
  }

LABEL_147:

  v45 = v724;
LABEL_148:
  __swift_destroy_boxed_opaque_existential_1Tm(v45 + 8);
  v328 = MEMORY[0x277D84F90];
LABEL_149:
  v557 = v45[76];
  v558 = v45[75];
  v559 = v45[74];
  v560 = v45[73];
  v561 = v45[72];
  v562 = v45[71];
  v563 = v45[70];
  v564 = v45[69];
  v565 = v45[68];
  v579 = v45[67];
  v586 = v45[66];
  v593 = v45[63];
  v600 = v45[62];
  v607 = v45[61];
  v614 = v45[60];
  v621 = v45[59];
  v629 = v45[58];
  v639 = v45[55];
  v648 = v45[54];
  *v655 = v45[53];
  v662 = v45[52];
  v669 = v45[51];
  v679 = v45[50];
  v686 = v45[49];
  bufk = v45[48];
  v705 = v45[45];
  v712 = v45[44];
  v720 = v45[43];
  v723 = v45[41];

  v566 = v45[1];

  return v566(v328);
}

BOOL sub_23130DEEC()
{
  v0 = sub_231367290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2313672D0();
  v5 = sub_231367270();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_2313672D0();
  v7 = sub_231367270();
  v6(v4, v0);
  if (v5 == v7)
  {
    v8 = sub_2313672C0();
    return v8 < sub_2313672C0();
  }

  else
  {
    sub_2313672D0();
    v10 = sub_231367270();
    v6(v4, v0);
    sub_2313672D0();
    v11 = sub_231367270();
    v6(v4, v0);
    return v10 < v11;
  }
}

void *sub_23130E094()
{
  v1 = v0[6];
  v2 = v0[8];

  v3 = v0[12];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  return v0;
}

uint64_t sub_23130E0D8()
{
  sub_23130E094();

  return swift_deallocClassInstance();
}

uint64_t sub_23130E15C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311F4480;

  return sub_23130B920();
}

BOOL sub_23130E204(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5[2] = a1;
  v6 = a2 & 1;
  return sub_231308EAC(sub_2313117C8, v5, v3);
}

uint64_t sub_23130E25C(void *a1, uint64_t a2, char a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  return (*(v6 + 8))(a2, a3 & 1, v5, v6) & 1;
}

BOOL sub_23130E2D4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4[2] = a1;
  return sub_231217F58(sub_2313117A8, v4, v2);
}

uint64_t sub_23130E324(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 16))(a2, v3, v4) & 1;
}

uint64_t sub_23130E38C()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_54();

  return swift_deallocClassInstance();
}

uint64_t sub_23130E438(char a1)
{
  if (a1)
  {
    v1 = sub_23136A900();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

void *sub_23130E4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[2] = MEMORY[0x277D84F98];
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v10[7] = a5;
  v10[8] = a6;
  v10[9] = a7;
  v10[10] = a8;
  v10[11] = a9;
  v10[12] = a10;
  return v10;
}

uint64_t sub_23130E4E4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_2313698C0();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v63 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v13 = v12 - v11;
  v14 = *(v2 + 24);
  v15 = *(v2 + 32);
  v16 = v14(a1);
  v18 = v17;
  v19 = *(v3 + 48);
  v20 = (*(v3 + 40))(a1);
  v21 = *(v3 + 64);
  v22 = 1;
  if ((*(v3 + 56))(a2 & 1) & 1) != 0 && (v20)
  {
    swift_beginAccess();
    v23 = *(v3 + 16);
    v24 = OUTLINED_FUNCTION_41_14();
    v27 = sub_231210AF8(v24, v25, v26);
    swift_endAccess();
    if ((v27 & 0x100000000) == 0)
    {
      sub_231369150();

      sub_231369EE0();
      v28 = sub_2313698A0();
      v29 = sub_23136A3A0();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v64[0] = swift_slowAlloc();
        *v30 = 136316418;
        *(v30 + 4) = sub_2311CFD58(*(v3 + 88), *(v3 + 96), v64);
        *(v30 + 12) = 2080;
        v31 = OUTLINED_FUNCTION_41_14();
        *(v30 + 14) = sub_2311CFD58(v31, v32, v33);
        *(v30 + 22) = 2080;
        v61 = v29;
        v34 = *(v3 + 16);
        sub_231369EE0();
        v60 = v28;
        v35 = sub_231369E90();
        v62 = v6;
        v37 = v36;

        v38 = sub_2311CFD58(v35, v37, v64);

        *(v30 + 24) = v38;
        *(v30 + 32) = 1024;
        *(v30 + 34) = 1;
        *(v30 + 38) = 1024;
        *(v30 + 40) = 1;
        *(v30 + 44) = 2080;
        v39 = sub_23136A010();
        v41 = sub_2311CFD58(v39, v40, v64);

        *(v30 + 46) = v41;
        _os_log_impl(&dword_2311CB000, v60, v61, "%s: Already seen state: %s in %s eligibility == %{BOOL}d, phaseEligibility == %{BOOL}d @%s", v30, 0x36u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();

        (*(v63 + 8))(v13, v62);
      }

      else
      {

        (*(v63 + 8))(v13, v6);
      }

      v22 = 0;
    }
  }

  if (a2)
  {
    v42 = sub_23136A900();

    if ((v42 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  swift_beginAccess();
  v43 = *(v3 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v44 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  v45 = OUTLINED_FUNCTION_41_14();
  v47 = sub_231215F6C(v45, v46);
  if (__OFADD__(*(v44 + 16), (v48 & 1) == 0))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v49 = v47;
  v50 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD449D0, &qword_231377308);
  if ((sub_23136A700() & 1) == 0)
  {
LABEL_16:
    *(v3 + 16) = v44;
    if ((v50 & 1) == 0)
    {
      sub_23125A810(v49, v16, v18, 0, v44);
      sub_231369EE0();
    }

    v55 = *(v44 + 56);
    v56 = *(v55 + 4 * v49);
    v57 = __CFADD__(v56, 1);
    v58 = v56 + 1;
    if (!v57)
    {
      *(v55 + 4 * v49) = v58;
      swift_endAccess();
LABEL_20:

      return v22;
    }

    goto LABEL_22;
  }

  v51 = OUTLINED_FUNCTION_41_14();
  v53 = sub_231215F6C(v51, v52);
  if ((v50 & 1) == (v54 & 1))
  {
    v49 = v53;
    goto LABEL_16;
  }

LABEL_23:
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_23130E974(uint64_t a1)
{
  v4 = v1[9];
  v3 = v1[10];
  swift_beginAccess();
  v5 = v1[2];
  sub_231369EE0();
  LOBYTE(a1) = v4(a1, v5);

  return a1 & 1;
}

void *sub_23130E9F4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  return v0;
}

uint64_t sub_23130EA3C()
{
  sub_23130E9F4();
  OUTLINED_FUNCTION_15_24();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for Phase(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23130EB6C()
{
  v0 = sub_23136A7B0();

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

uint64_t sub_23130EBC0(char a1)
{
  if (a1)
  {
    return 0x6150646E6F636573;
  }

  else
  {
    return 0x7361507473726966;
  }
}

uint64_t sub_23130EC78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23130EB6C();
  *a2 = result;
  return result;
}

uint64_t sub_23130ECA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23130EBC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23130ECD8()
{
  result = qword_27DD449A0;
  if (!qword_27DD449A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD449A0);
  }

  return result;
}

void sub_23130ED60(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23136A8A0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for RankedCandidateSuggestion();
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for RankedCandidateSuggestion() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23130F5A8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_23130EFD8(0, v2, 1, a1);
  }
}

void sub_23130EE90(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23136A8A0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2313101A0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_23130F35C(0, v2, 1, a1);
  }
}

void sub_23130EFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v56 = sub_231367290();
  v8 = *(v56 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v56);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for RankedCandidateSuggestion();
  v12 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - v19;
  v46 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v18 + 72);
    v23 = (v8 + 8);
    v24 = *a4 + v22 * (a3 - 1);
    v51 = -v22;
    v52 = v21;
    v25 = a1 - a3;
    v45 = v22;
    v26 = v21 + v22 * a3;
    v55 = v11;
    v58 = &v44 - v19;
    while (2)
    {
      v49 = v24;
      v50 = a3;
      v47 = v26;
      v48 = v25;
      v27 = v25;
      do
      {
        v57 = v27;
        sub_2311E1984(v26, v20);
        sub_2311E1984(v24, v16);
        sub_2313672D0();
        v28 = sub_231367270();
        v29 = v16;
        v30 = *v23;
        v31 = v23;
        v32 = v56;
        v30(v11, v56);
        sub_2313672D0();
        v33 = sub_231367270();
        v30(v11, v32);
        if (v28 == v33)
        {
          v34 = sub_2313672C0();
          v35 = v34 < sub_2313672C0();
        }

        else
        {
          sub_2313672D0();
          v36 = sub_231367270();
          v30(v11, v32);
          sub_2313672D0();
          v37 = sub_231367270();
          v30(v11, v32);
          v35 = v36 < v37;
        }

        v38 = v35;
        v16 = v29;
        v23 = v31;
        sub_2311E1928(v29);
        v20 = v58;
        sub_2311E1928(v58);
        v11 = v55;
        v39 = v57;
        if (!v38)
        {
          break;
        }

        if (!v52)
        {
          __break(1u);
          return;
        }

        v40 = v23;
        v41 = v53;
        sub_2311E18C4(v26, v53);
        swift_arrayInitWithTakeFrontToBack();
        v42 = v41;
        v23 = v40;
        sub_2311E18C4(v42, v24);
        v24 += v51;
        v26 += v51;
        v43 = __CFADD__(v39, 1);
        v27 = v39 + 1;
      }

      while (!v43);
      a3 = v50 + 1;
      v24 = v49 + v45;
      v25 = v48 - 1;
      v26 = v47 + v45;
      if (v50 + 1 != v46)
      {
        continue;
      }

      break;
    }
  }
}

void sub_23130F35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  v8 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v34 = -v18;
    v35 = v17;
    v20 = a1 - a3;
    v28 = v18;
    v21 = v17 + v18 * a3;
    while (2)
    {
      v32 = v19;
      v33 = a3;
      v30 = v21;
      v31 = v20;
      v22 = v19;
      do
      {
        sub_231311704(v21, v16, &qword_27DD434C0, &unk_23136CA00);
        sub_231311704(v22, v12, &qword_27DD434C0, &unk_23136CA00);
        v23 = sub_2313672C0();
        v24 = sub_2313672C0();
        sub_231228E9C(v12, &qword_27DD434C0, &unk_23136CA00);
        sub_231228E9C(v16, &qword_27DD434C0, &unk_23136CA00);
        if (v23 >= v24)
        {
          break;
        }

        if (!v35)
        {
          __break(1u);
          return;
        }

        v25 = v36;
        sub_231311624(v21, v36);
        swift_arrayInitWithTakeFrontToBack();
        sub_231311624(v25, v22);
        v22 += v34;
        v21 += v34;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v33 + 1;
      v19 = v32 + v28;
      v20 = v31 - 1;
      v21 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }
}

void sub_23130F5A8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v148 = a1;
  v7 = sub_231367290();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for RankedCandidateSuggestion();
  v156 = *(v163 - 8);
  v12 = *(v156 + 64);
  MEMORY[0x28223BE20](v163);
  v151 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v162 = &v140 - v15;
  MEMORY[0x28223BE20](v16);
  v141 = &v140 - v17;
  MEMORY[0x28223BE20](v18);
  v165 = &v140 - v19;
  MEMORY[0x28223BE20](v20);
  v143 = &v140 - v21;
  MEMORY[0x28223BE20](v22);
  v155 = &v140 - v23;
  MEMORY[0x28223BE20](v24);
  v144 = &v140 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v140 - v27;
  v157 = a3;
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_112:
    v169 = *v148;
    if (!v169)
    {
      goto LABEL_154;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v158;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_114;
    }

    goto LABEL_148;
  }

  v142 = a4;
  v30 = 0;
  v166 = (v8 + 8);
  v31 = MEMORY[0x277D84F90];
  v167 = v11;
  v168 = v7;
  v145 = &v140 - v27;
  v32 = v7;
  while (1)
  {
    v33 = v30;
    if (v30 + 1 >= v29)
    {
      v43 = v30 + 1;
    }

    else
    {
      v161 = v29;
      v34 = *v157;
      v35 = *(v156 + 72);
      v159 = v30 + 1;
      v36 = v34 + v35 * (v30 + 1);
      sub_2311E1984(v36, v28);
      v37 = v144;
      sub_2311E1984(v34 + v35 * v33, v144);
      v38 = v158;
      LODWORD(v160) = sub_23130DEEC();
      v158 = v38;
      v39 = v33;
      v40 = v155;
      if (v38)
      {
        sub_2311E1928(v37);
        sub_2311E1928(v28);
LABEL_122:

        return;
      }

      v146 = v31;
      sub_2311E1928(v37);
      sub_2311E1928(v28);
      v147 = v39;
      v41 = v39 + 2;
      v42 = v34 + v35 * (v39 + 2);
      v43 = v159;
      v44 = v35;
      v164 = v35;
      v45 = v161;
      v31 = v143;
      while (1)
      {
        v46 = v41;
        if (v43 + 1 >= v45)
        {
          break;
        }

        v169 = v41;
        v159 = v43;
        sub_2311E1984(v42, v40);
        sub_2311E1984(v36, v31);
        v4 = v167;
        sub_2313672D0();
        v47 = sub_231367270();
        v48 = *v166;
        v49 = v168;
        (*v166)(v4, v168);
        sub_2313672D0();
        v50 = sub_231367270();
        v48(v4, v49);
        if (v47 == v50)
        {
          v40 = v155;
          v51 = sub_2313672C0();
          v52 = v51 < sub_2313672C0();
        }

        else
        {
          v53 = v155;
          sub_2313672D0();
          v154 = sub_231367270();
          v48(v4, v49);
          sub_2313672D0();
          v54 = sub_231367270();
          v48(v4, v49);
          v52 = v154 < v54;
          v40 = v53;
        }

        sub_2311E1928(v31);
        sub_2311E1928(v40);
        v44 = v164;
        v42 += v164;
        v36 += v164;
        v43 = v159 + 1;
        v46 = v169;
        v41 = v169 + 1;
        v45 = v161;
        if ((v160 & 1) != v52)
        {
          goto LABEL_14;
        }
      }

      v43 = v45;
LABEL_14:
      if (v160)
      {
        v33 = v147;
        v32 = v168;
        if (v43 < v147)
        {
          goto LABEL_147;
        }

        if (v147 >= v43)
        {
          v31 = v146;
          goto LABEL_37;
        }

        v55 = v45 >= v46 ? v46 : v45;
        v56 = v44 * (v55 - 1);
        v57 = v44 * v55;
        v58 = v147;
        v59 = v147 * v44;
        v60 = v43;
        do
        {
          if (v58 != --v60)
          {
            v61 = *v157;
            if (!*v157)
            {
              goto LABEL_152;
            }

            sub_2311E18C4(v61 + v59, v151);
            v62 = v59 < v56 || v61 + v59 >= (v61 + v57);
            if (v62)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2311E18C4(v151, v61 + v56);
            v32 = v168;
            v44 = v164;
          }

          ++v58;
          v56 -= v44;
          v57 -= v44;
          v59 += v44;
        }

        while (v58 < v60);
        v31 = v146;
      }

      else
      {
        v31 = v146;
        v32 = v168;
      }

      v33 = v147;
    }

LABEL_37:
    v63 = v157[1];
    if (v43 < v63)
    {
      if (__OFSUB__(v43, v33))
      {
        goto LABEL_144;
      }

      if (v43 - v33 < v142)
      {
        break;
      }
    }

LABEL_56:
    if (v43 < v33)
    {
      goto LABEL_143;
    }

    v84 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v128 = *(v31 + 2);
      sub_23126DB78();
      v31 = v129;
    }

    v85 = *(v31 + 2);
    v86 = v85 + 1;
    if (v85 >= *(v31 + 3) >> 1)
    {
      sub_23126DB78();
      v31 = v130;
    }

    *(v31 + 2) = v86;
    v87 = v31 + 32;
    v88 = &v31[16 * v85 + 32];
    *v88 = v33;
    *(v88 + 1) = v43;
    v169 = *v148;
    if (!v169)
    {
      goto LABEL_153;
    }

    if (v85)
    {
      v32 = v84;
      while (1)
      {
        v89 = v86 - 1;
        v90 = &v87[16 * v86 - 16];
        v91 = &v31[16 * v86];
        if (v86 >= 4)
        {
          break;
        }

        if (v86 == 3)
        {
          v92 = *(v31 + 4);
          v93 = *(v31 + 5);
          v102 = __OFSUB__(v93, v92);
          v94 = v93 - v92;
          v95 = v102;
LABEL_77:
          if (v95)
          {
            goto LABEL_130;
          }

          v107 = *v91;
          v106 = *(v91 + 1);
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_133;
          }

          v111 = *(v90 + 1);
          v112 = v111 - *v90;
          if (__OFSUB__(v111, *v90))
          {
            goto LABEL_136;
          }

          if (__OFADD__(v109, v112))
          {
            goto LABEL_138;
          }

          if (v109 + v112 >= v94)
          {
            if (v94 < v112)
            {
              v89 = v86 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v86 < 2)
        {
          goto LABEL_132;
        }

        v114 = *v91;
        v113 = *(v91 + 1);
        v102 = __OFSUB__(v113, v114);
        v109 = v113 - v114;
        v110 = v102;
LABEL_92:
        if (v110)
        {
          goto LABEL_135;
        }

        v116 = *v90;
        v115 = *(v90 + 1);
        v102 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v102)
        {
          goto LABEL_137;
        }

        if (v117 < v109)
        {
          goto LABEL_108;
        }

LABEL_99:
        if (v89 - 1 >= v86)
        {
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
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (!*v157)
        {
          goto LABEL_150;
        }

        v121 = v31;
        v31 = &v87[16 * v89 - 16];
        v122 = *v31;
        v4 = v87;
        v123 = &v87[16 * v89];
        v124 = *(v123 + 1);
        v125 = v158;
        sub_231310A9C(*v157 + *(v156 + 72) * *v31, *v157 + *(v156 + 72) * *v123, *v157 + *(v156 + 72) * v124, v169);
        v158 = v125;
        if (v125)
        {
          goto LABEL_122;
        }

        if (v124 < v122)
        {
          goto LABEL_125;
        }

        v126 = *(v121 + 2);
        if (v89 > v126)
        {
          goto LABEL_126;
        }

        *v31 = v122;
        *(v31 + 1) = v124;
        if (v89 >= v126)
        {
          goto LABEL_127;
        }

        v86 = v126 - 1;
        sub_2311E6448(v123 + 16, v126 - 1 - v89, v123);
        v31 = v121;
        *(v121 + 2) = v126 - 1;
        v32 = v168;
        v87 = v4;
        if (v126 <= 2)
        {
          goto LABEL_108;
        }
      }

      v96 = &v87[16 * v86];
      v97 = *(v96 - 8);
      v98 = *(v96 - 7);
      v102 = __OFSUB__(v98, v97);
      v99 = v98 - v97;
      if (v102)
      {
        goto LABEL_128;
      }

      v101 = *(v96 - 6);
      v100 = *(v96 - 5);
      v102 = __OFSUB__(v100, v101);
      v94 = v100 - v101;
      v95 = v102;
      if (v102)
      {
        goto LABEL_129;
      }

      v103 = *(v91 + 1);
      v104 = v103 - *v91;
      if (__OFSUB__(v103, *v91))
      {
        goto LABEL_131;
      }

      v102 = __OFADD__(v94, v104);
      v105 = v94 + v104;
      if (v102)
      {
        goto LABEL_134;
      }

      if (v105 >= v99)
      {
        v119 = *v90;
        v118 = *(v90 + 1);
        v102 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v102)
        {
          goto LABEL_142;
        }

        if (v94 < v120)
        {
          v89 = v86 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_77;
    }

    v32 = v84;
LABEL_108:
    v29 = v157[1];
    v127 = v43 < v29;
    v30 = v43;
    v28 = v145;
    if (!v127)
    {
      goto LABEL_112;
    }
  }

  v64 = v33 + v142;
  if (__OFADD__(v33, v142))
  {
    goto LABEL_145;
  }

  if (v64 >= v63)
  {
    v64 = v157[1];
  }

  if (v64 < v33)
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    v31 = sub_2311E6430(v31);
LABEL_114:
    v132 = v31;
    v134 = *(v31 + 2);
    v31 += 16;
    for (i = v134; i >= 2; *v31 = i)
    {
      if (!*v157)
      {
        goto LABEL_151;
      }

      v135 = &v132[16 * i];
      v136 = *v135;
      v137 = &v31[16 * i];
      v138 = *(v137 + 1);
      sub_231310A9C(*v157 + *(v156 + 72) * *v135, *v157 + *(v156 + 72) * *v137, *v157 + *(v156 + 72) * v138, v169);
      if (v4)
      {
        break;
      }

      if (v138 < v136)
      {
        goto LABEL_139;
      }

      if (i - 2 >= *v31)
      {
        goto LABEL_140;
      }

      *v135 = v136;
      *(v135 + 1) = v138;
      v139 = *v31 - i;
      if (*v31 < i)
      {
        goto LABEL_141;
      }

      i = *v31 - 1;
      sub_2311E6448(v137 + 16, v139, v137);
    }

    goto LABEL_122;
  }

  if (v43 == v64)
  {
    goto LABEL_56;
  }

  v146 = v31;
  v65 = *v157;
  v66 = *(v156 + 72);
  v67 = *v157 + v66 * (v43 - 1);
  v160 = -v66;
  v147 = v33;
  v68 = v33 - v43;
  v159 = v43;
  v161 = v65;
  v149 = v66;
  v69 = v65 + v43 * v66;
  v70 = v141;
  v71 = v165;
  v150 = v64;
LABEL_46:
  v152 = v69;
  v153 = v68;
  v72 = v68;
  v154 = v67;
  while (1)
  {
    v169 = v72;
    sub_2311E1984(v69, v71);
    sub_2311E1984(v67, v70);
    v4 = v167;
    sub_2313672D0();
    v73 = sub_231367270();
    v74 = *v166;
    v75 = v70;
    v76 = v168;
    (*v166)(v4, v168);
    sub_2313672D0();
    v77 = sub_231367270();
    v74(v4, v76);
    if (v73 == v77)
    {
      v78 = v165;
      v79 = sub_2313672C0();
      v80 = v79 < sub_2313672C0();
      v70 = v75;
      v71 = v78;
    }

    else
    {
      v71 = v165;
      sub_2313672D0();
      v164 = sub_231367270();
      v74(v4, v76);
      sub_2313672D0();
      v81 = sub_231367270();
      v74(v4, v76);
      v80 = v164 < v81;
      v70 = v75;
    }

    sub_2311E1928(v70);
    sub_2311E1928(v71);
    if (!v80)
    {
LABEL_54:
      v67 = v154 + v149;
      v68 = v153 - 1;
      v69 = v152 + v149;
      if (++v159 == v150)
      {
        v43 = v150;
        v31 = v146;
        v32 = v168;
        v33 = v147;
        goto LABEL_56;
      }

      goto LABEL_46;
    }

    v82 = v169;
    if (!v161)
    {
      break;
    }

    v83 = v162;
    sub_2311E18C4(v69, v162);
    swift_arrayInitWithTakeFrontToBack();
    sub_2311E18C4(v83, v67);
    v67 += v160;
    v69 += v160;
    v62 = __CFADD__(v82, 1);
    v72 = v82 + 1;
    if (v62)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
}

void sub_2313101A0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v112 = a1;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  v120 = *(v127 - 8);
  v7 = *(v120 + 64);
  MEMORY[0x28223BE20](v127);
  v116 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v126 = &v109 - v10;
  MEMORY[0x28223BE20](v11);
  v129 = &v109 - v12;
  MEMORY[0x28223BE20](v13);
  v128 = &v109 - v14;
  v122 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_102:
    v129 = *v112;
    if (!v129)
    {
      goto LABEL_143;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v123;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_104:
      v102 = v17 + 16;
      v103 = *(v17 + 2);
      while (v103 >= 2)
      {
        if (!*v122)
        {
          goto LABEL_140;
        }

        v104 = v17;
        v105 = &v17[16 * v103];
        v17 = *v105;
        v106 = &v102[2 * v103];
        v107 = *(v106 + 1);
        sub_231311164(*v122 + *(v120 + 72) * *v105, *v122 + *(v120 + 72) * *v106, *v122 + *(v120 + 72) * v107, v129);
        if (v4)
        {
          break;
        }

        if (v107 < v17)
        {
          goto LABEL_128;
        }

        if (v103 - 2 >= *v102)
        {
          goto LABEL_129;
        }

        *v105 = v17;
        *(v105 + 1) = v107;
        v108 = *v102 - v103;
        if (*v102 < v103)
        {
          goto LABEL_130;
        }

        v103 = *v102 - 1;
        sub_2311E6448(v106 + 16, v108, v106);
        *v102 = v103;
        v17 = v104;
      }

LABEL_112:

      return;
    }

LABEL_137:
    v17 = sub_2311E6430(v17);
    goto LABEL_104;
  }

  v110 = a4;
  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    v113 = v16;
    if (v16 + 1 < v15)
    {
      v111 = v17;
      v20 = *v122;
      v4 = *(v120 + 72);
      v21 = v16;
      v22 = *v122 + v4 * v19;
      v23 = v128;
      v119 = v15;
      sub_231311704(v22, v128, &qword_27DD434C0, &unk_23136CA00);
      v24 = v129;
      sub_231311704(v20 + v4 * v21, v129, &qword_27DD434C0, &unk_23136CA00);
      v118 = sub_2313672C0();
      v117 = sub_2313672C0();
      sub_231228E9C(v24, &qword_27DD434C0, &unk_23136CA00);
      sub_231228E9C(v23, &qword_27DD434C0, &unk_23136CA00);
      v25 = v119;
      v26 = v113 + 2;
      v121 = v4;
      v27 = v20 + v4 * (v113 + 2);
      while (1)
      {
        v28 = v26;
        v29 = v19 + 1;
        if (v29 >= v25)
        {
          break;
        }

        LODWORD(v124) = v118 < v117;
        v4 = v128;
        v125 = v26;
        sub_231311704(v27, v128, &qword_27DD434C0, &unk_23136CA00);
        v30 = v129;
        sub_231311704(v22, v129, &qword_27DD434C0, &unk_23136CA00);
        v31 = v29;
        v32 = sub_2313672C0();
        v33 = sub_2313672C0();
        sub_231228E9C(v30, &qword_27DD434C0, &unk_23136CA00);
        sub_231228E9C(v4, &qword_27DD434C0, &unk_23136CA00);
        v28 = v125;
        v25 = v119;
        v34 = v32 < v33;
        v19 = v31;
        v35 = !v34;
        v36 = v124 ^ v35;
        v27 += v121;
        v22 += v121;
        v26 = v125 + 1;
        if ((v36 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v19 = v25;
LABEL_12:
      v17 = v111;
      if (v118 >= v117)
      {
        goto LABEL_32;
      }

      v18 = v113;
      if (v19 < v113)
      {
        goto LABEL_134;
      }

      if (v113 < v19)
      {
        if (v25 >= v28)
        {
          v37 = v28;
        }

        else
        {
          v37 = v25;
        }

        v38 = v113;
        v39 = v19;
        v40 = v121 * (v37 - 1);
        v41 = v121 * v37;
        v42 = v113 * v121;
        v119 = v39;
        do
        {
          if (v38 != --v39)
          {
            v43 = *v122;
            if (!*v122)
            {
              goto LABEL_141;
            }

            sub_231311624(v43 + v42, v116);
            v44 = v42 < v40 || v43 + v42 >= (v43 + v41);
            if (v44)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v42 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_231311624(v116, v43 + v40);
          }

          ++v38;
          v40 -= v121;
          v41 -= v121;
          v42 += v121;
        }

        while (v38 < v39);
        v17 = v111;
        v19 = v119;
LABEL_32:
        v18 = v113;
      }
    }

    v45 = v122[1];
    if (v19 < v45)
    {
      if (__OFSUB__(v19, v18))
      {
        goto LABEL_133;
      }

      if (v19 - v18 < v110)
      {
        break;
      }
    }

LABEL_49:
    if (v19 < v18)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = *(v17 + 2);
      sub_23126DB78();
      v17 = v99;
    }

    v56 = *(v17 + 2);
    v57 = v56 + 1;
    if (v56 >= *(v17 + 3) >> 1)
    {
      sub_23126DB78();
      v17 = v100;
    }

    *(v17 + 2) = v57;
    v58 = v17 + 32;
    v59 = &v17[16 * v56 + 32];
    *v59 = v113;
    *(v59 + 1) = v19;
    v4 = *v112;
    if (!*v112)
    {
      goto LABEL_142;
    }

    v119 = v19;
    if (v56)
    {
      while (1)
      {
        v60 = v57 - 1;
        v61 = &v58[16 * v57 - 16];
        v62 = &v17[16 * v57];
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v63 = *(v17 + 4);
          v64 = *(v17 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_69:
          if (v66)
          {
            goto LABEL_119;
          }

          v78 = *v62;
          v77 = *(v62 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_122;
          }

          v82 = *(v61 + 1);
          v83 = v82 - *v61;
          if (__OFSUB__(v82, *v61))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v80, v83))
          {
            goto LABEL_127;
          }

          if (v80 + v83 >= v65)
          {
            if (v65 < v83)
            {
              v60 = v57 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v57 < 2)
        {
          goto LABEL_121;
        }

        v85 = *v62;
        v84 = *(v62 + 1);
        v73 = __OFSUB__(v84, v85);
        v80 = v84 - v85;
        v81 = v73;
LABEL_84:
        if (v81)
        {
          goto LABEL_124;
        }

        v87 = *v61;
        v86 = *(v61 + 1);
        v73 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v73)
        {
          goto LABEL_126;
        }

        if (v88 < v80)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v60 - 1 >= v57)
        {
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_136;
        }

        if (!*v122)
        {
          goto LABEL_139;
        }

        v92 = &v58[16 * v60 - 16];
        v93 = *v92;
        v94 = &v58[16 * v60];
        v95 = *(v94 + 1);
        v96 = v123;
        sub_231311164(*v122 + *(v120 + 72) * *v92, *v122 + *(v120 + 72) * *v94, *v122 + *(v120 + 72) * v95, v4);
        v123 = v96;
        if (v96)
        {
          goto LABEL_112;
        }

        if (v95 < v93)
        {
          goto LABEL_114;
        }

        v97 = v17;
        v17 = *(v17 + 2);
        if (v60 > v17)
        {
          goto LABEL_115;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        if (v60 >= v17)
        {
          goto LABEL_116;
        }

        v57 = (v17 - 1);
        sub_2311E6448(v94 + 16, &v17[-v60 - 1], &v58[16 * v60]);
        *(v97 + 2) = v17 - 1;
        v34 = v17 > 2;
        v17 = v97;
        if (!v34)
        {
          goto LABEL_98;
        }
      }

      v67 = &v58[16 * v57];
      v68 = *(v67 - 8);
      v69 = *(v67 - 7);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_117;
      }

      v72 = *(v67 - 6);
      v71 = *(v67 - 5);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_118;
      }

      v74 = *(v62 + 1);
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_120;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_123;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = *(v61 + 1);
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_131;
        }

        if (v65 < v91)
        {
          v60 = v57 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v15 = v122[1];
    v16 = v119;
    if (v119 >= v15)
    {
      goto LABEL_102;
    }
  }

  v46 = v18 + v110;
  if (__OFADD__(v18, v110))
  {
    goto LABEL_135;
  }

  if (v46 >= v45)
  {
    v46 = v122[1];
  }

  if (v46 < v18)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v19 == v46)
  {
    goto LABEL_49;
  }

  v111 = v17;
  v47 = *v122;
  v48 = *(v120 + 72);
  v49 = *v122 + v48 * (v19 - 1);
  v124 = -v48;
  v125 = v47;
  v50 = v18 - v19;
  v114 = v48;
  v115 = v46;
  v51 = v47 + v19 * v48;
LABEL_42:
  v118 = v50;
  v119 = v19;
  v117 = v51;
  v121 = v49;
  while (1)
  {
    v52 = v128;
    sub_231311704(v51, v128, &qword_27DD434C0, &unk_23136CA00);
    v4 = v129;
    sub_231311704(v49, v129, &qword_27DD434C0, &unk_23136CA00);
    v53 = sub_2313672C0();
    v54 = sub_2313672C0();
    sub_231228E9C(v4, &qword_27DD434C0, &unk_23136CA00);
    sub_231228E9C(v52, &qword_27DD434C0, &unk_23136CA00);
    if (v53 >= v54)
    {
LABEL_47:
      v19 = v119 + 1;
      v49 = v121 + v114;
      v50 = v118 - 1;
      v51 = v117 + v114;
      if (v119 + 1 == v115)
      {
        v19 = v115;
        v17 = v111;
        v18 = v113;
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    if (!v125)
    {
      break;
    }

    v55 = v126;
    sub_231311624(v51, v126);
    swift_arrayInitWithTakeFrontToBack();
    sub_231311624(v55, v49);
    v49 += v124;
    v51 += v124;
    v44 = __CFADD__(v50++, 1);
    if (v44)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_231310A9C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_231367290();
  v81 = *(v8 - 8);
  v9 = *(v81 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for RankedCandidateSuggestion();
  v12 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v71 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v68 - v15;
  MEMORY[0x28223BE20](v17);
  v75 = &v68 - v18;
  MEMORY[0x28223BE20](v19);
  v74 = &v68 - v20;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v23 = a2 - a1 == 0x8000000000000000 && v22 == -1;
  if (v23)
  {
    goto LABEL_73;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_74;
  }

  v77 = v8;
  v84 = a1;
  v83 = a4;
  v26 = (v81 + 8);
  v27 = v24 / v22;
  v78 = (v81 + 8);
  if ((a2 - a1) / v22 >= v24 / v22)
  {
    sub_23126F660(a2, v24 / v22, a4);
    v43 = a4 + v27 * v22;
    v44 = -v22;
    v45 = v43;
    v80 = a4;
    v75 = -v22;
LABEL_43:
    v46 = a2 + v44;
    v79 = a3;
    v47 = v45;
    v81 = a2;
    v70 = a2 + v44;
    v72 = v45;
    while (1)
    {
      if (v43 <= a4)
      {
        v84 = a2;
        v82 = v47;
        goto LABEL_71;
      }

      if (a2 <= a1)
      {
        break;
      }

      v69 = v47;
      v73 = v43 + v44;
      v74 = v43;
      sub_2311E1984(v43 + v44, v16);
      v48 = v46;
      v49 = v16;
      v50 = v71;
      sub_2311E1984(v48, v71);
      sub_2313672D0();
      v51 = sub_231367270();
      v52 = *v26;
      v53 = v77;
      (*v26)(v11, v77);
      sub_2313672D0();
      v54 = sub_231367270();
      v52(v11, v53);
      if (v51 == v54)
      {
        v55 = sub_2313672C0();
        v56 = v55 < sub_2313672C0();
      }

      else
      {
        sub_2313672D0();
        v57 = sub_231367270();
        v52(v11, v53);
        sub_2313672D0();
        v58 = sub_231367270();
        v52(v11, v53);
        v56 = v57 < v58;
      }

      v59 = v56;
      v60 = v79;
      a3 = v79 + v75;
      sub_2311E1928(v50);
      sub_2311E1928(v49);
      a4 = v80;
      a2 = v81;
      v16 = v49;
      if (v59)
      {
        v65 = v60 < v81 || a3 >= v81;
        v66 = v60;
        v26 = v78;
        v67 = v70;
        if (v65)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v67;
          v45 = v69;
          v43 = v74;
          v44 = v75;
        }

        else
        {
          v45 = v69;
          v23 = v66 == v81;
          a2 = v70;
          v43 = v74;
          v44 = v75;
          if (!v23)
          {
            swift_arrayInitWithTakeBackToFront();
            v43 = v74;
            a2 = v67;
            v45 = v69;
          }
        }

        goto LABEL_43;
      }

      v61 = v60 < v74 || a3 >= v74;
      v62 = v60;
      v26 = v78;
      v46 = v70;
      if (v61)
      {
        v63 = v73;
        swift_arrayInitWithTakeFrontToBack();
        v79 = a3;
        v43 = v63;
        v47 = v63;
        v44 = v75;
        v45 = v72;
      }

      else
      {
        v47 = v73;
        v23 = v74 == v62;
        v79 = a3;
        v43 = v73;
        v44 = v75;
        v45 = v72;
        if (!v23)
        {
          v64 = v73;
          swift_arrayInitWithTakeBackToFront();
          v45 = v72;
          v79 = a3;
          v43 = v64;
          v47 = v64;
          v26 = v78;
        }
      }
    }

    v84 = a2;
    v82 = v45;
  }

  else
  {
    sub_23126F660(a1, (a2 - a1) / v22, a4);
    v72 = a3;
    v73 = a4 + (a2 - a1) / v22 * v22;
    v82 = v73;
    while (a4 < v73 && a2 < a3)
    {
      v79 = a1;
      v81 = a2;
      v29 = v74;
      sub_2311E1984(a2, v74);
      v80 = a4;
      v30 = v75;
      sub_2311E1984(a4, v75);
      sub_2313672D0();
      v31 = sub_231367270();
      v32 = *v26;
      v33 = v77;
      (*v26)(v11, v77);
      sub_2313672D0();
      v34 = sub_231367270();
      v32(v11, v33);
      if (v31 == v34)
      {
        v35 = sub_2313672C0();
        v36 = v35 < sub_2313672C0();
      }

      else
      {
        sub_2313672D0();
        v37 = sub_231367270();
        v32(v11, v33);
        sub_2313672D0();
        v38 = sub_231367270();
        v32(v11, v33);
        v36 = v37 < v38;
      }

      v39 = v36;
      sub_2311E1928(v30);
      sub_2311E1928(v29);
      a4 = v80;
      a2 = v81;
      if (v39)
      {
        v26 = v78;
        v40 = v79;
        v41 = v79 < v81 || v79 >= v81 + v22;
        a3 = v72;
        if (v41)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v79 != v81)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v22;
      }

      else
      {
        v26 = v78;
        v40 = v79;
        v42 = v79 < v80 || v79 >= v80 + v22;
        a3 = v72;
        if (v42)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v79 != v80)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v83 = a4 + v22;
        a4 += v22;
      }

      a1 = v40 + v22;
      v84 = a1;
    }
  }

LABEL_71:
  sub_23120C48C(&v84, &v83, &v82);
}

void sub_231311164(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = a4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  v7 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v55 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v46 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v13 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v13)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v12;
  v59 = a1;
  v58 = v56;
  v17 = v14 / v12;
  if (v16 >= v14 / v12)
  {
    v28 = v56;
    sub_23126F698(a2, v14 / v12, v56);
    v29 = v28 + v17 * v12;
    v30 = -v12;
    v31 = v29;
    v49 = a1;
    v50 = v30;
LABEL_36:
    v32 = a2 + v30;
    v33 = a3;
    v47 = v31;
    v51 = a2 + v30;
    while (1)
    {
      if (v29 <= v56)
      {
        v59 = a2;
        v57 = v31;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v48 = v31;
      a3 = v33 + v30;
      v34 = v29 + v30;
      v35 = v54;
      v36 = v29;
      sub_231311704(v29 + v30, v54, &qword_27DD434C0, &unk_23136CA00);
      v37 = v32;
      v38 = v55;
      sub_231311704(v37, v55, &qword_27DD434C0, &unk_23136CA00);
      v39 = v35;
      v52 = sub_2313672C0();
      v40 = sub_2313672C0();
      sub_231228E9C(v38, &qword_27DD434C0, &unk_23136CA00);
      sub_231228E9C(v39, &qword_27DD434C0, &unk_23136CA00);
      if (v52 < v40)
      {
        v42 = v36;
        if (v33 < a2 || a3 >= a2)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v48;
          a1 = v49;
          v30 = v50;
          v29 = v42;
        }

        else
        {
          v44 = v48;
          a1 = v49;
          v31 = v48;
          v13 = v33 == a2;
          v30 = v50;
          v45 = v51;
          a2 = v51;
          v29 = v42;
          if (!v13)
          {
            swift_arrayInitWithTakeBackToFront();
            v29 = v42;
            a2 = v45;
            v31 = v44;
          }
        }

        goto LABEL_36;
      }

      if (v33 < v36 || a3 >= v36)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 += v30;
        v29 = v34;
        v31 = v34;
        a1 = v49;
        v30 = v50;
        v32 = v51;
      }

      else
      {
        v31 = v34;
        v13 = v36 == v33;
        v33 += v30;
        v29 = v34;
        a1 = v49;
        v30 = v50;
        v32 = v51;
        if (!v13)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = a3;
          v29 = v34;
          v31 = v34;
        }
      }
    }

    v59 = a2;
    v57 = v47;
  }

  else
  {
    v18 = v56;
    sub_23126F698(a1, (a2 - a1) / v12, v56);
    v51 = a3;
    v52 = v18 + v16 * v12;
    v57 = v52;
    while (v56 < v52 && a2 < a3)
    {
      v20 = v54;
      sub_231311704(a2, v54, &qword_27DD434C0, &unk_23136CA00);
      v21 = a2;
      v22 = v55;
      sub_231311704(v56, v55, &qword_27DD434C0, &unk_23136CA00);
      v23 = sub_2313672C0();
      v24 = sub_2313672C0();
      sub_231228E9C(v22, &qword_27DD434C0, &unk_23136CA00);
      sub_231228E9C(v20, &qword_27DD434C0, &unk_23136CA00);
      if (v23 >= v24)
      {
        v26 = v56 + v12;
        if (a1 < v56 || a1 >= v26)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v51;
          a2 = v21;
        }

        else
        {
          a3 = v51;
          a2 = v21;
          if (a1 != v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v58 = v26;
        v56 = v26;
      }

      else
      {
        a2 = v21 + v12;
        if (a1 < v21 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v51;
        }

        else
        {
          a3 = v51;
          if (a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      a1 += v12;
      v59 = a1;
    }
  }

LABEL_58:
  sub_23120C4A4(&v59, &v58, &v57);
}

uint64_t sub_231311624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231311694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_231311704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_231311760(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_18_21()
{
  *(v2 + 16) = v0;
  v5 = v2 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
}

void OUTLINED_FUNCTION_26_18(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  v18 = v17 + a1;
  *v18 = a17;
  *(v18 + 8) = a16;
}

void OUTLINED_FUNCTION_38_11()
{
  *(v1 - 160) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t sub_231311890()
{
  v0 = sub_231369FD0();
  v2 = v1;
  if (v0 == sub_231369FD0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_48_10();
  }

  return v5 & 1;
}

uint64_t sub_231311914(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6150646E6F636573;
  }

  else
  {
    v3 = 0x7361507473726966;
  }

  if (v2)
  {
    v4 = 0xE900000000000073;
  }

  else
  {
    v4 = 0xEA00000000007373;
  }

  if (a2)
  {
    v5 = 0x6150646E6F636573;
  }

  else
  {
    v5 = 0x7361507473726966;
  }

  if (a2)
  {
    v6 = 0xEA00000000007373;
  }

  else
  {
    v6 = 0xE900000000000073;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_48_10();
  }

  return v8 & 1;
}

uint64_t sub_2313119F8(unsigned __int8 a1, char a2)
{
  v2 = 0xD00000000000001FLL;
  v3 = &unk_23137A540;
  v4 = &unk_23137A540;
  v5 = a1;
  v6 = 0xD00000000000001FLL;
  switch(v5)
  {
    case 1:
      v4 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_A";
      break;
    case 2:
      v4 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
      v6 = 0xD000000000000019;
      break;
    case 3:
      v4 = "SIRI_SUGGESTIONS_PLATFORM";
      v6 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_A";
      break;
    case 2:
      v3 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
      v2 = 0xD000000000000019;
      break;
    case 3:
      v3 = "SIRI_SUGGESTIONS_PLATFORM";
      v2 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_48_10();
  }

  return v8 & 1;
}

uint64_t sub_231311B0C(unsigned __int8 a1, char a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x4C65727574616566;
    }

    else
    {
      v3 = 0xD000000000000017;
    }

    if (v2 == 1)
    {
      v4 = 0xEE00676E6967676FLL;
    }

    else
    {
      v4 = 0x800000023137BDB0;
    }
  }

  else
  {
    v4 = 0x800000023137BD80;
    v3 = 0xD000000000000019;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x4C65727574616566;
    }

    else
    {
      v5 = 0xD000000000000017;
    }

    if (a2 == 1)
    {
      v6 = 0xEE00676E6967676FLL;
    }

    else
    {
      v6 = 0x800000023137BDB0;
    }
  }

  else
  {
    v6 = 0x800000023137BD80;
    v5 = 0xD000000000000019;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_48_10();
  }

  return v8 & 1;
}

uint64_t sub_231311BF0(char a1, char a2)
{
  v3 = sub_23133F8E8(a1);
  v5 = v4;
  if (v3 == sub_23133F8E8(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_48_10();
  }

  return v8 & 1;
}

uint64_t sub_231311C68(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6C61697274;
  }

  else
  {
    v3 = 0x43746C7561666564;
  }

  if (v2)
  {
    v4 = 0xED00006769666E6FLL;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x6C61697274;
  }

  else
  {
    v5 = 0x43746C7561666564;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xED00006769666E6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_48_10();
  }

  return v8 & 1;
}

uint64_t sub_231311D4C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_231327268(a4, a5);
  OUTLINED_FUNCTION_90_1();
  sub_23136A140();
  OUTLINED_FUNCTION_90_1();
  sub_23136A140();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_16_24();
  }

  return v8 & 1;
}

uint64_t sub_231311E10(unsigned __int8 a1, char a2)
{
  v2 = 0xED0000676E6F7257;
  v3 = 0x6B6361626C6C6166;
  v4 = a1;
  v5 = 0x6B6361626C6C6166;
  v6 = 0xED0000676E6F7257;
  switch(v4)
  {
    case 1:
      v7 = "trialConfigFilePathError";
      goto LABEL_6;
    case 2:
      v7 = "trialOwnerConfigFilePathError";
LABEL_6:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD00000000000001DLL;
      break;
    case 3:
      break;
    case 4:
      v6 = 0x800000023137A630;
      v5 = 0xD000000000000014;
      break;
    default:
      v6 = 0x800000023137A5C0;
      v5 = 0xD000000000000018;
      break;
  }

  switch(a2)
  {
    case 1:
      v8 = "trialConfigFilePathError";
      goto LABEL_12;
    case 2:
      v8 = "trialOwnerConfigFilePathError";
LABEL_12:
      v2 = v8 | 0x8000000000000000;
      v3 = 0xD00000000000001DLL;
      break;
    case 3:
      break;
    case 4:
      v2 = 0x800000023137A630;
      v3 = 0xD000000000000014;
      break;
    default:
      v2 = 0x800000023137A5C0;
      v3 = 0xD000000000000018;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_16_24();
  }

  return v10 & 1;
}

uint64_t sub_231311F6C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x64656C6261736964;
  }

  else
  {
    v3 = 0x64656C62616E65;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x64656C6261736964;
  }

  else
  {
    v5 = 0x64656C62616E65;
  }

  if (a2)
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
    v8 = OUTLINED_FUNCTION_48_10();
  }

  return v8 & 1;
}

uint64_t sub_231312000(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000706C65;
  v3 = 0x4874736567677573;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x536874695777656ELL;
    }

    else
    {
      v5 = 0x4F6874695777656ELL;
    }

    if (v4 == 1)
    {
      v6 = 0xEB00000000697269;
    }

    else
    {
      v6 = 0xE900000000000053;
    }
  }

  else
  {
    v5 = 0x4874736567677573;
    v6 = 0xEB00000000706C65;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x536874695777656ELL;
    }

    else
    {
      v3 = 0x4F6874695777656ELL;
    }

    if (a2 == 1)
    {
      v2 = 0xEB00000000697269;
    }

    else
    {
      v2 = 0xE900000000000053;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_16_24();
  }

  return v8 & 1;
}

uint64_t sub_231312304()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_57_1(&unk_2313744C8);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_56_8(v2);
  OUTLINED_FUNCTION_61_6();

  return v4();
}

uint64_t sub_2313123A8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v5 = *(v4 + 16);
  *v3 = *v1;
  *(v2 + 24) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_56_0();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

void sub_2313124C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_50_9();
  v13 = 0;
  v14 = *(v12 + 24);
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
LABEL_2:
  v17 = (v14 + 40 + 24 * v13);
  while (v15 != v13)
  {
    if (v13 >= *(v14 + 16))
    {
      __break(1u);
      return;
    }

    ++v13;
    v18 = v17 + 3;
    v19 = *v17;
    v17 += 3;
    if (v19)
    {
      a9 = *(v18 - 4);
      v20 = *(v18 - 2);
      sub_231369EE0();
      sub_231369EE0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_18();
        sub_23126DF88();
        v16 = v23;
      }

      v21 = *(v16 + 16);
      if (v21 >= *(v16 + 24) >> 1)
      {
        OUTLINED_FUNCTION_44_8();
        sub_23126DF88();
        v16 = v24;
      }

      *(v16 + 16) = v21 + 1;
      v22 = (v16 + 24 * v21);
      v22[4] = a9;
      v22[5] = v19;
      v22[6] = v20;
      goto LABEL_2;
    }
  }

  v25 = *(v12 + 24);

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40();

  v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_2313125F8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_57_1(&unk_2313744D0);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_56_8(v2);
  OUTLINED_FUNCTION_61_6();

  return v4();
}

uint64_t sub_23131269C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v5 = *(v4 + 64);
  *v3 = *v1;
  *(v2 + 72) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_56_0();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

void sub_2313127BC()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    v4 = v1 + 32;
    do
    {
      sub_23123EA8C(v4, v0 + 16, &qword_27DD43FA0, &qword_231370E30);
      if (*(v0 + 40))
      {
        v12 = *(v0 + 16);
        v13 = *(v0 + 32);
        v14 = *(v0 + 48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_4_18();
          sub_23126E4AC();
          v3 = v7;
        }

        v5 = *(v3 + 16);
        if (v5 >= *(v3 + 24) >> 1)
        {
          OUTLINED_FUNCTION_44_8();
          sub_23126E4AC();
          v3 = v8;
        }

        *(v3 + 16) = v5 + 1;
        v6 = (v3 + 48 * v5);
        v6[3] = v13;
        v6[4] = v14;
        v6[2] = v12;
      }

      else
      {
        sub_2311D1F18(v0 + 16, &qword_27DD43FA0, &qword_231370E30);
      }

      v4 += 48;
      --v2;
    }

    while (v2);
    v9 = *(v0 + 72);
  }

  else
  {
  }

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_23131291C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DA8, &qword_231370E90) - 8);
  v0[2] = v1;
  v2 = *(v1 + 64) + 15;
  v0[3] = swift_task_alloc();
  v3 = sub_231367120();
  v0[4] = v3;
  v4 = *(v3 - 8);
  v0[5] = v4;
  v5 = *(v4 + 64) + 15;
  v0[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_231312A9C;

  return sub_2312AB934();
}

uint64_t sub_231312A9C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  *v4 = *v1;
  v3[8] = v8;

  if (v0)
  {
    v9 = v3[6];
    v10 = v3[3];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_231312BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_50_9();
  v13 = v12[8];
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v12[2];
    v16 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);
    a9 = v12[5];
    v18 = (a9 + 32);
    v19 = MEMORY[0x277D84F90];
    do
    {
      v21 = v12[3];
      v20 = v12[4];
      v22 = OUTLINED_FUNCTION_69_7();
      sub_23123EA8C(v22, v23, &qword_27DD43DA8, &qword_231370E90);
      OUTLINED_FUNCTION_19_13(v21, 1, v20);
      if (v24)
      {
        sub_2311D1F18(v12[3], &qword_27DD43DA8, &qword_231370E90);
      }

      else
      {
        v25 = *v18;
        (*v18)(v12[6], v12[3], v12[4]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = OUTLINED_FUNCTION_4_18();
          sub_23126F2EC(v33, v34, v35, v36);
          v19 = v37;
        }

        v27 = *(v19 + 16);
        if (v27 >= *(v19 + 24) >> 1)
        {
          OUTLINED_FUNCTION_44_8();
          sub_23126F2EC(v38, v39, v40, v41);
          v19 = v42;
        }

        v28 = v12[6];
        v29 = v12[4];
        *(v19 + 16) = v27 + 1;
        v30 = *(a9 + 80);
        OUTLINED_FUNCTION_35_0();
        v25(v19 + v31 + *(v32 + 72) * v27);
      }

      v16 += v17;
      --v14;
    }

    while (v14);
    v43 = v12[8];
  }

  else
  {
  }

  v44 = v12[6];
  v45 = v12[3];

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40();

  return v48(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
}

uint64_t sub_231312DA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445F8, qword_2313749E0);
    v3 = sub_23136A790();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_231322CAC(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_231312E38(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E6780(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_231323044(v6);
  *a1 = v3;
}

uint64_t sub_231312F04()
{
  v0 = sub_231366690();
  v1 = OUTLINED_FUNCTION_0_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_22();
  v8 = v6 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v10);
  sub_231366620();
  v13 = *(v3 + 16);
  v14 = OUTLINED_FUNCTION_35_5();
  v13(v14);
  v15 = type metadata accessor for JsonSerializer();
  OUTLINED_FUNCTION_33_16();
  v16 = swift_allocObject();
  v28 = v15;
  v29 = &protocol witness table for JsonSerializer;
  *&v27 = v16;
  (v13)(v8, v12, v0);
  v17 = type metadata accessor for FileBasedConfigBackingStore();
  OUTLINED_FUNCTION_10_2(v17);
  v18 = swift_allocObject();
  (*(v3 + 32))(v18 + OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation, v8, v0);
  v25 = v17;
  v26 = sub_231327268(&qword_280F85B48, type metadata accessor for FileBasedConfigBackingStore);
  *&v24 = v18;
  v19 = *(v3 + 8);
  v19(v12, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A30, &unk_231377838);
  inited = swift_initStackObject();
  sub_2311D38A8(&v24, inited + 16);
  sub_2311D38A8(&v27, inited + 56);
  sub_23127E82C();
  v21 = OUTLINED_FUNCTION_90_1();
  (v19)(v21);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((inited + 16));
  return __swift_destroy_boxed_opaque_existential_1Tm((inited + 56));
}

uint64_t DefaultSuggestionServiceFactory.create(refreshableService:)()
{
  OUTLINED_FUNCTION_8();
  v1[1260] = v0;
  v1[1259] = v2;
  v1[1258] = v3;
  v1[1257] = v4;
  v1[1261] = *v0;
  v5 = sub_231368D70();
  v1[1262] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[1263] = v6;
  v8 = *(v7 + 64);
  v1[1264] = OUTLINED_FUNCTION_67();
  v1[1265] = swift_task_alloc();
  v1[1266] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44108, &unk_231373A40);
  OUTLINED_FUNCTION_40_0(v9);
  v11 = *(v10 + 64);
  v1[1267] = OUTLINED_FUNCTION_67();
  v1[1268] = swift_task_alloc();
  v1[1269] = swift_task_alloc();
  v12 = sub_231366690();
  v1[1270] = v12;
  OUTLINED_FUNCTION_0(v12);
  v1[1271] = v13;
  v15 = *(v14 + 64);
  v1[1272] = OUTLINED_FUNCTION_67();
  v1[1273] = swift_task_alloc();
  v16 = sub_2313698C0();
  v1[1274] = v16;
  OUTLINED_FUNCTION_0(v16);
  v1[1275] = v17;
  v19 = *(v18 + 64);
  v1[1276] = OUTLINED_FUNCTION_67();
  v1[1277] = swift_task_alloc();
  v1[1278] = swift_task_alloc();
  v1[1279] = swift_task_alloc();
  v1[1280] = swift_task_alloc();
  v1[1281] = swift_task_alloc();
  v1[1282] = swift_task_alloc();
  v1[1283] = swift_task_alloc();
  v1[1284] = swift_task_alloc();
  v1[1285] = swift_task_alloc();
  v1[1286] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_2313133D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_50_9();
  v13 = v12;
  v14 = *(v12 + 10080);
  v15 = *(v14 + 24);
  *(v12 + 10296) = v15;
  sub_2311CF388(v15 + 56, v12 + 9816);
  v16 = *(v12 + 9848);
  __swift_project_boxed_opaque_existential_1(v13 + 1227, v13[1230]);
  v17 = *(v16 + 8);
  v18 = OUTLINED_FUNCTION_28_0();
  *(v12 + 10304) = v19(v18);
  *(v12 + 10312) = v20;
  __swift_destroy_boxed_opaque_existential_1Tm((v12 + 9816));
  if (*(v14 + 16) == 1)
  {
    sub_2311CF388(v15 + 16, v12 + 8896);
    v21 = *(v12 + 8928);
    __swift_project_boxed_opaque_existential_1((v12 + 8896), *(v12 + 8920));
    v22 = *(v21 + 16);
    v23 = OUTLINED_FUNCTION_71();
    v24(v23);
    memcpy((v12 + 440), __src, 0x1A8uLL);
    __swift_destroy_boxed_opaque_existential_1Tm((v12 + 8896));
    sub_2311CF388(v15 + 136, v12 + 9576);
    v30 = *(v12 + 9608);
    __swift_project_boxed_opaque_existential_1((v12 + 9576), *(v12 + 9600));
    sub_231369320();
    (*(v30 + 8))();

    sub_2311D38A8((v12 + 9496), v12 + 9736);
    __swift_destroy_boxed_opaque_existential_1Tm((v12 + 9576));
    sub_2311CF388(v15 + 96, v12 + 9376);
    v53 = *(v12 + 9408);
    __swift_project_boxed_opaque_existential_1((v12 + 9376), *(v12 + 9400));
    v54 = *(v53 + 8);
    v55 = OUTLINED_FUNCTION_71();
    v56(v55);
    v57 = *(v12 + 10288);
    sub_2311D38A8((v12 + 9256), v12 + 9416);
    __swift_destroy_boxed_opaque_existential_1Tm((v12 + 9376));
    v131 = *(v12 + 624);
    *(v12 + 10320) = v131;
    v130 = *(v12 + 632);
    *(v12 + 10328) = v130;
    sub_231369100();
    sub_2311CF388(v12 + 9416, v12 + 9176);
    v58 = sub_2313698A0();
    v59 = v12;
    v60 = sub_23136A390();
    v61 = os_log_type_enabled(v58, v60);
    v62 = *(v12 + 10288);
    v63 = *(v12 + 10200);
    v64 = v59[1274];
    if (v61)
    {
      OUTLINED_FUNCTION_17();
      v132 = v64;
      v65 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_16();
      v66 = swift_slowAlloc();
      __src[0] = v66;
      *v65 = 136315138;
      v67 = v59[1150];
      v68 = v59[1151];
      __swift_project_boxed_opaque_existential_1(v59 + 1147, v67);
      v128 = v62;
      (*(v68 + 16))(v67, v68);
      v69 = MEMORY[0x23192A860]();
      v71 = v70;

      __swift_destroy_boxed_opaque_existential_1Tm(v59 + 1147);
      v72 = sub_2311CFD58(v69, v71, __src);

      *(v65 + 4) = v72;
      _os_log_impl(&dword_2311CB000, v58, v60, "available engagement estimator models: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();

      v73 = *(v63 + 8);
      v73(v128, v132);
    }

    else
    {

      v73 = *(v63 + 8);
      v74 = OUTLINED_FUNCTION_28();
      (v73)(v74);
      __swift_destroy_boxed_opaque_existential_1Tm(v59 + 1147);
    }

    v13 = v59;
    v75 = v59[1285];
    sub_231369100();
    sub_231369EE0();
    v76 = sub_2313698A0();
    v77 = sub_23136A390();

    v78 = OUTLINED_FUNCTION_132();
    v79 = v59[1285];
    v80 = v59[1275];
    v81 = v59[1274];
    v133 = v73;
    if (v78)
    {
      OUTLINED_FUNCTION_17();
      v129 = v79;
      v82 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_16();
      v83 = swift_slowAlloc();
      __src[0] = v83;
      *v82 = 136315138;
      v84 = OUTLINED_FUNCTION_69_7();
      *(v82 + 4) = sub_2311CFD58(v84, v85, v86);
      OUTLINED_FUNCTION_47_9(&dword_2311CB000, v87, v77, "Loading smart suppression model %s in repository");
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      v73 = v133;
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();

      v88 = v129;
    }

    else
    {

      v88 = v79;
    }

    v73(v88, v81);
    v89 = v59[1181];
    __swift_project_boxed_opaque_existential_1(v59 + 1177, v59[1180]);
    v90 = *(v89 + 8);
    v91 = OUTLINED_FUNCTION_69_7();
    v93 = v92(v91);
    v59[1292] = v93;
    if (v93)
    {
      v94 = v59[1284];
      sub_231369100();
      sub_231369EE0();
      v95 = sub_2313698A0();
      v96 = sub_23136A390();

      v97 = os_log_type_enabled(v95, v96);
      v98 = v59[1284];
      v99 = v59[1275];
      v100 = v13[1274];
      if (v97)
      {
        OUTLINED_FUNCTION_17();
        v101 = swift_slowAlloc();
        OUTLINED_FUNCTION_30_16();
        v102 = v13;
        v103 = swift_slowAlloc();
        __src[0] = v103;
        *v101 = 136315138;
        *(v101 + 4) = sub_2311CFD58(v131, v130, __src);
        OUTLINED_FUNCTION_47_9(&dword_2311CB000, v104, v96, "Successfully loaded smart suppression model %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v103);
        v13 = v102;
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
      }

      v133(v98, v100);
      sub_2311CF388(v15 + 176, (v13 + 1142));
      v105 = v13[1145];
      v106 = v13[1146];
      __swift_project_boxed_opaque_existential_1(v13 + 1142, v105);
      (*(v106 + 8))(v105, v106);
      v13[1293] = 0;
      *(v13 + 647) = *(v13 + 1249);
      __swift_destroy_boxed_opaque_existential_1Tm(v13 + 1142);
      type metadata accessor for OwnershipExtractorUtils();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD449E8, &unk_231377338);
      OUTLINED_FUNCTION_55_10();
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_23136C1C0;
      v121 = type metadata accessor for InteractionOwnershipExtractor();
      OUTLINED_FUNCTION_33_16();
      v122 = swift_allocObject();
      *(v120 + 56) = v121;
      *(v120 + 64) = &protocol witness table for InteractionOwnershipExtractor;
      *(v120 + 32) = v122;
      valid = type metadata accessor for ValidOpenAppsOwnershipExtractor();
      OUTLINED_FUNCTION_33_16();
      v124 = swift_allocObject();
      *(v120 + 96) = valid;
      *(v120 + 104) = &protocol witness table for ValidOpenAppsOwnershipExtractor;
      *(v120 + 72) = v124;
      sub_2312B0108(v120, v13 + 1202);

      type metadata accessor for SignalExtractorProviderFactory();
      OUTLINED_FUNCTION_18_18();
      v125 = swift_allocObject();
      v13[1296] = v125;
      memcpy((v125 + 16), v13 + 55, 0x1A8uLL);
      sub_231286BB0((v13 + 55), (v13 + 1009));
      v126 = swift_task_alloc();
      v13[1297] = v126;
      *v126 = v13;
      v126[1] = sub_2313142F0;
      OUTLINED_FUNCTION_40();

      return sub_2312B9E74();
    }

    v107 = v59[1281];
    sub_2311F07B0((v59 + 55));
    sub_231369100();
    v108 = sub_2313698A0();
    v109 = sub_23136A3B0();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = OUTLINED_FUNCTION_63();
      *v110 = 0;
      _os_log_impl(&dword_2311CB000, v108, v109, "unable to find smartSuppression model in repository", v110, 2u);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    v111 = v59[1281];
    v112 = v59[1275];
    v113 = v59[1274];
    v114 = v59[1257];

    v115 = OUTLINED_FUNCTION_26_1();
    (v73)(v115);
    sub_231326378();
    OUTLINED_FUNCTION_108_0();
    v116 = swift_allocError();
    *v117 = 2;
    v118 = type metadata accessor for NoOpSuggestionService();
    OUTLINED_FUNCTION_54();
    v119 = swift_allocObject();
    *(v119 + 16) = v116;
    v114[3] = v118;
    v114[4] = &off_2845F6BF8;
    swift_unknownObjectRelease();
    *v114 = v119;
    __swift_destroy_boxed_opaque_existential_1Tm(v13 + 1217);
    __swift_destroy_boxed_opaque_existential_1Tm(v13 + 1177);
  }

  else
  {
    v25 = *(v12 + 10056);
    sub_231326300();
    OUTLINED_FUNCTION_108_0();
    v26 = swift_allocError();
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v27 + 16) = 2;
    v28 = type metadata accessor for NoOpSuggestionService();
    OUTLINED_FUNCTION_54();
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    v25[3] = v28;
    v25[4] = &off_2845F6BF8;
    swift_unknownObjectRelease();
    *v25 = v29;
  }

  v31 = v13[1286];
  v32 = v13[1285];
  v33 = v13[1284];
  v34 = v13;
  v35 = v13[1283];
  v36 = v34[1282];
  v37 = v34[1281];
  v38 = v34[1280];
  v39 = v34[1279];
  v40 = v34[1278];
  v41 = v34[1277];
  v42 = v34[1276];
  v43 = v34[1273];
  OUTLINED_FUNCTION_44_11();

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_40();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
}

uint64_t sub_2313142F0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  OUTLINED_FUNCTION_21_13();
  v5 = *(v4 + 10376);
  v7 = *(v6 + 10368);
  v8 = *v0;
  OUTLINED_FUNCTION_2();
  *v9 = v8;
  *(v2 + 10384) = v10;

  swift_setDeallocating();
  memcpy((v2 + 7224), (v7 + 16), 0x1A8uLL);
  sub_2311F07B0(v2 + 7224);
  OUTLINED_FUNCTION_18_18();
  swift_deallocClassInstance();
  v11 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23131441C()
{
  v1 = *(v0 + 10160);
  v2 = *(v0 + 10144);
  v3 = *(v0 + 10080);
  v4 = OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_featureEnabledProvider;
  *(v0 + 10392) = OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_featureEnabledProvider;
  sub_2311CF388(v3 + v4, v0 + 9896);
  *(v0 + 10400) = type metadata accessor for DefaultDeliveryVehicleProvider();
  OUTLINED_FUNCTION_21_1();
  v5 = swift_allocObject();
  *(v0 + 10408) = v5;
  sub_2311D38A8((v0 + 9896), v5 + 16);
  v6 = OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_clock;
  *(v0 + 10416) = OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_clock;
  sub_2311CF388(v3 + v6, v0 + 8856);
  type metadata accessor for DisabledMotionManager();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = type metadata accessor for DefaultSystemEnvironmentService();
  v9 = swift_allocObject();
  v10 = sub_231327268(&qword_280F82118, type metadata accessor for DisabledMotionManager);
  v9[2] = 0x4000000000000000;
  v9[3] = v7;
  v9[4] = v10;
  sub_2311D38A8((v0 + 8856), (v9 + 5));
  *(v0 + 9800) = v8;
  *(v0 + 9808) = &protocol witness table for DefaultSystemEnvironmentService;
  *(v0 + 9776) = v9;
  type metadata accessor for DefaultEnvironmentSnapshotService();
  OUTLINED_FUNCTION_21_1();
  v11 = swift_allocObject();
  *(v0 + 10424) = v11;
  sub_2311D38A8((v0 + 9776), v11 + 16);
  sub_23123EA8C(v3 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_overrideCatTemplateDirectory, v2, &qword_27DD44108, &unk_231373A40);
  v12 = *(v0 + 472);
  v13 = *(v0 + 480);
  *(v0 + 10432) = v12;
  *(v0 + 10440) = v13;
  OUTLINED_FUNCTION_19_13(v2, 1, v1);
  if (v14)
  {
    v15 = *(v0 + 10160);
    v16 = *(v0 + 10152);
    v17 = *(v0 + 10144);
    sub_231369EE0();
    OUTLINED_FUNCTION_28_0();
    sub_231366680();

    OUTLINED_FUNCTION_19_13(v17, 1, v15);
    if (!v14)
    {
      sub_2311D1F18(*(v0 + 10144), &qword_27DD44108, &unk_231373A40);
    }
  }

  else
  {
    (*(*(v0 + 10168) + 32))(*(v0 + 10152), *(v0 + 10144), *(v0 + 10160));
    OUTLINED_FUNCTION_44_8();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }

  v22 = *(v0 + 10152);
  OUTLINED_FUNCTION_19_13(v22, 1, *(v0 + 10160));
  if (v14)
  {
    v23 = *(v0 + 10360);
    v24 = *(v0 + 10352);
    v25 = *(v0 + 10256);

    sub_2311D1F18(v22, &qword_27DD44108, &unk_231373A40);
    sub_231369100();
    sub_231369EE0();
    sub_231286BB0(v0 + 440, v0 + 16);
    sub_231369EE0();
    v26 = sub_2313698A0();
    v46 = sub_23136A3B0();
    sub_2311F07B0(v0 + 440);
    v27 = os_log_type_enabled(v26, v46);
    v28 = *(v0 + 10256);
    v29 = *(v0 + 10200);
    v30 = *(v0 + 10192);
    if (v27)
    {
      OUTLINED_FUNCTION_17();
      v91 = v28;
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_16();
      v3 = swift_slowAlloc();
      *v31 = 136315138;
      v32 = OUTLINED_FUNCTION_28_0();
      v4 = sub_2311CFD58(v32, v33, v34);

      *(v31 + 4) = v4;
      OUTLINED_FUNCTION_37_2(&dword_2311CB000, v35, v36, "Unable to construct template URL from %s and no override is set");
      __swift_destroy_boxed_opaque_existential_1Tm(v3);
      v37 = OUTLINED_FUNCTION_17_19();
      MEMORY[0x23192B930](v37);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();

      (*(v29 + 8))(v91, v30);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
    }

    sub_2311F07B0(v0 + 440);
    sub_231326300();
    OUTLINED_FUNCTION_108_0();
    v52 = swift_allocError();
    *v55 = v12;
    *(v55 + 8) = v13;
    *(v55 + 16) = 1;
    swift_willThrow();
    goto LABEL_13;
  }

  v90 = v4;
  v92 = v3;
  v38 = *(v0 + 10344);
  v39 = *(v0 + 10184);
  v40 = *(v0 + 10176);
  v41 = *(v0 + 10168);
  v4 = *(v0 + 10080);
  v42 = *(v41 + 32);
  v43 = OUTLINED_FUNCTION_115_0();
  v44(v43);
  v45 = type metadata accessor for SimpleDialogService();
  OUTLINED_FUNCTION_33_16();
  v46 = swift_allocObject();
  v47 = type metadata accessor for CATDialogService();
  v48 = *(v41 + 16);
  v3 = (v41 + 16);
  OUTLINED_FUNCTION_61_6();
  v49();
  CATDialogService.__allocating_init(templateDirectory:)(v40);
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for DynamicDialogService();
  v50 = OUTLINED_FUNCTION_55_6();
  *(v0 + 10448) = v50;
  v50[5] = v45;
  v50[6] = sub_231327268(qword_280F82A30, type metadata accessor for SimpleDialogService);
  v50[2] = v46;
  v50[10] = v47;
  v50[11] = sub_231327268(&qword_280F841D8, type metadata accessor for CATDialogService);
  v50[7] = v47;
  v51 = *(v4 + 40);
  (*(v4 + 32))();
  *(v0 + 10456) = v38;
  if (v38)
  {
    v52 = v38;
    v53 = *(v0 + 10360);
    v54 = *(v0 + 10352);
    (*(*(v0 + 10168) + 8))(*(v0 + 10184), *(v0 + 10160));

    sub_2311F07B0(v0 + 440);
LABEL_13:
    v56 = *(v0 + 10208);
    sub_231369100();
    v57 = v52;
    v58 = sub_2313698A0();
    v59 = sub_23136A3B0();

    if (os_log_type_enabled(v58, v59))
    {
      OUTLINED_FUNCTION_17();
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v60 = 138412290;
      v62 = v52;
      v63 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 4) = v63;
      *v61 = v63;
      OUTLINED_FUNCTION_0_26();
      _os_log_impl(v64, v65, v66, v67, v68, 0xCu);
      sub_2311D1F18(v61, &qword_27DD433B0, &unk_23136EDC0);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    v69 = *(v0 + 10424);
    OUTLINED_FUNCTION_58_8();
    v70 = *(v0 + 10056);

    (*(v46 + 8))(v3, v4);
    v71 = type metadata accessor for NoOpSuggestionService();
    OUTLINED_FUNCTION_54();
    v72 = swift_allocObject();
    *(v72 + 16) = v52;
    v70[3] = v71;
    v70[4] = &off_2845F6BF8;
    v73 = v52;

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    *v70 = v72;

    OUTLINED_FUNCTION_39_13();
    OUTLINED_FUNCTION_2_27();
    OUTLINED_FUNCTION_53_11();

    OUTLINED_FUNCTION_56_0();

    return v74();
  }

  v76 = *(v0 + 10296);
  v77 = *(v0 + 10080);
  *(v0 + 10464) = *(v0 + 10008);
  sub_231367CA0();
  OUTLINED_FUNCTION_10_11();

  v78 = sub_231367C90();
  *(v0 + 10472) = v78;
  v79 = (v77 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_featureServiceFactory);
  v80 = *(v77 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_featureServiceFactory + 24);
  v81 = v79[4];
  __swift_project_boxed_opaque_existential_1(v79, v80);
  v82 = v76[5];
  v83 = v76[6];
  __swift_project_boxed_opaque_existential_1(v76 + 2, v82);
  *(v0 + 8960) = v82;
  *(v0 + 8968) = *(v83 + 8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 8936));
  OUTLINED_FUNCTION_26_0(v82);
  (*(v84 + 16))();
  *(v0 + 8976) = 0u;
  *(v0 + 8992) = 0u;
  *(v0 + 9008) = 0;
  v85 = *(v81 + 8);
  v89 = (v85 + *v85);
  v86 = v85[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 10480) = v87;
  *v87 = v88;
  v87[1] = sub_231314D4C;

  return v89(v0 + 9936, v92 + v90, v0 + 8936, v0 + 8976, v78, v80, v81);
}

uint64_t sub_231314D4C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  OUTLINED_FUNCTION_21_13();
  v5 = *(v4 + 10480);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  sub_2311D1F18(v2 + 8976, &qword_27DD449F0, &qword_231377348);
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 8936));
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231314E54()
{
  OUTLINED_FUNCTION_50_9();
  v1 = v0[1302];
  v2 = v0[1299];
  v3 = v0[1260];
  OUTLINED_FUNCTION_131_0(v0 + 850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44030, &qword_231377350);
  v4 = swift_allocObject();
  v0[1311] = v4;
  *(v4 + 16) = xmmword_23136B670;
  v5 = v0[1245];
  v6 = v0[1246];
  __swift_project_boxed_opaque_existential_1(v0 + 1242, v5);
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v6 + 16);
  __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  OUTLINED_FUNCTION_26_0(v5);
  (*(v7 + 16))();
  sub_231286BB0((v0 + 55), (v0 + 797));
  v8 = swift_task_alloc();
  v0[1312] = v8;
  *v8 = v0;
  v8[1] = sub_231314FD8;
  v9 = v0[1289];
  v10 = v0[1288];
  v11 = v0[1260];
  v12 = v0[1259];
  v23 = v0[1309];
  OUTLINED_FUNCTION_38_4(v0[1258]);
  OUTLINED_FUNCTION_40();

  return sub_23131F9E8(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_231314FD8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  OUTLINED_FUNCTION_21_13();
  v5 = *(v4 + 10496);
  v7 = *(v6 + 10488);
  v8 = *v0;
  OUTLINED_FUNCTION_2();
  *v9 = v8;

  swift_setDeallocating();
  sub_231322BEC(&qword_27DD43DE8, &unk_231370EE0);
  memcpy((v2 + 7648), (v2 + 6800), 0x1A8uLL);
  sub_2311F07B0(v2 + 7648);
  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231315108()
{
  v88 = v0;
  v1 = *(v0 + 10456);
  v2 = *(v0 + 10080);
  v3 = *(v2 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_dataServiceFactory + 24);
  v4 = *(v2 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_dataServiceFactory + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_dataServiceFactory), v3);
  OUTLINED_FUNCTION_131_0((v0 + 5952));
  v5 = *(v4 + 8);
  sub_231286BB0(v0 + 440, v0 + 5528);
  v5(sub_2313263CC, v2, v0 + 9936, v0 + 5952, v3, v4);
  if (v1)
  {
    v6 = *(v0 + 10472);
    v7 = *(v0 + 10464);
    v8 = *(v0 + 10448);
    v9 = *(v0 + 10360);
    v10 = *(v0 + 10352);
    v11 = *(v0 + 10184);
    v12 = *(v0 + 10168);
    v13 = *(v0 + 10160);
    v14 = *(v0 + 10080);

    OUTLINED_FUNCTION_124_0();
    sub_2311F07B0(v0 + 5104);
    v15 = *(v12 + 8);
    v16 = OUTLINED_FUNCTION_40_8();
    v21(v16, v20);
    sub_2311F07B0(v0 + 440);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9936));
    v22 = *(v0 + 10208);
    sub_231369100();
    v23 = v1;
    v24 = sub_2313698A0();
    v25 = sub_23136A3B0();

    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_17();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v1;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      OUTLINED_FUNCTION_47_9(&dword_2311CB000, v31, v25, "error creating suggestion service api %@");
      sub_2311D1F18(v28, &qword_27DD433B0, &unk_23136EDC0);
      v32 = OUTLINED_FUNCTION_12_22();
      MEMORY[0x23192B930](v32);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    v33 = *(v0 + 10424);
    v34 = *(v0 + 10384);
    v82 = *(v0 + 10408);
    v85 = *(v0 + 10336);
    v35 = *(v0 + 10304);
    v36 = *(v0 + 10208);
    v37 = *(v0 + 10200);
    v38 = *(v0 + 10192);
    v39 = *(v0 + 10056);

    v40 = *(v37 + 8);
    v41 = OUTLINED_FUNCTION_111_0();
    v42(v41);
    v43 = type metadata accessor for NoOpSuggestionService();
    OUTLINED_FUNCTION_54();
    v44 = swift_allocObject();
    *(v44 + 16) = v1;
    v39[3] = v43;
    v39[4] = &off_2845F6BF8;
    v45 = v1;

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    *v39 = v44;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9616));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9736));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9416));
    OUTLINED_FUNCTION_2_27();
    OUTLINED_FUNCTION_44_11();

    OUTLINED_FUNCTION_56_0();

    return v46();
  }

  else
  {
    v17 = *(v0 + 10464);
    v18 = *(v0 + 10416);
    v19 = *(v0 + 10080);
    OUTLINED_FUNCTION_124_0();
    sub_2311F07B0(v0 + 4680);
    type metadata accessor for ConfigOverrideDataService();
    v87[0] = v17;
    sub_23124371C(v0 + 9096, v87, sub_2312436D0, 0, (v0 + 9296));
    OUTLINED_FUNCTION_131_0((v0 + 4256));
    sub_231286BB0(v0 + 440, v0 + 3832);
    sub_231321F08((v0 + 4256), v19 + v18, v0 + 9736, (v0 + 9416), (v0 + 9336));
    v84 = *(v0 + 10160);
    v47 = *(v0 + 10464);
    v48 = *(v0 + 10440);
    v80 = *(v0 + 10448);
    v83 = *(v0 + 10432);
    v49 = *(v0 + 10336);
    v50 = *(v0 + 10328);
    v51 = *(v0 + 10320);
    v52 = *(v0 + 10136);
    v53 = *(v0 + 10080);
    memcpy((v0 + 2984), (v0 + 4256), 0x1A8uLL);
    sub_2311F07B0(v0 + 2984);
    sub_231369820();
    swift_allocObject();
    v79 = sub_231369800();
    *(v0 + 10504) = v79;
    sub_2311CF388(v53 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_pipelineFactory, v0 + 9536);
    v77 = *(v0 + 9568);
    v78 = *(v0 + 9560);
    __swift_project_boxed_opaque_existential_1((v0 + 9536), v78);
    OUTLINED_FUNCTION_131_0((v0 + 2560));
    memcpy((v0 + 8496), (v0 + 640), 0x48uLL);
    memcpy((v0 + 8568), (v0 + 640), 0x48uLL);
    *(v0 + 10024) = v47;
    sub_231286BB0(v0 + 440, v0 + 2136);
    sub_231369EE0();
    sub_231286BB0(v0 + 440, v0 + 1712);
    sub_231369EE0();
    swift_unknownObjectRetain();
    sub_2311E6694(v0 + 8496, v0 + 8784);

    sub_231366680();

    result = OUTLINED_FUNCTION_19_13(v52, 1, v84);
    if (!v54)
    {
      v56 = *(v0 + 10448);
      v57 = *(v0 + 10416);
      v58 = *(v0 + 10408);
      v59 = *(v0 + 10400);
      v60 = *(v0 + 10392);
      v61 = *(v0 + 10136);
      v62 = *(v0 + 10080);
      v86 = *(v0 + 10352);
      sub_2311F07B0(v0 + 440);
      v63 = type metadata accessor for ConfigurablePresentationService();
      OUTLINED_FUNCTION_55_10();
      v64 = swift_allocObject();
      v65 = sub_2313259D8((v0 + 440), v56, v61, v64);
      *(v0 + 9720) = v63;
      *(v0 + 9728) = &protocol witness table for ConfigurablePresentationService;
      *(v0 + 9696) = v65;
      v66 = v62 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_selfLogger;
      *(v0 + 9880) = v59;
      *(v0 + 9888) = &off_2845F5AA8;
      *(v0 + 9856) = v58;
      v67 = v62 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_appUtils;
      *(v0 + 9976) = v86;
      v68 = *(v77 + 8);

      v81 = v68 + *v68;
      v69 = v68[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_14_0();
      *(v0 + 10512) = v70;
      *v70 = v71;
      v70[1] = sub_231315960;
      v72 = *(v0 + 10384);
      v73 = *(v0 + 10312);
      v74 = *(v0 + 10304);
      v75 = *(v0 + 10072);
      v76 = *(v0 + 10064);
      v103 = v77;
      v102 = v78;
      v100 = v0 + 9976;
      v101 = v79;
      v99 = v67;
      v97 = v73;
      v98 = v0 + 9736;
      v96 = v74;
      v94 = v62 + v57;
      v95 = v0 + 9856;
      v92 = v75;
      v93 = v66;
      v90 = v62 + v60;
      v91 = v76;

      __asm { BRAA            X8, X16 }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_231315960()
{
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 10512);
  *v4 = *v1;
  v3[1315] = v7;
  v3[1316] = v0;

  if (v0)
  {
    v8 = v3[1247];
    v9 = v3[1248];

    memcpy(v3 + 1089, v3 + 1071, 0x48uLL);
    sub_231286838((v3 + 1089));
    memcpy(v3 + 161, v3 + 320, 0x1A8uLL);
    sub_2311F07B0((v3 + 161));
  }

  else
  {
    v10 = v3[1308];
    v11 = v3[1247];
    v12 = v3[1248];

    memcpy(v3 + 1080, v3 + 1071, 0x48uLL);
    sub_231286838((v3 + 1080));
    memcpy(v3 + 108, v3 + 320, 0x1A8uLL);
    sub_2311F07B0((v3 + 108));
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 1232);
    OUTLINED_FUNCTION_72_6(v3 + 1212);
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_55();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231315B28()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[1289];
  v2 = v0[1288];
  OUTLINED_FUNCTION_72_6(v0 + 1192);
  v0[1317] = swift_getObjectType();
  v3 = *(v1 + 16);
  v5 = sub_23136A260();

  return MEMORY[0x2822009F8](sub_231315BB0, v5, v4);
}

uint64_t sub_231315BB0()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[1317];
  v2 = v0[1289];
  v3 = v0[1288];
  v4 = v0[1266];
  sub_2313684C0();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231315C18()
{
  v1 = *(v0 + 10128);
  v2 = *(v0 + 10104);
  (*(v2 + 104))(*(v0 + 10120), *MEMORY[0x277D61198], *(v0 + 10096));
  OUTLINED_FUNCTION_71_6();
  v3 = OUTLINED_FUNCTION_27();
  LOBYTE(v1) = sub_231311D4C(v3, v4, v5, v6, v7);
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_28_0();
  v8(v9);
  v96 = v8;
  if (v1)
  {
    v10 = *(v0 + 10520);
    v71 = *(v0 + 10504);
    v72 = *(v0 + 10472);
    v66 = *(v0 + 10424);
    v73 = *(v0 + 10384);
    v75 = *(v0 + 10408);
    v77 = *(v0 + 10336);
    v79 = *(v0 + 10448);
    v67 = *(v0 + 10304);
    v68 = *(v0 + 10312);
    v92 = *(v0 + 10184);
    v86 = *(v0 + 10168);
    v89 = *(v0 + 10160);
    v81 = *(v0 + 10096);
    v83 = *(v0 + 10128);
    v69 = *(v0 + 10056);
    v70 = *(v0 + 10080);
    v11 = *(v70 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_suggestionsLoggerFactory + 24);
    v12 = *(v70 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_suggestionsLoggerFactory + 32);
    OUTLINED_FUNCTION_3_2((v70 + OBJC_IVAR____TtC15SiriSuggestions31DefaultSuggestionServiceFactory_suggestionsLoggerFactory));
    (*(v12 + 8))(v0 + 9936, v11, v12);
    v13 = *(*(v10 + 16) + 104);
    sub_2311CF388(v0 + 9656, v0 + 9456);
    v14 = sub_2313686F0();
    swift_retain_n();

    v15 = sub_2313686E0();
    *(v0 + 9240) = &type metadata for DefaultTipKitServiceBridge;
    *(v0 + 9248) = &off_2845F3368;
    OUTLINED_FUNCTION_21_1();
    v16 = swift_allocObject();
    *(v0 + 9216) = v16;
    v17 = MEMORY[0x277D60FF0];
    v16[5] = v14;
    v16[6] = v17;
    v16[2] = v15;
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 9216, &type metadata for DefaultTipKitServiceBridge);
    OUTLINED_FUNCTION_21();
    v20 = v19;
    v22 = *(v21 + 64) + 15;
    v23 = swift_task_alloc();
    v24 = *(v20 + 16);
    v24(v23, v18, &type metadata for DefaultTipKitServiceBridge);
    *(v0 + 9080) = &type metadata for DefaultTipKitServiceBridge;
    *(v0 + 9088) = &off_2845F3368;
    OUTLINED_FUNCTION_21_1();
    v25 = swift_allocObject();
    *(v0 + 9056) = v25;
    v26 = *(v23 + 32);
    v27 = *(v23 + 16);
    *(v25 + 16) = *v23;
    *(v25 + 32) = v27;
    *(v25 + 48) = v26;
    type metadata accessor for EngagementService();
    v28 = swift_allocObject();
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 9056, &type metadata for DefaultTipKitServiceBridge);
    v30 = swift_task_alloc();
    v24(v30, v29, &type metadata for DefaultTipKitServiceBridge);
    v28[11] = &type metadata for DefaultTipKitServiceBridge;
    v28[12] = &off_2845F3368;
    OUTLINED_FUNCTION_21_1();
    v31 = swift_allocObject();
    v28[8] = v31;
    v32 = *(v30 + 32);
    v33 = *(v30 + 16);
    *(v31 + 16) = *v30;
    *(v31 + 32) = v33;
    *(v31 + 48) = v32;
    v28[2] = v13;
    sub_2311D38A8((v0 + 9456), (v28 + 3));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9056));

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9216));

    sub_2311CF388(v0 + 9656, v0 + 9016);
    swift_unknownObjectRetain();
    v34 = sub_2313256A4(v10, v13, v66, v28, v67, v68, (v0 + 9016));
    v69[3] = type metadata accessor for SuggestionService();
    v69[4] = &protocol witness table for SuggestionService;

    swift_unknownObjectRelease();
    *v69 = v34;

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9656));
    (v96)(v83, v81);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9336));
    OUTLINED_FUNCTION_79_4();
    (*(v86 + 8))(v92, v89);
  }

  else
  {
    v35 = *(v0 + 10264);
    v36 = *(v0 + 10128);
    v37 = *(v0 + 10112);
    v38 = *(v0 + 10104);
    v39 = *(v0 + 10096);
    sub_231369100();
    (*(v38 + 16))(v37, v36, v39);
    v40 = sub_2313698A0();
    v41 = sub_23136A3B0();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 10264);
    v44 = *(v0 + 10200);
    v45 = *(v0 + 10192);
    v46 = *(v0 + 10112);
    v47 = *(v0 + 10096);
    if (v42)
    {
      OUTLINED_FUNCTION_17();
      v93 = v45;
      v48 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_16();
      v100 = swift_slowAlloc();
      *v48 = 136315138;
      sub_231368D60();
      v49 = OUTLINED_FUNCTION_68_1();
      v8(v49);
      v50 = OUTLINED_FUNCTION_111_0();
      sub_2311CFD58(v50, v51, v52);
      OUTLINED_FUNCTION_10_11();

      *(v48 + 4) = v46;
      OUTLINED_FUNCTION_47_9(&dword_2311CB000, v53, v41, "domain config provider did not run succesfully - status - %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v100);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();

      (*(v44 + 8))(v43, v93);
    }

    else
    {

      v54 = OUTLINED_FUNCTION_68_1();
      v8(v54);
      (*(v44 + 8))(v43, v45);
    }

    v55 = *(v0 + 10504);
    v56 = *(v0 + 10472);
    v74 = *(v0 + 10424);
    v76 = *(v0 + 10408);
    v78 = *(v0 + 10520);
    v57 = *(v0 + 10384);
    v84 = *(v0 + 10336);
    v87 = *(v0 + 10448);
    v58 = *(v0 + 10304);
    v94 = *(v0 + 10184);
    v59 = *(v0 + 10168);
    v90 = *(v0 + 10160);
    v80 = *(v0 + 10096);
    v82 = *(v0 + 10128);
    v60 = *(v0 + 10080);
    v61 = *(v0 + 10056);
    v62 = type metadata accessor for NoOpSuggestionService();
    OUTLINED_FUNCTION_54();
    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    v61[3] = v62;
    v61[4] = &off_2845F6BF8;

    swift_unknownObjectRelease();
    *v61 = v63;

    swift_unknownObjectRelease();
    (v96)(v82, v80);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9336));
    OUTLINED_FUNCTION_79_4();
    (*(v59 + 8))(v94, v90);
  }

  OUTLINED_FUNCTION_39_13();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9936));
  OUTLINED_FUNCTION_2_27();
  v85 = *(v0 + 10176);
  v88 = *(v0 + 10152);
  v91 = *(v0 + 10144);
  v95 = *(v0 + 10136);
  v97 = *(v0 + 10128);
  v98 = *(v0 + 10120);
  v99 = *(v0 + 10112);

  OUTLINED_FUNCTION_56_0();

  return v64();
}

uint64_t sub_2313163F8()
{
  v1 = v0[1313];
  v2 = v0[1309];
  v3 = v0[1308];
  v4 = v0[1306];
  v5 = v0[1273];
  v6 = v0[1271];
  v7 = v0[1270];
  v8 = v0[1260];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1167);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1162);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1137);
  v10 = *(v6 + 8);
  v9 = v6 + 8;
  v11 = OUTLINED_FUNCTION_54_0();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1232);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1212);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1192);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 1242);
  v13 = v0[1316];
  v14 = v0[1276];
  sub_231369100();
  v15 = v13;
  v16 = sub_2313698A0();
  v17 = sub_23136A3B0();

  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_17();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v13;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_2311CB000, v16, v17, "error creating suggestion service api %@", v18, 0xCu);
    sub_2311D1F18(v19, &qword_27DD433B0, &unk_23136EDC0);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  v22 = v0[1303];
  OUTLINED_FUNCTION_58_8();
  v23 = v0[1257];

  (*(v8 + 8))(9336, v9);
  v24 = type metadata accessor for NoOpSuggestionService();
  OUTLINED_FUNCTION_54();
  v25 = swift_allocObject();
  *(v25 + 16) = v13;
  v23[3] = v24;
  v23[4] = &off_2845F6BF8;
  v26 = v13;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  *v23 = v25;

  OUTLINED_FUNCTION_39_13();
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_53_11();

  OUTLINED_FUNCTION_56_0();

  return v27();
}

uint64_t sub_231316710()
{
  OUTLINED_FUNCTION_26();
  v0[18] = v1;
  v0[19] = v2;
  v0[16] = v3;
  v0[17] = v4;
  v0[14] = v5;
  v0[15] = v6;
  v7 = sub_2313698C0();
  v0[20] = v7;
  OUTLINED_FUNCTION_0(v7);
  v0[21] = v8;
  v10 = *(v9 + 64);
  v0[22] = OUTLINED_FUNCTION_43();
  v11 = sub_2313678B0();
  OUTLINED_FUNCTION_40_0(v11);
  v13 = *(v12 + 64);
  v0[23] = OUTLINED_FUNCTION_99_1();
  v0[24] = swift_task_alloc();
  v14 = sub_2313676B0();
  v0[25] = v14;
  OUTLINED_FUNCTION_0(v14);
  v0[26] = v15;
  v17 = *(v16 + 64);
  v0[27] = OUTLINED_FUNCTION_43();
  v18 = sub_231367F40();
  v0[28] = v18;
  OUTLINED_FUNCTION_0(v18);
  v0[29] = v19;
  v21 = *(v20 + 64);
  v0[30] = OUTLINED_FUNCTION_43();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A60, &qword_2313778B0);
  v0[31] = v22;
  OUTLINED_FUNCTION_40_0(v22);
  v24 = *(v23 + 64);
  v0[32] = OUTLINED_FUNCTION_43();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  OUTLINED_FUNCTION_40_0(v25);
  v27 = *(v26 + 64);
  v0[33] = OUTLINED_FUNCTION_99_1();
  v0[34] = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A68, &qword_2313778B8);
  OUTLINED_FUNCTION_40_0(v28);
  v30 = *(v29 + 64);
  v0[35] = OUTLINED_FUNCTION_99_1();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_getObjectType();
  v31 = *(MEMORY[0x277D61330] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[39] = v32;
  *v32 = v33;
  v32[1] = sub_231316990;

  return MEMORY[0x2821C7770](v0 + 2);
}

uint64_t sub_231316990()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_2();
  *v2 = v0;
  v3 = v0[39];
  v4 = *v1;
  *v2 = *v1;

  v5 = swift_task_alloc();
  v0[40] = v5;
  *v5 = v4;
  v5[1] = sub_231316AE8;
  v6 = v0[38];
  v7 = v0[18];
  v8 = v0[17];
  OUTLINED_FUNCTION_38_4(v6);

  return sub_23132C6C8();
}

uint64_t sub_231316AE8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_2();
  *v2 = v0;
  v3 = v0[40];
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  v0[41] = v6;

  v7 = swift_task_alloc();
  v0[42] = v7;
  *v7 = v4;
  v7[1] = sub_231316C44;
  v8 = v0[38];
  v9 = v0[18];
  v10 = v0[17];
  OUTLINED_FUNCTION_38_4(v8);

  return sub_23132D44C();
}

uint64_t sub_231316C44()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 336);
  *v2 = *v0;
  *(v1 + 344) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231316D30()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 200);
  sub_23123EA8C(*(v0 + 152), v1, &qword_27DD432D8, &unk_23136BED0);
  OUTLINED_FUNCTION_19_13(v1, 1, v2);
  if (v3)
  {
    sub_2311D1F18(*(v0 + 272), &qword_27DD432D8, &unk_23136BED0);
    v11 = 1;
  }

  else
  {
    v4 = *(v0 + 296);
    v5 = *(v0 + 272);
    v6 = *(v0 + 200);
    v7 = *(v0 + 208);
    sub_231367680();
    v8 = *(v7 + 8);
    v9 = OUTLINED_FUNCTION_27();
    v10(v9);
    v11 = 0;
  }

  v12 = *(v0 + 288);
  v14 = *(v0 + 248);
  v13 = *(v0 + 256);
  v15 = *(v0 + 224);
  v16 = *(v0 + 232);
  __swift_storeEnumTagSinglePayload(*(v0 + 296), v11, 1, v15);
  (*(v16 + 104))(v12, *MEMORY[0x277D60D30], v15);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v15);
  v17 = *(v14 + 48);
  v18 = OUTLINED_FUNCTION_64();
  sub_23123EA8C(v18, v19, &qword_27DD44A68, &qword_2313778B8);
  sub_23123EA8C(v12, v13 + v17, &qword_27DD44A68, &qword_2313778B8);
  OUTLINED_FUNCTION_19_13(v13, 1, v15);
  if (v3)
  {
    v20 = *(v0 + 296);
    v21 = *(v0 + 224);
    sub_2311D1F18(*(v0 + 288), &qword_27DD44A68, &qword_2313778B8);
    v22 = OUTLINED_FUNCTION_115_0();
    sub_2311D1F18(v22, v23, &qword_2313778B8);
    OUTLINED_FUNCTION_19_13(v13 + v17, 1, v21);
    if (!v3)
    {
      goto LABEL_11;
    }

    sub_2311D1F18(*(v0 + 256), &qword_27DD44A68, &qword_2313778B8);
    goto LABEL_13;
  }

  v24 = *(v0 + 224);
  sub_23123EA8C(*(v0 + 256), *(v0 + 280), &qword_27DD44A68, &qword_2313778B8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13 + v17, 1, v24);
  v26 = *(v0 + 296);
  v27 = *(v0 + 280);
  if (EnumTagSinglePayload == 1)
  {
    v28 = *(v0 + 224);
    v29 = *(v0 + 232);
    sub_2311D1F18(*(v0 + 288), &qword_27DD44A68, &qword_2313778B8);
    v30 = OUTLINED_FUNCTION_26_1();
    sub_2311D1F18(v30, v31, &qword_2313778B8);
    v32 = *(v29 + 8);
    v33 = OUTLINED_FUNCTION_64();
    v34(v33);
LABEL_11:
    v35 = *(v0 + 256);
    v36 = &unk_27DD44A60;
    v37 = &unk_2313778B0;
LABEL_15:
    sub_2311D1F18(v35, v36, v37);
    goto LABEL_16;
  }

  v81 = *(v0 + 256);
  v38 = *(v0 + 232);
  v39 = *(v0 + 224);
  (*(v38 + 32))(*(v0 + 240), v13 + v17, v39);
  sub_231327268(&qword_280F7C9D0, MEMORY[0x277D60D40]);
  OUTLINED_FUNCTION_69_7();
  v40 = sub_231369F60();
  v41 = *(v38 + 8);
  v42 = OUTLINED_FUNCTION_40_8();
  v41(v42);
  v43 = OUTLINED_FUNCTION_71();
  sub_2311D1F18(v43, v44, &qword_2313778B8);
  sub_2311D1F18(v26, &qword_27DD44A68, &qword_2313778B8);
  (v41)(v27, v39);
  sub_2311D1F18(v81, &qword_27DD44A68, &qword_2313778B8);
  if (v40)
  {
LABEL_13:
    v45 = *(v0 + 264);
    v46 = *(v0 + 200);
    sub_23123EA8C(*(v0 + 152), v45, &qword_27DD432D8, &unk_23136BED0);
    v47 = __swift_getEnumTagSinglePayload(v45, 1, v46);
    v48 = *(v0 + 264);
    if (v47 != 1)
    {
      v76 = *(v0 + 208);
      (*(v76 + 32))(*(v0 + 216), *(v0 + 264), *(v0 + 200));
      v50 = sub_2313676A0();
      v49 = v77;
      v78 = *(v76 + 8);
      v79 = OUTLINED_FUNCTION_26_1();
      v80(v79);
      goto LABEL_17;
    }

    v36 = &qword_27DD432D8;
    v37 = &unk_23136BED0;
    v35 = *(v0 + 264);
    goto LABEL_15;
  }

LABEL_16:
  v49 = 0;
  v50 = 0xBFF0000000000000;
LABEL_17:
  *(v0 + 368) = v49 & 1;
  *(v0 + 352) = v50;
  if (*(v0 + 328) && *(v0 + 344))
  {

    v51 = swift_task_alloc();
    *(v0 + 360) = v51;
    *v51 = v0;
    v51[1] = sub_23131737C;
    v53 = *(v0 + 136);
    v52 = *(v0 + 144);
    OUTLINED_FUNCTION_38_4(*(v0 + 304));

    return Context.isConversationalContinuer()();
  }

  else
  {
    v55 = *(v0 + 176);
    v56 = *(v0 + 128);
    sub_231369150();
    sub_231369EE0();
    v57 = sub_2313698A0();
    v58 = sub_23136A390();

    v59 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 344);
    v61 = *(v0 + 328);
    v62 = *(v0 + 168);
    v63 = *(v0 + 176);
    v64 = *(v0 + 160);
    if (v59)
    {
      v82 = *(v0 + 160);
      v66 = *(v0 + 120);
      v65 = *(v0 + 128);
      OUTLINED_FUNCTION_17();
      v67 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_16();
      v83 = swift_slowAlloc();
      *v67 = 136315138;
      v68 = OUTLINED_FUNCTION_80();
      *(v67 + 4) = sub_2311CFD58(v68, v69, v70);
      _os_log_impl(&dword_2311CB000, v57, v58, "'Context' does not contain signal for %s. Returning owner as source owner rather than SignalledOwner.", v67, 0xCu);
      OUTLINED_FUNCTION_72_6(v83);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();

      (*(v62 + 8))(v63, v82);
    }

    else
    {

      v71 = *(v62 + 8);
      v72 = OUTLINED_FUNCTION_68_1();
      v74(v72, v73);
    }

    sub_2311D38A8((v0 + 16), *(v0 + 112));
    OUTLINED_FUNCTION_68_6();

    OUTLINED_FUNCTION_56_0();

    return v75();
  }
}

uint64_t sub_23131737C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *(v1 + 104) = v3;
  *(v1 + 96) = v0;
  OUTLINED_FUNCTION_21_13();
  v5 = *(v4 + 360);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231317460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_50_9();
  v13 = *(v12 + 368);
  v14 = *(v12 + 344);
  v15 = *(v12 + 328);
  v16 = *(v12 + 184);
  v17 = *(v12 + 192);
  sub_2311CF388(v12 + 16, v12 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A70, &qword_2313778C0);
  OUTLINED_FUNCTION_32_6();
  v18 = sub_231367BA0();
  OUTLINED_FUNCTION_0(v18);
  v20 = *(v19 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  *(swift_allocObject() + 16) = xmmword_23136B670;

  sub_2313678A0();

  result = sub_2313678A0();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v24 = *(v12 + 104);
    v25 = *(v12 + 352);
    v26 = *(v12 + 344);
    v27 = *(v12 + 328);
    v29 = *(v12 + 184);
    v28 = *(v12 + 192);
    v30 = *(v12 + 112);
    sub_231367B90();
    v31 = sub_231366ED0();
    OUTLINED_FUNCTION_10_2(v31);
    swift_allocObject();
    v32 = sub_231366EB0();
    v30[3] = v31;
    OUTLINED_FUNCTION_43_13();
    v30[4] = sub_231327268(v33, v34);

    *v30 = v32;
    __swift_destroy_boxed_opaque_existential_1Tm((v12 + 16));
    OUTLINED_FUNCTION_68_6();
    v44 = v35;

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_40();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, v44, a10, a11, a12);
  }

  return result;
}

uint64_t sub_231317680@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v1 = sub_231369330();
  v2 = OUTLINED_FUNCTION_0_0(v1);
  v69 = v3;
  v70 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_22();
  v68 = v6 - v7;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v8);
  v67 = &v66 - v9;
  OUTLINED_FUNCTION_18();
  v10 = sub_231367F40();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  OUTLINED_FUNCTION_40_0(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v66 - v23;
  v25 = sub_2313676B0();
  v26 = OUTLINED_FUNCTION_0_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_4();
  v33 = v32 - v31;
  sub_2313682B0();
  OUTLINED_FUNCTION_19_13(v24, 1, v25);
  if (v34)
  {
    sub_2311D1F18(v24, &qword_27DD432D8, &unk_23136BED0);
    v35 = sub_231367260();
    v36 = v71;
    v37 = 1;
    return __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
  }

  v38 = v71;
  (*(v28 + 32))(v33, v24, v25);
  sub_231367680();
  v39 = v13[11];
  v40 = OUTLINED_FUNCTION_35_5();
  if (v41(v40) == *MEMORY[0x277D60D38])
  {
    v42 = v13[12];
    v43 = OUTLINED_FUNCTION_35_5();
    v44(v43);
    v45 = *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44078, &qword_231370F80) + 48));
    v47 = v69;
    v46 = v70;
    v48 = *(v69 + 32);
    v49 = v67;
    v50 = OUTLINED_FUNCTION_71();
    v51(v50);
    (*(v47 + 16))(v68, v49, v46);
    sub_231367240();
    (*(v47 + 8))(v49, v46);
    v52 = *(v28 + 8);
    v53 = OUTLINED_FUNCTION_80();
    v54(v53);
    v35 = sub_231367260();
    v36 = v38;
    v37 = 0;
    return __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
  }

  v56 = *(v28 + 8);
  v57 = OUTLINED_FUNCTION_80();
  v58(v57);
  sub_231367260();
  OUTLINED_FUNCTION_52();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  v63 = v13[1];
  v64 = OUTLINED_FUNCTION_35_5();
  return v65(v64);
}

uint64_t sub_231317A28(__int128 *a1, _OWORD *a2, __int128 *a3)
{
  sub_2311D38A8(a1, v3 + 16);
  *(v3 + 56) = *a2;
  sub_2311D38A8(a3, v3 + 72);
  return v3;
}

uint64_t sub_231317A74()
{
  OUTLINED_FUNCTION_8();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43768, &qword_23136D5F0);
  OUTLINED_FUNCTION_40_0(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_43();
  v7 = sub_2313671A0();
  v1[6] = v7;
  OUTLINED_FUNCTION_0(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_43();
  v11 = sub_2313698C0();
  v1[9] = v11;
  OUTLINED_FUNCTION_0(v11);
  v1[10] = v12;
  v14 = *(v13 + 64);
  v1[11] = OUTLINED_FUNCTION_67();
  v1[12] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_231317BA0()
{
  v63 = v0;
  v1 = v0[12];
  v2 = v0[4];
  sub_2313690F0();

  v3 = sub_2313698A0();
  v4 = sub_23136A3A0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  if (v5)
  {
    v9 = v0[4];
    OUTLINED_FUNCTION_17();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_16();
    v11 = swift_slowAlloc();
    v61 = v11;
    *v10 = 136315138;
    v62 = *(v9 + 56);
    v12 = TrialMetaData.debugDescription.getter();
    v14 = sub_2311CFD58(v12, v13, &v61);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2311CB000, v3, v4, "config source used to create service - %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
    v15 = OUTLINED_FUNCTION_12_22();
    MEMORY[0x23192B930](v15);
  }

  v16 = *(v8 + 8);
  v17 = OUTLINED_FUNCTION_26_1();
  v16(v17);
  v18 = v0[11];
  v20 = v0[7];
  v19 = v0[8];
  v21 = v0[6];
  v22 = v0[3];
  sub_2313690F0();
  v23 = *(v20 + 16);
  v24 = OUTLINED_FUNCTION_115_0();
  v25(v24);
  v26 = sub_2313698A0();
  v27 = sub_23136A3A0();
  v28 = os_log_type_enabled(v26, v27);
  v30 = v0[10];
  v29 = v0[11];
  v31 = v0[8];
  v32 = v0[9];
  v34 = v0[6];
  v33 = v0[7];
  if (v28)
  {
    OUTLINED_FUNCTION_17();
    v59 = v16;
    v35 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_16();
    v58 = v32;
    v36 = swift_slowAlloc();
    *&v62 = v36;
    *v35 = 136315138;
    sub_231367190();
    v37 = *(v33 + 8);
    v38 = OUTLINED_FUNCTION_68_1();
    v39(v38);
    v40 = OUTLINED_FUNCTION_111_0();
    sub_2311CFD58(v40, v41, v42);
    OUTLINED_FUNCTION_10_11();

    *(v35 + 4) = v31;
    _os_log_impl(&dword_2311CB000, v26, v27, "emitting trigger log with request id - %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    v43 = OUTLINED_FUNCTION_17_19();
    MEMORY[0x23192B930](v43);
    v44 = OUTLINED_FUNCTION_12_22();
    MEMORY[0x23192B930](v44);

    (v59)(v29, v58);
  }

  else
  {

    v45 = *(v33 + 8);
    v46 = OUTLINED_FUNCTION_68_1();
    v47(v46);
    (v16)(v29, v32);
  }

  v48 = v0[4];
  v49 = v0[5];
  v50 = v0[3];
  v51 = v48[12];
  v52 = v48[13];
  __swift_project_boxed_opaque_existential_1(v48 + 9, v51);
  sub_231367190();
  sub_231366760();

  v53 = *(v52 + 16);
  v60 = (v53 + *v53);
  v54 = v53[1];
  v55 = swift_task_alloc();
  v0[13] = v55;
  *v55 = v0;
  v55[1] = sub_231317F50;
  v56 = OUTLINED_FUNCTION_38_4(v0[5]);

  return v60(v56, v51, v52);
}

uint64_t sub_231317F50()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 104);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  sub_2311D1F18(v3, &qword_27DD43768, &qword_23136D5F0);
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231318060()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  OUTLINED_FUNCTION_1_6();
  v12 = (v4 + *v4);
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[14] = v7;
  *v7 = v8;
  v7[1] = sub_231318174;
  v9 = v0[2];
  v10 = v0[3];

  return v12(v9, v10, v2, v3);
}

uint64_t sub_231318174()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1[14];
  v3 = v1[12];
  v4 = v1[11];
  v5 = v1[8];
  v6 = v1[5];
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  OUTLINED_FUNCTION_56_0();

  return v9();
}

uint64_t sub_2313182CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_2313182E4()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[5];
  v2 = v1[5];
  v3 = v1[6];
  v4 = *(OUTLINED_FUNCTION_14_27(v1 + 2) + 24);
  OUTLINED_FUNCTION_11_13();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_231327304;
  v9 = v0[3];
  v10 = v0[4];
  OUTLINED_FUNCTION_38_4(v0[2]);
  OUTLINED_FUNCTION_88_1();

  return v12();
}

uint64_t sub_2313183F8()
{
  OUTLINED_FUNCTION_8();
  v1[17] = v2;
  v1[18] = v0;
  v3 = sub_2313698C0();
  v1[19] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[20] = v4;
  v6 = *(v5 + 64);
  v1[21] = OUTLINED_FUNCTION_43();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23131849C()
{
  OUTLINED_FUNCTION_60_0();
  sub_2311CF388(*(v0 + 144) + 16, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440A0, &qword_2313773B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440A8, &unk_231371060);
  if (swift_dynamicCast())
  {
    sub_2311D38A8((v0 + 96), v0 + 16);
    v1 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_1_6();
    v29 = (v2 + *v2);
    v4 = *(v3 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v0 + 176) = v5;
    *v5 = v6;
    v5[1] = sub_23131870C;
    v7 = *(v0 + 136);
    OUTLINED_FUNCTION_92_1();

    return v29();
  }

  else
  {
    v9 = *(v0 + 168);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_2311D1F18(v0 + 96, &qword_27DD440B0, &qword_231377810);
    sub_2313690E0();
    v10 = sub_2313698A0();
    v11 = sub_23136A3B0();
    if (OUTLINED_FUNCTION_40_1(v11))
    {
      v12 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_68(v12);
      OUTLINED_FUNCTION_0_26();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    v19 = *(v0 + 160);
    v18 = *(v0 + 168);
    v20 = *(v0 + 152);
    v21 = *(v0 + 136);

    v22 = *(v19 + 8);
    v23 = OUTLINED_FUNCTION_28_0();
    v24(v23);
    v25 = type metadata accessor for NoOpSystemEnvironmentService();
    OUTLINED_FUNCTION_33_16();
    v26 = swift_allocObject();
    v21[3] = v25;
    v21[4] = &protocol witness table for NoOpSystemEnvironmentService;
    *v21 = v26;
    v27 = *(v0 + 168);

    OUTLINED_FUNCTION_56_0();

    return v28();
  }
}

uint64_t sub_23131870C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 176);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2313187F0()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_56_0();

  return v2();
}

uint64_t sub_231318864()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  v4 = *(OUTLINED_FUNCTION_14_27(v1 + 2) + 32);
  OUTLINED_FUNCTION_11_13();
  v11 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_231274600;
  v9 = OUTLINED_FUNCTION_28_0();

  return v11(v9);
}

uint64_t sub_231318970()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[7];
  v1 = v0[8];

  return OUTLINED_FUNCTION_72_6(v0 + 9);
}

uint64_t sub_2313189AC()
{
  sub_231318970();
  OUTLINED_FUNCTION_55_10();

  return swift_deallocClassInstance();
}

uint64_t sub_2313189DC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209AAC;

  return sub_231317A74();
}

uint64_t sub_231318A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_231209AAC;

  return sub_2313182CC(a1, a2, a3);
}

uint64_t sub_231318B38()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231274F34;

  return sub_231318850();
}

uint64_t sub_231318BC8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209AAC;

  return sub_2313183F8();
}

uint64_t SuggestionService.ownerConfigProvider.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  return swift_unknownObjectRetain();
}

uint64_t static SuggestionService.isEnabled()()
{
  sub_2313686F0();
  sub_2313686E0();
  OUTLINED_FUNCTION_24_0();
  v0 = sub_231367570();
  v4[3] = v0;
  v4[4] = sub_231327268(&qword_280F7CAC0, MEMORY[0x277D60980]);
  __swift_allocate_boxed_opaque_existential_1(v4);
  v1 = *MEMORY[0x277D60968];
  OUTLINED_FUNCTION_26_0(v0);
  (*(v2 + 104))();
  LOBYTE(v0) = sub_2313686D0();

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v0 & 1;
}

uint64_t SuggestionService.suggestNext(interaction:)()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_38_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_231209AAC;
  OUTLINED_FUNCTION_92_1();

  return sub_231318DFC();
}

uint64_t sub_231318DFC()
{
  OUTLINED_FUNCTION_26();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v1[20] = *v0;
  v4 = sub_2313671E0();
  v1[21] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[22] = v5;
  v7 = *(v6 + 64);
  v1[23] = OUTLINED_FUNCTION_43();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A40, &qword_231377860);
  OUTLINED_FUNCTION_40_0(v8);
  v10 = *(v9 + 64);
  v1[24] = OUTLINED_FUNCTION_43();
  v11 = sub_2313667A0();
  OUTLINED_FUNCTION_40_0(v11);
  v13 = *(v12 + 64);
  v1[25] = OUTLINED_FUNCTION_43();
  v14 = sub_2313671A0();
  v1[26] = v14;
  OUTLINED_FUNCTION_0(v14);
  v1[27] = v15;
  v17 = *(v16 + 64);
  v1[28] = OUTLINED_FUNCTION_99_1();
  v1[29] = swift_task_alloc();
  v18 = sub_2313698C0();
  v1[30] = v18;
  OUTLINED_FUNCTION_0(v18);
  v1[31] = v19;
  v21 = *(v20 + 64);
  v1[32] = OUTLINED_FUNCTION_99_1();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v1[36] = v22;
  *v22 = v23;
  v22[1] = sub_231319024;
  OUTLINED_FUNCTION_92_1();

  return sub_231319E24(v24, v25);
}

uint64_t sub_231319024()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 288);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231319108()
{
  v69 = v0;
  v1 = v0[35];
  sub_2313690F0();
  v2 = sub_2313698A0();
  v3 = sub_23136A390();
  if (OUTLINED_FUNCTION_40_1(v3))
  {
    v4 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v4);
    OUTLINED_FUNCTION_0_26();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  v11 = v0[34];
  v10 = v0[35];
  v12 = v0[30];
  v13 = v0[31];
  v14 = v0[29];
  v15 = v0[26];
  v16 = v0[27];
  v17 = v0[18];

  v0[37] = *(v13 + 8);
  v18 = OUTLINED_FUNCTION_115_0();
  v66 = v19;
  (v19)(v18);
  sub_2313690F0();
  v20 = *(v16 + 16);
  v0[38] = v20;
  v0[39] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v14, v17, v15);
  v21 = sub_2313698A0();
  v22 = sub_23136A390();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[34];
  v25 = v0[30];
  v26 = v0[31];
  v27 = v0[29];
  v29 = v0[26];
  v28 = v0[27];
  if (v23)
  {
    OUTLINED_FUNCTION_17();
    v65 = v24;
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_16();
    v64 = v25;
    v31 = swift_slowAlloc();
    v68 = v31;
    *v30 = 136315138;
    OUTLINED_FUNCTION_46_13();
    sub_231327268(v32, v33);
    sub_23136A8B0();
    v63 = v22;
    v34 = *(v28 + 8);
    v34(v27, v29);
    v35 = OUTLINED_FUNCTION_111_0();
    sub_2311CFD58(v35, v36, v37);
    OUTLINED_FUNCTION_10_11();

    *(v30 + 4) = v27;
    _os_log_impl(&dword_2311CB000, v21, v63, "Interaction:\n%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
    v38 = OUTLINED_FUNCTION_12_22();
    MEMORY[0x23192B930](v38);

    v39 = v64;
    v40 = v65;
  }

  else
  {

    v34 = *(v28 + 8);
    v34(v27, v29);
    v40 = OUTLINED_FUNCTION_40_8();
  }

  v66(v40, v39);
  v0[40] = v34;
  v41 = v0[33];
  sub_2313690F0();
  sub_2311CF388((v0 + 2), (v0 + 7));
  v42 = sub_2313698A0();
  v43 = sub_23136A390();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v0[33];
  v46 = v0[30];
  v47 = v0[31];
  if (v44)
  {
    OUTLINED_FUNCTION_17();
    v48 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_16();
    v49 = swift_slowAlloc();
    v68 = v49;
    *v48 = 136315138;
    sub_2311CF388((v0 + 7), (v0 + 12));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42EF0, &unk_2313762A0);
    v50 = sub_23136A010();
    v52 = v51;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    v53 = sub_2311CFD58(v50, v52, &v68);

    *(v48 + 4) = v53;
    OUTLINED_FUNCTION_47_9(&dword_2311CB000, v54, v43, "Environment:\n%s");
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    v55 = OUTLINED_FUNCTION_12_22();
    MEMORY[0x23192B930](v55);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();

    v56 = OUTLINED_FUNCTION_28_0();
    (v66)(v56);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    v57 = OUTLINED_FUNCTION_28_0();
    (v66)(v57);
  }

  v58 = *(v0[19] + 16);
  OUTLINED_FUNCTION_57_1(dword_231377870);
  v67 = v59;
  v60 = swift_task_alloc();
  v0[41] = v60;
  *v60 = v0;
  v60[1] = sub_231319524;
  v61 = OUTLINED_FUNCTION_38_4(v0[18]);

  return v67(v61);
}

uint64_t sub_231319524()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = v3;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  v7 = *(v6 + 328);
  v8 = *(v6 + 160);
  v9 = *v0;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v4 + 336) = v2;

  v11 = swift_task_alloc();
  *(v4 + 344) = v11;
  *v11 = v9;
  v12 = OUTLINED_FUNCTION_56_8(v11);

  return static SuggestionService.finalizeCandidates(_:)(v12);
}

uint64_t sub_231319654()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 344);
  v5 = *(v3 + 336);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 352) = v8;

  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231319758()
{
  v68 = v0;
  v1 = v0[44];
  v63 = v0[38];
  v65 = v0[39];
  v2 = v0[32];
  v3 = v0[25];
  v60 = v0[28];
  v62 = v0[26];
  v4 = v0[24];
  v5 = v0[22];
  v56 = v0[21];
  v58 = v0[23];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
  static SuggestionService.wrapOwner(suggestions:interaction:)(v67);
  sub_231367140();
  sub_23131A400();
  sub_2313679D0();
  OUTLINED_FUNCTION_52();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  sub_2313671C0();
  sub_2313690F0();
  (*(v5 + 16))(v58, v8, v56);
  v63(v60, v7, v62);
  v13 = sub_2313698A0();
  v61 = sub_23136A3A0();
  v66 = v13;
  v14 = os_log_type_enabled(v13, v61);
  v15 = v0[40];
  v16 = v0[37];
  v17 = v0[32];
  v64 = v0[31];
  v18 = v0[30];
  v19 = v0[27];
  v20 = v0[28];
  v21 = v0[26];
  v22 = v0[22];
  v23 = v0[23];
  v24 = v0[21];
  if (v14)
  {
    v59 = v0[37];
    v25 = v0[20];
    OUTLINED_FUNCTION_17();
    v57 = v17;
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_16();
    v55 = v18;
    v27 = swift_slowAlloc();
    v67[0] = v27;
    *v26 = 136315138;
    v54 = sub_23131A568();
    v29 = v28;
    v30 = OUTLINED_FUNCTION_113();
    v31(v30);
    v32 = *(v22 + 8);
    v33 = OUTLINED_FUNCTION_40_8();
    v34(v33);
    v35 = sub_2311CFD58(v54, v29, v67);

    *(v26 + 4) = v35;
    OUTLINED_FUNCTION_47_9(&dword_2311CB000, v36, v61, "%s");
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v37 = OUTLINED_FUNCTION_17_19();
    MEMORY[0x23192B930](v37);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();

    v59(v57, v55);
  }

  else
  {

    v38 = OUTLINED_FUNCTION_113();
    v39(v38);
    v40 = *(v22 + 8);
    v41 = OUTLINED_FUNCTION_40_8();
    v42(v41);
    v16(v17, v18);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v44 = v0[34];
  v43 = v0[35];
  v46 = v0[32];
  v45 = v0[33];
  v48 = v0[28];
  v47 = v0[29];
  v50 = v0[24];
  v49 = v0[25];
  v51 = v0[23];

  OUTLINED_FUNCTION_56_0();

  return v52();
}

uint64_t SuggestionService.logShown(for:deliveryVehicle:generationId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_231319A94()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[5];
  v2 = v1[12];
  v3 = v1[13];
  OUTLINED_FUNCTION_3_2(v1 + 9);
  v4 = *(MEMORY[0x277D60560] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_231319B44;
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_38_4(v0[2]);
  OUTLINED_FUNCTION_88_1();

  return MEMORY[0x2821C5F88]();
}

uint64_t sub_231319B44()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_56_0();

  return v5();
}

uint64_t sub_231319C24()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_56_0();

  return v5();
}

uint64_t static SuggestionService.wrapOwner(suggestions:interaction:)@<X0>(uint64_t *a1@<X8>)
{
  sub_231366ED0();
  OUTLINED_FUNCTION_121_0();
  sub_2313671A0();
  OUTLINED_FUNCTION_46_13();
  sub_231327268(v3, v4);
  v5 = OUTLINED_FUNCTION_54_0();
  MEMORY[0x231927EF0](v5);
  v6 = OUTLINED_FUNCTION_54_0();
  MEMORY[0x231927EB0](v6);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v7 = OUTLINED_FUNCTION_54_0();
  MEMORY[0x231929610](v7);
  OUTLINED_FUNCTION_72_6(v12);

  v8 = sub_231366EC0();
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  a1[3] = v1;
  OUTLINED_FUNCTION_43_13();
  result = sub_231327268(v9, v10);
  a1[4] = result;
  *a1 = v8;
  return result;
}

uint64_t sub_231319E24(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_231319E3C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[8];
  v2 = v0[9];
  v0[10] = __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  v3 = sub_231367170();
  sub_23134AD1C(v3);
  v0[11] = v4;

  v0[12] = sub_231367160();
  sub_231367130();
  v6 = v2[14];
  v5 = v2[15];
  swift_getObjectType();
  v7 = *(MEMORY[0x277D60F90] + 4);
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_56_8(v8);

  return MEMORY[0x2821C6F68](v9, v5);
}

uint64_t sub_231319F1C()
{
  OUTLINED_FUNCTION_16();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v6 = v3[13];
  v7 = v3[10];
  v8 = *v0;
  *v5 = *v0;
  v4[14] = v2;

  v9 = *v7;
  v10 = swift_task_alloc();
  v4[15] = v10;
  *v10 = v8;
  v10[1] = sub_23131A0AC;
  v11 = v3[12];
  v12 = v3[11];
  v13 = v3[7];

  return sub_231327FD0();
}

uint64_t sub_23131A0AC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = v4[15];
  v6 = v4[14];
  v7 = v4[12];
  v8 = v4[11];
  v9 = *v0;
  OUTLINED_FUNCTION_2();
  *v10 = v9;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  OUTLINED_FUNCTION_56_0();

  return v11();
}

uint64_t static SuggestionService.finalizeCandidates(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_23131A1FC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[2];
  v2 = v0[3];
  sub_23131B650();
  v0[4] = v3;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v2;
  OUTLINED_FUNCTION_57_1(&unk_231377398);
  v8 = v5;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_23131A2D4;
  OUTLINED_FUNCTION_61_6();

  return v8();
}

void sub_23131A2D4()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;

  if (v0)
  {
  }

  else
  {
    v11 = *(v5 + 32);
    v12 = *(v5 + 40);

    v13 = *(v9 + 8);

    v13(v3);
  }
}

double sub_23131A400()
{
  v0 = sub_231367180();
  sub_231210B54(0x746E657665, 0xE500000000000000, v0);

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43300, &qword_23136BF00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44A50, &qword_231377890);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }
  }

  else
  {
    sub_2311D1F18(&v5, &qword_27DD432F8, &qword_23136DEE0);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  sub_23123EA8C(&v7, &v5, &qword_27DD44A48, &unk_231377880);
  if (v6)
  {
    sub_2311D38A8(&v5, v4);
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_231368F40();
    v2 = v1;
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    v2 = -1.0;
  }

  sub_2311D1F18(&v7, &qword_27DD44A48, &unk_231377880);
  return v2;
}

uint64_t sub_23131A568()
{
  v0 = sub_231367C70();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231367150();
  v5 = sub_23131A654();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_23131A654()
{
  OUTLINED_FUNCTION_109_1();
  v0 = sub_2313698C0();
  v1 = OUTLINED_FUNCTION_0_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_4();
  v8 = v7 - v6;
  sub_2313690F0();
  sub_23136A650();

  v9 = sub_231367C50();
  MEMORY[0x23192A730](v9);

  MEMORY[0x23192A730](0x7473657571657220, 0xE90000000000003ALL);
  sub_2313671B0();
  OUTLINED_FUNCTION_109_1();
  sub_231367120();
  OUTLINED_FUNCTION_54_0();
  v10 = sub_231369870();

  (*(v3 + 8))(v8, v0);
  return v10;
}

uint64_t sub_23131A7F4(uint64_t a1)
{
  v123 = sub_231369330();
  v122 = *(v123 - 8);
  v2 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v121 = v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD449C8, &qword_2313772F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v143 = v116 - v6;
  v7 = sub_231367500();
  v139 = *(v7 - 8);
  v140 = v7;
  v8 = *(v139 + 64);
  MEMORY[0x28223BE20](v7);
  v137 = v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_231367300();
  v141 = *(v10 - 8);
  v142 = v10;
  v11 = *(v141 + 64);
  MEMORY[0x28223BE20](v10);
  v138 = v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v136 = v116 - v14;
  MEMORY[0x28223BE20](v15);
  v135 = v116 - v16;
  v17 = sub_231367D80();
  v133 = *(v17 - 8);
  v134 = v17;
  v18 = *(v133 + 64);
  MEMORY[0x28223BE20](v17);
  v132 = v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_231369050();
  v130 = *(v131 - 8);
  v20 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v129 = v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_231366E80();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v124 = v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v116 - v27;
  v29 = sub_231367230();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v128 = v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v126 = v116 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = v116 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v119 = v116 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v125 = v116 - v42;
  MEMORY[0x28223BE20](v43);
  v45 = v116 - v44;
  sub_2313670B0();
  sub_231367220();
  v47 = *(v30 + 8);
  v46 = v30 + 8;
  v127 = v47;
  v47(v37, v29);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v22);
  v144 = v22;
  if (EnumTagSinglePayload == 1)
  {
    sub_2311D1F18(v45, &qword_27DD42F20, &qword_23136D410);
    v145 = 0;
LABEL_15:
    v63 = v126;
    sub_2313670B0();
    v64 = v125;
    sub_231367220();
    v65 = v127;
    v127(v63, v29);
    if (__swift_getEnumTagSinglePayload(v64, 1, v144) == 1)
    {

      sub_2311D1F18(v64, &qword_27DD42F20, &qword_23136D410);
      v146 = 1936941424;
      v147 = 0xE400000000000000;
LABEL_19:
      v70 = v128;
      goto LABEL_26;
    }

    v66 = sub_231366E60();
    v67 = v144;
    v68 = v66;
    v69 = *(v23 + 8);
    v69(v64, v144);
    if (v68)
    {

      v146 = 1936941424;
      v147 = 0xE400000000000000;
      goto LABEL_19;
    }

    v71 = 0x6E776F6E6B6E75;
    v150 = 0x203A64656C696166;
    v151 = 0xE900000000000028;
    if (v145)
    {
      v72 = v119;
      sub_231334258(v145, v119);

      if (__swift_getEnumTagSinglePayload(v72, 1, v67) != 1)
      {
        v71 = sub_231366E70();
        v74 = v72;
        v73 = v75;
        v69(v74, v67);
        goto LABEL_25;
      }

      sub_2311D1F18(v72, &qword_27DD42F20, &qword_23136D410);
    }

    v73 = 0xE700000000000000;
LABEL_25:
    v70 = v128;
    MEMORY[0x23192A730](v71, v73);

    MEMORY[0x23192A730](41, 0xE100000000000000);
    v146 = v150;
    v147 = v151;
LABEL_26:
    sub_2313670B0();
    v76 = sub_231367210();
    v78 = v77;
    v65(v70, v29);
    sub_2313670B0();
    v79 = sub_231367200();
    v81 = v80;
    v65(v70, v29);
    v150 = v79;
    v151 = v81;
    v148 = v76;
    v149 = v78;
    sub_231207C1C();
    LOBYTE(v79) = sub_23136A520();

    if ((v79 & 1) == 0)
    {
      v150 = v76;
      v151 = v78;
      MEMORY[0x23192A730](0x3A6E656B6F707328, 0xE900000000000020);
      sub_2313670B0();
      v82 = sub_231367200();
      v84 = v83;
      v65(v70, v29);
      MEMORY[0x23192A730](v82, v84);

      MEMORY[0x23192A730](41, 0xE100000000000000);
      v76 = v150;
      v78 = v151;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_231377310;
    v86 = v129;
    sub_2313670C0();
    v87 = sub_231369040();
    v89 = v88;
    (*(v130 + 8))(v86, v131);
    v90 = MEMORY[0x277D837D0];
    *(v85 + 56) = MEMORY[0x277D837D0];
    *(v85 + 32) = v87;
    *(v85 + 40) = v89;
    v91 = v132;
    sub_2313670F0();
    v92 = sub_231367D40();
    v94 = v93;
    (*(v133 + 8))(v91, v134);
    *(v85 + 64) = v92;
    *(v85 + 72) = v94;
    *(v85 + 88) = v90;
    *(v85 + 96) = v76;
    *(v85 + 104) = v78;
    *(v85 + 152) = v90;
    v96 = v146;
    v95 = v147;
    *(v85 + 120) = v90;
    *(v85 + 128) = v96;
    *(v85 + 136) = v95;
    v97 = v135;
    sub_231367100();
    *(v85 + 184) = sub_231367290();
    __swift_allocate_boxed_opaque_existential_1((v85 + 160));
    sub_2313672D0();
    v98 = v142;
    v99 = *(v141 + 8);
    v99(v97, v142);
    v100 = v136;
    sub_231367100();
    v101 = sub_2313672C0();
    v99(v100, v98);
    *(v85 + 216) = MEMORY[0x277D83B88];
    *(v85 + 192) = v101;
    v102 = v137;
    sub_2313670D0();
    v103 = sub_2313674F0();
    v105 = v104;
    (*(v139 + 8))(v102, v140);
    *(v85 + 248) = v90;
    *(v85 + 224) = v103;
    *(v85 + 232) = v105;
    *(v85 + 280) = sub_2313694E0();
    __swift_allocate_boxed_opaque_existential_1((v85 + 256));
    sub_231367110();
    v106 = v138;
    sub_231367100();
    sub_2313672E0();
    v108 = v107;
    v99(v106, v98);
    *(v85 + 312) = MEMORY[0x277D839F8];
    *(v85 + 288) = v108;
    v109 = v143;
    sub_2313670E0();
    v110 = sub_231367260();
    if (__swift_getEnumTagSinglePayload(v109, 1, v110) == 1)
    {
      sub_2311D1F18(v109, &qword_27DD449C8, &qword_2313772F8);
      v111 = (v85 + 320);
      *(v85 + 344) = v90;
    }

    else
    {
      v112 = v121;
      sub_231367250();
      (*(*(v110 - 8) + 8))(v109, v110);
      v113 = sub_231369300();
      v115 = v114;
      (*(v122 + 8))(v112, v123);
      v111 = (v85 + 320);
      *(v85 + 344) = v90;
      if (v115)
      {
        *v111 = v113;
LABEL_33:
        *(v85 + 328) = v115;
        return v85;
      }
    }

    *v111 = 2960685;
    v115 = 0xE300000000000000;
    goto LABEL_33;
  }

  v116[1] = v46;
  v117 = v29;
  v118 = a1;
  v49 = sub_231366E20();
  v146 = *(v23 + 8);
  result = (v146)(v45, v22);
  v51 = 0;
  v52 = *(v49 + 16);
  v147 = v23 + 16;
  v120 = (v23 + 32);
  v145 = MEMORY[0x277D84F90];
  v53 = v22;
  while (1)
  {
    if (v52 == v51)
    {

      v29 = v117;
      goto LABEL_15;
    }

    if (v51 >= *(v49 + 16))
    {
      break;
    }

    v54 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v55 = *(v23 + 72);
    (*(v23 + 16))(v28, v49 + v54 + v55 * v51, v53);
    v56 = v53;
    if (sub_231366E60())
    {
      result = (v146)(v28, v53);
      ++v51;
    }

    else
    {
      v116[0] = *v120;
      (v116[0])(v124, v28, v53);
      v57 = v145;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v57;
      v150 = v57;
      if (isUniquelyReferenced_nonNull_native)
      {
        v53 = v56;
      }

      else
      {
        sub_2311F4DDC(0, *(v57 + 16) + 1, 1);
        v53 = v144;
        v59 = v150;
      }

      v61 = *(v59 + 16);
      v60 = *(v59 + 24);
      v62 = v61 + 1;
      if (v61 >= v60 >> 1)
      {
        v145 = v61 + 1;
        sub_2311F4DDC(v60 > 1, v61 + 1, 1);
        v53 = v144;
        v62 = v145;
        v59 = v150;
      }

      ++v51;
      *(v59 + 16) = v62;
      v145 = v59;
      result = (v116[0])(v59 + v54 + v61 * v55, v124, v53);
    }
  }

  __break(1u);
  return result;
}

uint64_t SuggestionService.getSystemEnvironmentService()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_9_18();
}

uint64_t sub_23131B5E0()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 16);
  v2 = __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 24), *(*(v0 + 24) + 48));
  sub_2311CF388(*v2 + 16, v1);
  OUTLINED_FUNCTION_56_0();

  return v3();
}

void sub_23131B650()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43780, &qword_231377300);
  OUTLINED_FUNCTION_40_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v5);
  v120 = v114 - v6;
  OUTLINED_FUNCTION_18();
  v125 = sub_231367300();
  v7 = OUTLINED_FUNCTION_0_0(v125);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v124 = v13 - v12;
  OUTLINED_FUNCTION_18();
  v123 = type metadata accessor for RankedCandidateSuggestion();
  v14 = OUTLINED_FUNCTION_11(v123);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_4();
  v122 = v18 - v17;
  OUTLINED_FUNCTION_18();
  v126 = sub_2313698C0();
  v19 = OUTLINED_FUNCTION_0_0(v126);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_4();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70);
  OUTLINED_FUNCTION_0(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v32);
  v134 = v114 - v33;
  v34 = OUTLINED_FUNCTION_18();
  v137 = type metadata accessor for SuggestionViewDetails(v34);
  v35 = OUTLINED_FUNCTION_0_0(v137);
  v121 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_22();
  v133 = v39 - v40;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v41);
  v119 = v114 - v42;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v43);
  v132 = v114 - v44;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v45);
  v47 = v114 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = v114 - v49;
  sub_23126F2AC(0, *(v1 + 16), 0, MEMORY[0x277D84F90]);
  v135 = v51;
  v138[0] = v1;
  sub_231369EE0();
  sub_231312E38(v138);
  v52 = *(v138[0] + 16);
  if (!v52)
  {
LABEL_17:

    OUTLINED_FUNCTION_9_0();
    return;
  }

  v118 = v26;
  v130 = 0;
  v53 = *(v29 + 80);
  OUTLINED_FUNCTION_35_0();
  v114[1] = v54;
  v56 = v54 + v55;
  v116 = (v9 + 16);
  v57 = MEMORY[0x277D84FA0];
  v58 = *(v29 + 72);
  v117 = (v21 + 8);
  *&v59 = 136315394;
  v115 = v59;
  v60 = v134;
  v131 = v47;
  v127 = v58;
  v128 = v50;
  while (1)
  {
    sub_23123EA8C(v56, v60, &qword_27DD43530, &unk_23136CA70);
    OUTLINED_FUNCTION_19_13(v60, 1, v137);
    if (!v61)
    {
      break;
    }

    v62 = OUTLINED_FUNCTION_90_1();
    sub_2311D1F18(v62, v63, &unk_23136CA70);
LABEL_16:
    v56 += v58;
    if (!--v52)
    {
      goto LABEL_17;
    }
  }

  sub_2313270AC(v60, v50);
  v64 = *(v50 + 2);
  v65 = *(v50 + 3);
  sub_231369EE0();
  v66 = OUTLINED_FUNCTION_69_7();
  if (sub_2311EFC44(v66, v67, v57))
  {
    v136 = v57;
    v68 = v118;
    sub_2313690F0();
    OUTLINED_FUNCTION_41_15();
    sub_231327110(v50, v47);
    sub_231369EE0();
    v69 = sub_2313698A0();
    v70 = sub_23136A3A0();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v138[0] = swift_slowAlloc();
      *v71 = v115;
      v72 = OUTLINED_FUNCTION_69_7();
      v75 = sub_2311CFD58(v72, v73, v74);

      *(v71 + 4) = v75;
      *(v71 + 12) = 2080;
      v76 = &v47[*(type metadata accessor for ViewDetails(0) + 32)];
      v78 = *v76;
      v77 = v76[1];
      sub_231369EE0();
      OUTLINED_FUNCTION_40_15();
      sub_231327168();
      v79 = sub_2311CFD58(v78, v77, v138);
      v47 = v131;

      *(v71 + 14) = v79;
      _os_log_impl(&dword_2311CB000, v69, v70, "[warning] Removing duplicate dialog: %s from suggestionId: %s", v71, 0x16u);
      swift_arrayDestroy();
      v50 = v128;
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      v58 = v127;
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    else
    {

      OUTLINED_FUNCTION_40_15();
      sub_231327168();
    }

    (*v117)(v68, v126);
    sub_231327168();
    v60 = v134;
LABEL_15:
    v57 = v136;
    goto LABEL_16;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v138[0] = v57;
  v80 = OUTLINED_FUNCTION_69_7();
  sub_2313250CC(v80, v81, v82);

  v83 = v130 + 1;
  if (!__OFADD__(v130, 1))
  {
    v136 = v138[0];
    OUTLINED_FUNCTION_41_15();
    v129 = v84;
    v85 = v119;
    sub_231327110(v50, v119);
    v86 = v137;
    v87 = v137[5];
    v88 = v122;
    sub_231327110(&v50[v87], v122);
    (*v116)(v124, &v50[v87], v125);
    sub_231367290();
    OUTLINED_FUNCTION_52();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
    v93 = v132;
    v94 = &v132[v86[5]];
    OUTLINED_FUNCTION_28();
    v130 = v83;
    sub_2313672A0();
    v95 = v123;
    sub_2311CF388(v88 + *(v123 + 20), &v94[*(v123 + 20)]);
    sub_23123EA8C(v88 + *(v95 + 24), &v94[*(v95 + 24)], &qword_27DD42F20, &qword_23136D410);
    v96 = *(v95 + 28);
    v97 = sub_231369050();
    OUTLINED_FUNCTION_11(v97);
    (*(v98 + 16))(&v94[v96], v88 + v96);
    sub_231327168();
    sub_231327110(v85, v93);
    v99 = OUTLINED_FUNCTION_100_0(v86[6]);
    sub_2311CF388(v99, v100);
    v101 = OUTLINED_FUNCTION_100_0(v86[7]);
    sub_2311CF388(v101, v102);
    v103 = OUTLINED_FUNCTION_100_0(v86[8]);
    sub_23123EA8C(v103, v104, &qword_27DD44A38, &qword_231377858);
    v105 = OUTLINED_FUNCTION_100_0(v86[9]);
    sub_23123EA8C(v105, v106, &qword_27DD44710, &qword_231375250);
    sub_231327168();
    sub_231327110(v93, v133);
    v108 = *(v135 + 16);
    v107 = *(v135 + 24);
    if (v108 >= v107 >> 1)
    {
      sub_23126F2AC(v107 > 1, v108 + 1, 1, v135);
      v135 = v113;
    }

    v58 = v127;
    v60 = v134;
    sub_231327168();
    v50 = v128;
    sub_231327168();
    *(v135 + 16) = v108 + 1;
    v109 = *(v121 + 80);
    OUTLINED_FUNCTION_35_0();
    sub_2313270AC(v133, v111 + v110 + *(v112 + 72) * v108);
    v47 = v131;
    goto LABEL_15;
  }

  __break(1u);

  __break(1u);
}