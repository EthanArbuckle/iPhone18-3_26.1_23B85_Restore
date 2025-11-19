void sub_1DD40005C(uint64_t a1, float a2)
{
  v4 = v2;
  v7 = sub_1DD63D818();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_14();
  sub_1DD3FEBBC();
  OUTLINED_FUNCTION_0_28(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDC340, &qword_1DD646170);
  OUTLINED_FUNCTION_1_19();
  if ((sub_1DD640A08() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v2;
  sub_1DD3FEBBC();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_9:
    sub_1DD640D58();
    __break(1u);
    return;
  }

  v16 = v19;
LABEL_5:
  v21 = *v4;
  if (v17)
  {
    v22 = v21[7] + 16 * v16;
    *v22 = a1;
    *(v22 + 8) = a2;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_24_3();
    v24(v23);
    sub_1DD4007B8(v16, v3, a1, v21, a2);
  }
}

uint64_t sub_1DD4001D4()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_21_3();
  v6 = v5;
  OUTLINED_FUNCTION_2_16(v5, v7);
  v8 = sub_1DD3978DC();
  OUTLINED_FUNCTION_0_28(v8, v9);
  if (v12)
  {
    __break(1u);
LABEL_14:
    result = sub_1DD640D58();
    __break(1u);
    return result;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  OUTLINED_FUNCTION_1_19();
  if (sub_1DD640A08())
  {
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_14_12();
    if (!v16)
    {
      goto LABEL_14;
    }

    v13 = v15;
  }

  if (v14)
  {
    v17 = *(*v0 + 56);
    v18 = *(v17 + 8 * v13);
    *(v17 + 8 * v13) = v6;
    OUTLINED_FUNCTION_17();
  }

  else
  {
    v21 = OUTLINED_FUNCTION_7_11();
    sub_1DD400660(v21, v22, v23, v24, v25);
    OUTLINED_FUNCTION_17();
  }
}

void sub_1DD4002C4()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v0;
  v4 = v3;
  v5 = sub_1DD63D0F8();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_14();
  sub_1DD3FEC6C();
  OUTLINED_FUNCTION_0_28(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC390, &qword_1DD646188);
  OUTLINED_FUNCTION_1_19();
  if ((sub_1DD640A08() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v0;
  sub_1DD3FEC6C();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    sub_1DD640D58();
    __break(1u);
    return;
  }

  v14 = v17;
LABEL_5:
  v19 = *v2;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(*(type metadata accessor for AppRankEvent(0) - 8) + 72);
    OUTLINED_FUNCTION_17();

    sub_1DD400CAC(v22, v23);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_24_3();
    v26(v25);
    sub_1DD400888(v14, v1, v4, v19);
    OUTLINED_FUNCTION_17();
  }
}

uint64_t sub_1DD400444()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = OUTLINED_FUNCTION_2_16(v10, v8);
  v16 = sub_1DD3FEDF8(v12, v13, v14, v15);
  OUTLINED_FUNCTION_0_28(v16, v17);
  if (v20)
  {
    __break(1u);
    goto LABEL_13;
  }

  v21 = v18;
  v22 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC320, &qword_1DD646168);
  if ((sub_1DD640A08() & 1) == 0)
  {
    goto LABEL_5;
  }

  v23 = *v0;
  v24 = sub_1DD3FEDF8(v9, v7, v5, v3);
  if ((v22 & 1) != (v25 & 1))
  {
LABEL_13:
    result = sub_1DD640D58();
    __break(1u);
    return result;
  }

  v21 = v24;
LABEL_5:
  v26 = *v1;
  if (v22)
  {
    v27 = v26[7];
    OUTLINED_FUNCTION_17();

    return sub_1DD400BA0(v28, v29);
  }

  else
  {
    sub_1DD4009CC(v21, v9, v7, v5, v3, v11, v26);

    OUTLINED_FUNCTION_17();
  }
}

void sub_1DD40058C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_5_16(a1, a2, a3, a4, a5);
  v8 = v7 + 40 * v5;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_20_4(v6, v13);
  }
}

uint64_t sub_1DD4005CC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_9_9(a1, a4 + 8 * (a1 >> 6));
  v6 = (v5[6] + 16 * result);
  *v6 = v7;
  v6[1] = v8;
  *(v5[7] + 8 * result) = v9;
  v10 = v5[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v12;
  }

  return result;
}

uint64_t sub_1DD400614(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_9_9(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

void sub_1DD400660(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_5_16(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_20_4(v6, v11);
  }
}

_OWORD *sub_1DD40068C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1DD400AE4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1DD400708(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1DD63F438();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1DD4007B8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_1DD63D818();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a4[7] + 16 * a1;
  *v13 = a3;
  *(v13 + 8) = a5;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_1DD400888(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1DD63D0F8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for AppRankEvent(0);
  result = sub_1DD400D10(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_1DD400964(unint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_9_9(a1, a4 + 8 * (a1 >> 6));
  result = memcpy((*(v8 + 48) + (v7 << 7)), v9, 0x80uLL);
  *(*(a4 + 56) + 8 * a1) = a2;
  v11 = *(a4 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v13;
  }

  return result;
}

unint64_t sub_1DD4009CC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v8 = a7[7] + 40 * result;
  v9 = *(a6 + 16);
  *v8 = *a6;
  *(v8 + 16) = v9;
  *(v8 + 32) = *(a6 + 32);
  v10 = a7[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v12;
  }

  return result;
}

uint64_t sub_1DD400A2C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OUTLINED_FUNCTION_9_9(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 32 * result);
  *v9 = v10;
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;
  *(v8[7] + 8 * result) = v14;
  v15 = v8[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v17;
  }

  return result;
}

uint64_t sub_1DD400A78(void *a1)
{
  v1 = [a1 addressDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FC58();

  return v3;
}

_OWORD *sub_1DD400AE4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DD400B48(void *a1)
{
  v1 = [a1 areasOfInterest];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD640118();

  return v3;
}

uint64_t sub_1DD400CAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppRankEvent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD400D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppRankEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD400D74()
{
  result = qword_1ECCDC398;
  if (!qword_1ECCDC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC398);
  }

  return result;
}

unint64_t sub_1DD400DC8()
{
  result = qword_1ECCDC3A0;
  if (!qword_1ECCDC3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC3A0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DD400E6C()
{
  v0 = sub_1DD63FDD8();
  v2 = v1;
  if (v0 == sub_1DD63FDD8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1DD640CD8();
  }

  return v5 & 1;
}

uint64_t sub_1DD400F4C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1DD400F60(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1DD400F74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_12()
{

  return sub_1DD63FCE8();
}

void OUTLINED_FUNCTION_12_12()
{

  sub_1DD3FEFA0();
}

unint64_t OUTLINED_FUNCTION_19_9()
{
  v2 = *v0;

  return sub_1DD3978DC();
}

id sub_1DD40105C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  [v0 setUseInProcessMapperExclusively_];
  v1 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  return v1;
}

id sub_1DD4010CC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  [v0 setIncludeDonatedContacts_];
  [v0 setIncludeSuggestedContacts_];
  [v0 setIncludeLocalContacts_];
  v1 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  return v1;
}

id sub_1DD401164()
{
  v7[1] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3E8, &qword_1DD6461E8);
  v1 = sub_1DD6400F8();
  v7[0] = 0;
  v2 = [v0 _ios_meContactWithKeysToFetch_error_];

  v3 = v7[0];
  if (!v2)
  {
    v4 = v3;
    sub_1DD63CD98();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

id sub_1DD401240()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = sub_1DD63FDA8();
  if (qword_1EE1660F0 != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3E8, &qword_1DD6461E8);
  v1 = OUTLINED_FUNCTION_2_17();
  v2 = OUTLINED_FUNCTION_1_20();
  v4 = [v2 v3];

  v5 = 0;
  if (!v4)
  {
    v6 = v5;
    v7 = sub_1DD63CD98();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

void *sub_1DD401350(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!sub_1DD3CC020(a2) && qword_1EE1660F0 != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  v2 = objc_opt_self();
  v3 = sub_1DD6400F8();
  v4 = [v2 predicateForContactsWithIdentifiers_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3E8, &qword_1DD6461E8);
  v5 = OUTLINED_FUNCTION_2_17();

  v6 = OUTLINED_FUNCTION_1_20();
  v8 = [v6 v7];

  if (v8)
  {
    sub_1DD39638C(0, &qword_1EE163870, 0x1E695CD58);
    v5 = sub_1DD640118();
    v9 = 0;
  }

  else
  {
    v10 = 0;
    sub_1DD63CD98();

    swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

void *sub_1DD4014FC()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);

  v1 = sub_1DD40B8E0();
  v2 = [v0 predicateForContactsMatchingPhoneNumber_];

  if (qword_1EE1660F0 != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3E8, &qword_1DD6461E8);
  v3 = OUTLINED_FUNCTION_2_17();
  v4 = OUTLINED_FUNCTION_1_20();
  v6 = [v4 v5];

  if (v6)
  {
    sub_1DD39638C(0, &qword_1EE163870, 0x1E695CD58);
    v3 = sub_1DD640118();
    v7 = 0;
  }

  else
  {
    v8 = 0;
    sub_1DD63CD98();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

void *sub_1DD4016AC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  v6 = sub_1DD63FDA8();
  v7 = [v5 *a3];

  if (qword_1EE1660F0 != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3E8, &qword_1DD6461E8);
  v8 = OUTLINED_FUNCTION_2_17();
  v15[0] = 0;
  v9 = [v3 unifiedContactsMatchingPredicate:v7 keysToFetch:v8 error:v15];

  v10 = v15[0];
  if (v9)
  {
    sub_1DD39638C(0, &qword_1EE163870, 0x1E695CD58);
    v8 = sub_1DD640118();
    v11 = v10;
  }

  else
  {
    v12 = v15[0];
    sub_1DD63CD98();

    swift_willThrow();
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_1DD401838()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695CE90]) initWithContactStore_];
  v2 = [v1 entries];

  sub_1DD39638C(0, &qword_1EE1638B0, 0x1E695CE98);
  v3 = sub_1DD640118();

  v4 = sub_1DD4E7C30(v3);

  return v4;
}

uint64_t sub_1DD4018D4()
{
  result = sub_1DD4018F4();
  qword_1EE16F080 = result;
  return result;
}

uint64_t sub_1DD4018F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD6461B0;
  v1 = *MEMORY[0x1E695C258];
  v2 = *MEMORY[0x1E695C300];
  *(v0 + 32) = *MEMORY[0x1E695C258];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C240];
  v4 = *MEMORY[0x1E695C2F0];
  *(v0 + 48) = *MEMORY[0x1E695C240];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C230];
  v6 = *MEMORY[0x1E695C390];
  *(v0 + 64) = *MEMORY[0x1E695C230];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E695C308];
  v37 = *MEMORY[0x1E695C310];
  v8 = *MEMORY[0x1E695C310];
  *(v0 + 80) = *MEMORY[0x1E695C308];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x1E695C328];
  v10 = *MEMORY[0x1E695C348];
  *(v0 + 96) = *MEMORY[0x1E695C328];
  *(v0 + 104) = v10;
  v11 = *MEMORY[0x1E695C350];
  v38 = *MEMORY[0x1E695C340];
  v12 = *MEMORY[0x1E695C340];
  *(v0 + 112) = *MEMORY[0x1E695C350];
  *(v0 + 120) = v12;
  v36 = *MEMORY[0x1E695C1D0];
  v40 = *MEMORY[0x1E695C330];
  v13 = *MEMORY[0x1E695C330];
  *(v0 + 128) = *MEMORY[0x1E695C1D0];
  *(v0 + 136) = v13;
  v14 = *MEMORY[0x1E695C208];
  v39 = *MEMORY[0x1E695C3A8];
  v15 = *MEMORY[0x1E695C3A8];
  *(v0 + 144) = *MEMORY[0x1E695C208];
  *(v0 + 152) = v15;
  v41 = *MEMORY[0x1E695C338];
  *(v0 + 160) = *MEMORY[0x1E695C338];
  v43 = v0;
  v42 = *MEMORY[0x1E695C3A0];
  v16 = v1;
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v37;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v38;
  v28 = v36;
  v29 = v40;
  v30 = v14;
  v31 = v39;
  v32 = v41;
  v33 = v42;
  MEMORY[0x1E12B23F0]();
  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DD640138();
  }

  sub_1DD640168();
  v34 = *MEMORY[0x1E695C398];
  MEMORY[0x1E12B23F0]();
  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DD640138();
  }

  sub_1DD640168();
  return v43;
}

id sub_1DD401C9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - v3;
  result = [v0 label];
  if (result)
  {
    v6 = result;
    v7 = sub_1DD63FDD8();
    v9 = v8;

    v17 = v7;
    v18 = v9;
    v15 = v7;
    v16 = v9;
    v13 = 1008804959;
    v14 = 0xE400000000000000;
    sub_1DD63D168();
    OUTLINED_FUNCTION_1_21();
    sub_1DD3B7F10();

    OUTLINED_FUNCTION_0_30();
    LOBYTE(v6) = v10;
    sub_1DD401EB8(v4);

    if ((v6 & 1) == 0)
    {
      sub_1DD63FE98();
    }

    v15 = v17;
    v16 = v18;
    v13 = 1596203326;
    v14 = 0xE400000000000000;
    OUTLINED_FUNCTION_1_21();

    OUTLINED_FUNCTION_0_30();
    v12 = v11;
    sub_1DD401EB8(v4);

    if ((v12 & 1) == 0)
    {
      sub_1DD63FE98();
    }

    return v17;
  }

  return result;
}

id sub_1DD401E40(void *a1)
{
  v1 = a1;
  sub_1DD401C9C();
  v3 = v2;

  if (v3)
  {
    v4 = sub_1DD63FDA8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1DD401EB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DD401F20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD3CC020(a2);
  v5 = 0;
  v6 = a2 & 0xC000000000000001;
  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  v20 = a2;
  v8 = a2 + 32;
  v9 = (a1 + 40);
  v25 = v4;
  v26 = a1;
  v23 = v7;
  v24 = v6;
  v21 = (a1 + 40);
  v22 = v8;
  while (v5 != v4)
  {
    if (v6)
    {
      v10 = MEMORY[0x1E12B2C10](v5, v20);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      v10 = *(v8 + 8 * v5);
    }

    v11 = v10;
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_17;
    }

    v13 = [v10 sanitizedLabel];
    if (v13)
    {
      v14 = v13;
      sub_1DD63FDD8();

      v15 = *(a1 + 16) + 1;
      v16 = v9;
      while (--v15)
      {
        v17 = v16 + 2;
        v19 = *(v16 - 1);
        v18 = *v16;
        sub_1DD63FE58();
        sub_1DD63FE58();
        LOBYTE(v19) = sub_1DD640008();

        v16 = v17;
        if (v19)
        {

          [v11 value];

          return;
        }
      }

      v4 = v25;
      a1 = v26;
      v7 = v23;
      v6 = v24;
      v9 = v21;
      v8 = v22;
    }

    else
    {
    }
  }
}

uint64_t sub_1DD4020D4()
{
  v1 = [objc_opt_self() stringFromPostalAddress:v0 style:0];
  v2 = sub_1DD63FDD8();

  return v2;
}

uint64_t CommsAppFeature.isFirstParty.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1DD3B52B8();
  sub_1DD3B530C();
  return sub_1DD63FD48() & 1;
}

uint64_t sub_1DD4021D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC448, &qword_1DD655800);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = sub_1DD63F438();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) == 1)
  {
    sub_1DD390754(a1, &qword_1ECCDC448, &qword_1DD655800);
    sub_1DD598EF0(v11);

    return sub_1DD390754(v11, &qword_1ECCDC448, &qword_1DD655800);
  }

  else
  {
    (*(v15 + 32))(v20, a1, v12);
    v22 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    sub_1DD3FFF08(v20, a2);

    *v3 = v24;
  }

  return result;
}

uint64_t sub_1DD402388(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF180, &qword_1DD6464B0);
  OUTLINED_FUNCTION_3(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_17_10();
  v12 = type metadata accessor for AppRankEvent(v11);
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  if (__swift_getEnumTagSinglePayload(a1, 1, v19) == 1)
  {
    sub_1DD390754(a1, &unk_1ECCDF180, &qword_1DD6464B0);
    sub_1DD598FFC(v3);
    v20 = sub_1DD63D0F8();
    OUTLINED_FUNCTION_7(v20);
    (*(v21 + 8))(a2);
    return sub_1DD390754(v3, &unk_1ECCDF180, &qword_1DD6464B0);
  }

  else
  {
    sub_1DD400D10(a1, v18);
    v23 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v26 = *v4;
    sub_1DD4002C4();
    *v4 = v26;
    v24 = sub_1DD63D0F8();
    OUTLINED_FUNCTION_7(v24);
    return (*(v25 + 8))(a2);
  }
}

void CommsAppResolutionFeature.isPhone.getter()
{
  OUTLINED_FUNCTION_18_4();
  v0 = sub_1DD63D8A8();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_17_10();
  v7 = *(type metadata accessor for CommsAppResolutionFeature(v6) + 28);
  v8 = *MEMORY[0x1E69D2C30];
  v9 = *(v3 + 104);
  v10 = OUTLINED_FUNCTION_14_13();
  v9(v10);
  OUTLINED_FUNCTION_7_12();
  sub_1DD40472C(v11, v12);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_5_17();
  v13 = *(v3 + 8);
  v14 = OUTLINED_FUNCTION_15();
  v13(v14);
  OUTLINED_FUNCTION_13_10();
  if (!v15)
  {
    v16 = *MEMORY[0x1E69D2C18];
    v17 = OUTLINED_FUNCTION_14_13();
    v9(v17);
    OUTLINED_FUNCTION_8_7();
    OUTLINED_FUNCTION_5_17();
    v18 = OUTLINED_FUNCTION_15();
    v13(v18);
    OUTLINED_FUNCTION_13_10();
    if (!v15)
    {
      v19 = *MEMORY[0x1E69D2C38];
      v20 = OUTLINED_FUNCTION_14_13();
      v9(v20);
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_5_17();
      v21 = OUTLINED_FUNCTION_15();
      v13(v21);
      OUTLINED_FUNCTION_13_10();
      if (!v15)
      {
        v22 = *MEMORY[0x1E69D2C20];
        v23 = OUTLINED_FUNCTION_14_13();
        v9(v23);
        OUTLINED_FUNCTION_8_7();
        OUTLINED_FUNCTION_5_17();
        v24 = OUTLINED_FUNCTION_15();
        v13(v24);
        OUTLINED_FUNCTION_13_10();
      }
    }
  }

  OUTLINED_FUNCTION_17();
}

void CommsAppResolutionFeature.isMessage.getter()
{
  OUTLINED_FUNCTION_18_4();
  v0 = sub_1DD63D8A8();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_17_10();
  v7 = *(type metadata accessor for CommsAppResolutionFeature(v6) + 28);
  v8 = *MEMORY[0x1E69D2C28];
  v9 = *(v3 + 104);
  v10 = OUTLINED_FUNCTION_14_13();
  v9(v10);
  OUTLINED_FUNCTION_7_12();
  sub_1DD40472C(v11, v12);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_5_17();
  v13 = *(v3 + 8);
  v14 = OUTLINED_FUNCTION_15();
  v13(v14);
  OUTLINED_FUNCTION_13_10();
  if (!v15)
  {
    v16 = *MEMORY[0x1E69D2C10];
    v17 = OUTLINED_FUNCTION_14_13();
    v9(v17);
    OUTLINED_FUNCTION_8_7();
    OUTLINED_FUNCTION_5_17();
    v18 = OUTLINED_FUNCTION_15();
    v13(v18);
    OUTLINED_FUNCTION_13_10();
  }

  OUTLINED_FUNCTION_17();
}

id CommsAppResolutionFeature.intent.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t CommsAppResolutionFeature.nlContactCount.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t CommsAppResolutionFeature.communicationType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CommsAppResolutionFeature(0) + 28);
  v4 = sub_1DD63D8A8();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t CommsAppResolutionFeature.siriLocale.getter()
{
  v1 = (v0 + *(type metadata accessor for CommsAppResolutionFeature(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_15_0();
}

uint64_t CommsAppResolutionFeature.interactionTypes.getter()
{
  v1 = *(v0 + *(type metadata accessor for CommsAppResolutionFeature(0) + 36));
}

uint64_t CommsAppResolutionFeature.contacts.getter()
{
  v1 = *(v0 + *(type metadata accessor for CommsAppResolutionFeature(0) + 52));
}

uint64_t CommsAppResolutionFeature.init(intent:nlContactCount:appFeatures:communicationType:siriLocale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for CommsAppResolutionFeature(0);
  v15 = (a7 + v14[8]);
  *v15 = a5;
  v15[1] = a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = 0;
  *(a7 + 24) = a3;
  v16 = v14[7];
  v17 = sub_1DD63D8A8();
  OUTLINED_FUNCTION_7(v17);
  result = (*(v18 + 32))(a7 + v16, a4);
  *(a7 + v14[9]) = MEMORY[0x1E69E7CC0];
  *(a7 + v14[11]) = 2;
  *(a7 + v14[10]) = 2;
  *(a7 + v14[12]) = 2;
  *(a7 + v14[13]) = 0;
  return result;
}

uint64_t CommsAppResolutionFeature.init(intent:nlContactCount:appFeatures:communicationType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *(a5 + 24) = a3;
  v7 = type metadata accessor for CommsAppResolutionFeature(0);
  v8 = v7[7];
  v9 = sub_1DD63D8A8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a5 + v8, a4, v9);
  v11 = (a5 + v7[8]);
  *v11 = 0;
  v11[1] = 0;
  result = (*(v10 + 8))(a4, v9);
  *(a5 + v7[9]) = MEMORY[0x1E69E7CC0];
  *(a5 + v7[11]) = 2;
  *(a5 + v7[10]) = 2;
  *(a5 + v7[12]) = 2;
  *(a5 + v7[13]) = 0;
  return result;
}

uint64_t CommsAppResolutionFeature.Builder.__allocating_init(communicationType:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  CommsAppResolutionFeature.Builder.init(communicationType:)(a1);
  return v5;
}

uint64_t CommsAppResolutionFeature.Builder.init(communicationType:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 1;
  *(v1 + 40) = v3;
  v4 = (v1 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_siriLocale);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_interactionTypes) = v3;
  *(v1 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_isRequestByHandle) = 2;
  *(v1 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_isRequestBylabel) = 2;
  *(v1 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_isRequestByPhoneNumber) = 2;
  *(v1 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_contacts) = 0;
  v5 = OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_communicationType;
  v6 = sub_1DD63D8A8();
  OUTLINED_FUNCTION_7(v6);
  (*(v7 + 32))(v1 + v5, a1);
  return v1;
}

uint64_t sub_1DD402D14(void *a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  v3 = a1;
}

uint64_t sub_1DD402D54(uint64_t a1)
{
  *(v1 + 24) = a1;
  *(v1 + 32) = 0;
  return OUTLINED_FUNCTION_1_22();
}

uint64_t sub_1DD402D60(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_1DD402DA4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_siriLocale);
  v4 = *(v2 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_siriLocale + 8);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1DD402DF8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_interactionTypes);
  *(v1 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_interactionTypes) = a1;
}

uint64_t sub_1DD402E74(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_contacts);
  *(v1 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_contacts) = a1;
}

uint64_t sub_1DD402EC0()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_communicationType;
  v8 = type metadata accessor for CommsAppResolutionFeature(0);
  v9 = v8[7];
  v10 = sub_1DD63D8A8();
  OUTLINED_FUNCTION_7(v10);
  (*(v11 + 16))(v2 + v9, v0 + v7);
  v12 = *(v0 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_interactionTypes);
  v13 = *(v0 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_isRequestByHandle);
  v14 = *(v0 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_isRequestBylabel);
  v15 = *(v0 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_isRequestByPhoneNumber);
  v16 = *(v0 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_contacts);
  v17 = *(v0 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_siriLocale);
  v18 = *(v0 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_siriLocale + 8);
  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v19 = (v2 + v8[8]);
  *v19 = v17;
  v19[1] = v18;
  *(v2 + v8[9]) = v12;
  *(v2 + v8[10]) = v13;
  *(v2 + v8[11]) = v14;
  *(v2 + v8[12]) = v15;
  *(v2 + v8[13]) = v16;

  v20 = v3;

  OUTLINED_FUNCTION_17();
}

uint64_t CommsAppResolutionFeature.Builder.deinit()
{
  v1 = *(v0 + 40);

  v2 = OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_communicationType;
  v3 = sub_1DD63D8A8();
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_siriLocale + 8);

  v6 = *(v0 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_interactionTypes);

  v7 = *(v0 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_contacts);

  return v0;
}

uint64_t CommsAppResolutionFeature.Builder.__deallocating_deinit()
{
  CommsAppResolutionFeature.Builder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall CommsAppResolutionFeature.isRequestByHandleType()()
{
  if (!*v0)
  {
    return *(v0 + *(type metadata accessor for CommsAppResolutionFeature(0) + 40)) & 1;
  }

  v1 = *v0;
  v2 = sub_1DD640538();

  return v2 & 1;
}

Swift::Bool __swiftcall CommsAppResolutionFeature.isRequestByContactlabel()()
{
  if (!*v0)
  {
    return *(v0 + *(type metadata accessor for CommsAppResolutionFeature(0) + 44)) & 1;
  }

  v1 = *v0;
  v2 = sub_1DD640558();

  return v2 & 1;
}

Swift::Bool __swiftcall CommsAppResolutionFeature.isRequestByPhoneHandle()()
{
  if (!*v0)
  {
    return *(v0 + *(type metadata accessor for CommsAppResolutionFeature(0) + 48)) & 1;
  }

  v1 = *v0;
  v2 = sub_1DD640548();

  return v2 & 1;
}

uint64_t CommsAppResolutionFeature.getInteractionTypes()()
{
  if (*v0)
  {
    v1 = *v0;
    v2 = sub_1DD63F398();

    return v2;
  }

  else
  {
    v4 = *(v0 + *(type metadata accessor for CommsAppResolutionFeature(0) + 36));
  }
}

uint64_t CommsAppResolutionFeature.getBundleContactStats(appMatcher:bundleIds:groupBySiriDonation:)(uint64_t a1, uint64_t a2, _BOOL4 a3)
{
  v4 = v3;
  v83 = a3;
  v84 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC438, &qword_1DD646210);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v82 = v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC440, &qword_1DD646218);
  OUTLINED_FUNCTION_3(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v80 - v15;
  v17 = sub_1DD63F028();
  v18 = OUTLINED_FUNCTION_0(v17);
  v81 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBC8, &qword_1DD643FC0);
  OUTLINED_FUNCTION_3(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v80 - v29;
  v31 = sub_1DD63EFC8();
  v32 = OUTLINED_FUNCTION_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2();
  v39 = v38 - v37;
  sub_1DD4038F4(a1, v30);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    sub_1DD390754(v30, &qword_1ECCDBBC8, &qword_1DD643FC0);
    return 0;
  }

  (*(v34 + 32))(v39, v30, v31);
  v41 = *v4;
  if (!*v4)
  {
    v51 = *(v4 + 16);
    v80[1] = v34;
    v83 = (v51 & 1) == 0 && *(v4 + 8) > 1;
    v52 = v4;
    if (sub_1DD403964())
    {
      sub_1DD63EF68();

      if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
      {
        v61 = v81;
        (*(v81 + 32))(v24, v16, v17);
        if (qword_1EE162D98 != -1)
        {
          OUTLINED_FUNCTION_0_31();
          swift_once();
        }

        v62 = sub_1DD63F9F8();
        __swift_project_value_buffer(v62, qword_1EE16EFB8);
        v63 = sub_1DD63F9D8();
        v64 = sub_1DD640368();
        if (os_log_type_enabled(v63, v64))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_25_2(&dword_1DD38D000, v65, v66, "CommsAppResolutionFeature#getBundleContactStats: Getting stats by parsing contacts");
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
        }

        v67 = *(v52 + *(type metadata accessor for CommsAppResolutionFeature(0) + 36));
        v68 = *MEMORY[0x1E69D2A68];
        v69 = sub_1DD63F328();
        OUTLINED_FUNCTION_7(v69);
        v71 = v82;
        (*(v70 + 104))(v82, v68, v69);
        OUTLINED_FUNCTION_10_15();
        __swift_storeEnumTagSinglePayload(v72, v73, v74, v69);
        v40 = v39;
        v75 = v85;
        v76 = sub_1DD63EF78();
        if (!v75)
        {
          v40 = v76;
        }

        sub_1DD390754(v71, &qword_1ECCDC438, &qword_1DD646210);
        (*(v61 + 8))(v24, v17);
        goto LABEL_30;
      }

      sub_1DD390754(v16, &qword_1ECCDC440, &qword_1DD646218);
    }

    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_31();
      swift_once();
    }

    v53 = sub_1DD63F9F8();
    __swift_project_value_buffer(v53, qword_1EE16EFB8);
    v54 = sub_1DD63F9D8();
    v55 = sub_1DD640368();
    if (os_log_type_enabled(v54, v55))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_25_2(&dword_1DD38D000, v56, v57, "CommsAppResolutionFeature#getBundleContactStats: unable to get stats from intent or contacts, falling back to non-contact stats");
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v58 = *(v4 + *(type metadata accessor for CommsAppResolutionFeature(0) + 36));
    v40 = v39;
    v59 = v85;
    v60 = sub_1DD63EF98();
    if (!v59)
    {
      v40 = v60;
    }

LABEL_30:
    v77 = OUTLINED_FUNCTION_23_7();
    v78(v77);
    return v40;
  }

  v42 = v34;
  v43 = qword_1EE162D98;
  v44 = v41;
  if (v43 != -1)
  {
    OUTLINED_FUNCTION_0_31();
    swift_once();
  }

  v45 = sub_1DD63F9F8();
  __swift_project_value_buffer(v45, qword_1EE16EFB8);
  v46 = sub_1DD63F9D8();
  v47 = sub_1DD640368();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1DD38D000, v46, v47, "CommsAppResolutionFeature#getBundleContactStats: Getting stats by parsing intent", v48, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v40 = v39;
  v49 = v85;
  v50 = sub_1DD63EF88();
  if (!v49)
  {
    v40 = v50;
  }

  (*(v42 + 8))(v39, v31);

  return v40;
}

uint64_t sub_1DD4038F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBC8, &qword_1DD643FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD403964()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4A0, &qword_1DD6464B8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v20 - v3;
  v5 = sub_1DD63F3D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CommsAppResolutionFeature(0);
  v10 = *(v0 + *(result + 52));
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  v12 = *(v10 + 16);
  v22 = v6;
  v23 = (v6 + 32);
  v13 = MEMORY[0x1E69E7CC0];
  v14 = v10 + 32;
  v21 = v10 + 32;
LABEL_3:
  v15 = (v14 + 72 * v11);
  while (v12 != v11)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
      return result;
    }

    memcpy(__dst, v15, sizeof(__dst));
    CommsAppContact.toEntity()();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      v20 = *v23;
      v20(v24, v4, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(v13 + 16);
        sub_1DD3BE740();
        v13 = v18;
      }

      v16 = *(v13 + 16);
      if (v16 >= *(v13 + 24) >> 1)
      {
        sub_1DD3BE740();
        v13 = v19;
      }

      ++v11;
      *(v13 + 16) = v16 + 1;
      result = (v20)(v13 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v16, v24, v5);
      v14 = v21;
      goto LABEL_3;
    }

    result = sub_1DD390754(v4, &qword_1ECCDC4A0, &qword_1DD6464B8);
    v15 += 72;
    ++v11;
  }

  return v13;
}

void CommsAppContact.toEntity()()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC448, &qword_1DD655800);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v91 - v10;
  v93 = sub_1DD63F3D8();
  v12 = OUTLINED_FUNCTION_0(v93);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v91 - v19;
  if (v0[5])
  {
    v91 = v2;
    v92 = v18;
    v21 = v0[6];
    v22 = v0[7];
    v23 = *(v0 + 64);
    v24 = v0[4];
    sub_1DD63F3C8();
    sub_1DD63F3A8();
    sub_1DD63FE78();
    v25 = sub_1DD63F438();
    v26 = OUTLINED_FUNCTION_9_10();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
    v29 = sub_1DD63F3B8();
    OUTLINED_FUNCTION_21_4();
    v30 = OUTLINED_FUNCTION_19_10();
    v29(v30);
    if (v22)
    {
      sub_1DD63FE78();
      v31 = OUTLINED_FUNCTION_9_10();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v25);
      v34 = sub_1DD63F3B8();
      sub_1DD4021D8(v11, 0x6C6562616CLL);
      v35 = OUTLINED_FUNCTION_19_10();
      v34(v35);
    }

    v36 = v93;
    if (v23 != 2)
    {
      sub_1DD63FE78();

      OUTLINED_FUNCTION_10_15();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v25);
      v40 = sub_1DD63F3B8();
      sub_1DD4021D8(v8, 1701869940);
      v41 = OUTLINED_FUNCTION_19_10();
      v40(v41);
    }

    v42 = v91;
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_31();
      swift_once();
    }

    v43 = sub_1DD63F9F8();
    __swift_project_value_buffer(v43, qword_1EE16EFB8);
    v44 = sub_1DD63F9D8();
    v45 = sub_1DD640368();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v94[0] = v47;
      *v46 = 136315138;
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_6_15();
      sub_1DD40472C(v48, v49);
      v50 = sub_1DD63FCC8();
      v52 = sub_1DD39565C(v50, v51, v94);

      *(v46 + 4) = v52;
      _os_log_impl(&dword_1DD38D000, v44, v45, "CommsAppContact#toEntity: Retruning person handle entity %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    OUTLINED_FUNCTION_26_0();
    v53 = v92;
    (*(v92 + 16))(v42, v20, v36);
    OUTLINED_FUNCTION_10_15();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v36);
    (*(v53 + 8))(v20, v36);
LABEL_19:
    OUTLINED_FUNCTION_17();
    return;
  }

  if (v0[1])
  {
    v92 = v18;
    v57 = *v0;
    v58 = v0[2];
    v59 = v0[3];
    sub_1DD63F3C8();
    sub_1DD63F3A8();
    sub_1DD63FE78();
    v60 = sub_1DD63F438();
    v61 = OUTLINED_FUNCTION_9_10();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v60);
    v64 = sub_1DD63F3B8();
    OUTLINED_FUNCTION_21_4();
    v65 = OUTLINED_FUNCTION_19_10();
    v64(v65);
    v66 = v93;
    if (v59)
    {
      sub_1DD63FE78();
      v67 = OUTLINED_FUNCTION_9_10();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v60);
      v70 = sub_1DD63F3B8();
      sub_1DD4021D8(v11, 0x6E6F6974616C6572);
      v71 = OUTLINED_FUNCTION_19_10();
      v70(v71);
    }

    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_31();
      swift_once();
    }

    v72 = sub_1DD63F9F8();
    __swift_project_value_buffer(v72, qword_1EE16EFB8);
    v73 = sub_1DD63F9D8();
    v74 = sub_1DD640368();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v94[0] = v76;
      *v75 = 136315138;
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_6_15();
      sub_1DD40472C(v77, v78);
      v79 = sub_1DD63FCC8();
      v81 = sub_1DD39565C(v79, v80, v94);

      *(v75 + 4) = v81;
      _os_log_impl(&dword_1DD38D000, v73, v74, "CommsAppContact#toEntity: Retruning person entity %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    OUTLINED_FUNCTION_26_0();
    v82 = v92;
    (*(v92 + 16))(v2, v16, v66);
    OUTLINED_FUNCTION_10_15();
    __swift_storeEnumTagSinglePayload(v83, v84, v85, v66);
    (*(v82 + 8))(v16, v66);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_17();

  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
}

uint64_t CommsAppFeature.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_15_0();
}

SiriInference::CommsAppFeature __swiftcall CommsAppFeature.init(bundleID:isContactInApp:)(SiriInference::CommsAppFeature bundleID, Swift::Bool isContactInApp)
{
  *v2 = bundleID.bundleID;
  *(v2 + 16) = isContactInApp;
  bundleID.isContactInApp = isContactInApp;
  return bundleID;
}

uint64_t CommsAppContact.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_15_0();
}

uint64_t CommsAppContact.relationship.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t CommsAppContact.handle.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t CommsAppContact.label.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_15_0();
}

double CommsAppContact.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 2;
  return result;
}

double CommsAppContact.Builder.init()()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 80) = 2;
  return result;
}

uint64_t sub_1DD404420(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1DD404468(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1DD4044B0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_1DD4044F8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_1DD40454C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = *(v1 + 40);
  *(a1 + 40) = *(v1 + 56);
  *(a1 + 56) = v2;
  *(a1 + 64) = v3;
}

void *CommsAppContact.Builder.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return v0;
}

uint64_t CommsAppContact.Builder.__deallocating_deinit()
{
  CommsAppContact.Builder.deinit();

  return swift_deallocClassInstance();
}

uint64_t HandleType.rawValue.getter()
{
  if (*v0)
  {
    return 0x656E6F6870;
  }

  else
  {
    return 0x6C69616D65;
  }
}

SiriInference::HandleType_optional __swiftcall HandleType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DD4046D0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1DD3B1A88();
}

uint64_t sub_1DD404700@<X0>(uint64_t *a1@<X8>)
{
  result = HandleType.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_1DD40472C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DD404778()
{
  result = qword_1ECCDC458;
  if (!qword_1ECCDC458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC458);
  }

  return result;
}

void sub_1DD4047F4()
{
  sub_1DD4049C4();
  if (v0 <= 0x3F)
  {
    sub_1DD404A60(319, &qword_1ECCDBB70, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1DD404A60(319, &qword_1ECCDC478, &type metadata for CommsAppFeature, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1DD63D8A8();
        if (v3 <= 0x3F)
        {
          sub_1DD404A60(319, &qword_1EE163958, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1DD404A60(319, &qword_1EE1638D8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              sub_1DD404A60(319, &qword_1EE1638C8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_1DD404AB0();
                if (v7 <= 0x3F)
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

void sub_1DD4049C4()
{
  if (!qword_1ECCDC470)
  {
    sub_1DD404A1C();
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECCDC470);
    }
  }
}

unint64_t sub_1DD404A1C()
{
  result = qword_1EE166228;
  if (!qword_1EE166228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE166228);
  }

  return result;
}

void sub_1DD404A60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DD404AB0()
{
  if (!qword_1ECCDC480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDC488, &qword_1DD646350);
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECCDC480);
    }
  }
}

uint64_t sub_1DD404B3C()
{
  result = sub_1DD63D8A8();
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

uint64_t sub_1DD404DF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1DD404E38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD404E90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t sub_1DD404EE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HandleType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD40521C()
{
  result = qword_1ECCDC4A8;
  if (!qword_1ECCDC4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC4A8);
  }

  return result;
}

unint64_t sub_1DD405274()
{
  result = qword_1ECCDC4B0;
  if (!qword_1ECCDC4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC4B0);
  }

  return result;
}

unint64_t sub_1DD405380()
{
  result = qword_1ECCDC4B8;
  if (!qword_1ECCDC4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC4B8);
  }

  return result;
}

unint64_t sub_1DD4053F0()
{
  result = qword_1ECCDC4C0;
  if (!qword_1ECCDC4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC4C0);
  }

  return result;
}

uint64_t sub_1DD4054DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = DateTime.UserDefinedProperties.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DD40551C@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.UserDefinedProperties.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ContactResolverDomain(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ContactResolverDomain(uint64_t result, int a2, int a3)
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

uint64_t sub_1DD4055B0()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD4055EC(uint64_t a1, uint64_t a2, char a3)
{
  v23 = sub_1DD640478();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = sub_1DD63FBD8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_2();
  v11 = sub_1DD640438();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  *(v3 + 16) = 0u;
  v15 = (v3 + 16);
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  v16 = MEMORY[0x1E69E7CC8];
  *(v3 + 64) = 0;
  *(v3 + 72) = v16;
  *(v3 + 80) = v16;
  sub_1DD406E2C();
  sub_1DD3FAC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3FC2BC();
  sub_1DD640718();
  sub_1DD63FBA8();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8090], v23);
  *(v3 + 88) = sub_1DD6404A8();
  *(v3 + 96) = 0;
  *(v3 + 104) = 1;
  OUTLINED_FUNCTION_4_15();
  if (a3)
  {
    v17 = 65537;
  }

  else
  {
    v17 = 65542;
  }

  v18 = sub_1DD63FE68();

  swift_beginAccess();
  v19 = sqlite3_open_v2((v18 + 32), v15, v17, 0);
  swift_endAccess();

  sub_1DD40597C(v19, 0);
  if (v26)
  {
  }

  else
  {
    v20 = qword_1EE165C08;
    v21 = *(v24 + 88);
    if (v20 != -1)
    {
      OUTLINED_FUNCTION_0_33();
    }

    sub_1DD405A20();
    sub_1DD640468();

    sqlite3_extended_result_codes(*(v24 + 16), 1);
  }

  return v24;
}

uint64_t sub_1DD405934()
{
  OUTLINED_FUNCTION_4_15();
  if (v1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v0;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  sub_1DD406DFC(v0, v1);
  return v4;
}

uint64_t sub_1DD40597C(uint64_t a1, uint64_t a2)
{

  sub_1DD47EB70(a1, a2, v9);
  v4 = v11;
  if (v11)
  {
    sub_1DD406E70();
    swift_allocError();
    v5 = v10;
    v6 = v9[1];
    *v7 = v9[0];
    *(v7 + 16) = v6;
    *(v7 + 32) = v5;
    *(v7 + 40) = v4;
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1DD405A20()
{
  result = v0;
  if (*(v0 + 104) != 1)
  {
    return *(v0 + 96);
  }

  *(v0 + 96) = v0;
  *(v0 + 104) = 0;
  return result;
}

uint64_t sub_1DD405A44()
{
  v1 = v0;
  v2 = sub_1DD4055B0();
  v3 = sqlite3_close(v2);
  if (v3)
  {
    v4 = v3;

    sub_1DD47EB70(v4, 0, v19);
    v5 = v20;
    if (v20)
    {
      if (qword_1EE160538 != -1)
      {
        swift_once();
      }

      v6 = sub_1DD63F9F8();
      __swift_project_value_buffer(v6, qword_1EE16EEE8);
      v21 = *&v19[8];
      v22 = *&v19[24];
      v23 = v5;
      sub_1DD3DD9B4(&v21, v18, &unk_1ECCDFDF0, &unk_1DD644950);
      sub_1DD3DD9B4(&v22, v18, &unk_1ECCDFDF0, &unk_1DD644950);
      sub_1DD3DD9B4(&v23, v18, &unk_1ECCDFD20, &qword_1DD648290);
      v7 = sub_1DD63F9D8();
      v8 = sub_1DD640378();
      sub_1DD390754(&v21, &unk_1ECCDFDF0, &unk_1DD644950);
      sub_1DD390754(&v22, &unk_1ECCDFDF0, &unk_1DD644950);
      sub_1DD390754(&v23, &unk_1ECCDFD20, &qword_1DD648290);
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        sub_1DD406E70();
        swift_allocError();
        v11 = *&v19[32];
        v12 = *&v19[16];
        *v13 = *v19;
        *(v13 + 16) = v12;
        *(v13 + 32) = v11;
        *(v13 + 40) = v5;
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 4) = v14;
        *v10 = v14;
        _os_log_impl(&dword_1DD38D000, v7, v8, "Error closing connection: %@", v9, 0xCu);
        sub_1DD390754(v10, &qword_1ECCDBF90, &qword_1DD6445B0);
        MEMORY[0x1E12B3DA0](v10, -1, -1);
        MEMORY[0x1E12B3DA0](v9, -1, -1);
      }

      else
      {

        sub_1DD390754(&v21, &unk_1ECCDFDF0, &unk_1DD644950);
        sub_1DD390754(&v22, &unk_1ECCDFDF0, &unk_1DD644950);
        sub_1DD390754(&v23, &unk_1ECCDFD20, &qword_1DD648290);
      }
    }
  }

  _Block_release(*(v1 + 32));
  _Block_release(*(v1 + 40));
  _Block_release(*(v1 + 48));
  _Block_release(*(v1 + 56));
  _Block_release(*(v1 + 64));
  v15 = *(v1 + 72);

  v16 = *(v1 + 80);

  return v1;
}

uint64_t sub_1DD405D14()
{
  sub_1DD405A44();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD405D6C@<X0>(_DWORD *a1@<X8>)
{
  v3 = sub_1DD4055B0();
  v4 = sub_1DD63FE68();
  v5 = sqlite3_exec(v3, (v4 + 32), 0, 0, 0);

  result = sub_1DD40597C(v5, 0);
  if (!v1)
  {
    *a1 = v5;
  }

  return result;
}

BOOL sub_1DD405E00(uint64_t a1, uint64_t a2)
{
  sub_1DD406E2C();
  if (qword_1EE165C08 != -1)
  {
    OUTLINED_FUNCTION_0_33();
  }

  sub_1DD640458();
  v5 = sub_1DD405A20();
  if ((v13 & 1) != 0 || v12 != v5)
  {
    v10 = *(a1 + 88);
    sub_1DD640488();

    if (!v2)
    {
      return v14;
    }
  }

  else
  {
    v6 = *(a2 + 24);
    swift_beginAccess();
    v7 = sqlite3_step(*(a2 + 16));
    v8 = v7;
    sub_1DD40597C(v7, 0);

    if (!v2)
    {
      return v8 == 100;
    }
  }

  return v9;
}

uint64_t sub_1DD405F44(uint64_t a1)
{
  sub_1DD406E2C();
  if (qword_1EE165C08 != -1)
  {
    OUTLINED_FUNCTION_0_33();
  }

  sub_1DD640458();
  v3 = sub_1DD405A20();
  if ((v9 & 1) != 0 || v8 != v3)
  {
    v6 = *(a1 + 88);
    sub_1DD640488();
    if (v1)
    {

      return v6;
    }

    v6 = v10;
LABEL_11:

    return v6;
  }

  v4 = sub_1DD4055B0();
  v5 = sub_1DD63FE68();
  v6 = sqlite3_exec(v4, (v5 + 32), 0, 0, 0);

  sub_1DD40597C(v6, 0);
  if (!v1)
  {

    goto LABEL_11;
  }

  return v6;
}

uint64_t sub_1DD4060EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    result = sub_1DD4060EC(a1, a2, MEMORY[0x1E69E7CC0]);
    if (!v3)
    {
      v6 = sub_1DD5D2AFC(a3);

      return v6;
    }
  }

  else
  {
    type metadata accessor for Statement();
    swift_allocObject();

    return sub_1DD5D2F2C(v7);
  }

  return result;
}

uint64_t sub_1DD4061B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD4060EC(a1, a2, MEMORY[0x1E69E7CC0]);
  if (!v4)
  {
    sub_1DD5D2AFC(a3);
    v3 = sub_1DD5D3890(MEMORY[0x1E69E7CC0]);
  }

  return v3;
}

uint64_t sub_1DD406240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1DD4060EC(a1, a2, MEMORY[0x1E69E7CC0]);
  if (!v4)
  {
    sub_1DD5D2AFC(a3);
    sub_1DD5D3A54(MEMORY[0x1E69E7CC0], a4);
  }

  return result;
}

uint64_t sub_1DD4062C8(char a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v20 = *a3;
  v8 = a3[4];
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1DD406EC4(&v20, v17);

  sub_1DD6408D8();

  OUTLINED_FUNCTION_6_16();
  v18 = v9;
  v19 = v10;
  if (a1)
  {
    if (a1 == 1)
    {
      v11 = 0x54414944454D4D49;
    }

    else
    {
      v11 = 0x564953554C435845;
    }

    v12 = 0xE900000000000045;
  }

  else
  {
    v12 = 0xE800000000000000;
    v11 = OUTLINED_FUNCTION_5_18();
  }

  MEMORY[0x1E12B2260](v11, v12);

  v13 = OUTLINED_FUNCTION_1_23();
  MEMORY[0x1E12B2260](v13);
  v14 = v18;
  v15 = v19;
  sub_1DD406EC4(&v20, &v18);

  sub_1DD4065E8(v14, v15, 0xD000000000000012, 0x80000001DD66B0B0, 0xD000000000000014, 0x80000001DD66B0D0, a2, a3, a4);

  sub_1DD406F20(&v20);

  sub_1DD406F20(&v20);
}

uint64_t sub_1DD4064AC(char a1, void (*a2)(uint64_t), uint64_t a3)
{
  sub_1DD6408D8();

  OUTLINED_FUNCTION_6_16();
  v12 = v6;
  v13 = v7;
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = 0x54414944454D4D49;
    }

    else
    {
      v8 = 0x564953554C435845;
    }

    v9 = 0xE900000000000045;
  }

  else
  {
    v9 = 0xE800000000000000;
    v8 = OUTLINED_FUNCTION_5_18();
  }

  MEMORY[0x1E12B2260](v8, v9);

  v10 = OUTLINED_FUNCTION_1_23();
  MEMORY[0x1E12B2260](v10);
  sub_1DD406988(v12, v13, a2, a3, 0xD000000000000012, 0x80000001DD66B0B0);
}

uint64_t sub_1DD4065E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v12 = a8[1];
  v19 = *a8;
  v13 = a8[4];
  v20 = a8[3];
  sub_1DD406E2C();
  v14 = qword_1EE165C08;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  if (v14 != -1)
  {
    swift_once();
  }

  sub_1DD640458();
  v15 = sub_1DD405A20();
  if ((v24 & 1) != 0 || v23 != v15)
  {
    v16 = *(a7 + 88);
    sub_1DD640488();
  }

  else
  {

    sub_1DD4061B8(a1, a2, MEMORY[0x1E69E7CC0]);

    if (v22)
    {
    }

    else
    {
      v20(a9);
      sub_1DD5205E0(v19, v12);
      sub_1DD4061B8(a3, a4, MEMORY[0x1E69E7CC0]);
    }
  }

  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1DD406988(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1DD406E2C();
  v11 = qword_1EE165C08;

  if (v11 != -1)
  {
    swift_once();
  }

  sub_1DD640458();
  v12 = sub_1DD405A20();
  if ((v19 & 1) != 0 || v18 != v12)
  {
    v14 = *(v6 + 88);
    sub_1DD640488();
  }

  else
  {
    sub_1DD4061B8(a1, a2, MEMORY[0x1E69E7CC0]);
    if (v17)
    {
    }

    else
    {

      a3(v13);
      sub_1DD4061B8(a5, a6, MEMORY[0x1E69E7CC0]);
    }
  }
}

uint64_t sub_1DD406BD4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1DD4061B8(a2, a3, MEMORY[0x1E69E7CC0]);
  if (!v7)
  {

    a4(v12);
    sub_1DD4061B8(a6, a7, MEMORY[0x1E69E7CC0]);
  }

  return result;
}

sqlite3 *sub_1DD406CD0()
{
  result = sub_1DD4055B0();
  v2 = *(v0 + 24) * 1000.0;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -2147483650.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 2147483650.0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return sqlite3_busy_timeout(result, v2);
}

uint64_t sub_1DD406D4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFF0, &qword_1DD644568);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1DD63FB48();
  qword_1EE165C10 = result;
  return result;
}

const char *sub_1DD406D98()
{
  v0 = sub_1DD4055B0();
  result = sqlite3_db_filename(v0, 0);
  if (result)
  {

    return sub_1DD63FF68();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD406DF4()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1DD405934();
}

uint64_t sub_1DD406DFC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_1DD406E2C()
{
  result = qword_1EE166480;
  if (!qword_1EE166480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE166480);
  }

  return result;
}

unint64_t sub_1DD406E70()
{
  result = qword_1EE1630B0;
  if (!qword_1EE1630B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1630B0);
  }

  return result;
}

uint64_t sub_1DD406FAC()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 80);
  return sub_1DD406BD4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
}

uint64_t sub_1DD406FE4@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1DD405D6C(a1);
}

uint64_t get_enum_tag_for_layout_string_13SiriInference10ConnectionC8LocationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DD40701C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1DD407070(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1DD4070CC(void *result, int a2)
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

_BYTE *storeEnumTagSinglePayload for Constants(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
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
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t Contact.toINPersonExpansion()@<X0>(uint64_t a1@<X8>)
{
  v2 = Contact.makeINPersons(explode:)(1);
  result = sub_1DD3CBDE8(v2);
  v4 = result;
  if (result > 1)
  {
    goto LABEL_6;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E12B2C10](0, v2);
    goto LABEL_5;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v2 + 32);
LABEL_5:
    v6 = v5;

    v2 = v6;
LABEL_6:
    *a1 = v2;
    *(a1 + 8) = v4 > 1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t Contact.makeINPersons(explode:)(int a1)
{
  v2 = v1;
  LODWORD(v65) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4C8, &unk_1DD646850);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v63 - v8;
  sub_1DD40792C(&v63 - v8);
  v10 = sub_1DD63CD18();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    goto LABEL_6;
  }

  v11 = *(v1 + 144);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *(v1 + 136) & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v66 = *(v1 + 136);
  }

  else
  {
LABEL_6:
    v66 = 0;
    v11 = 0;
  }

  v13 = objc_allocWithZone(MEMORY[0x1E696E948]);
  v14 = sub_1DD4086E0(0, 0, 0);
  v64 = v9;
  sub_1DD408964(v9, v7);
  v15 = type metadata accessor for Contact();
  v63 = (v2 + v15[22]);
  v16 = v63[1];
  swift_bridgeObjectRelease_n();
  v17 = sub_1DD5E77D4(*v2, *(v2 + 8));
  v19 = v17;
  v20 = v18;
  if (v16)
  {
    v21 = v17;
    v22 = v18;
    v20 = 0;
    v19 = 0;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v21 = 0;
    v22 = 0;
  }

  v23 = objc_allocWithZone(MEMORY[0x1E696E940]);
  v24 = sub_1DD40874C(v14, v7, v66, v11, 0, v19, v20, v21, v22);
  [v24 setIsMe_];
  v25 = (v2 + v15[24]);
  v26 = *v25;
  v27 = v25[1];
  v28 = sub_1DD63FDA8();
  [v24 setPhonemeData_];

  if (v16)
  {
    v29 = *v63;
    v30 = v16;
  }

  else
  {
    v30 = 0x80000001DD66B290;
    v29 = 0xD00000000000001BLL;
  }

  sub_1DD408A18(v29, v30, v24);
  v31 = sub_1DD407C40();
  [v24 setRelationship_];

  [v24 setSearchProvider_];
  v32 = *(v2 + v15[20]);
  v33 = *(v32 + 16);
  if (v33 >= 2 && (v65 & 1) != 0)
  {
    v68[0] = MEMORY[0x1E69E7CC0];
    sub_1DD640988();
    v34 = (v32 + 32);
    v66 = v33 - 1;
    while (1)
    {
      v65 = v34;
      memcpy(__dst, v34, 0x4AuLL);
      v35 = BYTE1(__dst[9]);
      sub_1DD3C6A40(__dst, v69);
      v36 = v24;
      [v24 mutableCopy];
      sub_1DD6406F8();
      swift_unknownObjectRelease();
      sub_1DD408AE4();
      swift_dynamicCast();
      v37 = v67;
      v38 = 1;
      if ((v35 & 1) == 0)
      {
        v38 = 2;
      }

      v39 = v35 == 2 ? 0 : v38;
      v40 = LOBYTE(__dst[2]);
      v41 = __dst[9];
      v42 = __dst[5];
      v43 = __dst[6];
      v45 = __dst[3];
      v44 = __dst[4];
      memcpy(v69, __dst, 0x4AuLL);

      v46 = sub_1DD4080B4(v45, v44);
      v47 = objc_allocWithZone(MEMORY[0x1E696E948]);
      v48 = sub_1DD4088D0(v42, v43, v40, v46, 0, v39, v41);
      [v37 setPersonHandle_];

      sub_1DD3C6A9C(__dst);
      sub_1DD640958();
      v49 = *(v68[0] + 16);
      sub_1DD640998();
      sub_1DD6409A8();
      sub_1DD640968();
      if (!v66)
      {
        break;
      }

      --v66;
      v34 = v65 + 80;
      v24 = v36;
    }

    v61 = v68[0];
  }

  else
  {
    if (v33 == 1)
    {
      memcpy(__dst, (v32 + 32), 0x4AuLL);
      v50 = 1;
      if ((__dst[9] & 0x100) == 0)
      {
        v50 = 2;
      }

      if (BYTE1(__dst[9]) == 2)
      {
        v51 = 0;
      }

      else
      {
        v51 = v50;
      }

      v52 = LOBYTE(__dst[2]);
      v53 = __dst[9];
      v54 = __dst[5];
      v55 = __dst[6];
      v56 = __dst[3];
      v57 = __dst[4];
      memcpy(v69, (v32 + 32), 0x4AuLL);
      sub_1DD3C6A40(__dst, v68);

      v58 = sub_1DD4080B4(v56, v57);
      v59 = objc_allocWithZone(MEMORY[0x1E696E948]);
      v60 = sub_1DD4088D0(v54, v55, v52, v58, 0, v51, v53);
      sub_1DD3C6A9C(__dst);
      [v24 setPersonHandle_];
    }

    else
    {
      [v24 setPersonHandle_];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1DD643B80;
    *(v61 + 32) = v24;
  }

  sub_1DD408A7C(v64);
  return v61;
}

uint64_t sub_1DD4078E4()
{
  v1 = type metadata accessor for Contact();
  if (*(v0 + *(v1 + 92)) == 1)
  {
    return 1;
  }

  if (*(v0 + *(v1 + 84)))
  {
    return 3;
  }

  return 0;
}

uint64_t sub_1DD40792C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4C8, &unk_1DD646850);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v44 - v5;
  v7 = sub_1DD63CD18();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - v12;
  v15 = v2[5];
  v14 = v2[6];
  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    v17 = v2[7];
    v18 = v2[8];
    OUTLINED_FUNCTION_0_35();
    if (!v19)
    {
      v20 = v2[9];
      v21 = v2[10];
      OUTLINED_FUNCTION_0_35();
      if (!v22)
      {
        v23 = v2[13];
        v24 = v2[14];
        OUTLINED_FUNCTION_0_35();
        if (!v25)
        {
          v42 = v2[15];
          v43 = v2[16];
          OUTLINED_FUNCTION_0_35();
        }
      }
    }
  }

  v26 = v2[19];
  v27 = v2[20];
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v26 & 0xFFFFFFFFFFFFLL;
  }

  v45 = v6;
  if (v28 || (v29 = v2[21], v30 = v2[22], OUTLINED_FUNCTION_1_24(), v31))
  {
    v32 = 0;
LABEL_13:
    sub_1DD63CD08();
    sub_1DD5E77D4(v2[3], v2[4]);
    sub_1DD63CC78();
    sub_1DD407F1C(v15, v14);
    sub_1DD63CC18();
    sub_1DD407F1C(v2[7], v2[8]);
    sub_1DD63CC58();
    sub_1DD407F1C(v2[9], v2[10]);
    sub_1DD63CC38();
    sub_1DD5E77D4(v2[13], v2[14]);
    sub_1DD63CC98();
    sub_1DD5E77D4(v2[15], v2[16]);
    sub_1DD63CCE8();
    v33 = v46;
    if ((v32 & 1) == 0)
    {
      sub_1DD63CD08();
      sub_1DD5E77D4(v26, v27);
      sub_1DD63CC18();
      sub_1DD5E77D4(v2[21], v2[22]);
      sub_1DD63CC58();
      sub_1DD5E77D4(v2[23], v2[24]);
      sub_1DD63CC38();
      (*(v33 + 16))(v45, v11, v7);
      OUTLINED_FUNCTION_2_18();
      sub_1DD63CCB8();
      (*(v33 + 8))(v11, v7);
    }

    (*(v33 + 32))(v47, v13, v7);
    return OUTLINED_FUNCTION_2_18();
  }

  v35 = v2[23];
  v36 = v2[24];
  OUTLINED_FUNCTION_1_24();
  v39 = v38 == 0;
  v40 = v37 | ~(v38 == 0);
  if (v39)
  {
    v32 = v37;
  }

  else
  {
    v32 = 0;
  }

  if (v40)
  {
    goto LABEL_13;
  }

  v41 = v47;

  return __swift_storeEnumTagSinglePayload(v41, 1, 1, v7);
}

id sub_1DD407C40()
{
  v1 = *(v0 + 216);
  if (!v1[2])
  {
    return 0;
  }

  v3 = v1[6];
  v2 = v1[7];
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  swift_bridgeObjectRetain_n();
  switch(sub_1DD532D04())
  {
    case 0u:
      v5 = MEMORY[0x1E696E650];
      goto LABEL_19;
    case 1u:
      v5 = MEMORY[0x1E696E620];
      goto LABEL_19;
    case 2u:
      v5 = MEMORY[0x1E696E680];
      goto LABEL_19;
    case 4u:
      v5 = MEMORY[0x1E696E668];
      goto LABEL_19;
    case 8u:
      v5 = MEMORY[0x1E696E658];
      goto LABEL_19;
    case 9u:
      v5 = MEMORY[0x1E696E648];
      goto LABEL_19;
    case 0xDu:
      v5 = MEMORY[0x1E696E640];
      goto LABEL_19;
    case 0xEu:
      v5 = MEMORY[0x1E696E670];
      goto LABEL_19;
    case 0x11u:
      v5 = MEMORY[0x1E696E630];
      goto LABEL_19;
    case 0x13u:
      v5 = MEMORY[0x1E696E678];
      goto LABEL_19;
    case 0x14u:
      v5 = MEMORY[0x1E696E638];
      goto LABEL_19;
    case 0x1Bu:
      v5 = MEMORY[0x1E696E628];
LABEL_19:
      v7 = *v5;
      break;
    default:
      v7 = sub_1DD63FDA8();
      break;
  }

  v6 = v7;

  return v6;
}

INPersonHandle __swiftcall ContactHandle.toINPersonHandle()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = *(v0 + 6);
  v6 = *(v0 + 73);
  v7 = 1;
  if ((v6 & 1) == 0)
  {
    v7 = 2;
  }

  if (v6 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v0 + 72);
  v13 = *v0;
  v14 = *(v0 + 16);
  *v15 = *(v0 + 17);
  *&v15[3] = *(v0 + 5);
  *&v15[7] = *(v0 + 3);
  *&v15[15] = *(v0 + 4);
  v16 = *(v0 + 5);
  v17 = *(v0 + 6);
  v18 = *(v0 + 56);

  v10 = sub_1DD4080B4(v2, v3);
  v11 = objc_allocWithZone(MEMORY[0x1E696E948]);
  return sub_1DD4088D0(v4, v5, v1, v10, 0, v8, v9 & 1);
}

id *Contact.INPersonExpansion.first.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if ((v1 & 0xC000000000000001) == 0)
    {
      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return *(v1 + 32);
      }

      __break(1u);
    }

    JUMPOUT(0x1E12B2C10);
  }

  return v1;
}

uint64_t Contact.INPersonExpansion.all.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v1;
  if ((v2 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1DD643B80;
    *(v3 + 32) = v1;
  }

  sub_1DD408B28(v1, v2);
  return v3;
}

uint64_t sub_1DD407F1C(uint64_t a1, unint64_t a2)
{
  sub_1DD3B7F10();
  if ((sub_1DD6406D8() & 1) == 0)
  {
    return sub_1DD5E77D4(a1, a2);
  }

  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;

  for (i = 15; v5 != i >> 14; i = sub_1DD63FF18())
  {
    if (sub_1DD640038() == 124 && v7 == 0xE100000000000000)
    {

      break;
    }

    v9 = sub_1DD640CD8();

    if (v9)
    {
      break;
    }
  }

  v11 = sub_1DD640058();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = MEMORY[0x1E12B2190](v11, v13, v15, v17);
  v20 = v19;

  v10 = sub_1DD5E77D4(v18, v20);

  return v10;
}

uint64_t sub_1DD4080B4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  if (qword_1EE1630C0 != -1)
  {
    swift_once();
  }

  v5 = off_1EE1630C8;
  if (*(off_1EE1630C8 + 2) && (v6 = sub_1DD3978DC(), (v7 & 1) != 0))
  {
    v8 = *(v5[7] + 8 * v6);
    v9 = v8;
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD63F9F8();
    __swift_project_value_buffer(v10, qword_1EE16F068);

    v11 = sub_1DD63F9D8();
    v12 = sub_1DD640368();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1DD39565C(a1, a2, &v16);
      _os_log_impl(&dword_1DD38D000, v11, v12, "no predefined INPersonHandleLabel found for '%s'", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E12B3DA0](v14, -1, -1);
      MEMORY[0x1E12B3DA0](v13, -1, -1);
    }

    return sub_1DD63FDA8();
  }

  return v8;
}

void *sub_1DD40828C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4D0, &unk_1DD646900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD646840;
  v1 = *MEMORY[0x1E695CB60];
  v2 = sub_1DD63FDD8();
  v3 = MEMORY[0x1E696E5D0];
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  v5 = *v3;
  *(inited + 48) = *v3;
  v6 = *MEMORY[0x1E695CBD8];
  v7 = sub_1DD63FDD8();
  v8 = MEMORY[0x1E696E608];
  *(inited + 56) = v7;
  *(inited + 64) = v9;
  v10 = *v8;
  *(inited + 72) = *v8;
  v11 = *MEMORY[0x1E695CB68];
  v12 = sub_1DD63FDD8();
  v13 = MEMORY[0x1E696E5F0];
  *(inited + 80) = v12;
  *(inited + 88) = v14;
  v15 = *v13;
  *(inited + 96) = *v13;
  v16 = *MEMORY[0x1E695CBC0];
  v17 = sub_1DD63FDD8();
  v18 = MEMORY[0x1E696E618];
  *(inited + 104) = v17;
  *(inited + 112) = v19;
  v20 = *v18;
  *(inited + 120) = *v18;
  v21 = *MEMORY[0x1E695CB90];
  v22 = sub_1DD63FDD8();
  v23 = MEMORY[0x1E696E5E8];
  *(inited + 128) = v22;
  *(inited + 136) = v24;
  v25 = *v23;
  *(inited + 144) = *v23;
  v26 = *MEMORY[0x1E695CB88];
  v27 = sub_1DD63FDD8();
  v28 = MEMORY[0x1E696E5E0];
  *(inited + 152) = v27;
  *(inited + 160) = v29;
  v30 = *v28;
  *(inited + 168) = *v28;
  v31 = *MEMORY[0x1E695CB78];
  v32 = sub_1DD63FDD8();
  v33 = MEMORY[0x1E696E5D8];
  *(inited + 176) = v32;
  *(inited + 184) = v34;
  v35 = *v33;
  *(inited + 192) = *v33;
  v36 = *MEMORY[0x1E695CBB8];
  v37 = sub_1DD63FDD8();
  v38 = MEMORY[0x1E696E610];
  *(inited + 200) = v37;
  *(inited + 208) = v39;
  v40 = *v38;
  *(inited + 216) = *v38;
  v41 = *MEMORY[0x1E695CBA0];
  v42 = sub_1DD63FDD8();
  v43 = MEMORY[0x1E696E5F8];
  *(inited + 224) = v42;
  *(inited + 232) = v44;
  v45 = *v43;
  *(inited + 240) = *v43;
  v46 = *MEMORY[0x1E695CBC8];
  *(inited + 248) = sub_1DD63FDD8();
  *(inited + 256) = v47;
  v48 = *MEMORY[0x1E696E600];
  *(inited + 264) = *MEMORY[0x1E696E600];
  *(inited + 272) = 1701670760;
  v70 = v48;
  *(inited + 280) = 0xE400000000000000;
  *(inited + 288) = v5;
  *(inited + 296) = 1802661751;
  *(inited + 304) = 0xE400000000000000;
  *(inited + 312) = v10;
  *(inited + 320) = 0x726568746FLL;
  *(inited + 328) = 0xE500000000000000;
  *(inited + 336) = v15;
  *(inited + 344) = 0x656E6F687069;
  *(inited + 352) = 0xE600000000000000;
  *(inited + 360) = v20;
  *(inited + 368) = 0x656C69626F6DLL;
  *(inited + 376) = 0xE600000000000000;
  *(inited + 384) = v25;
  *(inited + 392) = 1852399981;
  *(inited + 400) = 0xE400000000000000;
  *(inited + 408) = v30;
  *(inited + 416) = 0x786166656D6F68;
  *(inited + 424) = 0xE700000000000000;
  *(inited + 432) = v35;
  *(inited + 440) = 0x7861666B726F77;
  *(inited + 448) = 0xE700000000000000;
  *(inited + 456) = v40;
  *(inited + 464) = 0x7265676170;
  *(inited + 472) = 0xE500000000000000;
  *(inited + 480) = v45;
  *(inited + 488) = 0x6C6F6F686373;
  *(inited + 496) = 0xE600000000000000;
  *(inited + 504) = v48;
  type metadata accessor for INPersonHandleLabel(0);
  v69 = v5;
  v49 = v10;
  v50 = v15;
  v51 = v20;
  v52 = v25;
  v53 = v30;
  v54 = v35;
  v55 = v40;
  v56 = v45;
  v57 = v70;
  v58 = v69;
  v59 = v49;
  v60 = v50;
  v61 = v51;
  v62 = v52;
  v63 = v53;
  v64 = v54;
  v65 = v55;
  v66 = v56;
  v67 = v57;
  result = sub_1DD63FC88();
  off_1EE1630C8 = result;
  return result;
}

void sub_1DD4085DC(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  if (a1 >= 3)
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v4 = sub_1DD63F9F8();
    __swift_project_value_buffer(v4, qword_1EE16F068);
    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640378();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_1DD38D000, v5, v6, "unhandled INPersonHandleType: %ld", v7, 0xCu);
      MEMORY[0x1E12B3DA0](v7, -1, -1);
    }

    LOBYTE(v2) = 0;
  }

  *a2 = v2;
}

id sub_1DD4086E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1DD63FDA8();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

id sub_1DD40874C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = sub_1DD63CD18();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v16) != 1)
  {
    v17 = sub_1DD63CCA8();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_1DD63FDA8();
  }

  else
  {
    v18 = 0;
  }

  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v19 = sub_1DD63FDA8();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = sub_1DD63FDA8();

LABEL_11:
  v21 = [v10 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20];

  return v21;
}

id sub_1DD4088D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = sub_1DD63FDA8();

  v14 = [v7 initWithValue:v13 type:a3 label:a4 emergencyType:a5 faceTimeType:a6 suggested:a7 & 1];

  return v14;
}

uint64_t sub_1DD408964(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4C8, &unk_1DD646850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD4089D4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1DD4089F4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_1DD408A18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD63FDA8();

  [a3 setSourceAppBundleIdentifier_];
}

uint64_t sub_1DD408A7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4C8, &unk_1DD646850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DD408AE4()
{
  result = qword_1EE166068[0];
  if (!qword_1EE166068[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EE166068);
  }

  return result;
}

id sub_1DD408B28(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1DD408B54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD408B94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DD408C04()
{
  OUTLINED_FUNCTION_15_12();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_9_11();
      break;
    case 3:
    case 4:
      OUTLINED_FUNCTION_78_1();
      OUTLINED_FUNCTION_20_6();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD408C90()
{
  OUTLINED_FUNCTION_99_0();
  switch(v0)
  {
    case 3:
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_20_6();
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD408D98(uint64_t a1, char a2)
{
  v2 = *&aEverydayweekda_0[8 * a2];
  sub_1DD63FD28();
}

uint64_t sub_1DD408DD8()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD408E84(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_15_4();
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD408EF8()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD408F88()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD409048(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_28_3();
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD4090B8(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_28_3();
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD409128()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD409198()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40924C()
{
  OUTLINED_FUNCTION_37_6();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_20_6();
      break;
    case 2:
      OUTLINED_FUNCTION_68_1();
      break;
    case 3:
      OUTLINED_FUNCTION_35_3();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD4092CC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      break;
    case 3:
      OUTLINED_FUNCTION_89_0();
      break;
    case 4:
      OUTLINED_FUNCTION_35_3();
      break;
    default:
      OUTLINED_FUNCTION_20_6();
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD4093AC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_44_2();
      break;
    case 2:
    case 3:
      OUTLINED_FUNCTION_20_6();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD409464(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_31_5();
      break;
    case 4:
      OUTLINED_FUNCTION_89_0();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD409518()
{
  OUTLINED_FUNCTION_31_5();
  sub_1DD63FD28();
}

uint64_t sub_1DD40959C()
{
  OUTLINED_FUNCTION_44_2();
  switch(v0)
  {
    case 2:
    case 3:
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_20_6();
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40966C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_31_5();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD409720()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40979C(uint64_t a1, __int16 a2)
{
  sub_1DD538ED0(a2);
  OUTLINED_FUNCTION_29_4();
}

uint64_t sub_1DD4097DC()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD409844()
{
  OUTLINED_FUNCTION_15_12();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_9_11();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD4098DC()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD409960()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD409A40()
{
  OUTLINED_FUNCTION_99_0();
  sub_1DD63FD28();
}

uint64_t sub_1DD409B0C()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD409BC4(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_15_4();
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD409C44()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD409D18()
{
  OUTLINED_FUNCTION_37_6();
  switch(v0)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_20_6();
      break;
    case 3:
      OUTLINED_FUNCTION_68_1();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD409DC4()
{
  OUTLINED_FUNCTION_26_1();
  sub_1DD63FD28();
}

uint64_t sub_1DD409E3C()
{
  OUTLINED_FUNCTION_99_0();
  switch(v0)
  {
    case 5:
      OUTLINED_FUNCTION_20_6();
      OUTLINED_FUNCTION_78_1();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD409F94()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40A010()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40A09C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_45_2();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40A168()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40A1D0()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40A2CC()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40A324()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40A384()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40A420(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_28_3();
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40A498(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 8:
      OUTLINED_FUNCTION_78_1();
      OUTLINED_FUNCTION_20_6();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40A5D0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 4:
      OUTLINED_FUNCTION_20_6();
      break;
    case 5:
      OUTLINED_FUNCTION_68_1();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40A6B8()
{
  OUTLINED_FUNCTION_15_12();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_42_2();
      break;
    case 3:
      OUTLINED_FUNCTION_9_11();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40A748()
{
  OUTLINED_FUNCTION_99_0();
  switch(v0)
  {
    case 4:
      OUTLINED_FUNCTION_45_2();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40A810()
{
  OUTLINED_FUNCTION_49_3();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_28_3();
      break;
    case 3:
      OUTLINED_FUNCTION_76_1();
      break;
    case 7:
      OUTLINED_FUNCTION_9_11();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40A8E8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
      OUTLINED_FUNCTION_20_6();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40A9D0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_15_4();
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40AA48()
{
  OUTLINED_FUNCTION_96();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_94();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40AB50(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_28_3();
      break;
    case 3:
      OUTLINED_FUNCTION_9_11();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40ABF4(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_15_4();
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40AC64()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40ACBC()
{
  OUTLINED_FUNCTION_49_3();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_28_3();
      break;
    case 4:
      OUTLINED_FUNCTION_76_1();
      break;
    case 8:
      OUTLINED_FUNCTION_9_11();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40AD94()
{
  OUTLINED_FUNCTION_94();
  switch(v0)
  {
    case 1:
    case 7:
      OUTLINED_FUNCTION_96();
      break;
    case 3:
      OUTLINED_FUNCTION_94();
      break;
    case 4:
      OUTLINED_FUNCTION_96();
      break;
    case 5:
      OUTLINED_FUNCTION_94();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40AEA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_29_4();
}

uint64_t sub_1DD40AEF0()
{
  OUTLINED_FUNCTION_15_12();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_42_2();
      break;
    case 2:
      OUTLINED_FUNCTION_9_11();
      break;
    default:
      break;
  }

  sub_1DD63FD28();
}

uint64_t sub_1DD40AF94()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD40AFFC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  OUTLINED_FUNCTION_29_4();
}

uint64_t Contact.displayName.getter()
{
  v0 = sub_1DD63CD18();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  Contact.nameComponents.getter();
  v6 = sub_1DD63CCF8();
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_14_9();
  v9(v8);
  return v6;
}

void sub_1DD40B108()
{
  OUTLINED_FUNCTION_18_4();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_32_6();
  *(v5 + 16) = 2;
  *(v5 + 200) = 0;
  *(v5 + 208) = 0xE000000000000000;
  v10 = MEMORY[0x1E69E7CC0];
  *(v5 + 216) = MEMORY[0x1E69E7CC0];
  v11 = type metadata accessor for Contact();
  v12 = v11[19];
  v52 = sub_1DD63CBB8();
  v54 = v12;
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  *(v5 + v11[20]) = v10;
  *(v5 + v11[21]) = 0;
  v17 = (v5 + v11[22]);
  *v17 = 0;
  v17[1] = 0;
  *(v5 + v11[23]) = 2;
  v18 = [v3 identifier];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *v5 = v10;
  *(v5 + 8) = v1;
  v19 = [v3 namePrefix];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *(v5 + 24) = v10;
  *(v5 + 32) = v1;
  v20 = [v3 givenName];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *(v5 + 40) = v10;
  *(v5 + 48) = v1;
  v21 = [v3 middleName];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *(v5 + 56) = v10;
  *(v5 + 64) = v1;
  v22 = [v3 familyName];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *(v5 + 72) = v10;
  *(v5 + 80) = v1;
  v23 = [v3 previousFamilyName];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *(v5 + 88) = v10;
  *(v5 + 96) = v1;
  v24 = [v3 nameSuffix];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *(v5 + 104) = v10;
  *(v5 + 112) = v1;
  v25 = [v3 nickname];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *(v5 + 120) = v10;
  *(v5 + 128) = v1;
  v26 = [v3 organizationName];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *(v5 + 136) = v10;
  *(v5 + 144) = v1;
  v27 = sub_1DD415424(v3, &selRef_pronunciationGivenName);
  if (!v28 || (sub_1DD5E77D4(v27, v28), OUTLINED_FUNCTION_48_3(), , !v10))
  {
    v29 = [v3 phoneticGivenName];
    sub_1DD63FDD8();
    OUTLINED_FUNCTION_48_3();
  }

  *(v5 + 152) = v26;
  *(v5 + 160) = v10;
  v30 = sub_1DD415424(v3, &selRef_pronunciationFamilyName);
  if (!v31 || (v32 = v31, sub_1DD5E77D4(v30, v31), OUTLINED_FUNCTION_48_3(), , !v10))
  {
    v32 = [v3 phoneticFamilyName];
    sub_1DD63FDD8();
    OUTLINED_FUNCTION_48_3();
  }

  *(v5 + 184) = v26;
  *(v5 + 192) = v10;
  v33 = [v3 phoneticMiddleName];
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_62_2();
  *(v5 + 168) = v10;
  *(v5 + 176) = v32;
  v34 = [v3 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC248, &qword_1DD657600);
  v35 = sub_1DD640118();

  sub_1DD40F188(v35, 2, sub_1DD4149DC);
  v37 = v36;

  sub_1DD607854(v37);
  v38 = [v3 emailAddresses];
  v39 = sub_1DD640118();

  v40 = 1;
  sub_1DD40F188(v39, 1, sub_1DD4147B4);
  v42 = v41;

  sub_1DD607854(v42);
  v43 = [v3 birthday];
  if (v43)
  {
    v44 = v43;
    sub_1DD63CA18();

    v40 = 0;
  }

  __swift_storeEnumTagSinglePayload(v0, v40, 1, v53);
  sub_1DD4155A8(v0, v5 + v54);
  v45 = sub_1DD415424(v3, &selRef_phonemeData);
  v47 = v46;

  if (v47)
  {
    v48 = v45;
  }

  else
  {
    v48 = 0;
  }

  v49 = 0xE000000000000000;
  if (v47)
  {
    v49 = v47;
  }

  v50 = (v5 + v11[24]);
  *v50 = v48;
  v50[1] = v49;
  v51 = v17[1];

  *v17 = 0;
  v17[1] = 0;
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD40B5BC()
{
  OUTLINED_FUNCTION_14_1();
  v0 = sub_1DD3B7F10();
  OUTLINED_FUNCTION_69(v0, MEMORY[0x1E69E6158], v1, v0, v2, v3, v4, v5, 64);
  if (sub_1DD6406D8())
  {
    v6 = *MEMORY[0x1E69964B0];
    OUTLINED_FUNCTION_14_9();
    v7 = sub_1DD63FDA8();
    v8 = OUTLINED_FUNCTION_34_4();
    v10 = v9(v8, v7);

    sub_1DD63FDD8();
  }

  else
  {
    sub_1DD3EB444();

    OUTLINED_FUNCTION_14_9();
    v11 = sub_1DD40B8E0();
    sub_1DD415480(v11);
  }

  return OUTLINED_FUNCTION_15_0();
}

void ContactHandle.init(id:type:label:value:isSuggested:)()
{
  OUTLINED_FUNCTION_101_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v32 = v11;
  v13 = v12;
  v14 = *v0;
  if (v2)
  {
    v15 = v1;
  }

  else
  {
    v15 = 0;
  }

  if (v2)
  {
    v16 = v2;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  if (*v0)
  {
    v31 = v3;
    if (v14 == 1)
    {
      v17 = *MEMORY[0x1E69964B0];

      OUTLINED_FUNCTION_25_3();
      v18 = sub_1DD63FDA8();

      v19 = OUTLINED_FUNCTION_34_4();
      v21 = v20(v19, v18);

      v22 = sub_1DD63FDD8();
      v24 = v23;
    }

    else
    {
      v22 = sub_1DD3EB444();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_25_3();
      v26 = sub_1DD40B8E0();
      sub_1DD415480(v26);
      OUTLINED_FUNCTION_77_0();

      if (v4)
      {
        v24 = v4;
      }

      else
      {
        v22 = 0;
        v24 = 0xE000000000000000;
      }
    }

    LOBYTE(v4) = v31;
  }

  else
  {

    OUTLINED_FUNCTION_25_3();
    v22 = sub_1DD40B5BC();
    v24 = v25;
  }

  v27 = 0xE000000000000000;
  if (v6)
  {
    v28 = v6;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  if (v6)
  {
    v29 = v8;
  }

  else
  {
    v29 = 0;
  }

  if (v10)
  {
    v27 = v10;
  }

  v30 = v32;
  if (!v10)
  {
    v30 = 0;
  }

  *v13 = v30;
  *(v13 + 8) = v27;
  *(v13 + 16) = v14;
  *(v13 + 24) = v29;
  *(v13 + 32) = v28;
  *(v13 + 40) = v15;
  *(v13 + 48) = v16;
  *(v13 + 56) = v22;
  *(v13 + 64) = v24;
  *(v13 + 72) = v4 & 1;
  *(v13 + 73) = 2;
  OUTLINED_FUNCTION_100_0();
}

void sub_1DD40B80C(unsigned __int8 *a1)
{
  if (*a1)
  {
    v2 = *a1 == *(v1 + 16);
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = *(a1 + 1);
    v4 = *(a1 + 2);
    v5 = *(a1 + 3);
    v6 = *(a1 + 4);
    v7 = *(a1 + 5);
    v11 = *v1;
    v13 = *(v1 + 17);
    v15 = *(v1 + 33);
    v17 = *(v1 + 49);
    v8 = *(v1 + 58);
    OUTLINED_FUNCTION_47_3();
    if (sub_1DD412154(v9))
    {
      v12 = *v1;
      v14 = *(v1 + 17);
      v16 = *(v1 + 33);
      v18 = *(v1 + 49);
      v10 = *(v1 + 58);
      OUTLINED_FUNCTION_47_3();
      sub_1DD412278();
    }
  }
}

id sub_1DD40B8E0()
{
  OUTLINED_FUNCTION_14_1();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_14_9();
  v1 = sub_1DD63FDA8();

  v2 = [v0 initWithStringValue_];

  return v2;
}

uint64_t static ContactSource.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1DD640CD8();
}

uint64_t ContactSource.description.getter()
{
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.id.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Contact.namePrefix.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.namePrefix.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Contact.givenName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.givenName.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Contact.middleName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.middleName.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Contact.familyName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.familyName.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Contact.previousFamilyName.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.previousFamilyName.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Contact.nameSuffix.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.nameSuffix.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t Contact.nickname.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.nickname.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 128);

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t Contact.organizationName.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.organizationName.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 144);

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t Contact.phoneticGivenName.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.phoneticGivenName.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 160);

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t Contact.phoneticMiddleName.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.phoneticMiddleName.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 176);

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t Contact.phoneticFamilyName.getter()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.phoneticFamilyName.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 192);

  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
  return result;
}

uint64_t Contact.phoneticOrganizationName.getter()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.phoneticOrganizationName.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 208);

  *(v1 + 200) = v2;
  *(v1 + 208) = v0;
  return result;
}

uint64_t Contact.contactRelations.setter(uint64_t a1)
{
  v3 = *(v1 + 216);

  *(v1 + 216) = a1;
  return result;
}

uint64_t Contact.birthday.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Contact() + 76);

  return sub_1DD415538(v3, a1);
}

uint64_t Contact.birthday.setter()
{
  OUTLINED_FUNCTION_43();
  v2 = v1 + *(type metadata accessor for Contact() + 76);

  return sub_1DD4155A8(v0, v2);
}

uint64_t Contact.birthday.modify()
{
  OUTLINED_FUNCTION_43();
  v0 = *(type metadata accessor for Contact() + 76);
  return OUTLINED_FUNCTION_88_2();
}

uint64_t Contact.handles.getter()
{
  v1 = *(v0 + *(type metadata accessor for Contact() + 80));
}

uint64_t Contact.handles.setter()
{
  OUTLINED_FUNCTION_43();
  v2 = *(type metadata accessor for Contact() + 80);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t Contact.handles.modify()
{
  OUTLINED_FUNCTION_43();
  v0 = *(type metadata accessor for Contact() + 80);
  return OUTLINED_FUNCTION_88_2();
}

uint64_t Contact.isSuggested.setter(char a1)
{
  result = type metadata accessor for Contact();
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t Contact.isSuggested.modify()
{
  OUTLINED_FUNCTION_43();
  v0 = *(type metadata accessor for Contact() + 84);
  return OUTLINED_FUNCTION_88_2();
}

uint64_t Contact.source.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Contact() + 88));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t Contact.source.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for Contact() + 88));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t Contact.source.modify()
{
  OUTLINED_FUNCTION_43();
  v0 = *(type metadata accessor for Contact() + 88);
  return OUTLINED_FUNCTION_88_2();
}

uint64_t Contact.description.getter()
{
  v1 = v0;
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0x28746361746E6F43, 0xE800000000000000);
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_1_25();
  if (v4)
  {
    OUTLINED_FUNCTION_61_2();
    MEMORY[0x1E12B2260]();
    OUTLINED_FUNCTION_17_11();
    v5 = v70;
    v6 = v71;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  MEMORY[0x1E12B2260](v5, v6);

  if (v0[2])
  {
    v7 = 0x7572743D654D7369;
  }

  else
  {
    v7 = 0;
  }

  if (v0[2])
  {
    v8 = 0xEA00000000002065;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  MEMORY[0x1E12B2260](v7, v8);

  v9 = type metadata accessor for Contact();
  *(v0 + v9[21]);
  OUTLINED_FUNCTION_51_3();

  MEMORY[0x1E12B2260](0x3D656372756F73, 0xE700000000000000);
  v10 = (v0 + v9[22]);
  if (v10[1])
  {
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v12 = 0x80000001DD66B290;
    v11 = 0xD00000000000001BLL;
  }

  MEMORY[0x1E12B2260](v11, v12);

  MEMORY[0x1E12B2260](32, 0xE100000000000000);
  v13 = v0[3];
  v14 = v0[4];
  OUTLINED_FUNCTION_1_25();
  if (v17)
  {
    MEMORY[0x1E12B2260](v15, v16);
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  v18 = v0[5];
  v19 = v0[6];
  OUTLINED_FUNCTION_1_25();
  if (v20)
  {
    OUTLINED_FUNCTION_61_2();
    MEMORY[0x1E12B2260]();
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  v21 = v0[7];
  v22 = v0[8];
  OUTLINED_FUNCTION_1_25();
  if (v25)
  {
    MEMORY[0x1E12B2260](v23, v24);
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  v26 = v0[9];
  v27 = v0[10];
  OUTLINED_FUNCTION_1_25();
  if (v30)
  {
    MEMORY[0x1E12B2260](v28, v29);
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  v31 = v0[11];
  v32 = v0[12];
  OUTLINED_FUNCTION_1_25();
  if (v33)
  {
    OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_83_1();
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  v34 = v0[13];
  v35 = v0[14];
  OUTLINED_FUNCTION_1_25();
  if (v38)
  {
    MEMORY[0x1E12B2260](v36, v37);
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  v39 = v0[15];
  v40 = v0[16];
  OUTLINED_FUNCTION_1_25();
  if (v41)
  {
    OUTLINED_FUNCTION_61_2();
    MEMORY[0x1E12B2260]();
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  v42 = v0[17];
  v43 = v0[18];
  OUTLINED_FUNCTION_1_25();
  if (v44)
  {
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x1E12B2260](v45, v46);
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  v47 = v0[19];
  v48 = v0[20];
  OUTLINED_FUNCTION_1_25();
  if (v49)
  {
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x1E12B2260](v50, v51);
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  v52 = v0[21];
  v53 = v0[22];
  OUTLINED_FUNCTION_1_25();
  if (v54)
  {
    OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_83_1();
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  v55 = v0[23];
  v56 = v0[24];
  OUTLINED_FUNCTION_1_25();
  if (v57)
  {
    OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_83_1();
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  v58 = v0[25];
  v59 = v0[26];
  OUTLINED_FUNCTION_1_25();
  if (v60)
  {
    OUTLINED_FUNCTION_26_1();
    MEMORY[0x1E12B2260](v61, v62);
    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  v63 = v0[27];
  if (*(v63 + 16))
  {
    OUTLINED_FUNCTION_26_1();
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC50, &qword_1DD644060);
    v65 = MEMORY[0x1E12B2430](v63, v64);
    MEMORY[0x1E12B2260](v65);

    OUTLINED_FUNCTION_17_11();
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  if (*(*(v1 + v9[20]) + 16))
  {
    v66 = MEMORY[0x1E12B2430]();
    MEMORY[0x1E12B2260](v66);

    OUTLINED_FUNCTION_17_11();
    v67 = 0x3D73656C646E6168;
    v68 = 0xE800000000000000;
  }

  else
  {
    v67 = 0;
    v68 = 0xE000000000000000;
  }

  MEMORY[0x1E12B2260](v67, v68);

  MEMORY[0x1E12B2260](41, 0xE100000000000000);
  return 0;
}

uint64_t Contact.LabeledValue.label.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.LabeledValue.description.getter(uint64_t a1)
{
  v2 = v1;
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD000000000000010, 0x80000001DD66B3B0);
  MEMORY[0x1E12B2260](*v2, v2[1]);
  MEMORY[0x1E12B2260](0x3D6C6562616C20, 0xE700000000000000);
  MEMORY[0x1E12B2260](v2[2], v2[3]);
  MEMORY[0x1E12B2260](0x3D65756C617620, 0xE700000000000000);
  v4 = *(a1 + 64);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_1DD640CC8();
  MEMORY[0x1E12B2260](41, 0xE100000000000000);
  return 0;
}

uint64_t Contact.LabeledValue.init(id:label:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  v10 = type metadata accessor for Contact.LabeledValue();
  return (*(*(a6 - 8) + 32))(&a7[*(v10 + 64)], a5, a6);
}

uint64_t static Contact.LabeledValue.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (v10 || (sub_1DD640CD8()) && (a1[2] == a2[2] ? (v11 = a1[3] == a2[3]) : (v11 = 0), v11 || (sub_1DD640CD8()))
  {
    v12 = *(type metadata accessor for Contact.LabeledValue() + 64);
    v13 = *(a7 + 8);
    v14 = sub_1DD63FD98();
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1DD40CC9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD40CDA4(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x6C6562616CLL;
  }

  return 0x65756C6176;
}

BOOL sub_1DD40CDE8(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  return sub_1DD39A9F8(*a1, *a2);
}

uint64_t sub_1DD40CE04(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  return sub_1DD3B3774(*v1);
}

uint64_t sub_1DD40CE18(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  return sub_1DD3AA530(a1, *v2);
}

uint64_t sub_1DD40CE2C(uint64_t a1, void *a2)
{
  sub_1DD640E28();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  sub_1DD3AA530(v10, *v2);
  return sub_1DD640E78();
}

uint64_t sub_1DD40CE7C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  return sub_1DD40CDA4(*v1);
}

uint64_t sub_1DD40CE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  result = sub_1DD40CC9C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1DD40CEC8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = *v1;
  return sub_1DD3B20F0();
}

uint64_t sub_1DD40CEF4@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  result = sub_1DD3B376C();
  *a2 = result;
  return result;
}

uint64_t sub_1DD40CF2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DD40CF80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void Contact.LabeledValue.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v21 = v0;
  v4 = v3;
  v6 = v5;
  v20 = *(v3 + 16);
  v22 = *(v3 + 32);
  v19 = *(v3 + 40);
  type metadata accessor for Contact.LabeledValue.CodingKeys();
  OUTLINED_FUNCTION_27_6();
  swift_getWitnessTable();
  v7 = sub_1DD640C88();
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_22_4();
  v13 = v6[4];
  OUTLINED_FUNCTION_41_3(v6, v6[3]);
  sub_1DD640EF8();
  v14 = *v21;
  v15 = v21[1];
  sub_1DD640C18();
  if (!v1)
  {
    v16 = v21[2];
    v17 = v21[3];
    sub_1DD640C18();
    v18 = *(v4 + 64);
    sub_1DD640C68();
  }

  (*(v9 + 8))(v2, v7);
  OUTLINED_FUNCTION_86();
}

uint64_t Contact.LabeledValue.hash(into:)()
{
  OUTLINED_FUNCTION_14_1();
  v2 = *v1;
  v3 = v1[1];
  sub_1DD63FD28();
  v4 = v1[2];
  v5 = v1[3];
  sub_1DD63FD28();
  v6 = *(v0 + 16);
  v7 = *(v0 + 48);
  v8 = v1 + *(v0 + 64);
  return sub_1DD63FCF8();
}

uint64_t Contact.LabeledValue.hashValue.getter()
{
  OUTLINED_FUNCTION_79();
  Contact.LabeledValue.hash(into:)();
  return sub_1DD640E78();
}

void Contact.LabeledValue.init(from:)()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v48 = v13;
  v47 = *(v9 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v51 = v16 - v15;
  v55 = v17;
  v56 = v18;
  v57 = v19;
  v58 = v20;
  v59 = v21;
  type metadata accessor for Contact.LabeledValue.CodingKeys();
  OUTLINED_FUNCTION_27_6();
  swift_getWitnessTable();
  v53 = sub_1DD640BA8();
  OUTLINED_FUNCTION_0(v53);
  v50 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v45 - v26;
  v52 = v10;
  v55 = v10;
  v56 = v8;
  v49 = v6;
  v57 = v6;
  v58 = v4;
  v59 = v2;
  v28 = type metadata accessor for Contact.LabeledValue();
  OUTLINED_FUNCTION_0(v28);
  v46 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v32);
  v34 = (v45 - v33);
  v36 = v12[3];
  v35 = v12[4];
  v37 = OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_41_3(v37, v38);
  v54 = v27;
  sub_1DD640ED8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v60 = v34;
    v40 = v50;
    v39 = v51;
    v41 = v52;
    LOBYTE(v55) = 0;
    *v60 = OUTLINED_FUNCTION_102();
    v60[1] = v42;
    v45[1] = v42;
    LOBYTE(v55) = 1;
    v60[2] = OUTLINED_FUNCTION_102();
    v60[3] = v43;
    LOBYTE(v55) = 2;
    sub_1DD640B78();
    (*(v40 + 8))(v54, v53);
    (*(v47 + 32))(v60 + *(v28 + 64), v39, v41);
    v44 = v46;
    (*(v46 + 16))(v48, v60, v28);
    __swift_destroy_boxed_opaque_existential_1(v12);
    (*(v44 + 8))(v60, v28);
  }

  OUTLINED_FUNCTION_86();
}

void sub_1DD40D590(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  Contact.LabeledValue.init(from:)();
}

uint64_t sub_1DD40D5D0@<X0>(uint64_t *a1@<X8>)
{
  result = Contact.LabeledValue.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD40D618()
{
  sub_1DD640E28();
  Contact.LabeledValue.hash(into:)();
  return sub_1DD640E78();
}

uint64_t Contact.PostalAddress.street.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Contact.PostalAddress.city.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.PostalAddress.city.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Contact.PostalAddress.state.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.PostalAddress.state.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Contact.PostalAddress.postalCode.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.PostalAddress.postalCode.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Contact.PostalAddress.country.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.PostalAddress.country.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Contact.PostalAddress.isoCountryCode.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.PostalAddress.isoCountryCode.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Contact.PostalAddress.subAdministrativeArea.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.PostalAddress.subAdministrativeArea.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Contact.PostalAddress.subLocality.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t Contact.PostalAddress.subLocality.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t static Contact.PostalAddress.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_65_2(a1);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v7 = v3[5];
  v39 = v3[7];
  v40 = v3[6];
  v38 = v3[8];
  v37 = v3[9];
  v33 = v3[11];
  v34 = v3[10];
  v29 = v3[13];
  v30 = v3[12];
  v25 = v3[15];
  v26 = v3[14];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = v2[7];
  v35 = v2[9];
  v36 = v2[8];
  v31 = v2[11];
  v32 = v2[10];
  v27 = v2[13];
  v28 = v2[12];
  v14 = v1 == *v2 && v3[1] == v2[1];
  v23 = v2[15];
  v24 = v2[14];
  if (!v14 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v4 != v8 || v6 != v9)
  {
    OUTLINED_FUNCTION_11_0();
    if ((sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  if (v5 != v10 || v7 != v11)
  {
    OUTLINED_FUNCTION_15_0();
    if ((sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  v17 = v40 == v12 && v39 == v13;
  if (!v17 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v18 = v38 == v36 && v37 == v35;
  if (!v18 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v19 = v34 == v32 && v33 == v31;
  if (!v19 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v20 = v30 == v28 && v29 == v27;
  if (!v20 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v26 == v24 && v25 == v23)
  {
    return 1;
  }

  return sub_1DD640CD8();
}

uint64_t sub_1DD40DC38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746565727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 2037672291 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x80000001DD66B440 == a2;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6C61636F4C627573 && a2 == 0xEB00000000797469)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD640CD8();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD40DECC(char a1)
{
  result = 0x746565727473;
  switch(a1)
  {
    case 1:
      result = 2037672291;
      break;
    case 2:
      result = 0x6574617473;
      break;
    case 3:
      result = 0x6F436C6174736F70;
      break;
    case 4:
      result = 0x7972746E756F63;
      break;
    case 5:
      result = 0x746E756F436F7369;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x6C61636F4C627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD40DFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD40DC38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD40DFEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD40DEC4();
  *a1 = result;
  return result;
}

uint64_t sub_1DD40E014(uint64_t a1)
{
  v2 = sub_1DD415648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD40E050(uint64_t a1)
{
  v2 = sub_1DD415648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Contact.PostalAddress.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC500, &qword_1DD646920);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21_5();
  v11 = *v0;
  v12 = v0[1];
  v26 = v0[3];
  v27 = v0[2];
  v24 = v0[5];
  v25 = v0[4];
  v22 = v0[7];
  v23 = v0[6];
  v20 = v0[9];
  v21 = v0[8];
  v18 = v0[10];
  v19 = v0[11];
  v16 = v0[12];
  v17 = v0[13];
  v14 = v0[14];
  v15 = v0[15];
  v13 = v4[4];
  OUTLINED_FUNCTION_41_3(v4, v4[3]);
  sub_1DD415648();
  OUTLINED_FUNCTION_98_0();
  sub_1DD640EF8();
  OUTLINED_FUNCTION_97_0();
  sub_1DD640C18();
  if (!v1)
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_80_0();
    OUTLINED_FUNCTION_80_0();
    OUTLINED_FUNCTION_80_0();
    OUTLINED_FUNCTION_80_0();
    OUTLINED_FUNCTION_80_0();
    OUTLINED_FUNCTION_80_0();
    OUTLINED_FUNCTION_80_0();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_86();
}

void Contact.PostalAddress.init(from:)()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC510, &qword_1DD646928);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_66_1();
  v12 = v3[4];
  v42 = v3;
  OUTLINED_FUNCTION_41_3(v3, v3[3]);
  sub_1DD415648();
  sub_1DD640ED8();
  if (v0)
  {
    OUTLINED_FUNCTION_7_13();
    __swift_destroy_boxed_opaque_existential_1(v3);
    v52 = 0;
    v53 = 0xE000000000000000;
    v54 = 0;
    v55 = 0xE000000000000000;
    v56 = 0;
    v57 = 0xE000000000000000;
    v58 = v43;
    v59 = v0;
    v60 = 0;
    v61 = v5;
    v62 = 0;
    v63 = v45;
    v64 = v49;
    v65 = v47;
    v66 = 0;
    v67 = 0xE000000000000000;
  }

  else
  {
    LOBYTE(v52) = 0;
    v38 = sub_1DD640B28();
    v39 = v13;
    v14 = OUTLINED_FUNCTION_16_8(1);
    v36 = v15;
    v37 = v14;
    v16 = OUTLINED_FUNCTION_16_8(2);
    v18 = v17;
    v35 = v16;
    v19 = OUTLINED_FUNCTION_16_8(3);
    v21 = v20;
    v44 = v19;
    v22 = OUTLINED_FUNCTION_16_8(4);
    v34 = v23;
    v40 = v22;
    v24 = OUTLINED_FUNCTION_16_8(5);
    v46 = v25;
    v41 = v24;
    v26 = OUTLINED_FUNCTION_16_8(6);
    v48 = v27;
    v50 = v26;
    v28 = v1;
    sub_1DD640B28();
    v29 = *(v8 + 8);
    v30 = OUTLINED_FUNCTION_59_0();
    v32 = v31;
    v33(v30, v6);
    v51[0] = v38;
    v51[1] = v39;
    v51[2] = v37;
    v51[3] = v36;
    v51[4] = v35;
    v51[5] = v18;
    v51[6] = v44;
    v51[7] = v21;
    v51[8] = v40;
    v51[9] = v34;
    v51[10] = v41;
    v51[11] = v46;
    v51[12] = v50;
    v51[13] = v48;
    v51[14] = v28;
    v51[15] = v32;
    memcpy(v5, v51, 0x80uLL);
    sub_1DD4156CC(v51, &v52);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v52 = v38;
    v53 = v39;
    v54 = v37;
    v55 = v36;
    v56 = v35;
    v57 = v18;
    v58 = v44;
    v59 = v21;
    v60 = v40;
    v61 = v34;
    v62 = v41;
    v63 = v46;
    v64 = v50;
    v65 = v48;
    v66 = v28;
    v67 = v32;
  }

  sub_1DD41569C(&v52);
  OUTLINED_FUNCTION_86();
}

uint64_t Contact.InstantMessageAddress.username.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t static Contact.InstantMessageAddress.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_65_2(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (v9 = sub_1DD640CD8(), result = 0, (v9 & 1) != 0))
  {
    if (v4 == v6 && v5 == v7)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_15_0();

      return sub_1DD640CD8();
    }
  }

  return result;
}

uint64_t sub_1DD40E7BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D616E72657375 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD40E884(char a1)
{
  if (a1)
  {
    return 0x656D616E72657375;
  }

  else
  {
    return 0x65636976726573;
  }
}

uint64_t sub_1DD40E8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD40E7BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD40E8EC(uint64_t a1)
{
  v2 = sub_1DD415704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD40E928(uint64_t a1)
{
  v2 = sub_1DD415704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Contact.InstantMessageAddress.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC518, &qword_1DD646930);
  OUTLINED_FUNCTION_0(v5);
  v15 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21_5();
  v10 = *v0;
  v11 = v0[1];
  v13 = v0[3];
  v14 = v0[2];
  v12 = v4[4];
  OUTLINED_FUNCTION_41_3(v4, v4[3]);
  sub_1DD415704();
  OUTLINED_FUNCTION_98_0();
  sub_1DD640EF8();
  OUTLINED_FUNCTION_97_0();
  sub_1DD640C18();
  if (!v1)
  {
    OUTLINED_FUNCTION_58();
    sub_1DD640C18();
  }

  (*(v15 + 8))(v2, v5);
  OUTLINED_FUNCTION_86();
}

void Contact.InstantMessageAddress.init(from:)()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC528, &qword_1DD646938);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_66_1();
  v12 = v3[4];
  OUTLINED_FUNCTION_41_3(v3, v3[3]);
  sub_1DD415704();
  sub_1DD640ED8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v13 = sub_1DD640B28();
    v15 = v14;
    OUTLINED_FUNCTION_58();
    v16 = sub_1DD640B28();
    v18 = v17;
    v19 = v16;
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    v5[1] = v15;
    v5[2] = v19;
    v5[3] = v18;

    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_86();
}

void Contact.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xE000000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0xE000000000000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0xE000000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0xE000000000000000;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0xE000000000000000;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0xE000000000000000;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0xE000000000000000;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 216) = MEMORY[0x1E69E7CC0];
  v3 = type metadata accessor for Contact();
  v4 = v3[19];
  sub_1DD63CBB8();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  *(a1 + v3[20]) = v2;
  OUTLINED_FUNCTION_55_3();
  *(a1 + v9) = 2;
  v10 = (a1 + v3[24]);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
}

uint64_t sub_1DD40ED6C@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, 0x108uLL);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0xE000000000000000;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0xE000000000000000;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0xE000000000000000;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0xE000000000000000;
  v3 = MEMORY[0x1E69E7CC0];
  *(a2 + 216) = MEMORY[0x1E69E7CC0];
  v4 = type metadata accessor for Contact();
  v5 = v4[19];
  sub_1DD63CBB8();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = v4[20];
  *(a2 + v10) = v3;
  OUTLINED_FUNCTION_55_3();
  *(a2 + v11) = 2;
  v12 = (a2 + v4[24]);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = __dst[1];
  *a2 = __dst[0];
  *(a2 + 8) = v13;
  *(a2 + 16) = __dst[2];
  v14 = __dst[6];
  *(a2 + 24) = __dst[5];
  *(a2 + 32) = v14;
  v15 = __dst[7];
  v16 = __dst[8];
  *(a2 + 40) = __dst[7];
  *(a2 + 48) = v16;
  v17 = __dst[10];
  *(a2 + 56) = __dst[9];
  *(a2 + 64) = v17;
  v18 = __dst[12];
  *(a2 + 72) = __dst[11];
  *(a2 + 80) = v18;
  v19 = __dst[4];
  v20 = HIBYTE(__dst[4]) & 0xFLL;
  if ((__dst[4] & 0x2000000000000000) == 0)
  {
    v20 = __dst[3] & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = v15 & 0xFFFFFFFFFFFFLL;
    if ((v16 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v16) & 0xF;
    }

    if (!v21)
    {
      *(a2 + 40) = __dst[3];
      *(a2 + 48) = v19;
    }
  }

  v22 = __dst[14];
  *(a2 + 88) = __dst[13];
  *(a2 + 96) = v22;
  v23 = __dst[16];
  *(a2 + 104) = __dst[15];
  *(a2 + 112) = v23;
  v24 = __dst[18];
  *(a2 + 120) = __dst[17];
  *(a2 + 128) = v24;
  v25 = __dst[20];
  *(a2 + 136) = __dst[19];
  *(a2 + 144) = v25;
  v26 = __dst[26];
  if (__dst[26])
  {
    v37 = v10;
    v28 = __dst[24];
    v27 = __dst[25];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC40, &unk_1DD647D60);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1DD643F90;

    sub_1DD4178F8(v28, v27, v26);
    sub_1DD40F034();
    *(a2 + v37) = v29;
  }

  else
  {
  }

  v30 = __dst[23];
  if (!__dst[23])
  {
    return sub_1DD3C9580(__dst);
  }

  v31 = __dst[22];

  sub_1DD3C9580(__dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC48, &qword_1DD664C10);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1DD643F90;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0xE000000000000000;
  *(v32 + 32) = 0;
  *(v32 + 40) = 0xE000000000000000;
  *(v32 + 48) = v31;
  *(v32 + 56) = v30;

  OUTLINED_FUNCTION_93_0();
  result = sub_1DD4178B4(v33, v34, v35);
  *(a2 + 216) = v32;
  return result;
}

void sub_1DD40F034()
{
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  v5 = *v2;
  v7 = *(v2 + 1);
  v6 = *(v2 + 2);
  v9 = *(v2 + 3);
  v8 = *(v2 + 4);
  v10 = *(v2 + 5);
  if (!*v2)
  {
    v15 = *(v2 + 2);

    OUTLINED_FUNCTION_25_3();
    sub_1DD40B5BC();
    OUTLINED_FUNCTION_48_3();
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v0 = *MEMORY[0x1E69964B0];
    v11 = *(v2 + 2);

    OUTLINED_FUNCTION_25_3();
    v1 = sub_1DD63FDA8();
    v12 = OUTLINED_FUNCTION_34_4();
    v14 = v13(v12, v1);

    sub_1DD63FDD8();
    OUTLINED_FUNCTION_48_3();

LABEL_5:

    goto LABEL_8;
  }

  v0 = sub_1DD3EB444();
  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_25_3();
  v16 = sub_1DD40B8E0();
  sub_1DD415480(v16);
  OUTLINED_FUNCTION_48_3();

  if (!v1)
  {
    v0 = 0;
    v1 = 0xE000000000000000;
  }

LABEL_8:
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = v5;
  *(v4 + 24) = v7;
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  *(v4 + 48) = v10;
  *(v4 + 56) = v0;
  *(v4 + 64) = v1;
  *(v4 + 72) = 512;
  OUTLINED_FUNCTION_17();
}

void sub_1DD40F188(unint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, id, uint64_t, char *))
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DD6407B8())
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1DD42B518();
    if ((i & 0x8000000000000000) != 0)
    {
      __break(1u);
      return;
    }

    v6 = 0;
    v7 = v15;
    while (v6 < i)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_17;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E12B2C10](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(a1 + 8 * v6 + 32);
      }

      v10 = v9;
      a3(__src, v9, a2, v13);

      v15 = v7;
      v11 = *(v7 + 16);
      if (v11 >= *(v7 + 24) >> 1)
      {
        sub_1DD42B518();
        v7 = v15;
      }

      *(v7 + 16) = v11 + 1;
      memcpy((v7 + 80 * v11 + 32), __src, 0x4AuLL);
      ++v6;
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

void sub_1DD40F314()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  memcpy(__dst, v4, 0x108uLL);
  v5 = v1;
  sub_1DD40B108();
  v6 = __dst[26];
  if (__dst[26])
  {
    v39 = v5;
    v7 = __dst[24];
    v8 = __dst[25];
    v9 = LOBYTE(__dst[24]);

    sub_1DD3C9580(__dst);
    v10 = 0;
    v40 = v3;
    v37 = *(type metadata accessor for Contact() + 80);
    v11 = *(v3 + v37);
    v12 = *(v11 + 16);
    v38 = v7;
    v44 = v7;
    v42 = *MEMORY[0x1E69964B0];
    v41 = MEMORY[0x1E69E7CC0];
    v43 = v12;
    while (2)
    {
      for (i = 80 * v10 + 32; ; i += 80)
      {
        if (v12 == v10)
        {
          sub_1DD3FAA54(v38, v8, v6);

          *(v40 + v37) = v41;
          goto LABEL_41;
        }

        if (v10 >= *(v11 + 16))
        {
          __break(1u);
          return;
        }

        memcpy(__src, (v11 + i), 0x4AuLL);
        if (!v44 || LOBYTE(__src[2]) == v9)
        {
          break;
        }

LABEL_33:
        ++v10;
      }

      if (v9)
      {
        if (v9 == 1)
        {
          sub_1DD3C6A40(__src, v45);
          OUTLINED_FUNCTION_14_9();
          v14 = sub_1DD63FDA8();
          v15 = (*(v42 + 16))(v42, v14);

          v16 = sub_1DD63FDD8();
          v18 = v17;

          goto LABEL_21;
        }

        sub_1DD3EB444();
        sub_1DD3C6A40(__src, v45);
      }

      else
      {
        v46 = 64;
        v47 = 0xE100000000000000;
        sub_1DD3C6A40(__src, v45);
        sub_1DD3B7F10();
        if (sub_1DD6406D8())
        {
          OUTLINED_FUNCTION_14_9();
          v19 = sub_1DD63FDA8();
          v20 = v8;
          v21 = v6;
          v22 = (*(v42 + 16))(v42, v19);

          v16 = sub_1DD63FDD8();
          v18 = v23;

          v6 = v21;
          v8 = v20;
          goto LABEL_21;
        }

        sub_1DD3EB444();
      }

      OUTLINED_FUNCTION_14_9();
      v24 = sub_1DD40B8E0();
      v25 = sub_1DD415480(v24);
      if (v26)
      {
        v16 = v25;
      }

      else
      {
        v16 = 0;
      }

      if (v26)
      {
        v18 = v26;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

LABEL_21:
      v27 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v27 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (!v27 || (v16 == __src[7] ? (v28 = v18 == __src[8]) : (v28 = 0), v28))
      {
      }

      else
      {
        v29 = sub_1DD640CD8();

        if ((v29 & 1) == 0)
        {
LABEL_32:
          sub_1DD3C6A9C(__src);
          v12 = v43;
          goto LABEL_33;
        }
      }

      memcpy(v45, __src, 0x4AuLL);
      sub_1DD412278();
      if (v30)
      {
        v31 = v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = *(v41 + 16);
          OUTLINED_FUNCTION_26_2();
          sub_1DD42B518();
          v31 = v49;
        }

        v12 = v43;
        v35 = *(v31 + 16);
        v34 = *(v31 + 24);
        v36 = v31;
        if (v35 >= v34 >> 1)
        {
          OUTLINED_FUNCTION_1_0(v34);
          sub_1DD42B518();
          v12 = v43;
          v36 = v49;
        }

        ++v10;
        *(v36 + 16) = v35 + 1;
        v41 = v36;
        memcpy((v36 + 80 * v35 + 32), __src, 0x4AuLL);
        continue;
      }

      goto LABEL_32;
    }
  }

  sub_1DD3C9580(__dst);
LABEL_41:
  OUTLINED_FUNCTION_17();
}

void sub_1DD40F728()
{
  OUTLINED_FUNCTION_18_4();
  v1 = type metadata accessor for Contact();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  v6 = (v5 - v4);
  sub_1DD415D68(v0, v5 - v4);
  v7 = v6[1];

  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v8 = *(v2 + 88);
  v9 = *(v6 + v8);
  v10 = *(v9 + 16);
  if (!v10)
  {
    v35 = *(v6 + v8);

    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v36 = v8;
  v37 = v6;
  v49[0] = MEMORY[0x1E69E7CC0];
  v11 = v49;
  sub_1DD42B518();
  v12 = v49[0];
  v38 = *MEMORY[0x1E69964B0];
  v13 = v10 - 1;
  v14 = 32;
  for (i = v9; ; v9 = i)
  {
    v40 = v14;
    memcpy(v48, (v9 + v14), 0x4AuLL);
    v15 = v48[7];
    v16 = v48[8];
    v17 = v48[4];
    v41 = v48[3];
    v18 = v48[2];
    v42 = v13;
    if (LOBYTE(v48[2]))
    {
      if (LOBYTE(v48[2]) == 1)
      {
        swift_bridgeObjectRetain_n();
        sub_1DD3C6A40(v48, v43);

        OUTLINED_FUNCTION_57_3();
        sub_1DD63FDA8();
        OUTLINED_FUNCTION_59_0();

        v19 = OUTLINED_FUNCTION_59_1();
        v21 = v20(v19);
LABEL_8:
        v24 = v21;

        v25 = sub_1DD63FDD8();
        v27 = v26;
        sub_1DD3C6A9C(v48);

        goto LABEL_14;
      }

      sub_1DD3EB444();
      OUTLINED_FUNCTION_59_0();
      swift_bridgeObjectRetain_n();
      sub_1DD3C6A40(v48, v43);
    }

    else
    {
      v46[0] = v48[7];
      v46[1] = v48[8];
      v44 = 64;
      v45 = 0xE100000000000000;
      swift_bridgeObjectRetain_n();
      sub_1DD3C6A40(v48, v43);
      sub_1DD3B7F10();

      v11 = v46;
      if (sub_1DD6406D8())
      {
        OUTLINED_FUNCTION_57_3();
        sub_1DD63FDA8();
        OUTLINED_FUNCTION_59_0();

        v22 = OUTLINED_FUNCTION_59_1();
        v21 = v23(v22);
        goto LABEL_8;
      }

      v11 = sub_1DD3EB444();
    }

    OUTLINED_FUNCTION_57_3();
    v28 = sub_1DD40B8E0();
    v29 = sub_1DD415480(v28);
    if (v30)
    {
      v25 = v29;
      v27 = v30;
      sub_1DD3C6A9C(v48);
    }

    else
    {
      sub_1DD3C6A9C(v48);
      v25 = 0;
      v27 = 0xE000000000000000;
    }

LABEL_14:
    *v43 = *v47;
    *&v43[3] = *&v47[3];
    v49[0] = v12;
    v32 = *(v12 + 16);
    v31 = *(v12 + 24);
    if (v32 >= v31 >> 1)
    {
      OUTLINED_FUNCTION_1_0(v31);
      v11 = v49;
      sub_1DD42B518();
      v12 = v49[0];
    }

    *(v12 + 16) = v32 + 1;
    v33 = v12 + 80 * v32;
    *(v33 + 32) = 0;
    *(v33 + 40) = 0xE000000000000000;
    *(v33 + 48) = v18;
    v34 = *&v43[3];
    *(v33 + 49) = *v43;
    *(v33 + 52) = v34;
    *(v33 + 56) = v41;
    *(v33 + 64) = v17;
    *(v33 + 72) = v15;
    *(v33 + 80) = v16;
    *(v33 + 88) = v25;
    *(v33 + 96) = v27;
    *(v33 + 104) = 512;
    if (!v42)
    {
      break;
    }

    v13 = v42 - 1;
    v14 = v40 + 80;
  }

  v6 = v37;
  v8 = v36;
LABEL_20:
  *(v6 + v8) = v12;
  sub_1DD640E28();
  Contact.hash(into:)();
  sub_1DD640E78();
  sub_1DD415B40(v6);
  OUTLINED_FUNCTION_17();
}

uint64_t Contact.hashValue.getter()
{
  OUTLINED_FUNCTION_79();
  Contact.hash(into:)();
  return sub_1DD640E78();
}

uint64_t sub_1DD40FB18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F80;
  v2 = v0[6];
  *(inited + 32) = v0[5];
  *(inited + 40) = v2;
  v3 = v0[9];
  v4 = v0[10];
  *(inited + 48) = v3;
  *(inited + 56) = v4;

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (inited + 40 + 16 * v5);
  while (++v5 != 3)
  {
    v9 = *(v7 - 1);
    v8 = *v7;
    v7 += 2;
    v10 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v10 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v6 + 16);
        OUTLINED_FUNCTION_26_2();
        sub_1DD42A2D4();
      }

      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v12);
        sub_1DD42A2D4();
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v8;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_1DD46CAFC();
  return v6;
}

void sub_1DD40FC64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6435D0;
  v2 = v0[4];
  *(inited + 32) = v0[3];
  *(inited + 40) = v2;
  v3 = v0[6];
  *(inited + 48) = v0[5];
  *(inited + 56) = v3;
  v4 = v0[8];
  *(inited + 64) = v0[7];
  *(inited + 72) = v4;
  v5 = v0[10];
  *(inited + 80) = v0[9];
  *(inited + 88) = v5;
  v6 = v0[12];
  *(inited + 96) = v0[11];
  *(inited + 104) = v6;
  v7 = v0[16];
  *(inited + 112) = v0[15];
  *(inited + 120) = v7;
  v8 = v0[18];
  *(inited + 128) = v0[17];
  *(inited + 136) = v8;
  v9 = v0[14];
  *(inited + 144) = v0[13];
  *(inited + 152) = v9;
  v10 = v0[20];
  *(inited + 160) = v0[19];
  *(inited + 168) = v10;
  v11 = v0[22];
  *(inited + 176) = v0[21];
  *(inited + 184) = v11;
  v12 = v0[23];
  v13 = v0[24];
  *(inited + 192) = v12;
  *(inited + 200) = v13;

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v16 = (inited + 40 + 16 * v14);
  while (1)
  {
    if (v14 == 11)
    {
      swift_setDeallocating();
      sub_1DD46CAFC();
      return;
    }

    if (v14 > 0xA)
    {
      break;
    }

    ++v14;
    v18 = *(v16 - 1);
    v17 = *v16;
    v16 += 2;
    v19 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v19 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v15 + 16);
        OUTLINED_FUNCTION_26_2();
        sub_1DD42A2D4();
      }

      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v21);
        sub_1DD42A2D4();
      }

      *(v15 + 16) = v22 + 1;
      v23 = v15 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v17;
      goto LABEL_2;
    }
  }

  __break(1u);
}

BOOL static Contact.< infix(_:_:)(void *a1, uint64_t *a2)
{
  v22 = a1[9];
  v24 = a1[10];
  v19 = a2[9];
  v20 = a2[10];
  v4 = sub_1DD3B7F10();
  OUTLINED_FUNCTION_69(v4, MEMORY[0x1E69E6158], v5, v6, v7, v8, v9, v10, v19);
  v11 = sub_1DD640698();
  if (v11 == -1)
  {
    return 1;
  }

  if (v11 == 1)
  {
    return 0;
  }

  v23 = a1[5];
  v25 = a1[6];
  v21 = a2[6];
  OUTLINED_FUNCTION_69(v11, MEMORY[0x1E69E6158], v12, v13, v14, v15, v16, v17, a2[5]);
  return sub_1DD640698() == -1;
}

void sub_1DD40FF0C()
{
  OUTLINED_FUNCTION_101_0();
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + *(type metadata accessor for Contact() + 80));
  v4 = *(v3 + 16);
  if (v4)
  {
    v11 = MEMORY[0x1E69E7CC0];

    sub_1DD42A2D4();
    v5 = (v3 + 96);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v11 + 16);
      v9 = *(v11 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_1DD42A2D4();
      }

      *(v11 + 16) = v8 + 1;
      v10 = v11 + 16 * v8;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      v5 += 10;
      --v4;
    }

    while (v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_100_0();
}

void Contact.nameComponents.getter()
{
  sub_1DD63CD08();
  v1 = v0[3];
  v2 = v0[4];
  OUTLINED_FUNCTION_6_17();
  if (v3)
  {

    OUTLINED_FUNCTION_11_0();
    sub_1DD63CC78();
  }

  v4 = v0[5];
  v5 = v0[6];
  OUTLINED_FUNCTION_6_17();
  if (v6)
  {

    OUTLINED_FUNCTION_11_0();
    sub_1DD63CC18();
  }

  v7 = v0[7];
  v8 = v0[8];
  OUTLINED_FUNCTION_6_17();
  if (v9)
  {

    OUTLINED_FUNCTION_11_0();
    sub_1DD63CC58();
  }

  v10 = v0[9];
  v11 = v0[10];
  OUTLINED_FUNCTION_6_17();
  if (v12)
  {

    OUTLINED_FUNCTION_11_0();
    sub_1DD63CC38();
  }

  v13 = v0[13];
  v14 = v0[14];
  OUTLINED_FUNCTION_6_17();
  if (v15)
  {

    OUTLINED_FUNCTION_11_0();
    sub_1DD63CC98();
  }

  v16 = v0[16];
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v0[15] & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {

    OUTLINED_FUNCTION_14_9();
    sub_1DD63CCE8();
  }
}

void static Contact.== infix(_:_:)()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_14_1();
  v4 = sub_1DD63CBB8();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  OUTLINED_FUNCTION_3(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_22_4();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC530, &qword_1DD646940);
  OUTLINED_FUNCTION_72(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_32_6();
  v21 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (v21 || (sub_1DD640CD8() & 1) != 0)
  {
    v22 = *(v1 + 16);
    v23 = *(v0 + 16);
    if (v22 == 2)
    {
      if (v23 != 2)
      {
        goto LABEL_91;
      }
    }

    else if (v23 == 2 || ((v23 ^ v22) & 1) != 0)
    {
      goto LABEL_91;
    }

    v24 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
    if (v24 || (sub_1DD640CD8() & 1) != 0)
    {
      v25 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
      if (v25 || (sub_1DD640CD8() & 1) != 0)
      {
        v26 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
        if (v26 || (sub_1DD640CD8() & 1) != 0)
        {
          v27 = *(v1 + 72) == *(v0 + 72) && *(v1 + 80) == *(v0 + 80);
          if (v27 || (sub_1DD640CD8() & 1) != 0)
          {
            v28 = *(v1 + 88) == *(v0 + 88) && *(v1 + 96) == *(v0 + 96);
            if (v28 || (sub_1DD640CD8() & 1) != 0)
            {
              v29 = *(v1 + 104) == *(v0 + 104) && *(v1 + 112) == *(v0 + 112);
              if (v29 || (sub_1DD640CD8() & 1) != 0)
              {
                v30 = *(v1 + 120) == *(v0 + 120) && *(v1 + 128) == *(v0 + 128);
                if (v30 || (sub_1DD640CD8() & 1) != 0)
                {
                  v31 = *(v1 + 136) == *(v0 + 136) && *(v1 + 144) == *(v0 + 144);
                  if (v31 || (sub_1DD640CD8() & 1) != 0)
                  {
                    v32 = *(v1 + 152) == *(v0 + 152) && *(v1 + 160) == *(v0 + 160);
                    if (v32 || (sub_1DD640CD8() & 1) != 0)
                    {
                      v33 = *(v1 + 168) == *(v0 + 168) && *(v1 + 176) == *(v0 + 176);
                      if (v33 || (sub_1DD640CD8() & 1) != 0)
                      {
                        v34 = *(v1 + 184) == *(v0 + 184) && *(v1 + 192) == *(v0 + 192);
                        if (v34 || (sub_1DD640CD8() & 1) != 0)
                        {
                          v35 = *(v1 + 200) == *(v0 + 200) && *(v1 + 208) == *(v0 + 208);
                          if (v35 || (sub_1DD640CD8()) && (sub_1DD3C4134(*(v1 + 216), *(v0 + 216)))
                          {
                            v36 = type metadata accessor for Contact();
                            v37 = v36[19];
                            v38 = *(v17 + 48);
                            sub_1DD415538(v1 + v37, v2);
                            sub_1DD415538(v0 + v37, v2 + v38);
                            OUTLINED_FUNCTION_105(v2);
                            if (v21)
                            {
                              OUTLINED_FUNCTION_105(v2 + v38);
                              if (v21)
                              {
                                sub_1DD417838(v2, &qword_1ECCDC4F8, &unk_1DD646910);
LABEL_82:
                                if ((sub_1DD3C4228(*(v1 + v36[20]), *(v0 + v36[20])) & 1) != 0 && *(v1 + v36[21]) == *(v0 + v36[21]))
                                {
                                  v45 = v36[22];
                                  v46 = *(v1 + v45 + 8);
                                  v56[0] = *(v1 + v45);
                                  v56[1] = v46;
                                  v47 = (v0 + v45);
                                  v48 = v47[1];
                                  v55[0] = *v47;
                                  v55[1] = v48;

                                  v49 = static ContactSource.== infix(_:_:)(v56, v55);

                                  if ((v49 & 1) != 0 && *(v1 + v36[23]) == *(v0 + v36[23]))
                                  {
                                    v50 = v36[24];
                                    v51 = *(v1 + v50);
                                    v52 = *(v1 + v50 + 8);
                                    v53 = (v0 + v50);
                                    if (v51 != *v53 || v52 != v53[1])
                                    {
                                      sub_1DD640CD8();
                                    }
                                  }
                                }

                                goto LABEL_91;
                              }
                            }

                            else
                            {
                              v39 = OUTLINED_FUNCTION_20_2();
                              sub_1DD415538(v39, v40);
                              OUTLINED_FUNCTION_105(v2 + v38);
                              if (!v41)
                              {
                                (*(v7 + 32))(v12, v2 + v38, v4);
                                OUTLINED_FUNCTION_2_19();
                                sub_1DD417D04(v42);
                                v43 = sub_1DD63FD98();
                                v44 = *(v7 + 8);
                                v44(v12, v4);
                                v44(v3, v4);
                                sub_1DD417838(v2, &qword_1ECCDC4F8, &unk_1DD646910);
                                if ((v43 & 1) == 0)
                                {
                                  goto LABEL_91;
                                }

                                goto LABEL_82;
                              }

                              (*(v7 + 8))(v3, v4);
                            }

                            sub_1DD417838(v2, &qword_1ECCDC530, &qword_1DD646940);
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

LABEL_91:
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD4105EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1699574633 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x66657250656D616ELL && a2 == 0xEA00000000007869;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x614E656C6464696DLL && a2 == 0xEA0000000000656DLL;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x80000001DD66B460 == a2;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x66667553656D616ELL && a2 == 0xEA00000000007869;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x656D616E6B63696ELL && a2 == 0xE800000000000000;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000001DD66B480 == a2;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x80000001DD66B4A0 == a2;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000012 && 0x80000001DD66B4C0 == a2;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000012 && 0x80000001DD66B4E0 == a2;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000018 && 0x80000001DD66B500 == a2;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000010 && 0x80000001DD66B520 == a2;
                              if (v19 || (sub_1DD640CD8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x7961646874726962 && a2 == 0xE800000000000000;
                                if (v20 || (sub_1DD640CD8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x73656C646E6168 && a2 == 0xE700000000000000;
                                  if (v21 || (sub_1DD640CD8() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x7365676775537369 && a2 == 0xEB00000000646574;
                                    if (v22 || (sub_1DD640CD8() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
                                      if (v23 || (sub_1DD640CD8() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000014 && 0x80000001DD66B540 == a2;
                                        if (v24 || (sub_1DD640CD8() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else if (a1 == 0x6E6F685069726973 && a2 == 0xEF61746144656D65)
                                        {

                                          return 20;
                                        }

                                        else
                                        {
                                          v26 = sub_1DD640CD8();

                                          if (v26)
                                          {
                                            return 20;
                                          }

                                          else
                                          {
                                            return 21;
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
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD410C34(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1699574633;
      break;
    case 2:
      result = 0x66657250656D616ELL;
      break;
    case 3:
      result = 0x6D614E6E65766967;
      break;
    case 4:
      v3 = 0x656C6464696DLL;
      goto LABEL_16;
    case 5:
      v3 = 0x796C696D6166;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x66667553656D616ELL;
      break;
    case 8:
      result = 0x656D616E6B63696ELL;
      break;
    case 9:
    case 14:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0x7961646874726962;
      break;
    case 16:
      result = 0x73656C646E6168;
      break;
    case 17:
      result = 0x7365676775537369;
      break;
    case 18:
      result = 0x656372756F73;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    case 20:
      result = 0x6E6F685069726973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD410E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4105EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD410E88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD410C2C();
  *a1 = result;
  return result;
}

uint64_t sub_1DD410EB0(uint64_t a1)
{
  v2 = sub_1DD415758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD410EEC(uint64_t a1)
{
  v2 = sub_1DD415758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Contact.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC540, &qword_1DD646948);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_32_6();
  v12 = a1[4];
  OUTLINED_FUNCTION_41_3(a1, a1[3]);
  sub_1DD415758();
  sub_1DD640EF8();
  v13 = *v4;
  v14 = v4[1];
  OUTLINED_FUNCTION_18_2();
  sub_1DD640C18();
  if (!v2)
  {
    v15 = *(v4 + 16);
    OUTLINED_FUNCTION_18_2();
    sub_1DD640BD8();
    v16 = v4[3];
    v17 = v4[4];
    OUTLINED_FUNCTION_3_17(2);
    v18 = v4[5];
    v19 = v4[6];
    OUTLINED_FUNCTION_3_17(3);
    v20 = v4[7];
    v21 = v4[8];
    OUTLINED_FUNCTION_3_17(4);
    v22 = v4[9];
    v23 = v4[10];
    OUTLINED_FUNCTION_3_17(5);
    v24 = v4[11];
    v25 = v4[12];
    OUTLINED_FUNCTION_3_17(6);
    v26 = v4[13];
    v27 = v4[14];
    OUTLINED_FUNCTION_3_17(7);
    v28 = v4[15];
    v29 = v4[16];
    OUTLINED_FUNCTION_3_17(8);
    v30 = v4[17];
    v31 = v4[18];
    OUTLINED_FUNCTION_3_17(9);
    v32 = v4[19];
    v33 = v4[20];
    OUTLINED_FUNCTION_3_17(10);
    v34 = v4[21];
    v35 = v4[22];
    OUTLINED_FUNCTION_3_17(11);
    v36 = v4[23];
    v37 = v4[24];
    OUTLINED_FUNCTION_3_17(12);
    v38 = v4[25];
    v39 = v4[26];
    OUTLINED_FUNCTION_3_17(13);
    v50 = v4[27];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC548, &qword_1DD646950);
    sub_1DD415B9C(&unk_1EE1638F0);
    OUTLINED_FUNCTION_33_4();
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C68();
    v40 = type metadata accessor for Contact();
    v41 = v40[19];
    sub_1DD63CBB8();
    OUTLINED_FUNCTION_2_19();
    sub_1DD417D04(v42);
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C08();
    v51 = *(v4 + v40[20]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC550, &qword_1DD646958);
    sub_1DD4157AC(&unk_1EE163938);
    OUTLINED_FUNCTION_33_4();
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C68();
    v43 = *(v4 + v40[21]);
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C28();
    v44 = (v4 + v40[22]);
    v52 = *v44;
    v54 = v44[1];
    v45 = sub_1DD415874();

    OUTLINED_FUNCTION_33_4();
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C68();

    if (!v45)
    {
      v53 = *(v4 + v40[23]);
      sub_1DD4158C8();
      OUTLINED_FUNCTION_33_4();
      OUTLINED_FUNCTION_18_2();
      sub_1DD640C68();
      v46 = (v4 + v40[24]);
      v47 = *v46;
      v48 = v46[1];
      OUTLINED_FUNCTION_3_17(20);
    }
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t Contact.hash(into:)()
{
  OUTLINED_FUNCTION_43();
  v3 = sub_1DD63CBB8();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  OUTLINED_FUNCTION_3(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_22_4();
  v16 = *v1;
  v17 = v1[1];
  sub_1DD63FD28();
  if (*(v1 + 16) != 2)
  {
    sub_1DD640E48();
  }

  sub_1DD640E48();
  v18 = v1[3];
  v19 = v1[4];
  sub_1DD63FD28();
  v20 = v1[5];
  v21 = v1[6];
  sub_1DD63FD28();
  v22 = v1[7];
  v23 = v1[8];
  sub_1DD63FD28();
  v24 = v1[9];
  v25 = v1[10];
  sub_1DD63FD28();
  v26 = v1[11];
  v27 = v1[12];
  sub_1DD63FD28();
  v28 = v1[13];
  v29 = v1[14];
  sub_1DD63FD28();
  v30 = v1[15];
  v31 = v1[16];
  sub_1DD63FD28();
  v32 = v1[17];
  v33 = v1[18];
  sub_1DD63FD28();
  v34 = v1[19];
  v35 = v1[20];
  sub_1DD63FD28();
  v36 = v1[21];
  v37 = v1[22];
  sub_1DD63FD28();
  v38 = v1[23];
  v39 = v1[24];
  sub_1DD63FD28();
  v40 = v1[25];
  v41 = v1[26];
  sub_1DD63FD28();
  sub_1DD415A70(v0, v1[27]);
  v42 = type metadata accessor for Contact();
  sub_1DD415538(v1 + v42[19], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    v43 = *(v6 + 32);
    v44 = OUTLINED_FUNCTION_20_2();
    v45(v44);
    sub_1DD640E48();
    OUTLINED_FUNCTION_2_19();
    sub_1DD417D04(v46);
    sub_1DD63FCF8();
    (*(v6 + 8))(v11, v3);
  }

  sub_1DD41591C(v0, *(v1 + v42[20]));
  v47 = *(v1 + v42[21]);
  sub_1DD640E48();
  v48 = (v1 + v42[22]);
  if (v48[1])
  {
    v49 = *v48;
    MEMORY[0x1E12B3140](1);
    sub_1DD63FD28();
  }

  else
  {
    MEMORY[0x1E12B3140](0);
  }

  MEMORY[0x1E12B3140](*(v1 + v42[23]));
  v50 = (v1 + v42[24]);
  v51 = *v50;
  v52 = v50[1];
  return sub_1DD63FD28();
}

void Contact.init(from:)()
{
  OUTLINED_FUNCTION_93();
  v57 = v1;
  v52 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_3();
  v53 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC560, &qword_1DD646960);
  v9 = OUTLINED_FUNCTION_0(v8);
  v54 = v10;
  v55 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_3();
  v56 = v14;
  v15 = type metadata accessor for Contact();
  v16 = (v15 - 8);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  *v20 = 0;
  *(v20 + 8) = 0xE000000000000000;
  *(v20 + 16) = 2;
  *(v20 + 24) = 0;
  *(v20 + 32) = 0xE000000000000000;
  *(v20 + 40) = 0;
  *(v20 + 48) = 0xE000000000000000;
  *(v20 + 56) = 0;
  *(v20 + 64) = 0xE000000000000000;
  *(v20 + 72) = 0;
  *(v20 + 80) = 0xE000000000000000;
  *(v20 + 88) = 0;
  *(v20 + 96) = 0xE000000000000000;
  *(v20 + 104) = 0;
  *(v20 + 112) = 0xE000000000000000;
  *(v20 + 120) = 0;
  *(v20 + 128) = 0xE000000000000000;
  *(v20 + 136) = 0;
  *(v20 + 144) = 0xE000000000000000;
  *(v20 + 152) = 0;
  *(v20 + 160) = 0xE000000000000000;
  *(v20 + 168) = 0;
  *(v20 + 176) = 0xE000000000000000;
  *(v20 + 184) = 0;
  *(v20 + 192) = 0xE000000000000000;
  *(v20 + 200) = 0;
  *(v20 + 208) = 0xE000000000000000;
  v21 = MEMORY[0x1E69E7CC0];
  *(v20 + 216) = MEMORY[0x1E69E7CC0];
  v22 = v16[21];
  sub_1DD63CBB8();
  v51 = v22;
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = v16[22];
  *(v20 + v27) = v21;
  v28 = v16[23];
  *(v20 + v28) = 0;
  v29 = (v20 + v16[24]);
  *v29 = 0;
  v29[1] = 0;
  v30 = v16[25];
  *(v20 + v30) = 2;
  v31 = (v20 + v16[26]);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v32 = v57[4];
  OUTLINED_FUNCTION_41_3(v57, v57[3]);
  sub_1DD415758();
  sub_1DD640ED8();
  if (!v0)
  {
    OUTLINED_FUNCTION_19_11();
    *v20 = sub_1DD640B28();
    *(v20 + 8) = v33;
    LOBYTE(v58) = 1;
    *(v20 + 16) = sub_1DD640AE8();
    *(v20 + 24) = OUTLINED_FUNCTION_5_19(2);
    *(v20 + 32) = v34;
    *(v20 + 40) = OUTLINED_FUNCTION_5_19(3);
    *(v20 + 48) = v35;
    *(v20 + 56) = OUTLINED_FUNCTION_5_19(4);
    *(v20 + 64) = v36;
    *(v20 + 72) = OUTLINED_FUNCTION_5_19(5);
    *(v20 + 80) = v37;
    *(v20 + 88) = OUTLINED_FUNCTION_5_19(6);
    *(v20 + 96) = v38;
    *(v20 + 104) = OUTLINED_FUNCTION_5_19(7);
    *(v20 + 112) = v39;
    *(v20 + 120) = OUTLINED_FUNCTION_5_19(8);
    *(v20 + 128) = v40;
    *(v20 + 136) = OUTLINED_FUNCTION_5_19(9);
    *(v20 + 144) = v41;
    *(v20 + 152) = OUTLINED_FUNCTION_10_16(10);
    *(v20 + 160) = v42;
    *(v20 + 168) = OUTLINED_FUNCTION_10_16(11);
    *(v20 + 176) = v43;
    *(v20 + 184) = OUTLINED_FUNCTION_10_16(12);
    *(v20 + 192) = v44;
    *(v20 + 200) = OUTLINED_FUNCTION_10_16(13);
    *(v20 + 208) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC548, &qword_1DD646950);
    sub_1DD415B9C(&unk_1EE160278);
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_19_11();
    sub_1DD640B78();
    *(v20 + 216) = v58;
    LOBYTE(v58) = 15;
    OUTLINED_FUNCTION_2_19();
    sub_1DD417D04(v46);
    OUTLINED_FUNCTION_19_11();
    sub_1DD640B18();
    sub_1DD4155A8(v53, v20 + v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC550, &qword_1DD646958);
    sub_1DD4157AC(&unk_1EE160308);
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_19_11();
    sub_1DD640B78();
    *(v20 + v27) = v58;
    LOBYTE(v58) = 17;
    OUTLINED_FUNCTION_19_11();
    *(v20 + v28) = sub_1DD640B38() & 1;
    sub_1DD415CC0();
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_19_11();
    sub_1DD640B78();
    v47 = v29[1];

    *v29 = v58;
    v29[1] = v59;
    sub_1DD415D14();
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_19_11();
    sub_1DD640B78();
    *(v20 + v30) = 17;
    v48 = OUTLINED_FUNCTION_10_16(20);
    v50 = v49;
    (*(v54 + 8))(v56, v55);
    *v31 = v48;
    v31[1] = v50;
    sub_1DD415D68(v20, v52);
  }

  __swift_destroy_boxed_opaque_existential_1(v57);
  sub_1DD415B40(v20);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD411CB0@<X0>(uint64_t *a1@<X8>)
{
  result = Contact.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD411CE8()
{
  sub_1DD640E28();
  Contact.hash(into:)();
  return sub_1DD640E78();
}

uint64_t ContactHandle.label.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t ContactHandle.value.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t ContactHandle.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v0 + 72);
  v8 = *(v0 + 73);
  v9 = 0xE000000000000000;
  LOBYTE(v24) = *(v0 + 16);
  sub_1DD6409F8();
  MEMORY[0x1E12B2260](40, 0xE100000000000000);
  v10 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v10 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    OUTLINED_FUNCTION_61_2();
    v11 = OUTLINED_FUNCTION_57_3();
    MEMORY[0x1E12B2260](v11);
    v12 = v24;
    v9 = v25;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1E12B2260](v12, v9);

  v13 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v13 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    OUTLINED_FUNCTION_61_2();
    v14 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x1E12B2260](v14);
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
  }

  OUTLINED_FUNCTION_51_3();

  v15 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v15 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    OUTLINED_FUNCTION_61_2();
    MEMORY[0x1E12B2260](v5, v6);
    v16 = v24;
    v17 = v25;
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  MEMORY[0x1E12B2260](v16, v17);

  OUTLINED_FUNCTION_26_1();
  if (v7)
  {
    v19 = 0xD000000000000011;
  }

  else
  {
    v19 = 0;
  }

  if (v7)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  MEMORY[0x1E12B2260](v19, v20);

  MEMORY[0x1E12B2260](41, 0xE100000000000000);
  if (v8 != 2)
  {
    sub_1DD6408D8();

    OUTLINED_FUNCTION_26_1();
    if (v8)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v8)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    MEMORY[0x1E12B2260](v21, v22);
  }

  OUTLINED_FUNCTION_51_3();

  return 0;
}

SiriInference::ContactHandle::HandleType_optional __swiftcall ContactHandle.HandleType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1DD41207C@<X0>(uint64_t *a1@<X8>)
{
  result = ContactHandle.HandleType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DD412154(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  if (*a1)
  {
    if (*a1 == 1)
    {
      v6 = *MEMORY[0x1E69964B0];
      OUTLINED_FUNCTION_25_3();
      v7 = sub_1DD63FDA8();
      v8 = OUTLINED_FUNCTION_34_4();
      v10 = v9(v8, v7);

      v11 = sub_1DD63FDD8();
      v13 = v12;
    }

    else
    {
      sub_1DD3EB444();

      OUTLINED_FUNCTION_25_3();
      v15 = sub_1DD40B8E0();
      v16 = sub_1DD415480(v15);
      if (v17)
      {
        v11 = v16;
      }

      else
      {
        v11 = 0;
      }

      if (v17)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0xE000000000000000;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_3();
    v11 = sub_1DD40B5BC();
    v13 = v14;
  }

  v18 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v18 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (v11 == v4 ? (v19 = v13 == v5) : (v19 = 0), v19))
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_1DD640CD8();
  }

  return v20 & 1;
}

void sub_1DD412278()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v58 - v7;
  v10 = v2[1];
  v9 = v2[2];
  v11 = v2[3];
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  OUTLINED_FUNCTION_92_0();
  if (v14 || *(v11 + 16))
  {
    OUTLINED_FUNCTION_1_25();
    if (v15)
    {
      v63 = sub_1DD63FE58();
      v64 = v16;
      v61 = v63;
      v62 = v16;
      v59 = 1008804959;
      v60 = 0xE400000000000000;
      v17 = sub_1DD63D168();
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
      sub_1DD3B7F10();

      OUTLINED_FUNCTION_50_4();
      v22 = v21;
      sub_1DD417838(v8, &qword_1ECCDC3F0, &unk_1DD64AF50);

      if ((v22 & 1) == 0)
      {
        sub_1DD63FE98();
      }

      v61 = v63;
      v62 = v64;
      v59 = 1596203326;
      v60 = 0xE400000000000000;
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v17);

      OUTLINED_FUNCTION_50_4();
      v27 = v26;
      sub_1DD417838(v8, &qword_1ECCDC3F0, &unk_1DD64AF50);

      if ((v27 & 1) == 0)
      {
        OUTLINED_FUNCTION_20_2();
        sub_1DD63FE98();
      }

      v28 = *(v11 + 16);
      v29 = MEMORY[0x1E69E7CC0];
      if (v28)
      {
        v61 = MEMORY[0x1E69E7CC0];
        sub_1DD42A2D4();
        v29 = v61;
        v30 = (v11 + 40);
        do
        {
          v31 = *(v30 - 1);
          v32 = *v30;
          v33 = sub_1DD63FE58();
          v35 = v34;
          v61 = v29;
          v37 = *(v29 + 16);
          v36 = *(v29 + 24);
          if (v37 >= v36 >> 1)
          {
            OUTLINED_FUNCTION_1_0(v36);
            sub_1DD42A2D4();
            v29 = v61;
          }

          *(v29 + 16) = v37 + 1;
          v38 = v29 + 16 * v37;
          *(v38 + 32) = v33;
          *(v38 + 40) = v35;
          v30 += 2;
          --v28;
        }

        while (v28);
      }

      if (sub_1DD640008())
      {

        v39 = sub_1DD63FF08();
        sub_1DD4127E0(v39, v10, v9);
        sub_1DD640608();
        OUTLINED_FUNCTION_77_0();
      }

      else
      {
        sub_1DD63FE58();
        OUTLINED_FUNCTION_77_0();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = *(v29 + 16);
        OUTLINED_FUNCTION_26_2();
        sub_1DD3BE2A4();
        v29 = v56;
      }

      v41 = *(v29 + 16);
      v40 = *(v29 + 24);
      if (v41 >= v40 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v40);
        sub_1DD3BE2A4();
        v29 = v57;
      }

      *(v29 + 16) = v41 + 1;
      v42 = v29 + 16 * v41;
      *(v42 + 32) = "plusSuggestionStatus";
      *(v42 + 40) = v9;
      v44 = v63;
      v43 = v64;
      OUTLINED_FUNCTION_93_0();
      if (sub_1DD5E7698(v45, v46, v47))
      {
      }

      else
      {
        if (qword_1ECCDB050 != -1)
        {
          swift_once();
        }

        v48 = qword_1ECCDC4E8;
        v49 = qword_1ECCDC4F0;
        if (sub_1DD5E7698(v29, qword_1ECCDC4E8, qword_1ECCDC4F0))
        {

          if (qword_1ECCDB048 != -1)
          {
            OUTLINED_FUNCTION_30_6();
          }

          v50 = qword_1ECCDC4D8;
          v51 = qword_1ECCDC4E0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1DD643F90;
          *(inited + 32) = v44;
          *(inited + 40) = v43;
          sub_1DD5E7698(inited, v50, v51);
          swift_setDeallocating();
        }

        else
        {
          if (qword_1ECCDB048 != -1)
          {
            OUTLINED_FUNCTION_30_6();
          }

          v53 = sub_1DD5E7698(v29, qword_1ECCDC4D8, qword_1ECCDC4E0);

          if (!v53)
          {

            goto LABEL_35;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
          v54 = swift_initStackObject();
          *(v54 + 16) = xmmword_1DD643F90;
          *(v54 + 32) = v44;
          *(v54 + 40) = v43;
          sub_1DD5E7698(v54, v48, v49);
          swift_setDeallocating();
        }

        sub_1DD46CAFC();
      }
    }
  }

LABEL_35:
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD412784(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v6 = *a2;
  sub_1DD63FDD8();
  v7 = sub_1DD63FE58();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
  return result;
}

unint64_t sub_1DD4127E0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1DD63FF28();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      OUTLINED_FUNCTION_93_0();
      sub_1DD640058();
      OUTLINED_FUNCTION_77_0();

      return OUTLINED_FUNCTION_64_2();
    }
  }

  __break(1u);
  return result;
}

uint64_t static ContactHandle.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_65_2(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v27 = *(v3 + 64);
  v28 = *(v3 + 56);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);
  v26 = *(v2 + 56);
  v25 = *(v2 + 64);
  v23 = *(v2 + 72);
  v24 = *(v3 + 72);
  v14 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v21 = *(v2 + 73);
  v22 = *(v3 + 73);
  if (v14)
  {
    if (v4 != v9)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v15 = sub_1DD640CD8();
  result = 0;
  if ((v15 & 1) != 0 && v4 == v9)
  {
LABEL_9:
    v17 = v5 == v10 && v6 == v11;
    if (!v17 && (sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }

    if (v7 != v12 || v8 != v13)
    {
      OUTLINED_FUNCTION_20_2();
      if ((sub_1DD640CD8() & 1) == 0)
      {
        return 0;
      }
    }

    if (v28 != v26 || v27 != v25)
    {
      v20 = sub_1DD640CD8();
      result = 0;
      if (v20 & 1) == 0 || ((v24 ^ v23))
      {
        return result;
      }

LABEL_27:
      if (v22 == 2)
      {
        if (v21 != 2)
        {
          return 0;
        }
      }

      else if (v21 == 2 || ((v21 ^ v22) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }

    if (v24 == v23)
    {
      goto LABEL_27;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DD412A3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7A696C616D726F6ELL && a2 == 0xEF65756C61566465;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7365676775537369 && a2 == 0xEB00000000646574;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6954656361467369 && a2 == 0xEE00656C6261656DLL)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD640CD8();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD412C80(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x6C6562616CLL;
      break;
    case 3:
      result = 0x65756C6176;
      break;
    case 4:
      result = 0x7A696C616D726F6ELL;
      break;
    case 5:
      result = 0x7365676775537369;
      break;
    case 6:
      result = 0x6954656361467369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD412D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD412A3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD412D80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD412C78();
  *a1 = result;
  return result;
}

uint64_t sub_1DD412DA8(uint64_t a1)
{
  v2 = sub_1DD415DCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD412DE4(uint64_t a1)
{
  v2 = sub_1DD415DCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContactHandle.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC568, &qword_1DD646968);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21_5();
  v11 = *v0;
  v12 = v0[1];
  v22 = *(v0 + 16);
  v20 = v0[4];
  v21 = v0[3];
  v18 = v0[6];
  v19 = v0[5];
  v16 = v0[7];
  v17 = v0[8];
  v14 = *(v0 + 73);
  v15 = *(v0 + 72);
  v13 = v4[4];
  OUTLINED_FUNCTION_41_3(v4, v4[3]);
  sub_1DD415DCC();
  OUTLINED_FUNCTION_98_0();
  sub_1DD640EF8();
  OUTLINED_FUNCTION_97_0();
  sub_1DD640C18();
  if (!v1)
  {
    sub_1DD415E20();
    OUTLINED_FUNCTION_60_2();
    sub_1DD640C68();
    OUTLINED_FUNCTION_60_2();
    sub_1DD640C18();
    OUTLINED_FUNCTION_60_2();
    sub_1DD640C18();
    OUTLINED_FUNCTION_60_2();
    sub_1DD640C18();
    OUTLINED_FUNCTION_60_2();
    sub_1DD640C28();
    OUTLINED_FUNCTION_60_2();
    sub_1DD640BD8();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_86();
}