uint64_t sub_26B14A940()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t WeakArray.init(wrappedValue:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26B212F50();
  v3 = type metadata accessor for _WeakValue();
  OUTLINED_FUNCTION_1_40();
  v4 = OUTLINED_FUNCTION_3_32();
  v10 = sub_26B14B604(v4, v5, v2, v3, v6, v7, v8, v9);

  *a1 = v10;
  return result;
}

uint64_t sub_26B14AA9C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t SetBloomFilter.init(wrappedValue:estimatedCapacity:)@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  sub_26B14AC14();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26B215910;
  *(a5 + 56) = v10;
  *a5 = a1;
  sub_26B2128F0();
  v11 = sub_26B14C354(0xFFFFFFFFFFFFFFFELL);
  BloomFilter.init(estimatedCapacity:falsePositiveTolerance:optimizationAttempts:hashSeed:)(a2, 10, v11 + 1, &v18, 0.001);
  v12 = v19;
  v13 = v20;
  *(a5 + 8) = v18;
  *(a5 + 24) = v12;
  *(a5 + 32) = v13;
  *(a5 + 40) = v21;
  v14 = sub_26B212EC0();
  if (sub_26B212EF0())
  {
    v15 = sub_26B1565C8(v14, a3, a4);
  }

  else
  {

    v15 = MEMORY[0x277D84FA0];
  }

  v16 = type metadata accessor for SetBloomFilter();
  sub_26B14C63C(v15, a1, v16);
}

void sub_26B14AC14()
{
  if (!qword_280D2DC70[0])
  {
    sub_26B14AC6C();
    v0 = type metadata accessor for Box();
    if (!v1)
    {
      atomic_store(v0, qword_280D2DC70);
    }
  }
}

void sub_26B14AC6C()
{
  if (!qword_280D2DF98)
  {
    v0 = sub_26B2133E0();
    if (!v1)
    {
      atomic_store(v0, &qword_280D2DF98);
    }
  }
}

uint64_t sub_26B14ACEC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_1_5(char *a1)
{
  v2 = *a1;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_1_10()
{
  result = *(v0 - 208);
  v2 = *(v0 - 200);
  v3 = *(v0 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_1_15()
{

  return sub_26B214130();
}

void OUTLINED_FUNCTION_1_20(uint64_t a1@<X8>)
{

  sub_26B15B0A0(v1 > 1, a1, 1);
}

uint64_t OUTLINED_FUNCTION_1_22()
{
  v2 = *(*(v1 - 328) + 8);
  result = v0;
  v4 = *(v1 - 320);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_25()
{

  return sub_26B2139E0();
}

void OUTLINED_FUNCTION_1_27()
{
  v1 = *(v0 + 112);
  *(v0 + 120) = *v1;
  *(v0 + 128) = *(v1 + 8);
  *(v0 + 136) = *(v1 + 16);
  *(v0 + 144) = *(v1 + 24);
  *(v0 + 152) = *(v1 + 32);
  *(v0 + 97) = *(v1 + 40);
}

uint64_t OUTLINED_FUNCTION_20()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

__n128 OUTLINED_FUNCTION_1_29@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, __int128 a6, __int128 a7, uint64_t a8)
{
  result = a5;
  *(a1 + 96) = a8;
  *(a1 + 64) = a6;
  *(a1 + 80) = a7;
  *(a1 + 48) = a5;
  *(a1 + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_30(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 56);
  return *(v2 + 48);
}

uint64_t OUTLINED_FUNCTION_1_34()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_1_37(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = 0;
  v1[4] = 0;
  return v1 + 2;
}

uint64_t OUTLINED_FUNCTION_1_40()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return sub_26B14DB50(v0, type metadata accessor for Sonic_Foundation_BloomFilter);
}

uint64_t OUTLINED_FUNCTION_3_7()
{
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[21];
  v11 = v0[22];
  v14 = v0[20];
  v15 = v0[19];
  v12 = v0[16];
  v16 = v0[13];
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return sub_26B2139B0();
}

uint64_t OUTLINED_FUNCTION_3_12()
{
}

uint64_t OUTLINED_FUNCTION_3_13(unint64_t *a1)
{

  return sub_26B18CAE0(a1);
}

void OUTLINED_FUNCTION_3_16()
{
  v2 = *(v0 + 16) + 1;

  sub_26B15B0A0(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_3_21()
{
  v2 = v0 + 80 * v1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_3_22()
{
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  *(v0 + 320) = v2;
  *(v0 + 328) = v3;
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  *(v0 + 336) = v4;
  *(v0 + 344) = v5;
  v6 = *(v0 + 240);
  *(v0 + 352) = v6;
  v7 = *(v0 + 248);
  *(v0 + 249) = v7;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 48) = v6;
  *(v0 + 56) = v7;
  *(v0 + 64) = sub_26B1BC924;
  *(v0 + 72) = 0;
}

uint64_t OUTLINED_FUNCTION_3_23@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v3 + 16) = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = a2;
  *(v3 + 48) = 0;
  result = a1 + 40;
  v5 = *(a1 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_24()
{
  v4 = *(v1 + v0);

  return sub_26B166358();
}

uint64_t OUTLINED_FUNCTION_3_30()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_31()
{

  return sub_26B211CE0();
}

uint64_t sub_26B14B604(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v58 = a1;
  v59 = a2;
  OUTLINED_FUNCTION_9_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v60 = v17 - v16;
  v19 = *(v18 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0(AssociatedTypeWitness);
  v62 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11_0();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v47 - v25;
  v27 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4();
  v56 = v29 - v28;
  v30 = swift_getAssociatedTypeWitness();
  v31 = OUTLINED_FUNCTION_0(v30);
  v50 = v32;
  v51 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v35);
  v37 = &v47 - v36;
  v38 = sub_26B213240();
  if (!v38)
  {
    return sub_26B212EC0();
  }

  v61 = v38;
  v65 = sub_26B213810();
  v52 = sub_26B213820();
  sub_26B2137B0();
  result = sub_26B213220();
  if ((v61 & 0x8000000000000000) == 0)
  {
    v47 = v12;
    v48 = a5;
    v40 = 0;
    v53 = (v62 + 16);
    v54 = v62 + 8;
    v55 = v8;
    while (!__OFADD__(v40, 1))
    {
      v62 = v40 + 1;
      v41 = sub_26B2132E0();
      (*v53)(v26);
      v41(v64, 0);
      v42 = v63;
      v58(v26, v60);
      if (v42)
      {
        v45 = OUTLINED_FUNCTION_42();
        v46(v45);
        (*(v50 + 8))(v37, v51);

        return (*(v47 + 32))(v49, v60, v48);
      }

      v63 = 0;
      v43 = OUTLINED_FUNCTION_42();
      v44(v43);
      sub_26B213800();
      result = sub_26B213280();
      ++v40;
      if (v62 == v61)
      {
        (*(v50 + 8))(v37, v51);
        return v65;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_6_0()
{

  JUMPOUT(0x26D670040);
}

uint64_t OUTLINED_FUNCTION_6_4@<X0>(__n128 *a1@<X0>, unint64_t a2@<X8>, __n128 a3@<Q0>)
{
  a1[1] = a3;
  a1[3].n128_u64[1] = a2;
  a1[2].n128_u64[0] = 0x4B325B1B0DLL;
  a1[2].n128_u64[1] = 0xE500000000000000;

  return sub_26B214020();
}

uint64_t OUTLINED_FUNCTION_10_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

size_t OUTLINED_FUNCTION_6_6(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

double OUTLINED_FUNCTION_6_7()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_10()
{
  v1 = *(v0 - 96);
  v2 = *(v0 - 88);
  return v0 - 120;
}

uint64_t OUTLINED_FUNCTION_6_11(uint64_t a1)
{
  *(a1 + 8) = sub_26B17F408;
  v2 = *(v1 + 48);
  return *(v1 + 104);
}

uint64_t OUTLINED_FUNCTION_6_12()
{

  return sub_26B212D30();
}

void OUTLINED_FUNCTION_6_14()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

void OUTLINED_FUNCTION_6_15()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[6];
  v4 = *(v2 + 32);
}

void OUTLINED_FUNCTION_6_17()
{

  sub_26B16AF14();
}

uint64_t OUTLINED_FUNCTION_6_19(uint64_t result)
{
  *(result + 8) = sub_26B1B037C;
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  return result;
}

void OUTLINED_FUNCTION_6_20(uint64_t a1@<X8>)
{
  *(v2 + 16) = v1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = a1;
  *(v2 + 48) = 0;
}

uint64_t OUTLINED_FUNCTION_120()
{

  return sub_26B1A85A8(v4, v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_6_21()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_22@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_26B2128F0();
}

uint64_t *OUTLINED_FUNCTION_6_24(uint64_t *result)
{
  v3 = *result;
  v2 = result[1];
  v4 = *v1;
  return result;
}

void OUTLINED_FUNCTION_6_25(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84560];

  sub_26B207D54(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_2_2()
{
  if (v0)
  {
    return v0 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1)
{
  *(a1 + 8) = sub_26B161438;
  v2 = *(v1 + 24);
  return *(v1 + 64);
}

void OUTLINED_FUNCTION_2_11()
{
  *(v1 - 208) = v0;
  v3 = *(v0 + 24);

  sub_26B166880();
}

uint64_t OUTLINED_FUNCTION_2_14()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_2_20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_26B2128F0();
}

void OUTLINED_FUNCTION_2_26(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a1[6].n128_u64[0] = v4;
  a1[4] = a3;
  a1[5] = a4;
  a1[3] = a2;
  a1[6].n128_u8[8] = 0;
}

uint64_t OUTLINED_FUNCTION_2_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, int a15, char a16)
{
  a13 = v17;
  a14 = v16;
  a15 = 17;
  a16 = 14;

  return static SQLError.Code.== infix(_:_:)(&a13, &a15);
}

uint64_t OUTLINED_FUNCTION_2_32()
{
  result = *(v0 + 208);
  v2 = *(v0 + 216);
  *(v0 + 280) = result;
  *(v0 + 288) = v2;
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  *(v0 + 296) = v3;
  *(v0 + 304) = v4;
  v5 = *(v0 + 240);
  *(v0 + 312) = v5;
  v6 = *(v0 + 248);
  *(v0 + 249) = v6;
  *(v0 + 16) = result;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x28211F3E0](&a9, a2, a2, v9, v9);
}

uint64_t OUTLINED_FUNCTION_2_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(a16 + 48);
  v18 = *(a16 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_2_39(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = v2;
  return a2;
}

uint64_t WeakArray.wrappedValue.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for _WeakValue();
  sub_26B212F50();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26B213300();
  v5 = *v1;
  swift_getKeyPath();
  sub_26B2128F0();
  swift_getWitnessTable();
  v3 = sub_26B212D30();

  return v3;
}

uint64_t WeakArray.wrappedValue.modify(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_2_39(a1, a2);
  *v2 = WeakArray.wrappedValue.getter(v3);
  return OUTLINED_FUNCTION_8_29();
}

uint64_t _s21ScalarFunctionOptionsVwst(uint64_t result, int a2, int a3)
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

uint64_t sub_26B14C2C0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_26B14C354(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x26D672400](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x26D672400](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void BloomFilter.init(estimatedCapacity:falsePositiveTolerance:optimizationAttempts:hashSeed:)(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  v6 = a5 >= 1.0 || a1 < 1;
  if (v6 || (a5 > 0.0 ? (v8 = a3 == 0) : (v8 = 1), v8))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v12 = ceil((logf(a5) * a1) / -0.480453014);
  if (v12 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v13 = ceil(v12 / 0.480453014);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_44;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (a2 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v29 = a3;
  v14 = 0;
  v15 = v12;
  v16 = v13;
  do
  {
    v17 = v14 * v16;
    if ((v14 * v16) >> 64 != (v14 * v16) >> 63)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v18 = v15 + v17;
    if (__OFADD__(v15, v17))
    {
      goto LABEL_36;
    }

    v19 = ceil(v18 / a1 * 0.693147181);
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_37;
    }

    if (v19 <= -9.22337204e18)
    {
      goto LABEL_38;
    }

    if (v19 >= 9.22337204e18)
    {
      goto LABEL_39;
    }

    v20 = v19;
    v21 = a1 * v19;
    if ((a1 * v19) >> 64 != v21 >> 63)
    {
      goto LABEL_40;
    }

    v22 = pow(1.0 - 1.0 / v18, v21);
    v23 = pow(1.0 - v22, v20);
    if (vabds_f32(v23, a5) < 0.005 || a2 == v14)
    {
      goto LABEL_30;
    }
  }

  while (!__OFADD__(v14++, 1));
  __break(1u);
LABEL_30:
  if (v18 >= 1 && v20 >= 1)
  {
    v27 = MEMORY[0x26D66F7D0](0, v18);
    *a4 = 0;
    a4[1] = v20;
    a4[2] = v29;
    a4[3] = v27;
    a4[4] = v28;
    a4[5] = v18;
    return;
  }

LABEL_48:
  __break(1u);
}

uint64_t sub_26B14C63C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = a3[2];
  v7 = a3[4];
  sub_26B2128F0();
  sub_26B2131D0();
  v8 = sub_26B2131E0();

  if ((v8 & 1) == 0)
  {
    sub_26B212390();
    v9 = v3[6];
    sub_26B212350();
    v3[1] = 0;
    v10 = v3[7];
    swift_beginAccess();
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    *(v10 + 16) = xmmword_26B215910;
    sub_26B156574(v11, v12);
  }

  sub_26B213200();
  swift_getWitnessTable();
  v13 = a3[3];
  result = BloomFilter.formUnion<A>(_:)();
  if (result)
  {
    v15 = v4[7];
    swift_beginAccess();
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    *(v15 + 16) = xmmword_26B215910;
    return sub_26B156574(v16, v17);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t _s21ScalarFunctionOptionsVwet(uint64_t a1, int a2)
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

uint64_t OUTLINED_FUNCTION_8_1()
{
  v2 = *(v0 - 336);
}

uint64_t OUTLINED_FUNCTION_8_4()
{
  *(v1 + 80) = *(v2 + 8);
  *(v1 + 88) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t OUTLINED_FUNCTION_8_7()
{

  return sub_26B2139C0();
}

uint64_t OUTLINED_FUNCTION_8_9()
{
  v1 = **(v0 - 432);
  result = *(v0 - 72);
  v3 = *(v0 - 328);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_10(uint64_t a1)
{
  *(a1 + 8) = sub_26B17E6EC;
  v2 = v1[17];
  result = v1[11];
  v4 = v1[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_8_11()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_8_13(uint64_t a1)
{
  *(a1 + 32) = v1;

  return sub_26B212AB0();
}

__n128 OUTLINED_FUNCTION_8_16()
{
  result = *(v0 + 16);
  v4 = *(v0 + 32);
  *(v2 - 256) = result;
  *(v2 - 240) = v4;
  *(v2 - 224) = *(v2 - 112);
  *(v2 - 216) = v1;
  return result;
}

void OUTLINED_FUNCTION_8_17(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

void OUTLINED_FUNCTION_8_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15)
{
  *(v17 + 4) = a14;
  *(v17 + 8) = a15;
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
}

uint64_t OUTLINED_FUNCTION_8_20(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 112);
  return v2;
}

uint64_t OUTLINED_FUNCTION_8_22()
{
  v3 = *(v0 + 8);

  return sub_26B2128F0();
}

uint64_t OUTLINED_FUNCTION_8_25()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0xE000000000000000;

  return sub_26B2136C0();
}

void OUTLINED_FUNCTION_8_26()
{
  v3 = *(v1 - 88);
  v4 = *(v1 - 72);

  j__os_unfair_lock_unlock(v0);
}

uint64_t OUTLINED_FUNCTION_8_28()
{

  return sub_26B211D40();
}

uint64_t sub_26B14CBB4(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = a1[1];
  v4 = a1[2];
  v6 = *a1;
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v5);
  }

  v7 = *a1;
  v8 = sub_26B2128F0();
  a3(v8, v5);
}

uint64_t WeakArray.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15 = *(a2 + 16);
  v4 = sub_26B212F50();
  v5 = type metadata accessor for _WeakValue();
  OUTLINED_FUNCTION_1_40();
  v6 = OUTLINED_FUNCTION_3_32();
  v12 = sub_26B14B604(v6, v7, v4, v5, v8, v9, v10, v11);

  v13 = *v3;

  *v3 = v12;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_3()
{

  return sub_26B2139B0();
}

uint64_t OUTLINED_FUNCTION_11_5()
{

  return sub_26B2139B0();
}

uint64_t OUTLINED_FUNCTION_13@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

void OUTLINED_FUNCTION_7_0()
{
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 48) = v1;
}

uint64_t OUTLINED_FUNCTION_11_12()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_14()
{
  v1 = v0[28];
  v2 = v0[29];
  result = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v8 = v0[18];
  v7 = v0[19];
  return result;
}

uint64_t OUTLINED_FUNCTION_11_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_18(uint64_t *a1)
{
  v2 = *a1;

  return swift_unknownObjectRetain();
}

uint64_t _s15SonicFoundation10WeakObjectV12wrappedValueACyxGxSg_tcfC_0()
{
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_42_1()
{
  v1[29] = *(v0 + 16);
  result = *(v0 + 24);
  v1[30] = result;
  v3 = v1[15];
  return result;
}

uint64_t OUTLINED_FUNCTION_42_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3[12];
  v5 = v3[13];
  v6 = v3[11];
  return v2;
}

uint64_t OUTLINED_FUNCTION_42_3()
{

  return sub_26B212B10();
}

uint64_t FeatureFlagsKey.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v6[3] = a1;
  v6[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  LOBYTE(v3) = sub_26B212120();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3 & 1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
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

void sub_26B14D16C(uint64_t (*a1)(void))
{
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    v4 = a1();

    if (v4)
    {
      sub_26B212A80();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

BOOL sub_26B14D208()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

uint64_t sub_26B14D274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + a3 - 8);
  v7 = type metadata accessor for _WeakValue();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t sub_26B14D32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 40);
  v10 = sub_26B14FD1C();
  static HashAlgorithm.hash<A>(_:)(a1, &type metadata for FNV1a, a2, v10, a3);
  v11 = static Murmur3.hash<A>(_:seed:)(a1, v8, a2, a3);
  result = sub_26B212100();
  if (v7 < 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v13 = v16 + v11;
    v14 = 1;
    while (v9)
    {
      result = sub_26B2120F0();
      if (v7 == v14)
      {
        return result;
      }

      v13 += v11;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t static Murmur3.hash<A>(_:seed:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  v13 = a2;
  v6 = *(a4 + 8);
  v7 = sub_26B14FEF8();
  v6(&v11, &type metadata for Murmur3, v7, a3, a4);
  Murmur3.finalize()(v11, v12);
  v9 = v8;

  return v9;
}

void sub_26B14D4CC()
{
  OUTLINED_FUNCTION_20_2();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_5(v6);
    if (v3)
    {
      OUTLINED_FUNCTION_0_11(v9, &qword_280D2CCD0, MEMORY[0x277D84B78]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v2;
      v10[3] = 2 * v11 - 64;
      if (v1)
      {
LABEL_9:
        v12 = OUTLINED_FUNCTION_7_6();
        sub_26B1734FC(v12, v13, v14);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v15 = OUTLINED_FUNCTION_11_4();
    memcpy(v15, v16, v17);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v7)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26B14D588(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v31 = sub_26B2120E0();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26B212110();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B14F238();
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v17 = MEMORY[0x277CC9A28];
  sub_26B14F2CC(&qword_280D2DA50, MEMORY[0x277CC9A28]);
  sub_26B212D10();
  v18 = *(v13 + 44);
  sub_26B14F2CC(&qword_280D2DA48, v17);
  v19 = (v3 + 8);
  do
  {
    sub_26B213270();
    sub_26B14F2CC(&qword_280D2DA58, MEMORY[0x277CC9A08]);
    v20 = v31;
    v21 = sub_26B212A20();
    (*v19)(v6, v20);
    if (v21)
    {
      break;
    }

    v22 = sub_26B2132E0();
    v24 = *v23;
    v22(v30, 0);
    sub_26B213280();
    v25 = *(v29 + 24);
    v26 = *(v29 + 32);
  }

  while ((sub_26B2123B0() & 1) != 0);
  sub_26B14DB50(v16, sub_26B14F238);
  return v21 & 1;
}

uint64_t SetBloomFilter.projectedValue.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2[1];
  v8[0] = *v2;
  v8[1] = v3;
  v5 = v2[3];
  v9 = v2[2];
  v4 = v9;
  v10 = v5;
  *a2 = v8[0];
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  return (*(*(a1 - 8) + 16))(&v7, v8, a1);
}

uint64_t sub_26B14D918(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26B14F044(a1, a2);
  }

  return a1;
}

uint64_t SetBloomFilter.protobufData.getter()
{
  v9 = *(v0 + 8);
  v10 = *(v0 + 24);
  v11 = *(v0 + 40);
  v1 = *(v0 + 56);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v2;
  if (v3 >> 60 == 15)
  {
    v4 = sub_26B156344();
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    *(v1 + 16) = v4;
    *(v1 + 24) = v7;
    sub_26B14F044(v4, v7);
    sub_26B156574(v5, v6);
  }

  sub_26B14D918(v2, v3);
  return v4;
}

uint64_t BloomFilter.insert<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_26B212110();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  v19 = *v3;
  v20 = *(v3 + 16);
  v21 = *(v3 + 24);
  v22 = *(v3 + 32);
  sub_26B2128F0();
  sub_26B14D32C(a1, a2, a3);

  v17 = sub_26B14D588(v16, v3);
  if (v17)
  {
    (*(v11 + 8))(v16, v8);
    return (v17 & 1) == 0;
  }

  sub_26B154DFC(v16, v4);
  result = (*(v11 + 8))(v16, v8);
  if (!__OFADD__(v19, 1))
  {
    *v4 = v19 + 1;
    return (v17 & 1) == 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B14DB50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void Murmur3.finalize()(unint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = 0;
  v4 = 0;
  v5 = a2 + 32;
  while (2)
  {
    v6 = 0;
    v7 = 8 * v4;
    for (i = v4; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_24;
      }

      if ((i - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_25;
      }

      v10 = v7 + v6;
      if (v7 + v6 <= -33 || v10 > 32)
      {
        goto LABEL_9;
      }

      if ((v10 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (v10 != -32)
      {
        v11 = *(v5 + i) >> (-(v6 + 8 * v4) & 0x18);
        goto LABEL_17;
      }

LABEL_9:
      if (v9 == v2)
      {
        goto LABEL_18;
      }

      v6 += 8;
    }

    if (v10 == 32)
    {
      goto LABEL_9;
    }

    v11 = *(v5 + i) << ((v6 + 8 * v4) & 0x18);
LABEL_17:
    v3 |= v11;
    v4 = i + 1;
    if (v9 != v2)
    {
      continue;
    }

    break;
  }

LABEL_18:
  if (__OFADD__(a1, v2))
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_1_18();
LABEL_20:
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
  }

  else if (!HIDWORD(a1))
  {
    return;
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_26B14DCE4(uint64_t *a1, void *a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v14 = sub_26B14F340(0, a4, a6, a7);
    result = sub_26B14F340(a4, a5, a6, a7);
    v16 = v14 + result;
    if (__OFADD__(v14, result))
    {
      __break(1u);
    }

    else if (v16 >= v14)
    {
      v17 = 0;
      if (v16 == v14 || !a3)
      {
        goto LABEL_19;
      }

      if (result >= a3)
      {
        v17 = a3;
      }

      else
      {
        v17 = result;
      }

      v18 = (a6 + v14);
      v19 = a2;
LABEL_18:
      memcpy(v19, v18, v17);
LABEL_19:
      v23 = sub_26B14F314(a4, v17, a6, a7);
      a1[3] = a7;
      a1[4] = v23;
      *a1 = a4;
      a1[1] = a5;
      a1[2] = a6;
      return v17;
    }

    __break(1u);
    goto LABEL_22;
  }

  v20 = sub_26B14F340(0, a4, 0, a7);
  result = sub_26B14F340(a4, a5, 0, a7);
  v21 = v20 + result;
  if (__OFADD__(v20, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = v21 == v20;
  if (v21 >= v20)
  {
    v17 = 0;
    if (v22 || !a3)
    {
      goto LABEL_19;
    }

    if (result >= a3)
    {
      v17 = a3;
    }

    else
    {
      v17 = result;
    }

    v19 = a2;
    v18 = 0;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_26B14DE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = sub_26B14F340(a1, a2, a3, a4);
  v11 = *(*v5 + 16);
  if (__OFADD__(v11, v10))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_26B14EC44(v11 + v10, 1);
  v4 = *v5;
  v12 = *(*v5 + 16);
  v13 = (*(*v5 + 24) >> 1) - v12;
  v14 = sub_26B14DCE4(&v30, (*v5 + v12 + 32), v13, a1, a2, a3, a4);
  if (v14 < v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v14 >= 1)
  {
    v15 = *(v4 + 16);
    v16 = __OFADD__(v15, v14);
    v17 = v15 + v14;
    if (v16)
    {
      __break(1u);
LABEL_37:
      *(v4 + 16) = v10 + 1;
      goto LABEL_7;
    }

    *(v4 + 16) = v17;
  }

  if (v14 != v13)
  {
LABEL_7:
    *v5 = v4;
    return;
  }

LABEL_10:
  v18 = v31;
  if (v34 == v31)
  {
    goto LABEL_7;
  }

  v19 = v30;
  if (v34 >= v30 && v34 < v31)
  {
    v21 = v32;
    if (v32)
    {
      v22 = v33 - v32;
    }

    else
    {
      v22 = 0;
    }

    if (v34 < 0 || v34 >= v22)
    {
      goto LABEL_40;
    }

    v10 = *(v4 + 16);
    v23 = *(v32 + v34);
    v24 = v34 + 1;
LABEL_22:
    v25 = *(v4 + 24) >> 1;
    if (v25 < v10 + 1)
    {
      v28 = v23;
      sub_26B14D4CC();
      v23 = v28;
      v4 = v29;
      v25 = *(v29 + 24) >> 1;
    }

    for (i = v24; ; ++i)
    {
      if (v10 >= v25)
      {
        *(v4 + 16) = v10;
        v24 = i;
        goto LABEL_22;
      }

      *(v4 + 32 + v10) = v23;
      if (v18 == i)
      {
        goto LABEL_37;
      }

      if (v24 < v19 || i >= v18)
      {
        break;
      }

      if (v24 < 0 || i >= v22)
      {
        goto LABEL_38;
      }

      v23 = *(v21 + i);
      ++v10;
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_26B14E000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B14FCC8();

  return StringProtocol.hash<A>(into:)(a1, a4, a2, v8, a3);
}

uint64_t static HashAlgorithm.hash<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_9_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 24))(v17, v16);
  (*(a5 + 8))(v15, a2, a4, a3, a5);
  (*(a4 + 40))(a2, a4);
  return (*(v10 + 8))(v15, a2);
}

uint64_t sub_26B14E1AC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v40 = a4;
  v38 = a2;
  v43 = a1;
  swift_getAssociatedTypeWitness();
  v6 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_0();
  v36 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = *(*(sub_26B2133E0() - 8) + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = *(*(swift_checkMetadataState() - 8) + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v19);
  v20 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_0();
  v37 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v35 - v25;
  v39 = a3;
  sub_26B211BF0();
  v43 = v26;
  sub_26B212D10();
  v27 = v20;
  swift_getAssociatedConformanceWitness();
  v28 = (v36 + 32);
  for (i = (v36 + 8); ; (*i)(v13, AssociatedTypeWitness))
  {
    sub_26B213460();
    if (__swift_getEnumTagSinglePayload(v17, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    v30 = (*v28)(v13, v17, AssociatedTypeWitness);
    MEMORY[0x28223BE20](v30);
    v31 = v39;
    *(&v35 - 6) = v38;
    *(&v35 - 5) = v31;
    v32 = v41;
    v33 = v42;
    *(&v35 - 4) = v40;
    *(&v35 - 3) = v33;
    *(&v35 - 2) = v32;
    swift_getAssociatedConformanceWitness();
    sub_26B211D60();
  }

  return (*(v37 + 8))(v43, v27);
}

uint64_t sub_26B14E54C(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[6];
  return (*(v4 + 32))(a1, a2, v3);
}

uint64_t sub_26B14E5B8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[5];
  return sub_26B14EFB4(a1, a2, v3[4], a3);
}

uint64_t OUTLINED_FUNCTION_28_0()
{
  v3 = *(v1 + v0);

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_28_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v5 - 96);

  return MEMORY[0x2821FCC68](v5 - 88, a2, a3, v4, v3);
}

void OUTLINED_FUNCTION_28_3(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8 * a1);

  JUMPOUT(0x26D671480);
}

uint64_t OUTLINED_FUNCTION_28_6(uint64_t a1)
{

  return sub_26B1AECD0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_28_7()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_9()
{
  *(v1 - 104) = v0;

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_28_10(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[6];
  v4 = v2[7];
  return v2[5];
}

uint64_t OUTLINED_FUNCTION_0_6()
{
  v1 = **(v0 - 304);
  result = *(v0 - 360);
  v3 = *(v0 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_7()
{

  return sub_26B15D26C(v2, v1, v0);
}

void OUTLINED_FUNCTION_0_11(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84560];

  sub_26B16CBDC(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_0_12(uint64_t a1, uint64_t a2)
{

  return sub_26B16E818(a1, a2, sub_26B16E89C);
}

uint64_t OUTLINED_FUNCTION_0_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return sub_26B2139E0();
}

uint64_t OUTLINED_FUNCTION_0_18()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return sub_26B214130();
}

void OUTLINED_FUNCTION_0_20(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84560];

  sub_26B182AA4(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_0_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_27()
{

  return sub_26B19937C(v3, v2, v1, v0, 1);
}

void OUTLINED_FUNCTION_0_28(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D857B8];

  sub_26B19E12C(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_0_29()
{

  return sub_26B214030();
}

__n128 OUTLINED_FUNCTION_0_34@<Q0>(uint64_t a1@<X8>, uint64_t a2, __n128 a3, __int128 a4, __int128 a5, uint64_t a6)
{
  result = a3;
  *(a1 + 96) = a6;
  *(a1 + 64) = a4;
  *(a1 + 80) = a5;
  *(a1 + 48) = a3;
  *(a1 + 104) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_0_35@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, __int128 a6, __int128 a7, uint64_t a8)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  result = a5;
  *(a1 + 96) = a8;
  *(a1 + 64) = a6;
  *(a1 + 80) = a7;
  *(a1 + 48) = a5;
  *(a1 + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_39(uint64_t result)
{
  *(result + 8) = sub_26B1F4460;
  v2 = *(v1 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_46()
{

  return sub_26B211CF0();
}

void Murmur3.update(bufferPointer:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v7 = v2[1];
  v6 = v2 + 1;
  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = 4 - v8;
  sub_26B1824FC(4 - v8, a1, a2);
  sub_26B14DE28(v10, v11, v12, v13);
  sub_26B16CE68(v9, v5, v4);
  if (v16)
  {
    v4 = v16 + v15;
  }

  else
  {
    v4 = 0;
  }

  if (v16)
  {
    v5 = v16 + v14;
  }

  else
  {
    v5 = 0;
  }

  if (*(*v6 + 16) == 4)
  {
    v17 = *(*v6 + 32);
    OUTLINED_FUNCTION_1_18();
    HIDWORD(v19) = v18 ^ *(v3 + 4);
    LODWORD(v19) = HIDWORD(v19);
    *(v3 + 4) = 5 * (v19 >> 19) - 430675100;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v3[1];
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_26B18E01C(0, *(v21 + 16));
    }

    else
    {
      v22 = *(v21 + 24);
      v23 = sub_26B18DD0C();

      *v6 = v23;
    }

    if (__OFADD__(*v3, 4))
    {
      goto LABEL_27;
    }

    *v3 += 4;
LABEL_14:
    if (v5)
    {
      v24 = (v4 - v5) / 4;
    }

    else
    {
      v24 = 0;
    }

    v25 = sub_26B14DFF4(v24, v5, v24);
    v28 = v26 - v25;
    if (v26 == v25)
    {
      goto LABEL_24;
    }

    v29 = *v3;
    v30 = 0x7FFFFFFFFFFFFFFCLL;
    if (*v3 > 0x7FFFFFFFFFFFFFFCLL)
    {
      v30 = *v3;
    }

    if (v26 + ~v25 < (v30 - v29 + 3) >> 2)
    {
      v31 = *(v3 + 4);
      v32 = (v27 + 4 * v25);
      do
      {
        v29 += 4;
        v33 = *v32++;
        HIDWORD(v34) = (461845907 * ((380141568 * v33) | ((-862048943 * v33) >> 17))) ^ v31;
        LODWORD(v34) = HIDWORD(v34);
        v31 = 5 * (v34 >> 19) - 430675100;
        --v28;
      }

      while (v28);
      *v3 = v29;
      *(v3 + 4) = v31;
LABEL_24:
      v35 = sub_26B14F8DC(4 * v24, v5, v4);
      sub_26B14DE28(v35, v36, v37, v38);
      return;
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t StringProtocol.hash<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_26B212AD0();
  OUTLINED_FUNCTION_9_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  sub_26B212AC0();
  v16 = sub_26B2134B0();
  v18 = v17;
  result = (*(v9 + 8))(v15, v7);
  if (v18 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v21 = v16;
    v22 = v18;
    v20 = sub_26B14FE8C();
    sub_26B14E1AC(&v21, a3, MEMORY[0x277CC9318], a5, v20);
    return sub_26B14FF4C(v21, v22);
  }

  return result;
}

uint64_t SetBloomFilter.wrappedValue.setter(uint64_t a1, void *a2)
{
  v3 = *v2;
  *v2 = a1;
  sub_26B14D8A4(v3, a2);
}

uint64_t sub_26B14EFB4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, _BYTE *a4@<X8>)
{
  v7 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = BloomFilter.insert<A>(_:)(a2, AssociatedTypeWitness, a3);
  *a4 = (result | v7) & 1;
  return result;
}

uint64_t sub_26B14F044(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void OUTLINED_FUNCTION_12_3()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_12_5()
{
  v3 = *(*(*(v1 - 208) + 48) + 16 * v0 + 8);
}

uint64_t OUTLINED_FUNCTION_12_7()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_12_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(*(a10 + 48) + 16 * v10 + 8);
}

uint64_t OUTLINED_FUNCTION_12_16()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_17()
{
  v2 = *(v0 + 249);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v6 = *(v0 + 288);
  v5 = *(v0 + 296);
  v7 = *(v0 + 280);
}

void OUTLINED_FUNCTION_12_18()
{

  JUMPOUT(0x26D670040);
}

void sub_26B14F238()
{
  if (!qword_280D2CCD8)
  {
    sub_26B212110();
    sub_26B14F2CC(&qword_280D2DA48, MEMORY[0x277CC9A28]);
    v0 = sub_26B213910();
    if (!v1)
    {
      atomic_store(v0, &qword_280D2CCD8);
    }
  }
}

uint64_t sub_26B14F2CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B14F314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = a4 - a3;
  if (!a3)
  {
    v6 = 0;
  }

  if (result < 0 || v6 < result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_26B14F340(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_31()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_25_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_25_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 72) = a1;
  *(v2 - 128) = a2;

  return sub_26B2133E0();
}

void OUTLINED_FUNCTION_25_4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_25_5(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a2 = v9;

  return sub_26B1E26EC(v9, &a9);
}

uint64_t OUTLINED_FUNCTION_25_6()
{

  return sub_26B1A8558(v0, v1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_25_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  result = a11 + 48;
  v12 = *(a11 + 48);
  return result;
}

void OUTLINED_FUNCTION_25_9()
{
  v1 = *(v0 - 128);
  *(v0 - 104) = *(v0 - 120);
  *(v0 - 96) = v1;
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_4_9()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{

  return sub_26B14B604(v19, &a9, v21, v20, v22, a6, a7, &a19);
}

uint64_t OUTLINED_FUNCTION_4_18()
{

  return sub_26B213B50();
}

void OUTLINED_FUNCTION_4_19()
{
  *(v2 - 208) = v0;
  *(v2 - 207) = *(v2 - 160);
  *(v2 - 204) = *(v1 + 3);
}

void OUTLINED_FUNCTION_4_21()
{

  sub_26B16AFCC();
}

uint64_t OUTLINED_FUNCTION_4_22(uint64_t a1)
{
  *(a1 + 8) = sub_26B1B0BF4;
  v2 = *(v1 + 112);
  v3 = *(v1 + 96);
  return v1 + 16;
}

uint64_t OUTLINED_FUNCTION_4_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 16) = v13;
  *(v11 + 24) = v14;
  *(v11 + 32) = v15;
  *(v11 + 40) = v16;
  *(v11 + 48) = v12;
  result = a11 + 8;
  v18 = *(a11 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_25()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_26@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_28()
{

  return sub_26B2134A0();
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_50_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  v8 = *(a2 + 32);
  *(v6 + 32) = v7;
  *(v6 + 48) = v8;
  return a6;
}

uint64_t OUTLINED_FUNCTION_50_4()
{

  return sub_26B2141F0();
}

void OUTLINED_FUNCTION_50_5(__n128 a1, __n128 a2, __n128 a3)
{
  v3[6].n128_u64[0] = v4;
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
}

uint64_t sub_26B14F8DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3 - a2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B14F900(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

unsigned __int8 *FNV1a.update(bufferPointer:)(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result && result != a2)
  {
    v3 = *v2;
    do
    {
      v4 = *result++;
      v3 = 0x100000001B3 * (v3 ^ v4);
    }

    while (result != a2);
    *v2 = v3;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_13_1()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

void OUTLINED_FUNCTION_13_2()
{
  *(v0 + 16) = v1;
  v6 = v0 + 16 * v4;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  v7 = *(v5 - 160);
}

uint64_t OUTLINED_FUNCTION_13_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[8];
  v4 = v2[9];
  v5 = v2[6];
  v6 = v2[7];
  return v2[5];
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1)
{
  *(v1 - 72) = a1;

  return sub_26B212F50();
}

uint64_t OUTLINED_FUNCTION_13_11(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = *(v1 + 32);
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_13_12(uint64_t result)
{
  v1 = *(result + 24) >> 1;
  v2 = *(result + 16) + 1;
  return result;
}

void OUTLINED_FUNCTION_13_14()
{
  *v2 = v0;
  *(v2 + 8) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 40) = 64;
}

void OUTLINED_FUNCTION_13_15(unint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  v4[6].n128_u64[0] = a1;
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v4[6].n128_u8[8] = 0;
  v6 = *(v5 + 24);
}

uint64_t OUTLINED_FUNCTION_13_17()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_20()
{

  return sub_26B212DF0();
}

uint64_t OUTLINED_FUNCTION_16_3()
{

  return sub_26B213E30();
}

uint64_t OUTLINED_FUNCTION_16_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void OUTLINED_FUNCTION_16_7()
{

  sub_26B16AFCC();
}

uint64_t OUTLINED_FUNCTION_16_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3[8];
  v5 = v3[9];
  v6 = v3[7];
  return v2;
}

uint64_t OUTLINED_FUNCTION_16_11(uint64_t result)
{
  *(result + 8) = sub_26B1DE95C;
  v2 = *(v1 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_12()
{

  return sub_26B213E30();
}

unint64_t sub_26B14FCC8()
{
  result = qword_280D2DB68[0];
  if (!qword_280D2DB68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D2DB68);
  }

  return result;
}

unint64_t sub_26B14FD1C()
{
  result = qword_280D2CF30;
  if (!qword_280D2CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2CF30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_3(uint64_t a1)
{
  result = v1[14];
  v4 = v1[9];
  v5 = v1[10];
  v1[4] = a1;
  v6 = *(v5 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 40);
  return result;
}

__n128 OUTLINED_FUNCTION_98()
{
  v1 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v1;
  result = *(v0 + 48);
  v3 = *(v0 + 64);
  *(v0 + 176) = result;
  *(v0 + 192) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_10@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 112) = a1;

  return sub_26B2133E0();
}

unint64_t sub_26B14FE8C()
{
  result = qword_280D2DA68;
  if (!qword_280D2DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2DA68);
  }

  return result;
}

unint64_t sub_26B14FEF8()
{
  result = qword_280D2CE68[0];
  if (!qword_280D2CE68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D2CE68);
  }

  return result;
}

uint64_t sub_26B14FF4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26B14FFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 32) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_26B2123F0();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26B150068(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 24) = 0;
    *(result + 32) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_26B2123F0();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26B1500F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_1(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B150130(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_1(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SQLTableFunctionCursorArguments(uint64_t result, int a2, int a3)
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

__n128 sub_26B1501A0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_26B150350()
{
  OUTLINED_FUNCTION_27_0();
  v1 = sub_26B213880();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_26B2138A0();
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = (*(v11 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_28();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

uint64_t sub_26B150514(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26B15052C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B1505DC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

char *sub_26B150614(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_26B150634(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_26B15065C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_26B150680(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

uint64_t sub_26B150710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B213020();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(a3 + 20);
  }

  else
  {
    sub_26B176B7C();
    v7 = v9;
    v8 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
}

uint64_t sub_26B1507AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26B213020();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(a4 + 20);
  }

  else
  {
    sub_26B176B7C();
    v9 = v11;
    v10 = *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

uint64_t sub_26B150850()
{
  v1 = sub_26B213020();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_26B15091C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B150958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_26B1509B4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26B150AC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26B150B08()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  OUTLINED_FUNCTION_18_4();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_26B150B78()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_26B150BBC@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_26B150C58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B150C94()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26B150D14()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B150D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26B213E30();
  }
}

uint64_t sub_26B150E10()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[9];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26B150E58()
{
  MEMORY[0x26D6724E0](v0 + 16);
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_26B150EF0()
{
  if (MEMORY[0x277D85020])
  {
    sub_26B198FBC();
  }
}

uint64_t sub_26B150F34()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26B150F6C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B150FEC()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_40();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_26B151028()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32) != 1)
  {
  }

  OUTLINED_FUNCTION_40();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

BOOL sub_26B15106C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_26B1510A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B1510E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B15111C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B15115C()
{
  v1 = OUTLINED_FUNCTION_9_11();
  sub_26B19E12C(v1, v2, v3, v4);
  v6 = v5;
  OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = (v9 + 57) & ~v9;
  v12 = *(v11 + 64);
  v13 = *(v0 + 2);

  v14 = *(v0 + 4);

  v15 = *(v0 + 6);

  (*(v8 + 8))(&v0[v10], v6);

  return MEMORY[0x2821FE8E8](v0, v10 + v12, v9 | 7);
}

uint64_t sub_26B151244()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_26B151298(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 48);
  OUTLINED_FUNCTION_8_15(a1);
}

__n128 sub_26B1512D4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

void sub_26B1512E8(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v2 = *(a2 + 56);
  v3 = *(a2 + 64);
  OUTLINED_FUNCTION_8_15(a1);
}

uint64_t sub_26B15136C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  sub_26B212150();

  return swift_getWitnessTable();
}

uint64_t sub_26B1513B8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  type metadata accessor for LRUDictionary.Container();
  sub_26B212270();
  OUTLINED_FUNCTION_1_21();
  swift_getWitnessTable();
  sub_26B2138C0();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

__n128 sub_26B1514E8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26B1514F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ProtobufData();

  return swift_getWitnessTable();
}

void *sub_26B15153C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

void sub_26B151548(void *a1@<X8>, void *a2@<X0>)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
  OUTLINED_FUNCTION_8_17(a1);
}

uint64_t sub_26B151564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SQLDatabase.Location(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26B1515EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SQLDatabase.Location(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26B1516D4()
{
  v1 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26B1517D4@<X0>(uint64_t *a1@<X8>)
{
  result = SQLDatabase.AutoVacuumMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26B15186C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B1518A4()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26B151920()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26B151A0C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_26B151DE8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

BOOL sub_26B151F24@<W0>(Swift::OpaquePointer a1@<X0>, _BYTE *a2@<X8>)
{
  result = Bool.init(functionArgument:)(a1);
  if (!v4)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_26B151F60@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int *a2@<X8>)
{
  result = Int.init(functionArgument:)(a1);
  if (!v4)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_26B151FA8@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X8>)
{
  result = Int.init(statement:index:)(a1, a2);
  if (!v5)
  {
    *a3 = result;
  }

  return result;
}

Swift::UInt sub_26B152000@<X0>(Swift::OpaquePointer a1@<X0>, Swift::UInt *a2@<X8>)
{
  result = UInt.init(functionArgument:)(a1);
  if (!v4)
  {
    *a2 = result;
  }

  return result;
}

Swift::UInt sub_26B152048@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, Swift::UInt *a3@<X8>)
{
  result = UInt.init(statement:index:)(a1, a2);
  if (!v5)
  {
    *a3 = result;
  }

  return result;
}

void sub_26B1520A0(Swift::OpaquePointer a1@<X0>, double *a2@<X8>)
{
  v3 = Double.init(functionArgument:)(a1);
  if (!v4)
  {
    *a2 = v3;
  }
}

double sub_26B1520CC()
{
  v1 = *v0;
  Double.debugSQL.getter();
  return result;
}

void sub_26B1520D8(Swift::OpaquePointer a1@<X0>, float *a2@<X8>)
{
  v3 = Float.init(functionArgument:)(a1);
  if (!v4)
  {
    *a2 = v3;
  }
}

float sub_26B152104()
{
  v1 = *v0;
  Float.debugSQL.getter();
  return result;
}

void sub_26B15210C()
{
  v1 = *v0;
  v2 = v0[1];
  String.debugSQL.getter();
}

void sub_26B152144()
{
  v1 = *v0;
  v2 = v0[1];
  Data.debugSQL.getter();
}

uint64_t sub_26B15214C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_2(a1, a2, a3);
  result = swift_getWitnessTable();
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_26B152194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_2(a1, a2, a3);
  result = swift_getWitnessTable();
  *(v3 + 8) = result;
  return result;
}

uint64_t sub_26B1522C0(uint64_t *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = *a1;
  return sub_26B212130();
}

uint64_t sub_26B152368()
{
  sub_26B1F71A8(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B1523DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_93_1();
  v6 = sub_26B211EF0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26B152488(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26B211EF0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26B152534()
{
  v1 = sub_26B211EF0();
  OUTLINED_FUNCTION_0(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = OUTLINED_FUNCTION_59_0();
  v7(v6);
  v8 = *(v0 + v4);

  v9 = OUTLINED_FUNCTION_110_1();

  return MEMORY[0x2821FE8E8](v9, v10, v11);
}

uint64_t sub_26B1525F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B15262C(uint64_t a1)
{
  OUTLINED_FUNCTION_27_10(a1, &qword_2803E79B0, MEMORY[0x277D837D0]);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = v1[2];
  swift_unknownObjectRelease();
  v8 = v1[4];

  v9 = v1[5];

  v10 = OUTLINED_FUNCTION_59_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_110_1();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_26B152704()
{
  v1 = sub_26B211EF0();
  OUTLINED_FUNCTION_27(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26B152798()
{
  v1 = sub_26B211EF0();
  OUTLINED_FUNCTION_0(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = OUTLINED_FUNCTION_59_0();
  v9(v8);
  v10 = OUTLINED_FUNCTION_110_1();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_26B15284C()
{
  v1 = sub_26B211EF0();
  OUTLINED_FUNCTION_0(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = OUTLINED_FUNCTION_59_0();
  v7(v6);
  v8 = OUTLINED_FUNCTION_110_1();

  return MEMORY[0x2821FE8E8](v8, v9, v10);
}

uint64_t sub_26B152A48()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 sub_26B152AB4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_26B152AC8(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRetain();
  return _s15SonicFoundation10WeakObjectV12wrappedValueACyxGxSg_tcfC_0();
}

uint64_t sub_26B152B2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26B152B78()
{
  v1 = *(v0 + 4);
  v2 = sub_26B213080();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 72) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 7);

  v9 = *(v0 + 8);

  (*(v3 + 8))(&v0[v5], v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

char *sub_26B152C58(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_26B152C78(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

uint64_t Sonic_Foundation_BloomFilter.bits.getter()
{
  v1 = *(v0 + 24);
  sub_26B14F044(v1, *(v0 + 32));
  return v1;
}

uint64_t Sonic_Foundation_BloomFilter.bits.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26B14FF4C(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Sonic_Foundation_BloomFilter.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Sonic_Foundation_BloomFilter() + 36);
  v4 = sub_26B2123F0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Sonic_Foundation_BloomFilter()
{
  result = qword_280D2D8F8;
  if (!qword_280D2D8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Sonic_Foundation_BloomFilter.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Sonic_Foundation_BloomFilter() + 36);
  v4 = sub_26B2123F0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Sonic_Foundation_BloomFilter.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xC000000000000000;
  v1 = a1 + *(type metadata accessor for Sonic_Foundation_BloomFilter() + 36);
  return sub_26B2123E0();
}

uint64_t sub_26B153058()
{
  v0 = sub_26B212550();
  __swift_allocate_value_buffer(v0, qword_2803E6A58);
  __swift_project_value_buffer(v0, qword_2803E6A58);
  sub_26B1541C0();
  sub_26B154218();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26B2151F0;
  v5 = v19 + v4;
  v6 = v19 + v4 + *(v2 + 56);
  *(v19 + v4) = 1;
  *v6 = "size";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26B212530();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "count";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "hash_count";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21888];
  v9();
  v14 = (v5 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "hash_seed";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 8;
  *v17 = "bits";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v9();
  return sub_26B212540();
}

uint64_t static Sonic_Foundation_BloomFilter._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2803E6A50 != -1)
  {
    swift_once();
  }

  v2 = sub_26B212550();
  v3 = __swift_project_value_buffer(v2, qword_2803E6A58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t Sonic_Foundation_BloomFilter.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_26B212460();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_2();
        sub_26B212480();
        break;
      case 4:
        OUTLINED_FUNCTION_2();
        sub_26B212490();
        break;
      case 8:
        OUTLINED_FUNCTION_2();
        sub_26B212470();
        break;
      default:
        continue;
    }
  }
}

uint64_t Sonic_Foundation_BloomFilter.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = v0;
  if (!*v0 || (OUTLINED_FUNCTION_0_3(), result = sub_26B212510(), (v2 = v1) == 0))
  {
    if (!*(v0 + 4) || (OUTLINED_FUNCTION_0_3(), result = sub_26B212510(), (v2 = v1) == 0))
    {
      if (!*(v0 + 8) || (OUTLINED_FUNCTION_0_3(), result = sub_26B212510(), (v2 = v1) == 0))
      {
        if (!*(v0 + 16) || (OUTLINED_FUNCTION_0_3(), result = sub_26B212520(), (v2 = v1) == 0))
        {
          v5 = *(v0 + 24);
          if (sub_26B153580(*(v3 + 24), *(v3 + 32)) || (result = sub_26B212500(), !v2))
          {
            v6 = v3 + *(type metadata accessor for Sonic_Foundation_BloomFilter() + 36);
            OUTLINED_FUNCTION_2();
            return sub_26B2123D0();
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_26B153580(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t static Sonic_Foundation_BloomFilter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || (MEMORY[0x26D66F410](*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Sonic_Foundation_BloomFilter() + 36);
  sub_26B2123F0();
  sub_26B153998(&qword_2803E6AE8, MEMORY[0x277D216C8]);
  return sub_26B212A20() & 1;
}

uint64_t Sonic_Foundation_BloomFilter.hashValue.getter()
{
  sub_26B214030();
  type metadata accessor for Sonic_Foundation_BloomFilter();
  sub_26B153998(&qword_2803E6AF0, type metadata accessor for Sonic_Foundation_BloomFilter);
  sub_26B2129A0();
  return sub_26B214070();
}

uint64_t (*sub_26B153778(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_26B1537D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B153998(&qword_2803E6B28, type metadata accessor for Sonic_Foundation_BloomFilter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26B153854(uint64_t a1)
{
  v2 = sub_26B153998(qword_280D2D910, type metadata accessor for Sonic_Foundation_BloomFilter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26B1538C4()
{
  sub_26B153998(qword_280D2D910, type metadata accessor for Sonic_Foundation_BloomFilter);

  return sub_26B2124E0();
}

uint64_t sub_26B153940()
{
  sub_26B214030();
  sub_26B2129A0();
  return sub_26B214070();
}

uint64_t sub_26B153998(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B153B68()
{
  result = sub_26B2123F0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s10ConnectionC6LimitsVwet(uint64_t a1, int a2)
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

uint64_t _s10ConnectionC6LimitsVwst(uint64_t result, int a2, int a3)
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

uint64_t sub_26B153CA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B153CC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

uint64_t sub_26B153D20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 648))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B153D40(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 632) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 648) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26B153E58(uint64_t a1, id *a2)
{
  result = sub_26B212A60();
  *a2 = 0;
  return result;
}

uint64_t sub_26B153ED4(uint64_t a1, id *a2)
{
  v3 = sub_26B212A70();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26B153F54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B15476C();
  *a1 = result;
  return result;
}

uint64_t sub_26B153F84()
{
  v0 = sub_26B212A80();
  v1 = MEMORY[0x26D6700E0](v0);

  return v1;
}

uint64_t sub_26B153FC4()
{
  sub_26B212A80();
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_26B154020(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_26B195DE4();
}

uint64_t sub_26B15402C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26B212A50();

  *a2 = v5;
  return result;
}

uint64_t sub_26B154074@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B1AA6EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26B1540A0(uint64_t a1)
{
  v2 = sub_26B153998(&qword_2803E6BA0, type metadata accessor for URLResourceKey);
  v3 = sub_26B153998(&qword_2803E6BA8, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
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

void sub_26B1541C0()
{
  if (!qword_2803E6B30)
  {
    sub_26B154218();
    v0 = sub_26B213BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E6B30);
    }
  }
}

void sub_26B154218()
{
  if (!qword_2803E6B38)
  {
    sub_26B212530();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803E6B38);
    }
  }
}

uint64_t sub_26B154288(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 184))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 149);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B1542D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *(result + 149) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26B154388(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 200))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B1543DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_26B1544BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B1544DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_26B154524(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 352))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B154544(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 352) = v3;
  return result;
}

uint64_t sub_26B1545E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 296))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B154608(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 264) = 0u;
    *(result + 280) = 0u;
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

  *(result + 296) = v3;
  return result;
}

uint64_t sub_26B15476C()
{
  sub_26B212A80();
  v0 = sub_26B212A50();

  return v0;
}

uint64_t sub_26B1547B0(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 255) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 255) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        return 0;
      }

      return (*a1 | (v4 << 8)) - 255;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  return 0;
}

_BYTE *sub_26B15481C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
        goto LABEL_19;
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
        break;
      case 2:
        *(result + 1) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 1) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_26B154914(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 76))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B154934(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 76) = v3;
  return result;
}

uint64_t sub_26B154990(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B1549B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 104) = v3;
  return result;
}

uint64_t sub_26B154A10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B154A30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 144) = v3;
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

uint64_t sub_26B154AA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B154AC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_26B154B00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B154B20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

void sub_26B154B84(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_26B154BE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + a4;
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(v4 - 8);
  v8 = *a1;
  v9 = type metadata accessor for SetBloomFilter();
  v10 = sub_26B2128F0();
  return SetBloomFilter.wrappedValue.setter(v10, v9);
}

uint64_t (*SetBloomFilter.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = *v2;
  a1[1] = a2;
  sub_26B2128F0();
  return sub_26B154C88;
}

uint64_t sub_26B154C88(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    return SetBloomFilter.wrappedValue.setter(*a1, v3);
  }

  v5 = *a1;
  v6 = sub_26B2128F0();
  SetBloomFilter.wrappedValue.setter(v6, v3);
}

uint64_t SetBloomFilter.bloomFilter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = *(v1 + 40);
  return sub_26B2128F0();
}

uint64_t BloomFilter.protobufData.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_26B156344();
}

Swift::Void __swiftcall BloomFilter.removeAll()()
{
  sub_26B212390();
  v1 = v0[5];
  sub_26B212350();
  *v0 = 0;
}

void sub_26B154D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 * a1) >> 64 == (a2 * a1) >> 63)
  {
    v4 = pow(1.0 - 1.0 / a3, (a2 * a1));
    pow(1.0 - v4, a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26B154DFC(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = sub_26B2120E0();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_26B212110();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26B14F238();
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v11, a1, v7);
  v17 = MEMORY[0x277CC9A28];
  sub_26B14F2CC(&qword_280D2DA50, MEMORY[0x277CC9A28]);
  sub_26B212D10();
  v18 = *(v13 + 44);
  sub_26B14F2CC(&qword_280D2DA48, v17);
  v19 = (v25 + 8);
  while (1)
  {
    sub_26B213270();
    sub_26B14F2CC(&qword_280D2DA58, MEMORY[0x277CC9A08]);
    v20 = sub_26B212A20();
    (*v19)(v6, v3);
    if (v20)
    {
      break;
    }

    v21 = sub_26B2132E0();
    v23 = *v22;
    v21(v26, 0);
    sub_26B213280();
    sub_26B2123C0();
  }

  return sub_26B14DB50(v16, sub_26B14F238);
}

uint64_t BloomFilter.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a3;
  v5 = sub_26B2120E0();
  v6 = OUTLINED_FUNCTION_0(v5);
  v43 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  sub_26B14F238();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  v19 = sub_26B212110();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v20);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v40 - v28;
  v30 = *(v3 + 2);
  v31 = *(v3 + 3);
  v45 = *v3;
  v46 = v30;
  v47 = v31;
  v44 = v31;
  v40 = v3[2];
  v48 = v40;
  sub_26B14D32C(a1, v41, v42);
  v41 = v29;
  v42 = v22;
  (*(v22 + 16))(v27, v29, v19);
  v32 = MEMORY[0x277CC9A28];
  sub_26B14F2CC(&qword_280D2DA50, MEMORY[0x277CC9A28]);
  sub_26B212D10();
  v33 = *(v14 + 44);
  sub_26B14F2CC(&qword_280D2DA48, v32);
  v34 = (v43 + 8);
  v43 = v40;
  do
  {
    sub_26B213270();
    sub_26B14F2CC(&qword_280D2DA58, MEMORY[0x277CC9A08]);
    v35 = sub_26B212A20();
    (*v34)(v12, v5);
    if (v35)
    {
      break;
    }

    v36 = sub_26B2132E0();
    v38 = *v37;
    v36(&v45, 0);
    sub_26B213280();
  }

  while ((sub_26B2123B0() & 1) != 0);
  sub_26B14DB50(v18, sub_26B14F238);
  (*(v42 + 8))(v41, v19);
  return v35 & 1;
}

uint64_t sub_26B1554AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B213E30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E756F4368736168 && a2 == 0xE900000000000074;
    if (v6 || (sub_26B213E30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465655368736168 && a2 == 0xE800000000000000;
      if (v7 || (sub_26B213E30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1937008994 && a2 == 0xE400000000000000;
        if (v8 || (sub_26B213E30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1702521203 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_26B213E30();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_26B155660(unsigned __int8 a1)
{
  sub_26B214030();
  MEMORY[0x26D671480](a1);
  return sub_26B214070();
}

uint64_t sub_26B1556A8(char a1)
{
  result = 0x746E756F63;
  switch(a1)
  {
    case 1:
      result = 0x6E756F4368736168;
      break;
    case 2:
      result = 0x6465655368736168;
      break;
    case 3:
      result = 1937008994;
      break;
    case 4:
      result = 1702521203;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B155750()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](v1);
  return sub_26B214070();
}

uint64_t sub_26B15579C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B1554AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B1557E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B155658();
  *a1 = result;
  return result;
}

uint64_t sub_26B15580C(uint64_t a1)
{
  v2 = sub_26B15697C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B155848(uint64_t a1)
{
  v2 = sub_26B15697C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BloomFilter.encode(to:)(void *a1)
{
  sub_26B156A68(0, &qword_2803E6BF8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_0(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v21 - v11;
  v14 = *v1;
  v13 = v1[1];
  v15 = v1[3];
  v24 = v1[2];
  v25 = v13;
  v16 = v1[5];
  v22 = v1[4];
  v23 = v15;
  v21[1] = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B15697C();
  sub_26B214120();
  LOBYTE(v26) = 0;
  OUTLINED_FUNCTION_2_0();
  sub_26B213B40();
  if (!v2)
  {
    v18 = v23;
    v19 = v22;
    LOBYTE(v26) = 1;
    OUTLINED_FUNCTION_2_0();
    sub_26B213B40();
    LOBYTE(v26) = 2;
    OUTLINED_FUNCTION_2_0();
    sub_26B213B60();
    v26 = v18;
    v27 = v19;
    v28 = 3;
    sub_26B156A14();
    OUTLINED_FUNCTION_2_0();
    sub_26B213B50();
    LOBYTE(v26) = 4;
    OUTLINED_FUNCTION_2_0();
    sub_26B213B40();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t BloomFilter.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_26B156A68(0, &qword_2803E6C10, MEMORY[0x277D844C8]);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B15697C();
  sub_26B2140F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_1_0();
  v10 = sub_26B213AE0();
  OUTLINED_FUNCTION_1_0();
  v11 = sub_26B213AE0();
  LOBYTE(v17) = 2;
  OUTLINED_FUNCTION_1_0();
  v16 = sub_26B213B00();
  sub_26B156ACC();
  sub_26B213AF0();
  OUTLINED_FUNCTION_1_0();
  v12 = sub_26B213AE0();
  v13 = OUTLINED_FUNCTION_5();
  v14(v13);
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v16;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = v12;
  sub_26B2128F0();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static BloomFilter.== infix(_:_:)(void *a1, void *a2)
{
  if (a1[5] == a2[5] && *a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    v6 = a2[3];
    v7 = a2[4];
    v10 = a1 + 3;
    v8 = a1[3];
    v9 = v10[1];
    JUMPOUT(0x26D66F790);
  }

  return 0;
}

uint64_t BloomFilter.init(message:)@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = *(a1 + 2);
  v7 = *(a1 + 3);
  v9 = *(a1 + 4);
  sub_26B14F044(v7, v9);
  v10 = sub_26B157044(v7, v9);
  if (v2)
  {
    return OUTLINED_FUNCTION_3_0();
  }

  v13 = v10;
  v14 = v11;
  result = OUTLINED_FUNCTION_3_0();
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v13;
  a2[4] = v14;
  a2[5] = v4;
  return result;
}

uint64_t BloomFilter.message.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  type metadata accessor for Sonic_Foundation_BloomFilter();
  sub_26B14F2CC(qword_280D2D910, type metadata accessor for Sonic_Foundation_BloomFilter);
  return sub_26B2124F0();
}

uint64_t sub_26B155E80(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[5];
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = a1;
  *a1 = v3;
  v5 = *a2;
  if (*a2 < 0xFFFFFFFF80000000)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(a1 + 1) = v5;
  v6 = a2[1];
  if (v6 < 0xFFFFFFFF80000000)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(a1 + 2) = v6;
  v7 = a2[3];
  a1[2] = a2[2];
  v8 = a2[4];
  v9 = type metadata accessor for BitArrayDataEncoder();
  swift_allocObject();
  v10 = sub_26B158468();
  v14[3] = v9;
  v14[4] = sub_26B14F2CC(qword_280D2CF40, type metadata accessor for BitArrayDataEncoder);
  v14[0] = v10;

  sub_26B212380();
  a1 = v14;
  if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    swift_beginAccess();
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    sub_26B14F044(v11, v12);

    result = sub_26B14FF4C(v4[3], v4[4]);
    v4[3] = v11;
    v4[4] = v12;
    return result;
  }

LABEL_15:
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

double BloomFilter.init(protobufData:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26B1560BC(a1, a2, &v9);
  if (!v3)
  {
    v6 = v10;
    v7 = v11;
    result = *&v9;
    v8 = v12;
    *a3 = v9;
    *(a3 + 16) = v6;
    *(a3 + 24) = v7;
    *(a3 + 32) = v8;
  }

  return result;
}

uint64_t sub_26B1560BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_26B212410();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for Sonic_Foundation_BloomFilter();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v32 = a1;
  v33 = a2;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  sub_26B14F044(a1, a2);
  sub_26B212400();
  sub_26B14F2CC(qword_280D2D910, type metadata accessor for Sonic_Foundation_BloomFilter);
  sub_26B2124B0();
  if (v3)
  {
    return sub_26B14FF4C(a1, a2);
  }

  sub_26B156FB8(v15, v13);
  v17 = v13[1];
  v34 = *v13;
  v18 = v13[2];
  v19 = *(v13 + 3);
  v27 = *(v13 + 2);
  v28 = v18;
  v20 = *(v13 + 4);
  sub_26B14F044(v19, v20);
  v21 = sub_26B157044(v19, v20);
  v23 = v22;
  sub_26B14FF4C(a1, a2);
  sub_26B14DB50(v13, type metadata accessor for Sonic_Foundation_BloomFilter);
  result = sub_26B14DB50(v15, type metadata accessor for Sonic_Foundation_BloomFilter);
  v24 = v27;
  v25 = v28;
  *a3 = v17;
  a3[1] = v25;
  a3[2] = v24;
  a3[3] = v21;
  v26 = v34;
  a3[4] = v23;
  a3[5] = v26;
  return result;
}

uint64_t sub_26B156344()
{
  v1 = sub_26B212430();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Sonic_Foundation_BloomFilter();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v0;
  sub_26B14F2CC(qword_280D2D910, type metadata accessor for Sonic_Foundation_BloomFilter);
  sub_26B2124F0();
  sub_26B212420();
  sub_26B2124C0();
  (*(v2 + 8))(v5, v1);
  sub_26B14DB50(v9, type metadata accessor for Sonic_Foundation_BloomFilter);
  return v13;
}

uint64_t sub_26B156574(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26B14FF4C(a1, a2);
  }

  return a1;
}

uint64_t sub_26B1565C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v9 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  if (sub_26B212EF0())
  {
    sub_26B213690();
    v14 = sub_26B213680();
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  v38 = sub_26B212EF0();
  if (v38)
  {
    v35 = v7;
    v36 = v5;
    v15 = 0;
    v43 = (v6 + 16);
    v44 = v14 + 56;
    v40 = (v6 + 32);
    v42 = v6 + 8;
    v37 = v13;
    while (1)
    {
      v16 = sub_26B212EE0();
      sub_26B212E80();
      if (v16)
      {
        v17 = *(v6 + 16);
        result = v17(v13, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15), a2);
      }

      else
      {
        v41 = v15;
        result = sub_26B213730();
        if (v35 != 8)
        {
          goto LABEL_23;
        }

        v46 = result;
        v17 = *v43;
        (*v43)(v13, &v46, a2);
        result = swift_unknownObjectRelease();
        v15 = v41;
      }

      v41 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v39 = *v40;
      v39(v45, v13, a2);
      v19 = *(v14 + 40);
      v20 = sub_26B212990();
      v21 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v22 = v20 & v21;
        v23 = (v20 & v21) >> 6;
        v24 = *(v44 + 8 * v23);
        v25 = 1 << (v20 & v21);
        if ((v25 & v24) == 0)
        {
          break;
        }

        v26 = v14;
        v17(v9, (*(v14 + 48) + *(v6 + 72) * v22), a2);
        v27 = a3;
        v28 = *(a3 + 8);
        v29 = sub_26B212A20();
        v30 = *(v6 + 8);
        v30(v9, a2);
        if (v29)
        {
          v30(v45, a2);
          a3 = v27;
          v13 = v37;
          v14 = v26;
          v15 = v41;
          goto LABEL_16;
        }

        v20 = v22 + 1;
        a3 = v27;
        v14 = v26;
      }

      v31 = v45;
      *(v44 + 8 * v23) = v25 | v24;
      result = (v39)(*(v14 + 48) + *(v6 + 72) * v22, v31, a2);
      v32 = *(v14 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      v13 = v37;
      v15 = v41;
      if (v33)
      {
        goto LABEL_22;
      }

      *(v14 + 16) = v34;
LABEL_16:
      v5 = v36;
      if (v15 == v38)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v14;
  }

  return result;
}

unint64_t sub_26B15697C()
{
  result = qword_2803E6C00;
  if (!qword_2803E6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6C00);
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

unint64_t sub_26B156A14()
{
  result = qword_2803E6C08;
  if (!qword_2803E6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6C08);
  }

  return result;
}

void sub_26B156A68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_26B15697C();
    v7 = a3(a1, &type metadata for BloomFilter.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_26B156ACC()
{
  result = qword_2803E6C18;
  if (!qword_2803E6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6C18);
  }

  return result;
}

uint64_t sub_26B156B84(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26B156BC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26B156C28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26B156C68(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for BloomFilter.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BloomFilter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26B156E2C()
{
  result = qword_2803E6C20;
  if (!qword_2803E6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6C20);
  }

  return result;
}

unint64_t sub_26B156E84()
{
  result = qword_2803E6C28;
  if (!qword_2803E6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6C28);
  }

  return result;
}

unint64_t sub_26B156EDC()
{
  result = qword_2803E6C30;
  if (!qword_2803E6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6C30);
  }

  return result;
}

unint64_t sub_26B156F30(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x26D672400](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      while (v4 > v3)
      {
        v5 = 0;
        MEMORY[0x26D672400](&v5, 8);
        v3 = v5 * v2;
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B156FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sonic_Foundation_BloomFilter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B157044(uint64_t a1, unint64_t a2)
{
  type metadata accessor for BitArrayDataDecoder();
  swift_allocObject();
  sub_26B14F044(a1, a2);
  sub_26B15712C(a1, a2);
  sub_26B15898C(&qword_2803E6C40, type metadata accessor for BitArrayDataDecoder);
  v4 = sub_26B212370();
  sub_26B14FF4C(a1, a2);
  return v4;
}

void *sub_26B15712C(uint64_t a1, uint64_t a2)
{
  v2[4] = MEMORY[0x277D84F90];
  sub_26B213920();
  v2[5] = sub_26B2128C0();
  v2[6] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

BOOL sub_26B157198()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = 0;
  switch(v2 >> 62)
  {
    case 1uLL:
      v3 = v1 >> 32;
      break;
    case 2uLL:
      v3 = *(v1 + 24);
      break;
    case 3uLL:
      return v0[6] == v3;
    default:
      v3 = BYTE6(v2);
      break;
  }

  return v0[6] == v3;
}

uint64_t sub_26B1571E8@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  a1[4] = sub_26B15898C(&qword_2803E6C38, type metadata accessor for BitArrayDataDecoder);
  *a1 = v1;
}

void sub_26B15727C()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_1();
  sub_26B2136C0();
  sub_26B2141F0();

  OUTLINED_FUNCTION_2_1();
  v0 = OUTLINED_FUNCTION_8_0();
  MEMORY[0x26D670040](v0);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_4();
  sub_26B2139E0();
  __break(1u);
}

void sub_26B157324()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_1();
  sub_26B2136C0();
  sub_26B2141F0();

  OUTLINED_FUNCTION_2_1();
  v0 = OUTLINED_FUNCTION_8_0();
  MEMORY[0x26D670040](v0);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_4();
  sub_26B2139E0();
  __break(1u);
}

void sub_26B1573CC()
{
  v1 = *v0;
  sub_26B2136C0();
  sub_26B2141F0();

  MEMORY[0x26D670040](0xD000000000000017, 0x800000026B21F540);
  sub_26B2139E0();
  __break(1u);
}

uint64_t sub_26B15749C()
{
  v1 = v0[2];
  v2 = v0[3];

  sub_26B14F044(v1, v2);
  v3 = sub_26B157520(v1, v2, v0);
  result = sub_26B14FF4C(v1, v2);
  v5 = v0[6];
  v6 = __OFADD__(v5, 8);
  v7 = v5 + 8;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v0[6] = v7;
    return v3;
  }

  return result;
}

uint64_t sub_26B157520(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1;
      if (a1 > a1 >> 32)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v6 = sub_26B211D10();
      if (!v6)
      {
        goto LABEL_13;
      }

      v9 = sub_26B211D40();
      if (__OFSUB__(v8, v9))
      {
LABEL_18:
        __break(1u);
      }

      v6 += v8 - v9;
LABEL_13:
      result = sub_26B211D30();
      if (v6)
      {
LABEL_14:
        v4 = *(v6 + *(a3 + 48));
LABEL_15:

        v11 = *MEMORY[0x277D85DE8];
        return v4;
      }

      else
      {
        __break(1u);
      }

      return result;
    case 2uLL:
      v5 = *(a1 + 16);
      v6 = sub_26B211D10();
      if (!v6)
      {
        goto LABEL_6;
      }

      v7 = sub_26B211D40();
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_17;
      }

      v6 += v5 - v7;
LABEL_6:
      sub_26B211D30();
      if (v6)
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_8:
      memset(v12, 0, 14);
      v4 = *(v12 + *(a3 + 48));
      goto LABEL_15;
    case 3uLL:
      goto LABEL_8;
    default:
      v12[0] = a1;
      LOWORD(v12[1]) = a2;
      BYTE2(v12[1]) = BYTE2(a2);
      BYTE3(v12[1]) = BYTE3(a2);
      BYTE4(v12[1]) = BYTE4(a2);
      BYTE5(v12[1]) = BYTE5(a2);
      v4 = *(v12 + *(a3 + 48));
      goto LABEL_15;
  }
}

void sub_26B1576DC()
{
  v1 = *v0;
  sub_26B2136C0();

  sub_26B2141F0();
  MEMORY[0x26D670040](0xD000000000000017, 0x800000026B21F540);
  sub_26B2139E0();
  __break(1u);
}

void sub_26B15779C()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_1();
  sub_26B2136C0();

  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_4();
  sub_26B2139E0();
  __break(1u);
}

void sub_26B157820()
{
  v1 = *v0;
  sub_26B2136C0();
  sub_26B2141F0();

  MEMORY[0x26D670040](0xD000000000000017, 0x800000026B21F540);
  sub_26B2139E0();
  __break(1u);
}

void *sub_26B1578F0()
{
  sub_26B14FF4C(v0[2], v0[3]);
  v1 = v0[4];

  v2 = v0[5];

  return v0;
}

uint64_t sub_26B157920()
{
  v0 = sub_26B1578F0();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_26B157B68()
{
  result = sub_26B213C10();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26B157BB8()
{
  result = sub_26B213C20();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26B157C60()
{
  result = sub_26B213C50();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26B157CB0()
{
  result = sub_26B213C30();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26B157DF0()
{
  result = sub_26B213C60();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26B157E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_26B157F10@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  a1[4] = sub_26B15898C(&qword_280D2CF38, type metadata accessor for BitArrayDataEncoder);
  *a1 = v1;
}

void sub_26B157FA8()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_1();
  sub_26B2136C0();
  sub_26B2141F0();

  OUTLINED_FUNCTION_2_1();
  v0 = OUTLINED_FUNCTION_8_0();
  MEMORY[0x26D670040](v0);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_4();
  sub_26B2139E0();
  __break(1u);
}

void sub_26B158050()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_1();
  sub_26B2136C0();
  sub_26B2141F0();

  OUTLINED_FUNCTION_2_1();
  v0 = OUTLINED_FUNCTION_8_0();
  MEMORY[0x26D670040](v0);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_4();
  sub_26B2139E0();
  __break(1u);
}

void sub_26B1580F8()
{
  v1 = *v0;
  sub_26B2136C0();
  sub_26B2141F0();

  MEMORY[0x26D670040](0xD000000000000017, 0x800000026B21F560);
  sub_26B2139E0();
  __break(1u);
}

uint64_t sub_26B1581C8(uint64_t a1)
{
  v7[8] = *MEMORY[0x277D85DE8];
  v6 = a1;
  swift_beginAccess();
  v7[3] = MEMORY[0x277D838B0];
  v7[4] = MEMORY[0x277CC9C18];
  v7[0] = &v6;
  v7[1] = v7;
  v1 = __swift_project_boxed_opaque_existential_1(v7, MEMORY[0x277D838B0]);
  v3 = *v1;
  v2 = v1[1];
  sub_26B211F90();
  __swift_destroy_boxed_opaque_existential_1(v7);
  result = swift_endAccess();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26B158288()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_1();
  sub_26B2136C0();

  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_4();
  sub_26B2139E0();
  __break(1u);
}

void sub_26B158314()
{
  v1 = *v0;
  sub_26B2136C0();
  sub_26B2141F0();

  MEMORY[0x26D670040](0xD000000000000017, 0x800000026B21F560);
  sub_26B2139E0();
  __break(1u);
}

void *sub_26B1583E4()
{
  sub_26B14FF4C(v0[2], v0[3]);
  v1 = v0[5];

  v2 = v0[6];

  return v0;
}

uint64_t sub_26B158414()
{
  v0 = sub_26B1583E4();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_26B158468()
{
  *(v0 + 16) = xmmword_26B215BA0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 32) = 0;
  *(v0 + 40) = v1;
  sub_26B213920();
  *(v0 + 48) = sub_26B2128C0();
  return v0;
}

uint64_t sub_26B15898C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_1()
{

  return sub_26B2141F0();
}

uint64_t URL.PurgeUrgency.hashValue.getter()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](v1);
  return sub_26B214070();
}

unint64_t sub_26B158AE0()
{
  result = qword_2803E6C48;
  if (!qword_2803E6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6C48);
  }

  return result;
}

uint64_t _s16PurgeContentTypeVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16PurgeContentTypeVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t _s12PurgeUrgencyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s12PurgeUrgencyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26B158CFC()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = sub_26B212AD0();
  v1 = OUTLINED_FUNCTION_0_5(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_2();
  result = sub_26B1593D0();
  if (result != 2 && (result & 1) != 0)
  {
    v10 = 0;
    sub_26B211EA0();
    sub_26B212AC0();
    sub_26B14FCC8();
    sub_26B2134C0();
    v5 = OUTLINED_FUNCTION_4_3();
    v6(v5);

    v7 = OUTLINED_FUNCTION_2_2();
    v8 = fsctl(v7, 0x80084A02uLL, &v10, 0);

    if (v8)
    {
      result = MEMORY[0x26D66FAE0](result);
      if (result)
      {
        sub_26B1591D8(result);
        result = swift_willThrow();
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26B158E70(int *a1, char *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = sub_26B212AD0();
  v7 = OUTLINED_FUNCTION_0_5(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_2();
  v12 = *a1;
  v13 = *a2;
  v14 = [objc_opt_self() defaultManager];
  sub_26B211EA0();
  v15 = sub_26B212A50();

  LODWORD(a2) = [v14 fileExistsAtPath_];

  if (a2)
  {
    if (v12 < 0)
    {
      __break(1u);
    }

    v21 = v12 | dword_26B216060[v13] | 0x10000;
    sub_26B211EA0();
    sub_26B212AC0();
    sub_26B14FCC8();
    sub_26B2134C0();
    (*(v9 + 8))(v3, v2);

    v16 = OUTLINED_FUNCTION_2_2();
    v17 = fsctl(v16, 0xC0084A44uLL, &v21, 0);

    if (v17)
    {
      v19 = MEMORY[0x26D66FAE0](v18);
      if (v19)
      {
        sub_26B1591D8(v19);
        swift_willThrow();
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26B15907C()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = sub_26B212AD0();
  v1 = OUTLINED_FUNCTION_0_5(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_2();
  v10[0] = 0;
  sub_26B211EA0();
  sub_26B212AC0();
  sub_26B14FCC8();
  sub_26B2134C0();
  v4 = OUTLINED_FUNCTION_4_3();
  v5(v4);

  v6 = OUTLINED_FUNCTION_2_2();
  v7 = fsctl(v6, 0xC0084A44uLL, v10, 0);

  if (v7)
  {
    result = MEMORY[0x26D66FAE0](result);
    if (result)
    {
      sub_26B1591D8(result);
      result = swift_willThrow();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_26B1591D8(int a1)
{
  v3 = *MEMORY[0x277CCA5B8];
  v4 = sub_26B212A80();
  v6 = v5;
  sub_26B159E68(0, &qword_2803E6C68, sub_26B159ECC, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B216070;
  v8 = *MEMORY[0x277CCA760];
  *(inited + 32) = sub_26B212A80();
  *(inited + 40) = v9;
  v10 = sub_26B211EF0();
  *(inited + 72) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, v1, v10);
  v12 = *MEMORY[0x277CCA068];
  *(inited + 80) = sub_26B212A80();
  *(inited + 88) = v13;
  result = strerror(a1);
  if (result)
  {
    v15 = MEMORY[0x26D66FF60]();
    *(inited + 120) = MEMORY[0x277D837D0];
    if (!v16)
    {
      sub_26B2136C0();

      v17 = sub_26B213B90();
      MEMORY[0x26D670040](v17);

      v15 = 0xD000000000000013;
      v16 = 0x800000026B21F580;
    }

    *(inited + 96) = v15;
    *(inited + 104) = v16;
    v18 = a1;
    v19 = sub_26B2128C0();
    v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    return sub_26B165258(v4, v6, v18, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1593D0()
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v0 = [objc_opt_self() defaultManager];
  sub_26B211EA0();
  v1 = sub_26B212A50();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v5];

  if (v2)
  {
    result = v5;
  }

  else
  {
    result = 2;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t URL.coreURL.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_4_4();
  sub_26B159E68(0, v2, v3, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_26B211CD0();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B211C70();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    OUTLINED_FUNCTION_4_4();
    sub_26B159DF8(v7, v16, v17);
    v18 = sub_26B211EF0();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v18);
  }

  else
  {
    (*(v11 + 32))(v15, v7, v8);
    OUTLINED_FUNCTION_7();
    sub_26B211C90();
    OUTLINED_FUNCTION_7();
    sub_26B211CC0();
    OUTLINED_FUNCTION_7();
    sub_26B211CA0();
    OUTLINED_FUNCTION_7();
    sub_26B211CB0();
    sub_26B211C80();
    return (*(v11 + 8))(v15, v8);
  }
}

uint64_t sub_26B15965C()
{
  v2 = v0;
  OUTLINED_FUNCTION_3_3();
  sub_26B159E68(0, v3, v4, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v83 = v76 - v7;
  v8 = sub_26B211EF0();
  v9 = OUTLINED_FUNCTION_0(v8);
  v80 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v89 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26B211DA0();
  v15 = OUTLINED_FUNCTION_0(v14);
  v81 = v16;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v82 = v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v76 - v21;
  v23 = objc_opt_self();
  v24 = [v23 defaultManager];
  sub_26B211EA0();
  v25 = sub_26B212A50();

  v26 = [v24 fileExistsAtPath_];

  if (!v26)
  {
    return 0;
  }

  v77 = v23;
  v78 = v8;
  v84 = v14;
  sub_26B159E68(0, &qword_2803E6C60, type metadata accessor for URLResourceKey, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  v79 = xmmword_26B216080;
  *(inited + 16) = xmmword_26B216080;
  v28 = *MEMORY[0x277CBE8A8];
  v29 = *MEMORY[0x277CBE908];
  *(inited + 32) = *MEMORY[0x277CBE8A8];
  *(inited + 40) = v29;
  v30 = *MEMORY[0x277CBE838];
  *(inited + 48) = *MEMORY[0x277CBE838];
  v31 = v28;
  v32 = v29;
  v33 = v30;
  sub_26B1AA6F0(inited);
  sub_26B211E40();

  if (v1)
  {
    return v31;
  }

  v76[0] = v2;
  v76[1] = v22;
  result = sub_26B211D70();
  if (result == 2)
  {
    goto LABEL_36;
  }

  v35 = v83;
  if (result)
  {
    result = sub_26B211D80();
    if (v36)
    {
      result = sub_26B211D90();
      if (v37)
      {
        goto LABEL_37;
      }
    }

    v31 = result;
    v38 = *(v81 + 8);
    OUTLINED_FUNCTION_6_1();
    v39();
    if ((v31 & 0x8000000000000000) == 0)
    {
      return v31;
    }

    __break(1u);
  }

  v40 = swift_initStackObject();
  *(v40 + 16) = v79;
  *(v40 + 32) = v31;
  *(v40 + 40) = v32;
  *(v40 + 48) = v33;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  sub_26B1AA6F0(v40);
  v45 = v44;
  v46 = [v77 defaultManager];
  v47 = sub_26B2128F0();
  *&v79 = v45;
  sub_26B1F8A50(v47);
  v48 = sub_26B213320();

  v31 = 0;
  v49 = (v80 + 32);
  v81 += 8;
  v80 += 8;
  v50 = v78;
  while (1)
  {
    do
    {
      while (1)
      {
        if (!v48)
        {
          goto LABEL_30;
        }

        if ([v48 nextObject])
        {
          sub_26B213590();
          swift_unknownObjectRelease();
        }

        else
        {
          v86 = 0u;
          v85 = 0u;
        }

        v87 = v85;
        v88 = v86;
        if (!*(&v86 + 1))
        {
          v70 = OUTLINED_FUNCTION_0_6();
          v71(v70);

          OUTLINED_FUNCTION_8_1();
          goto LABEL_32;
        }

        v51 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v35, v51 ^ 1u, 1, v50);
        if (__swift_getEnumTagSinglePayload(v35, 1, v50) == 1)
        {
          v72 = OUTLINED_FUNCTION_0_6();
          v73(v72);
          OUTLINED_FUNCTION_8_1();

          goto LABEL_34;
        }

        (*v49)(v89, v35, v50);
        sub_26B211E40();
        v52 = sub_26B211D70();
        if (v52 != 2 && (v52 & 1) != 0)
        {
          break;
        }

        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_6_1();
        v61();
        v62 = OUTLINED_FUNCTION_1_3();
        v63(v62);
      }

      v53 = sub_26B211D80();
      if ((v54 & 1) == 0)
      {
        v55 = v53;
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_6_1();
        v64();
        v65 = OUTLINED_FUNCTION_1_3();
        result = v66(v65);
        break;
      }

      v55 = sub_26B211D90();
      v57 = v56;
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_6_1();
      v58();
      v59 = OUTLINED_FUNCTION_1_3();
      result = v60(v59);
    }

    while ((v57 & 1) != 0);
    if (v55 < 0)
    {
      break;
    }

    v67 = __CFADD__(v31, v55);
    v31 += v55;
    if (v67)
    {
      __break(1u);
LABEL_30:
      v68 = OUTLINED_FUNCTION_0_6();
      v69(v68);
      OUTLINED_FUNCTION_8_1();
      v31 = 0;
      v87 = 0u;
      v88 = 0u;
LABEL_32:
      sub_26B159D48(&v87);
      __swift_storeEnumTagSinglePayload(v35, 1, 1, v50);
LABEL_34:
      OUTLINED_FUNCTION_3_3();
      sub_26B159DF8(v35, v74, v75);
      return v31;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_26B159D48(uint64_t a1)
{
  sub_26B159DA4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26B159DA4()
{
  if (!qword_280D2DA70)
  {
    v0 = sub_26B2133E0();
    if (!v1)
    {
      atomic_store(v0, &qword_280D2DA70);
    }
  }
}

uint64_t sub_26B159DF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_26B159E68(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_26B159E68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26B159ECC()
{
  if (!qword_2803E6C70)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803E6C70);
    }
  }
}

void *(*sub_26B159F30(void *(*result)(unsigned int *__return_ptr, uint64_t *, char *), uint64_t a2, uint64_t a3, unint64_t a4))(unsigned int *__return_ptr, uint64_t *, char *)
{
  v4 = result;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      if (a3 >> 32 >= a3)
      {
        v6 = a3;
        goto LABEL_8;
      }

      __break(1u);
      break;
    case 2uLL:
      v6 = *(a3 + 16);
      v7 = *(a3 + 24);
LABEL_8:
      result = sub_26B15D870(v6, v7, v4);
      break;
    case 3uLL:
      a3 = 0;
      v5 = 0;
      goto LABEL_5;
    default:
      v5 = a4 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_26B1F3550(result, a2, a3, v5);
      break;
  }

  return result;
}

uint64_t URL.setXAttribute<A>(for:value:)(uint64_t a1, uint64_t a2)
{
  v6 = sub_26B211B90();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_26B211B80();
  v9 = sub_26B211B70();
  if (!v3)
  {
    v11 = v9;
    v12 = v10;
    v15[2] = v2;
    v15[3] = a1;
    v15[4] = a2;
    v15[5] = MEMORY[0x28223BE20](v9);
    v15[6] = v12;
    v13 = sub_26B159F30(sub_26B15A2DC, v15, v11, v12);
    if (v13)
    {
      sub_26B1591D8(v13);
      swift_willThrow();
    }

    sub_26B14FF4C(v11, v12);
  }
}

uint64_t sub_26B15A108@<X0>(const void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, _DWORD *a6@<X8>)
{
  v26 = a2;
  v23 = a4;
  v24 = a5;
  v27 = a3;
  v30 = a1;
  v25 = a6;
  v6 = sub_26B212AD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_26B211EA0();
  v29 = v11;
  sub_26B212AC0();
  sub_26B14FCC8();
  v12 = sub_26B2134C0();
  v13 = *(v7 + 8);
  v13(v10, v6);

  v28 = v26;
  v29 = v27;
  sub_26B212AC0();
  v14 = sub_26B2134C0();
  v15 = v10;
  v16 = v30;
  result = (v13)(v15, v6);
  if (v16)
  {
    v18 = MEMORY[0x26D66F450](v23, v24);
    if (v12)
    {
      v19 = (v12 + 32);
    }

    else
    {
      v19 = 0;
    }

    if (v14)
    {
      v20 = (v14 + 32);
    }

    else
    {
      v20 = 0;
    }

    v21 = setxattr(v19, v20, v16, v18, 0, 2);

    if (v21)
    {
      result = MEMORY[0x26D66FAE0](v22);
    }

    else
    {
      result = 0;
    }

    *v25 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t URL.xAttribute<A>(_:for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v37 = a3;
  v33 = a4;
  v41 = a2;
  v36 = a5;
  v7 = sub_26B212AD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v5;
  v39 = sub_26B211EA0();
  v40 = v12;
  sub_26B212AC0();
  sub_26B14FCC8();
  v13 = sub_26B2134C0();
  v14 = *(v8 + 8);
  v14(v11, v7);
  v15 = v41;

  v34 = a1;
  v39 = a1;
  v40 = v15;
  sub_26B2128F0();
  sub_26B212AC0();
  v16 = sub_26B2134C0();
  v14(v11, v7);
  if (v13)
  {
    v17 = (v13 + 32);
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = (v16 + 32);
  }

  else
  {
    v18 = 0;
  }

  v19 = getxattr(v17, v18, 0, 0, 0, 1);

  if (v19 < 0)
  {

    v25 = MEMORY[0x26D66FAE0](v24);
    if (v25 == 93)
    {
      return __swift_storeEnumTagSinglePayload(v36, 1, 1, v37);
    }

    else
    {
      sub_26B1591D8(v25);
      return swift_willThrow();
    }
  }

  else if (v19)
  {
    v39 = MEMORY[0x26D66F440](v19);
    v40 = v20;
    sub_26B2128F0();
    v21 = v38;
    v22 = sub_26B15A788(&v39, v13, v34, v15, v19);
    if (v22)
    {
      sub_26B1591D8(v22);
      swift_willThrow();
      return sub_26B14FF4C(v39, v40);
    }

    else
    {
      v26 = sub_26B211B60();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      sub_26B211B50();
      v29 = v39;
      v30 = v40;
      sub_26B14F044(v39, v40);
      v32 = v36;
      v31 = v37;
      sub_26B211B40();
      sub_26B14FF4C(v29, v30);
      sub_26B14FF4C(v29, v30);

      if (!v21)
      {
        return __swift_storeEnumTagSinglePayload(v32, 0, 1, v31);
      }
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v36, 1, 1, v37);
  }

  return result;
}

uint64_t sub_26B15A608@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, size_t a5@<X5>, _DWORD *a6@<X8>)
{
  v12 = sub_26B212AD0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = a3;
  v22[1] = a4;
  sub_26B212AC0();
  sub_26B14FCC8();
  v17 = sub_26B2134C0();
  result = (*(v13 + 8))(v16, v12);
  if (a1)
  {
    if (a2)
    {
      v19 = (a2 + 32);
    }

    else
    {
      v19 = 0;
    }

    if (v17)
    {
      v20 = (v17 + 32);
    }

    else
    {
      v20 = 0;
    }

    v21 = getxattr(v19, v20, a1, a5, 0, 1);

    if (v21 < 0)
    {
      result = MEMORY[0x26D66FAE0](result);
      goto LABEL_12;
    }

    if (v21 == a5)
    {
      result = 0;
LABEL_12:
      *a6 = result;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B15A788(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v6 = a1[1];
  v8 = a5;
  switch(v6 >> 62)
  {
    case 1uLL:
      v21 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_26B14F044(v7, v6);
      sub_26B14FF4C(v7, v6);
      *a1 = xmmword_26B215BA0;
      sub_26B14FF4C(0, 0xC000000000000000);
      v22 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_19;
      }

      if (v22 < v7)
      {
        goto LABEL_33;
      }

      if (sub_26B211D10() && __OFSUB__(v7, sub_26B211D40()))
      {
        goto LABEL_34;
      }

      v25 = sub_26B211D50();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v28 = sub_26B211CF0();

      v21 = v28;
LABEL_19:
      if (v22 < v7)
      {
        goto LABEL_30;
      }

      sub_26B2128F0();
      sub_26B2128F0();

      result = sub_26B211D10();
      if (!result)
      {
        goto LABEL_36;
      }

      v29 = result;
      v30 = sub_26B211D40();
      v8 = v7 - v30;
      if (__OFSUB__(v7, v30))
      {
        goto LABEL_32;
      }

      sub_26B211D30();
      sub_26B15A608((v29 + v8), a2, a3, a4, a5, &v39);
      v20 = v21 | 0x4000000000000000;
      if (v5)
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        goto LABEL_24;
      }

      v8 = v39;

      swift_bridgeObjectRelease_n();
      goto LABEL_27;
    case 2uLL:
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_26B14F044(v7, v6);
      sub_26B14FF4C(v7, v6);
      *&v39 = v7;
      *(&v39 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_26B215BA0;
      sub_26B14FF4C(0, 0xC000000000000000);
      sub_26B211F10();
      v14 = *(&v39 + 1);
      v7 = v39;
      v15 = *(v39 + 16);
      v16 = *(v39 + 24);
      sub_26B2128F0();
      sub_26B2128F0();
      result = sub_26B211D10();
      if (!result)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      v8 = result;
      v18 = sub_26B211D40();
      v19 = v15 - v18;
      if (__OFSUB__(v15, v18))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (__OFSUB__(v16, v15))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
      }

      sub_26B211D30();
      sub_26B15A608((v8 + v19), a2, a3, a4, a5, &v38);
      v20 = v14 | 0x8000000000000000;
      if (v5)
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
LABEL_24:
        *a1 = v7;
        a1[1] = v20;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v8 = v38;

LABEL_27:
        *a1 = v7;
        a1[1] = v20;
      }

LABEL_28:

      swift_bridgeObjectRelease_n();
      v31 = *MEMORY[0x277D85DE8];
      return v8;
    case 3uLL:
      *(&v39 + 7) = 0;
      *&v39 = 0;
      sub_26B2128F0();
      sub_26B2128F0();
      sub_26B15A608(&v39, a2, a3, a4, v8, &v38);

      if (!v5)
      {
        v8 = v38;
      }

      goto LABEL_28;
    default:
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_26B14FF4C(v7, v6);
      *&v39 = v7;
      WORD4(v39) = v6;
      BYTE10(v39) = BYTE2(v6);
      BYTE11(v39) = BYTE3(v6);
      BYTE12(v39) = BYTE4(v6);
      BYTE13(v39) = BYTE5(v6);
      BYTE14(v39) = BYTE6(v6);
      sub_26B15A608(&v39, a2, a3, a4, a5, &v38);
      if (v5)
      {
        v13 = v39;
        v8 = DWORD2(v39) | ((WORD6(v39) | (BYTE14(v39) << 16)) << 32);

        swift_bridgeObjectRelease_n();
        *a1 = v13;
        a1[1] = v8;
      }

      else
      {
        v8 = v38;
        v23 = v39;
        v24 = DWORD2(v39) | ((WORD6(v39) | (BYTE14(v39) << 16)) << 32);

        swift_bridgeObjectRelease_n();
        *a1 = v23;
        a1[1] = v24;
      }

      goto LABEL_28;
  }
}

uint64_t URLQueryItemCollection.init<A>(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_10_4();
  (*(v9 + 16))(v4, a1, a2);
  sub_26B211C10();
  v11 = *(a3 + 8);
  v12 = sub_26B212F60();
  result = (*(v9 + 8))(a1, a2);
  *a4 = v12;
  return result;
}

uint64_t URLQueryItemCollection.queryItems.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void URLQueryItemCollection.init(dictionaryLiteral:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v19 = sub_26B211C10();
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10_4();
  v7 = *(a1 + 16);
  if (v7)
  {
    v17 = a2;
    v20 = MEMORY[0x277D84F90];
    sub_26B15B0E4(0, v7, 0);
    v8 = 0;
    v9 = v20;
    v18 = a1;
    v10 = (a1 + 56);
    while (v8 < *(a1 + 16))
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;
      sub_26B2128F0();
      sub_26B2128F0();
      sub_26B211C00();

      v16 = *(v20 + 16);
      v15 = *(v20 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_26B15B0E4(v15 > 1, v16 + 1, 1);
      }

      ++v8;
      *(v20 + 16) = v16 + 1;
      (*(v5 + 32))(v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, v2, v19);
      v10 += 4;
      a1 = v18;
      if (v7 == v8)
      {

        a2 = v17;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
LABEL_9:
    *a2 = v9;
  }
}

void sub_26B15B06C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_4_5();
  sub_26B15B6F4();
  *v0 = v2;
}

uint64_t _s30_DeviceConditionSnapshotOptionVwet(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t _s30_DeviceConditionSnapshotOptionVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26B15B1D4()
{
  v1 = *v0;
  sub_26B15B6F4();
  *v0 = v2;
}

uint64_t sub_26B15B218(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26B15B7D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26B15B238()
{
  v1 = *v0;
  sub_26B15B6F4();
  *v0 = v2;
}

uint64_t sub_26B15B3DC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26B15BAE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26B15B3FC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  sub_26B15BA10(v2, v3, v4, v5, v6, v7, sub_26B173F10, sub_26B15C6F0);
  *v0 = v8;
}

uint64_t sub_26B15B450(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26B15BE34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26B15B4F8(void *a1, int64_t a2, char a3)
{
  result = sub_26B15C040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26B15B518()
{
  v1 = *v0;
  sub_26B15C28C();
  *v0 = v2;
}

uint64_t sub_26B15B55C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26B15C154(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26B15B57C()
{
  v1 = *v0;
  sub_26B15C28C();
  *v0 = v2;
}

uint64_t sub_26B15B5C0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26B15C364(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26B15B5E0(void *a1, int64_t a2, char a3)
{
  result = sub_26B15C47C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26B15B644()
{
  v1 = *v0;
  sub_26B15B6F4();
  *v0 = v2;
}

void sub_26B15B6F4()
{
  OUTLINED_FUNCTION_12_2();
  if ((v7 & 1) == 0)
  {
    v8 = v6;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v9 == v10)
  {
LABEL_7:
    OUTLINED_FUNCTION_7_2(v8);
    if (v5)
    {
      sub_26B15C9C0(0, v11, v2, MEMORY[0x277D84560]);
      v12 = OUTLINED_FUNCTION_14();
      _swift_stdlib_malloc_size(v12);
      OUTLINED_FUNCTION_11_1();
      v12[2] = v4;
      v12[3] = v13;
      if (v3)
      {
LABEL_9:
        v14 = OUTLINED_FUNCTION_9_3();
        v1(v14);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v3)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_8_2();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v9)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26B15B7D0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B15C9C0(0, &qword_2803E6D48, &type metadata for Data.HexLine, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        sub_26B173538((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26B15B8F0(char a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, unint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v13 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v14 == v15)
  {
LABEL_7:
    v16 = *(a4 + 16);
    if (v13 <= v16)
    {
      v17 = *(a4 + 16);
    }

    else
    {
      v17 = v13;
    }

    if (v17)
    {
      sub_26B15C954(0, a5, a6, a7);
      v18 = OUTLINED_FUNCTION_14();
      _swift_stdlib_malloc_size(v18);
      OUTLINED_FUNCTION_11_1();
      v18[2] = v16;
      v18[3] = v19;
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v16, v18 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    sub_26B15C9C0(0, a6, a7, MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v14)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B15BA10(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(void))
{
  if ((a3 & 1) == 0)
  {
    v13 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v14 == v15)
  {
LABEL_7:
    OUTLINED_FUNCTION_7_2(v13);
    if (v8)
    {
      v16 = OUTLINED_FUNCTION_2_4();
      sub_26B15CA10(v16, v17, v18);
      v19 = OUTLINED_FUNCTION_13_0();
      v20 = _swift_stdlib_malloc_size(v19);
      OUTLINED_FUNCTION_6_2(v20 - 32);
      if (a1)
      {
LABEL_9:
        v21 = OUTLINED_FUNCTION_9_3();
        a7(v21);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_9;
    }

    a8(0);
    OUTLINED_FUNCTION_8_2();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v14)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26B15BAE4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B15C9C0(0, &qword_280D2DA80, MEMORY[0x277D83E40], MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_26B173588((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26B15BC44(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_4();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_3_4();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_1();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v17 = OUTLINED_FUNCTION_2_4();
  sub_26B15CA10(v17, v18, v19);
  v20 = *(a7(0) - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  v24 = _swift_stdlib_malloc_size(v23);
  if (!v21)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v24 - v22 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_6_2(v24 - v22);
LABEL_18:
  v26 = *(a7(0) - 8);
  if (a1)
  {
    v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    a8(a4 + v27, v15, &v23[v27]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_26B15BE34(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B15CA10(0, &qword_2803E6C98, sub_26B15C684);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_26B1735C0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_26B15C684();
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26B15BF50(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      v15 = OUTLINED_FUNCTION_2_4();
      sub_26B15C9C0(v15, v16, v17, v18);
      v19 = OUTLINED_FUNCTION_14();
      _swift_stdlib_malloc_size(v19);
      OUTLINED_FUNCTION_11_1();
      v19[2] = v13;
      v19[3] = v20;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v19 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v19 + 4, (a4 + 32), 4 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v11)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_26B15C040(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B15C768();
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26B173F04(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_26B15C7DC(0, &qword_2803E6CE0, MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B15C154(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B15C7DC(0, &qword_2803E6CC8, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26B152C58((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_26B15C9C0(0, &qword_2803E6CD0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26B15C28C()
{
  OUTLINED_FUNCTION_12_2();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_7_2(v7);
    if (v4)
    {
      sub_26B15C9C0(0, v10, v2, MEMORY[0x277D84560]);
      v11 = OUTLINED_FUNCTION_13_0();
      v12 = _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_6_2(v12 - 32);
      if (v3)
      {
LABEL_9:
        v13 = OUTLINED_FUNCTION_9_3();
        v1(v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v3)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_8_2();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v8)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26B15C364(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B15C9C0(0, &qword_2803E6CB8, &type metadata for SQLDatabase.IndexColumnInfo, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_26B173724((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_26B15C47C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B15C9C0(0, &qword_2803E6C78, &type metadata for SQLDynamicValue, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26B173F04(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26B15C594(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      v15 = OUTLINED_FUNCTION_2_4();
      sub_26B15C9C0(v15, v16, v17, v18);
      v19 = OUTLINED_FUNCTION_14();
      _swift_stdlib_malloc_size(v19);
      OUTLINED_FUNCTION_11_1();
      v19[2] = v13;
      v19[3] = v20;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v19 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v19 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v11)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B15C684()
{
  if (!qword_2803E6CA0)
  {
    sub_26B15C6F0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803E6CA0);
    }
  }
}

void sub_26B15C6F0()
{
  if (!qword_2803E6CA8)
  {
    _s9StatementCMa();
    v0 = type metadata accessor for LRUDictionary.Container();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E6CA8);
    }
  }
}

void sub_26B15C768()
{
  if (!qword_2803E6CD8)
  {
    sub_26B15C7DC(255, &qword_2803E6CE0, MEMORY[0x277D83940]);
    v0 = sub_26B213BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E6CD8);
    }
  }
}

void sub_26B15C7DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_26B15C9C0(255, &qword_2803E6CD0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_26B15C860()
{
  if (!qword_2803E6D18)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803E6D18);
    }
  }
}

void sub_26B15C8C4()
{
  if (!qword_2803E6D28)
  {
    sub_26B15C9C0(255, &qword_2803E6CD0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803E6D28);
    }
  }
}

void sub_26B15C954(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_26B15C9C0(255, a3, a4, MEMORY[0x277D83940]);
    v5 = sub_26B213BA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26B15C9C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_26B15CA10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26B213BA0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void OUTLINED_FUNCTION_7_2(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_14()
{

  return swift_allocObject();
}

uint64_t _sSo8NSBundleC15SonicFoundationE13bundleVersionSSvg_0()
{
  v1 = [v0 infoDictionary];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  v3 = sub_26B2128A0();

  result = *MEMORY[0x277CBED58];
  if (*MEMORY[0x277CBED58])
  {
    sub_26B212A80();
    sub_26B15CE98(v3, sub_26B16E800, &v7);

    sub_26B159DA4();
    if (swift_dynamicCast())
    {
      return v6;
    }

LABEL_5:
    v5 = *a000;
    sub_26B2128F0();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t NSBundle.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_26B2133E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  v14 = [v4 infoDictionary];
  if (v14)
  {
    v15 = v14;
    v16 = sub_26B2128A0();

    (*(a2 + 24))(a1, a2);
    sub_26B15CE98(v16, sub_26B16E800, v18);

    sub_26B159DA4();
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v13, 0, 1, AssociatedTypeWitness);
      return (*(*(AssociatedTypeWitness - 8) + 32))(a3, v13, AssociatedTypeWitness);
    }

    __swift_storeEnumTagSinglePayload(v13, 1, 1, AssociatedTypeWitness);
    (*(v10 + 8))(v13, v9);
  }

  return (*(a2 + 16))(a1, a2);
}

uint64_t sub_26B15CE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_26B16E800(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

double sub_26B15CE98@<D0>(uint64_t a1@<X2>, uint64_t (*a2)(void)@<X3>, _OWORD *a3@<X8>)
{
  if (*(a1 + 16) && (v5 = a2(), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_26B15CF98(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_26B15CF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = a4();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a3 + 56) + 8 * v5);
}

uint64_t sub_26B15CF98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Data.CompressionAlgorithm.hashValue.getter()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](v1);
  return sub_26B214070();
}

uint64_t Data.CompressionError.hashValue.getter()
{
  sub_26B214030();
  MEMORY[0x26D671480](0);
  return sub_26B214070();
}

uint64_t sub_26B15D148()
{
  sub_26B214030();
  MEMORY[0x26D671480](0);
  return sub_26B214070();
}

uint64_t sub_26B15D188(uint64_t result, unint64_t a2, char a3)
{
  v7[3] = result;
  v7[4] = a2;
  v8 = a3;
  v3 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        goto LABEL_8;
      }

      __break(1u);
      break;
    case 2uLL:
      result = *(result + 16);
      v6 = *(v3 + 24);
LABEL_8:
      result = sub_26B15D920(result, v6, sub_26B15D84C);
      break;
    case 3uLL:
      v5 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = result;
LABEL_5:
      result = sub_26B1F35E0(sub_26B15D84C, v7, v5, v4);
      break;
  }

  return result;
}

uint64_t sub_26B15D26C(uint64_t a1, unint64_t a2, compression_stream *a3)
{
  sub_26B15D188(a1, a2, 1);
  if (!v3)
  {
    v7 = OUTLINED_FUNCTION_3_5();
    sub_26B14F044(v7, v8);
  }

  compression_stream_destroy(a3);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x26D6723F0]();
  v5 = OUTLINED_FUNCTION_3_5();
  sub_26B14FF4C(v5, v6);
  return OUTLINED_FUNCTION_3_5();
}

uint64_t sub_26B15D30C(uint64_t result, uint64_t a2, compression_stream **a3, uint64_t a4, uint64_t a5, char a6)
{
  if (result)
  {
    (*a3)->src_ptr = result;
    (*a3)->src_size = MEMORY[0x26D66F450](a4, a5);
    v8 = swift_slowAlloc();
    do
    {
      (*a3)->dst_ptr = v8;
      (*a3)->dst_size = 0x10000;
      result = compression_stream_process(*a3, a6 & 1);
      dst_size = (*a3)->dst_size;
      v10 = __OFSUB__(0x10000, dst_size);
      v11 = 0x10000 - dst_size;
      if (v10)
      {
        __break(1u);
        goto LABEL_11;
      }

      v12 = result;
      if (v11)
      {
        sub_26B211F90();
      }
    }

    while (!v12);
    if (v12 == -1)
    {
      sub_26B15D564();
      swift_allocError();
      swift_willThrow();
    }

    return MEMORY[0x26D6723F0](v8, -1, -1);
  }

  else
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t Data.decompress(using:)(char *a1)
{
  v2 = OUTLINED_FUNCTION_1_5(a1);
  if (compression_stream_init(v2, COMPRESSION_STREAM_DECODE, dword_26B2162E0[v1]) == COMPRESSION_STATUS_OK)
  {
    return OUTLINED_FUNCTION_0_7();
  }

  sub_26B15D564();
  swift_allocError();
  swift_willThrow();
  compression_stream_destroy(v2);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x26D6723F0]();
  return sub_26B14FF4C(0, 0xC000000000000000);
}

uint64_t Data.compressed(using:)(char *a1)
{
  v2 = OUTLINED_FUNCTION_1_5(a1);
  if (compression_stream_init(v2, COMPRESSION_STREAM_ENCODE, dword_26B2162E0[v1]) == COMPRESSION_STATUS_OK)
  {
    return OUTLINED_FUNCTION_0_7();
  }

  sub_26B15D564();
  swift_allocError();
  swift_willThrow();
  compression_stream_destroy(v2);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x26D6723F0]();
  return sub_26B14FF4C(0, 0xC000000000000000);
}

unint64_t sub_26B15D564()
{
  result = qword_2803E6D78;
  if (!qword_2803E6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6D78);
  }

  return result;
}

unint64_t sub_26B15D5BC()
{
  result = qword_2803E6D80;
  if (!qword_2803E6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6D80);
  }

  return result;
}

unint64_t sub_26B15D614()
{
  result = qword_2803E6D88;
  if (!qword_2803E6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6D88);
  }

  return result;
}

_BYTE *_s20CompressionAlgorithmOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t _s16CompressionErrorOwet(unsigned int *a1, int a2)
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