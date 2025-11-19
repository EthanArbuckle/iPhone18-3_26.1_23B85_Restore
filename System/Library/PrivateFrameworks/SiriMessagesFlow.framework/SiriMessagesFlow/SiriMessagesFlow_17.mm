uint64_t sub_267CFA4AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB58, &qword_267F02E98);
  v39 = a2;
  result = sub_267EF9CE8();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_267D2FEFC(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 16 * v19);
    v24 = v23[1];
    v40 = *v23;
    if ((v39 & 1) == 0)
    {
    }

    v25 = *(v8 + 40);
    sub_267EF9FC8();
    sub_267EF9128();
    result = sub_267EFA018();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    v35 = (*(v8 + 56) + 16 * v29);
    *v35 = v40;
    v35[1] = v24;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_267CFA788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  OUTLINED_FUNCTION_52_6();
  OUTLINED_FUNCTION_4_29(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB68, &qword_267F02EA8);
  v16 = OUTLINED_FUNCTION_10_23();
  if (!*(v13 + 16))
  {
LABEL_31:

    *v12 = v16;
    OUTLINED_FUNCTION_41_0();
    return;
  }

  v42 = v13;
  v17 = 0;
  v18 = v13;
  OUTLINED_FUNCTION_1_33();
  OUTLINED_FUNCTION_14_21();
  if (!v14)
  {
LABEL_4:
    v20 = v17;
    while (1)
    {
      v17 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v17 >= v12)
      {
        break;
      }

      ++v20;
      if (*(v18 + 8 * v17))
      {
        OUTLINED_FUNCTION_12_5();
        v14 = v22 & v21;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      v38 = *(v13 + 32);
      OUTLINED_FUNCTION_18_14();
      if (v40 != v41)
      {
        OUTLINED_FUNCTION_17_14(v39);
      }

      else
      {
        OUTLINED_FUNCTION_11_24(v39);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_31;
  }

  while (1)
  {
    OUTLINED_FUNCTION_13_21();
LABEL_9:
    OUTLINED_FUNCTION_31_11(v19);
    v24 = *v23;
    v25 = *(v23 + 8);
    v28 = *(v27 + 8 * v26);
    if ((a12 & 1) == 0)
    {
    }

    OUTLINED_FUNCTION_55_8();
    sub_267EF9FE8();
    if (!v25)
    {
      MEMORY[0x26D609CA0](v24);
    }

    v29 = sub_267EFA018();
    OUTLINED_FUNCTION_3_28(v29);
    OUTLINED_FUNCTION_28_17(v30);
    if (v31)
    {
      break;
    }

    OUTLINED_FUNCTION_5_5();
LABEL_23:
    OUTLINED_FUNCTION_2_30(v32);
    *v36 = v24;
    *(v36 + 8) = v25;
    *(*(v16 + 56) + 8 * v37) = v28;
    OUTLINED_FUNCTION_19_12();
    v13 = v42;
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_4();
  while (1)
  {
    OUTLINED_FUNCTION_46_8();
    if (v31)
    {
      if (v34)
      {
        break;
      }
    }

    if (v33 == v35)
    {
      v33 = 0;
    }

    OUTLINED_FUNCTION_34_10(v33);
    if (!v31)
    {
      OUTLINED_FUNCTION_6_23();
      goto LABEL_23;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_267CFA938()
{
  OUTLINED_FUNCTION_52_6();
  v4 = v0;
  v5 = *v0;
  if (*(*v0 + 24) > v6)
  {
    v7 = *(*v0 + 24);
  }

  v43 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v8 = sub_267EF9CE8();
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v4 = v8;
    OUTLINED_FUNCTION_41_0();
    return;
  }

  v41 = v4;
  v42 = v5;
  v9 = 0;
  v10 = v5;
  OUTLINED_FUNCTION_1_33();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v16 = v8 + 64;
  if ((v12 & v11) == 0)
  {
LABEL_6:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v9 >= v15)
      {
        break;
      }

      ++v18;
      if (*(v10 + 8 * v9))
      {
        OUTLINED_FUNCTION_12_5();
        v13 = v20 & v19;
        goto LABEL_11;
      }
    }

    if ((v43 & 1) == 0)
    {

      v4 = v41;
      goto LABEL_32;
    }

    v37 = *(v5 + 32);
    OUTLINED_FUNCTION_18_14();
    v4 = v41;
    if (v39 != v40)
    {
      OUTLINED_FUNCTION_17_14(v38);
    }

    else
    {
      OUTLINED_FUNCTION_11_24(v38);
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v21 = v17 | (v9 << 6);
    v22 = (*(v5 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(*(v5 + 56) + 8 * v21);
    if ((v43 & 1) == 0)
    {
      v26 = v22[1];
    }

    OUTLINED_FUNCTION_55_8();
    sub_267EF9128();
    v27 = sub_267EFA018();
    OUTLINED_FUNCTION_3_28(v27);
    if (((v30 << v29) & ~*(v16 + 8 * v28)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_5_5();
LABEL_23:
    *(v16 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v36 = (*(v8 + 48) + 16 * v31);
    *v36 = v23;
    v36[1] = v24;
    *(*(v8 + 56) + 8 * v31) = v25;
    OUTLINED_FUNCTION_19_12();
    v5 = v42;
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_7_4();
  while (1)
  {
    OUTLINED_FUNCTION_46_8();
    if (v35)
    {
      if (v33)
      {
        break;
      }
    }

    if (v32 == v34)
    {
      v32 = 0;
    }

    if (*(v16 + 8 * v32) != -1)
    {
      OUTLINED_FUNCTION_6_23();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_267CFAB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  OUTLINED_FUNCTION_52_6();
  OUTLINED_FUNCTION_4_29(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB90, &qword_267F02ED8);
  v16 = OUTLINED_FUNCTION_10_23();
  if (!*(v13 + 16))
  {
LABEL_29:

    *v12 = v16;
    OUTLINED_FUNCTION_41_0();
    return;
  }

  v43 = v13;
  v17 = 0;
  v18 = v13;
  OUTLINED_FUNCTION_1_33();
  OUTLINED_FUNCTION_14_21();
  if (!v14)
  {
LABEL_4:
    v20 = v17;
    while (1)
    {
      v17 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v17 >= v12)
      {
        break;
      }

      ++v20;
      if (*(v18 + 8 * v17))
      {
        OUTLINED_FUNCTION_12_5();
        v14 = v22 & v21;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      v39 = *(v13 + 32);
      OUTLINED_FUNCTION_18_14();
      if (v41 != v42)
      {
        OUTLINED_FUNCTION_17_14(v40);
      }

      else
      {
        OUTLINED_FUNCTION_11_24(v40);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_13_21();
LABEL_9:
    OUTLINED_FUNCTION_31_11(v19);
    v24 = *v23;
    v25 = v23[1];
    v28 = *(v27 + 8 * v26);
    if ((a12 & 1) == 0)
    {
      v29 = v23[1];
    }

    OUTLINED_FUNCTION_55_8();
    sub_267EF9128();
    v30 = sub_267EFA018();
    OUTLINED_FUNCTION_3_28(v30);
    OUTLINED_FUNCTION_28_17(v31);
    if (v32)
    {
      break;
    }

    OUTLINED_FUNCTION_5_5();
LABEL_21:
    OUTLINED_FUNCTION_2_30(v33);
    *v37 = v24;
    v37[1] = v25;
    *(*(v16 + 56) + 8 * v38) = v28;
    OUTLINED_FUNCTION_19_12();
    v13 = v43;
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_4();
  while (1)
  {
    OUTLINED_FUNCTION_46_8();
    if (v32)
    {
      if (v35)
      {
        break;
      }
    }

    if (v34 == v36)
    {
      v34 = 0;
    }

    OUTLINED_FUNCTION_34_10(v34);
    if (!v32)
    {
      OUTLINED_FUNCTION_6_23();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_267CFACAC(uint64_t a1, unint64_t a2, char a3, void *a4)
{
  v8 = a2 & 0xFFFFFFFFFFFFFF8;
  v35 = a2 & 0xC000000000000001;

  v9 = 0;
  v37 = a2;
  v38 = a1;
  v10 = (a1 + 40);
  v36 = a2 >> 62;
  for (i = v8; ; v8 = i)
  {
    v11 = *(v38 + 16);
    if (v9 == v11)
    {
LABEL_24:
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return;
    }

    if (v9 >= v11)
    {
      break;
    }

    v12 = *(v10 - 1);
    v13 = *v10;
    if (v36)
    {
      v14 = sub_267EF9A68();
    }

    else
    {
      v14 = *(v8 + 16);
    }

    if (v9 == v14)
    {
      goto LABEL_24;
    }

    if (v35)
    {

      v16 = MEMORY[0x26D609870](v9, v37);
    }

    else
    {
      if (v9 >= *(v8 + 16))
      {
        goto LABEL_27;
      }

      v15 = *(v37 + 8 * v9 + 32);

      v16 = v15;
    }

    v39 = v16;
    v17 = *a4;
    v19 = sub_267BA9948();
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_26;
    }

    v23 = v18;
    if (v17[3] >= v22)
    {
      if (a3)
      {
        if (v18)
        {
          goto LABEL_22;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB48, &qword_267F02E78);
        sub_267EF9C78();
        if (v23)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_267CFA20C(v22, a3 & 1);
      v24 = *a4;
      v25 = sub_267BA9948();
      if ((v23 & 1) != (v26 & 1))
      {
        goto LABEL_29;
      }

      v19 = v25;
      if (v23)
      {
LABEL_22:
        v32 = swift_allocError();
        swift_willThrow();
        v33 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
        if ((swift_dynamicCast() & 1) == 0)
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          return;
        }

        goto LABEL_30;
      }
    }

    v27 = *a4;
    *(*a4 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v28 = (v27[6] + 16 * v19);
    *v28 = v12;
    v28[1] = v13;
    *(v27[7] + 8 * v19) = v39;
    v29 = v27[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_28;
    }

    v27[2] = v31;
    v10 += 2;
    ++v9;
    a3 = 1;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_267EF9F28();
  __break(1u);
LABEL_30:
  sub_267EF9B68();
  MEMORY[0x26D608E60](0xD00000000000001BLL, 0x8000000267F167A0);
  sub_267EF9C58();
  MEMORY[0x26D608E60](39, 0xE100000000000000);
  sub_267EF9C98();
  __break(1u);
}

uint64_t sub_267CFB038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectInvocationUseCases();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267CFB09C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectInvocationUseCases();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_267CFB100(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v28 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_267EF9F28();
      __break(1u);
      goto LABEL_22;
    }

    v30 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_267BA9948();
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB60, &qword_267F02EA0);
      sub_267EF9C78();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v7;
    v21[1] = v6;
    v22 = (v20[7] + 16 * v12);
    *v22 = v9;
    v22[1] = v8;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v20[2] = v25;
    v4 = v30 + 1;
    a2 = 1;
  }

  sub_267CFA4AC(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_267BA9948();
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_267EF9B68();
  MEMORY[0x26D608E60](0xD00000000000001BLL, 0x8000000267F167A0);
  sub_267EF9C58();
  MEMORY[0x26D608E60](39, 0xE100000000000000);
  sub_267EF9C98();
  __break(1u);
}

uint64_t sub_267CFB3F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267CFB440(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v5 = OBJC_IVAR____TtC16SiriMessagesFlow26OfferTransitionActionGroup_transition;
  v6 = sub_267EF4548();
  __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v7;
  type metadata accessor for FunctionAction();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = sub_267CFB92C;
  v9[5] = v8;
  v10 = sub_267CFB938(qword_28022A590, type metadata accessor for FunctionAction);
  v11 = *(v2 + 16);
  *(v2 + 16) = v9;
  *(v2 + 24) = v10;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_267CFB558(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1), void *))
{
  v6 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;

  a3(sub_267CFB980, v7);
}

uint64_t sub_267CFB64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14[-v7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_267EF4548();
    (*(*(v11 - 8) + 16))(v8, a1, v11);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
    v12 = OBJC_IVAR____TtC16SiriMessagesFlow26OfferTransitionActionGroup_transition;
    swift_beginAccess();
    sub_267C13844(v8, v10 + v12);
    swift_endAccess();
  }

  return a3(0);
}

uint64_t type metadata accessor for OfferTransitionActionGroup()
{
  result = qword_28022ABA0;
  if (!qword_28022ABA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267CFB7EC()
{
  sub_267C4C258();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267CFB888@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow26OfferTransitionActionGroup_transition;
  swift_beginAccess();
  return sub_267C4C358(v1 + v3, a1);
}

uint64_t sub_267CFB8E0(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return ActionGrouping.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_267CFB92C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_267CFB558(a1, a2, *(v2 + 16));
}

uint64_t sub_267CFB938(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267CFB98C(void *a1, uint64_t a2, void (*a3)(void), void *a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229558, &unk_267F02FE0);
  v10 = OUTLINED_FUNCTION_22(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v57 - v13);
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = a1;
    v18 = sub_267D2904C();
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      v22 = [v16 speakableGroupName];
      if (v22)
      {

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v23 = sub_267EF8A08();
        __swift_project_value_buffer(v23, qword_280240FB0);

        v24 = sub_267EF89F8();
        v25 = sub_267EF95D8();

        if (!os_log_type_enabled(v24, v25))
        {
          goto LABEL_21;
        }

        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v57 = a4;
        v58 = v27;
        v28 = a3;
        v29 = v17;
        v30 = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_267BA33E8(v20, v21, &v58);
        _os_log_impl(&dword_267B93000, v24, v25, "#GroupAppResolver: received an intent with appIdentifier: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        v17 = v29;
        a3 = v28;
        OUTLINED_FUNCTION_32_0();
        goto LABEL_20;
      }
    }

    v41 = *(v5 + 16);
    if (!v41 || (v42 = *(v41 + 272)) == 0)
    {
      v53 = *MEMORY[0x277D553B0];
      v54 = sub_267EF7CC8();
      OUTLINED_FUNCTION_22(v54);
      (*(v55 + 104))(v14, v53);
      goto LABEL_23;
    }

    v43 = *(v41 + 264);
    v44 = qword_280228818;

    if (v44 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v45 = sub_267EF8A08();
    __swift_project_value_buffer(v45, qword_280240FB0);

    v24 = sub_267EF89F8();
    v46 = sub_267EF95D8();

    if (!os_log_type_enabled(v24, v46))
    {
LABEL_21:

      sub_267EF7C38();
      *v14 = sub_267EF7C08();
      v50 = *MEMORY[0x277D55428];
      v51 = sub_267EF7D48();
      OUTLINED_FUNCTION_22(v51);
      (*(v52 + 104))(v14, v50);
LABEL_23:
      swift_storeEnumTagMultiPayload();
      a3(v14);

      return sub_267B9F98C(v14, &qword_280229558, &unk_267F02FE0);
    }

    v47 = swift_slowAlloc();
    v57 = v17;
    v48 = v47;
    v49 = swift_slowAlloc();
    v58 = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_267BA33E8(v43, v42, &v58);
    _os_log_impl(&dword_267B93000, v24, v46, "#GroupAppResolver: received an message state with appIdentifier: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    OUTLINED_FUNCTION_32_0();
    v17 = v57;
LABEL_20:
    OUTLINED_FUNCTION_32_0();
    goto LABEL_21;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v31 = sub_267EF8A08();
  __swift_project_value_buffer(v31, qword_280240FB0);
  v32 = a1;
  v33 = sub_267EF89F8();
  v34 = sub_267EF95E8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v32;
    *v36 = v32;
    v37 = v32;
    _os_log_impl(&dword_267B93000, v33, v34, "#GroupAppResolver: It's not INSendMessageIntent: %@", v35, 0xCu);
    sub_267B9F98C(v36, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v38 = *MEMORY[0x277D553B0];
  v39 = sub_267EF7CC8();
  OUTLINED_FUNCTION_22(v39);
  (*(v40 + 104))(v14, v38);
  swift_storeEnumTagMultiPayload();
  a3(v14);
  return sub_267B9F98C(v14, &qword_280229558, &unk_267F02FE0);
}

void sub_267CFBF20(uint64_t a1, void (*a2)(void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022ABC0, &unk_267F030D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_267BB16A4(a1, &v11 - v6, &qword_28022ABC0, &unk_267F030D0);
  v8 = sub_267EF43D8();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    sub_267CFC804(&unk_28022AE10, 255, MEMORY[0x277D5BE90]);
    v9 = swift_allocError();
    (*(*(v8 - 8) + 32))(v10, v7, v8);
  }

  a2(v9);
}

uint64_t sub_267CFC084(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_267EF2E38();
  v7 = OUTLINED_FUNCTION_58(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 40);
  if (v14 && (v15 = *(v2 + 40), (v16 = sub_267DE1A4C()) != 0))
  {
    v17 = v16;
    v18 = *(v3 + 48);
    v29 = a1;
    v30 = v18;
    v19 = *(v3 + 32);
    v21 = v19[5];
    v20 = v19[6];
    __swift_project_boxed_opaque_existential_0(v19 + 2, v21);
    (*(v20 + 8))(v31, v21, v20);
    __swift_project_boxed_opaque_existential_0(v31, v31[3]);
    sub_267EF3B68();
    v22 = sub_267BC20F4(v13, 0, 0, v14, v17);
    (*(v9 + 8))(v13, v6);
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_94();
    v23 = swift_allocObject();
    v24 = v29;
    v23[2] = v3;
    v23[3] = v24;
    v23[4] = a2;

    sub_267CEAD3C(v22);
  }

  else
  {
    v26 = *(v3 + 48);
    OUTLINED_FUNCTION_94();
    v27 = swift_allocObject();
    v27[2] = v3;
    v27[3] = a1;
    v27[4] = a2;

    sub_267CE88DC();
  }
}

void sub_267CFC2E0(uint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4, const char *a5)
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95D8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_267B93000, v10, v11, a5, v12, 2u);
    MEMORY[0x26D60A7B0](v12, -1, -1);
  }

  sub_267CFC3EC(a1, a3, a4);
}

void sub_267CFC3EC(uint64_t a1, void (*a2)(id), uint64_t a3)
{
  v29 = a3;
  v6 = sub_267EF4228();
  v7 = OUTLINED_FUNCTION_58(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v28 - v16);
  sub_267BB16A4(a1, v28 - v16, &qword_2802295B8, &qword_267EFDCB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    v19 = *v17;
    a2(v18);
  }

  else
  {
    (*(v9 + 32))(v13, v17, v6);
    v20 = sub_267DA1B74();
    v21 = *(v3 + 32);
    v22 = v21[5];
    v23 = v21[6];
    __swift_project_boxed_opaque_existential_0(v21 + 2, v22);
    (*(v23 + 16))(v30, v22, v23);
    v28[1] = v30[4];
    __swift_project_boxed_opaque_existential_0(v30, v30[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_267EFCA40;
    *(v24 + 32) = v20;
    v25 = swift_allocObject();
    v26 = v29;
    *(v25 + 16) = a2;
    *(v25 + 24) = v26;
    v27 = v20;

    sub_267EF4238();

    (*(v9 + 8))(v13, v6);
    __swift_destroy_boxed_opaque_existential_0(v30);
  }
}

void *sub_267CFC694()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return v0;
}

uint64_t sub_267CFC6CC()
{
  sub_267CFC694();

  return swift_deallocClassInstance();
}

uint64_t sub_267CFC728()
{
  v1 = *v0;
  swift_getWitnessTable();
  return StaticAction.debugDescription.getter();
}

uint64_t sub_267CFC804(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_267CFC89C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022ABC8, &unk_267F030E0);
  v8 = OUTLINED_FUNCTION_22(v37);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_267EF89E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  v18 = swift_allocObject();
  v38 = a2;
  v39 = v18;
  *(v18 + 2) = a2;
  *(v18 + 3) = a3;
  *(v18 + 4) = a4;
  sub_267BA9F38(0, &qword_28022ABD0, 0x277CD97D8);
  v40 = a3;

  v19 = a1;
  v20 = sub_267CFCE24(v19);
  v36 = v12;
  v37 = a4;
  v21 = objc_allocWithZone(MEMORY[0x277CD97E0]);
  v38 = v20;
  v22 = [v21 init];
  [v22 setTreatLivePhotoAsStill_];
  [v22 setShouldBundleComplexAssetResources_];
  v35 = v22;
  [v22 setVariant_];
  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v23 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  sub_267EF89B8();
  v24 = v36;
  (*(v36 + 16))(v15, v17, v11);
  v25 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v24 + 32))(v27 + v25, v15, v11);
  v28 = (v27 + v26);
  v29 = v39;
  *v28 = sub_267CFDE70;
  v28[1] = v29;
  *(v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8)) = v19;
  aBlock[4] = sub_267CFDE7C;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_267CFD794;
  aBlock[3] = &block_descriptor_10;
  v30 = _Block_copy(aBlock);
  v31 = v19;

  v32 = v38;
  v33 = v35;
  [v38 exportWithOptions:v35 completionHandler:v30];

  _Block_release(v30);
  (*(v24 + 8))(v17, v11);
}

id sub_267CFCE24(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() exportRequestForAsset:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_267EF2A78();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_267CFCEF8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5, void *a6)
{
  v72 = a5;
  v73 = a4;
  v70 = a3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022ABC8, &unk_267F030E0);
  v9 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v11 = &v64 - v10;
  v12 = sub_267EF2BA8();
  v69 = *(v12 - 8);
  v13 = *(v69 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v64 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v64 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v64 - v27;
  if (a2 || !a1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v35 = sub_267EF8A08();
    __swift_project_value_buffer(v35, qword_280240FB0);
    v36 = a2;
    v37 = sub_267EF89F8();
    v38 = sub_267EF95E8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v74 = a2;
      v75 = v40;
      *v39 = 136315138;
      v41 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D18, &qword_267EFF3E0);
      v42 = sub_267EF9098();
      v44 = sub_267BA33E8(v42, v43, &v75);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_267B93000, v37, v38, "Error in creating exporting PHAsset: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x26D60A7B0](v40, -1, -1);
      MEMORY[0x26D60A7B0](v39, -1, -1);
    }

    if (a2)
    {
      v45 = sub_267EF2A68();
      v46 = [v45 code];
    }

    else
    {
      v46 = 0;
    }

    sub_267EF9688();
    if (qword_280228820 != -1)
    {
      swift_once();
    }

    sub_267EF89B8();
    *v11 = v46;
    v11[8] = a2 == 0;
    v11[9] = 0;
    swift_storeEnumTagMultiPayload();
    v73(v11);
    v60 = &qword_28022ABC8;
    v61 = &unk_267F030E0;
    v62 = v11;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(&v64 - v27, 1, 1, v12);
    v29 = [a6 playbackStyle] - 1;
    if (v29 <= 4)
    {
      v30 = **(&unk_279C2E530 + v29);
      sub_267C8EDD0(a1, v26);
      sub_267B9F98C(v28, &qword_280229E20, &unk_267EFDCC0);
      sub_267C26704(v26, v28);
    }

    sub_267BB3794(v28, v23);
    if (__swift_getEnumTagSinglePayload(v23, 1, v12) == 1)
    {
      sub_267B9F98C(v23, &qword_280229E20, &unk_267EFDCC0);
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v31 = sub_267EF8A08();
      __swift_project_value_buffer(v31, qword_280240FB0);
      v32 = sub_267EF89F8();
      v33 = sub_267EF95E8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_267B93000, v32, v33, "#SharableMediaAttachmentUtils Failed to retrieve file URL for PHAsset", v34, 2u);
        MEMORY[0x26D60A7B0](v34, -1, -1);
      }

      sub_267EF9688();
      if (qword_280228820 != -1)
      {
        swift_once();
      }

      sub_267EF89B8();
      *v11 = 0;
      *(v11 + 4) = 1;
      swift_storeEnumTagMultiPayload();
      v73(v11);
      sub_267B9F98C(v11, &qword_28022ABC8, &unk_267F030E0);
    }

    else
    {
      v47 = v69;
      (*(v69 + 32))(v18, v23, v12);
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v48 = sub_267EF8A08();
      __swift_project_value_buffer(v48, qword_280240FB0);
      v68 = *(v47 + 16);
      v68(v16, v18, v12);
      v49 = sub_267EF89F8();
      v50 = sub_267EF95D8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v67 = v47 + 16;
        v52 = v51;
        v66 = swift_slowAlloc();
        v75 = v66;
        *v52 = 136315138;
        v65 = sub_267EF2AC8();
        v54 = v53;
        v55 = *(v69 + 8);
        v55(v16, v12);
        v56 = sub_267BA33E8(v65, v54, &v75);

        *(v52 + 4) = v56;
        v57 = v50;
        v58 = v55;
        _os_log_impl(&dword_267B93000, v49, v57, "#SharableMediaAttachmentUtils fetchSharableMediaContent downloaded an asset and local URL is now: %s", v52, 0xCu);
        v59 = v66;
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x26D60A7B0](v59, -1, -1);
        MEMORY[0x26D60A7B0](v52, -1, -1);
      }

      else
      {

        v58 = *(v47 + 8);
        v58(v16, v12);
      }

      sub_267EF9688();
      if (qword_280228820 != -1)
      {
        swift_once();
      }

      sub_267EF89B8();
      v68(v11, v18, v12);
      swift_storeEnumTagMultiPayload();
      v73(v11);
      sub_267B9F98C(v11, &qword_28022ABC8, &unk_267F030E0);
      v58(v18, v12);
    }

    v60 = &qword_280229E20;
    v61 = &unk_267EFDCC0;
    v62 = v28;
  }

  return sub_267B9F98C(v62, v60, v61);
}

uint64_t sub_267CFD794(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for PHAssetExportRequestFileURLKey(0);
    sub_267EF2BA8();
    sub_267CFDF38();
    v4 = sub_267EF8EF8();
  }

  v7 = a3;
  v6(v4, a3);
}

BOOL sub_267CFD844(void *a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CD97E0]) init];
  [v2 setTreatLivePhotoAsStill_];
  [v2 setShouldBundleComplexAssetResources_];
  [v2 setVariant_];
  sub_267BA9F38(0, &qword_28022ABD0, 0x277CD97D8);
  v3 = sub_267CFCE24(a1);
  v18[0] = 1;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  [v3 preflightExportWithOptions:v2 assetAvailability:v18 isProcessingRequired:&v16 fileURLs:&v17 info:&v15];
  v4 = v18[0] == 0;
  if (v18[0])
  {
    v5 = v15;
  }

  else
  {
    v6 = v17;
    v7 = qword_280228818;
    v8 = v15;
    v9 = v6;
    if (v7 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = sub_267EF8A08();
    __swift_project_value_buffer(v10, qword_280240FB0);
    v5 = sub_267EF89F8();
    v11 = sub_267EF95D8();
    if (os_log_type_enabled(v5, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_267B93000, v5, v11, "#SharableMediaAttachmentUtils asset is available locally", v12, 2u);
      OUTLINED_FUNCTION_32_0();
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_267CFDB98(int a1)
{
  v1 = 0xE500000000000000;
  v2 = 0x6F65646976;
  switch(a1)
  {
    case 1:
      v2 = 0x6F746F6870;
      break;
    case 2:
      v1 = 0xE90000000000006FLL;
      v2 = 0x746F68506576696CLL;
      break;
    case 3:
      break;
    case 4:
      v1 = 0xE400000000000000;
      v2 = 1802398060;
      break;
    default:
      v1 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
  }

  v3 = sub_267EF8FF8();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v6[4] = sub_267CFDF90;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_267CFDDD4;
  v6[3] = &block_descriptor_9_0;
  v5 = _Block_copy(v6);

  AnalyticsSendEventLazy();
  _Block_release(v5);
}

uint64_t sub_267CFDD0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022ABE0, &unk_267F030F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  strcpy((inited + 32), "attachmentType");
  *(inited + 47) = -18;
  *(inited + 48) = sub_267EF8FF8();
  sub_267BA9F38(0, &qword_28022ABD8, 0x277D82BB8);
  return sub_267EF8F28();
}

id sub_267CFDDD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_267BA9F38(0, &qword_28022ABD8, 0x277D82BB8);
    v5 = sub_267EF8EE8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_267CFDE70()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_267D1EE0C();
}

uint64_t sub_267CFDE7C(uint64_t a1, void *a2)
{
  v5 = *(sub_267EF89E8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v2 + v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v2 + v8);

  return sub_267CFCEF8(a1, a2, v2 + v6, v10, v11, v12);
}

unint64_t sub_267CFDF38()
{
  result = qword_280228BC8;
  if (!qword_280228BC8)
  {
    type metadata accessor for PHAssetExportRequestFileURLKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280228BC8);
  }

  return result;
}

uint64_t sub_267CFDF90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_267CFDD0C();
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SharingMediaAttachmentError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SharingMediaAttachmentError(uint64_t result, int a2, int a3)
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_267CFDFFC(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267CFE018(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 9) = v2;
  return result;
}

double sub_267CFE084@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x646E657070417369 && a2 == 0xEA00000000006465;
  if (v6 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[24];
LABEL_7:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v9;
    return result;
  }

  v10 = a1 == 0xD00000000000001ALL && 0x8000000267F10470 == a2;
  if (v10 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[25];
    goto LABEL_7;
  }

  v11 = a1 == 0xD000000000000019 && 0x8000000267F10490 == a2;
  if (v11 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[26];
    goto LABEL_7;
  }

  v12 = a1 == 0xD00000000000001DLL && 0x8000000267F104B0 == a2;
  if (v12 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[27];
    goto LABEL_7;
  }

  v13 = a1 == 0xD000000000000016 && 0x8000000267F104D0 == a2;
  if (v13 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[28];
    goto LABEL_7;
  }

  v14 = a1 == 0xD000000000000021 && 0x8000000267F104F0 == a2;
  if (v14 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[29];
    goto LABEL_7;
  }

  v16 = a1 == OUTLINED_FUNCTION_3_29() && a2 == v15;
  if (v16 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[30];
    goto LABEL_7;
  }

  v18 = a1 == OUTLINED_FUNCTION_4_30() && a2 == v17;
  if (v18 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[31];
    goto LABEL_7;
  }

  v19 = a1 == 0xD000000000000011 && 0x8000000267F101F0 == a2;
  if (v19 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[32];
    goto LABEL_7;
  }

  v20 = a1 == 0xD000000000000012 && 0x8000000267F10210 == a2;
  if (v20 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[33];
    goto LABEL_7;
  }

  v21 = a1 == 0xD000000000000014 && 0x8000000267F10230 == a2;
  if (v21 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v9 = v3[34];
    goto LABEL_7;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_267CFE2DC()
{
  v0 = sub_267EF9D38();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_267CFE354@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267CFE2DC();
  *a2 = result;
  return result;
}

uint64_t sub_267CFE384@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267BDACF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267CFE3B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267CFE328();
  *a1 = result;
  return result;
}

uint64_t sub_267CFE3E4(uint64_t a1)
{
  v2 = sub_267BD2758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267CFE420(uint64_t a1)
{
  v2 = sub_267BD2758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267CFE45C(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_267CFE4AC(a1);
  return v2;
}

uint64_t sub_267CFE4AC(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022ABF8, &qword_267F03330);
  v6 = OUTLINED_FUNCTION_58(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v16[-v11];
  *(v1 + 16) = 0;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267BD2758();
  sub_267EFA078();
  if (v2)
  {

    type metadata accessor for MessagesMessageComponentDialogContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16[31] = 0;
    *(v1 + 24) = OUTLINED_FUNCTION_2_31() & 1;
    v16[30] = 1;
    *(v1 + 25) = OUTLINED_FUNCTION_2_31() & 1;
    v16[29] = 2;
    *(v1 + 26) = OUTLINED_FUNCTION_2_31() & 1;
    v16[28] = 3;
    *(v1 + 27) = OUTLINED_FUNCTION_2_31() & 1;
    v16[27] = 4;
    *(v1 + 28) = OUTLINED_FUNCTION_2_31() & 1;
    v16[26] = 5;
    *(v1 + 29) = OUTLINED_FUNCTION_2_31() & 1;
    v16[25] = 6;
    *(v1 + 30) = OUTLINED_FUNCTION_2_31() & 1;
    v16[24] = 7;
    *(v1 + 31) = OUTLINED_FUNCTION_2_31() & 1;
    v16[15] = 8;
    *(v1 + 32) = OUTLINED_FUNCTION_2_31() & 1;
    v16[14] = 9;
    *(v1 + 33) = OUTLINED_FUNCTION_2_31() & 1;
    v16[13] = 10;
    v15 = OUTLINED_FUNCTION_2_31();
    (*(v8 + 8))(v12, v5);
    *(v3 + 34) = v15 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_267CFE7C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267CFE45C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_267CFE854(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MessagesMessageComponentDialogContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessagesMessageComponentDialogContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessagesMessageComponentDialogContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267CFE9FC()
{
  result = qword_28022AC10;
  if (!qword_28022AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AC10);
  }

  return result;
}

unint64_t sub_267CFEA54()
{
  result = qword_28022AC18;
  if (!qword_28022AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AC18);
  }

  return result;
}

unint64_t sub_267CFEAAC()
{
  result = qword_28022AC20;
  if (!qword_28022AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AC20);
  }

  return result;
}

uint64_t sub_267CFEB28@<X0>(uint64_t a1@<X8>)
{
  Resolve = type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow.State(0);
  OUTLINED_FUNCTION_5_0(Resolve);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_267EF2FC8();
  OUTLINED_FUNCTION_23();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state;
  swift_beginAccess();
  sub_267D013F0(v1 + v17, v8);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v18 = *(v11 + 32);
    v18(v16, v8, v9);
    return (v18)(a1, v16, v9);
  }

  else
  {
    sub_267D01394(v8);
    sub_267C4BE60();
    v20 = swift_allocError();
    *v21 = 0;
    v21[1] = 0;
    *a1 = v20;
    *(a1 + 8) = 0;
    return (*(v11 + 104))(a1, *MEMORY[0x277D5B408], v9);
  }
}

uint64_t sub_267CFED44()
{
  OUTLINED_FUNCTION_12();
  v1[35] = v2;
  v1[36] = v0;
  Resolve = type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow.State(0);
  v1[37] = Resolve;
  v4 = *(*(Resolve - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267CFEDD8()
{
  v42 = v0;
  v1 = *(v0 + 312);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state;
  *(v0 + 320) = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state;
  swift_beginAccess();
  sub_267D013F0(v3 + v4, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(v0 + 312);
      v12 = *v10;
      v11 = *(v10 + 8);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v13 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
      v14 = sub_267EF89F8();
      v15 = sub_267EF95C8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = OUTLINED_FUNCTION_32();
        *v16 = 0;
        _os_log_impl(&dword_267B93000, v14, v15, "#SendMessageAppResolutionBeforeNextResolveFlow pushing unlock check flow", v16, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      v18 = *(v0 + 296);
      v17 = *(v0 + 304);
      v19 = *(v0 + 280);
      v20 = *(v0 + 288);

      sub_267B9B050(v20 + 16, v0 + 16);
      type metadata accessor for SiriKitFlowFactoryImpl();
      v21 = swift_allocObject();
      v22 = v12;
      v23 = sub_267BCD068(v22, (v0 + 16), v21);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_267D01454(v17, v3 + v4);
      swift_endAccess();
      *(v0 + 256) = v23;
      OUTLINED_FUNCTION_62_0();
      v24 = swift_allocObject();
      *(v24 + 16) = v20;
      *(v24 + 24) = v11;
      type metadata accessor for SendMessageUnlockCheckFlow();
      sub_267D014C0(&qword_28022AC80, type metadata accessor for SendMessageUnlockCheckFlow);

      sub_267EF3FC8();

      goto LABEL_18;
    }

    if (!EnumCaseMultiPayload)
    {
      v6 = *(v0 + 312);
      *(v0 + 328) = *v6;
      *(v0 + 336) = v6[1];
      v7 = swift_task_alloc();
      *(v0 + 344) = v7;
      *v7 = v0;
      v7[1] = sub_267CFF238;
      v8 = *(v0 + 288);

      return sub_267CFFF94();
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v25 = *(v0 + 288);
    v26 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v26, qword_280240FB0);

    v27 = sub_267EF89F8();
    v28 = sub_267EF95E8();

    if (os_log_type_enabled(v27, v28))
    {
      v30 = *(v0 + 296);
      v29 = *(v0 + 304);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41 = v32;
      *v31 = 136315138;
      sub_267D013F0(v3 + v4, v29);
      v33 = sub_267EF9098();
      v35 = sub_267BA33E8(v33, v34, &v41);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_267B93000, v27, v28, "#SendMessageAppResolutionBeforeNextResolveFlow execute() called in %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }
  }

  v36 = *(v0 + 312);
  v37 = *(v0 + 280);
  sub_267EF4018();
  sub_267D01394(v36);
LABEL_18:
  v39 = *(v0 + 304);
  v38 = *(v0 + 312);

  OUTLINED_FUNCTION_17();

  return v40();
}

uint64_t sub_267CFF238()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *(v1 + 344);
  v9 = *v0;
  *(v2 + 352) = v4;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267CFF328()
{
  v48 = v0;
  v1 = *(v0 + 352);
  if (v1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v2 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
    v3 = sub_267EF89F8();
    v4 = sub_267EF95C8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_32();
      *v5 = 0;
      _os_log_impl(&dword_267B93000, v3, v4, "#SendMessageAppResolutionBeforeNextResolveFlow pushing app resolution flow", v5, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v6 = *(v0 + 288);

    v7 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_protectedAppClientOverride;
    swift_beginAccess();
    sub_267D01324(v6 + v7, v0 + 96);
    if (*(v0 + 120))
    {
      sub_267B9A5E8((v0 + 96), v0 + 56);
      v8 = sub_267EF89F8();
      v9 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v9))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_6_24(&dword_267B93000, v10, v11, "#SendMessageAppResolutionBeforeNextResolveFlow overriding protected app client");
        OUTLINED_FUNCTION_29_1();
      }

      sub_267EF30B8();
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    }

    else
    {
      sub_267B9FED8(v0 + 96, &qword_28022AC78, &unk_267F09F80);
    }

    v36 = *(v0 + 328);
    v35 = *(v0 + 336);
    v37 = *(v0 + 320);
    v38 = *(v0 + 296);
    v39 = *(v0 + 304);
    v40 = *(v0 + 280);
    v41 = *(v0 + 288);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_267D01454(v39, v41 + v37);
    swift_endAccess();
    *(v0 + 272) = v1;
    OUTLINED_FUNCTION_62_0();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v36;

    v43 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AC88, &unk_267F03600);
    sub_267D01510();
    sub_267EF3FC8();

    v45 = *(v0 + 304);
    v44 = *(v0 + 312);

    OUTLINED_FUNCTION_17();

    return v46();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v12 = *(v0 + 336);
    v13 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);

    v14 = sub_267EF89F8();
    v15 = sub_267EF95C8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 336);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v47 = v18;
      *v17 = 136446210;
      *(v0 + 264) = v16;
      sub_267EF7C38();
      sub_267D014C0(&qword_28022A060, MEMORY[0x277D55380]);
      v19 = sub_267EF9E58();
      v21 = sub_267BA33E8(v19, v20, &v47);

      *(v17 + 4) = v21;
      OUTLINED_FUNCTION_17_3(&dword_267B93000, v22, v23, "#SendMessageAppResolutionBeforeNextResolveFlow no app resolution flow, returning previously resolved app: %{public}s");
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_29_1();
    }

    v25 = *(v0 + 328);
    v24 = *(v0 + 336);
    v26 = *(v0 + 320);
    v27 = *(v0 + 296);
    v28 = *(v0 + 304);
    v29 = *(v0 + 288);
    *v28 = v25;
    v28[1] = v24;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v30 = v25;

    sub_267D01454(v28, v29 + v26);
    swift_endAccess();
    v31 = swift_task_alloc();
    *(v0 + 360) = v31;
    *v31 = v0;
    v31[1] = sub_267CFF7C0;
    v32 = *(v0 + 280);
    v33 = *(v0 + 288);

    return sub_267CFED44(v32);
  }
}

uint64_t sub_267CFF7C0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 360);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267CFF8A4()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[41];
  v1 = v0[42];

  v4 = v0[38];
  v3 = v0[39];

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267CFF910(uint64_t a1, uint64_t a2, void *a3)
{
  v48 = a3;
  v49 = a2;
  v52 = a1;
  Resolve = type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow.State(0);
  v3 = *(*(Resolve - 8) + 64);
  MEMORY[0x28223BE20](Resolve);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_267EF2FC8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v50 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v46 = &v46 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v15 = sub_267EF8A08();
  __swift_project_value_buffer(v15, qword_280240FB0);
  v16 = sub_267EF89F8();
  v17 = sub_267EF95C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v7;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_267B93000, v16, v17, "#SendMessageAppResolutionBeforeNextResolveFlow app resolution flow completed", v19, 2u);
    v20 = v19;
    v7 = v18;
    MEMORY[0x26D60A7B0](v20, -1, -1);
  }

  v21 = *(v7 + 16);
  v22 = v52;
  v21(v14, v52, v6);
  v23 = sub_267EF89F8();
  v24 = sub_267EF95D8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v47 = v7;
    v27 = v26;
    v53[0] = v26;
    *v25 = 136315138;
    v21(v46, v14, v6);
    v28 = sub_267EF9098();
    v29 = v14;
    v30 = v28;
    v46 = v5;
    v32 = v31;
    v33 = *(v47 + 8);
    v33(v29, v6);
    v34 = sub_267BA33E8(v30, v32, v53);
    v5 = v46;

    *(v25 + 4) = v34;
    _os_log_impl(&dword_267B93000, v23, v24, "#SendMessageAppResolutionBeforeNextResolveFlow app resolution flow completed with %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v35 = v27;
    v7 = v47;
    MEMORY[0x26D60A7B0](v35, -1, -1);
    v36 = v25;
    v22 = v52;
    MEMORY[0x26D60A7B0](v36, -1, -1);
  }

  else
  {

    v33 = *(v7 + 8);
    v33(v14, v6);
  }

  v37 = v50;
  v21(v50, v22, v6);
  if ((*(v7 + 88))(v37, v6) == *MEMORY[0x277D5B410])
  {
    (*(v7 + 96))(v37, v6);
    v38 = *v37;
    v39 = v48;
    *v5 = v48;
    *(v5 + 1) = v38;
    swift_storeEnumTagMultiPayload();
    v40 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state;
    v41 = v49;
    swift_beginAccess();
    v42 = v39;
    sub_267D01454(v5, v41 + v40);
    return swift_endAccess();
  }

  else
  {
    v21(v5, v22, v6);
    swift_storeEnumTagMultiPayload();
    v44 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state;
    v45 = v49;
    swift_beginAccess();
    sub_267D01454(v5, v45 + v44);
    swift_endAccess();
    return (v33)(v37, v6);
  }
}

uint64_t sub_267CFFDC0(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  Resolve = type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow.State(0);
  v7 = *(*(Resolve - 8) + 64);
  MEMORY[0x28223BE20](Resolve);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    sub_267C4BE60();
    v10 = swift_allocError();
    *v11 = xmmword_267F00050;
    *v9 = v10;
    v9[8] = 0;
    v12 = *MEMORY[0x277D5B408];
    v13 = sub_267EF2FC8();
    (*(*(v13 - 8) + 104))(v9, v12, v13);
    swift_storeEnumTagMultiPayload();
    v14 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state;
    swift_beginAccess();
  }

  else
  {
    *v9 = a3;
    v15 = *MEMORY[0x277D5B410];
    v16 = sub_267EF2FC8();
    (*(*(v16 - 8) + 104))(v9, v15, v16);
    swift_storeEnumTagMultiPayload();
    v14 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state;
    swift_beginAccess();
  }

  sub_267D01454(v9, a2 + v14);
  return swift_endAccess();
}

uint64_t sub_267CFFF94()
{
  OUTLINED_FUNCTION_12();
  v1[66] = v0;
  v1[65] = v2;
  v1[64] = v3;
  v4 = sub_267EF4C08();
  v1[67] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[68] = v5;
  v7 = *(v6 + 64);
  v1[69] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF4BA8();
  v1[70] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[71] = v9;
  v11 = *(v10 + 64);
  v1[72] = OUTLINED_FUNCTION_2();
  v12 = sub_267EF2D28();
  v1[73] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[74] = v13;
  v15 = *(v14 + 64);
  v1[75] = OUTLINED_FUNCTION_2();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0) - 8) + 64);
  v1[76] = OUTLINED_FUNCTION_2();
  v17 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_267D00108()
{
  v49 = v0;
  v1 = v0[66];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v2);
  (*(v3 + 8))(v2, v3);
  v5 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v5);
  if ((sub_267DBF838(v5, v4) & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v12 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v12, qword_280240FB0);
    v8 = sub_267EF89F8();
    v13 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_27(v13))
    {
      goto LABEL_12;
    }

    v10 = OUTLINED_FUNCTION_32();
    *v10 = 0;
    v11 = "#SendMessageAppResolutionBeforeNextResolveFlow - skipping app resolution before next resolve flow on an unsupported SeAS device";
    goto LABEL_11;
  }

  v6 = *(v0[66] + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_sendMessageState);
  v0[77] = v6;
  if (*(v6 + 96))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v7 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v7, qword_280240FB0);
    v8 = sub_267EF89F8();
    v9 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_27(v9))
    {
      goto LABEL_12;
    }

    v10 = OUTLINED_FUNCTION_32();
    *v10 = 0;
    v11 = "#SendMessageAppResolutionBeforeNextResolveFlow - skipping app resolution since app is already selected by user";
LABEL_11:
    _os_log_impl(&dword_267B93000, v8, v3, v11, v10, 2u);
    OUTLINED_FUNCTION_32_0();
LABEL_12:

    v14 = v0[76];
    v15 = v0[75];
    v16 = v0[72];
    v17 = v0[69];
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v18 = v0[1];

    return v18(0);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v20 = v0[64];
  v21 = sub_267EF8A08();
  v0[78] = OUTLINED_FUNCTION_30_1(v21, qword_280240FB0);
  v22 = v20;
  v23 = sub_267EF89F8();
  v24 = sub_267EF95D8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v0[76];
    v26 = v0[73];
    v27 = v0[64];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v48 = v29;
    *v28 = 136315138;
    sub_267D293AC(v25);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v26);
    v31 = v0[76];
    if (EnumTagSinglePayload)
    {
      sub_267B9FED8(v0[76], &qword_280229430, &qword_267EFD2C0);
      v32 = 0;
      v33 = 0;
    }

    else
    {
      v34 = v0[75];
      v35 = v0[74];
      v36 = v0[73];
      (*(v35 + 16))(v34, v0[76], v36);
      sub_267B9FED8(v31, &qword_280229430, &qword_267EFD2C0);
      v32 = sub_267EF2CE8();
      v33 = v37;
      (*(v35 + 8))(v34, v36);
    }

    v0[62] = v32;
    v0[63] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v38 = sub_267EF9098();
    v40 = sub_267BA33E8(v38, v39, &v48);

    *(v28 + 4) = v40;
    OUTLINED_FUNCTION_17_3(&dword_267B93000, v41, v42, "#SendMessageAppResolutionBeforeNextResolveFlow - invoking app selection with carried crrCommsAppSelectionJointId: %s");
    __swift_destroy_boxed_opaque_existential_0(v29);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  v43 = v0[66];
  v44 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_smartAppSelectionFeature;
  if (qword_280228730 != -1)
  {
    swift_once();
  }

  v0[79] = qword_280240A10;
  v45 = *__swift_project_boxed_opaque_existential_0((v43 + v44), *(v43 + v44 + 24));
  v46 = swift_task_alloc();
  v0[80] = v46;
  *v46 = v0;
  v46[1] = sub_267D005C8;
  v47 = v0[64];

  return sub_267DF6BFC();
}

uint64_t sub_267D005C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *(v1 + 640);
  v9 = *v0;
  *(v2 + 648) = v4;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267D006B8()
{
  v1 = v0[78];
  if (v0[81])
  {
    v81 = v0[81];
    v79 = (v0 + 42);
    v2 = sub_267EF89F8();
    v3 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_27(v3))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v4, v5, "#SendMessageAppResolutionBeforeNextResolveFlow app selection experiment is running, running app resolution flow before next resolve flow");
      OUTLINED_FUNCTION_29_1();
    }

    v6 = v0[79];
    v76 = v0[77];
    v7 = v0[66];
    v8 = v0[65];
    v9 = v0[64];

    v11 = v7[5];
    v10 = v7[6];
    __swift_project_boxed_opaque_existential_0(v7 + 2, v11);
    v12 = *(v10 + 8);

    v12(v11, v10);
    v13 = sub_267DF5E80(v9, v8, v76, (v0 + 32), v6);
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
    sub_267B9B050((v7 + 2), (v0 + 37));
    v14 = qword_2802286F0;
    v77 = v13;

    if (v14 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v74 = v0[77];
    v75 = v0[79];
    v73 = v0[64];
    v15 = v0 + 42;
    sub_267B9B050(qword_2802405A0, v79);
    v16 = type metadata accessor for AppInfoBuilder();
    v17 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v79, v0[45]);
    v0[50] = &type metadata for CATProvider;
    v0[51] = &off_2878CE7A0;
    v0[55] = &type metadata for MessagesFeatureFlagsImpl;
    v0[56] = off_2878D1228;
    v0[60] = v16;
    v0[61] = &off_2878D24C8;
    v0[57] = v17;
    v18 = type metadata accessor for SendMessageAppResolutionOnDeviceFlowStrategy();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v21 = swift_allocObject();
    v22 = v0 + 47;
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 47), &type metadata for CATProvider);
    v23 = v0 + 52;
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 52), &type metadata for MessagesFeatureFlagsImpl);
    v24 = v0 + 57;
    v25 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 57), v16);
    OUTLINED_FUNCTION_23();
    v27 = v26;
    v29 = *(v28 + 64);
    v30 = OUTLINED_FUNCTION_2();
    (*(v27 + 16))(v30, v25, v16);
    v31 = *v30;
    v32 = v73;

    v33 = sub_267DF6184(v32, 0, v74, v0 + 37, v31, v77, v75, v21);
  }

  else
  {
    v15 = v0 + 12;
    v34 = sub_267EF89F8();
    v35 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_27(v35))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v36, v37, "#SendMessageAppResolutionBeforeNextResolveFlow - running app resolution flow before next resolve flow");
      OUTLINED_FUNCTION_29_1();
    }

    v38 = v0[77];
    v39 = v0[66];

    sub_267B9B050(v39 + 16, (v0 + 7));
    v40 = qword_2802286F0;

    if (v40 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v80 = v0[79];
    v82 = v0[77];
    v78 = v0[64];
    sub_267B9B050(qword_2802405A0, (v0 + 12));
    v41 = type metadata accessor for AppInfoBuilder();
    v42 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v0[15]);
    v0[20] = &type metadata for CATProvider;
    v0[21] = &off_2878CE7A0;
    v0[25] = &type metadata for MessagesFeatureFlagsImpl;
    v0[26] = off_2878D1228;
    v0[30] = v41;
    v0[31] = &off_2878D24C8;
    v0[27] = v42;
    v43 = type metadata accessor for SendMessageAppResolutionOnDeviceFlowStrategy();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    v46 = swift_allocObject();
    v22 = v0 + 17;
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 17), &type metadata for CATProvider);
    v23 = v0 + 22;
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 22), &type metadata for MessagesFeatureFlagsImpl);
    v24 = v0 + 27;
    v47 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 27), v41);
    OUTLINED_FUNCTION_23();
    v49 = v48;
    v51 = *(v50 + 64);
    v52 = OUTLINED_FUNCTION_2();
    (*(v49 + 16))(v52, v47, v41);
    v53 = *v52;
    v54 = v78;

    v33 = sub_267DF6184(v54, 0, v82, v0 + 7, v53, 0, v80, v46);
  }

  __swift_destroy_boxed_opaque_existential_0(v24);

  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v15);
  v55 = qword_280228908;

  if (v55 != -1)
  {
    swift_once();
  }

  v56 = v0[72];
  v57 = v0[71];
  v58 = v0[70];
  v59 = v0[69];
  v60 = v0[68];
  v61 = v0[67];
  v62 = v0[66];
  v63 = sub_267EF6718();
  __swift_project_value_buffer(v63, qword_2802410C0);
  OUTLINED_FUNCTION_5_0(v63);
  (*(v64 + 16))(v59);
  (*(v60 + 104))(v59, *MEMORY[0x277D5C128], v61);
  sub_267EF4B98();
  v65 = *__swift_project_boxed_opaque_existential_0((v62 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_siriKitFlowFactory), *(v62 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_siriKitFlowFactory + 24));
  v66 = sub_267DF1758(v33, v56);

  (*(v57 + 8))(v56, v58);
  v67 = v0[76];
  v68 = v0[75];
  v69 = v0[72];
  v70 = v0[69];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v71 = v0[1];

  return v71(v66);
}

uint64_t sub_267D00D4C()
{
  sub_267D01394(v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_sendMessageState);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_smartAppSelectionFeature));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_siriKitFlowFactory));
  return sub_267B9FED8(v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_protectedAppClientOverride, &qword_28022AC78, &unk_267F09F80);
}

uint64_t sub_267D00DC0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267D01394(v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_sendMessageState);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_smartAppSelectionFeature));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_siriKitFlowFactory));
  sub_267B9FED8(v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_protectedAppClientOverride, &qword_28022AC78, &unk_267F09F80);
  return v0;
}

uint64_t sub_267D00E40()
{
  sub_267D00DC0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267D00EC0()
{
  result = type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow.State(319);
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

void sub_267D00F94()
{
  sub_267D01008();
  if (v0 <= 0x3F)
  {
    sub_267EF2FC8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_267D01008()
{
  if (!qword_28022AC68)
  {
    sub_267BB7170();
    sub_267EF7C38();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28022AC68);
    }
  }
}

uint64_t sub_267D01078@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_protectedAppClientOverride;
  swift_beginAccess();
  return sub_267D01324(v3 + v4, a1);
}

uint64_t sub_267D010D4(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_protectedAppClientOverride;
  swift_beginAccess();
  sub_267D012B4(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t (*sub_267D01138())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_267D011AC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return sub_267CFED44();
}

uint64_t sub_267D012B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AC78, &unk_267F09F80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267D01324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AC78, &unk_267F09F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267D01394(uint64_t a1)
{
  Resolve = type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow.State(0);
  (*(*(Resolve - 8) + 8))(a1, Resolve);
  return a1;
}

uint64_t sub_267D013F0(uint64_t a1, uint64_t a2)
{
  Resolve = type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow.State(0);
  (*(*(Resolve - 8) + 16))(a2, a1, Resolve);
  return a2;
}

uint64_t sub_267D01454(uint64_t a1, uint64_t a2)
{
  Resolve = type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow.State(0);
  (*(*(Resolve - 8) + 40))(a2, a1, Resolve);
  return a2;
}

uint64_t sub_267D014C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267D01510()
{
  result = qword_28022AC90;
  if (!qword_28022AC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022AC88, &unk_267F03600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AC90);
  }

  return result;
}

uint64_t sub_267D01574()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[15];
  v2 = v0[10];

  OUTLINED_FUNCTION_17();
  v4 = v0[17];

  return v3();
}

uint64_t sub_267D015DC()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_15_0();
  *v8 = v7;
  v10 = *(v9 + 264);
  v11 = *v1;
  OUTLINED_FUNCTION_5();
  *v12 = v11;
  v7[34] = v0;

  if (v0)
  {
    v13 = v7[32];
    v14 = v7[26];
    v15 = v7[24];
    v16 = v7[22];
  }

  else
  {
    v7[35] = v3;
    v7[36] = v5;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_267D01B50()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_92_0();
  v5 = v3;
  OUTLINED_FUNCTION_5();
  *v6 = v3;
  v7 = v3[38];
  *v6 = *v2;
  v3[39] = v1;

  v8 = v3[37];
  if (v1)
  {
    OUTLINED_FUNCTION_68_5();
  }

  else
  {

    v5[40] = v0;
    v5[41] = v4;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D020C4()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_92_0();
  v5 = v3;
  OUTLINED_FUNCTION_5();
  *v6 = v3;
  v7 = v3[43];
  *v6 = *v2;
  v3[44] = v1;

  v8 = v3[42];
  if (v1)
  {
    OUTLINED_FUNCTION_68_5();
  }

  else
  {

    v5[45] = v0;
    v5[46] = v4;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D02638()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 272);
  OUTLINED_FUNCTION_73_4();

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267D026D0()
{
  OUTLINED_FUNCTION_56();

  v1 = *(v0 + 312);
  OUTLINED_FUNCTION_73_4();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D02748()
{
  OUTLINED_FUNCTION_56();

  v1 = *(v0 + 352);
  OUTLINED_FUNCTION_73_4();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D027C0(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v3 = *(*(sub_267EF7B88() - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v4 = sub_267EF4228();
  v1[6] = v4;
  v5 = *(v4 - 8);
  v1[7] = v5;
  v6 = *(v5 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D02914, 0, 0);
}

uint64_t sub_267D02914()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[2];
  v2 = sub_267E0A09C();
  v3 = sub_267EF2B78();
  if (v4)
  {
    if (v3 == 1918985330 && v4 == 0xE400000000000000)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_267EF9EA8();
    }
  }

  else
  {
    v6 = 0;
  }

  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v7 = v0[5];
  type metadata accessor for SearchForMessagesCATs();
  sub_267EF7B68();
  v0[12] = sub_267EF78E8();
  if (v6)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[13] = v8;
    *v8 = v9;
    v8[1] = sub_267D02BB8;
    v10 = v0[10];
    OUTLINED_FUNCTION_30_2();

    return sub_267CEAC8C();
  }

  else
  {
    v13 = v0[2];
    v14 = sub_267EF2AF8();
    v15 = [v14 _lp_simplifiedDisplayString];

    sub_267EF9028();
    if (v2)
    {
      v16 = v0[4];
      OUTLINED_FUNCTION_52_7();
      v17 = sub_267EF79B8();
      OUTLINED_FUNCTION_36_10(v17);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[15] = v18;
      *v18 = v19;
      v18[1] = sub_267D02EA8;
      v20 = v0[9];
      v21 = v0[4];
      OUTLINED_FUNCTION_30_2();

      return sub_267CEA86C();
    }

    else
    {
      v23 = v0[3];
      OUTLINED_FUNCTION_52_7();
      v24 = sub_267EF79B8();
      OUTLINED_FUNCTION_36_10(v24);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[17] = v25;
      *v25 = v26;
      v25[1] = sub_267D031C8;
      v27 = v0[8];
      v28 = v0[3];
      OUTLINED_FUNCTION_30_2();

      return sub_267CEB630();
    }
  }
}

uint64_t sub_267D02BB8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D02EA8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v9 + 128) = v0;

  sub_267B9FF34(v6, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267D031C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *(v4 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v9 + 144) = v0;

  sub_267B9FF34(v6, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267D034F0()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 96);

  v2 = *(v0 + 112);
  OUTLINED_FUNCTION_13_22();

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267D03598()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 96);

  v2 = *(v0 + 128);
  OUTLINED_FUNCTION_13_22();

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267D03640()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 96);

  v2 = *(v0 + 144);
  OUTLINED_FUNCTION_13_22();

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267D036E8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(sub_267EF7B88() - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = sub_267EF4228();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D03818, 0, 0);
}

uint64_t sub_267D03818()
{
  OUTLINED_FUNCTION_62();
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  type metadata accessor for SearchForMessagesCATs();
  sub_267EF7B68();
  v0[10] = sub_267EF78E8();
  v5 = sub_267EF74B8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_267EF74A8();
  sub_267EF90F8();
  v8 = sub_267EF79B8();
  OUTLINED_FUNCTION_36_10(v8);
  sub_267EF7498();

  sub_267B9FF34(v2, &unk_28022AE30, &qword_267EFC0B0);
  v0[11] = sub_267EF7478();

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[12] = v9;
  *v9 = v10;
  v9[1] = sub_267D0398C;
  v11 = v0[8];
  OUTLINED_FUNCTION_30_2();

  return sub_267CEAA2C(v12, v13);
}

uint64_t sub_267D0398C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *(v4 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v9 + 104) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_267D03AA4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = OUTLINED_FUNCTION_24_9();
  v4(v3);
  v5 = sub_267EF4208();
  OUTLINED_FUNCTION_51_8(v5);
  if (v6)
  {
    v8 = *(v2 + 32);
    v7 = *(v2 + 40);

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v9 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);

    v10 = sub_267EF89F8();
    v11 = sub_267EF95D8();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[9];
    v14 = v0[10];
    v16 = v0[6];
    v15 = v0[7];
    if (v12)
    {
      OUTLINED_FUNCTION_48();
      v46 = OUTLINED_FUNCTION_53_8();
      *(v8 + 4) = OUTLINED_FUNCTION_67_4(4.8149e-34, v46);
      OUTLINED_FUNCTION_66_7(&dword_267B93000, v17, v18, "#MessageReadingDataDetector Test: %s");
      __swift_destroy_boxed_opaque_existential_0(v46);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();

      (*(v15 + 8))(v45, v16);
    }

    else
    {
      v38 = v0[10];

      (*(v15 + 8))(v13, v16);
    }

    v40 = v0[8];
    v39 = v0[9];
    v42 = v0[4];
    v41 = v0[5];

    OUTLINED_FUNCTION_23_12();
    OUTLINED_FUNCTION_64_3();

    __asm { BRAA            X3, X16 }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v19 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v19, qword_280240FB0);
  v20 = sub_267EF89F8();
  v21 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_10_2(v21))
  {
    v22 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v22);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v23, v24, v25, v26, v27, 2u);
    OUTLINED_FUNCTION_26();
  }

  v29 = v0[9];
  v28 = v0[10];
  v30 = v0[6];
  v31 = v0[7];

  sub_267D044B0();
  v32 = OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_31_12(v32, v33);

  v34 = OUTLINED_FUNCTION_19_13();
  v35(v34);
  OUTLINED_FUNCTION_71_4();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267D03D70()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 80);

  v2 = *(v0 + 104);
  OUTLINED_FUNCTION_71_4();

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267D03DF0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(sub_267EF7B88() - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = sub_267EF4228();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D03F20, 0, 0);
}

uint64_t sub_267D03F20()
{
  OUTLINED_FUNCTION_62();
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  type metadata accessor for SearchForMessagesCATs();
  sub_267EF7B68();
  v0[10] = sub_267EF78E8();
  sub_267EF90F8();
  v5 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[11] = v6;
  *v6 = v7;
  v6[1] = sub_267D0403C;
  v8 = v0[8];
  v9 = v0[4];
  OUTLINED_FUNCTION_30_2();

  return sub_267CE9810();
}

uint64_t sub_267D0403C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *(v4 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v9 + 96) = v0;

  sub_267B9FF34(v6, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_267D04164()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = OUTLINED_FUNCTION_24_9();
  v4(v3);
  v5 = sub_267EF4208();
  OUTLINED_FUNCTION_51_8(v5);
  if (v6)
  {
    v8 = *(v2 + 32);
    v7 = *(v2 + 40);

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v9 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);

    v10 = sub_267EF89F8();
    v11 = sub_267EF95D8();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[9];
    v14 = v0[10];
    v16 = v0[6];
    v15 = v0[7];
    if (v12)
    {
      OUTLINED_FUNCTION_48();
      v46 = OUTLINED_FUNCTION_53_8();
      *(v8 + 4) = OUTLINED_FUNCTION_67_4(4.8149e-34, v46);
      OUTLINED_FUNCTION_66_7(&dword_267B93000, v17, v18, "#MessageReadingDataDetector Test: %s");
      __swift_destroy_boxed_opaque_existential_0(v46);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();

      (*(v15 + 8))(v45, v16);
    }

    else
    {
      v38 = v0[10];

      (*(v15 + 8))(v13, v16);
    }

    v40 = v0[8];
    v39 = v0[9];
    v42 = v0[4];
    v41 = v0[5];

    OUTLINED_FUNCTION_23_12();
    OUTLINED_FUNCTION_64_3();

    __asm { BRAA            X3, X16 }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v19 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v19, qword_280240FB0);
  v20 = sub_267EF89F8();
  v21 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_10_2(v21))
  {
    v22 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v22);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v23, v24, v25, v26, v27, 2u);
    OUTLINED_FUNCTION_26();
  }

  v29 = v0[9];
  v28 = v0[10];
  v30 = v0[6];
  v31 = v0[7];

  sub_267D044B0();
  v32 = OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_31_12(v32, v33);

  v34 = OUTLINED_FUNCTION_19_13();
  v35(v34);
  OUTLINED_FUNCTION_71_4();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267D04430()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 80);

  v2 = *(v0 + 96);
  OUTLINED_FUNCTION_71_4();

  OUTLINED_FUNCTION_17();

  return v3();
}

unint64_t sub_267D044B0()
{
  result = qword_28022AC98;
  if (!qword_28022AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AC98);
  }

  return result;
}

uint64_t sub_267D04504(void *a1)
{
  v1 = [a1 phoneNumber];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

unint64_t sub_267D04568()
{
  result = qword_28022ACA0;
  if (!qword_28022ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022ACA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataDetectorError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267D0469C()
{
  result = qword_28022ACA8;
  if (!qword_28022ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022ACA8);
  }

  return result;
}

uint64_t sub_267D046F0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267EF2E98();
  v74 = *(v6 - 8);
  v7 = *(v74 + 64);
  MEMORY[0x28223BE20](v6);
  v70 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_267EF2778();
  v71 = *(v9 - 8);
  v72 = v9;
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v9);
  v69 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_267EF2CC8();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v67 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v65 - v17;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v19 = sub_267EF8A08();
  v20 = __swift_project_value_buffer(v19, qword_280240FB0);
  v21 = v13[2];
  v73 = a3;
  v21(v18, a3, v12);
  v75 = v20;
  v22 = sub_267EF89F8();
  v23 = sub_267EF95D8();
  v24 = os_log_type_enabled(v22, v23);
  v68 = v13;
  if (v24)
  {
    v65 = v6;
    v25 = a2;
    v26 = 0x6C6F72746E6F63;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v76 = v28;
    *v27 = 136315650;
    v29 = a1;
    v30 = 0xE700000000000000;
    v66 = v29;
    v31 = v28;
    switch(v29)
    {
      case 1:
        v32 = 1701998445;
        goto LABEL_10;
      case 2:
        v26 = 0xD000000000000011;
        v30 = 0x8000000267F0F8F0;
        break;
      case 3:
        v32 = 1936942444;
LABEL_10:
        v26 = v32 | 0x746E694800000000;
        v30 = 0xE900000000000073;
        break;
      default:
        break;
    }

    v34 = sub_267BA33E8(v26, v30, &v76);

    *(v27 + 4) = v34;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v25;
    *(v27 + 22) = 2080;
    sub_267D0B70C(&qword_28022BDE0, 255, MEMORY[0x277CC9578]);
    v35 = sub_267EF9E58();
    a1 = v36;
    v33 = v13[1];
    v33(v18, v12);
    v37 = sub_267BA33E8(v35, a1, &v76);

    *(v27 + 24) = v37;
    _os_log_impl(&dword_267B93000, v22, v23, "#AnnounceHintExperimentController getExperimentHint hintPolicy %s, shortMessageHintUsageCount %ld, shortMessageHintLastUsageDate %s", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D60A7B0](v31, -1, -1);
    v38 = v27;
    a2 = v25;
    MEMORY[0x26D60A7B0](v38, -1, -1);

    v6 = v65;
    LOBYTE(a1) = v66;
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v33 = v13[1];
  v33(v18, v12);
  if (a2)
  {
LABEL_15:
    v40 = v70;
    sub_267EF2E78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294F8, &qword_267F038D0);
    v41 = sub_267EF2E88();
    v42 = *(v41 - 8);
    v43 = *(v42 + 72);
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_267EFC020;
    (*(v42 + 104))(v45 + v44, *MEMORY[0x277CC9968], v41);
    sub_267E6EAA0();
    v46 = v67;
    sub_267EF2CB8();
    v47 = v69;
    sub_267EF2E48();

    v33(v46, v12);
    (*(v74 + 8))(v40, v6);
    v48 = sub_267EF2758();
    LOBYTE(v46) = v49;
    (*(v71 + 8))(v47, v72);
    v50 = sub_267EF89F8();
    v51 = sub_267EF95D8();
    v52 = os_log_type_enabled(v50, v51);
    if (v46)
    {
      if (v52)
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_267B93000, v50, v51, "#AnnounceHintExperimentController Unable to get daysSinceLastHint", v53, 2u);
        MEMORY[0x26D60A7B0](v53, -1, -1);
      }

      return 7;
    }

    if (v52)
    {
      v54 = swift_slowAlloc();
      *v54 = 134217984;
      *(v54 + 4) = v48;
      _os_log_impl(&dword_267B93000, v50, v51, "#AnnounceHintExperimentController daysSinceLastHint: %ld", v54, 0xCu);
      MEMORY[0x26D60A7B0](v54, -1, -1);
    }

    switch(a1)
    {
      case 1:
        switch(a2)
        {
          case 1:
            if (v48 >= 1)
            {
              return 6;
            }

            break;
          case 2:
            if (v48 >= 3)
            {
              return 5;
            }

            break;
          case 3:
            if (v48 >= 8)
            {
              return 6;
            }

            break;
          case 4:
            if (v48 >= 11)
            {
              return 5;
            }

            break;
          case 5:
            if (v48 >= 18)
            {
              return 6;
            }

            break;
          case 6:
            if (v48 >= 25)
            {
              return 5;
            }

            break;
          case 7:
            if (v48 > 31)
            {
              return 6;
            }

            break;
          default:
            break;
        }

        v55 = sub_267EF89F8();
        v60 = sub_267EF95D8();
        if (!os_log_type_enabled(v55, v60))
        {
          goto LABEL_61;
        }

        v57 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v76 = v61;
        *v57 = 136315138;
        v62 = 1701998445;
        goto LABEL_58;
      case 2:
        if (a2 == 1)
        {
          if (v48 >= 7)
          {
            return 6;
          }
        }

        else if (a2 == 2)
        {
          if (v48 >= 14)
          {
            return 5;
          }
        }

        else if (a2 == 3 && v48 > 34)
        {
          return 6;
        }

        v55 = sub_267EF89F8();
        v60 = sub_267EF95D8();
        if (os_log_type_enabled(v55, v60))
        {
          v57 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v76 = v61;
          *v57 = 136315138;
          v63 = 0x8000000267F0F8F0;
          v64 = 0xD000000000000011;
LABEL_59:
          *(v57 + 4) = sub_267BA33E8(v64, v63, &v76);
          _os_log_impl(&dword_267B93000, v55, v60, "#AnnounceHintExperimentController No hint for user with hintPolicy '%s'", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v61);
          MEMORY[0x26D60A7B0](v61, -1, -1);
LABEL_60:
          MEMORY[0x26D60A7B0](v57, -1, -1);
        }

LABEL_61:

        return 7;
      case 3:
        if (a2 == 1 && v48 >= 1)
        {
          return 6;
        }

        v55 = sub_267EF89F8();
        v60 = sub_267EF95D8();
        if (!os_log_type_enabled(v55, v60))
        {
          goto LABEL_61;
        }

        v57 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v76 = v61;
        *v57 = 136315138;
        v62 = 1936942444;
LABEL_58:
        v64 = v62 | 0x746E694800000000;
        v63 = 0xE900000000000073;
        goto LABEL_59;
      default:
        v55 = sub_267EF89F8();
        v56 = sub_267EF95E8();
        if (!os_log_type_enabled(v55, v56))
        {
          goto LABEL_61;
        }

        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_267B93000, v55, v56, "#AnnounceHintExperimentController control policy should have already created hint", v57, 2u);
        goto LABEL_60;
    }
  }

LABEL_12:
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
      v39 = sub_267EF9EA8();

      if (v39)
      {
        goto LABEL_15;
      }

      result = 4;
      break;
    default:

      goto LABEL_15;
  }

  return result;
}

uint64_t sub_267D05134(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  *(v5 + 40) = a3;
  sub_267B9A5E8(a4, v5 + 64);
  v7 = *(a5 + 16);
  *(v5 + 104) = *a5;
  *(v5 + 120) = v7;
  *(v5 + 136) = *(a5 + 32);
  return v5;
}

uint64_t sub_267D05188(uint64_t a1)
{
  *(v2 + 752) = v1;
  *(v2 + 744) = a1;
  v3 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267D051B4()
{
  OUTLINED_FUNCTION_90();
  v1 = *(*(v0 + 752) + 56);
  OUTLINED_FUNCTION_83();
  sub_267C8F7C0(*(v1 + 24), v0 + 352);
  sub_267BC9B04(v0 + 352, v0 + 392, &qword_280229910, &unk_267EFEB70);
  if (*(v0 + 416))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 144);
      v3 = *(v0 + 160);
      v4 = *(v0 + 168);
      v5 = *(v0 + 176);
      v6 = *(v0 + 184);
      v7 = *(v0 + 208);
      v8 = *(v0 + 216);
      v9 = *(v0 + 224);
      v10 = *(v0 + 240);
LABEL_8:

      v18 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    sub_267B9FED8(v0 + 392, &qword_280229910, &unk_267EFEB70);
  }

  sub_267BC9B04(v0 + 352, v0 + 432, &qword_280229910, &unk_267EFEB70);
  if (*(v0 + 456))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 24);
      v12 = *(v0 + 40);
      v4 = *(v0 + 48);
      v13 = *(v0 + 56);
      v14 = *(v0 + 64);
      v15 = *(v0 + 88);
      v16 = *(v0 + 96);
      v9 = *(v0 + 104);
      v17 = *(v0 + 120);
      goto LABEL_8;
    }
  }

  else
  {
    sub_267B9FED8(v0 + 432, &qword_280229910, &unk_267EFEB70);
  }

  sub_267BC9B04(v0 + 352, v0 + 472, &qword_280229910, &unk_267EFEB70);
  v4 = *(v0 + 496);
  if (v4)
  {
    v19 = *(v0 + 752);
    v20 = *(v0 + 504);
    __swift_project_boxed_opaque_existential_0((v0 + 472), *(v0 + 496));
    v21 = *(v19 + 48);
    v22 = *(v20 + 64);
    v56 = v22 + *v22;
    v23 = v22[1];
    v24 = swift_task_alloc();
    *(v0 + 760) = v24;
    *v24 = v0;
    v24[1] = sub_267D05778;
    OUTLINED_FUNCTION_46_10();

    __asm { BRAA            X3, X16 }
  }

  sub_267B9FED8(v0 + 472, &qword_280229910, &unk_267EFEB70);
  v18 = 1;
LABEL_15:
  OUTLINED_FUNCTION_50_11();
  *(v0 + 130) = sub_267C5E360();
  sub_267B9EF14(v0 + 256);
  if (v18)
  {
    sub_267EF3D38();
    sub_267EF3D28();
    sub_267B9B050(v0 + 512, v0 + 552);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A470, &unk_267EFDC70);
    if (swift_dynamicCast())
    {
      v27 = *(v0 + 736);

      goto LABEL_27;
    }

    if (*(v0 + 130))
    {
LABEL_27:
      v49 = *(v0 + 744);
      sub_267B9A5E8((v0 + 512), v49);
      sub_267B9FED8(v0 + 352, &qword_280229910, &unk_267EFEB70);
      v50 = MEMORY[0x277D84F90];
      *(v49 + 40) = MEMORY[0x277D84F90];
      *(v49 + 48) = v50;
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_46_10();

      __asm { BRAA            X1, X16 }
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v35 = sub_267EF8A08();
    v36 = OUTLINED_FUNCTION_13_8(v35, qword_280240FB0);
    v37 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v37))
    {
      v38 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v38);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v39, v40, v41, v42, v43, 2u);
      OUTLINED_FUNCTION_26();
    }

    v44 = *(v0 + 752);

    sub_267B9B050(v44 + 64, v0 + 592);
    v45 = *(v0 + 624);
    __swift_project_boxed_opaque_existential_0((v0 + 592), *(v0 + 616));
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    result = sub_267BB41B0(ObjCClassFromMetadata);
    if (v48)
    {
      sub_267EF3B18();
      OUTLINED_FUNCTION_22_15();
      OUTLINED_FUNCTION_64_6();

      __swift_destroy_boxed_opaque_existential_0((v0 + 592));
      goto LABEL_27;
    }

    __break(1u);
  }

  else
  {
    sub_267BC9B04(v0 + 352, v0 + 632, &qword_280229910, &unk_267EFEB70);
    v28 = *(v0 + 656);
    if (v28)
    {
      v29 = *(v0 + 664);
      __swift_project_boxed_opaque_existential_0((v0 + 632), *(v0 + 656));
      v30 = *(v29 + 32);
      v31 = OUTLINED_FUNCTION_7_1();
      v28 = v32(v31);
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_0((v0 + 632));
    }

    else
    {
      sub_267B9FED8(v0 + 632, &qword_280229910, &unk_267EFEB70);
      v34 = 0xE000000000000000;
    }

    sub_267D0B0B4(v28, v34, v4);

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 784) = v53;
    *v53 = v54;
    OUTLINED_FUNCTION_24_10(v53);
    OUTLINED_FUNCTION_46_10();

    return sub_267D063B8();
  }

  return result;
}

uint64_t sub_267D05778(char a1)
{
  OUTLINED_FUNCTION_14();
  v5 = v4;
  v6 = *(v4 + 760);
  v7 = *v2;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v5 + 768) = v1;

  if (!v1)
  {
    *(v5 + 129) = a1 & 1;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D05894()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v1 + 129);
  __swift_destroy_boxed_opaque_existential_0((v1 + 472));
  OUTLINED_FUNCTION_50_11();
  *(v1 + 130) = sub_267C5E360();
  sub_267B9EF14(v1 + 256);
  sub_267BC9B04(v1 + 352, v1 + 632, &qword_280229910, &unk_267EFEB70);
  if (*(v1 + 656))
  {
    v3 = *(v1 + 664);
    __swift_project_boxed_opaque_existential_0((v1 + 632), *(v1 + 656));
    v4 = *(v3 + 32);
    v5 = OUTLINED_FUNCTION_7_1();
    v7 = v6(v5);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0((v1 + 632));
  }

  else
  {
    sub_267B9FED8(v1 + 632, &qword_280229910, &unk_267EFEB70);
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  sub_267D0B0B4(v7, v9, v0);

  if (v2)
  {
    v10 = *(v0 + 424);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 784) = v11;
  *v11 = v12;
  OUTLINED_FUNCTION_24_10(v11);
  OUTLINED_FUNCTION_30_2();

  return sub_267D063B8();
}

uint64_t sub_267D059E8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 784);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 792) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D05AE0()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 776);
  sub_267B9A5E8((v0 + 672), v0 + 512);
  *(v1 + 424) = 0;
  sub_267B9B050(v0 + 512, v0 + 552);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A470, &unk_267EFDC70);
  sub_267EF3D38();
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 736);
  }

  else if ((*(v0 + 130) & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v3 = sub_267EF8A08();
    v4 = OUTLINED_FUNCTION_13_8(v3, qword_280240FB0);
    v5 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v5))
    {
      v6 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v6);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_26();
    }

    v12 = *(v0 + 752);

    sub_267B9B050(v12 + 64, v0 + 592);
    v13 = *(v0 + 624);
    __swift_project_boxed_opaque_existential_0((v0 + 592), *(v0 + 616));
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    result = sub_267BB41B0(ObjCClassFromMetadata);
    if (!v16)
    {
      __break(1u);
      return result;
    }

    sub_267EF3B18();
    OUTLINED_FUNCTION_22_15();
    OUTLINED_FUNCTION_64_6();

    __swift_destroy_boxed_opaque_existential_0((v0 + 592));
  }

  v17 = *(v0 + 744);
  sub_267B9A5E8((v0 + 512), v17);
  sub_267B9FED8(v0 + 352, &qword_280229910, &unk_267EFEB70);
  v18 = MEMORY[0x277D84F90];
  *(v17 + 40) = MEMORY[0x277D84F90];
  *(v17 + 48) = v18;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_30_2();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_267D05CD4()
{
  OUTLINED_FUNCTION_12();
  sub_267B9FED8(v0 + 352, &qword_280229910, &unk_267EFEB70);
  __swift_destroy_boxed_opaque_existential_0((v0 + 472));
  v1 = *(v0 + 768);
  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D05D48()
{
  OUTLINED_FUNCTION_12();
  sub_267B9FED8(v0 + 352, &qword_280229910, &unk_267EFEB70);
  v1 = *(v0 + 792);
  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D05DB4()
{
  OUTLINED_FUNCTION_12();
  v1[11] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v2);
  v4 = *(v3 + 64);
  v1[12] = OUTLINED_FUNCTION_50();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v5 = sub_267EF2CC8();
  v1[15] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[16] = v6;
  v8 = *(v7 + 64);
  v1[17] = OUTLINED_FUNCTION_50();
  v1[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022ACD8, &qword_267F038D8);
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64);
  v1[19] = OUTLINED_FUNCTION_2();
  v12 = type metadata accessor for ConversationAnnounceState();
  v1[20] = v12;
  OUTLINED_FUNCTION_18(v12);
  v14 = *(v13 + 64);
  v1[21] = OUTLINED_FUNCTION_50();
  v1[22] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267D05F04()
{
  v1 = *(*(v0 + 88) + 48);
  v2 = *(v1 + 416);
  if (!v2 || (v3 = *(v2 + 112)) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = sub_267EF8A08();
    v11 = OUTLINED_FUNCTION_13_8(v10, qword_280240FB0);
    v12 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v12))
    {
      v13 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v13);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      OUTLINED_FUNCTION_26();
    }

    goto LABEL_20;
  }

  v4 = *(v2 + 104);
  v5 = *(v1 + 416);

  v6 = sub_267C1D4D4();
  if (!v6)
  {
    goto LABEL_18;
  }

  sub_267C8EC00(v4, v3, v6);

  if (*(v0 + 72) == 1)
  {
    v7 = &unk_280229278;
    v8 = &unk_267F038E0;
    v9 = v0 + 48;
LABEL_17:
    sub_267B9FED8(v9, v7, v8);
    goto LABEL_18;
  }

  v19 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v19;
  if (!*(v0 + 40))
  {
    v7 = &qword_28022AEF0;
    v8 = &qword_267EFCDE0;
    v9 = v0 + 16;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229298, &qword_267EFCDF0);
  if (swift_dynamicCast())
  {
    v20 = *(v0 + 152);
    sub_267C1D674(*(v0 + 80), v20);
    OUTLINED_FUNCTION_2_5(v20);
    if (v21)
    {
      v9 = *(v0 + 152);
      v7 = &unk_28022ACD8;
      v8 = &unk_267F038D8;
      goto LABEL_17;
    }

    v46 = *(v0 + 176);
    v47 = *(v0 + 160);
    v49 = *(v0 + 112);
    v48 = *(v0 + 120);
    sub_267D0B7C4(*(v0 + 152), v46);
    v50 = *(v47 + 24);
    sub_267BC9B04(v46 + v50, v49, &qword_28022BD90, &unk_267EFCDD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v48);
    v52 = *(v0 + 176);
    if (EnumTagSinglePayload != 1)
    {
      v71 = *(v0 + 176);
      v53 = *(v0 + 136);
      v55 = *(v0 + 120);
      v54 = *(v0 + 128);
      (*(v54 + 32))(*(v0 + 144), *(v0 + 112), v55);
      sub_267EF2CA8();
      sub_267EF2C88();
      v57 = v56;
      v69 = *(v54 + 8);
      v69(v53, v55);
      result = sub_267EF2C88();
      if (v57 - v58 <= 60.0)
      {
        v61 = *(v71 + 8);
        v62 = __OFADD__(v61, 1);
        v60 = v61 + 1;
        if (v62)
        {
          __break(1u);
          return result;
        }

        v59 = v50;
      }

      else
      {
        v59 = v50;
        v60 = 1;
      }

      v22 = *(v0 + 176);
      v68 = *(v0 + 144);
      v63 = *(v0 + 120);
      v64 = *(v0 + 104);
      *(v71 + 8) = v60;
      sub_267EF2CA8();
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v63);
      sub_267C1DAF4(v64, v46 + v59);
      sub_267C1DC24(v4, v3);

      v69(v68, v63);
      goto LABEL_19;
    }

    sub_267B9FED8(*(v0 + 112), &qword_28022BD90, &unk_267EFCDD0);
    sub_267C1DBC8(v52);
  }

LABEL_18:
  v23 = *(v0 + 160);
  v22 = *(v0 + 168);
  v24 = *(v0 + 120);
  v25 = *(v0 + 96);
  v26 = *(v0 + 104);
  sub_267EF2CA8();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v24);
  v70 = v4;
  v30 = v23[6];
  __swift_storeEnumTagSinglePayload(v22 + v30, 1, 1, v24);
  v31 = v3;
  v32 = v23[8];
  __swift_storeEnumTagSinglePayload(v22 + v32, 1, 1, v24);
  *v22 = 1;
  *(v22 + 8) = 1;
  sub_267D0B754(v26, v22 + v30);
  *(v22 + v23[7]) = 0;
  sub_267EF2CA8();
  sub_267B9FED8(v26, &qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v24);
  sub_267C1DAF4(v25, v22 + v32);
  sub_267C1DC24(v70, v31);

LABEL_19:
  sub_267C1DBC8(v22);
LABEL_20:
  v37 = *(v0 + 168);
  v36 = *(v0 + 176);
  v39 = *(v0 + 144);
  v38 = *(v0 + 152);
  v40 = *(v0 + 136);
  v42 = *(v0 + 104);
  v41 = *(v0 + 112);
  v43 = *(v0 + 96);

  OUTLINED_FUNCTION_1();

  return v44();
}

uint64_t sub_267D063B8()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 1224) = v0;
  *(v1 + 1401) = v2;
  *(v1 + 1400) = v3;
  *(v1 + 1216) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  *(v1 + 1232) = OUTLINED_FUNCTION_50();
  *(v1 + 1240) = swift_task_alloc();
  *(v1 + 1248) = swift_task_alloc();
  *(v1 + 1256) = swift_task_alloc();
  v8 = sub_267EF2CC8();
  *(v1 + 1264) = v8;
  OUTLINED_FUNCTION_30_0(v8);
  *(v1 + 1272) = v9;
  v11 = *(v10 + 64);
  *(v1 + 1280) = OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267D064B8()
{
  v142 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  v2 = __swift_project_value_buffer(v1, qword_280240FB0);
  *(v0 + 1288) = v2;
  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v5);
    OUTLINED_FUNCTION_6_24(&dword_267B93000, v6, v7, "#ReadSpokenHintAction makeHintDialog");
    OUTLINED_FUNCTION_29_1();
  }

  v8 = *(v0 + 1224);

  v9 = *(v8 + 48);
  *(v0 + 1296) = v9;
  if ((v9[14] - 3) <= 1)
  {
    v10 = sub_267EF89F8();
    v11 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v11))
    {
      v12 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v12);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      OUTLINED_FUNCTION_26();
    }

    v18 = *(v0 + 1216);

    sub_267EF3D38();
    sub_267EF3D28();
    goto LABEL_9;
  }

  v21 = *(v0 + 1264);
  v22 = *(v0 + 1256);
  v23 = 11;
  if (!*(v0 + 1401))
  {
    v23 = 0;
  }

  if (*(v0 + 1400))
  {
    v24 = 1;
  }

  else
  {
    v24 = v23;
  }

  sub_267BEB520((v9 + 19), v0 + 16);
  v140 = v24;
  v141 = 0;
  sub_267C5E960(v24, 0, 0);
  sub_267C5C400(&v140, v22);
  sub_267C5E97C(v140, *(&v140 + 1), v141);
  sub_267B9EF14(v0 + 16);
  if (__swift_getEnumTagSinglePayload(v22, 1, v21) == 1)
  {
    v25 = *(v0 + 1264);
    v26 = *(v0 + 1256);
    v27 = *(v0 + 1280);
    sub_267EF2CB8();
    OUTLINED_FUNCTION_2_5(v26);
    if (!v28)
    {
      sub_267B9FED8(*(v0 + 1256), &qword_28022BD90, &unk_267EFCDD0);
    }
  }

  else
  {
    (*(*(v0 + 1272) + 32))(*(v0 + 1280), *(v0 + 1256), *(v0 + 1264));
  }

  v29 = *(v0 + 1248);
  v30 = *(v0 + 1224);
  sub_267BEB520((v9 + 19), v0 + 112);
  v140 = v24;
  OUTLINED_FUNCTION_61_9();
  sub_267C5DD80(v31, v32, v33, v34, v35, v36, v37, v38, v134, v137, v140);
  v40 = v39;
  *(v0 + 1304) = v39;
  sub_267C5E97C(v140, *(&v140 + 1), v141);
  sub_267B9EF14(v0 + 112);
  sub_267BEB520((v9 + 19), v0 + 208);
  *(&v140 + 1) = 0;
  v141 = 4;
  sub_267C5DD80(&v140, v41, v42, v43, v44, v45, v46, v47, v135, v138, 1);
  v49 = v48;
  *(v0 + 1312) = v48;
  sub_267B9EF14(v0 + 208);
  sub_267BEB520((v9 + 19), v0 + 304);
  sub_267C5D908(v29);
  sub_267B9EF14(v0 + 304);

  v50 = sub_267EF89F8();
  v51 = sub_267EF95D8();
  v52 = os_log_type_enabled(v50, v51);
  v53 = *(v0 + 1224);
  if (v52)
  {
    v139 = v2;
    v54 = swift_slowAlloc();
    *v54 = 67109120;
    v136 = v49;
    v55 = v40;
    v57 = v9[5];
    v56 = v9[6];
    __swift_project_boxed_opaque_existential_0(v9 + 2, v57);
    (*(v56 + 8))(v57, v56);
    v58 = *(v0 + 1208);
    __swift_project_boxed_opaque_existential_0((v0 + 1176), *(v0 + 1200));
    v40 = v55;
    v49 = v136;
    v59 = sub_267EF3C48();
    __swift_destroy_boxed_opaque_existential_0((v0 + 1176));
    *(v54 + 4) = v59 & 1;

    _os_log_impl(&dword_267B93000, v50, v51, "#ReadSpokenHintAction: isCarplay : %{BOOL}d", v54, 8u);
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v60 = *(v0 + 1224);
  }

  if (*(v0 + 1400) == 1)
  {
    v61 = sub_267EF89F8();
    v62 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v62))
    {
      v63 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v63);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v64, v65, v66, v67, v68, 2u);
      OUTLINED_FUNCTION_26();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 1320) = v69;
    *v69 = v70;
    OUTLINED_FUNCTION_33_7(v69);
    OUTLINED_FUNCTION_15();

    return sub_267D07A20();
  }

  if (*(v0 + 1401) != 1)
  {
    v77 = v9[6];
    __swift_project_boxed_opaque_existential_0(v9 + 2, v9[5]);
    v78 = *(v77 + 8);
    v79 = OUTLINED_FUNCTION_7_1();
    v80(v79);
    v81 = *(v0 + 1008);
    __swift_project_boxed_opaque_existential_0((v0 + 976), *(v0 + 1000));
    OUTLINED_FUNCTION_7_1();
    v82 = sub_267EF3C48();
    __swift_destroy_boxed_opaque_existential_0((v0 + 976));
    if (v82)
    {
      v83 = sub_267EF89F8();
      v84 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_10_2(v84))
      {
        v85 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v85);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v86, v87, v88, v89, v90, 2u);
        OUTLINED_FUNCTION_26();
      }

      v91 = *(v0 + 1280);
      v92 = *(v0 + 1272);
      v93 = *(v0 + 1264);
      v94 = *(v0 + 1248);
      v95 = *(v0 + 1216);

      sub_267EF3D38();
      sub_267EF3D28();
      sub_267B9FED8(v94, &qword_28022BD90, &unk_267EFCDD0);
      v96 = *(v92 + 8);
      v97 = OUTLINED_FUNCTION_26_0();
      v98(v97);
LABEL_9:
      OUTLINED_FUNCTION_16_15();

      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_15();

      __asm { BRAA            X1, X16 }
    }

    if (!v40)
    {
      sub_267BC9B04((v9 + 43), v0 + 1096, &qword_280229128, &unk_267EFC860);
      v114 = *(v0 + 1120);
      if (v114)
      {
        v115 = *__swift_project_boxed_opaque_existential_0((v0 + 1096), v114);
        LODWORD(v115) = sub_267C3C6D0();
        __swift_destroy_boxed_opaque_existential_0((v0 + 1096));
        if (v115 != 4)
        {
          sub_267BEB520((v9 + 19), v0 + 880);
          v140 = xmmword_267EFE700;
          OUTLINED_FUNCTION_61_9();
          sub_267C5E230(v116, v117, v118, v119, v120, v121, v122, v123, v136, v139, v140);
          v125 = v124;
          sub_267B9EF14(v0 + 880);
          if (v125)
          {
            v126 = sub_267EF89F8();
            v127 = sub_267EF95D8();
            if (OUTLINED_FUNCTION_10_2(v127))
            {
              v128 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_4_2(v128);
              _os_log_impl(&dword_267B93000, v126, v9, "#ReadSpokenHintAction Message is short and user is eligible for experimental hint experience", v81, 2u);
              OUTLINED_FUNCTION_29_1();
            }

            swift_task_alloc();
            OUTLINED_FUNCTION_25();
            *(v0 + 1352) = v129;
            *v129 = v130;
            v129[1] = sub_267D06FF4;
            v131 = *(v0 + 1224);
            v132 = *(v0 + 1216);
            OUTLINED_FUNCTION_15();

            return sub_267D0857C();
          }
        }
      }

      else
      {
        sub_267B9FED8(v0 + 1096, &qword_280229128, &unk_267EFC860);
      }
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 1368) = v110;
    *v110 = v111;
    v110[1] = sub_267D070EC;
    v112 = *(v0 + 1224);
    OUTLINED_FUNCTION_15();

    return sub_267D0997C();
  }

  *(v0 + 1160) = &type metadata for Features;
  *(v0 + 1168) = sub_267BAFCAC();
  *(v0 + 1136) = 14;
  v73 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0((v0 + 1136));
  if (v73)
  {
    OUTLINED_FUNCTION_45_12();
    OUTLINED_FUNCTION_66_8();
    sub_267B9FED8(v49, &qword_28022BD90, &unk_267EFCDD0);
    isa = v50[1].isa;
    v75 = OUTLINED_FUNCTION_26_0();
    v76(v75);
    goto LABEL_9;
  }

  v99 = sub_267EF89F8();
  v100 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v100))
  {
    v101 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v101);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v102, v103, v104, v105, v106, 2u);
    OUTLINED_FUNCTION_26();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 1336) = v107;
  *v107 = v108;
  OUTLINED_FUNCTION_33_7(v107);
  OUTLINED_FUNCTION_15();

  return sub_267D07F7C();
}

uint64_t sub_267D06D5C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 1320);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 1328) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D06E54()
{
  v0 = OUTLINED_FUNCTION_8_25();
  sub_267B9FED8(v0, &qword_28022BD90, &unk_267EFCDD0);
  v1 = OUTLINED_FUNCTION_21_11();
  v2(v1);
  OUTLINED_FUNCTION_16_15();

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_267D06EFC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 1336);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 1344) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D06FF4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 1352);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 1360) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D070EC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 1368);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 1376) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D071E4()
{
  OUTLINED_FUNCTION_90();
  if (*(v0 + 1080))
  {
    v3 = *(v0 + 1280);
    v4 = *(v0 + 1272);
    v5 = *(v0 + 1264);
    v6 = *(v0 + 1216);
    sub_267B9FED8(*(v0 + 1248), &qword_28022BD90, &unk_267EFCDD0);
    (*(v4 + 8))(v3, v5);
    sub_267B9A5E8((v0 + 1056), v0 + 1016);
    sub_267B9A5E8((v0 + 1016), v6);
LABEL_10:
    OUTLINED_FUNCTION_16_15();

    OUTLINED_FUNCTION_1();

    return v64();
  }

  v7 = *(v0 + 1296);
  sub_267B9FED8(v0 + 1056, &qword_28022ACD0, &unk_267F038C0);
  sub_267BEB520(v7 + 152, v0 + 400);
  OUTLINED_FUNCTION_18_16();
  sub_267C5E230(v8, v9, v10, v11, v12, v13, v14, v15, v65, v68, v71);
  LOBYTE(v7) = v16;
  sub_267B9EF14(v0 + 400);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_12();
    OUTLINED_FUNCTION_66_8();
    sub_267B9FED8(v1, &qword_28022BD90, &unk_267EFCDD0);
    v61 = *(v2 + 8);
    v62 = OUTLINED_FUNCTION_26_0();
    v63(v62);
    goto LABEL_10;
  }

  v17 = *(v0 + 1296);
  v18 = *(v0 + 1288);
  v19 = *(v0 + 1240);
  v20 = *(v0 + 1232);
  sub_267BEB520(v17 + 152, v0 + 496);
  OUTLINED_FUNCTION_18_16();
  sub_267C5C400(v21, v19);
  sub_267B9EF14(v0 + 496);
  sub_267BEB520(v17 + 152, v0 + 592);
  OUTLINED_FUNCTION_7_24();
  sub_267C5C400(v22, v20);
  sub_267B9EF14(v0 + 592);
  v23 = sub_267BEB520(v17 + 152, v0 + 688);
  OUTLINED_FUNCTION_3_31(v23, v24, v25, v26, v27, v28, v29, v30, 2, 0, xmmword_267EFDDC0);
  sub_267C5E0EC(v31, v32, v33, v34, v35, v36, v37, v38, v66, v69, v72);
  sub_267B9EF14(v0 + 688);
  sub_267BEB520(v17 + 152, v0 + 784);
  OUTLINED_FUNCTION_7_24();
  sub_267C5E0EC(v39, v40, v41, v42, v43, v44, v45, v46, v67, v70, v73);
  sub_267B9EF14(v0 + 784);
  v47 = sub_267EF89F8();
  v48 = sub_267EF95D8();
  if (os_log_type_enabled(v47, v48))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_6_22(&dword_267B93000, v49, v50, "#ReadSpokenHintAction Message is short, checking if user will receive a short hint");
    OUTLINED_FUNCTION_32_0();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 1384) = v51;
  *v51 = v52;
  v51[1] = sub_267D074E4;
  v53 = *(v0 + 1312);
  v54 = *(v0 + 1304);
  v55 = *(v0 + 1248);
  v56 = *(v0 + 1240);
  v57 = *(v0 + 1232);
  v58 = *(v0 + 1224);
  v59 = *(v0 + 1216);

  return sub_267D093B4();
}

uint64_t sub_267D074E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 1384);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 1392) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D075DC()
{
  OUTLINED_FUNCTION_29();
  v4 = OUTLINED_FUNCTION_43_14();
  OUTLINED_FUNCTION_51_9(v4);
  v5 = OUTLINED_FUNCTION_44_0();
  sub_267B9FED8(v5, v6, &unk_267EFCDD0);
  OUTLINED_FUNCTION_51_9(v2);
  (*(v3 + 8))(v1, v0);
  OUTLINED_FUNCTION_16_15();

  OUTLINED_FUNCTION_1();

  return v7();
}

uint64_t sub_267D076AC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = OUTLINED_FUNCTION_8_25();
  sub_267B9FED8(v1, &qword_28022BD90, &unk_267EFCDD0);
  v2 = OUTLINED_FUNCTION_21_11();
  v3(v2);
  v4 = *(v0 + 1328);
  OUTLINED_FUNCTION_9_26();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267D07754()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = OUTLINED_FUNCTION_8_25();
  sub_267B9FED8(v1, &qword_28022BD90, &unk_267EFCDD0);
  v2 = OUTLINED_FUNCTION_21_11();
  v3(v2);
  v4 = *(v0 + 1344);
  OUTLINED_FUNCTION_9_26();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267D077FC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = OUTLINED_FUNCTION_8_25();
  sub_267B9FED8(v1, &qword_28022BD90, &unk_267EFCDD0);
  v2 = OUTLINED_FUNCTION_21_11();
  v3(v2);
  v4 = *(v0 + 1360);
  OUTLINED_FUNCTION_9_26();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267D078A4()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = OUTLINED_FUNCTION_8_25();
  sub_267B9FED8(v1, &qword_28022BD90, &unk_267EFCDD0);
  v2 = OUTLINED_FUNCTION_21_11();
  v3(v2);
  v4 = *(v0 + 1376);
  OUTLINED_FUNCTION_9_26();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267D0794C()
{
  OUTLINED_FUNCTION_29();
  v5 = OUTLINED_FUNCTION_43_14();
  OUTLINED_FUNCTION_51_9(v5);
  v6 = OUTLINED_FUNCTION_44_0();
  sub_267B9FED8(v6, v7, &unk_267EFCDD0);
  OUTLINED_FUNCTION_51_9(v2);
  (*(v4 + 8))(v1, v0);
  v8 = *(v3 + 1392);
  OUTLINED_FUNCTION_9_26();

  OUTLINED_FUNCTION_17();

  return v9();
}

uint64_t sub_267D07A20()
{
  OUTLINED_FUNCTION_12();
  v1[30] = v2;
  v1[31] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v1[26] = v5;
  v1[27] = v6;
  v7 = sub_267EF2CC8();
  v1[32] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[33] = v8;
  v10 = *(v9 + 64);
  v1[34] = OUTLINED_FUNCTION_2();
  v11 = sub_267EF4228();
  v1[35] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v1[36] = v12;
  v14 = *(v13 + 64);
  v1[37] = OUTLINED_FUNCTION_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v15);
  v17 = *(v16 + 64);
  v1[38] = OUTLINED_FUNCTION_2();
  v18 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_267D07B44()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0[31] + 48);
  v0[39] = v1;
  sub_267BEB520(v1 + 152, (v0 + 2));
  OUTLINED_FUNCTION_30_14();
  v10 = OUTLINED_FUNCTION_53_9(v2, v3, v4, v5, v6, v7, v8, v9, v42);
  sub_267C5E230(v10, v11, v12, v13, v14, v15, v16, v17, v43, v44, v45);
  v19 = v18;
  sub_267B9EF14((v0 + 2));
  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!v0[27])
  {
    goto LABEL_19;
  }

  v20 = v0[38];
  v21 = v0[32];
  (*(v0[33] + 16))(v20, v0[28], v21);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  v25 = sub_267C483F0(v20);
  v27 = v26;
  sub_267B9FED8(v20, &qword_28022BD90, &unk_267EFCDD0);
  if (v27)
  {
    goto LABEL_16;
  }

  v28 = sub_267C483F0(v0[29]);
  if (v29)
  {
    goto LABEL_16;
  }

  v30 = v0[30] < 3 || v28 < 7;
  v31 = !v30 && v0[27] <= 1;
  if (!v31 || v25 < 14)
  {
LABEL_16:
    v33 = v0[26];
    sub_267EF3D38();
    OUTLINED_FUNCTION_66_8();
    v35 = v0[37];
    v34 = v0[38];
    v36 = v0[34];

    OUTLINED_FUNCTION_1();

    return v37();
  }

  else
  {
LABEL_19:
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[40] = v39;
    *v39 = v40;
    v39[1] = sub_267D07D18;
    v41 = v0[37];

    return sub_267E77E48();
  }
}

uint64_t sub_267D07D18()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 320);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 328) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D07E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v26 = v22[36];
  v25 = v22[37];
  v28 = v22[34];
  v27 = v22[35];
  v29 = v22[32];
  v30 = v22[33];
  v31 = v22[31];
  v32 = v22[26];
  sub_267BEB520(v22[39] + 152, (v22 + 14));
  OUTLINED_FUNCTION_30_14();
  sub_267EF2CB8();
  sub_267C5BD60(&a9, v28);
  v33 = *(v30 + 8);
  v34 = OUTLINED_FUNCTION_44_0();
  v35(v34);
  sub_267B9EF14((v22 + 14));
  sub_267D0ABEC(v25, v32);
  v36 = *(v26 + 8);
  v37 = OUTLINED_FUNCTION_26_0();
  v38(v37);
  v40 = v22[37];
  v39 = v22[38];
  v41 = v22[34];

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64_3();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267D07F0C()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[34];

  OUTLINED_FUNCTION_17();
  v5 = v0[41];

  return v4();
}

uint64_t sub_267D07F7C()
{
  OUTLINED_FUNCTION_12();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v1[14] = v5;
  v1[15] = v6;
  v7 = sub_267EF2CC8();
  v1[20] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[21] = v8;
  v10 = *(v9 + 64);
  v1[22] = OUTLINED_FUNCTION_2();
  v11 = sub_267EF4228();
  v1[23] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v1[24] = v12;
  v14 = *(v13 + 64);
  v1[25] = OUTLINED_FUNCTION_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v15);
  v17 = *(v16 + 64);
  v1[26] = OUTLINED_FUNCTION_2();
  v18 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_267D080A0()
{
  v1 = v0[20];
  v2 = v0[15];
  OUTLINED_FUNCTION_2_5(v0[17]);
  v3 = v3 || v2 == 0;
  if (v3)
  {
    goto LABEL_25;
  }

  v4 = v0[26];
  (*(v0[21] + 16))(v4, v0[16], v1);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  v8 = sub_267C483F0(v4);
  v10 = v9;
  sub_267B9FED8(v4, &qword_28022BD90, &unk_267EFCDD0);
  if (v10)
  {
    goto LABEL_18;
  }

  v11 = sub_267C483F0(v0[17]);
  if (v12)
  {
    goto LABEL_18;
  }

  v13 = v0[18] >= 3 && v0[15] <= 1;
  v14 = !v13 || v11 < 7;
  if (v14 || v8 < 14)
  {
LABEL_18:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v16 = sub_267EF8A08();
    v17 = OUTLINED_FUNCTION_13_8(v16, qword_280240FB0);
    v18 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v18))
    {
      v19 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v19);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_26();
    }

    v25 = v0[14];

    sub_267EF3D38();
    sub_267EF3D28();
    v27 = v0[25];
    v26 = v0[26];
    v28 = v0[22];

    OUTLINED_FUNCTION_1();

    return v29();
  }

  else
  {
LABEL_25:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v31 = sub_267EF8A08();
    v32 = OUTLINED_FUNCTION_13_8(v31, qword_280240FB0);
    v33 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v33))
    {
      v34 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v34);
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v35, v36, "#ReadSpokenHintAction reading multilingual hint");
      OUTLINED_FUNCTION_29_1();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[27] = v37;
    *v37 = v38;
    v37[1] = sub_267D0831C;
    v39 = v0[25];

    return sub_267E784C8();
  }
}

uint64_t sub_267D0831C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D0850C()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[22];

  OUTLINED_FUNCTION_17();
  v5 = v0[28];

  return v4();
}

uint64_t sub_267D0857C()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 1640) = v0;
  *(v1 + 1760) = v2;
  *(v1 + 1632) = v3;
  v4 = sub_267EF4228();
  *(v1 + 1648) = v4;
  OUTLINED_FUNCTION_30_0(v4);
  *(v1 + 1656) = v5;
  v7 = *(v6 + 64);
  *(v1 + 1664) = OUTLINED_FUNCTION_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  *(v1 + 1672) = OUTLINED_FUNCTION_50();
  *(v1 + 1680) = swift_task_alloc();
  *(v1 + 1688) = swift_task_alloc();
  *(v1 + 1696) = swift_task_alloc();
  v11 = sub_267EF2CC8();
  *(v1 + 1704) = v11;
  OUTLINED_FUNCTION_30_0(v11);
  *(v1 + 1712) = v12;
  v14 = *(v13 + 64);
  *(v1 + 1720) = OUTLINED_FUNCTION_50();
  *(v1 + 1728) = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267D086D0()
{
  v172 = v0;
  v1 = *(v0 + 1704);
  v2 = *(v0 + 1696);
  v3 = *(*(v0 + 1640) + 48);
  *(v0 + 1736) = v3;
  sub_267BEB520(v3 + 152, v0 + 16);
  v170 = xmmword_267EFE700;
  OUTLINED_FUNCTION_18_16();
  sub_267C5C400(v4, v2);
  sub_267B9EF14(v0 + 16);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 1704);
    v6 = *(v0 + 1696);
    v7 = *(v0 + 1728);
    sub_267EF2CB8();
    OUTLINED_FUNCTION_2_5(v6);
    if (!v8)
    {
      sub_267B9FED8(*(v0 + 1696), &qword_28022BD90, &unk_267EFCDD0);
    }
  }

  else
  {
    (*(*(v0 + 1712) + 32))(*(v0 + 1728), *(v0 + 1696), *(v0 + 1704));
  }

  v9 = sub_267BEB520(v3 + 152, v0 + 112);
  OUTLINED_FUNCTION_3_31(v9, v10, v11, v12, v13, v14, v15, v16, v148, v156, xmmword_267EFE700);
  sub_267C5DD80(v17, v18, v19, v20, v21, v22, v23, v24, v149, v157, v164);
  v26 = v25;
  sub_267B9EF14(v0 + 112);
  if (!v26)
  {
    sub_267BC9B04(v3 + 344, v0 + 1592, &qword_280229128, &unk_267EFC860);
    v27 = *(v0 + 1616);
    if (v27)
    {
      v28 = *__swift_project_boxed_opaque_existential_0((v0 + 1592), v27);
      sub_267C3CBF8();
      __swift_destroy_boxed_opaque_existential_0((v0 + 1592));
    }

    else
    {
      sub_267B9FED8(v0 + 1592, &qword_280229128, &unk_267EFC860);
    }

    v29 = *(v0 + 1760);
    v30 = sub_267BEB520(v3 + 152, v0 + 1360);
    OUTLINED_FUNCTION_3_31(v30, v31, v32, v33, v34, v35, v36, v37, v150, v158, v164);
    sub_267C5CF7C(v38, v29);
    sub_267B9EF14(v0 + 1360);
    sub_267BEB520(v3 + 152, v0 + 1456);
    v170 = 0uLL;
    OUTLINED_FUNCTION_18_16();
    ConversationEventStore.setDisabled(event:)();
    sub_267B9EF14(v0 + 1456);
    OUTLINED_FUNCTION_44_1();
    if (!v8)
    {
      OUTLINED_FUNCTION_0();
    }

    v39 = sub_267EF8A08();
    v40 = OUTLINED_FUNCTION_13_8(v39, qword_280240FB0);
    v41 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v41))
    {
      v42 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v42);
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v43, v44, "#ReadSpokenHintAction user has not received any short message hints, enroll in experiment");
      OUTLINED_FUNCTION_29_1();
    }
  }

  v45 = sub_267BEB520(v3 + 152, v0 + 208);
  OUTLINED_FUNCTION_3_31(v45, v46, v47, v48, v49, v50, v51, v52, v150, v158, v164);
  sub_267C5D410(v53);
  LODWORD(v55) = v54;
  sub_267B9EF14(v0 + 208);
  if (v55 == 4 || (v56 = *(v0 + 1760), (sub_267C285DC() & 1) == 0))
  {
    v75 = sub_267BEB520(v3 + 152, v0 + 304);
    OUTLINED_FUNCTION_3_31(v75, v76, v77, v78, v79, v80, v81, v82, v151, v159, v165);
    ConversationEventStore.setDisabled(event:)();
    sub_267B9EF14(v0 + 304);
    OUTLINED_FUNCTION_44_1();
    if (!v8)
    {
      OUTLINED_FUNCTION_0();
    }

    v83 = sub_267EF8A08();
    v84 = OUTLINED_FUNCTION_13_8(v83, qword_280240FB0);
    v85 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v85))
    {
      v86 = OUTLINED_FUNCTION_32();
      *v86 = 0;
      v87 = "#ReadSpokenHintAction There is a discrepancy between the user's initial experiment group enrollment and the value being queried from Trial. Disabling future experimental short message hints.";
LABEL_23:
      _os_log_impl(&dword_267B93000, v84, v55, v87, v86, 2u);
      OUTLINED_FUNCTION_32_0();
    }
  }

  else
  {
    v57 = sub_267BEB520(v3 + 152, v0 + 400);
    OUTLINED_FUNCTION_3_31(v57, v58, v59, v60, v61, v62, v63, v64, v151, v159, v165);
    sub_267C5E230(v65, v66, v67, v68, v69, v70, v71, v72, v152, v160, v166);
    v74 = v73;
    sub_267B9EF14(v0 + 400);
    if (v74)
    {
      switch(*(v0 + 1760))
      {
        case 1:
        case 2:
          goto LABEL_32;
        case 3:
          OUTLINED_FUNCTION_59_10();
LABEL_32:
          OUTLINED_FUNCTION_57_8();
          LOBYTE(v55) = sub_267EF9EA8();

          if (v55)
          {
            goto LABEL_33;
          }

          sub_267BC9B04(v3 + 344, v0 + 1552, &qword_280229128, &unk_267EFC860);
          if (*(v0 + 1576))
          {
            v139 = sub_267D046F0(*(v0 + 1760), v26, *(v0 + 1728));
            v141 = &qword_280229128;
            v142 = &unk_267EFC860;
            v140 = v0 + 1552;
LABEL_36:
            sub_267B9FED8(v140, v141, v142);
            *(v0 + 1761) = v139;
            if (v139 != 7)
            {
              swift_task_alloc();
              OUTLINED_FUNCTION_25();
              *(v0 + 1744) = v143;
              *v143 = v144;
              v143[1] = sub_267D08E48;
              v145 = *(v0 + 1664);

              return sub_267E78E28();
            }
          }

          else
          {
            sub_267B9FED8(v0 + 1552, &qword_280229128, &unk_267EFC860);
          }

          OUTLINED_FUNCTION_44_1();
          if (!v8)
          {
            OUTLINED_FUNCTION_0();
          }

          v146 = sub_267EF8A08();
          v84 = OUTLINED_FUNCTION_13_8(v146, qword_280240FB0);
          v147 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v147))
          {
            v86 = OUTLINED_FUNCTION_32();
            *v86 = 0;
            v87 = "ReadSpokenHintAction failed to find short message hint type";
            goto LABEL_23;
          }

          break;
        default:

LABEL_33:
          v55 = *(v0 + 1688);
          v98 = *(v0 + 1680);
          v99 = *(v0 + 1672);
          sub_267BEB520(v3 + 152, v0 + 784);
          v170 = xmmword_267EFE6F0;
          v171 = 4;
          sub_267C5DD80(&v170, v100, v101, v102, v103, v104, v105, v106, v153, v161, v167);
          v108 = v107;
          sub_267B9EF14(v0 + 784);
          sub_267BEB520(v3 + 152, v0 + 880);
          sub_267C5D908(v55);
          sub_267B9EF14(v0 + 880);
          sub_267BEB520(v3 + 152, v0 + 976);
          v170 = xmmword_267EFDDC0;
          OUTLINED_FUNCTION_18_16();
          sub_267C5C400(v109, v98);
          sub_267B9EF14(v0 + 976);
          sub_267BEB520(v3 + 152, v0 + 1072);
          OUTLINED_FUNCTION_7_24();
          sub_267C5C400(v110, v99);
          sub_267B9EF14(v0 + 1072);
          v111 = sub_267BEB520(v3 + 152, v0 + 1168);
          OUTLINED_FUNCTION_3_31(v111, v112, v113, v114, v115, v116, v117, v118, 2, 0, xmmword_267EFDDC0);
          sub_267C5E0EC(v119, v120, v121, v122, v123, v124, v125, v126, v154, v162, v168);
          sub_267B9EF14(v0 + 1168);
          sub_267BEB520(v3 + 152, v0 + 1264);
          OUTLINED_FUNCTION_7_24();
          sub_267C5E0EC(v127, v128, v129, v130, v131, v132, v133, v134, v155, v163, v169);
          sub_267B9EF14(v0 + 1264);
          v135 = OUTLINED_FUNCTION_26_0();
          v139 = sub_267C47B00(v135, v136, v108, v98, v137, v99, v138);
          sub_267B9FED8(v99, &qword_28022BD90, &unk_267EFCDD0);
          sub_267B9FED8(v98, &qword_28022BD90, &unk_267EFCDD0);
          v140 = v55;
          v141 = &qword_28022BD90;
          v142 = &unk_267EFCDD0;
          goto LABEL_36;
      }

      goto LABEL_24;
    }

    OUTLINED_FUNCTION_44_1();
    if (!v8)
    {
      OUTLINED_FUNCTION_0();
    }

    v96 = sub_267EF8A08();
    v84 = OUTLINED_FUNCTION_13_8(v96, qword_280240FB0);
    v97 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v97))
    {
      v86 = OUTLINED_FUNCTION_32();
      *v86 = 0;
      v87 = "#ReadSpokenHintAction Announce hint experiment is enabled, user is enrolled, but no hint is provided";
      goto LABEL_23;
    }
  }

LABEL_24:
  v88 = *(v0 + 1712);
  v89 = *(v0 + 1632);

  sub_267EF3D38();
  sub_267EF3D28();
  v90 = *(v88 + 8);
  v91 = *(v0 + 1728);
  v92 = *(v0 + 1720);
  OUTLINED_FUNCTION_13_23();
  v93(v91);

  OUTLINED_FUNCTION_1();

  return v94();
}

uint64_t sub_267D08E48()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 1744);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 1752) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D08F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = 0xE900000000000073;
  v26 = *(v22 + 1720);
  v27 = *(v22 + 1712);
  v28 = *(v22 + 1704);
  v29 = *(v22 + 1760);
  sub_267BEB520(*(v22 + 1736) + 152, v22 + 496);
  OUTLINED_FUNCTION_30_14();
  sub_267EF2CB8();
  sub_267C5BD60(&a9, v26);
  v30 = *(v27 + 8);
  v31 = OUTLINED_FUNCTION_44_0();
  v30(v31);
  sub_267B9EF14(v22 + 496);
  switch(v29)
  {
    case 1:
      goto LABEL_5;
    case 2:
      v25 = 0x8000000267F0F8F0;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_59_10();
LABEL_5:
      OUTLINED_FUNCTION_57_8();
      v32 = sub_267EF9EA8();

      if (v32)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    default:

LABEL_6:
      v33 = *(v22 + 1761);
      if ((v33 - 1) < 2)
      {
        v37 = OUTLINED_FUNCTION_55_10();
        sub_267BEB520(v37, v22 + 688);
        OUTLINED_FUNCTION_30_14();
        sub_267EF2CB8();
        sub_267C5BD60(&a9, v25);
        v38 = OUTLINED_FUNCTION_26_0();
        v30(v38);
        v36 = v22 + 688;
        goto LABEL_11;
      }

      if (!*(v22 + 1761) || v33 == 3)
      {
        v34 = OUTLINED_FUNCTION_55_10();
        sub_267BEB520(v34, v22 + 592);
        OUTLINED_FUNCTION_30_14();
        sub_267EF2CB8();
        sub_267C5BD60(&a9, v25);
        v35 = OUTLINED_FUNCTION_26_0();
        v30(v35);
        v36 = v22 + 592;
LABEL_11:
        sub_267B9EF14(v36);
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_87();
      if (!v39)
      {
        OUTLINED_FUNCTION_0();
      }

      v71 = sub_267EF8A08();
      v72 = OUTLINED_FUNCTION_13_8(v71, qword_280240FB0);
      v73 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_10_2(v73))
      {
        v74 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v74);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v75, v76, v77, v78, v79, 2u);
        OUTLINED_FUNCTION_26();
      }

LABEL_12:
      OUTLINED_FUNCTION_87();
      if (!v39)
      {
        OUTLINED_FUNCTION_0();
      }

      v40 = sub_267EF8A08();
      v41 = OUTLINED_FUNCTION_13_8(v40, qword_280240FB0);
      v42 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_10_2(v42))
      {
        v43 = *(v22 + 1761);
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        a9 = v45;
        *v44 = 136315138;
        v46 = sub_267C47A10(v43);
        v48 = sub_267BA33E8(v46, v47, &a9);

        *(v44 + 4) = v48;
        OUTLINED_FUNCTION_21();
        _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_26();
      }

      v54 = *(v22 + 1656);
      v55 = *(v22 + 1648);
      v56 = *(v22 + 1640);
      sub_267D0ABEC(*(v22 + 1664), *(v22 + 1632));
      v57 = *(v54 + 8);
      v58 = OUTLINED_FUNCTION_26_0();
      v59(v58);
      v60 = *(v22 + 1728);
      v61 = *(v22 + 1720);
      OUTLINED_FUNCTION_13_23();
      v30(v60);

      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_64_3();

      return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_267D092EC()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[216];
  v2 = v0[215];
  v3 = v0[214];
  OUTLINED_FUNCTION_13_23();
  (*(v4 + 8))(v1);

  OUTLINED_FUNCTION_17();
  v6 = v0[219];

  return v5();
}

uint64_t sub_267D093B4()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
  *(v1 + 329) = v3;
  *(v1 + 328) = v4;
  *(v1 + 232) = v5;
  *(v1 + 240) = v6;
  *(v1 + 216) = v7;
  *(v1 + 224) = v8;
  *(v1 + 208) = v9;
  v10 = sub_267EF2CC8();
  *(v1 + 264) = v10;
  OUTLINED_FUNCTION_30_0(v10);
  *(v1 + 272) = v11;
  v13 = *(v12 + 64);
  *(v1 + 280) = OUTLINED_FUNCTION_2();
  v14 = sub_267EF4228();
  *(v1 + 288) = v14;
  OUTLINED_FUNCTION_30_0(v14);
  *(v1 + 296) = v15;
  v17 = *(v16 + 64);
  *(v1 + 304) = OUTLINED_FUNCTION_2();
  v18 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_267D094B8()
{
  OUTLINED_FUNCTION_12();
  v1 = sub_267C47B00(*(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 328), *(v0 + 248), *(v0 + 329));
  *(v0 + 330) = v1;
  if (v1 == 7 || (v2 = *(v0 + 256), !sub_267D0B030()))
  {
    v7 = *(v0 + 208);
    sub_267EF3D38();
    OUTLINED_FUNCTION_66_8();
    v8 = *(v0 + 304);
    v9 = *(v0 + 280);

    OUTLINED_FUNCTION_1();

    return v10();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 312) = v3;
    *v3 = v4;
    v3[1] = sub_267D095D0;
    v5 = *(v0 + 304);

    return sub_267E78E28();
  }
}

uint64_t sub_267D095D0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 320) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D096C8()
{
  v51 = v2;
  v4 = *(v2 + 330);
  if ((v4 - 1) < 2)
  {
    v20 = OUTLINED_FUNCTION_58_5();
    sub_267BEB520(v20, v2 + 112);
    OUTLINED_FUNCTION_30_14();
    sub_267EF2CB8();
    sub_267C5BD60(v50, v0);
    v21 = *(v3 + 8);
    v22 = OUTLINED_FUNCTION_26_0();
    v23(v22);
    v19 = v2 + 112;
    goto LABEL_9;
  }

  if (*(v2 + 330))
  {
    v5 = v4 == 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = OUTLINED_FUNCTION_58_5();
    sub_267BEB520(v6, v2 + 16);
    OUTLINED_FUNCTION_30_14();
    v7 = sub_267EF2CB8();
    v15 = OUTLINED_FUNCTION_53_9(v7, v8, v9, v10, v11, v12, v13, v14, v50[0]);
    sub_267C5BD60(v15, v0);
    v16 = *(v3 + 8);
    v17 = OUTLINED_FUNCTION_26_0();
    v18(v17);
    v19 = v2 + 16;
LABEL_9:
    sub_267B9EF14(v19);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_87();
  if (!v40)
  {
    OUTLINED_FUNCTION_0();
  }

  v41 = sub_267EF8A08();
  v42 = OUTLINED_FUNCTION_13_8(v41, qword_280240FB0);
  v43 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_10_2(v43))
  {
    v44 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v44);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v45, v46, v47, v48, v49, 2u);
    OUTLINED_FUNCTION_26();
  }

LABEL_10:
  OUTLINED_FUNCTION_87();
  if (!v5)
  {
    OUTLINED_FUNCTION_0();
  }

  v24 = sub_267EF8A08();
  v25 = OUTLINED_FUNCTION_13_8(v24, qword_280240FB0);
  v26 = sub_267EF95D8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v27);
    _os_log_impl(&dword_267B93000, v25, v26, "#ReadSpokenHintAction Reading short message hint", v1, 2u);
    OUTLINED_FUNCTION_26();
  }

  v29 = *(v2 + 296);
  v28 = *(v2 + 304);
  v30 = *(v2 + 288);
  v31 = *(v2 + 256);
  v32 = *(v2 + 208);

  sub_267D0ABEC(v28, v32);
  v33 = *(v29 + 8);
  v34 = OUTLINED_FUNCTION_26_0();
  v35(v34);
  v36 = *(v2 + 304);
  v37 = *(v2 + 280);

  OUTLINED_FUNCTION_1();

  return v38();
}

uint64_t sub_267D09914()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[38];
  v2 = v0[35];

  OUTLINED_FUNCTION_17();
  v4 = v0[40];

  return v3();
}

uint64_t sub_267D0997C()
{
  OUTLINED_FUNCTION_12();
  v1[129] = v0;
  v1[128] = v2;
  v3 = sub_267EF2CC8();
  v1[130] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[131] = v4;
  v6 = *(v5 + 64);
  v1[132] = OUTLINED_FUNCTION_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  v1[133] = OUTLINED_FUNCTION_2();
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267D09A50()
{
  sub_267EF6FF8();
  sub_267EF6FE8();
  sub_267EF6FB8();

  v1 = sub_267EF70F8();

  if ((v1 & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v6 = sub_267EF8A08();
    v7 = OUTLINED_FUNCTION_13_8(v6, qword_280240FB0);
    v8 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v8))
    {
      v9 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v9);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_26();
    }

    v15 = *(v0 + 1024);

LABEL_15:
    *(v15 + 32) = 0;
    *v15 = 0u;
    *(v15 + 16) = 0u;
    v26 = *(v0 + 1064);
    v27 = *(v0 + 1056);

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_15();

    __asm { BRAA            X1, X16 }
  }

  v2 = *(v0 + 1064);
  v3 = *(v0 + 1040);
  v4 = *(*(v0 + 1032) + 48);
  *(v0 + 1072) = v4;
  sub_267BEB520(v4 + 152, v0 + 16);
  sub_267C5E458(v2);
  sub_267B9EF14(v0 + 16);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v16 = sub_267EF8A08();
    v17 = OUTLINED_FUNCTION_13_8(v16, qword_280240FB0);
    v18 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v18))
    {
      v19 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v19);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_26();
    }

    v25 = *(v0 + 1064);
    v15 = *(v0 + 1024);

    sub_267B9FED8(v25, &qword_28022BD90, &unk_267EFCDD0);
    goto LABEL_15;
  }

  sub_267BC9B04(*(v0 + 1032) + 104, v0 + 824, &qword_28022ACC8, &qword_267F038B8);
  if (*(v0 + 848))
  {
    sub_267B9A5E8((v0 + 824), v0 + 784);
    v5 = *(v0 + 808);
  }

  else
  {
    v5 = type metadata accessor for TrialHeadGesturesHintsExperimentProvider();
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 18) = 0;
    *(v0 + 808) = v5;
    *(v0 + 816) = &off_2878D2648;
    *(v0 + 784) = v30;
  }

  v31 = *__swift_project_boxed_opaque_existential_0((v0 + 784), v5);
  v32 = sub_267D0E260();
  *(v0 + 1100) = v32;
  sub_267BEB520(v4 + 152, v0 + 112);
  v33 = sub_267C5E738();
  sub_267B9EF14(v0 + 112);
  *(v0 + 864) = 0u;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0;
  sub_267BEB520(v4 + 152, v0 + 208);
  OUTLINED_FUNCTION_61_9();
  sub_267C5DD80(v34, v35, v36, v37, v38, v39, v40, v41, 8, 0, 8);
  v43 = v42;
  sub_267B9EF14(v0 + 208);
  v44 = v43 > 0;
  v45 = *__swift_project_boxed_opaque_existential_0((v0 + 784), *(v0 + 808));
  v46 = sub_267D0E508();
  v48 = v47;
  sub_267BEB520(v4 + 152, v0 + 304);
  v49 = *(v0 + 328);
  v50 = *(v0 + 336);
  __swift_project_boxed_opaque_existential_0((v0 + 304), v49);
  v51 = (*(v50 + 16))(0xD00000000000002CLL, 0x8000000267F13520, v49, v50);
  v53 = v52;
  sub_267B9EF14(v0 + 304);
  v54 = sub_267D0DB38(v33, v32, v44, v46, v48, v51, v53);
  *(v0 + 1096) = v54;

  v55 = *(v0 + 808);
  v56 = *(v0 + 816);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 784, v55);
  (*(v56 + 40))(v54 & 0x10101, v55, v56);
  if ((v54 & 0x10000) != 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v57 = sub_267EF8A08();
    v58 = OUTLINED_FUNCTION_13_8(v57, qword_280240FB0);
    v59 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v59))
    {
      v60 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v60);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v61, v62, v63, v64, v65, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_267BEB520(v4 + 152, v0 + 688);
    OUTLINED_FUNCTION_61_9();
    sub_267C5DEC0(v66);
    sub_267B9EF14(v0 + 688);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 1080) = v67;
  *v67 = v68;
  v67[1] = sub_267D09F60;
  v69 = *(v0 + 1032);
  OUTLINED_FUNCTION_15();

  return sub_267D0A5F0();
}

uint64_t sub_267D09F60()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 1080);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 1088) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_267D0A058()
{
  OUTLINED_FUNCTION_90();
  v59 = v0;
  v1 = *(v0 + 1096);
  sub_267B9FED8(v0 + 864, &qword_28022ACD0, &unk_267F038C0);
  v2 = *(v0 + 920);
  *(v0 + 864) = *(v0 + 904);
  *(v0 + 880) = v2;
  *(v0 + 896) = *(v0 + 936);
  sub_267BC9B04(v0 + 864, v0 + 944, &qword_28022ACD0, &unk_267F038C0);
  v3 = *(v0 + 968);
  sub_267B9FED8(v0 + 944, &qword_28022ACD0, &unk_267F038C0);
  if (v3 && (v1 & 0x100) != 0)
  {
    OUTLINED_FUNCTION_44_1();
    if (!v26)
    {
      OUTLINED_FUNCTION_0();
    }

    v4 = sub_267EF8A08();
    v5 = __swift_project_value_buffer(v4, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95D8();
    if (os_log_type_enabled(v6, v7))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_6_22(&dword_267B93000, v8, v9, "#ReadSpokenHintAction experimental policy requires trigger log for head gestures early dismissal hint.");
      OUTLINED_FUNCTION_32_0();
    }

    v10 = *(v0 + 1100);
    v11 = *(v0 + 1072);

    v12 = *__swift_project_boxed_opaque_existential_0((v0 + 784), *(v0 + 808));
    sub_267D0E5E4(0xD000000000000024, 0x8000000267F16C40);
    sub_267BEB520(v11 + 152, v0 + 496);
    v13 = v10 == 1;
    v14 = *(v0 + 520);
    v15 = *(v0 + 528);
    __swift_project_boxed_opaque_existential_0((v0 + 496), v14);
    (*(v15 + 48))(v13, 0xD00000000000002DLL, 0x8000000267F13550, v14, v15);
    sub_267B9EF14(v0 + 496);
    v16 = *__swift_project_boxed_opaque_existential_0((v0 + 784), *(v0 + 808));
    v17 = sub_267D0E508();
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      v21 = sub_267EF89F8();
      v22 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v58[0] = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_267BA33E8(v19, v20, v58);
        _os_log_impl(&dword_267B93000, v21, v5, "#ReadSpokenHintAction logging experiment ID: %s.", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      sub_267BEB520(*(v0 + 1072) + 152, v0 + 592);
      sub_267C5E80C(v19, v20);

      sub_267B9EF14(v0 + 592);
    }
  }

  v25 = *(v0 + 1096);
  OUTLINED_FUNCTION_44_1();
  if (v27)
  {
    if (!v26)
    {
      OUTLINED_FUNCTION_0();
    }

    v28 = sub_267EF8A08();
    v29 = OUTLINED_FUNCTION_13_8(v28, qword_280240FB0);
    v30 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v30))
    {
      v31 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v31);
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v32, v33, "#ReadSpokenHintAction experimental policy allows hint.");
      OUTLINED_FUNCTION_29_1();
    }

    sub_267BC9B04(v0 + 864, v0 + 984, &qword_28022ACD0, &unk_267F038C0);
    v34 = *(v0 + 1008);
    sub_267B9FED8(v0 + 984, &qword_28022ACD0, &unk_267F038C0);
    if (v34)
    {
      v35 = *(v0 + 1064);
      v36 = *(v0 + 1056);
      v37 = *(v0 + 1048);
      v38 = *(v0 + 1040);
      sub_267BEB520(*(v0 + 1072) + 152, v0 + 400);
      OUTLINED_FUNCTION_30_14();
      sub_267EF2CB8();
      sub_267C5BD60(v58, v36);
      v39 = *(v37 + 8);
      v40 = OUTLINED_FUNCTION_44_0();
      v41(v40);
      sub_267B9EF14(v0 + 400);
      v42 = v35;
    }

    else
    {
      v42 = *(v0 + 1064);
    }

    sub_267B9FED8(v42, &qword_28022BD90, &unk_267EFCDD0);
    v51 = *(v0 + 1024);
    v52 = *(v0 + 864);
    v53 = *(v0 + 880);
    *(v51 + 32) = *(v0 + 896);
    *v51 = v52;
    *(v51 + 16) = v53;
  }

  else
  {
    if (!v26)
    {
      OUTLINED_FUNCTION_0();
    }

    v43 = sub_267EF8A08();
    v44 = OUTLINED_FUNCTION_13_8(v43, qword_280240FB0);
    v45 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v45))
    {
      v46 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v46);
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v47, v48, "#ReadSpokenHintAction experimental policy disallows hint.");
      OUTLINED_FUNCTION_29_1();
    }

    v49 = *(v0 + 1064);
    v50 = *(v0 + 1024);

    sub_267B9FED8(v0 + 864, &qword_28022ACD0, &unk_267F038C0);
    sub_267B9FED8(v49, &qword_28022BD90, &unk_267EFCDD0);
    *v50 = 0u;
    *(v50 + 16) = 0u;
    *(v50 + 32) = 0;
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 784));
  v54 = *(v0 + 1064);
  v55 = *(v0 + 1056);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_10();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267D0A54C()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[133];
  v2 = v0[132];
  sub_267B9FED8((v0 + 108), &qword_28022ACD0, &unk_267F038C0);
  sub_267B9FED8(v1, &qword_28022BD90, &unk_267EFCDD0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 98);

  OUTLINED_FUNCTION_17();
  v4 = v0[136];

  return v3();
}

uint64_t sub_267D0A5F0()
{
  OUTLINED_FUNCTION_12();
  v1[25] = v2;
  v1[26] = v0;
  v3 = sub_267EF4228();
  v1[27] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[28] = v4;
  v6 = *(v5 + 64);
  v1[29] = OUTLINED_FUNCTION_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  v1[30] = OUTLINED_FUNCTION_2();
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267D0A6C0()
{
  v1 = *(v0[26] + 56);
  OUTLINED_FUNCTION_83();
  sub_267BBD3E4(v0 + 14, *(v1 + 24));
  if (v0[17])
  {
    v2 = v0[30];
    v3 = v0[26];
    v4 = v0[18];
    __swift_project_boxed_opaque_existential_0(v0 + 14, v0[17]);
    v5 = *(v4 + 32);
    v6 = OUTLINED_FUNCTION_7_1();
    v8 = v7(v6);
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0(v0 + 14);
    v11 = *(v3 + 48);
    sub_267BEB520(v11 + 152, (v0 + 2));
    OUTLINED_FUNCTION_30_14();
    v20 = OUTLINED_FUNCTION_53_9(v12, v13, v14, v15, v16, v17, v18, v19, v57);
    sub_267C5C400(v20, v2);
    sub_267B9EF14((v0 + 2));
    v21 = *(v1 + 81);
    OUTLINED_FUNCTION_83();
    v22 = *(v11 + 256);

    v23 = sub_267BBF2B0(v8, v10, v22);
    v25 = v24;

    if (v23 == 2)
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }

    if (sub_267C48A28(v2, v21, v26, v23 == 2))
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v27 = sub_267EF8A08();
      v28 = OUTLINED_FUNCTION_13_8(v27, qword_280240FB0);
      v29 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_10_2(v29))
      {
        v30 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v30);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v31, v32, v33, v34, v35, 2u);
        OUTLINED_FUNCTION_26();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[31] = v36;
      *v36 = v37;
      v36[1] = sub_267D0A9C8;
      v38 = v0[29];

      return sub_267E7A720();
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v44 = sub_267EF8A08();
    v45 = OUTLINED_FUNCTION_13_8(v44, qword_280240FB0);
    v46 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v46))
    {
      v47 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v47);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v48, v49, v50, v51, v52, 2u);
      OUTLINED_FUNCTION_26();
    }

    v53 = v0[30];
    v40 = v0[25];

    v41 = &qword_28022BD90;
    v42 = &unk_267EFCDD0;
    v43 = v53;
  }

  else
  {
    v40 = v0[25];
    v41 = &qword_280229910;
    v42 = &unk_267EFEB70;
    v43 = (v0 + 14);
  }

  sub_267B9FED8(v43, v41, v42);
  *(v40 + 32) = 0;
  *v40 = 0u;
  *(v40 + 16) = 0u;
  v55 = v0[29];
  v54 = v0[30];

  OUTLINED_FUNCTION_1();

  return v56();
}

uint64_t sub_267D0A9C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 256) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D0AAC0()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  sub_267D0ABEC(v2, *(v0 + 200));
  (*(v4 + 8))(v2, v3);
  sub_267B9FED8(v1, &qword_28022BD90, &unk_267EFCDD0);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_30_2();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_267D0AB6C()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[29];
  sub_267B9FED8(v0[30], &qword_28022BD90, &unk_267EFCDD0);

  OUTLINED_FUNCTION_17();
  v3 = v0[32];

  return v2();
}

void sub_267D0ABEC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v6 = OUTLINED_FUNCTION_18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v35 - v9;
  v11 = *(v2 + 56);
  OUTLINED_FUNCTION_83();
  sub_267C8F7C0(*(v11 + 24), &v36);
  v12 = *(&v37 + 1);
  if (*(&v37 + 1))
  {
    v13 = v38;
    __swift_project_boxed_opaque_existential_0(&v36, *(&v37 + 1));
    v14 = (*(v13 + 24))(v12, v13);
    __swift_destroy_boxed_opaque_existential_0(&v36);
  }

  else
  {
    sub_267B9FED8(&v36, &qword_280229910, &unk_267EFEB70);
    v14 = MEMORY[0x277D84F90];
  }

  if (*(v14 + 16))
  {
    sub_267BA9F38(0, &qword_28022A0C8, 0x277D47918);
    v15 = *(v11 + 128);

    v16 = sub_267EF7C18();
    v18 = v17;

    v19 = sub_267E7E7F0(v16, v18);
    v20 = *MEMORY[0x277CEF108];
    *&v36 = sub_267EF9028();
    *(&v36 + 1) = v21;
    MEMORY[0x26D608E60](3092282, 0xE300000000000000);
    v35[2] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
    sub_267BF5748();
    v22 = sub_267EF8FC8();
    v24 = v23;

    MEMORY[0x26D608E60](v22, v24);

    sub_267EF2B88();

    v25 = sub_267EF2BA8();
    v26 = 0;
    if (__swift_getEnumTagSinglePayload(v10, 1, v25) != 1)
    {
      v26 = sub_267EF2AF8();
      OUTLINED_FUNCTION_5_0(v25);
      v28 = *(v27 + 8);
      v29 = OUTLINED_FUNCTION_44_0();
      v30(v29);
    }

    [v19 setIdentifier_];
  }

  else
  {

    v19 = 0;
  }

  v31 = sub_267EF4208();
  MEMORY[0x28223BE20](v31);
  v35[-2] = a1;
  v32 = sub_267D2E81C(sub_267D0B6EC, &v35[-4], v31);

  if (v32 >> 62)
  {
    sub_267BA9F38(0, &qword_28022A320, 0x277D471B0);

    sub_267EF9CA8();
  }

  else
  {

    sub_267EF9EC8();
    sub_267BA9F38(0, &qword_28022A320, 0x277D471B0);
  }

  v33 = sub_267EF4CC8();
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  v34 = MEMORY[0x277D5C1D8];
  a2[3] = v33;
  a2[4] = v34;
  __swift_allocate_boxed_opaque_existential_0(a2);
  sub_267EF4CA8();
}

id sub_267D0AFA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_267BA9F38(0, &qword_28022A0B0, 0x277D47B10);

  v5 = sub_267EF41E8();
  result = sub_267E7E88C(v3, v4, v5, v6, 0, 0, 0);
  *a2 = result;
  return result;
}

BOOL sub_267D0B030()
{
  if (*(v0 + 40))
  {
    return 0;
  }

  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_83();
  return *(*(v2 + 24) + 16) == 1;
}

uint64_t sub_267D0B084@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (result)
  {
    v3 = xmmword_267EFE6F0;
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      goto LABEL_7;
    }

    v3 = xmmword_267F03700;
  }

  *a3 = v3;
LABEL_7:
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_267D0B0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_83();
  v4 = *(a3 + 248);
  if (*(v4 + 16))
  {

    v5 = sub_267BA9948();
    if (v6)
    {
      v7 = *(v4 + 56) + 40 * v5;
      v9 = *v7;
      v8 = *(v7 + 8);
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      v12 = *(v7 + 32);
      v13 = OUTLINED_FUNCTION_48_14();
      sub_267BB7AA0(v13, v14, v15, v16, v17);

      if (v12 == 1)
      {

        return 1;
      }

      v19 = OUTLINED_FUNCTION_48_14();
      sub_267BFF0F4(v19, v20, v21, v22, v23);
    }

    else
    {
    }
  }

  return 0;
}

void *sub_267D0B184()
{
  v1 = v0[3];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  sub_267B9FED8((v0 + 13), &qword_28022ACC8, &qword_267F038B8);
  return v0;
}

uint64_t sub_267D0B1D4()
{
  sub_267D0B184();

  return swift_deallocClassInstance();
}

uint64_t sub_267D0B23C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return swift_unknownObjectRetain();
}

uint64_t sub_267D0B264(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_267D0B274(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267D05188(a1);
}

uint64_t sub_267D0B310()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267D05DB4();
}

uint64_t sub_267D0B3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return j__OUTLINED_FUNCTION_5_10(a1, a2, a3, WitnessTable);
}

void (*sub_267D0B414(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v5;
  v5[2] = v2;
  v5[3] = a2;
  WitnessTable = swift_getWitnessTable();
  v5[4] = WitnessTable;
  *v5 = sub_267C3698C(a2, WitnessTable);
  v5[1] = v7;
  return sub_267C94288;
}

uint64_t sub_267D0B4A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_267C3698C(a1, WitnessTable);
}

uint64_t sub_267D0B4F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267BF9538();
}

uint64_t sub_267D0B5B8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return StaticAction.debugDescription.getter();
}

uint64_t sub_267D0B694(uint64_t a1, uint64_t a2)
{
  result = sub_267D0B70C(&qword_28022ACC0, a2, type metadata accessor for ReadSpokenHintAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267D0B70C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_267D0B754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_267D0B7C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationAnnounceState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_267D0B860()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v8 = sub_267EF2D28();
  v9 = OUTLINED_FUNCTION_58(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v15 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  sub_267EF2CD8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_267B9FF34(v7, &qword_280229430, &qword_267EFD2C0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v18 = sub_267EF8A08();
    __swift_project_value_buffer(v18, qword_280240FB0);
    v19 = sub_267EF89F8();
    v20 = sub_267EF95D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_267B93000, v19, v20, "#SiriSuggestionsEngagementDonator Unable to resolve requestId. Not donating enagement", v21, 2u);
      MEMORY[0x26D60A7B0](v21, -1, -1);
    }
  }

  else
  {
    v22 = *(v11 + 32);
    v22(v17, v7, v8);
    v23 = sub_267EF93F8();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v23);
    (*(v11 + 16))(v15, v17, v8);
    v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    v22((v25 + v24), v15, v8);
    sub_267E8FA18();

    (*(v11 + 8))(v17, v8);
  }
}

uint64_t sub_267D0BB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_267EF85E8();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D0BC54, 0, 0);
}

uint64_t sub_267D0BC54()
{
  v1 = v0[10];
  sub_267EF8F28();
  sub_267EF85D8();
  sub_267EF85B8();
  sub_267EF85A8();
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v2);
  v4 = *(v3 + 16);
  v5 = *(MEMORY[0x277D60598] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_267D0BD6C;
  v7 = v0[10];
  v8 = v0[7];

  return MEMORY[0x2821C6008](v7, v8, v2, v4);
}

uint64_t sub_267D0BD6C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_267D0BF00;
  }

  else
  {
    v3 = sub_267D0BE80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_267D0BE80()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[10];

  v2 = v0[1];

  return v2();
}

uint64_t sub_267D0BF00()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[12];
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95D8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_267B93000, v4, v5, "#SiriSuggestionsEngagementDonator Error donating engagement: %@", v8, 0xCu);
    sub_267B9FF34(v9, &unk_280229E30, &unk_267EFC270);
    MEMORY[0x26D60A7B0](v9, -1, -1);
    MEMORY[0x26D60A7B0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[10];

  v13 = v0[1];

  return v13();
}

uint64_t sub_267D0C0C0(uint64_t a1)
{
  v4 = *(sub_267EF2D28() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_267BCE5E4;

  return sub_267D0BB94(a1, v6, v7, v1 + v5);
}

uint64_t sub_267D0C1B0()
{
  OUTLINED_FUNCTION_12();
  v1[38] = v2;
  v1[39] = v0;
  v1[37] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60) - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v5 = sub_267EF4228();
  v1[41] = v5;
  v6 = *(v5 - 8);
  v1[42] = v6;
  v7 = *(v6 + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D0C2B4, 0, 0);
}

uint64_t sub_267D0C2B4()
{
  v1 = v0[38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229690, &unk_267F03B30);
  v2 = sub_267EF4638();
  v0[45] = v2;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v3 = sub_267EF8A08();
  v0[46] = __swift_project_value_buffer(v3, qword_280240FB0);
  v4 = v2;
  v5 = sub_267EF89F8();
  v6 = sub_267EF95E8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_267B93000, v5, v6, "#SearchForMessageHandleIntentFlowStrategy received failure response: %@", v7, 0xCu);
    sub_267B9FF34(v8, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v10 = [v4 code];
  if (*MEMORY[0x277CD4558] == v10)
  {
    v11 = *(v0[39] + 56);
    v12 = swift_task_alloc();
    v0[47] = v12;
    *v12 = v0;
    v12[1] = sub_267D0C560;
    v13 = v0[44];

    return sub_267CE93C8();
  }

  else
  {
    v15 = v0[39];
    v16 = v15[5];
    v17 = v15[6];
    __swift_project_boxed_opaque_existential_0(v15 + 2, v16);
    (*(v17 + 8))(v16, v17);
    v18 = *(MEMORY[0x277D5BCD8] + 4);
    v19 = swift_task_alloc();
    v0[49] = v19;
    *v19 = v0;
    v19[1] = sub_267D0C880;
    v20 = v0[43];

    return MEMORY[0x2821BAEE0](v20, v0 + 2);
  }
}

uint64_t sub_267D0C560()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 376);
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 384) = v0;

  if (v0)
  {
    v7 = sub_267D0CC40;
  }

  else
  {
    v7 = sub_267D0C664;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267D0C664()
{
  v1 = *(v0 + 368);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v4, v5, "#SearchForMessageHandleIntentFlowStrategy generating screen time restriction output");
    OUTLINED_FUNCTION_32_0();
  }

  v6 = *(v0 + 352);
  v7 = *(v0 + 336);
  v28 = *(v0 + 360);
  v29 = *(v0 + 328);
  v8 = *(v0 + 312);
  v9 = *(v0 + 320);
  v10 = *(v0 + 296);

  v11 = v8[6];
  __swift_project_boxed_opaque_existential_0(v8 + 2, v8[5]);
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_10_0();
  v14(v13);
  v15 = v8[6];
  __swift_project_boxed_opaque_existential_0(v8 + 2, v8[5]);
  v16 = *(v15 + 8);
  v17 = OUTLINED_FUNCTION_10_0();
  v18(v17);
  v19 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v20 = sub_267EF4158();
  v21 = OUTLINED_FUNCTION_9_2(v20);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  v22 = MEMORY[0x277D5C1D8];
  v10[3] = v21;
  v10[4] = v22;
  __swift_allocate_boxed_opaque_existential_0(v10);
  OUTLINED_FUNCTION_1_35();
  sub_267EF3F68();

  sub_267B9FF34(v0 + 256, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v9, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  (*(v7 + 8))(v6, v29);
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  v24 = *(v0 + 344);
  v23 = *(v0 + 352);
  v25 = *(v0 + 320);

  OUTLINED_FUNCTION_17();

  return v26();
}

uint64_t sub_267D0C880()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *(v2 + 392);
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 400) = v0;

  sub_267B9FF34(v3 + 16, &qword_28022A620, &qword_267F08EC0);
  if (v0)
  {
    v7 = sub_267D0CBBC;
  }

  else
  {
    v7 = sub_267D0C99C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267D0C99C()
{
  v1 = *(v0 + 368);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v4, v5, "#SearchForMessageHandleIntentFlowStrategy generating error in the app output");
    OUTLINED_FUNCTION_32_0();
  }

  v6 = *(v0 + 360);
  v8 = *(v0 + 336);
  v7 = *(v0 + 344);
  v9 = *(v0 + 320);
  v29 = *(v0 + 328);
  v10 = *(v0 + 312);
  v11 = *(v0 + 296);

  v12 = v10[6];
  __swift_project_boxed_opaque_existential_0(v10 + 2, v10[5]);
  v13 = *(v12 + 8);
  v14 = OUTLINED_FUNCTION_4_1();
  v15(v14);
  v16 = v10[6];
  __swift_project_boxed_opaque_existential_0(v10 + 2, v10[5]);
  v17 = *(v16 + 8);
  v18 = OUTLINED_FUNCTION_4_1();
  v19(v18);
  v20 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  v21 = sub_267EF4158();
  v22 = OUTLINED_FUNCTION_9_2(v21);
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v23 = MEMORY[0x277D5C1D8];
  v11[3] = v22;
  v11[4] = v23;
  __swift_allocate_boxed_opaque_existential_0(v11);
  OUTLINED_FUNCTION_1_35();
  sub_267EF3F98();

  sub_267B9FF34(v0 + 136, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v9, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  (*(v8 + 8))(v7, v29);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v25 = *(v0 + 344);
  v24 = *(v0 + 352);
  v26 = *(v0 + 320);

  OUTLINED_FUNCTION_17();

  return v27();
}

uint64_t sub_267D0CBBC()
{
  v1 = *(v0 + 400);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 320);

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267D0CC40()
{
  v1 = *(v0 + 384);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 320);

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267D0CCD4()
{
  v0 = sub_267C4779C();
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow40SearchForMessageHandleIntentFlowStrategy_commonTemplateProvider));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267D0CD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SearchForMessageHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BAEBEC;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_267D0CE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SearchForMessageHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_267D0CF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SearchForMessageHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C48](a1, a2, v10, a4);
}

uint64_t sub_267D0CFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SearchForMessageHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_267D0D0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SearchForMessageHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_267D0D17C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267D0C1B0();
}

unint64_t sub_267D0D22C()
{
  result = qword_28022ACF8;
  if (!qword_28022ACF8)
  {
    type metadata accessor for SearchForMessageHandleIntentFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022ACF8);
  }

  return result;
}

void sub_267D0D284(uint64_t a1, void (*a2)(void *, void))
{
  v4 = *__swift_project_boxed_opaque_existential_0((v2 + 56), *(v2 + 80));
  if (sub_267BCF4EC())
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v5 = sub_267EF8A08();
    __swift_project_value_buffer(v5, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_267B93000, v6, v7, "OfflineCheckFlowStrategy# Device is offline", v8, 2u);
      MEMORY[0x26D60A7B0](v8, -1, -1);
    }

    sub_267D0DAE4();
    v9 = swift_allocError();
    a2(v9, 0);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t sub_267D0D3F0(void *a1, void (*a2)(void *), uint64_t a3)
{
  v12[0] = a1;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if (swift_dynamicCast())
  {
    v7 = *(v3 + 96);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = a2;
    v8[4] = a3;

    sub_267CB324C();
  }

  else
  {
    sub_267C266B0();
    v10 = swift_allocError();
    *v11 = 0xD000000000000012;
    v11[1] = 0x8000000267F16D70;
    v12[0] = v10;
    v13 = 1;
    a2(v12);
    return sub_267B9FF34(v12, &unk_28022A480, &unk_267F029F0);
  }
}

uint64_t sub_267D0D530(uint64_t a1, void *a2, void (*a3)(__int128 *), uint64_t a4)
{
  v41[1] = a4;
  v42 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v41 - v8;
  v10 = sub_267EF4CC8();
  v41[0] = *(v10 - 8);
  v11 = *(v41[0] + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_267EF4228();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (v41 - v21);
  sub_267C6D464(a1, v41 - v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v42;
    v24 = *v22;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v25 = sub_267EF8A08();
    __swift_project_value_buffer(v25, qword_280240FB0);
    v26 = v24;
    v27 = sub_267EF89F8();
    v28 = sub_267EF95E8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43 = v24;
      *&v44 = v30;
      *v29 = 136315138;
      v31 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v32 = sub_267EF9098();
      v34 = sub_267BA33E8(v32, v33, &v44);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_267B93000, v27, v28, "#OfflineCheckFlowStrategy failed to make templating result: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x26D60A7B0](v30, -1, -1);
      MEMORY[0x26D60A7B0](v29, -1, -1);
    }

    *&v44 = v24;
    v47 = 1;
    v35 = v24;
    v23(&v44);
  }

  else
  {
    (*(v15 + 32))(v18, v22, v14);
    v36 = a2[6];
    __swift_project_boxed_opaque_existential_0(a2 + 2, a2[5]);
    sub_267EF3BC8();
    v37 = sub_267EF4158();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v37);
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    sub_267EF3F48();
    sub_267B9FF34(&v44, &unk_28022CF80, &unk_267EFED50);
    sub_267B9FF34(v9, &unk_28022AE40, &unk_267EFCB60);
    *(&v45 + 1) = v10;
    v46 = MEMORY[0x277D5C1D8];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v44);
    v39 = v41[0];
    (*(v41[0] + 16))(boxed_opaque_existential_0, v13, v10);
    v47 = 0;
    v42(&v44);
    (*(v39 + 8))(v13, v10);
    (*(v15 + 8))(v18, v14);
  }

  return sub_267B9FF34(&v44, &unk_28022A480, &unk_267F029F0);
}

uint64_t *sub_267D0DA08()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  return v0;
}

uint64_t sub_267D0DA38()
{
  sub_267D0DA08();

  return swift_deallocClassInstance();
}

unint64_t sub_267D0DAE4()
{
  result = qword_28022AD00;
  if (!qword_28022AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AD00);
  }

  return result;
}

uint64_t sub_267D0DB38(char a1, char a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_267EF9B68();
  OUTLINED_FUNCTION_3_32();
  MEMORY[0x26D608E60]();
  v10 = 0xD000000000000018;
  v11 = "TrialLevelBool.enabled";
  if (a1)
  {
    OUTLINED_FUNCTION_4_32();
    if (v12)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xD000000000000017;
    }

    if (v12)
    {
      v17 = v13;
    }

    else
    {
      v17 = v15;
    }
  }

  else
  {
    v16 = 0xD000000000000018;
    v17 = "TrialLevelBool.enabled";
  }

  MEMORY[0x26D608E60](v16, v17 | 0x8000000000000000);

  OUTLINED_FUNCTION_3_32();
  MEMORY[0x26D608E60]();
  if (a2)
  {
    OUTLINED_FUNCTION_4_32();
    if (v18)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0xD000000000000017;
    }

    if (v18)
    {
      v11 = v19;
    }

    else
    {
      v11 = v21;
    }
  }

  MEMORY[0x26D608E60](v10, v11 | 0x8000000000000000);

  OUTLINED_FUNCTION_3_32();
  MEMORY[0x26D608E60]();
  if (a3)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (a3)
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x26D608E60](v22, v23);

  OUTLINED_FUNCTION_2_4();
  MEMORY[0x26D608E60](0xD000000000000017);
  v24 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
  v25 = sub_267EF9098();
  MEMORY[0x26D608E60](v25);

  OUTLINED_FUNCTION_3_32();
  MEMORY[0x26D608E60]();
  v26 = a6;

  v27 = sub_267EF9098();
  MEMORY[0x26D608E60](v27);

  v28 = v61;
  v29 = v62;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v30 = sub_267EF8A08();
  __swift_project_value_buffer(v30, qword_280240FB0);

  v31 = sub_267EF89F8();
  v32 = sub_267EF95D8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v61 = v34;
    *v33 = 136315138;
    v35 = sub_267BA33E8(v28, v29, &v61);

    *(v33 + 4) = v35;
    _os_log_impl(&dword_267B93000, v31, v32, "%s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    v26 = a6;
    OUTLINED_FUNCTION_32_0();
    v24 = a4;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  if (!a7)
  {
    if (a5)
    {
      goto LABEL_40;
    }

    goto LABEL_42;
  }

  if (!a5)
  {
    if (!a1)
    {
      goto LABEL_63;
    }

LABEL_42:
    v39 = 0;
    v40 = 0;
    v38 = (a2 == 1) & ~a3;
    goto LABEL_50;
  }

  if (v24 == v26 && a5 == a7)
  {
    v41 = a1 != 1 || a2 == 1;
    if (v41 && a1)
    {
      goto LABEL_49;
    }

LABEL_63:
    v53 = sub_267EF89F8();
    v54 = sub_267EF95D8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_267B93000, v53, v54, "#HeadGesturesHintsExperimentProvider failed to create HeadGesturesHintExperimentPolicy with invalid arguments", v55, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v51 = 0;
    v38 = 0;
    goto LABEL_66;
  }

  v37 = sub_267EF9EA8() & (a2 != 1);
  if (a1 != 1)
  {
    LOBYTE(v37) = 0;
  }

  if ((v37 & 1) != 0 || !a1)
  {
    goto LABEL_63;
  }

  if ((sub_267EF9EA8() & 1) == 0)
  {
LABEL_40:
    v38 = a2 == 1;
    v39 = a3 | (a1 != 0);
    v40 = 1;
    goto LABEL_50;
  }

LABEL_49:
  v39 = 0;
  v40 = 0;
  v38 = 0;
LABEL_50:
  v42 = sub_267EF89F8();
  v43 = sub_267EF95D8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v61 = v45;
    *v44 = 136315138;
    if (v39)
    {
      v46 = 0x10000;
    }

    else
    {
      v46 = 0;
    }

    if (v40)
    {
      v47 = 256;
    }

    else
    {
      v47 = 0;
    }

    v48 = sub_267D0E0E8(v47 | v38 | v46);
    v50 = sub_267BA33E8(v48, v49, &v61);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_267B93000, v42, v43, "#HeadGesturesHintsExperimentProvider created %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  if (v39)
  {
    v51 = 0x10000;
    if ((v40 & 1) == 0)
    {
LABEL_66:
      v52 = 0;
      return v52 | v51 | v38;
    }
  }

  else
  {
    v51 = 0;
    if (!v40)
    {
      v52 = 0;
      return v52 | v51 | v38;
    }
  }

  v52 = 256;
  return v52 | v51 | v38;
}

uint64_t sub_267D0E0E8(int a1)
{
  sub_267EF9B68();
  MEMORY[0x26D608E60](0xD00000000000002BLL, 0x8000000267F16DE0);
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x26D608E60](v2, v3);

  OUTLINED_FUNCTION_2_4();
  MEMORY[0x26D608E60](0xD000000000000014);
  if ((a1 & 0x100) != 0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x26D608E60](v4, v5);

  MEMORY[0x26D608E60](0xD000000000000018, 0x8000000267F16E30);
  if ((a1 & 0x10000) != 0)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x26D608E60](v6, v7);

  MEMORY[0x26D608E60](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_267D0E230()
{
  if (v0[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_267D0E0E8(v2 | *v0 | v1);
}

uint64_t sub_267D0E260()
{
  v0 = [objc_opt_self() clientWithIdentifier_];
  v1 = sub_267EF8FF8();
  v2 = [v0 experimentIdentifiersWithNamespaceName_];

  v3 = sub_267EF8FF8();
  v4 = sub_267EF8FF8();
  v5 = [v0 levelForFactor:v3 withNamespaceName:v4];

  if (v5)
  {
    v6 = [v5 BOOLeanValue];

    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 0;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);
  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_267BA33E8(0xD000000000000025, 0x8000000267F16E50, &v16);
    *(v11 + 12) = 2080;
    if (v7)
    {
      if (v7 == 1)
      {
        v12 = 0xD000000000000016;
      }

      else
      {
        v12 = 0xD000000000000017;
      }

      if (v7 == 1)
      {
        v13 = "TrialLevelBool.disabled";
      }

      else
      {
        v13 = "SIRI_HEARABLES_VOX";
      }
    }

    else
    {
      v12 = 0xD000000000000018;
      v13 = "TrialLevelBool.enabled";
    }

    v14 = sub_267BA33E8(v12, v13 | 0x8000000000000000, &v16);

    *(v11 + 14) = v14;
    _os_log_impl(&dword_267B93000, v9, v10, "#TrialHeadGesturesHintsExperimentProvider loaded factor %s with level: %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  return v7;
}

id sub_267D0E508()
{
  v0 = [objc_opt_self() clientWithIdentifier_];
  OUTLINED_FUNCTION_2_4();
  v1 = sub_267EF8FF8();
  v2 = [v0 experimentIdentifiersWithNamespaceName_];

  if (v2)
  {
    v3 = [v2 experimentId];

    v2 = sub_267EF9028();
  }

  return v2;
}

void sub_267D0E5E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  sub_267EF6FF8();
  if (!sub_267EF6FC8())
  {
    goto LABEL_9;
  }

  sub_267EF6FA8();

  v10 = sub_267EF8678();
  v12 = v11;

  if (!v12)
  {
    goto LABEL_9;
  }

  sub_267C3D854();

  v13 = sub_267DCF850();
  if (!v13)
  {

LABEL_9:
    v14 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    goto LABEL_12;
  }

  v14 = v13;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v15 = sub_267EF8A08();
  __swift_project_value_buffer(v15, qword_280240FB0);

  v16 = sub_267EF89F8();
  v17 = sub_267EF95D8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v18 = 136315394;
    OUTLINED_FUNCTION_2_4();
    *(v18 + 4) = sub_267BA33E8(0xD000000000000025, v19, &v25);
    *(v18 + 12) = 2080;
    v20 = sub_267BA33E8(v10, v12, &v25);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_267B93000, v16, v17, "#TrialHeadGesturesHintsExperimentProvider %s trigger log for requestId: %s", v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

LABEL_12:
  v21 = v14;
  sub_267EF93D8();
  v22 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a1;
  v23[5] = a2;
  v23[6] = v21;
  v23[7] = v5;

  sub_267E8FA18();
}

uint64_t sub_267D0E8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return MEMORY[0x2822009F8](sub_267D0E920, 0, 0);
}

uint64_t sub_267D0E920()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_267C3D854();

  v3 = sub_267DCF850();
  if (!v3)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  }

  v4 = v3;
  v0[9] = v3;
  v5 = v0[8];
  v0[10] = [objc_allocWithZone(sub_267EF8988()) init];
  v6 = *(MEMORY[0x277CE4828] + 4);
  v9 = (*MEMORY[0x277CE4828] + MEMORY[0x277CE4828]);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_267D0EA5C;

  return v9(v4, 0xD000000000000012, 0x8000000267F16E80, v5);
}

uint64_t sub_267D0EA5C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_267D0ECD4;
  }

  else
  {
    v3 = sub_267D0EB70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_267D0EB70()
{
  v13 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  v6 = v0[10];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    OUTLINED_FUNCTION_2_4();
    *(v7 + 4) = sub_267BA33E8(0xD000000000000025, v9, &v12);
    _os_log_impl(&dword_267B93000, v2, v3, "#TrialHeadGesturesHintsExperimentProvider %s trigger log complete", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_267D0ECD4()
{
  v20 = v0;
  v1 = *(v0 + 72);

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = *(v0 + 96);
  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);
  v4 = v2;
  v5 = sub_267EF89F8();
  v6 = sub_267EF95E8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 96);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v9 = 136315394;
    OUTLINED_FUNCTION_2_4();
    *(v9 + 4) = sub_267BA33E8(0xD000000000000025, v10, &v19);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v13 = *(v0 + 32);
    v14 = sub_267EF9F68();
    v16 = sub_267BA33E8(v14, v15, &v19);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_267B93000, v5, v6, "#TrialHeadGesturesHintsExperimentProvider %s error during trigger logging: %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HeadGesturesHintExperimentPolicy(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadGesturesHintExperimentPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_267D0F014(uint64_t result)
{
  v2 = *v1;
  v2[16] = result & 1;
  v2[17] = BYTE1(result) & 1;
  v2[18] = BYTE2(result) & 1;
  return result;
}

uint64_t sub_267D0F034(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_267BCE5E4;

  return sub_267D0E8FC(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_267D0F108()
{
  if (*(v1 + 32))
  {
    OUTLINED_FUNCTION_5_31();
    return v0;
  }

  v2 = *(v1 + 8);
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
LABEL_6:
    OUTLINED_FUNCTION_5_31();
    *(v1 + 32) = 1;
    return v0;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *v1 + 16 * v2;
    v0 = *(v4 + 32);
    v5 = *(v4 + 40);
    *(v1 + 8) = v2 + 1;
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    v8 = *(v6 + 16);
    if (v7 == v8)
    {
      goto LABEL_6;
    }

    if (v7 < v8)
    {
      v9 = v6 + 16 * v7;
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);
      *(v1 + 24) = v7 + 1;

      return v0;
    }
  }

  __break(1u);
  return result;
}

id sub_267D0F1C4()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *v0;
  if (*v0 >> 62)
  {
    if (v2 < 0)
    {
      v9 = *v0;
    }

    v3 = sub_267EF9A68();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 8);
  if (v4 == v3)
  {
LABEL_11:
    v1 = 0;
    *(v0 + 32) = 1;
    return v1;
  }

  v5 = v2 & 0xC000000000000001;
  sub_267BBD0EC(*(v0 + 8), (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x26D609870](v4, v2);
  }

  else
  {
    v6 = *(v2 + 8 * v4 + 32);
  }

  v1 = v6;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 8) = v4 + 1;
    v5 = *(v0 + 16);
    v7 = sub_267BAF0DC(v5);
    v4 = *(v0 + 24);
    if (v4 == v7)
    {

      goto LABEL_11;
    }

    sub_267BBD0EC(*(v0 + 24), (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) == 0)
    {
      result = *(v5 + 8 * v4 + 32);
      goto LABEL_14;
    }
  }

  result = MEMORY[0x26D609870](v4, v5);
LABEL_14:
  if (!__OFADD__(v4, 1))
  {
    *(v0 + 24) = v4 + 1;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_267D0F2FC()
{
  v0 = sub_267EF9D38();

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

uint64_t sub_267D0F350(char a1)
{
  if (a1)
  {
    return 0x5443454A4552;
  }

  else
  {
    return 0x4554454C504D4F43;
  }
}

uint64_t sub_267D0F3AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267D0F2FC();
  *a2 = result;
  return result;
}

uint64_t sub_267D0F3DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267D0F350(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267D0F408()
{
  v1 = sub_267EF6F88();
  v2 = OUTLINED_FUNCTION_58(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v35 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v35 - v13;
  sub_267EF8F28();
  v15 = *(v0 + 16);
  sub_267EF9388();
  v16 = *(v4 + 32);
  v17 = OUTLINED_FUNCTION_1_36();
  v16(v17);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_33();
  v18 = OUTLINED_FUNCTION_4_33();
  sub_267E86FBC(v18, 0xD000000000000013, v19);
  v20 = *(v0 + 24);
  sub_267EF94A8();
  v21 = OUTLINED_FUNCTION_1_36();
  v16(v21);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_33();
  sub_267E86FBC(v12, 0x5372734174736562, 0xEC00000065726F63);
  v22 = *(v0 + 32);
  sub_267EF9388();
  v23 = OUTLINED_FUNCTION_1_36();
  v16(v23);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_33();
  v24 = OUTLINED_FUNCTION_4_33();
  sub_267E86FBC(v24, v25, v26);
  v27 = *(v0 + 33);
  sub_267EF9388();
  v28 = OUTLINED_FUNCTION_1_36();
  v16(v28);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_33();
  v29 = OUTLINED_FUNCTION_4_33();
  sub_267E86FBC(v29, v30, v31);
  *(v0 + 34);
  *(v0 + 34);
  sub_267EF90D8();

  (v16)(v14, v9, v1);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_33();
  sub_267E86FBC(v14, 0xD000000000000013, 0x8000000267F171E0);
  v32 = *(v0 + 40);
  sub_267EF9528();
  v33 = OUTLINED_FUNCTION_1_36();
  v16(v33);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_33();
  sub_267E86FBC(v12, 0xD000000000000014, 0x8000000267F17140);
  return v35[1];
}

uint64_t sub_267D0F73C()
{
  v1 = sub_267EF6F58();
  v2 = OUTLINED_FUNCTION_58(v1);
  v42 = v3;
  v43 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_267EF2D28();
  v8 = OUTLINED_FUNCTION_58(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_267EF6D88();
  v16 = OUTLINED_FUNCTION_58(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v39 - v24;
  v26 = *(v0 + 16);

  sub_267D0F408();

  sub_267EF6D78();
  sub_267EF2D18();
  sub_267EF2CE8();
  (*(v10 + 8))(v14, v7);
  sub_267EF6CF8();
  sub_267EF6D18();

  sub_267EF6D38();
  sub_267EF6CE8();
  v40 = v18;
  v41 = v15;
  v27 = v15;
  v28 = v39;
  (*(v18 + 16))(v23, v25, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD70, &qword_267F00648);
  sub_267EF8F28();
  sub_267EF6F18();
  sub_267C167B0();
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v29 = sub_267EF8A08();
  __swift_project_value_buffer(v29, qword_280240FB0);

  v30 = sub_267EF89F8();
  v31 = sub_267EF95D8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v44 = v33;
    *v32 = 136315138;
    sub_267EF6F88();
    v34 = sub_267EF8F08();
    v36 = v35;

    v37 = sub_267BA33E8(v34, v36, &v44);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_267B93000, v30, v31, "#AutoSendPersonalizationDataRecorder donated data to SiriRemembers successfully %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x26D60A7B0](v33, -1, -1);
    MEMORY[0x26D60A7B0](v32, -1, -1);
  }

  else
  {
  }

  (*(v42 + 8))(v28, v43);
  return (*(v40 + 8))(v25, v41);
}

void sub_267D0FB70(void *a1)
{
  v1 = [a1 recognition];
  if (!v1)
  {
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 aceRecognition];

  if (!v3 || (v4 = v3, (v5 = sub_267D10354(v4, &selRef_utterances, &qword_28022AD30, 0x277D477A8)) == 0))
  {
LABEL_14:
    v14 = sub_267EF8B08();
    sub_267D10288();
    swift_allocError();
    OUTLINED_FUNCTION_2_33();
    *v15 = v17;
    v15[1] = v16;
    v18 = *MEMORY[0x277D55938];
    (*(*(v14 - 8) + 104))();
    swift_willThrow();

    return;
  }

  v6 = v5;
  v7 = v4;
  if (!sub_267D10354(v7, &selRef_phrases, &qword_28022AD28, 0x277D47720))
  {
LABEL_13:

    goto LABEL_14;
  }

  if (!sub_267BAF0DC(v6))
  {

    goto LABEL_13;
  }

  sub_267BBD0EC(0, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x26D609870](0, v6);
  }

  else
  {
    v8 = *(v6 + 32);
  }

  v24 = v8;
  if (!sub_267D102E0(v8, &selRef_interpretationIndices, &qword_280229538, 0x277CCABB0))
  {
    goto LABEL_18;
  }

  v9 = MEMORY[0x277D84F90];
  v10 = sub_267D0F1C4();
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    sub_267EF9518();

    v19 = sub_267EF8B08();
    sub_267D10288();
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_2_33();
    *v21 = v20 + 14;
    v21[1] = v22;
    v23 = *MEMORY[0x277D55938];
    (*(*(v19 - 8) + 104))();
    swift_willThrow();
  }

  else
  {

    sub_267DE0BDC(v9);
  }
}

_BYTE *storeEnumTagSinglePayload for AutoSendPersonalizationDataRecorder.SendMsgFollowUpValue(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267D10234()
{
  result = qword_28022AD08;
  if (!qword_28022AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AD08);
  }

  return result;
}

unint64_t sub_267D10288()
{
  result = qword_28022AD10;
  if (!qword_28022AD10)
  {
    sub_267EF8B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AD10);
  }

  return result;
}

uint64_t sub_267D102E0(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_267BA9F38(0, a3, a4);
  v8 = sub_267EF92F8();

  return v8;
}

uint64_t sub_267D10354(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v7 = [a1 *a2];

  if (!v7)
  {
    return 0;
  }

  sub_267BA9F38(0, a3, a4);
  v8 = sub_267EF92F8();

  return v8;
}

void sub_267D103D0(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_34_11();
  v10 = *(v4 + 440);
  v11 = OUTLINED_FUNCTION_4_1();
  v13 = v12(v11);
  if (v13 == 17)
  {
    goto LABEL_2;
  }

  if (sub_267D6CFAC(v13) == 0x697461636F4C796DLL && v20 == 0xEA00000000006E6FLL)
  {
  }

  else
  {
    v22 = sub_267EF9EA8();

    if ((v22 & 1) == 0)
    {
LABEL_2:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v14 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v14, qword_280240FB0);
      v15 = sub_267EF89F8();
      v16 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_7_2(v16))
      {
        v17 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v17);
        OUTLINED_FUNCTION_1_1(&dword_267B93000, v18, v19, "#LocationAccessCheckStrategy not location sending request, supported");
        OUTLINED_FUNCTION_29_1();
      }

      a2(0, 0);
      return;
    }
  }

  OUTLINED_FUNCTION_34_11();
  v23 = OUTLINED_FUNCTION_4_1();
  v24(v23);
  sub_267EF7C38();
  sub_267EF7C08();
  v25 = sub_267BE84FC();

  if (v25)
  {
    OUTLINED_FUNCTION_34_11();
    v26 = OUTLINED_FUNCTION_4_1();
    v28 = v27(v26);
    if (v28 == 6)
    {
      goto LABEL_16;
    }

    sub_267D6CE3C(v28);
    if (v42 == 0x656D5F6F69647561 && v41 == 0xED00006567617373)
    {
    }

    else
    {
      v44 = sub_267EF9EA8();

      if ((v44 & 1) == 0)
      {
LABEL_16:
        OUTLINED_FUNCTION_3_34();
        if (sub_267EF3C18() & 1) != 0 || (OUTLINED_FUNCTION_3_34(), (sub_267EF3BF8()) || (OUTLINED_FUNCTION_3_34(), (sub_267EF3C08()) || (OUTLINED_FUNCTION_3_34(), (sub_267EF3C48()) || (OUTLINED_FUNCTION_3_34(), (sub_267EF3C28()))
        {
          v29 = sub_267EF93F8();
          OUTLINED_FUNCTION_46_11(v29);
          sub_267B9AFEC(a1, v57);
          v30 = swift_allocObject();
          v30[2] = 0;
          v30[3] = 0;
          v30[4] = v3;
          v30[5] = a2;
          v30[6] = a3;
          sub_267BE58F4(v57, (v30 + 7));

          OUTLINED_FUNCTION_40_11();
          sub_267E8FA18();

          return;
        }

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v51 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v51, qword_280240FB0);
        v52 = sub_267EF89F8();
        v53 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_7_2(v53))
        {
          v54 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_4_2(v54);
          OUTLINED_FUNCTION_1_1(&dword_267B93000, v55, v56, "#LocationAccessCheckStrategy sending location is unsupported");
          OUTLINED_FUNCTION_29_1();
        }

        sub_267D1353C();
        v37 = OUTLINED_FUNCTION_61_1();
        v39 = v37;
        v40 = 4;
        goto LABEL_39;
      }
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v45 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v45, qword_280240FB0);
    v46 = sub_267EF89F8();
    v47 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_7_2(v47))
    {
      v48 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v48);
      OUTLINED_FUNCTION_1_1(&dword_267B93000, v49, v50, "#LocationAccessCheckStrategy sending location as part of an audio message is unsupported");
      OUTLINED_FUNCTION_29_1();
    }

    sub_267D1353C();
    v37 = OUTLINED_FUNCTION_61_1();
    v39 = v37;
    v40 = 6;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v31 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v31, qword_280240FB0);
    v32 = sub_267EF89F8();
    v33 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_7_2(v33))
    {
      v34 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v34);
      OUTLINED_FUNCTION_1_1(&dword_267B93000, v35, v36, "#LocationAccessCheckStrategy sending location with 3rd party apps is unsupported");
      OUTLINED_FUNCTION_29_1();
    }

    sub_267D1353C();
    v37 = OUTLINED_FUNCTION_61_1();
    v39 = v37;
    v40 = 5;
  }

LABEL_39:
  *v38 = v40;
  a2(v37, 0);
}