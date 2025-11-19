uint64_t sub_1CA5C2D54()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 128);
  *v3 = *v1;
  *(v2 + 136) = v6;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5C2E54()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 112);
    if (**(v0 + 80))
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    WFDateComparisonResultForComparisonOperator(v3, *(v0 + 120), *(v0 + 136), 0, *(v0 + 40), 0);
  }

  else
  {
    v4 = *(v0 + 112);
  }

  OUTLINED_FUNCTION_47_12();
  v5 = OUTLINED_FUNCTION_16_27();

  return v6(v5);
}

uint64_t sub_1CA5C2EF8()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 112);
  swift_unknownObjectRelease_n();
  v2 = *(v0 + 144);
  v3 = OUTLINED_FUNCTION_44();

  return v4(v3);
}

uint64_t sub_1CA5C2F58()
{
  memcpy((v1 + 16), v0, 0x48uLL);
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_1CA5C3010;

  return sub_1CA5C2A64();
}

uint64_t sub_1CA5C3010()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;

  OUTLINED_FUNCTION_2_4();
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

unint64_t sub_1CA5C3104()
{
  result = qword_1EC446B88;
  if (!qword_1EC446B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446B88);
  }

  return result;
}

unint64_t sub_1CA5C3158(uint64_t a1)
{
  result = sub_1CA5C3180();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5C3180()
{
  result = qword_1EC446B90;
  if (!qword_1EC446B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446B90);
  }

  return result;
}

unint64_t sub_1CA5C31D4()
{
  result = qword_1EC446B98;
  if (!qword_1EC446B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446B98);
  }

  return result;
}

unint64_t sub_1CA5C3228(uint64_t a1)
{
  result = sub_1CA5C3250();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5C3250()
{
  result = qword_1EC446BA0;
  if (!qword_1EC446BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446BA0);
  }

  return result;
}

unint64_t sub_1CA5C32A4()
{
  result = qword_1EC446BA8;
  if (!qword_1EC446BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446BA8);
  }

  return result;
}

unint64_t sub_1CA5C32F8(uint64_t a1)
{
  result = sub_1CA5C3320();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5C3320()
{
  result = qword_1EC446BB0;
  if (!qword_1EC446BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446BB0);
  }

  return result;
}

uint64_t sub_1CA5C3374(uint64_t a1)
{
  result = sub_1CA276B98(&qword_1EC446BB8, &qword_1EC4473D0, &qword_1CA98CDD8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA5C33C8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA5C3404(uint64_t a1)
{
  result = sub_1CA276B98(&qword_1EC446BC0, &qword_1EC4473E0, &unk_1CA98F870);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA5C3458(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5C3494()
{
  result = qword_1EC446BC8;
  if (!qword_1EC446BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446BC8);
  }

  return result;
}

unint64_t sub_1CA5C34E8(uint64_t a1)
{
  result = sub_1CA5C3510();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5C3510()
{
  result = qword_1EC446BD0;
  if (!qword_1EC446BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446BD0);
  }

  return result;
}

void sub_1CA5C35E8(uint64_t a1)
{
  OUTLINED_FUNCTION_38_11(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446BF8, &qword_1CA98D010);
  v36 = v2;
  v4 = sub_1CA94D678();
  if (!*(v3 + 16))
  {
LABEL_29:

    *v1 = v4;
    return;
  }

  v35 = v3;
  v5 = 0;
  v6 = v3;
  OUTLINED_FUNCTION_0_59();
  v9 = v8 & v7;
  OUTLINED_FUNCTION_56_8();
  v10 = v4 + 64;
  if (!v9)
  {
LABEL_4:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v1)
      {
        break;
      }

      ++v12;
      if (*(v6 + 8 * v5))
      {
        OUTLINED_FUNCTION_1_41();
        v9 = v14 & v13;
        goto LABEL_9;
      }
    }

    if (v36)
    {
      v31 = *(v3 + 32);
      OUTLINED_FUNCTION_15_21();
      if (v33 != v34)
      {
        OUTLINED_FUNCTION_14_27(v32);
      }

      else
      {
        OUTLINED_FUNCTION_17_18(v32);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_55_7();
LABEL_9:
    OUTLINED_FUNCTION_54_6(v11);
    v17 = (v16 + 16 * v15);
    v18 = v17[1];
    v37 = *v17;
    if ((v36 & 1) == 0)
    {
      sub_1CA94C218();
      sub_1CA94C218();
    }

    v19 = *(v4 + 40);
    sub_1CA94D918();
    sub_1CA94C458();
    v20 = sub_1CA94D968();
    OUTLINED_FUNCTION_5_39(v20);
    v22 = *(v10 + 8 * v21);
    OUTLINED_FUNCTION_34_0();
    if (v23)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_21:
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_33_14(v27);
    v30 = (v29 + 16 * v28);
    *v30 = v37;
    v30[1] = v18;
    OUTLINED_FUNCTION_23_16();
    v3 = v35;
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v23)
    {
      if (v25)
      {
        break;
      }
    }

    if (v24 == v26)
    {
      v24 = 0;
    }

    if (*(v10 + 8 * v24) != -1)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1CA5C37D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_13_31(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  v19 = OUTLINED_FUNCTION_25_17();
  if (!*(v13 + 16))
  {
LABEL_29:

    *v12 = v19;
    OUTLINED_FUNCTION_42_0();
    return;
  }

  v47 = v13;
  v20 = 0;
  v21 = v13;
  OUTLINED_FUNCTION_0_59();
  v24 = v23 & v22;
  OUTLINED_FUNCTION_56_8();
  v25 = v19 + 64;
  if (!v24)
  {
LABEL_4:
    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v20 >= v12)
      {
        break;
      }

      ++v27;
      if (*(v21 + 8 * v20))
      {
        OUTLINED_FUNCTION_1_41();
        v24 = v29 & v28;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      v43 = *(v13 + 32);
      OUTLINED_FUNCTION_15_21();
      if (v45 != v46)
      {
        OUTLINED_FUNCTION_14_27(v44);
      }

      else
      {
        OUTLINED_FUNCTION_17_18(v44);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_58_5();
LABEL_9:
    OUTLINED_FUNCTION_36_12(v26);
    if ((v30 & 1) == 0)
    {
      sub_1CA94C218();
      v31 = v13;
    }

    OUTLINED_FUNCTION_64_7();
    sub_1CA94C458();
    v32 = sub_1CA94D968();
    OUTLINED_FUNCTION_5_39(v32);
    v34 = *(v25 + 8 * v33);
    OUTLINED_FUNCTION_34_0();
    if (v35)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_21:
    OUTLINED_FUNCTION_2_11();
    *(v25 + v39) |= v40;
    v42 = (*(v19 + 48) + 16 * v41);
    *v42 = v14;
    v42[1] = v15;
    *(*(v19 + 56) + 8 * v41) = v13;
    OUTLINED_FUNCTION_23_16();
    v13 = v47;
    if (!v24)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v35)
    {
      if (v37)
      {
        break;
      }
    }

    if (v36 == v38)
    {
      v36 = 0;
    }

    if (*(v25 + 8 * v36) != -1)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1CA5C397C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446A68, &qword_1CA98C7B0);
  v53 = a2;
  v7 = sub_1CA94D678();
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return;
  }

  v50 = v2;
  v51 = v5;
  v8 = 0;
  v9 = v5;
  OUTLINED_FUNCTION_0_59();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 64;
  v16 = 48;
  v52 = v7;
  if (!v12)
  {
LABEL_6:
    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v18;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_1_41();
        v54 = v20 & v19;
        goto LABEL_11;
      }
    }

    if ((v53 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_32;
    }

    v46 = *(v5 + 32);
    OUTLINED_FUNCTION_15_21();
    v3 = v50;
    if (v48 != v49)
    {
      OUTLINED_FUNCTION_14_27(v47);
    }

    else
    {
      OUTLINED_FUNCTION_17_18(v47);
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v12));
    v54 = (v12 - 1) & v12;
LABEL_11:
    v21 = v17 | (v8 << 6);
    v22 = (*(v5 + 48) + 16 * v21);
    v23 = v22[1];
    v57 = *v22;
    v24 = *(v5 + 56) + v21 * v16;
    v25 = *(v24 + 8);
    v26 = *(v24 + 16);
    v27 = *(v24 + 24);
    v55 = v26;
    v56 = *v24;
    v28 = *(v24 + 40);
    if ((v53 & 1) == 0)
    {
      v29 = *(v24 + 32);
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
    }

    v30 = v28;
    v31 = v27;
    v32 = v25;
    v33 = v23;
    v7 = v52;
    v34 = *(v52 + 40);
    sub_1CA94D918();
    sub_1CA94C458();
    v35 = *(v15 + 8 * ((sub_1CA94D968() & ~(-1 << *(v52 + 32))) >> 6));
    OUTLINED_FUNCTION_34_0();
    if (v36)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_23:
    OUTLINED_FUNCTION_2_11();
    *(v15 + v40) |= v41;
    v43 = (*(v52 + 48) + 16 * v42);
    *v43 = v57;
    v43[1] = v33;
    v16 = 48;
    v44 = (*(v52 + 56) + 48 * v42);
    *v44 = v56;
    v44[1] = v32;
    v44[2] = v55;
    v44[3] = v31;
    v44[4] = v45;
    v44[5] = v30;
    ++*(v52 + 16);
    v5 = v51;
    v12 = v54;
    if (!v54)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v36)
    {
      if (v38)
      {
        break;
      }
    }

    if (v37 == v39)
    {
      v37 = 0;
    }

    if (*(v15 + 8 * v37) != -1)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1CA5C3C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_13_31(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  v17 = OUTLINED_FUNCTION_25_17();
  if (!*(v13 + 16))
  {
LABEL_31:

LABEL_32:
    *v12 = v17;
    OUTLINED_FUNCTION_42_0();
    return;
  }

  v48 = v12;
  v18 = 0;
  OUTLINED_FUNCTION_0_59();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  v24 = v17 + 64;
  if ((v20 & v19) == 0)
  {
LABEL_4:
    v26 = v18;
    while (1)
    {
      v18 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v18 >= v23)
      {
        break;
      }

      ++v26;
      if (*(v13 + 8 * v18))
      {
        OUTLINED_FUNCTION_1_41();
        v21 = v28 & v27;
        goto LABEL_9;
      }
    }

    if ((a12 & 1) == 0)
    {

      v12 = v48;
      goto LABEL_32;
    }

    v44 = *(v13 + 32);
    OUTLINED_FUNCTION_15_21();
    v12 = v48;
    if (v46 != v47)
    {
      OUTLINED_FUNCTION_14_27(v45);
    }

    else
    {
      OUTLINED_FUNCTION_17_18(v45);
    }

    *(v13 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_9:
    v29 = v25 | (v18 << 6);
    v30 = *(*(v13 + 48) + 8 * v29);
    v31 = *(*(v13 + 56) + 8 * v29);
    if ((a12 & 1) == 0)
    {
      v32 = v30;
      sub_1CA94C218();
    }

    OUTLINED_FUNCTION_64_7();
    sub_1CA94D938();
    if (v30)
    {
      v33 = v30;
      sub_1CA94CFE8();
    }

    v34 = sub_1CA94D968();
    OUTLINED_FUNCTION_5_39(v34);
    v36 = *(v24 + 8 * v35);
    OUTLINED_FUNCTION_34_0();
    if (v37)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_23:
    OUTLINED_FUNCTION_2_11();
    *(v24 + v41) |= v42;
    *(*(v17 + 48) + 8 * v43) = v30;
    *(*(v17 + 56) + 8 * v43) = v31;
    OUTLINED_FUNCTION_23_16();
    if (!v21)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v37)
    {
      if (v39)
      {
        break;
      }
    }

    if (v38 == v40)
    {
      v38 = 0;
    }

    if (*(v24 + 8 * v38) != -1)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1CA5C3E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_13_31(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446BE0, &qword_1CA98FFF0);
  v17 = OUTLINED_FUNCTION_25_17();
  if (!*(v13 + 16))
  {
LABEL_29:

    *v12 = v17;
    OUTLINED_FUNCTION_42_0();
    return;
  }

  v44 = v13;
  v18 = 0;
  v19 = v13;
  OUTLINED_FUNCTION_0_59();
  v22 = v21 & v20;
  OUTLINED_FUNCTION_56_8();
  v23 = v17 + 64;
  if (!v22)
  {
LABEL_4:
    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v18 >= v12)
      {
        break;
      }

      ++v25;
      if (*(v19 + 8 * v18))
      {
        OUTLINED_FUNCTION_1_41();
        v22 = v27 & v26;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      v40 = *(v13 + 32);
      OUTLINED_FUNCTION_15_21();
      if (v42 != v43)
      {
        OUTLINED_FUNCTION_14_27(v41);
      }

      else
      {
        OUTLINED_FUNCTION_17_18(v41);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_58_5();
LABEL_9:
    OUTLINED_FUNCTION_36_12(v24);
    if ((v28 & 1) == 0)
    {
      sub_1CA94C218();
    }

    OUTLINED_FUNCTION_64_7();
    sub_1CA94C458();
    v29 = sub_1CA94D968();
    OUTLINED_FUNCTION_5_39(v29);
    v31 = *(v23 + 8 * v30);
    OUTLINED_FUNCTION_34_0();
    if (v32)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_21:
    OUTLINED_FUNCTION_2_11();
    *(v23 + v36) |= v37;
    v39 = (*(v17 + 48) + 16 * v38);
    *v39 = v14;
    v39[1] = v15;
    *(*(v17 + 56) + 8 * v38) = v13;
    OUTLINED_FUNCTION_23_16();
    v13 = v44;
    if (!v22)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v32)
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

    if (*(v23 + 8 * v33) != -1)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_1CA5C3FA4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1CA986F60;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1CA5C4008(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v59 = a5;
  sub_1CA5C436C(a1, a2, a3, v54);
  v7 = v54[1];
  v8 = v56;
  v9 = v57;
  v49 = v58;
  v50 = v54[0];
  v46 = v55;
  v10 = (v55 + 64) >> 6;
  sub_1CA94C218();
  v47 = a3;

  v48 = v7;
  if (v9)
  {
    while (1)
    {
      v51 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v50 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v50 + 56) + 8 * v13);
      v53[0] = *v14;
      v53[1] = v15;
      v53[2] = v16;
      sub_1CA94C218();
      v17 = v16;
      v49(v52, v53);

      v18 = v52[0];
      v19 = v52[1];
      v20 = v52[2];
      v21 = *v59;
      v27 = sub_1CA271BF8();
      v28 = *(v21 + 16);
      v29 = (v22 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v22;
      if (*(v21 + 24) >= v30)
      {
        if ((v51 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444388, &qword_1CA9833C0);
          sub_1CA94D598();
        }
      }

      else
      {
        v32 = v59;
        sub_1CA5C37D4(v30, v51 & 1, &unk_1EC446BD8, &unk_1CA98CFD8, v23, v24, v25, v26, v45, v46, v47, SBYTE4(v47));
        v33 = *v32;
        v34 = sub_1CA271BF8();
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_24;
        }

        v27 = v34;
      }

      v9 &= v9 - 1;
      v36 = *v59;
      if (v31)
      {
        v37 = *(v36[7] + 8 * v27);

        v38 = v36[7];
        v39 = *(v38 + 8 * v27);
        *(v38 + 8 * v27) = v37;
      }

      else
      {
        v36[(v27 >> 6) + 8] |= 1 << v27;
        v40 = (v36[6] + 16 * v27);
        *v40 = v18;
        v40[1] = v19;
        *(v36[7] + 8 * v27) = v20;
        v41 = v36[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_23;
        }

        v36[2] = v43;
      }

      a4 = 1;
      v8 = v11;
      v7 = v48;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_1CA28A224();
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v51 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA5C42D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;
  sub_1CA94C218();
  sub_1CA94C218();
  return a2;
}

uint64_t sub_1CA5C4320(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a4;
  sub_1CA94C218();
  v6 = a4;
  return a2;
}

uint64_t sub_1CA5C436C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1CA5C43A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA5C4320(&v6, *a1, *(a1 + 8), *(a1 + 16));
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_1CA5C4414(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1CA5C4550(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1CA5C478C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1CA5C47CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CA5C483C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1CA5C487C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1CA5C490C()
{
  result = qword_1EC446C20;
  if (!qword_1EC446C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446C20);
  }

  return result;
}

unint64_t sub_1CA5C4964()
{
  result = qword_1EC446C28;
  if (!qword_1EC446C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446C28);
  }

  return result;
}

unint64_t sub_1CA5C49B8()
{
  result = qword_1EC446C48;
  if (!qword_1EC446C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446C48);
  }

  return result;
}

unint64_t sub_1CA5C4A0C()
{
  result = qword_1EC446C50;
  if (!qword_1EC446C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446C50);
  }

  return result;
}

unint64_t sub_1CA5C4A60()
{
  result = qword_1EC446C58;
  if (!qword_1EC446C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446C58);
  }

  return result;
}

unint64_t sub_1CA5C4AB4()
{
  result = qword_1EC446C90;
  if (!qword_1EC446C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446C90);
  }

  return result;
}

unint64_t sub_1CA5C4B08()
{
  result = qword_1EC446C98;
  if (!qword_1EC446C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446C98);
  }

  return result;
}

unint64_t sub_1CA5C4B5C()
{
  result = qword_1EC446CA0;
  if (!qword_1EC446CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446CA0);
  }

  return result;
}

_BYTE *sub_1CA5C4BE0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA5C4CE0()
{
  result = qword_1EC446CC0;
  if (!qword_1EC446CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446CC0);
  }

  return result;
}

unint64_t sub_1CA5C4D38()
{
  result = qword_1EC446CC8;
  if (!qword_1EC446CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446CC8);
  }

  return result;
}

unint64_t sub_1CA5C4D90()
{
  result = qword_1EC446CD0;
  if (!qword_1EC446CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446CD0);
  }

  return result;
}

unint64_t sub_1CA5C4DE8()
{
  result = qword_1EC446CD8;
  if (!qword_1EC446CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446CD8);
  }

  return result;
}

unint64_t sub_1CA5C4E40()
{
  result = qword_1EC446CE0;
  if (!qword_1EC446CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446CE0);
  }

  return result;
}

unint64_t sub_1CA5C4E98()
{
  result = qword_1EC446CE8;
  if (!qword_1EC446CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446CE8);
  }

  return result;
}

unint64_t sub_1CA5C4EF0()
{
  result = qword_1EC446CF0;
  if (!qword_1EC446CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446CF0);
  }

  return result;
}

unint64_t sub_1CA5C4F48()
{
  result = qword_1EC446CF8;
  if (!qword_1EC446CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446CF8);
  }

  return result;
}

unint64_t sub_1CA5C4FA0()
{
  result = qword_1EC446D00;
  if (!qword_1EC446D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D00);
  }

  return result;
}

unint64_t sub_1CA5C4FF8()
{
  result = qword_1EC446D08;
  if (!qword_1EC446D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D08);
  }

  return result;
}

unint64_t sub_1CA5C5050()
{
  result = qword_1EC446D10;
  if (!qword_1EC446D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D10);
  }

  return result;
}

unint64_t sub_1CA5C50A8()
{
  result = qword_1EC446D18;
  if (!qword_1EC446D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D18);
  }

  return result;
}

unint64_t sub_1CA5C5100()
{
  result = qword_1EC446D20;
  if (!qword_1EC446D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D20);
  }

  return result;
}

unint64_t sub_1CA5C5158()
{
  result = qword_1EC446D28;
  if (!qword_1EC446D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_47_12()
{

  return swift_unknownObjectRelease_n();
}

uint64_t sub_1CA5C5234(uint64_t a1, uint64_t a2)
{
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (v3)
  {
    v4 = v3;
    swift_unknownObjectRetain();
    v5 = [v4 variable];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 userVisibleStringsForUseCase_];
      type metadata accessor for WFUserVisibleString();
      sub_1CA3434EC();
      v8 = sub_1CA94C8F8();
      swift_unknownObjectRelease();

      return v8;
    }

    swift_unknownObjectRelease();
  }

  if (!(MEMORY[0x1E69E7CC0] >> 62) || !sub_1CA94D328())
  {
    return MEMORY[0x1E69E7CD0];
  }

  sub_1CA2E85F8();
  return v10;
}

id sub_1CA5C53E8(uint64_t a1)
{
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  swift_unknownObjectRetain();
  v4 = [v3 variable];
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_5:
    swift_unknownObjectRetain();
    return a1;
  }

  v5 = v4;
  swift_getObjectType();
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v7 = sub_1CA94C1A8();
  v8 = [v5 rewrittenWithStrings_];

  v9 = [v6 initWithVariable_];
  swift_unknownObjectRelease();

  return v9;
}

uint64_t sub_1CA5C55C4(uint64_t a1)
{
  v2 = sub_1CA62E6C4(a1, *v1, *(v1 + 8), *(v1 + 16));
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = objc_allocWithZone(type metadata accessor for MeasurementUnitPickerParameter());
  sub_1CA5C60A8(1953066613, 0xE400000000000000, v5);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1CA3225FC();
  return v2;
}

uint64_t sub_1CA5C5664(uint64_t a1, uint64_t *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v4 = *a2;
  v5 = a2[1];
  v3[4] = *a2;
  v3[5] = v5;
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  v3[6] = v9;
  *v9 = v3;
  v9[1] = sub_1CA5C5728;

  return sub_1CA62EC48(v4, v5, v6, v7);
}

uint64_t sub_1CA5C5728(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v2;
  OUTLINED_FUNCTION_1();
  *v10 = v9;

  if (v1)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 56) = a1;
    v13 = OUTLINED_FUNCTION_3_46();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1CA5C585C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  [*(v0 + 16) setNumber_];

  v4 = *(v2 + 24);
  v3 = *(v2 + 32);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1CA5C5914;
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);

  return sub_1CA5C5AB8(v7, v6, v4, v3);
}

uint64_t sub_1CA5C5914(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v2;
  OUTLINED_FUNCTION_1();
  *v10 = v9;

  if (v1)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 72) = a1;
    v13 = OUTLINED_FUNCTION_3_46();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1CA5C5A48()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 72);
  [*(v0 + 16) setMeasurementUnit_];

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA5C5AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA5C5ADC, 0, 0);
}

uint64_t sub_1CA5C5ADC()
{
  if (*(v0[2] + 16) && (v1 = v0[4], v2 = v0[5], v3 = sub_1CA271BF8(), (v4 & 1) != 0))
  {
    v5 = *(*(v0[2] + 56) + 8 * v3);
    v0[6] = v5;
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      v6 = swift_task_alloc();
      v0[7] = v6;
      *v6 = v0;
      v6[1] = sub_1CA5C5CA0;
      v7 = v0[3];

      return sub_1CA32BD18(v7);
    }

    else
    {
      sub_1CA2A741C();
      swift_allocError();
      *v10 = v5;
      *(v10 + 32) = 1;
      swift_willThrow();
      swift_unknownObjectRetain();
      v11 = v0[6];
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v12();
    }
  }

  else
  {
    v9 = v0[1];

    return v9(0);
  }
}

uint64_t sub_1CA5C5CA0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v1;
  *(v2 + 64) = v6;
  *(v2 + 72) = v0;

  if (v0)
  {
    v7 = sub_1CA2A630C;
  }

  else
  {
    v7 = sub_1CA5C5DA8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA5C5DA8()
{
  v1 = v0[8];
  if (!v1)
  {
    v6 = v0[6];
    swift_unknownObjectRelease();
    v4 = 0;
    goto LABEL_5;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = v0[6];
  if (v2)
  {
    v4 = v2;
    v5 = v0[6];
    swift_unknownObjectRelease();
LABEL_5:
    v7 = v0[6];
    swift_unknownObjectRelease();
    v8 = v0[1];

    return v8(v4);
  }

  sub_1CA2A741C();
  swift_allocError();
  v11 = v10;
  *(v10 + 24) = swift_getObjectType();
  *v11 = v1;
  *(v11 + 32) = 2;
  swift_willThrow();
  swift_unknownObjectRelease();
  v12 = v0[6];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v13();
}

uint64_t sub_1CA5C5EF0(uint64_t a1, uint64_t *a2)
{
  v6 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  *(v3 + 48) = v2[2];
  v7 = swift_task_alloc();
  *(v3 + 64) = v7;
  *v7 = v3;
  v7[1] = sub_1CA5C5FA8;

  return sub_1CA5C5664(a1, a2);
}

uint64_t sub_1CA5C5FA8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_1();
  *v4 = v3;

  OUTLINED_FUNCTION_5();

  return v5();
}

id sub_1CA5C60A8(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC11WorkflowKitP33_F3D70BA8F8258C8950438AAE8016123730MeasurementUnitPickerParameter_unitType] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813C0;
  v8 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  *(inited + 64) = v8;
  *(inited + 72) = @"HideClearButton";
  v9 = MEMORY[0x1E69E6370];
  *(inited + 80) = 1;
  *(inited + 104) = v9;
  *(inited + 112) = @"DisallowedVariableTypes";
  sub_1CA25B3D0(0, &qword_1EC444F20, off_1E836E2F8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = a3;
  v12 = v3;
  v13 = @"Key";
  v14 = @"HideClearButton";
  v15 = @"DisallowedVariableTypes";
  v16 = [ObjCClassFromMetadata allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_1CA5C6850(&qword_1EC441A60, type metadata accessor for WFVariableType);
  v17 = sub_1CA94C8F8();

  sub_1CA3E4650(v17);
  v19 = v18;

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 120) = v19;
  _s3__C3KeyVMa_0(0);
  sub_1CA5C6850(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v20 = sub_1CA2F864C();
  v23.receiver = v12;
  v23.super_class = type metadata accessor for MeasurementUnitPickerParameter();
  v21 = objc_msgSendSuper2(&v23, sel_initWithDefinition_, v20);

  return v21;
}

id sub_1CA5C6344()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
  result = [v0 setUnitStyle_];
  qword_1EC446D30 = v0;
  return result;
}

uint64_t sub_1CA5C6394()
{
  v1 = [objc_opt_self() availableUnitsForUnitType_];
  sub_1CA25B3D0(0, &qword_1EC443828, 0x1E696AFD0);
  v2 = sub_1CA94C658();

  return v2;
}

uint64_t sub_1CA5C648C()
{
  v0 = sub_1CA5C6394();
  v1 = sub_1CA25B410();
  if (v1)
  {
    v2 = v1;
    v10 = MEMORY[0x1E69E7CC0];
    result = sub_1CA94D508();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1CCAA22D0](v4, v0);
        }

        else
        {
          v5 = *(v0 + 8 * v4 + 32);
        }

        v6 = v5;
        ++v4;
        v7 = [objc_allocWithZone(WFMeasurementUnitSubstitutableState) initWithValue_];
        v8 = WFVariableSubstitutableParameterStateUpcast(v7);

        sub_1CA94D4D8();
        v9 = *(v10 + 16);
        sub_1CA94D518();
        sub_1CA94D528();
        sub_1CA94D4E8();
      }

      while (v2 != v4);

      return v10;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1CA5C65C4(void *a1)
{
  sub_1CA25B3D0(0, &unk_1EC446D40, off_1E836EB90);
  swift_getObjCClassFromMetadata();
  if (!WFVariableSubstitutableParameterStateDowncast(a1))
  {
    return 0;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = [v2 value]) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v4 = v3;
  if (qword_1EC442DA8 != -1)
  {
    swift_once();
  }

  v5 = [qword_1EC446D30 stringFromUnit_];
  v6 = sub_1CA94C3A8();
  swift_unknownObjectRelease();

  return v6;
}

id sub_1CA5C67D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MeasurementUnitPickerParameter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA5C6850(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1CA5C68DC()
{
  v192 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001CLL;
  *(inited + 48) = 0x80000001CA9D2E40;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v208 = v12;
  v209 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v187 - v209;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v204 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v207 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v205 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v187 - v205;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v206 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v202 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v26 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v201 = v187;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v187 - v209;
  sub_1CA948D98();
  v31 = [v204 bundleURL];
  v203 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v187 - v205;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v33);
  *(v21 + 64) = v206;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v202;
  v37 = sub_1CA6B3784();
  v38 = v203;
  v203[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconColor";
  v38[20] = 1702194242;
  v38[21] = 0xE400000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"IconSymbol";
  v38[25] = 0xD000000000000015;
  v38[26] = 0x80000001CA99C0D0;
  v38[28] = v39;
  v38[29] = @"Input";
  v40 = v38;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v41 = swift_initStackObject();
  v200 = xmmword_1CA981350;
  *(v41 + 16) = xmmword_1CA981350;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 48) = 1;
  *(v41 + 72) = v42;
  strcpy((v41 + 80), "ParameterKey");
  *(v41 + 93) = 0;
  *(v41 + 94) = -5120;
  *(v41 + 96) = 0x7475706E494657;
  *(v41 + 104) = 0xE700000000000000;
  *(v41 + 120) = v39;
  *(v41 + 128) = 0x6465726975716552;
  *(v41 + 136) = 0xE800000000000000;
  *(v41 + 144) = 1;
  *(v41 + 168) = v42;
  *(v41 + 176) = 0x7365707954;
  v43 = v42;
  *(v41 + 184) = 0xE500000000000000;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 216) = v202;
  *(v41 + 192) = &unk_1F4A08858;
  v44 = @"IconColor";
  v45 = @"IconSymbol";
  v46 = @"Input";
  v47 = sub_1CA94C1E8();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v201 = v48;
  v40[30] = v47;
  v40[33] = v48;
  v40[34] = @"InputPassthrough";
  *(v40 + 280) = 0;
  v40[38] = v43;
  v40[39] = @"Name";
  v49 = @"InputPassthrough";
  v50 = @"Name";
  v51 = sub_1CA94C438();
  v196 = v52;
  v197 = v51;
  v53 = sub_1CA94C438();
  v195 = v54;
  v198 = v187;
  MEMORY[0x1EEE9AC00](v53);
  v55 = v209;
  sub_1CA948D98();
  v56 = v204;
  v57 = [v204 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = v187 - v205;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v197, v196, v53, v195, 0, 0, v187 - v55, v58);
  v61 = v203;
  v203[40] = v60;
  v62 = v206;
  v61[43] = v206;
  v61[44] = @"Output";
  v63 = swift_initStackObject();
  *(v63 + 16) = v200;
  *(v63 + 32) = 0x75736F6C63736944;
  *(v63 + 40) = 0xEF6C6576654C6572;
  *(v63 + 48) = 0x63696C627550;
  *(v63 + 56) = 0xE600000000000000;
  *(v63 + 72) = MEMORY[0x1E69E6158];
  *(v63 + 80) = 0x656C7069746C754DLL;
  *(v63 + 88) = 0xE800000000000000;
  *(v63 + 96) = 1;
  *(v63 + 120) = MEMORY[0x1E69E6370];
  *(v63 + 128) = 0x614E74757074754FLL;
  *(v63 + 136) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v65 = sub_1CA94C438();
  v197 = v66;
  v198 = v65;
  v67 = sub_1CA94C438();
  v69 = v68;
  v199 = v187;
  MEMORY[0x1EEE9AC00](v67);
  sub_1CA948D98();
  v70 = [v56 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = v187 - v205;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 144) = sub_1CA2F9F14(v198, v197, v67, v69, 0, 0, v187 - v55, v71);
  *(v63 + 168) = v62;
  *(v63 + 176) = 0x7365707954;
  *(v63 + 216) = v202;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 192) = &unk_1F4A08888;
  v73 = MEMORY[0x1E69E6158];
  v74 = sub_1CA94C1E8();
  v75 = v203;
  v203[45] = v74;
  v75[48] = v201;
  v75[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v202 = swift_allocObject();
  *(v202 + 16) = xmmword_1CA981570;
  v201 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v76 = swift_allocObject();
  *(v76 + 16) = v200;
  *(v76 + 32) = @"Class";
  *(v76 + 40) = 0xD000000000000019;
  *(v76 + 48) = 0x80000001CA99B030;
  *(v76 + 64) = v73;
  *(v76 + 72) = @"Key";
  *(v76 + 80) = 0x7475706E494657;
  *(v76 + 88) = 0xE700000000000000;
  *(v76 + 104) = v73;
  *(v76 + 112) = @"Label";
  v77 = @"Class";
  v78 = @"Key";
  v79 = @"Label";
  v80 = v77;
  v81 = v78;
  v82 = v79;
  v195 = v80;
  v194 = v81;
  v196 = v82;
  v83 = @"Parameters";
  v197 = sub_1CA94C438();
  v193 = v84;
  v85 = sub_1CA94C438();
  v191 = v86;
  v198 = v187;
  MEMORY[0x1EEE9AC00](v85);
  v87 = v187 - v209;
  sub_1CA948D98();
  v88 = v204;
  v89 = [v204 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = v205;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 120) = sub_1CA2F9F14(v197, v193, v85, v191, 0, 0, v87, v187 - v90);
  v92 = v206;
  *(v76 + 144) = v206;
  *(v76 + 152) = @"Placeholder";
  v191 = @"Placeholder";
  v197 = sub_1CA94C438();
  v193 = v93;
  v94 = sub_1CA94C438();
  v190 = v95;
  v198 = v187;
  MEMORY[0x1EEE9AC00](v94);
  v96 = v187 - v209;
  sub_1CA948D98();
  v97 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v99 = sub_1CA2F9F14(v197, v193, v94, v190, 0, 0, v96, v187 - v90);
  *(v76 + 184) = v92;
  *(v76 + 160) = v99;
  _s3__C3KeyVMa_0(0);
  v198 = v100;
  v197 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v202 + 32) = sub_1CA2F864C();
  v101 = swift_allocObject();
  *(v101 + 16) = v200;
  v103 = v194;
  v102 = v195;
  *(v101 + 32) = v195;
  *(v101 + 40) = 0xD00000000000002ALL;
  *(v101 + 48) = 0x80000001CA9D2F30;
  v104 = MEMORY[0x1E69E6158];
  *(v101 + 64) = MEMORY[0x1E69E6158];
  *(v101 + 72) = v103;
  *(v101 + 80) = 0xD000000000000021;
  *(v101 + 88) = 0x80000001CA9D2F60;
  v105 = v196;
  *(v101 + 104) = v104;
  *(v101 + 112) = v105;
  v193 = v102;
  v194 = v103;
  v195 = v105;
  v106 = sub_1CA94C438();
  v189 = v107;
  v190 = v106;
  v108 = sub_1CA94C438();
  v188 = v109;
  v196 = v187;
  MEMORY[0x1EEE9AC00](v108);
  v110 = v209;
  sub_1CA948D98();
  v111 = [v88 bundleURL];
  v187[1] = v187;
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v101 + 120) = sub_1CA2F9F14(v190, v189, v108, v188, 0, 0, v187 - v110, v187 - v90);
  v113 = v206;
  v114 = v191;
  *(v101 + 144) = v206;
  *(v101 + 152) = v114;
  v196 = v114;
  v115 = sub_1CA94C438();
  v189 = v116;
  v190 = v115;
  v188 = sub_1CA94C438();
  v118 = v117;
  v191 = v187;
  MEMORY[0x1EEE9AC00](v188);
  v119 = v187 - v110;
  sub_1CA948D98();
  v120 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122 = sub_1CA2F9F14(v190, v189, v188, v118, 0, 0, v119, v187 - v90);
  *(v101 + 184) = v113;
  *(v101 + 160) = v122;
  sub_1CA94C1E8();
  *(v202 + 40) = sub_1CA2F864C();
  v123 = swift_allocObject();
  *(v123 + 16) = v200;
  *(v123 + 32) = v193;
  *(v123 + 40) = 0xD000000000000029;
  *(v123 + 48) = 0x80000001CA9D2FD0;
  v124 = MEMORY[0x1E69E6158];
  v125 = v194;
  *(v123 + 64) = MEMORY[0x1E69E6158];
  *(v123 + 72) = v125;
  *(v123 + 80) = 0xD000000000000020;
  *(v123 + 88) = 0x80000001CA9D3000;
  v126 = v195;
  *(v123 + 104) = v124;
  *(v123 + 112) = v126;
  v127 = sub_1CA94C438();
  v190 = v128;
  v191 = v127;
  v129 = sub_1CA94C438();
  v189 = v130;
  *&v200 = v187;
  MEMORY[0x1EEE9AC00](v129);
  v131 = v209;
  sub_1CA948D98();
  v132 = v204;
  v133 = [v204 bundleURL];
  v188 = v187;
  MEMORY[0x1EEE9AC00](v133);
  v134 = v205;
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v123 + 120) = sub_1CA2F9F14(v191, v190, v129, v189, 0, 0, v187 - v131, v187 - v134);
  v136 = v206;
  v137 = v196;
  *(v123 + 144) = v206;
  *(v123 + 152) = v137;
  v138 = sub_1CA94C438();
  v190 = v139;
  v191 = v138;
  v140 = sub_1CA94C438();
  v142 = v141;
  *&v200 = v187;
  MEMORY[0x1EEE9AC00](v140);
  v143 = v187 - v131;
  sub_1CA948D98();
  v144 = [v132 bundleURL];
  MEMORY[0x1EEE9AC00](v144);
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v146 = sub_1CA2F9F14(v191, v190, v140, v142, 0, 0, v143, v187 - v134);
  *(v123 + 184) = v136;
  *(v123 + 160) = v146;
  sub_1CA94C1E8();
  *(v202 + 48) = sub_1CA2F864C();
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_1CA981400;
  *(v147 + 32) = @"AllowsDecimalNumbers";
  *(v147 + 40) = 0;
  v148 = v193;
  *(v147 + 64) = MEMORY[0x1E69E6370];
  *(v147 + 72) = v148;
  *(v147 + 80) = 0xD000000000000016;
  *(v147 + 88) = 0x80000001CA99C180;
  v149 = MEMORY[0x1E69E6158];
  *(v147 + 104) = MEMORY[0x1E69E6158];
  *(v147 + 112) = @"DefaultValue";
  *(v147 + 120) = 300;
  v150 = v194;
  *(v147 + 144) = MEMORY[0x1E69E6530];
  *(v147 + 152) = v150;
  *(v147 + 160) = 0xD000000000000020;
  *(v147 + 168) = 0x80000001CA9D3060;
  v151 = v195;
  *(v147 + 184) = v149;
  *(v147 + 192) = v151;
  v152 = @"AllowsDecimalNumbers";
  v153 = @"DefaultValue";
  v199 = sub_1CA94C438();
  v195 = v154;
  v155 = sub_1CA94C438();
  v194 = v156;
  *&v200 = v187;
  MEMORY[0x1EEE9AC00](v155);
  v157 = v187 - v209;
  sub_1CA948D98();
  v158 = v204;
  v159 = [v204 bundleURL];
  v193 = v187;
  MEMORY[0x1EEE9AC00](v159);
  sub_1CA948B68();

  v160 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v147 + 200) = sub_1CA2F9F14(v199, v195, v155, v194, 0, 0, v157, v187 - v134);
  v161 = v196;
  *(v147 + 224) = v206;
  *(v147 + 232) = v161;
  v199 = sub_1CA94C438();
  v196 = v162;
  v163 = sub_1CA94C438();
  v195 = v164;
  *&v200 = v187;
  MEMORY[0x1EEE9AC00](v163);
  v165 = v187 - v209;
  sub_1CA948D98();
  v166 = [v158 bundleURL];
  MEMORY[0x1EEE9AC00](v166);
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v147 + 240) = sub_1CA2F9F14(v199, v196, v163, v195, 0, 0, v165, v187 - v134);
  *(v147 + 264) = v206;
  *(v147 + 272) = @"TextAlignment";
  *(v147 + 304) = MEMORY[0x1E69E6158];
  *(v147 + 280) = 0x7468676952;
  *(v147 + 288) = 0xE500000000000000;
  v168 = @"TextAlignment";
  sub_1CA94C1E8();
  v169 = sub_1CA2F864C();
  v170 = v202;
  *(v202 + 56) = v169;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v172 = v203;
  v203[50] = v170;
  v172[53] = v171;
  v172[54] = @"ParameterSummary";
  v173 = @"ParameterSummary";
  v174 = sub_1CA94C438();
  v176 = v175;
  v177 = sub_1CA94C438();
  v179 = v178;
  v206 = v187;
  MEMORY[0x1EEE9AC00](v177);
  v180 = v187 - v209;
  sub_1CA948D98();
  v181 = [v204 bundleURL];
  MEMORY[0x1EEE9AC00](v181);
  v182 = v187 - v205;
  sub_1CA948B68();

  v183 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v184 = sub_1CA2F9F14(v174, v176, v177, v179, 0, 0, v180, v182);
  v185 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v172[58] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v172[55] = v185;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5C80D0()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconName";
  *(inited + 144) = v1;
  strcpy((inited + 120), "TVRemote_Sleep");
  *(inited + 135) = -18;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000012;
  *(inited + 168) = 0x80000001CA9D3200;
  *(inited + 184) = v1;
  *(inited + 192) = @"Output";
  v7 = @"Output";
  v8 = sub_1CA94C1E8();
  *(inited + 224) = v5;
  *(inited + 200) = v8;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t TypedValueRepresentableParameterStateContext.init(action:parameter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TypedValueRepresentableError.hashValue.getter()
{
  v1 = *v0;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  return sub_1CA94D968();
}

uint64_t static TypedValueRepresentableParameterState.typeIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = swift_allocObject();
  v3 = *MEMORY[0x1E69E0FB0];
  v2[2] = sub_1CA94C3A8();
  v2[3] = v4;
  swift_getMetatypeMetadata();
  v2[4] = sub_1CA94C408();
  v2[5] = v5;
  *a1 = v2;
  v6 = *MEMORY[0x1E69DB098];
  v7 = sub_1CA94ADC8();
  return (*(*(v7 - 8) + 104))(a1, v6, v7);
}

unint64_t sub_1CA5C8454()
{
  result = qword_1EC446D50;
  if (!qword_1EC446D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TypedValueRepresentableError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of TypedValueRepresentableParameterState.typedValue(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1CA3601B4;

  return v13(a1, a2, a3, a4);
}

id sub_1CA5C8754()
{
  v31[1] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981400;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A51B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Name";
  v6 = @"Name";
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA94C438();
  v12 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v7, v9, v10, v12, 0, 0, v16, v21);
  v24 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v23;
  *(inited + 144) = v24;
  *(inited + 152) = @"RemoteExecuteOnPlatforms";
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F4A08978;
  *(inited + 200) = &unk_1F4A089A8;
  *(inited + 184) = v25;
  *(inited + 192) = @"RequiredResources";
  *(inited + 224) = v25;
  *(inited + 232) = @"ResidentCompatible";
  *(inited + 264) = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  v26 = @"RemoteExecuteOnPlatforms";
  v27 = @"RequiredResources";
  v28 = @"ResidentCompatible";
  v29 = sub_1CA94C368();
  *(inited + 304) = MEMORY[0x1E69E6158];
  *(inited + 272) = v29;
  *(inited + 280) = 0xD00000000000001ALL;
  *(inited + 288) = 0x80000001CA9938C0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id RowTemplatePropertySetterParameterState.propertyName.getter()
{
  result = *(v0 + 24);
  if (result)
  {
    result = [result value];
    if (result)
    {
      v2 = result;
      sub_1CA94C398();

      return 0;
    }
  }

  return result;
}

uint64_t RowTemplatePropertySetterParameterState.identity.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1CA94C218();
  return v1;
}

void *RowTemplatePropertySetterParameterState.subject.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_1CA5C8BF4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  RowTemplatePropertySetterParameterState.subject.setter(v1);
}

void RowTemplatePropertySetterParameterState.subject.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 2);
  swift_unknownObjectRelease();
  *(v2 + 2) = 0;

  *(v2 + 3) = a1;
  v10 = *v2;
  v11 = v2[1];
  *v12 = v2[2];
  *&v12[12] = *(v2 + 44);
  v5 = sub_1CA5C8D08();
  v6 = [objc_opt_self() BOOLValueType];
  v7 = v6;
  if (!v5)
  {

    goto LABEL_5;
  }

  sub_1CA25B3D0(0, &unk_1EC441AB0, 0x1E69ACAA0);
  v8 = sub_1CA94CFD8();

  if ((v8 & 1) == 0)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = 1;
LABEL_6:
  *(v2 + 32) = v9;
}

uint64_t sub_1CA5C8D08()
{
  v1 = v0[3];
  if (v1)
  {
    v3 = *v0;
    v2 = v0[1];
    v4 = [v1 value];
    if (v4)
    {
      v5 = v4;
      sub_1CA94C398();
    }
  }

  return 0;
}

void (*RowTemplatePropertySetterParameterState.subject.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1CA5C8E3C;
}

void sub_1CA5C8E3C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = v2;
    RowTemplatePropertySetterParameterState.subject.setter(v2);
  }

  else
  {
    RowTemplatePropertySetterParameterState.subject.setter(*a1);
  }
}

uint64_t RowTemplatePropertySetterParameterState.selectedOperator.setter(_BYTE *a1)
{
  *(v1 + 32) = *a1;
  v2 = *(v1 + 16);
  result = swift_unknownObjectRelease();
  *(v1 + 16) = 0;
  return result;
}

uint64_t (*RowTemplatePropertySetterParameterState.selectedOperator.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32);
  return sub_1CA5C8F6C;
}

uint64_t RowTemplatePropertySetterParameterState.containedVariables.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return UpdatableParameterState.containedVariables.getter();
}

uint64_t RowTemplatePropertySetterParameterState.operators.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v11[0] = *(v0 + 2);
  *(v11 + 12) = *(v0 + 44);
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v6 = [v3 value];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      sub_1CA94C398();
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

id RowTemplatePropertySetterParameterState.serializedRepresentation.getter()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 value];
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457D8, &qword_1CA987B78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981310;
    strcpy((inited + 32), "WFRowSubject");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = v2;
    sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
    v4 = v2;
    sub_1CA94C1E8();
    v2 = sub_1CA94C1A8();
  }

  return v2;
}

__n128 RowTemplatePropertySetterParameterState.init(updatableState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 32);
  v6 = sub_1CA948D28();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_37();
  v12 = sub_1CA948CC8();
  v14 = v13;
  v16 = *(a1 + 16);
  v17 = *a1;
  (*(v9 + 8))(v2, v6);
  *(a2 + 40) = v12;
  *(a2 + 48) = v14;
  *(a2 + 56) = 16842752;
  result = v17;
  *a2 = v17;
  *(a2 + 16) = v16;
  *(a2 + 32) = v5;
  return result;
}

void RowTemplatePropertySetterParameterState.init(serializedRepresentation:variableProvider:parameter:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v9 = sub_1CA948D28();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_37();
  v15 = sub_1CA948CC8();
  v17 = v16;
  (*(v12 + 8))(v4, v9);
  v33 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_unknownObjectRelease();

    goto LABEL_10;
  }

  if (!a2)
  {

    swift_unknownObjectRelease();

LABEL_15:

    goto LABEL_16;
  }

  swift_getObjectType();
  v18 = dynamic_cast_existential_1_conditional(a2);
  if (!v18)
  {

    swift_unknownObjectRelease();

    goto LABEL_14;
  }

  v20 = v18;
  v28 = v19;
  v21 = sub_1CA323E28(0x627553776F524657, 0xEC0000007463656ALL);

  if (!v21 || (*&v30 = v21, (swift_dynamicCast() & 1) == 0))
  {

    swift_unknownObjectRelease();
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  ObjectType = swift_getObjectType();
  v23 = (*(v28 + 56))(v33, v34, ObjectType);

  swift_unknownObjectRelease();

  if (!v23 || (swift_getObjectType(), sub_1CA2DAD18(), WFParameterState.swiftParameterState<A>(_:)(&v33), swift_unknownObjectRelease(), v33 == 1))
  {

LABEL_10:
    swift_unknownObjectRelease();
LABEL_16:
    *(a4 + 44) = 0u;
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
    return;
  }

  v24 = v35;
  v25 = v36;
  v26 = v37;
  swift_unknownObjectRelease();
  *&v30 = v20;
  *(&v30 + 1) = v28;
  *&v31 = v24;
  *(&v31 + 1) = v25;
  v32[0] = v26;
  *&v32[1] = v42[0];
  *&v32[4] = *(v42 + 3);
  *&v32[8] = v15;
  *&v32[16] = v17;
  *&v32[24] = 16842752;
  v27 = v31;
  *a4 = v30;
  a4[1] = v27;
  *(a4 + 44) = *&v32[12];
  a4[2] = *v32;
  v33 = v20;
  v34 = v28;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  *&v38[3] = *(v42 + 3);
  *v38 = v42[0];
  v39 = v15;
  v40 = v17;
  v41 = 16842752;
  sub_1CA2DBDB8(&v30, v29);
  sub_1CA5CACB4(&v33);
}

double RowTemplatePropertySetterParameterState.init(variable:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1CA948D28();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_37();
  sub_1CA948CC8();

  (*(v8 + 8))(v2, v5);

  result = 0.0;
  *(a2 + 44) = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

void __swiftcall RowTemplatePropertySetterParameterState.makeSubjectParameter(key:)(WFParameter *__return_ptr retstr, Swift::String key)
{
  v3 = *(v2 + 2);
  v4 = *(v2 + 3);
  v5 = *(v2 + 32);
  v8 = *v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v6 = objc_allocWithZone(type metadata accessor for UpdatableStateSubjectPickerParameter());
  v7 = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1CA5CA0EC(&v8);
}

uint64_t RowTemplatePropertySetterParameterState.setParameterState(_:key:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  *(v1 + 16) = a1;
  return result;
}

uint64_t RowTemplatePropertySetterParameterState.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (!v1)
  {
    sub_1CA94D938();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1CA94D938();
    return MEMORY[0x1CCAA2780](v3);
  }

  v4 = [v1 hash];
  sub_1CA94D938();
  MEMORY[0x1CCAA2780](v4);
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1CA94D938();
  v5 = v2;
  sub_1CA94CFE8();

  return MEMORY[0x1CCAA2780](v3);
}

uint64_t static RowTemplatePropertySetterParameterState.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 32);
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  v7 = *(a2 + 32);
  v17 = *a1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v13 = *a2;
  v14 = v6;
  v15 = v5;
  v16 = v7;
  v8 = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LOBYTE(v2) = static UpdatableParameterState.== infix(_:_:)(&v17, &v13);
  v10 = v15;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v11 = v19;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v2 & 1;
}

uint64_t RowTemplatePropertySetterParameterState.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1CA94D918();
  if (v1)
  {
    v4 = [v1 hash];
    sub_1CA94D938();
    MEMORY[0x1CCAA2780](v4);
  }

  else
  {
    sub_1CA94D938();
  }

  sub_1CA94D938();
  if (v2)
  {
    v5 = v2;
    sub_1CA94CFE8();
  }

  MEMORY[0x1CCAA2780](v3);
  return sub_1CA94D968();
}

uint64_t sub_1CA5C9D8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3E78A8;

  return RowTemplatePropertySetterParameterState.process(context:)();
}

void (*sub_1CA5C9E44(void *a1))(uint64_t *a1, char a2)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1CA5C8E3C;
}

uint64_t (*sub_1CA5C9EC0(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32);
  return sub_1CA5CB07C;
}

uint64_t sub_1CA5C9EEC(uint64_t *a1)
{
  v1 = *a1;
  *(v1 + 32) = *(a1 + 8);
  v2 = *(v1 + 16);
  result = swift_unknownObjectRelease();
  *(v1 + 16) = 0;
  return result;
}

uint64_t sub_1CA5C9F38()
{
  v1 = *(v0 + 32);
  sub_1CA94D918();
  v3 = *v0;
  v4 = v0[1];
  UpdatableParameterState.hash(into:)();
  return sub_1CA94D968();
}

uint64_t sub_1CA5C9F98()
{
  v3 = *(v0 + 8);
  result = PropertyUpdateOperator.defaultLocalizedLabel.getter();
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CA5C9FD4(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981310;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    *(inited + 32) = v5;
    *(inited + 40) = v6;
    *(inited + 48) = v2;
    sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
    v7 = v2;
    sub_1CA94C218();
    return sub_1CA94C1E8();
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);

    return sub_1CA94C1E8();
  }
}

id sub_1CA5CA0EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = &v1[OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState];
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v4;
  v3[32] = v2;
  sub_1CA2DAD6C(1, 0, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  v6 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = 0x79747265706F7270;
  *(inited + 48) = 0xE800000000000000;
  *(inited + 64) = v6;
  *(inited + 72) = @"HideClearButton";
  v7 = MEMORY[0x1E69E6370];
  *(inited + 80) = 1;
  *(inited + 104) = v7;
  *(inited + 112) = @"Placeholder";
  v8 = v1;
  v9 = @"Key";
  v10 = @"HideClearButton";
  v11 = @"Placeholder";
  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v13 = sub_1CA94C368();
  v14 = sub_1CA94C368();

  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  v16 = sub_1CA94C3A8();
  v18 = v17;

  *(inited + 120) = v16;
  *(inited + 128) = v18;
  *(inited + 144) = v6;
  *(inited + 152) = @"DisallowedVariableTypes";
  sub_1CA25B3D0(0, &qword_1EC444F20, off_1E836E2F8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = @"DisallowedVariableTypes";
  v21 = [ObjCClassFromMetadata allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_1CA5C6850(&qword_1EC441A60, type metadata accessor for WFVariableType);
  v22 = sub_1CA94C8F8();

  sub_1CA3E4650(v22);
  v24 = v23;

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = v24;
  _s3__C3KeyVMa_0(0);
  sub_1CA5C6850(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v25 = sub_1CA2F864C();
  v28.receiver = v8;
  v28.super_class = type metadata accessor for UpdatableStateSubjectPickerParameter();
  v26 = objc_msgSendSuper2(&v28, sel_initWithDefinition_, v25);

  return v26;
}

uint64_t sub_1CA5CA4F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443A50, &qword_1CA986840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  v2 = v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState;
  v4 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState);
  v3 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 8);
  v5 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 16);
  v6 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 24);
  v7 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 32);
  if (v4 == 1)
  {
    v8 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 32);
    sub_1CA5CB02C(1, *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 8), *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 16), *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 24));
    v9 = 1;
    v10 = v3;
    v11 = v5;
    v12 = v6;
LABEL_7:
    sub_1CA2DAD6C(v9, v10, v11, v12);
    goto LABEL_8;
  }

  v13 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState);
  v14 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 8);
  v15 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 16);
  if (!v6)
  {
    v19 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 32);
    sub_1CA5CB02C(v13, v14, v15, 0);
    v9 = v4;
    v10 = v3;
    v11 = v5;
    v12 = 0;
    goto LABEL_7;
  }

  v16 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 32);
  sub_1CA5CB02C(v13, v14, v15, *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 24));
  v17 = v6;
  sub_1CA2DAD6C(v4, v3, v5, v6);
  v18 = [v17 value];

  if (v18)
  {
    sub_1CA94C398();
  }

LABEL_8:
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  v22 = *(inited + 40);
  if (v22)
  {
    v23 = *(inited + 32);
    v24 = *(inited + 40);
    sub_1CA94C218();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = v21[2];
      sub_1CA26DADC();
      v21 = v28;
    }

    v25 = v21[2];
    if (v25 >= v21[3] >> 1)
    {
      sub_1CA26DADC();
      v21 = v29;
    }

    v21[2] = v25 + 1;
    v26 = &v21[2 * v25];
    v26[4] = v23;
    v26[5] = v22;
  }

  swift_setDeallocating();
  sub_1CA32E2E4();
  v30 = *v2;
  v31 = *(v2 + 8);
  v32 = *(v2 + 16);
  v33 = *(v2 + 24);
  v34 = *(v2 + 32);
  v35 = *v2;
  if (*v2 >= 2uLL)
  {
    sub_1CA5CB02C(v35, v31, v32, v33);
    v37 = swift_unknownObjectRetain();
    sub_1CA2DAD6C(v37, v31, v32, v33);
    ObjectType = swift_getObjectType();
    v36 = (*(v31 + 16))(ObjectType, v31);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA5CB02C(v35, v31, v32, v33);
    sub_1CA2DAD6C(v30, v31, v32, v33);
    v36 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA2B7FF4(v36);
  v39 = v21[2];
  if (v39)
  {
    sub_1CA94D508();
    v40 = v21 + 5;
    do
    {
      v41 = *(v40 - 1);
      v42 = *v40;
      sub_1CA94C218();
      v43 = sub_1CA94C368();
      v44 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

      v45 = WFVariableSubstitutableParameterStateUpcast(v44);

      sub_1CA94D4D8();
      v46 = *(v20 + 16);
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
      v40 += 2;
      --v39;
    }

    while (v39);

    return v20;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1CA5CA898(void *a1)
{
  sub_1CA25B3D0(0, &qword_1EC4417B0, off_1E836F350);
  swift_getObjCClassFromMetadata();
  if (WFVariableSubstitutableParameterStateDowncast(a1))
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 value];
      if (v3)
      {
        v4 = v3;
        sub_1CA94C398();
      }
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_1CA5CAB70()
{
  result = sub_1CA568E98(v0);
  if (result)
  {
    v2 = sub_1CA25B410();

    return v2 > 15;
  }

  return result;
}

id sub_1CA5CAC0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpdatableStateSubjectPickerParameter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CA5CAC60()
{
  result = qword_1EC446D58;
  if (!qword_1EC446D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D58);
  }

  return result;
}

unint64_t sub_1CA5CAD08(uint64_t a1)
{
  result = sub_1CA5CAD30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5CAD30()
{
  result = qword_1EC446D60;
  if (!qword_1EC446D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D60);
  }

  return result;
}

unint64_t sub_1CA5CAD84()
{
  result = qword_1EC446D68;
  if (!qword_1EC446D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D68);
  }

  return result;
}

unint64_t sub_1CA5CADE4(uint64_t a1)
{
  result = sub_1CA5CAE0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5CAE0C()
{
  result = qword_1EC446D70;
  if (!qword_1EC446D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D70);
  }

  return result;
}

unint64_t sub_1CA5CAE64()
{
  result = qword_1EC446D78;
  if (!qword_1EC446D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D78);
  }

  return result;
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CA5CAED4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 60))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1CA5CAF14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 60) = 1;
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

    *(result + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CA5CAF74(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 9))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1CA5CAFC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1CA5CB02C(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result != 1)
  {
    v5 = a4;
    swift_unknownObjectRetain();

    return swift_unknownObjectRetain();
  }

  return result;
}

id sub_1CA5CB0B8()
{
  v34[1] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
  *(inited + 64) = v1;
  *(inited + 72) = @"IconColor";
  *(inited + 80) = 1953392980;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 104) = v1;
  *(inited + 112) = @"IconSymbol";
  *(inited + 120) = 0xD000000000000026;
  *(inited + 128) = 0x80000001CA9D3340;
  *(inited + 144) = v1;
  *(inited + 152) = @"IconSymbolColor";
  *(inited + 160) = 0x6E65657247;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 184) = v1;
  *(inited + 192) = @"LocallyProcessesData";
  v2 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v2;
  *(inited + 232) = @"Name";
  v3 = @"ActionClass";
  v4 = @"IconColor";
  v5 = @"IconSymbol";
  v6 = @"IconSymbolColor";
  v7 = @"LocallyProcessesData";
  v8 = @"Name";
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA948E58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v24 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v25 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v18, v23);
  v26 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 240) = v25;
  *(inited + 264) = v26;
  *(inited + 272) = @"Output";
  v27 = @"Output";
  v28 = MEMORY[0x1E69E6158];
  v29 = sub_1CA94C1E8();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 280) = v29;
  *(inited + 304) = v30;
  *(inited + 312) = @"ResidentCompatible";
  *(inited + 344) = MEMORY[0x1E69E6370];
  *(inited + 320) = 1;
  v31 = @"ResidentCompatible";
  v32 = sub_1CA94C368();
  *(inited + 384) = v28;
  *(inited + 352) = v32;
  *(inited + 360) = 0xD000000000000015;
  *(inited + 368) = 0x80000001CA993430;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5CB504()
{
  v112 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9D33C0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v116 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v117 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v118 = v11;
  v12 = &v104 - v117;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v113 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v114 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v115 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v104 - v115;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v116, v5, v6, v8, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v116 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v111 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v109 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v110 = &v104;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v104 - v117;
  sub_1CA948D98();
  v30 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v104 - v115;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v109, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v116;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v111;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1802398032;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0x6D726F6674786574;
  *(inited + 208) = 0xEA00000000007461;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v108 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 0;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 1685221207;
  *(v37 + 104) = 0xE400000000000000;
  *(v37 + 120) = v36;
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 1;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  *(v37 + 184) = 0xE500000000000000;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v111;
  *(v37 + 192) = &unk_1F4A08A28;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v42;
  *(inited + 264) = v43;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 1;
  *(inited + 304) = v38;
  *(inited + 312) = @"Name";
  v44 = @"InputPassthrough";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v48 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v110 = &v104;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v104 - v117;
  sub_1CA948D98();
  v53 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v104 - v115;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  *(inited + 344) = v116;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v110 = swift_allocObject();
  *(v110 + 1) = xmmword_1CA9813B0;
  v109 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_allocObject();
  *(v56 + 16) = v108;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000014;
  *(v56 + 48) = 0x80000001CA99B500;
  v57 = MEMORY[0x1E69E6158];
  *(v56 + 64) = MEMORY[0x1E69E6158];
  *(v56 + 72) = @"Key";
  *(v56 + 80) = 1685221207;
  *(v56 + 88) = 0xE400000000000000;
  *(v56 + 104) = v57;
  *(v56 + 112) = @"Label";
  v58 = @"Parameters";
  v59 = @"Class";
  v60 = @"Key";
  v61 = @"Label";
  v62 = sub_1CA94C438();
  v106 = v63;
  v107 = v62;
  v64 = sub_1CA94C438();
  v105 = v65;
  *&v108 = &v104;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v104 - v117;
  sub_1CA948D98();
  v67 = v113;
  v68 = [v113 bundleURL];
  v104 = &v104;
  MEMORY[0x1EEE9AC00](v68);
  v69 = v115;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 120) = sub_1CA2F9F14(v107, v106, v64, v105, 0, 0, v66, &v104 - v69);
  *(v56 + 144) = v116;
  *(v56 + 152) = @"Placeholder";
  v71 = @"Placeholder";
  v72 = sub_1CA94C438();
  v106 = v73;
  v107 = v72;
  v74 = sub_1CA94C438();
  v105 = v75;
  *&v108 = &v104;
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v104 - v117;
  sub_1CA948D98();
  v77 = [v67 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v79 = sub_1CA2F9F14(v107, v106, v74, v105, 0, 0, v76, &v104 - v69);
  *(v56 + 184) = v116;
  *(v56 + 160) = v79;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v80 = sub_1CA2F864C();
  v81 = v110;
  v110[4] = v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v81;
  *(inited + 384) = v82;
  *(inited + 392) = @"ParameterSummary";
  v83 = @"ParameterSummary";
  v84 = sub_1CA94C438();
  v86 = v85;
  v87 = sub_1CA94C438();
  v89 = v88;
  v116 = &v104;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v104 - v117;
  sub_1CA948D98();
  v91 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v104 - v115;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v84, v86, v87, v89, 0, 0, v90, v92);
  v95 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v96 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v95;
  *(inited + 424) = v96;
  *(inited + 432) = @"RequiredResources";
  *(inited + 440) = &unk_1F4A08A58;
  v97 = v111;
  *(inited + 464) = v111;
  *(inited + 472) = @"UserInterfaceClasses";
  v98 = @"RequiredResources";
  v99 = @"UserInterfaceClasses";
  v100 = sub_1CA94C1E8();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 480) = v100;
  *(inited + 504) = v101;
  *(inited + 512) = @"UserInterfaces";
  *(inited + 544) = v97;
  *(inited + 520) = &unk_1F4A08AE8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v102 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5CC274()
{
  v48 = sub_1CA94B4D8();
  v46 = *(v48 - 8);
  v0 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v6, v8, v9, v11, 0, 0, v15, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v22;
  *(inited + 104) = v23;
  *(inited + 112) = @"AppDefinition";
  v24 = @"AppDefinition";
  v25 = MEMORY[0x1E69E6158];
  v26 = sub_1CA94C1E8();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v26;
  *(inited + 144) = v27;
  *(inited + 152) = @"DisabledOnPlatforms";
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F4A08B68;
  *(inited + 184) = v28;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 0x6E65657247;
  *(inited + 208) = 0xE500000000000000;
  *(inited + 224) = v25;
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD00000000000001ALL;
  *(inited + 248) = 0x80000001CA9D3530;
  *(inited + 264) = v25;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  v29 = @"DisabledOnPlatforms";
  v30 = @"IconColor";
  v31 = @"IconSymbol";
  v32 = @"InputPassthrough";
  v33 = sub_1CA94C368();
  *(inited + 344) = v25;
  *(inited + 312) = v33;
  *(inited + 320) = 0xD000000000000060;
  *(inited + 328) = 0x80000001CA9D3550;
  *(inited + 352) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v34 = swift_initStackObject();
  v45 = xmmword_1CA981310;
  *(v34 + 16) = xmmword_1CA981310;
  *(v34 + 32) = 0x6574617473;
  *(v34 + 40) = 0xE500000000000000;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v35 = swift_initStackObject();
  *(v35 + 16) = v45;
  *(v35 + 64) = v25;
  *(v35 + 32) = @"Key";
  *(v35 + 40) = 0x65756C61566E4FLL;
  *(v35 + 48) = 0xE700000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v36 = @"Key";
  sub_1CA94C1E8();
  *(v34 + 48) = sub_1CA2F864C();
  v37 = sub_1CA94C1E8();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 360) = v37;
  *(inited + 384) = v38;
  *(inited + 392) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1CA9813B0;
  v40 = v47;
  (*(v46 + 104))(v47, *MEMORY[0x1E69DB3E8], v48);
  v41 = objc_allocWithZone(type metadata accessor for WFDeviceCapabilityResource());
  v42 = @"RequiredResources";
  WFDeviceCapabilityResource.init(capability:)(v40);
  *(v39 + 32) = v43;
  *(inited + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444680, &qword_1CA9839D8);
  *(inited + 400) = v39;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static WFParameterValueRegistry.allParameterValueClassesInWorkflowKit()()
{
  sub_1CA25B3D0(0, &unk_1EC446DA0, off_1E836DEF0);
  [swift_getObjCClassFromMetadata() processingValueClass];
  sub_1CA2E739C();
  v1 = v0;
  if (*(v0 + 16) >= *(v0 + 24) >> 1)
  {
    OUTLINED_FUNCTION_1_44();
    v1 = v34;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(ObjCClassMetadata);
  sub_1CA25B3D0(0, &qword_1EC446AE8, off_1E836E218);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v3)
  {
    OUTLINED_FUNCTION_1_44();
    v1 = v35;
  }

  v4 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v4);
  sub_1CA25B3D0(0, &qword_1EC446B00, off_1E836EC20);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v3)
  {
    OUTLINED_FUNCTION_1_44();
    v1 = v36;
  }

  v5 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v5);
  sub_1CA25B3D0(0, &qword_1EC446B08, off_1E836EC18);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v3)
  {
    OUTLINED_FUNCTION_1_44();
    v1 = v37;
  }

  v6 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v6);
  sub_1CA25B3D0(0, &qword_1EC446B10, off_1E836DEC8);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v3)
  {
    OUTLINED_FUNCTION_1_44();
    v1 = v38;
  }

  v7 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v7);
  sub_1CA25B3D0(0, &qword_1EC4417B0, off_1E836F350);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v3)
  {
    OUTLINED_FUNCTION_1_44();
    v1 = v39;
  }

  v8 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v8);
  sub_1CA25B3D0(0, &qword_1EC446DB0, off_1E836EBE0);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v3)
  {
    OUTLINED_FUNCTION_1_44();
    v1 = v40;
  }

  v9 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v9);
  sub_1CA25B3D0(0, &qword_1EC446DB8, off_1E836EE48);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v3)
  {
    OUTLINED_FUNCTION_1_44();
    v1 = v41;
  }

  v10 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v10);
  [objc_opt_self() processingValueClass];
  v11 = *(v1 + 16);
  v12 = *(v1 + 24) >> 1;
  v13 = v11 + 1;
  if (v12 <= v11)
  {
    OUTLINED_FUNCTION_5_40();
    v1 = v42;
    v12 = *(v42 + 24) >> 1;
  }

  v14 = swift_getObjCClassMetadata();
  *(v1 + 16) = v13;
  *(v1 + 8 * v11 + 32) = v14;
  if (v12 < (v11 + 2))
  {
    sub_1CA2E739C();
    v1 = v43;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A50, &unk_1CA989900);
  *(v1 + 16) = v11 + 2;
  *(v1 + 8 * v13 + 32) = v15;
  if ((v11 + 3) > *(v1 + 24) >> 1)
  {
    OUTLINED_FUNCTION_1_44();
    v1 = v44;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444670, &qword_1CA9839D0);
  OUTLINED_FUNCTION_2_54(v16);
  v17 = v11 + 4;
  if ((v11 + 4) > *(v1 + 24) >> 1)
  {
    OUTLINED_FUNCTION_5_40();
    v1 = v45;
  }

  v18 = sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
  *(v1 + 16) = v17;
  *(v1 + 8 * (v11 + 3) + 32) = v18;
  if ((v11 + 5) > *(v1 + 24) >> 1)
  {
    OUTLINED_FUNCTION_1_44();
    v1 = v46;
  }

  v19 = sub_1CA25B3D0(0, &qword_1EC443820, 0x1E6996F28);
  *(v1 + 16) = v11 + 5;
  *(v1 + 8 * v17 + 32) = v19;
  sub_1CA25B3D0(0, &qword_1EC446DC0, off_1E836E530);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v3)
  {
    OUTLINED_FUNCTION_1_44();
    v1 = v47;
  }

  v20 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v20);
  sub_1CA25B3D0(0, &unk_1EC446DC8, off_1E836E548);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v3)
  {
    OUTLINED_FUNCTION_1_44();
    v1 = v48;
  }

  v21 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v21);
  sub_1CA25B3D0(0, &qword_1EC446AA0, off_1E836F588);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v3)
  {
    OUTLINED_FUNCTION_1_44();
    v1 = v49;
  }

  v22 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v22);
  sub_1CA25B3D0(0, &qword_1EC446DD8, off_1E836E5A0);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v3)
  {
    OUTLINED_FUNCTION_1_44();
    v1 = v50;
  }

  v23 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v23);
  sub_1CA25B3D0(0, &qword_1EC446DE0, off_1E836DE00);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v3)
  {
    OUTLINED_FUNCTION_1_44();
    v1 = v51;
  }

  v24 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v24);
  sub_1CA25B3D0(0, &qword_1EC446DE8, off_1E836F378);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v3)
  {
    OUTLINED_FUNCTION_1_44();
    v1 = v52;
  }

  v25 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v25);
  v53 = v1;
  sub_1CA25B3D0(0, &qword_1EC446DF0, off_1E836EE20);
  v26 = [swift_getObjCClassFromMetadata() processingValueClasses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446DF8, &qword_1CA98DE28);
  sub_1CA94C658();

  OUTLINED_FUNCTION_3_48();
  sub_1CA25B3D0(0, &qword_1EC446E00, off_1E836EBA0);
  v27 = [swift_getObjCClassFromMetadata() processingValueClasses];
  OUTLINED_FUNCTION_4_47();

  OUTLINED_FUNCTION_3_48();
  sub_1CA25B3D0(0, &qword_1EC446E08, off_1E836E060);
  v28 = [swift_getObjCClassFromMetadata() processingValueClasses];
  OUTLINED_FUNCTION_4_47();

  OUTLINED_FUNCTION_3_48();
  v29 = [objc_opt_self() processingValueClasses];
  OUTLINED_FUNCTION_4_47();

  OUTLINED_FUNCTION_3_48();
  sub_1CA25B3D0(0, &qword_1EC446E10, off_1E836DFE0);
  v30 = [swift_getObjCClassFromMetadata() processingValueClasses];
  OUTLINED_FUNCTION_4_47();

  OUTLINED_FUNCTION_3_48();
  sub_1CA25B3D0(0, &unk_1EC446AF0, off_1E836E1F0);
  v31 = [swift_getObjCClassFromMetadata() processingValueClasses];
  v32 = OUTLINED_FUNCTION_4_47();

  sub_1CA2B8A88(v32);
  return v53;
}

id WFVariableSubstitutableParameterStateUpcast<A, B>(_:)(void *a1)
{
  v1 = WFVariableSubstitutableParameterStateUpcast(a1);

  return v1;
}

id WFVariableSubstitutableParameterStateDowncast<A, B>(_:to:)(void *a1)
{
  swift_getObjCClassFromMetadata();
  result = WFVariableSubstitutableParameterStateDowncast(a1);
  if (result)
  {
    result = swift_dynamicCastUnknownClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CA5CD12C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + a3;
  v5 = *(a2 + a3 - 24);
  v6 = *(v4 - 16);
  v7 = *(v4 - 8);
  v10 = *a1;
  v11 = *(a1 + 2);
  v8 = type metadata accessor for OrderedDictionary();
  return OrderedDictionary.subscript.getter(a2, v8);
}

void sub_1CA5CD198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = sub_1CA94D098();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v18 - v13;
  v15 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  (*(v17 + 16))(&v18 - v16, a3, v6);
  (*(v10 + 16))(v14, a1, v9);
  type metadata accessor for OrderedDictionary();
  OrderedDictionary.subscript.setter();
}

void OrderedDictionary.removeValue(forKey:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v48 = v5;
  v6 = *(v1 + 16);
  OUTLINED_FUNCTION_4_12();
  v46 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  v45 = v12 - v11;
  v14 = *(v13 + 24);
  OUTLINED_FUNCTION_9_31();
  v15 = sub_1CA94D098();
  OUTLINED_FUNCTION_4_12();
  v17 = v16;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v40 - v24;
  OUTLINED_FUNCTION_4_12();
  v44 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_10_30();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_48_0();
  v43 = v31;
  v47 = v0;
  v32 = *(v0 + 16);
  v33 = *(v2 + 32);
  sub_1CA94C268();
  if (__swift_getEnumTagSinglePayload(v25, 1, v14) == 1)
  {
    (*(v17 + 8))(v25, v15);
    v34 = 1;
    v35 = v48;
LABEL_5:
    __swift_storeEnumTagSinglePayload(v35, v34, 1, v14);
    OUTLINED_FUNCTION_36();
    return;
  }

  v41 = *(v44 + 32);
  v41(v43, v25, v14);
  (*(v46 + 16))(v45, v4, v6);
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v14);
  OUTLINED_FUNCTION_6_42();
  sub_1CA94C248();
  sub_1CA94C278();
  v49 = *(v47 + 8);
  OUTLINED_FUNCTION_6_42();
  sub_1CA94C758();
  OUTLINED_FUNCTION_2_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_26();
  sub_1CA94CAF8();
  if ((v50 & 1) == 0)
  {
    sub_1CA94C718();
    v36 = *(v46 + 8);
    v37 = OUTLINED_FUNCTION_104();
    v38(v37);
    OUTLINED_FUNCTION_9_31();
    sub_1CA94C758();
    v39 = v42;
    sub_1CA94C718();
    (*(v44 + 8))(v39, v14);
    v35 = v48;
    v41(v48, v43, v14);
    v34 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

void (*OrderedDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  *v6 = a3;
  v6[1] = v3;
  v7 = *(a3 + 24);
  v8 = sub_1CA94D098();
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  v6[4] = __swift_coroFrameAllocStub(v10);
  v6[5] = __swift_coroFrameAllocStub(v10);
  v6[6] = *(a3 + 16);
  OUTLINED_FUNCTION_4_12();
  v12 = v11;
  v6[7] = v11;
  v14 = *(v13 + 64);
  v6[8] = __swift_coroFrameAllocStub(v14);
  v6[9] = __swift_coroFrameAllocStub(v14);
  (*(v12 + 16))();
  v18 = *v3;
  v19 = *(v3 + 2);
  v15 = OUTLINED_FUNCTION_69();
  OrderedDictionary.subscript.getter(v15, v16);
  return sub_1CA5CD82C;
}

void sub_1CA5CD82C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  if (a2)
  {
    v5 = v2[7];
    v16 = v2[6];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v9 = v2[3];
    v11 = *v2;
    v10 = v2[1];
    OUTLINED_FUNCTION_19_22();
    v12 = OUTLINED_FUNCTION_104();
    v13(v12);
    (*(v5 + 32))(v3, v4, v16);
    OrderedDictionary.subscript.setter();
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    v14 = *v2;
    v15 = v2[1];
    OrderedDictionary.subscript.setter();
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

void OrderedDictionary.subscript.getter()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v1[3];
  v10 = sub_1CA94D098();
  OUTLINED_FUNCTION_4_12();
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  v18 = *(v0 + 2);
  v21 = *v0;
  v22 = v18;
  OrderedDictionary.subscript.getter(v6, v2);
  v19 = OUTLINED_FUNCTION_22_21(v17);
  v20 = *(v9 - 8);
  if (v19 == 1)
  {
    (*(v20 + 16))(v8, v4, v9);
    if (OUTLINED_FUNCTION_22_21(v17) != 1)
    {
      (*(v12 + 8))(v17, v10);
    }
  }

  else
  {
    (*(v20 + 32))(v8, v17, v9);
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA5CDAAC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + a3 - 24);
  v5 = *(a2 + a3 - 16);
  v6 = *(a2 + a3 - 8);
  v7 = *(a1 + 2);
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  v9 = *a1;
  type metadata accessor for OrderedDictionary();
  OrderedDictionary.subscript.getter();
}

void sub_1CA5CDB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a2;
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v23 - v15;
  v17 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  (*(v19 + 16))(v23 - v18, v20, v6);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = *(v9 + 16);
  v22(v16, a3 + *(TupleTypeMetadata2 + 48), v7);
  v22(v13, a1, v7);
  type metadata accessor for OrderedDictionary();
  OrderedDictionary.subscript.setter();
}

void (*OrderedDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x70uLL);
  *a1 = v7;
  *v7 = a4;
  v7[1] = v4;
  v8 = *(a4 + 24);
  v7[2] = v8;
  OUTLINED_FUNCTION_4_12();
  v10 = v9;
  *(v11 + 24) = v9;
  v13 = *(v12 + 64);
  v7[4] = OUTLINED_FUNCTION_23_17();
  v7[5] = OUTLINED_FUNCTION_23_17();
  v7[6] = OUTLINED_FUNCTION_23_17();
  v14 = OUTLINED_FUNCTION_23_17();
  v7[7] = v14;
  v7[8] = *(a4 + 16);
  OUTLINED_FUNCTION_4_12();
  v16 = v15;
  v7[9] = v15;
  v18 = *(v17 + 64);
  v7[10] = __swift_coroFrameAllocStub(v18);
  v7[11] = __swift_coroFrameAllocStub(v18);
  (*(v16 + 16))();
  v19 = *(v10 + 16);
  v7[12] = v19;
  v7[13] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v14, a3, v8);
  v22 = *v4;
  v23 = *(v4 + 2);
  OrderedDictionary.subscript.getter();
  return sub_1CA5CE0C4;
}

void sub_1CA5CE0C4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[13];
    v5 = v2[10];
    v4 = v2[11];
    v6 = v2[9];
    v8 = v2[6];
    v7 = v2[7];
    v10 = v2[4];
    v9 = v2[5];
    v11 = v2[2];
    v12 = v2[3];
    v20 = v2[1];
    v18 = v2[8];
    v19 = *v2;
    (v2[12])(v9, v8, v11);
    v13 = *(v6 + 32);
    v14 = OUTLINED_FUNCTION_69();
    v15(v14);
    (*(v12 + 32))(v10, v7, v11);
    OrderedDictionary.subscript.setter();
    (*(v12 + 8))(v8, v11);
  }

  else
  {
    v5 = v2[10];
    v4 = v2[11];
    v8 = v2[6];
    v7 = v2[7];
    v10 = v2[4];
    v9 = v2[5];
    v16 = *v2;
    v17 = v2[1];
    OrderedDictionary.subscript.setter();
  }

  free(v4);
  free(v5);
  free(v7);
  free(v8);
  free(v9);
  free(v10);

  free(v2);
}

void OrderedDictionary.init(dictionaryLiteral:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1CA94D098();
  OUTLINED_FUNCTION_18_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  OUTLINED_FUNCTION_4_12();
  v52 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_0();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_20_26();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_4_12();
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_29();
  v51 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v50 - v30;
  v55 = v5;
  v56 = v1;
  OrderedDictionary.init()(&v58);
  v32 = v59;
  v54 = v58;
  v60 = v58;
  v61 = v59;
  sub_1CA94C218();
  v33 = sub_1CA94C668();

  *&v58 = v33;
  if (v33 != sub_1CA94C6F8())
  {
    v50 = v9;
    v35 = *(TupleTypeMetadata2 + 48);
    v53 = (v25 + 16);
    *&v54 = v35;
    v36 = (v52 + 32);
    v52 = v3 - 8;
    while (1)
    {
      v37 = sub_1CA94C6D8();
      sub_1CA94C688();
      if (v37)
      {
        v38 = v7 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v33;
        v39 = *(v25 + 16);
        v40 = OUTLINED_FUNCTION_16_28();
        v41(v40);
      }

      else
      {
        v46 = sub_1CA94D468();
        if (v51 != 8)
        {
          __break(1u);
          return;
        }

        v57 = v46;
        v47 = *v53;
        v48 = OUTLINED_FUNCTION_16_28();
        v49(v48);
        swift_unknownObjectRelease();
      }

      sub_1CA94C738();
      (*v36)(v22, v31, v55);
      (*(*(v3 - 8) + 32))(v15, &v31[v54], v3);
      OUTLINED_FUNCTION_89();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v3);
      type metadata accessor for OrderedDictionary();
      OrderedDictionary.subscript.setter();
      v45 = sub_1CA94C6F8();
      v33 = v58;
      if (v58 == v45)
      {

        v34 = v60;
        v32 = v61;
        v9 = v50;
        goto LABEL_10;
      }
    }
  }

  v34 = v54;
LABEL_10:
  *v9 = v34;
  *(v9 + 16) = v32;
  OUTLINED_FUNCTION_36();
}

void sub_1CA5CE57C(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  OrderedDictionary.init(dictionaryLiteral:)();
}

void OrderedDictionary.description.getter()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_9_31();
  v4 = sub_1CA94D098();
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v42 - v8;
  v45 = v2;
  v10 = *(v2 + 16);
  OUTLINED_FUNCTION_4_12();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  v18 = v17 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = sub_1CA94D098();
  OUTLINED_FUNCTION_4_12();
  v46 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_10_30();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v42 - v25;
  v27 = *(v0 + 8);
  v44 = *(v0 + 16);
  v54 = 91;
  v55 = 0xE100000000000000;
  v42[2] = v27;
  v53 = v27;
  OUTLINED_FUNCTION_6_42();
  v28 = sub_1CA94C758();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1CCAA1420](&v50, v28, WitnessTable);
  v52 = v50;
  sub_1CA94D648();
  sub_1CA94D618();
  v30 = sub_1CA94D638();
  v46 += 4;
  v47 = v30;
  v43 = (v12 + 32);
  v42[1] = v3 - 8;
  v31 = (v12 + 8);
  while (1)
  {
    v32 = v48;
    sub_1CA94D628();
    (*v46)(v26, v32, v49);
    if (OUTLINED_FUNCTION_22_21(v26) == 1)
    {

      MEMORY[0x1CCAA1300](93, 0xE100000000000000);
      OUTLINED_FUNCTION_36();
      return;
    }

    v33 = *v26;
    (*v43)(v18, &v26[*(TupleTypeMetadata2 + 48)], v10);
    v50 = 0;
    v51 = 0xE000000000000000;
    OUTLINED_FUNCTION_104();
    sub_1CA94D7B8();
    MEMORY[0x1CCAA1300](8250, 0xE200000000000000);
    v34 = *(v45 + 32);
    sub_1CA94C268();
    if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
    {
      break;
    }

    OUTLINED_FUNCTION_69();
    sub_1CA94D7B8();
    v35 = *(*(v3 - 8) + 8);
    v36 = OUTLINED_FUNCTION_69();
    v37(v36);
    MEMORY[0x1CCAA1300](v50, v51);

    v38 = sub_1CA94C6F8();
    if (__OFSUB__(v38, 1))
    {
      __break(1u);
      break;
    }

    if (v33 != v38 - 1)
    {
      MEMORY[0x1CCAA1300](8236, 0xE200000000000000);
    }

    v39 = *v31;
    v40 = OUTLINED_FUNCTION_104();
    v41(v40);
  }

  __break(1u);
}

uint64_t OrderedDictionary.startIndex.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 16);
  return sub_1CA94C668();
}

uint64_t OrderedDictionary.endIndex.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 16);
  return sub_1CA94C6F8();
}

uint64_t OrderedDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4[3];
  v7 = sub_1CA94D098();
  OUTLINED_FUNCTION_18_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = *(v4 + 8);
  v14 = *(v4 + 16);
  v15 = a4[2];
  sub_1CA94C798();
  v16 = a4[4];
  sub_1CA94C268();
  result = OUTLINED_FUNCTION_22_21(v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = *(*(v6 - 8) + 32);
    v19 = OUTLINED_FUNCTION_69();
    return v20(v19);
  }

  return result;
}

uint64_t sub_1CA5CEA70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69828](a1, a2, WitnessTable, v5);
}

uint64_t sub_1CA5CEAF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = OrderedDictionary.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CA5CEB20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = OrderedDictionary.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_1CA5CEB48(uint64_t **a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v6 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v6;
  v8 = a3[2];
  v7 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6[4] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 - 8);
  v6[5] = v10;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v6[6] = v11;
  v12 = sub_1CA5CED34(v6, *a2, a3);
  v14 = v13;
  v6[7] = v12;
  (*(*(v8 - 8) + 16))(v11);
  (*(*(v7 - 8) + 16))(&v11[*(TupleTypeMetadata2 + 48)], v14, v7);
  return sub_1CA5CECBC;
}

void sub_1CA5CECBC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_1CA5CED34(uint64_t *a1, uint64_t a2, void *a3))(void *a1)
{
  v6 = a3[2];
  v7 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v9 = *(TupleTypeMetadata2 - 8);
  a1[1] = v9;
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  a1[2] = v10;
  OrderedDictionary.subscript.getter(v10, v10 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_1CA5CEE14;
}

void sub_1CA5CEE14(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1CA5CEE64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69838](a1, WitnessTable, v3);
}

uint64_t sub_1CA5CEEE4()
{
  swift_getWitnessTable();

  return sub_1CA94C9A8();
}

uint64_t sub_1CA5CEF6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  OUTLINED_FUNCTION_0_61();
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t sub_1CA5CEFD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[1];
  v6 = v2[2];
  *a2 = *v2;
  a2[1] = v5;
  a2[2] = v6;
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();
  v7 = OrderedDictionary.startIndex.getter(a1);

  a2[3] = v7;
  return result;
}

uint64_t sub_1CA5CF058(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1CA5CF0AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t static OrderedDictionary<>.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  if ((sub_1CA94C788() & 1) == 0)
  {
    return 0;
  }

  v16 = *(a5 + 8);
  if ((sub_1CA94C788() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE68930](v12, v15, a3, a4, a5, a6);
}

uint64_t OrderedDictionary.sorted(by:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v59 = a2;
  v58 = a1;
  v54 = a4;
  v6 = a3[3];
  OUTLINED_FUNCTION_6_42();
  v7 = sub_1CA94D098();
  OUTLINED_FUNCTION_18_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v53 - v11;
  v12 = a3[2];
  OUTLINED_FUNCTION_4_12();
  v55 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_0();
  v62 = v18 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_4_12();
  v64 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_29();
  v53 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v53 - v25;
  v27 = *v4;
  *&v70 = v4[1];
  v73 = v27;
  v28 = sub_1CA94C758();
  OUTLINED_FUNCTION_6_42();
  v29 = sub_1CA94C758();
  WitnessTable = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  sub_1CA94D858();
  v57 = v75;
  v56 = v76;
  v73 = v75;
  v74 = v76;
  v77 = v12;
  v65 = v12;
  v66 = v6;
  v63 = a3;
  v67 = a3[4];
  v68 = v58;
  v69 = v59;
  *&v70 = v28;
  *(&v70 + 1) = v29;
  v71 = WitnessTable;
  v72 = v31;
  sub_1CA94D448();
  swift_getWitnessTable();
  v32 = v60;
  v33 = sub_1CA94C608();

  if (!v32)
  {
    v57 = 0;
    v35 = v55;
    OrderedDictionary.init()(&v70);
    sub_1CA94C218();
    v36 = sub_1CA94C668();

    v75 = v36;
    if (v36 != sub_1CA94C6F8())
    {
      v60 = *(TupleTypeMetadata2 + 48);
      v59 = (v64 + 16);
      v39 = (v35 + 32);
      v58 = v6 - 8;
      v40 = v61;
      do
      {
        v41 = sub_1CA94C6D8();
        sub_1CA94C688();
        if (v41)
        {
          v42 = v33 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v36;
          v43 = *(v64 + 16);
          v44 = OUTLINED_FUNCTION_16_28();
          v45(v44);
        }

        else
        {
          result = sub_1CA94D468();
          if (v53 != 8)
          {
            __break(1u);
            return result;
          }

          v73 = result;
          v50 = *v59;
          v51 = OUTLINED_FUNCTION_16_28();
          v52(v51);
          swift_unknownObjectRelease();
        }

        sub_1CA94C738();
        (*v39)(v62, v26, v77);
        (*(*(v6 - 8) + 32))(v40, &v26[v60], v6);
        OUTLINED_FUNCTION_89();
        __swift_storeEnumTagSinglePayload(v46, v47, v48, v6);
        OrderedDictionary.subscript.setter();
        v49 = sub_1CA94C6F8();
        v36 = v75;
      }

      while (v75 != v49);
    }

    v37 = v71;
    v38 = v54;
    *v54 = v70;
    *(v38 + 2) = v37;
  }

  return result;
}

double OrderedDictionary.sort(by:)(uint64_t a1, void *a2, void *a3)
{
  v13 = *v3;
  v14 = v3[1];
  v15 = v3[2];
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();
  OrderedDictionary.sorted(by:)(a1, a2, a3, &v16);
  if (v4)
  {
  }

  else
  {
    v9 = *v3;
    v10 = v3[1];
    v11 = v3[2];

    v12 = v17;
    result = *&v16;
    *v3 = v16;
    v3[2] = v12;
  }

  return result;
}

uint64_t OrderedDictionary.mapValues<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v7 = v5;
  v82 = a2;
  v83 = a4;
  v81 = a1;
  v71 = a5;
  v9 = sub_1CA94D098();
  OUTLINED_FUNCTION_18_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v71 - v13;
  v14 = a3[2];
  v101 = a3;
  OUTLINED_FUNCTION_4_12();
  v73 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_0();
  v21 = v20 - v19;
  v22 = a3[3];
  OUTLINED_FUNCTION_4_12();
  v80 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6_0();
  v78 = v28 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_4_12();
  v84 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3_1();
  v77 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_48_0();
  v76 = v36;
  v87 = sub_1CA94D098();
  OUTLINED_FUNCTION_4_12();
  v72 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_3_1();
  v86 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_48_0();
  v85 = v43;
  v45 = *v5;
  v44 = v5[1];
  v46 = v7[2];
  v47 = v101;
  v48 = v101[4];
  v91 = v14;
  v49 = v78;
  v79 = v48;
  OrderedDictionary.init()(&v99);
  v90 = v45;
  v92 = v45;
  v93 = v44;
  v94 = v46;
  v95 = v45;
  v96 = v44;
  v97 = v46;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v50 = OrderedDictionary.startIndex.getter(v47);

  v98 = v50;
  v90 = (v73 + 32);
  v89 = (v80 + 32);
  v74 = v84 + 4;
  v84 = (v72 + 32);
  v80 += 8;
  v75 = v21;
  while (1)
  {
    v51 = OrderedDictionary.endIndex.getter(v101);
    v52 = v98;
    if (v98 == v51)
    {
      v53 = 1;
      v54 = v86;
    }

    else
    {
      v55 = *(TupleTypeMetadata2 + 48);
      v56 = v76;
      OrderedDictionary.subscript.getter(v76, v76 + v55, v98, v101);
      v57 = v77;
      (*v90)(v77, v56, v91);
      v21 = v75;
      v49 = v78;
      (*v89)(v57 + *(TupleTypeMetadata2 + 48), v56 + v55, v22);
      v54 = v86;
      (*v74)(v86, v57, TupleTypeMetadata2);
      v92 = v52;
      OUTLINED_FUNCTION_0_61();
      swift_getWitnessTable();
      sub_1CA94C9A8();
      v53 = 0;
    }

    v58 = v85;
    __swift_storeEnumTagSinglePayload(v54, v53, 1, TupleTypeMetadata2);
    (*v84)(v58, v54, v87);
    if (__swift_getEnumTagSinglePayload(v58, 1, TupleTypeMetadata2) == 1)
    {

      v67 = v100;
      v68 = v71;
      *v71 = v99;
      *(v68 + 2) = v67;
      return result;
    }

    (*v89)(v49, v58 + *(TupleTypeMetadata2 + 48), v22);
    v59 = v22;
    v60 = v91;
    (*v90)(v21, v58, v91);
    v81(v49);
    if (v6)
    {
      break;
    }

    OUTLINED_FUNCTION_89();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v83);
    OUTLINED_FUNCTION_20_26();
    type metadata accessor for OrderedDictionary();
    OrderedDictionary.subscript.setter();
    v64 = OUTLINED_FUNCTION_11_31();
    v65(v64);
    v22 = v59;
  }

  (*(v73 + 8))(v21, v60);
  v69 = OUTLINED_FUNCTION_11_31();
  v70(v69);
}

uint64_t sub_1CA5CFED0(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1CA5CFF24(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  return sub_1CA5CF6FC(a1, a2, *(v2 + 40)) & 1;
}

unint64_t sub_1CA5CFF9C()
{
  result = qword_1EC446E28;
  if (!qword_1EC446E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446E28);
  }

  return result;
}

uint64_t sub_1CA5D0164(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC446E20, &qword_1CA98DE90);
    sub_1CA5CFF9C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA5D0224(uint64_t a1)
{
  v2 = sub_1CA62E6C4(a1, *v1, *(v1 + 8), *(v1 + 16));
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = RowTemplateParameterOptions.variablesDisabled.getter();
  v6 = objc_allocWithZone(type metadata accessor for ByteCountUnitPickerParameter());
  sub_1CA5D0CF8(1953066613, 0xE400000000000000, v5 & 1);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1CA3225FC();
  return v2;
}

uint64_t sub_1CA5D02CC(uint64_t a1, uint64_t *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v4 = *a2;
  v5 = a2[1];
  v3[4] = *a2;
  v3[5] = v5;
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  v3[6] = v9;
  *v9 = v3;
  v9[1] = sub_1CA5D0390;

  return sub_1CA62EC48(v4, v5, v6, v7);
}

uint64_t sub_1CA5D0390(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v2;
  OUTLINED_FUNCTION_1();
  *v10 = v9;

  if (v1)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 56) = a1;
    v13 = OUTLINED_FUNCTION_3_46();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1CA5D04C4()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  [*(v0 + 16) setNumber_];

  v4 = *(v2 + 24);
  v3 = *(v2 + 32);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1CA5D057C;
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);

  return sub_1CA5D0720(v7, v6, v4, v3);
}

uint64_t sub_1CA5D057C(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v2;
  OUTLINED_FUNCTION_1();
  *v10 = v9;

  if (v1)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 72) = a1;
    v13 = OUTLINED_FUNCTION_3_46();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1CA5D06B0()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 72);
  [*(v0 + 16) setByteCountUnit_];

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA5D0720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA5D0744, 0, 0);
}

uint64_t sub_1CA5D0744()
{
  if (*(v0[2] + 16) && (v1 = v0[4], v2 = v0[5], v3 = sub_1CA271BF8(), (v4 & 1) != 0))
  {
    v5 = *(*(v0[2] + 56) + 8 * v3);
    v0[6] = v5;
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      v6 = swift_task_alloc();
      v0[7] = v6;
      *v6 = v0;
      v6[1] = sub_1CA5D0908;
      v7 = v0[3];

      return sub_1CA32BC3C(v7);
    }

    else
    {
      sub_1CA2A741C();
      swift_allocError();
      *v10 = v5;
      *(v10 + 32) = 1;
      swift_willThrow();
      swift_unknownObjectRetain();
      v11 = v0[6];
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v12();
    }
  }

  else
  {
    v9 = v0[1];

    return v9(0);
  }
}

uint64_t sub_1CA5D0908()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v1;
  *(v2 + 64) = v6;
  *(v2 + 72) = v0;

  if (v0)
  {
    v7 = sub_1CA2A630C;
  }

  else
  {
    v7 = sub_1CA5D0A10;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA5D0A10()
{
  v1 = v0[8];
  if (!v1)
  {
    v6 = v0[6];
    swift_unknownObjectRelease();
    v4 = 0;
    goto LABEL_5;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = v0[6];
  if (v2)
  {
    v4 = v2;
    v5 = v0[6];
    swift_unknownObjectRelease();
LABEL_5:
    v7 = v0[6];
    swift_unknownObjectRelease();
    v8 = v0[1];

    return v8(v4);
  }

  sub_1CA2A741C();
  swift_allocError();
  v11 = v10;
  *(v10 + 24) = swift_getObjectType();
  *v11 = v1;
  *(v11 + 32) = 2;
  swift_willThrow();
  swift_unknownObjectRelease();
  v12 = v0[6];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v13();
}

uint64_t sub_1CA5D0B58(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 56) = v7;
  *v7 = v3;
  v7[1] = sub_1CA5D0C10;

  return sub_1CA5D02CC(a1, a2);
}

uint64_t sub_1CA5D0C10()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_1();
  *v4 = v3;

  OUTLINED_FUNCTION_5();

  return v5();
}

id sub_1CA5D0CF8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813C0;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  *(inited + 64) = v9;
  *(inited + 72) = @"HideClearButton";
  v10 = MEMORY[0x1E69E6370];
  *(inited + 80) = 1;
  *(inited + 104) = v10;
  *(inited + 112) = @"DisallowedVariableTypes";
  if (a3)
  {
    sub_1CA25B3D0(0, &qword_1EC444F20, off_1E836E2F8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = v4;
    v13 = @"Key";
    v14 = @"HideClearButton";
    v15 = @"DisallowedVariableTypes";
    v16 = [ObjCClassFromMetadata allInsertableVariableTypes];
    type metadata accessor for WFVariableType(0);
    sub_1CA514750(&qword_1EC441A60, type metadata accessor for WFVariableType);
    v17 = sub_1CA94C8F8();

    sub_1CA3E4650(v17);
    v19 = v18;
  }

  else
  {
    v20 = @"Key";
    v21 = @"HideClearButton";
    v22 = @"DisallowedVariableTypes";
    v19 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 120) = v19;
  _s3__C3KeyVMa_0(0);
  sub_1CA514750(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v23 = sub_1CA2F864C();
  v26.receiver = v4;
  v26.super_class = type metadata accessor for ByteCountUnitPickerParameter();
  v24 = objc_msgSendSuper2(&v26, sel_initWithDefinition_, v23);

  return v24;
}

uint64_t sub_1CA5D100C()
{
  valid = static NSByteCountFormatterUnits.wf_validUnits.getter();
  v1 = *(valid + 16);
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1CA94D508();
    v2 = 32;
    do
    {
      v3 = *(valid + v2);
      v4 = sub_1CA94D168();
      v5 = [objc_allocWithZone(WFByteCountUnitSubstitutableState) initWithNumber_];

      v6 = WFVariableSubstitutableParameterStateUpcast(v5);
      sub_1CA94D4D8();
      v7 = *(v9 + 16);
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
      v2 += 8;
      --v1;
    }

    while (v1);

    return v9;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1CA5D111C(void *a1)
{
  sub_1CA25B3D0(0, &unk_1EC446EC0, off_1E836DEE0);
  swift_getObjCClassFromMetadata();
  if (!WFVariableSubstitutableParameterStateDowncast(a1))
  {
    return 0;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = [v2 number]) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v4 = v3;
  v5 = sub_1CA94D158();
  v6 = WFLabelForByteCountUnit(v5);
  v7 = sub_1CA94C3A8();
  swift_unknownObjectRelease();

  return v7;
}

id sub_1CA5D12EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ByteCountUnitPickerParameter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA5D139C()
{
  v43 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v44 = v5;
  v45 = v4;
  v6 = sub_1CA94C438();
  v39 = v7;
  v40 = v6;
  v8 = sub_1CA948E58();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v39 - v42;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDB9F690;
  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v41 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v39 - v41;
  sub_1CA948B68();

  v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v17 = sub_1CA2F9F14(v45, v44, v40, v39, 0, 0, v10, v15);
  v18 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v45 = v18;
  *(inited + 80) = v17;
  *(inited + 104) = v18;
  *(inited + 112) = @"IconColor";
  *(inited + 120) = 1953392980;
  *(inited + 128) = 0xE400000000000000;
  v19 = MEMORY[0x1E69E6158];
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"IconSymbol";
  *(inited + 160) = 0x6E697070616DLL;
  *(inited + 168) = 0xE600000000000000;
  *(inited + 184) = v19;
  *(inited + 192) = @"IconSymbolColor";
  *(inited + 200) = 0x6E65657247;
  *(inited + 208) = 0xE500000000000000;
  *(inited + 224) = v19;
  *(inited + 232) = @"Name";
  v20 = @"IconColor";
  v21 = @"IconSymbol";
  v22 = @"IconSymbolColor";
  v23 = @"Name";
  v24 = sub_1CA94C438();
  v26 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v44 = &v39;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v39 - v42;
  sub_1CA948D98();
  v31 = [v11 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v39 - v41;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v32);
  v35 = v45;
  *(inited + 240) = v34;
  *(inited + 264) = v35;
  *(inited + 272) = @"ResidentCompatible";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  v36 = @"ResidentCompatible";
  v37 = sub_1CA94C368();
  *(inited + 344) = MEMORY[0x1E69E6158];
  *(inited + 312) = v37;
  *(inited + 320) = 0xD000000000000015;
  *(inited + 328) = 0x80000001CA993430;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t WFAction.parameterState<A>(_:forKey:)()
{
  v1 = sub_1CA94C368();
  v2 = [v0 parameterStateForKey_];

  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA5D1A3C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1CA5D1AF4;

  return WFAction.run(with:)();
}

uint64_t sub_1CA5D1AF4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  v6 = v3[5];
  v7 = v3[3];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[4];
  if (v2)
  {
    v11 = sub_1CA948AC8();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(v3[4], 0);
  }

  _Block_release(v4[4]);
  v12 = v9[1];

  return v12();
}

uint64_t WFAction.processParametersWithoutAskingForValues(withInput:workQueue:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = v2;
  return OUTLINED_FUNCTION_0_62(sub_1CA5D1CA0);
}

uint64_t sub_1CA5D1CA0()
{
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  v0[3].i64[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446ED0, &qword_1CA98E268);
  *v3 = v0;
  v3[1] = sub_1CA5D1DAC;

  return MEMORY[0x1EEE6DE38](&v0[1]);
}

uint64_t sub_1CA5D1DAC()
{
  v3 = *(*v1 + 56);
  v2 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v2;
  *(v2 + 64) = v0;

  if (v0)
  {
    v5 = sub_1CA5D1EC0;
  }

  else
  {
    v6 = *(v2 + 48);

    v5 = sub_1CA5806B4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA5D1EC0()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

void sub_1CA5D1F24(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446ED8, &qword_1CA98E288);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_1CA5D26A8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA5D2178;
  aBlock[3] = &block_descriptor_27;
  v13 = _Block_copy(aBlock);

  [a2 processParametersWithoutAskingForValuesWithInput:0 workQueue:a3 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_1CA5D20E0(uint64_t result, void *a2, id a3)
{
  if (result)
  {
    v3 = a2;
    sub_1CA94C218();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446ED8, &qword_1CA98E288);
    return sub_1CA94C7E8();
  }

  else if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446ED8, &qword_1CA98E288);
    return sub_1CA94C7D8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CA5D2178(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444280, &qword_1CA983550);
    v6 = sub_1CA94C1C8();
  }

  v9 = a3;
  v10 = a4;
  v8(v6, a3, a4);
}

uint64_t WFAction.contentItemClass.getter()
{
  [v0 contentItemClass];
  swift_getObjCClassMetadata();
  sub_1CA5D25A8();

  return swift_dynamicCastMetatypeUnconditional();
}

uint64_t sub_1CA5D22C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = sub_1CA94C368();
  v8 = [v5 *a5];

  if (v8)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1CA2C0A74(v13);
    return 0;
  }
}

uint64_t sub_1CA5D23AC(SEL *a1)
{
  v2 = [v1 *a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
  v3 = sub_1CA94C658();

  v4 = *(v3 + 16);
  if (v4)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1CA2B8DF8(0, v4, 0);
    v5 = v12;
    sub_1CA5D25A8();
    v6 = 32;
    do
    {
      v7 = *(v3 + v6);
      v8 = swift_dynamicCastMetatypeUnconditional();
      v10 = *(v12 + 16);
      v9 = *(v12 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1CA2B8DF8(v9 > 1, v10 + 1, 1);
      }

      *(v12 + 16) = v10 + 1;
      *(v12 + 8 * v10 + 32) = v8;
      v6 += 8;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

Swift::Bool __swiftcall WFAction.canHandleInput(of:supportedClasses:includingCoercedTypes:)(Swift::OpaquePointer of, Swift::OpaquePointer supportedClasses, Swift::Bool includingCoercedTypes)
{
  sub_1CA360CAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
  v5 = sub_1CA94C648();

  sub_1CA360CAC();
  v6 = sub_1CA94C648();

  v7 = [v3 canHandleInputOfContentClasses:v5 withSupportedClasses:v6 includingCoercedTypes:includingCoercedTypes];

  return v7;
}

unint64_t sub_1CA5D25A8()
{
  result = qword_1EDB9F790;
  if (!qword_1EDB9F790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB9F790);
  }

  return result;
}

uint64_t sub_1CA5D25F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CA2DBC14;

  return sub_1CA5D1A3C(v2, v3, v4);
}

uint64_t sub_1CA5D26A8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446ED8, &qword_1CA98E288) - 8) + 80);

  return sub_1CA5D20E0(a1, a2, a3);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1CA5D2788()
{
  v31[0] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
  *(inited + 64) = v1;
  *(inited + 72) = @"IconColor";
  *(inited + 80) = 1953392980;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 104) = v1;
  *(inited + 112) = @"IconSymbol";
  *(inited + 120) = 0xD000000000000026;
  *(inited + 128) = 0x80000001CA9D3340;
  *(inited + 144) = v1;
  *(inited + 152) = @"IconSymbolColor";
  *(inited + 160) = 1702194242;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 184) = v1;
  *(inited + 192) = @"Input";
  v2 = @"ActionClass";
  v3 = @"IconColor";
  v4 = @"IconSymbol";
  v5 = @"IconSymbolColor";
  v6 = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v7 = sub_1CA94C1E8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 200) = v7;
  *(inited + 224) = v8;
  *(inited + 232) = @"LocallyProcessesData";
  v9 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v9;
  *(inited + 272) = @"Name";
  v10 = @"LocallyProcessesData";
  v11 = @"Name";
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA94C438();
  v17 = v16;
  v18 = sub_1CA948E58();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v22 = [qword_1EDB9F690 bundleURL];
  v23 = sub_1CA948BA8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v27 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v28 = sub_1CA2F9F14(v12, v14, v15, v17, 0, 0, v21, v26);
  *(inited + 304) = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 280) = v28;
  v29 = sub_1CA94C368();
  *(inited + 344) = MEMORY[0x1E69E6158];
  *(inited + 312) = v29;
  *(inited + 320) = 0xD000000000000018;
  *(inited + 328) = 0x80000001CA9933D0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA5D2B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v48 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"AppSearchType";
  *(inited + 40) = 0x7070416E65704FLL;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 64) = v4;
  *(inited + 72) = @"Class";
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000001CA99B070;
  *(inited + 104) = v4;
  *(inited + 112) = @"Label";
  v5 = @"AppSearchType";
  v6 = @"Class";
  v7 = @"Label";
  v8 = sub_1CA94C438();
  v47 = v9;
  v10 = sub_1CA94C438();
  v12 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDB9F690;
  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v8, v47, v10, v12, 0, 0, v16, v22);
  v25 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v24;
  *(inited + 144) = v25;
  *(inited + 152) = @"Key";
  *(inited + 160) = 0x65756C6176;
  *(inited + 168) = 0xE500000000000000;
  v26 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"Placeholder";
  v27 = @"Key";
  v28 = @"Placeholder";
  sub_1CA94C438();
  v29 = sub_1CA94C368();
  v30 = sub_1CA94C368();

  v31 = [v17 localizedStringForKey:v29 value:v30 table:0];

  v32 = sub_1CA94C3A8();
  v34 = v33;

  *(inited + 200) = v32;
  *(inited + 208) = v34;
  *(inited + 224) = v26;
  *(inited + 232) = @"DisallowedVariableTypes";
  v35 = @"DisallowedVariableTypes";
  if (RowTemplateParameterOptions.variablesDisabled.getter())
  {
    sub_1CA25B3D0(0, &qword_1EC444F20, off_1E836E2F8);
    v36 = [swift_getObjCClassFromMetadata() allInsertableVariableTypes];
    type metadata accessor for WFVariableType(0);
    sub_1CA514750(&qword_1EC441A60, type metadata accessor for WFVariableType);
    v37 = sub_1CA94C8F8();

    sub_1CA3E4650(v37);
    v39 = v38;
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 240) = v39;
  _s3__C3KeyVMa_0(0);
  sub_1CA514750(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v40 = sub_1CA2F864C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1CA981310;
  v42 = v50;
  *(v41 + 32) = v49;
  *(v41 + 40) = v42;
  v43 = objc_allocWithZone(WFAppPickerParameter);
  sub_1CA94C218();
  *(v41 + 48) = [v43 initWithDefinition_];
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  v44 = sub_1CA94C1E8();

  return v44;
}

uint64_t sub_1CA5D30E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a1;
  v4[21] = a3;
  v5 = *a2;
  v4[22] = a4;
  v4[23] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1CA5D3110, 0, 0);
}

uint64_t sub_1CA5D3110()
{
  if ([*(v0 + 160) numberOfItems])
  {
    v1 = *(v0 + 184);
    v2 = sub_1CA323E28(*(v0 + 168), *(v0 + 176));
    *(v0 + 192) = v2;
    if (v2)
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v4 = [v3 value];
        *(v0 + 200) = v4;
        if (v4)
        {
          v5 = v4;
          *(v0 + 208) = sub_1CA61D300(v4);
          *(v0 + 216) = v6;
          if (v6)
          {
            v7 = *(v0 + 160);
            sub_1CA25B3D0(0, &qword_1EC445FC8, 0x1E6996C80);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 144;
            *(v0 + 24) = sub_1CA5D3310;
            v9 = swift_continuation_init();
            *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AD8, &qword_1CA988C48);
            *(v0 + 80) = MEMORY[0x1E69E9820];
            *(v0 + 88) = 1107296256;
            *(v0 + 96) = sub_1CA470E00;
            *(v0 + 104) = &block_descriptor_28;
            *(v0 + 112) = v9;
            [v7 getObjectRepresentations:v0 + 80 forClass:ObjCClassFromMetadata];

            return MEMORY[0x1EEE6DEC8](v0 + 16);
          }
        }
      }

      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_2_4();

  return v10(0);
}

uint64_t sub_1CA5D3310()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 224) = v3;
  if (v3)
  {
    v4 = *(v1 + 216);

    v5 = sub_1CA5D365C;
  }

  else
  {
    v5 = sub_1CA5D3428;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1CA5D3428()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  v3 = sub_1CA4F878C(v2);

  if (v3)
  {
    v4 = sub_1CA25B410();
    if (v4)
    {
      v5 = v4;
      v25 = MEMORY[0x1E69E7CC0];
      sub_1CA271524();
      if (v5 < 0)
      {
        __break(1u);
        return;
      }

      v24 = v0;
      v6 = 0;
      v7 = v25;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1CCAA22D0](v6, v3);
        }

        else
        {
          v8 = *(v3 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = [v8 bundleIdentifier];
        v11 = sub_1CA94C3A8();
        v13 = v12;

        v14 = *(v25 + 16);
        if (v14 >= *(v25 + 24) >> 1)
        {
          sub_1CA271524();
        }

        ++v6;
        *(v25 + 16) = v14 + 1;
        v15 = v25 + 16 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v13;
      }

      while (v5 != v6);

      v0 = v24;
    }

    else
    {

      v7 = MEMORY[0x1E69E7CC0];
    }

    v19 = *(v0 + 216);
    v20 = *(v0 + 192);
    v21 = *(v0 + 200);
    *(v0 + 80) = *(v0 + 208);
    *(v0 + 88) = v19;
    v22 = swift_task_alloc();
    *(v22 + 16) = v0 + 80;
    v18 = sub_1CA2BFD14(sub_1CA2E9370, v22, v7);

    swift_unknownObjectRelease();
  }

  else
  {
    v16 = *(v0 + 216);
    v17 = *(v0 + 192);

    swift_unknownObjectRelease();
    v18 = 0;
  }

  OUTLINED_FUNCTION_2_4();

  v23(v18);
}

uint64_t sub_1CA5D365C()
{
  v1 = v0[28];
  v3 = v0[24];
  v2 = v0[25];
  swift_willThrow();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_2_4();
  v5 = v0[28];

  return v4(0);
}

uint64_t sub_1CA5D36D8(uint64_t a1, uint64_t *a2)
{
  v7 = *v2;
  v6 = v2[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1CA5D378C;

  return sub_1CA5D30E8(a1, a2, v7, v6);
}

uint64_t sub_1CA5D378C(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  OUTLINED_FUNCTION_2_4();
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t block_destroy_helper_28(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

{
  v1 = *(a1 + 40);
}

id sub_1CA5D38F8()
{
  v36 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Input";
  v6 = @"Input";
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v7 = sub_1CA94C1E8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 120) = v7;
  *(inited + 144) = v8;
  *(inited + 152) = @"LocallyProcessesData";
  v9 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  *(inited + 184) = v9;
  *(inited + 192) = @"Name";
  v10 = @"LocallyProcessesData";
  v11 = @"Name";
  v12 = sub_1CA94C438();
  v34 = v13;
  v14 = sub_1CA94C438();
  v16 = v15;
  v17 = sub_1CA948E58();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v21 = [qword_1EDB9F690 bundleURL];
  v22 = sub_1CA948BA8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v26 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v27 = sub_1CA2F9F14(v12, v34, v14, v16, 0, 0, v20, v25);
  v28 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 200) = v27;
  *(inited + 224) = v28;
  *(inited + 232) = @"RequiredResources";
  *(inited + 264) = v35;
  *(inited + 240) = &unk_1F4A08CA0;
  v29 = @"RequiredResources";
  v30 = sub_1CA94C368();
  v31 = MEMORY[0x1E69E6158];
  *(inited + 304) = MEMORY[0x1E69E6158];
  *(inited + 272) = v30;
  *(inited + 280) = 0xD000000000000014;
  *(inited + 288) = 0x80000001CA997EB0;
  v32 = sub_1CA94C368();
  *(inited + 344) = v31;
  *(inited + 312) = v32;
  *(inited + 320) = 0x747369747241;
  *(inited + 328) = 0xE600000000000000;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5D3D64()
{
  v34 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v33 = v5;
  *(inited + 104) = v5;
  *(inited + 112) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v6;
  *(inited + 152) = @"Name";
  v7 = @"LocallyProcessesData";
  v8 = @"Name";
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA948E58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v24 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v25 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v18, v23);
  v26 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v25;
  *(inited + 184) = v26;
  *(inited + 192) = @"Output";
  v27 = @"Output";
  v28 = MEMORY[0x1E69E6158];
  v29 = sub_1CA94C1E8();
  *(inited + 224) = v33;
  *(inited + 200) = v29;
  v30 = sub_1CA94C368();
  *(inited + 264) = v28;
  *(inited + 232) = v30;
  *(inited + 240) = 0xD00000000000001BLL;
  *(inited + 248) = 0x80000001CA9944C0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5D4150()
{
  v46 = sub_1CA94B4D8();
  v44 = *(v46 - 8);
  v0 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9D38B0;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v6, v8, v9, v11, 0, 0, v15, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v22;
  *(inited + 104) = v23;
  *(inited + 112) = @"AppDefinition";
  v24 = @"AppDefinition";
  v25 = MEMORY[0x1E69E6158];
  v26 = sub_1CA94C1E8();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v26;
  *(inited + 144) = v27;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0x6E65657247;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 184) = v25;
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000021;
  *(inited + 208) = 0x80000001CA9D38F0;
  *(inited + 224) = v25;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 264) = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  v28 = @"IconColor";
  v29 = @"IconSymbol";
  v30 = @"InputPassthrough";
  v31 = sub_1CA94C368();
  *(inited + 304) = v25;
  *(inited + 272) = v31;
  *(inited + 280) = 0xD000000000000057;
  *(inited + 288) = 0x80000001CA9D3920;
  *(inited + 312) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v32 = swift_initStackObject();
  v43 = xmmword_1CA981310;
  *(v32 + 16) = xmmword_1CA981310;
  *(v32 + 32) = 0x6574617473;
  *(v32 + 40) = 0xE500000000000000;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v33 = swift_initStackObject();
  *(v33 + 16) = v43;
  *(v33 + 64) = v25;
  *(v33 + 32) = @"Key";
  *(v33 + 40) = 0x65756C61566E4FLL;
  *(v33 + 48) = 0xE700000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v34 = @"Key";
  sub_1CA94C1E8();
  *(v32 + 48) = sub_1CA2F864C();
  v35 = sub_1CA94C1E8();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 320) = v35;
  *(inited + 344) = v36;
  *(inited + 352) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1CA9813B0;
  v38 = v45;
  (*(v44 + 104))(v45, *MEMORY[0x1E69DB3C0], v46);
  v39 = objc_allocWithZone(type metadata accessor for WFDeviceCapabilityResource());
  v40 = @"RequiredResources";
  WFDeviceCapabilityResource.init(capability:)(v38);
  *(v37 + 32) = v41;
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444680, &qword_1CA9839D8);
  *(inited + 360) = v37;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5D4808()
{
  v228 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000023;
  *(inited + 48) = 0x80000001CA9D3990;
  *(inited + 64) = v1;
  *(inited + 72) = @"Description";
  v239 = inited;
  v238 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1CA981310;
  *(v2 + 32) = @"DescriptionSummary";
  v3 = @"ActionClass";
  v4 = @"Description";
  v5 = @"DescriptionSummary";
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v244 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v245 = v14;
  v15 = &v222 - v244;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v242 = qword_1EDB9F690;
  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v241 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v243 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v222 - v243;
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v6, v8, v9, v11, 0, 0, v15, v19);
  v240 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v2 + 64) = v240;
  *(v2 + 40) = v21;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v22 = v238;
  v23 = sub_1CA6B3784();
  v24 = v239;
  v239[10] = v23;
  v24[13] = v22;
  v24[14] = @"IconName";
  v24[15] = 0x65646F43205251;
  v24[16] = 0xE700000000000000;
  v25 = MEMORY[0x1E69E6158];
  v24[18] = MEMORY[0x1E69E6158];
  v24[19] = @"Input";
  v26 = v24;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v27 = swift_initStackObject();
  v237 = xmmword_1CA981350;
  *(v27 + 16) = xmmword_1CA981350;
  *(v27 + 32) = 0x656C7069746C754DLL;
  *(v27 + 40) = 0xE800000000000000;
  v28 = MEMORY[0x1E69E6370];
  *(v27 + 48) = 1;
  *(v27 + 72) = v28;
  strcpy((v27 + 80), "ParameterKey");
  *(v27 + 93) = 0;
  *(v27 + 94) = -5120;
  *(v27 + 96) = 0x747865544657;
  *(v27 + 104) = 0xE600000000000000;
  *(v27 + 120) = v25;
  *(v27 + 128) = 0x6465726975716552;
  *(v27 + 136) = 0xE800000000000000;
  *(v27 + 144) = 1;
  *(v27 + 168) = v28;
  *(v27 + 176) = 0x7365707954;
  v29 = v28;
  *(v27 + 184) = 0xE500000000000000;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v27 + 216) = v238;
  *(v27 + 192) = &unk_1F4A08DC8;
  v30 = @"IconName";
  v31 = @"Input";
  v32 = sub_1CA94C1E8();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v236 = v33;
  v26[20] = v32;
  v26[23] = v33;
  v26[24] = @"LocallyProcessesData";
  *(v26 + 200) = 1;
  v26[28] = v29;
  v26[29] = @"Name";
  v34 = @"LocallyProcessesData";
  v35 = @"Name";
  v36 = sub_1CA94C438();
  v232 = v37;
  v233 = v36;
  v38 = sub_1CA94C438();
  v40 = v39;
  v234 = &v222;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v222 - v244;
  sub_1CA948D98();
  v42 = v242;
  v43 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  v44 = v243;
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v233, v232, v38, v40, 0, 0, v41, &v222 - v44);
  v47 = v239;
  v48 = v240;
  v239[30] = v46;
  v47[33] = v48;
  v47[34] = @"Output";
  v49 = swift_initStackObject();
  *(v49 + 16) = v237;
  *(v49 + 32) = 0x75736F6C63736944;
  *(v49 + 40) = 0xEF6C6576654C6572;
  *(v49 + 48) = 0x63696C627550;
  *(v49 + 56) = 0xE600000000000000;
  *(v49 + 72) = MEMORY[0x1E69E6158];
  *(v49 + 80) = 0x656C7069746C754DLL;
  *(v49 + 88) = 0xE800000000000000;
  *(v49 + 96) = 1;
  *(v49 + 120) = MEMORY[0x1E69E6370];
  *(v49 + 128) = 0x614E74757074754FLL;
  *(v49 + 136) = 0xEA0000000000656DLL;
  v50 = @"Output";
  v51 = sub_1CA94C438();
  v233 = v52;
  v234 = v51;
  v232 = sub_1CA94C438();
  v54 = v53;
  v235 = &v222;
  MEMORY[0x1EEE9AC00](v232);
  v55 = &v222 - v244;
  sub_1CA948D98();
  v56 = [v42 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v49 + 144) = sub_1CA2F9F14(v234, v233, v232, v54, 0, 0, v55, &v222 - v44);
  *(v49 + 168) = v48;
  *(v49 + 176) = 0x7365707954;
  *(v49 + 216) = v238;
  *(v49 + 184) = 0xE500000000000000;
  *(v49 + 192) = &unk_1F4A08DF8;
  v58 = MEMORY[0x1E69E6158];
  v59 = sub_1CA94C1E8();
  v60 = v239;
  v239[35] = v59;
  v60[38] = v236;
  v60[39] = @"Parameters";
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v233 = swift_allocObject();
  *(v233 + 16) = xmmword_1CA981560;
  v238 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v61 = swift_allocObject();
  v226 = xmmword_1CA981370;
  *(v61 + 16) = xmmword_1CA981370;
  *(v61 + 32) = @"Class";
  *(v61 + 40) = 0xD000000000000014;
  *(v61 + 48) = 0x80000001CA99B500;
  *(v61 + 64) = v58;
  *(v61 + 72) = @"Key";
  *(v61 + 80) = 0x747865544657;
  *(v61 + 88) = 0xE600000000000000;
  *(v61 + 104) = v58;
  *(v61 + 112) = @"Label";
  v62 = @"Class";
  v63 = @"Key";
  v64 = @"Label";
  v65 = v62;
  v66 = v63;
  v67 = v64;
  v230 = v65;
  v231 = v66;
  v232 = v67;
  v68 = @"Parameters";
  v235 = sub_1CA94C438();
  v229 = v69;
  v70 = sub_1CA94C438();
  v225 = v71;
  v236 = &v222;
  MEMORY[0x1EEE9AC00](v70);
  v72 = v244;
  sub_1CA948D98();
  v73 = v242;
  v74 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v222 - v243;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v61 + 120) = sub_1CA2F9F14(v235, v229, v70, v225, 0, 0, &v222 - v72, v75);
  v77 = v240;
  *(v61 + 144) = v240;
  *(v61 + 152) = @"Multiline";
  *(v61 + 160) = 1;
  *(v61 + 184) = MEMORY[0x1E69E6370];
  *(v61 + 192) = @"Placeholder";
  v78 = @"Multiline";
  v79 = @"Placeholder";
  v235 = sub_1CA94C438();
  v229 = v80;
  v81 = sub_1CA94C438();
  v83 = v82;
  v236 = &v222;
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v222 - v72;
  sub_1CA948D98();
  v85 = [v73 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v222 - v243;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v88 = sub_1CA2F9F14(v235, v229, v81, v83, 0, 0, v84, v86);
  *(v61 + 224) = v77;
  *(v61 + 200) = v88;
  _s3__C3KeyVMa_0(0);
  v236 = v89;
  v235 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v233 + 32) = sub_1CA2F864C();
  v90 = swift_allocObject();
  *(v90 + 16) = v237;
  v229 = 0x80000001CA9A7720;
  v91 = v230;
  *(v90 + 32) = v230;
  *(v90 + 40) = 0xD000000000000016;
  *(v90 + 48) = 0x80000001CA9A7720;
  v92 = MEMORY[0x1E69E6158];
  *(v90 + 64) = MEMORY[0x1E69E6158];
  *(v90 + 72) = @"DefaultValue";
  v93 = objc_allocWithZone(MEMORY[0x1E69E09E0]);
  v94 = @"DefaultValue";
  v230 = v91;
  v223 = v94;
  v95 = [v93 initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v96 = [v95 serializedRepresentation];

  v97 = sub_1CA94C1C8();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444060, &qword_1CA981AE0);
  *(v90 + 80) = v97;
  v99 = v231;
  v100 = v232;
  *(v90 + 104) = v98;
  *(v90 + 112) = v99;
  v224 = 0xD000000000000013;
  v225 = v98;
  *(v90 + 120) = 0xD000000000000013;
  *(v90 + 128) = 0x80000001CA9D3A60;
  *(v90 + 144) = v92;
  *(v90 + 152) = v100;
  v231 = v99;
  v232 = v100;
  v101 = sub_1CA94C438();
  v103 = v102;
  v104 = sub_1CA94C438();
  v106 = v105;
  v222 = &v222;
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v222 - v244;
  sub_1CA948D98();
  v108 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v222 - v243;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v101, v103, v104, v106, 0, 0, v107, v109);
  *(v90 + 184) = v240;
  *(v90 + 160) = v111;
  sub_1CA94C1E8();
  *(v233 + 40) = sub_1CA2F864C();
  v112 = swift_allocObject();
  *(v112 + 16) = v237;
  v113 = v230;
  *(v112 + 32) = v230;
  *(v112 + 40) = 0xD000000000000016;
  *(v112 + 48) = v229;
  v114 = MEMORY[0x1E69E6158];
  v115 = v223;
  *(v112 + 64) = MEMORY[0x1E69E6158];
  *(v112 + 72) = v115;
  v116 = objc_allocWithZone(MEMORY[0x1E69E09E0]);
  v230 = v113;
  v229 = v115;
  v117 = [v116 initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v118 = [v117 serializedRepresentation];

  v119 = sub_1CA94C1C8();
  *(v112 + 80) = v119;
  v120 = v224;
  v121 = v231;
  v122 = v232;
  *(v112 + 104) = v225;
  *(v112 + 112) = v121;
  *(v112 + 120) = v120;
  *(v112 + 128) = 0x80000001CA9D3AD0;
  *(v112 + 144) = v114;
  *(v112 + 152) = v122;
  v231 = v121;
  v232 = v122;
  v123 = sub_1CA94C438();
  v125 = v124;
  v126 = sub_1CA94C438();
  v128 = v127;
  v225 = &v222;
  MEMORY[0x1EEE9AC00](v126);
  v129 = &v222 - v244;
  sub_1CA948D98();
  v130 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  v131 = &v222 - v243;
  sub_1CA948B68();

  v132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v133 = sub_1CA2F9F14(v123, v125, v126, v128, 0, 0, v129, v131);
  *(v112 + 184) = v240;
  *(v112 + 160) = v133;
  sub_1CA94C1E8();
  v134 = sub_1CA2F864C();
  v135 = v233;
  *(v233 + 48) = v134;
  v136 = swift_allocObject();
  *(v136 + 16) = v237;
  *(v136 + 32) = v230;
  *(v136 + 40) = 0xD000000000000011;
  *(v136 + 48) = 0x80000001CA99E620;
  v137 = MEMORY[0x1E69E6158];
  v138 = v229;
  *(v136 + 64) = MEMORY[0x1E69E6158];
  *(v136 + 72) = v138;
  *(v136 + 80) = 0;
  v139 = v231;
  *(v136 + 104) = MEMORY[0x1E69E6370];
  *(v136 + 112) = v139;
  *(v136 + 120) = 0x6E756F5252514657;
  *(v136 + 128) = 0xEB00000000646564;
  v140 = v232;
  *(v136 + 144) = v137;
  *(v136 + 152) = v140;
  v141 = sub_1CA94C438();
  v225 = v142;
  v143 = sub_1CA94C438();
  v145 = v144;
  *&v237 = &v222;
  MEMORY[0x1EEE9AC00](v143);
  v146 = &v222 - v244;
  sub_1CA948D98();
  v147 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  v148 = &v222 - v243;
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v150 = sub_1CA2F9F14(v141, v225, v143, v145, 0, 0, v146, v148);
  *(v136 + 184) = v240;
  *(v136 + 160) = v150;
  sub_1CA94C1E8();
  *(v135 + 56) = sub_1CA2F864C();
  v151 = swift_allocObject();
  *(v151 + 16) = v226;
  *(v151 + 32) = v230;
  *(v151 + 40) = 0xD000000000000016;
  *(v151 + 48) = 0x80000001CA99C4A0;
  v152 = MEMORY[0x1E69E6158];
  v153 = v229;
  *(v151 + 64) = MEMORY[0x1E69E6158];
  *(v151 + 72) = v153;
  *(v151 + 80) = 0x6D756964654DLL;
  *(v151 + 88) = 0xE600000000000000;
  *(v151 + 104) = v152;
  *(v151 + 112) = @"Items";
  *&v237 = swift_allocObject();
  *(v237 + 16) = xmmword_1CA981570;
  v154 = @"Items";
  v155 = sub_1CA94C438();
  v229 = v156;
  v230 = v155;
  v157 = sub_1CA94C438();
  v227 = v158;
  v234 = &v222;
  MEMORY[0x1EEE9AC00](v157);
  v159 = v244;
  sub_1CA948D98();
  v160 = v242;
  v161 = [v242 bundleURL];
  *&v226 = &v222;
  MEMORY[0x1EEE9AC00](v161);
  v162 = &v222 - v243;
  sub_1CA948B68();

  v163 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v164 = sub_1CA2F9F14(v230, v229, v157, v227, 0, 0, &v222 - v159, v162);
  v165 = v237;
  *(v237 + 32) = v164;
  v166 = sub_1CA94C438();
  v229 = v167;
  v230 = v166;
  v227 = sub_1CA94C438();
  v169 = v168;
  v234 = &v222;
  MEMORY[0x1EEE9AC00](v227);
  sub_1CA948D98();
  v170 = [v160 bundleURL];
  MEMORY[0x1EEE9AC00](v170);
  v171 = v243;
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v165 + 40) = sub_1CA2F9F14(v230, v229, v227, v169, 0, 0, &v222 - v159, &v222 - v171);
  v173 = sub_1CA94C438();
  v229 = v174;
  v230 = v173;
  v175 = sub_1CA94C438();
  v227 = v176;
  v234 = &v222;
  MEMORY[0x1EEE9AC00](v175);
  v177 = &v222 - v244;
  sub_1CA948D98();
  v178 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v178);
  sub_1CA948B68();

  v179 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v180 = sub_1CA2F9F14(v230, v229, v175, v227, 0, 0, v177, &v222 - v171);
  *(v237 + 48) = v180;
  v181 = sub_1CA94C438();
  v229 = v182;
  v230 = v181;
  v183 = sub_1CA94C438();
  v227 = v184;
  v234 = &v222;
  MEMORY[0x1EEE9AC00](v183);
  v185 = v244;
  sub_1CA948D98();
  v186 = v242;
  v187 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v187);
  v188 = v243;
  sub_1CA948B68();

  v189 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v190 = sub_1CA2F9F14(v230, v229, v183, v227, 0, 0, &v222 - v185, &v222 - v188);
  v191 = v237;
  *(v237 + 56) = v190;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v151 + 120) = v191;
  v193 = v231;
  *(v151 + 144) = v192;
  *(v151 + 152) = v193;
  *(v151 + 160) = 0xD000000000000018;
  *(v151 + 168) = 0x80000001CA9D3C10;
  v194 = v232;
  *(v151 + 184) = MEMORY[0x1E69E6158];
  *(v151 + 192) = v194;
  v234 = sub_1CA94C438();
  v232 = v195;
  v231 = sub_1CA94C438();
  v197 = v196;
  *&v237 = &v222;
  MEMORY[0x1EEE9AC00](v231);
  sub_1CA948D98();
  v198 = [v186 bundleURL];
  MEMORY[0x1EEE9AC00](v198);
  sub_1CA948B68();

  v199 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v200 = sub_1CA2F9F14(v234, v232, v231, v197, 0, 0, &v222 - v185, &v222 - v188);
  *(v151 + 224) = v240;
  *(v151 + 200) = v200;
  sub_1CA94C1E8();
  v201 = sub_1CA2F864C();
  v202 = v233;
  *(v233 + 64) = v201;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v204 = v239;
  v239[40] = v202;
  v204[43] = v203;
  v204[44] = @"ParameterSummary";
  v205 = @"ParameterSummary";
  v206 = sub_1CA94C438();
  v208 = v207;
  v209 = sub_1CA94C438();
  v211 = v210;
  MEMORY[0x1EEE9AC00](v209);
  v212 = &v222 - v244;
  sub_1CA948D98();
  v213 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v213);
  v214 = &v222 - v243;
  sub_1CA948B68();

  v215 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v216 = sub_1CA2F9F14(v206, v208, v209, v211, 0, 0, v212, v214);
  v217 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v218 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v219 = v239;
  v239[45] = v217;
  v219[48] = v218;
  v219[49] = @"ResidentCompatible";
  v219[53] = MEMORY[0x1E69E6370];
  *(v219 + 400) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v220 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5D62D0()
{
  v72 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981400;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ELL;
  *(inited + 48) = 0x80000001CA9D3CF0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v77 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v78 = v12;
  v13 = &v68 - v77;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v76 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v74 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v75 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v68 - v75;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v73 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v71 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v69 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v70 = &v68;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v68 - v77;
  sub_1CA948D98();
  v33 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v68 - v75;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v69, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v73;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v71;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"Name";
  v38 = @"Name";
  v39 = sub_1CA94C438();
  v41 = v40;
  v42 = sub_1CA94C438();
  v44 = v43;
  v71 = &v68;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v68 - v77;
  sub_1CA948D98();
  v46 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v68 - v75;
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 200) = sub_1CA2F9F14(v39, v41, v42, v44, 0, 0, v45, v47);
  *(inited + 224) = v73;
  *(inited + 232) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1CA981350;
  *(v49 + 32) = 0x75736F6C63736944;
  *(v49 + 40) = 0xEF6C6576654C6572;
  *(v49 + 48) = 0x65746176697250;
  *(v49 + 56) = 0xE700000000000000;
  *(v49 + 72) = MEMORY[0x1E69E6158];
  *(v49 + 80) = 0x656C7069746C754DLL;
  *(v49 + 88) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 96) = 1;
  *(v49 + 120) = v50;
  *(v49 + 128) = 0x614E74757074754FLL;
  *(v49 + 136) = 0xEA0000000000656DLL;
  v51 = @"Output";
  v52 = sub_1CA94C438();
  v70 = v53;
  v54 = sub_1CA94C438();
  v56 = v55;
  v71 = &v68;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v68 - v77;
  sub_1CA948D98();
  v58 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v68 - v75;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v49 + 144) = sub_1CA2F9F14(v52, v70, v54, v56, 0, 0, v57, v59);
  *(v49 + 168) = v73;
  *(v49 + 176) = 0x7365707954;
  *(v49 + 184) = 0xE500000000000000;
  *(v49 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 192) = &unk_1F4A08E68;
  v61 = sub_1CA94C1E8();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v61;
  *(inited + 264) = v62;
  *(inited + 272) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1CA9813B0;
  v79 = 2;
  v80 = 0;
  v64 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v65 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v79);
  *(v63 + 32) = v66;
  *(inited + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 280) = v63;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t WFAction.isLinkSystemFrameworkIntent.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = [v0 metadata];
    if (v1)
    {
      v2 = v1;
      v3 = &qword_1EC444660;
      v4 = 0x1E69AC670;
LABEL_7:
      sub_1CA25B3D0(0, v3, v4);
      v7 = sub_1CA94CF38();

      return v7 & 1;
    }
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 queryMetadata];
    if (v6)
    {
      v2 = v6;
      v3 = &qword_1EC4445B0;
      v4 = 0x1E69AC980;
      goto LABEL_7;
    }
  }

  return 0;
}

objc_class *WFAction.toolkitSystemProtocols.getter()
{
  v1 = v0;
  v304 = sub_1CA949F78();
  v2 = OUTLINED_FUNCTION_1_0(v304);
  v296 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_1();
  v303 = v6;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_45_0();
  v300 = v8;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_45_0();
  v290 = v10;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v11);
  v293 = v277 - v12;
  v13 = sub_1CA94B488();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_6_2();
  v302 = v15;
  v299 = sub_1CA94B568();
  v16 = OUTLINED_FUNCTION_1_0(v299);
  v295 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_2();
  v298 = v20;
  v21 = sub_1CA94A158();
  v305 = OUTLINED_FUNCTION_1_0(v21);
  v306 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v305);
  OUTLINED_FUNCTION_3_1();
  v291 = v25;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_45_0();
  v292 = v27;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_45_0();
  v294 = v29;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_45_0();
  v297 = v31;
  OUTLINED_FUNCTION_31_2();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = v277 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = v277 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = v277 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = (v277 - v43);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = v277 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = (v277 - v49);
  v51 = MEMORY[0x1EEE9AC00](v48);
  v53 = v277 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51);
  v56 = v277 - v55;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_45_0();
  v301 = v57;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v58);
  v60 = v277 - v59;
  type metadata accessor for WFGetAppSettingAction();
  OUTLINED_FUNCTION_13_32();
  if (swift_dynamicCastClass())
  {
    v61 = *MEMORY[0x1E69DA990];
    v63 = v305;
    v62 = v306;
    v303 = *(v306 + 104);
    v303(v60, v61, v305);
    OUTLINED_FUNCTION_4_48();
    v65 = v64;
    v67 = *(v64 + 16);
    v66 = *(v64 + 24);
    if (v67 >= v66 >> 1)
    {
      OUTLINED_FUNCTION_18(v66);
      sub_1CA2E7478();
      v65 = v267;
    }

    v68 = v301;
    v304 = v67 + 1;
    *(v65 + 16) = v67 + 1;
    v71 = *(v62 + 32);
    v69 = v62 + 32;
    v70 = v71;
    v72 = *(v69 + 48);
    v73 = v69;
    v74 = v65;
    v75 = (v72 + 32) & ~v72;
    v76 = *(v73 + 40);
    v306 = v73;
    v71(v65 + v75 + v76 * v67, v60, v63);
    *v68 = MEMORY[0x1E69E7CC0];
    v303(v68, *MEMORY[0x1E69DA958], v63);
    v77 = v74;
    v78 = *(v74 + 24);
    if ((v67 + 2) > (v78 >> 1))
    {
      OUTLINED_FUNCTION_18(v78);
      sub_1CA2E7478();
      v77 = v268;
    }

    *(v77 + 16) = v67 + 2;
    v70(v77 + v75 + v76 * v304, v68, v63);
    return v77;
  }

  v285 = v44;
  v289 = v53;
  v287 = v47;
  v301 = v41;
  *&v288 = v38;
  v283 = v35;
  v79 = v305;
  objc_opt_self();
  OUTLINED_FUNCTION_13_32();
  v80 = swift_dynamicCastObjCClass();
  if (v80)
  {
    v81 = v80;
    if ([v80 isFetchingUniqueEntity])
    {
      v82 = [v81 entityMetadata];
      v83 = [v82 properties];

      sub_1CA25B3D0(0, &unk_1EC4419B0, 0x1E69AC958);
      sub_1CA94C658();

      v84 = sub_1CA25B410();

      if (v84 == 1)
      {
        v85 = *(v306 + 104);
        v86 = v56;
        (v85)(v56, *MEMORY[0x1E69DA990], v79);
        OUTLINED_FUNCTION_4_48();
        v88 = *(v87 + 16);
        v89 = v87;
        if (v88 >= *(v87 + 24) >> 1)
        {
          sub_1CA2E7478();
          v89 = v271;
        }

        v304 = v88 + 1;
        *(v89 + 16) = v88 + 1;
        v90 = *(v306 + 32);
        v91 = (*(v306 + 80) + 32) & ~*(v306 + 80);
        v92 = *(v306 + 72);
        v90(v89 + v91 + v92 * v88, v86, v79);
        *v289 = MEMORY[0x1E69E7CC0];
        v93 = *MEMORY[0x1E69DA958];
        v94 = v79;
        v77 = v89;
        v85();
        v95 = *(v89 + 24);
        if ((v88 + 2) > (v95 >> 1))
        {
          OUTLINED_FUNCTION_18(v95);
          sub_1CA2E7478();
          v77 = v272;
        }

        *(v77 + 16) = v88 + 2;
        v90(v77 + v91 + v92 * v304, v289, v94);
        return v77;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for WFEntityUpdatingAction();
  OUTLINED_FUNCTION_13_32();
  v96 = swift_dynamicCastClass();
  v97 = v79;
  if (v96)
  {
    v98 = v96;
    v99 = [v96 backingActionIdentifiers];
    v100 = sub_1CA94C658();

    *v50 = v100;
    v101 = *MEMORY[0x1E69DA958];
    v304 = *(v306 + 104);
    (v304)(v50, v101, v79);
    OUTLINED_FUNCTION_4_48();
    v103 = v102;
    v105 = *(v102 + 16);
    v104 = *(v102 + 24);
    v106 = v79;
    if (v105 >= v104 >> 1)
    {
      OUTLINED_FUNCTION_17_1(v104);
      sub_1CA2E7478();
      v103 = v269;
    }

    *(v103 + 16) = v105 + 1;
    v107 = *(v306 + 32);
    v108 = (*(v306 + 80) + 32) & ~*(v306 + 80);
    v109 = v103;
    v110 = *(v306 + 72);
    v306 += 32;
    v111 = v107;
    v112 = (v107)(v103 + v108 + v110 * v105, v50, v106);
    v113 = (*((*MEMORY[0x1E69E7D40] & *v98) + 0xC0))(v112);
    if (v113)
    {
      v114 = v113;
      v115 = [v113 identifier];

      v116 = sub_1CA94C3A8();
      v118 = v117;
    }

    else
    {
      v118 = 0xEE00797469746E65;
      v116 = 0x2D6E776F6E6B6E75;
    }

    v168 = v287;
    *v287 = v116;
    v168[1] = v118;
    (v304)(v168, *MEMORY[0x1E69DA998], v106);
    v170 = *(v109 + 16);
    v169 = *(v109 + 24);
    OUTLINED_FUNCTION_70_1();
    if (v172)
    {
      OUTLINED_FUNCTION_17_1(v171);
      sub_1CA2E7478();
      v109 = v270;
    }

    *(v109 + 16) = v118;
    v173 = v109 + v108;
    v77 = v109;
    v111(v173 + v170 * v110, v168, v106);
    return v77;
  }

  v119 = v1;
  objc_opt_self();
  OUTLINED_FUNCTION_13_32();
  v120 = swift_dynamicCastObjCClass();
  v121 = MEMORY[0x1E69E1110];
  v122 = &unk_1CA982000;
  if (v120)
  {
    v123 = v120;
    v124 = &unk_1CA982000;
    v277[1] = v119;
    v125 = [v120 metadata];
    v126 = [v125 identifier];

    v127 = sub_1CA94C3A8();
    v129 = v128;

    v130 = v285;
    *v285 = v127;
    v130[1] = v129;
    v131 = *MEMORY[0x1E69DA9B0];
    v132 = v306;
    v133 = *(v306 + 104);
    v282 = v306 + 104;
    v281 = v133;
    v133(v130, v131, v79);
    OUTLINED_FUNCTION_4_48();
    v77 = v134;
    v136 = *(v134 + 16);
    v135 = *(v134 + 24);
    if (v136 >= v135 >> 1)
    {
      OUTLINED_FUNCTION_18(v135);
      sub_1CA2E7478();
      v77 = v273;
    }

    *(v77 + 16) = v136 + 1;
    v138 = *(v132 + 32);
    v137 = v132 + 32;
    v287 = ((*(v137 + 48) + 32) & ~*(v137 + 48));
    v286 = *(v137 + 40);
    v290 = v138;
    v291 = v137;
    v138(v287 + v77 + v286 * v136, v130, v97);
    v139 = [v123 metadata];
    v140 = [v139 systemProtocols];

    sub_1CA25B3D0(0, &qword_1EC441A30, 0x1E69ACA50);
    v141 = sub_1CA94C658();

    v293 = v141;
    v142 = sub_1CA25B410();
    v289 = v123;
    if (v142)
    {
      v144 = v296;
      if (v142 < 1)
      {
        __break(1u);
        goto LABEL_92;
      }

      v145 = 0;
      v292 = (v293 & 0xC000000000000001);
      v285 = *MEMORY[0x1E69E1110];
      v284 = (v296 + 1);
      v280 = v306 + 16;
      v279 = v306 + 8;
      *&v143 = 136315394;
      v278 = v143;
      v306 = v142;
      do
      {
        if (v292)
        {
          v146 = MEMORY[0x1CCAA22D0](v145, v293);
        }

        else
        {
          v146 = *(v293 + 8 * v145 + 32);
        }

        v147 = v146;
        v148 = [v146 identifier];
        v149 = [v289 metadata];
        v150 = [v149 systemProtocolMetadata];

        type metadata accessor for LNSystemProtocolIdentifier(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447100, &unk_1CA989ED0);
        sub_1CA5D858C();
        v151 = sub_1CA94C1C8();

        v152 = [v147 identifier];
        v153 = v152;
        if (*(v151 + 16) && (v154 = sub_1CA323E24(v152), (v155 & 1) != 0))
        {
          v156 = *(*(v151 + 56) + 8 * v154);
          swift_unknownObjectRetain();
        }

        else
        {
        }

        v157 = v301;
        sub_1CA94A148();
        v122 = 0;
        OUTLINED_FUNCTION_38_1(v307);
        v158(v288, v157, v97);
        v160 = *(v77 + 16);
        v159 = *(v77 + 24);
        if (v160 >= v159 >> 1)
        {
          OUTLINED_FUNCTION_18(v159);
          sub_1CA2E7478();
          v77 = v167;
        }

        v161 = v306;

        OUTLINED_FUNCTION_38_1(&v306);
        v162(v301, v97);
        *(v77 + 16) = v160 + 1;
        OUTLINED_FUNCTION_2_55();
        v164 = OUTLINED_FUNCTION_12_28(v163);
        v165(v164);
        v166 = 0;
        ++v145;
      }

      while (v161 != v145);
    }

    else
    {
      v166 = 0;
    }

    v124 = v289;
    v140 = [v289 metadata];
    v141 = [v140 sideEffect];

    if (!v141)
    {
      goto LABEL_51;
    }

    v122 = 0;
    v141 = v141;
    sub_1CA94AEF8();
    v187 = *MEMORY[0x1E69DA988];
    OUTLINED_FUNCTION_5_41();
    v188();
    v189 = *(v77 + 16);
    v144 = *(v77 + 24);
    v140 = (v189 + 1);
    if (v189 < v144 >> 1)
    {
LABEL_50:

      *(v77 + 16) = v140;
      OUTLINED_FUNCTION_2_55();
      v191 = OUTLINED_FUNCTION_12_28(v190);
      v192(v191);
      v166 = v122;
LABEL_51:
      v193 = sub_1CA5D85E4([v124 metadata]);
      if (!v193)
      {
        v193 = MEMORY[0x1E69E7CC0];
      }

      v306 = v193;
      v194 = sub_1CA25B410();
      if (v194)
      {
        if (v194 >= 1)
        {
          v197 = 0;
          v300 = v306 & 0xC000000000000001;
          v198 = *MEMORY[0x1E69E1110];
          ++v296;
          v292 = (v295 + 2);
          v293 = v198;
          LODWORD(v289) = *MEMORY[0x1E69DA9A0];
          ++v295;
          *&v196 = 138412546;
          v288 = v196;
          v301 = v194;
          while (1)
          {
            v199 = v300 ? MEMORY[0x1CCAA22D0](v197, v306) : *(v306 + 8 * v197 + 32);
            v200 = v199;
            v201 = [v199 name];
            sub_1CA94C3A8();

            v202 = [v200 version];
            sub_1CA94C3A8();

            sub_1CA94B498();
            if (!v166)
            {
              break;
            }

            sub_1CA949C58();
            v141 = v200;
            v203 = v166;
            v204 = sub_1CA949F68();
            v205 = sub_1CA94CC18();

            if (os_log_type_enabled(v204, v205))
            {
              v206 = v166;
              v207 = swift_slowAlloc();
              v208 = swift_slowAlloc();
              *v207 = v288;
              *(v207 + 4) = v141;
              *v208 = v141;
              *(v207 + 12) = 2112;
              v209 = v141;
              v210 = v206;
              v211 = _swift_stdlib_bridgeErrorToNSError();
              *(v207 + 14) = v211;
              v208[1] = v211;
              _os_log_impl(&dword_1CA256000, v204, v205, "Failed to construct assistant schema conformance protocol due to: %@ due to %@", v207, 0x16u);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444AE0, &qword_1CA985B70);
              swift_arrayDestroy();
              v212 = v304;
              OUTLINED_FUNCTION_26();
              OUTLINED_FUNCTION_26();
            }

            else
            {

              v212 = v304;
            }

            (*v296)(v303, v212);
            v166 = 0;
LABEL_74:
            if (v301 == ++v197)
            {
              goto LABEL_75;
            }
          }

          sub_1CA5B5384(v200);
          if (v213)
          {
LABEL_71:
            v222 = v298;
            sub_1CA94B558();
            v141 = v297;
            (*v292)(v297, v222, v299);
            OUTLINED_FUNCTION_5_41();
            v223();
            v225 = *(v77 + 16);
            v224 = *(v77 + 24);
            OUTLINED_FUNCTION_70_1();
            if (v172)
            {
              OUTLINED_FUNCTION_17_1(v226);
              sub_1CA2E7478();
              v77 = v229;
            }

            v166 = 0;

            (*v295)(v298, v299);
            *(v77 + 16) = v141;
            OUTLINED_FUNCTION_2_55();
            v290(v227 + v225 * v228, v297, v305);
            goto LABEL_74;
          }

          v214 = sub_1CA949348();
          v215 = [v200 name];
          sub_1CA94C3A8();

          if (*(v214 + 16))
          {
            v216 = sub_1CA271BF8();
            v218 = v217;

            if (v218)
            {
              v219 = (*(v214 + 56) + 16 * v216);
              v221 = *v219;
              v220 = v219[1];
              sub_1CA94C218();

              goto LABEL_71;
            }
          }

          else
          {
          }

          sub_1CA94B548();
          goto LABEL_71;
        }

        __break(1u);
      }

      else
      {
LABEL_75:

        if ((WFAction.isLinkSystemFrameworkIntent.getter() & 1) == 0)
        {
          return v77;
        }

        v230 = *MEMORY[0x1E69DA9A8];
        v122 = v294;
        v166 = v305;
        OUTLINED_FUNCTION_5_41();
        v231();
        v140 = *(v77 + 16);
        v232 = *(v77 + 24);
        OUTLINED_FUNCTION_70_1();
        if (!v172)
        {
LABEL_77:
          *(v77 + 16) = v141;
          OUTLINED_FUNCTION_2_55();
          v290(v233 + v140 * v234, v122, v166);
          return v77;
        }
      }

      OUTLINED_FUNCTION_17_1(v195);
      sub_1CA2E7478();
      v77 = v275;
      goto LABEL_77;
    }

LABEL_92:
    OUTLINED_FUNCTION_18(v144);
    sub_1CA2E7478();
    v77 = v274;
    goto LABEL_50;
  }

  objc_opt_self();
  v174 = v119;
  v175 = swift_dynamicCastObjCClass();
  v176 = v306;
  if (!v175)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v177 = v175;
  v178 = [v175 intentDescriptor];
  if (v178)
  {
    v179 = sub_1CA5D851C(v178);
    if (v180)
    {
      v181 = v292;
      *v292 = v179;
      v181[1] = v180;
      (*(v176 + 104))(v181, *MEMORY[0x1E69DA960], v79);
      OUTLINED_FUNCTION_4_48();
      v77 = v182;
      v184 = *(v182 + 16);
      v183 = *(v182 + 24);
      OUTLINED_FUNCTION_70_1();
      if (v172)
      {
        OUTLINED_FUNCTION_17_1(v185);
        sub_1CA2E7478();
        v77 = v186;
      }

LABEL_85:
      *(v77 + 16) = v176;
      (*(v306 + 32))(v77 + ((*(v306 + 80) + 32) & ~*(v306 + 80)) + *(v306 + 72) * v184, v181, v97);
      return v77;
    }
  }

  v235 = [v177 intentDescription];
  if (!v235)
  {
    v255 = *v121;
    v256 = v290;
    sub_1CA949C58();
    v257 = v119;
    v258 = sub_1CA949F68();
    v259 = sub_1CA94CC18();

    if (os_log_type_enabled(v258, v259))
    {
      v260 = swift_slowAlloc();
      v261 = swift_slowAlloc();
      v308 = v261;
      *v260 = 136315138;
      v262 = [v177 identifier];
      v263 = sub_1CA94C3A8();
      v265 = v264;

      v266 = sub_1CA26B54C(v263, v265, &v308);

      *(v260 + 4) = v266;
      _os_log_impl(&dword_1CA256000, v258, v259, "SiriKit action does not have valid intent descriptor, this should not happen: %s", v260, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v261);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    v296[1](v256, v304);
    return MEMORY[0x1E69E7CC0];
  }

  v236 = v235;
  result = [v235 facadeClass];
  if (result)
  {
    v238 = NSStringFromClass(result);
    v176 = sub_1CA94C3A8();
    v240 = v239;

    v241 = *v121;
    sub_1CA949C58();
    sub_1CA94C218();
    v242 = v174;
    v243 = sub_1CA949F68();
    v244 = sub_1CA94CC18();

    v245 = os_log_type_enabled(v243, v244);
    v303 = v236;
    if (v245)
    {
      v246 = swift_slowAlloc();
      v308 = swift_slowAlloc();
      *v246 = 136315394;
      *(v246 + 4) = sub_1CA26B54C(v176, v240, &v308);
      *(v246 + 12) = 2080;
      v247 = [v177 identifier];
      v248 = sub_1CA94C3A8();
      v250 = v249;

      v251 = sub_1CA26B54C(v248, v250, &v308);

      *(v246 + 14) = v251;
      _os_log_impl(&dword_1CA256000, v243, v244, "SiriKit action does not have valid intent descriptor, falling back to intent description class: %s for action %s)", v246, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    v296[1](v293, v304);
    v181 = v291;
    *v291 = v176;
    v181[1] = v240;
    (*(v306 + 104))(v181, *MEMORY[0x1E69DA960], v97);
    OUTLINED_FUNCTION_4_48();
    v77 = v252;
    v184 = *(v252 + 16);
    v253 = *(v252 + 24);
    OUTLINED_FUNCTION_70_1();
    if (v172)
    {
      OUTLINED_FUNCTION_17_1(v254);
      sub_1CA2E7478();
      v77 = v276;
    }

    goto LABEL_85;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA5D851C(void *a1)
{
  v2 = [a1 intentClassName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA94C3A8();

  return v3;
}

unint64_t sub_1CA5D858C()
{
  result = qword_1EC4417E0;
  if (!qword_1EC4417E0)
  {
    type metadata accessor for LNSystemProtocolIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4417E0);
  }

  return result;
}

uint64_t sub_1CA5D85E4(void *a1)
{
  v2 = [a1 assistantDefinedSchemas];

  if (!v2)
  {
    return 0;
  }

  sub_1CA25B3D0(0, &qword_1EC441778, 0x1E69AC6D0);
  v3 = sub_1CA94C658();

  return v3;
}

uint64_t WFContentItem.ToolKitTypeResolutionContext.init(measurementUnitTypeProvider:requiredCoercion:displayRepresentationConfig:localizationContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v9;
  *(a5 + 32) = *(a1 + 32);
  v10 = type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0);
  v11 = v10[5];
  v12 = sub_1CA94B668();
  OUTLINED_FUNCTION_0_1(v12);
  (*(v13 + 32))(a5 + v11, a2);
  v14 = v10[6];
  v15 = sub_1CA94B728();
  OUTLINED_FUNCTION_0_1(v15);
  result = (*(v16 + 32))(a5 + v14, a3);
  *(a5 + v10[7]) = a4;
  return result;
}

uint64_t static WFContentItem.toolkitTypeIdentifier(context:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1CA94B668();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  swift_allocBox();
  v13 = v12;
  v14 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  sub_1CA25B3D0(0, &unk_1EC4448F0, 0x1E6996F60);
  OUTLINED_FUNCTION_5_3();
  if (!swift_dynamicCastMetatype())
  {
    sub_1CA25B3D0(0, &unk_1EC441A10, 0x1E6996F88);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
      v18 = sub_1CA94AD98();
      v22 = swift_allocBox();
      OUTLINED_FUNCTION_53_12(v22, v23);
      v21 = MEMORY[0x1E69DB028];
      goto LABEL_7;
    }

    sub_1CA25B3D0(0, &qword_1EC446EE8, 0x1E6996CC0);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
      v18 = sub_1CA94AD98();
      v24 = swift_allocBox();
      OUTLINED_FUNCTION_53_12(v24, v25);
      v21 = MEMORY[0x1E69DB030];
      goto LABEL_7;
    }

    sub_1CA25B3D0(0, &qword_1EC4447F0, 0x1E6996EC0);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
      v30 = *(type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0) + 20);
      v31 = *MEMORY[0x1E69DB4A0];
      v32 = OUTLINED_FUNCTION_78_8();
      v33(v32);
      sub_1CA94B648();
      v34 = OUTLINED_FUNCTION_77_8();
      v35(v34);
      v36 = sub_1CA94AD98();
      v37 = swift_allocBox();
      OUTLINED_FUNCTION_56_9(v37, v38);
      OUTLINED_FUNCTION_39(v36);
      v40 = *(v39 + 104);
      if (v13)
      {
        v41 = MEMORY[0x1E69DB020];
      }

      else
      {
        v41 = MEMORY[0x1E69DB050];
      }

LABEL_17:
      v44 = *v41;
      v40();
      v45 = MEMORY[0x1E69DB0B0];
      *a2 = v30;
      (*(*(v14 - 8) + 104))(a2, *v45, v14);
    }

    sub_1CA25B3D0(0, &qword_1EC446EF0, off_1E836DE28);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
LABEL_15:
      v18 = sub_1CA94AD98();
      v42 = swift_allocBox();
      OUTLINED_FUNCTION_53_12(v42, v43);
      v21 = MEMORY[0x1E69DB018];
      goto LABEL_7;
    }

    sub_1CA25B3D0(0, &qword_1EC446EF8, 0x1E6996DB8);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
      v30 = *(type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0) + 20);
      v46 = *MEMORY[0x1E69DB470];
      v47 = OUTLINED_FUNCTION_78_8();
      v48(v47);
      sub_1CA94B648();
      v49 = OUTLINED_FUNCTION_77_8();
      v50(v49);
      v51 = sub_1CA94AD98();
      v52 = swift_allocBox();
      OUTLINED_FUNCTION_56_9(v52, v53);
      OUTLINED_FUNCTION_39(v51);
      v40 = *(v54 + 104);
      if (v13)
      {
        v41 = MEMORY[0x1E69DAFF0];
      }

      else
      {
        v41 = MEMORY[0x1E69DB038];
      }

      goto LABEL_17;
    }

    sub_1CA25B3D0(0, &qword_1EC446F00, 0x1E6996DA8);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
      v18 = sub_1CA94AD98();
      v55 = swift_allocBox();
      OUTLINED_FUNCTION_53_12(v55, v56);
      v21 = MEMORY[0x1E69DAFE8];
      goto LABEL_7;
    }

    sub_1CA25B3D0(0, &qword_1EC446F08, 0x1E6996EF0);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
      v18 = sub_1CA94AD98();
      v57 = swift_allocBox();
      OUTLINED_FUNCTION_53_12(v57, v58);
      v21 = MEMORY[0x1E69DAFE0];
      goto LABEL_7;
    }

    sub_1CA25B3D0(0, &qword_1EC446F10, 0x1E6996F18);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_123();
      v59 = swift_allocObject();
      sub_1CA25B3D0(0, &qword_1EC446F88, 0x1E69ACA38);
      v60 = sub_1CA94CEE8();
      v61 = [v60 bundleIdentifier];

      v62 = sub_1CA94C3A8();
      v64 = v63;

      v59[2] = v62;
      v59[3] = v64;
      v65 = sub_1CA94CEE8();
      v66 = [v65 identifier];

      v67 = sub_1CA94C3A8();
      v69 = v68;

      v59[4] = v67;
      v59[5] = v69;
      *a2 = v59;
LABEL_28:
      v28 = MEMORY[0x1E69DB098];
      goto LABEL_8;
    }

    sub_1CA25B3D0(0, &qword_1EC441838, 0x1E6996E90);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
      v18 = sub_1CA94AD98();
      v70 = swift_allocBox();
      OUTLINED_FUNCTION_53_12(v70, v71);
      v21 = MEMORY[0x1E69DB080];
      goto LABEL_7;
    }

    sub_1CA25B3D0(0, &qword_1EC446F18, 0x1E6996D08);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
      v18 = sub_1CA94AD98();
      v72 = swift_allocBox();
      OUTLINED_FUNCTION_53_12(v72, v73);
      v21 = MEMORY[0x1E69DB058];
      goto LABEL_7;
    }

    sub_1CA25B3D0(0, &qword_1EC446F20, 0x1E6996F40);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
      v30 = *(type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0) + 20);
      v74 = *MEMORY[0x1E69DB478];
      v75 = OUTLINED_FUNCTION_78_8();
      v76(v75);
      sub_1CA94B648();
      v77 = OUTLINED_FUNCTION_77_8();
      v78(v77);
      v79 = sub_1CA94AD98();
      v80 = swift_allocBox();
      OUTLINED_FUNCTION_56_9(v80, v81);
      OUTLINED_FUNCTION_39(v79);
      v40 = *(v82 + 104);
      if (v13)
      {
        v41 = MEMORY[0x1E69DB008];
      }

      else
      {
        v41 = MEMORY[0x1E69DB040];
      }

      goto LABEL_17;
    }

    sub_1CA25B3D0(0, &qword_1EC446F28, 0x1E6996CD0);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype() || (sub_1CA25B3D0(0, &qword_1EC446F30, 0x1E6996F38), OUTLINED_FUNCTION_5_3(), swift_dynamicCastMetatype()))
    {
LABEL_38:
      sub_1CA5E556C(v2, a2);
    }

    sub_1CA25B3D0(0, &qword_1EC446F38, 0x1E6996E50);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
      v18 = sub_1CA94AD98();
      v83 = swift_allocBox();
      OUTLINED_FUNCTION_53_12(v83, v84);
      v21 = MEMORY[0x1E69DB040];
      goto LABEL_7;
    }

    sub_1CA25B3D0(0, &qword_1EC446F40, 0x1E6996EA8);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
      sub_1CA5EFF54(a1, &v125, &qword_1EC446F78, &qword_1CA98E308);
      if (!v126)
      {
        sub_1CA5F03BC(&v125, &qword_1EC446F78);
        sub_1CA5EF364();
        OUTLINED_FUNCTION_4_0();
        swift_allocError();
        swift_willThrow();
      }

      sub_1CA27F268(&v125, v127);
      v85 = __swift_project_boxed_opaque_existential_1(v127, v127[3]);
      OUTLINED_FUNCTION_162();
      v86 = sub_1CA94B638();
      v87 = sub_1CA94AD98();
      v88 = swift_allocBox();
      v90 = OUTLINED_FUNCTION_56_9(v88, v89);
      if (v86 == 22)
      {
        v91 = MEMORY[0x1E69DAFD0];
        *v90 = 22;
        v92 = *v91;
      }

      else
      {
        v95 = MEMORY[0x1E69DAFD0];
        *v90 = v86;
        v96 = *v95;
      }

      (*(*(v87 - 8) + 104))();
      v97 = MEMORY[0x1E69DB0B0];
      *a2 = v85;
      (*(*(v14 - 8) + 104))(a2, *v97, v14);
      __swift_destroy_boxed_opaque_existential_0(v127);
    }

    sub_1CA25B3D0(0, &qword_1EC446F48, 0x1E6996C88);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_15;
    }

    sub_1CA25B3D0(0, &qword_1EC446F50, 0x1E6996F30);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
      v18 = sub_1CA94AD98();
      v93 = swift_allocBox();
      OUTLINED_FUNCTION_53_12(v93, v94);
      v21 = MEMORY[0x1E69DAFF8];
      goto LABEL_7;
    }

    sub_1CA25B3D0(0, &qword_1EC446F58, 0x1E6996DC8);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
      v18 = sub_1CA94AD98();
      v98 = swift_allocBox();
      OUTLINED_FUNCTION_53_12(v98, v99);
      v21 = MEMORY[0x1E69DAFD8];
      goto LABEL_7;
    }

    sub_1CA25B3D0(0, &qword_1EC446F60, 0x1E6996DF0);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
      v18 = sub_1CA94AD98();
      v100 = swift_allocBox();
      OUTLINED_FUNCTION_53_12(v100, v101);
      v21 = MEMORY[0x1E69DB070];
      goto LABEL_7;
    }

    sub_1CA25B3D0(0, &qword_1EC446F68, 0x1E6996EF8);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
      v18 = sub_1CA94AD98();
      v102 = swift_allocBox();
      OUTLINED_FUNCTION_53_12(v102, v103);
      v21 = MEMORY[0x1E69DB010];
      goto LABEL_7;
    }

    sub_1CA25B3D0(0, &unk_1EC4417A0, off_1E836E818);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_123();
      v104 = swift_allocObject();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v106 = [ObjCClassFromMetadata appBundleIdentifier];
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_159_3();

      v104[2] = v11;
      v104[3] = v13;
      v107 = [ObjCClassFromMetadata enumMetadata];
      v108 = [v107 identifier];
    }

    else
    {
      sub_1CA25B3D0(0, &unk_1EC441810, off_1E836E808);
      OUTLINED_FUNCTION_5_3();
      if (!swift_dynamicCastMetatype())
      {
        sub_1CA25B3D0(0, &qword_1EC446F70, off_1E836E190);
        OUTLINED_FUNCTION_5_3();
        if (swift_dynamicCastMetatype())
        {
          v115 = [swift_getObjCClassFromMetadata() codableDescription];
          OUTLINED_FUNCTION_123();
          v116 = swift_allocObject();
          v116[2] = sub_1CA5E57B8();
          v116[3] = v117;
          result = sub_1CA3F132C(v115, &selRef_typeName);
          if (!v118)
          {
            __break(1u);
            return result;
          }

          v119 = result;
          v120 = v118;

          v116[4] = v119;
          v116[5] = v120;
          *a2 = v116;
          goto LABEL_28;
        }

        sub_1CA25B3D0(0, &qword_1EC445B58, 0x1E6996E40);
        OUTLINED_FUNCTION_5_3();
        if (!swift_dynamicCastMetatype())
        {
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_123();
        v104 = swift_allocObject();
        v121 = *MEMORY[0x1E69E0FB0];
        v104[2] = sub_1CA94C3A8();
        v104[3] = v122;
        v123 = *MEMORY[0x1E6997078];
        v104[4] = sub_1CA94C3A8();
        v104[5] = v124;
LABEL_63:
        *a2 = v104;
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_123();
      v104 = swift_allocObject();
      v109 = swift_getObjCClassFromMetadata();
      v110 = [v109 appBundleIdentifier];
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_159_3();

      v104[2] = v11;
      v104[3] = v13;
      v107 = [v109 entityMetadata];
      v108 = [v107 identifier];
    }

    v111 = v108;

    v112 = sub_1CA94C3A8();
    v114 = v113;

    v104[4] = v112;
    v104[5] = v114;
    goto LABEL_63;
  }

  v18 = sub_1CA94AD98();
  v19 = swift_allocBox();
  OUTLINED_FUNCTION_53_12(v19, v20);
  v21 = MEMORY[0x1E69DB060];
LABEL_7:
  v26 = *v21;
  OUTLINED_FUNCTION_39(v18);
  (*(v27 + 104))();
  *a2 = a1;
  v28 = MEMORY[0x1E69DB0B0];
LABEL_8:
  (*(*(v14 - 8) + 104))(a2, *v28, v14);
}

uint64_t WFContentItem.resolve(with:)()
{
  OUTLINED_FUNCTION_0();
  v1[61] = v2;
  v1[62] = v0;
  v1[60] = v3;
  v1[63] = swift_getObjectType();
  v4 = sub_1CA94A9A8();
  v1[64] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[65] = v5;
  v7 = *(v6 + 64);
  v1[66] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for LinkValueTransformContext(0);
  v1[67] = v8;
  OUTLINED_FUNCTION_18_0(v8);
  v10 = *(v9 + 64);
  v1[68] = OUTLINED_FUNCTION_45();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444A78, &qword_1CA985618);
  OUTLINED_FUNCTION_18_0(v11);
  v13 = *(v12 + 64);
  v1[69] = OUTLINED_FUNCTION_13_5();
  v1[70] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A70, &qword_1CA985610);
  OUTLINED_FUNCTION_18_0(v14);
  v16 = *(v15 + 64);
  v1[71] = OUTLINED_FUNCTION_13_5();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v17 = type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0);
  v1[74] = v17;
  OUTLINED_FUNCTION_18_0(v17);
  v19 = *(v18 + 64);
  v1[75] = OUTLINED_FUNCTION_13_5();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v20 = sub_1CA94AB58();
  v1[78] = v20;
  OUTLINED_FUNCTION_12(v20);
  v1[79] = v21;
  v23 = *(v22 + 64);
  v1[80] = OUTLINED_FUNCTION_45();
  v24 = sub_1CA94AB68();
  v1[81] = v24;
  OUTLINED_FUNCTION_12(v24);
  v1[82] = v25;
  v27 = *(v26 + 64);
  v1[83] = OUTLINED_FUNCTION_45();
  v28 = sub_1CA94AA48();
  v1[84] = v28;
  OUTLINED_FUNCTION_12(v28);
  v1[85] = v29;
  v31 = *(v30 + 64);
  v1[86] = OUTLINED_FUNCTION_45();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v32);
  v34 = *(v33 + 64);
  v1[87] = OUTLINED_FUNCTION_13_5();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v35 = sub_1CA94A8C8();
  v1[100] = v35;
  OUTLINED_FUNCTION_12(v35);
  v1[101] = v36;
  v38 = *(v37 + 64);
  v1[102] = OUTLINED_FUNCTION_45();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  OUTLINED_FUNCTION_18_0(v39);
  v41 = *(v40 + 64);
  v1[103] = OUTLINED_FUNCTION_13_5();
  v1[104] = swift_task_alloc();
  v42 = sub_1CA94ADC8();
  v1[105] = v42;
  OUTLINED_FUNCTION_12(v42);
  v1[106] = v43;
  v45 = *(v44 + 64);
  v1[107] = OUTLINED_FUNCTION_13_5();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
  OUTLINED_FUNCTION_18_0(v46);
  v48 = *(v47 + 64);
  v1[119] = OUTLINED_FUNCTION_45();
  v49 = sub_1CA94AD08();
  v1[120] = v49;
  OUTLINED_FUNCTION_12(v49);
  v1[121] = v50;
  v52 = *(v51 + 64);
  v1[122] = OUTLINED_FUNCTION_45();
  v53 = sub_1CA94AB28();
  v1[123] = v53;
  OUTLINED_FUNCTION_12(v53);
  v1[124] = v54;
  v56 = *(v55 + 64);
  v1[125] = OUTLINED_FUNCTION_13_5();
  v1[126] = swift_task_alloc();
  v57 = sub_1CA94B668();
  v1[127] = v57;
  OUTLINED_FUNCTION_12(v57);
  v1[128] = v58;
  v60 = *(v59 + 64);
  v1[129] = OUTLINED_FUNCTION_13_5();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v61 = sub_1CA94B728();
  v1[132] = v61;
  OUTLINED_FUNCTION_12(v61);
  v1[133] = v62;
  v64 = *(v63 + 64);
  v1[134] = OUTLINED_FUNCTION_13_5();
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v65, v66, v67);
}

uint64_t sub_1CA5D99C0()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1024);
  v6 = *(v0 + 1016);
  v7 = *(v0 + 488);
  ObjCClassMetadata = type metadata accessor for WFContentItem.TypedValueResolutionContext(0);
  v9 = ObjCClassMetadata[5];
  v10 = *(v2 + 16);
  v2 += 16;
  *(v0 + 1152) = v10;
  *(v0 + 1160) = v2 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v1000 = v9;
  i = v10;
  v1026 = v2;
  (v10)(v1, &v9[v7], v3);
  v12 = v5 + 16;
  v11 = *(v5 + 16);
  v1009 = v7;
  (v11)(v4, v7, v6);
  v15 = *(v5 + 88);
  v13 = v5 + 88;
  v14 = v15;
  v16 = OUTLINED_FUNCTION_126();
  v17 = (v15)(v16);
  v18 = *(v0 + 1048);
  v19 = *(v0 + 1024);
  v20 = *(v0 + 1016);
  if (v17 == *MEMORY[0x1E69DB480])
  {
    v21 = *(v0 + 488);
    (*(v19 + 96))(*(v0 + 1048), v20);
    *(v0 + 1168) = *v18;
    v22 = ObjCClassMetadata[9];
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v0 + 1176) = v23;
    *v23 = v24;
    v23[1] = sub_1CA5DDDD0;
    v25 = *(v0 + 1144);
    v26 = *(v0 + 1008);
    v27 = *(v0 + 496);
    OUTLINED_FUNCTION_134_5();
LABEL_3:
    OUTLINED_FUNCTION_93_0();

    return sub_1CA5E6D64(v28, v29, v30, v31);
  }

  v34 = *(v0 + 496);
  v37 = *(v19 + 8);
  v35 = (v19 + 8);
  v36 = v37;
  v37(*(v0 + 1048), v20);
  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (!v38)
  {
    v57 = *(v0 + 496);
    objc_opt_self();
    OUTLINED_FUNCTION_93();
    v58 = swift_dynamicCastObjCClass();
    if (v58)
    {
      v59 = [v58 attributedString];
      v60 = *(v0 + 1144);
      v61 = *(v0 + 1064);
      v62 = *(v0 + 1056);
      if (v59)
      {
        v63 = *(v0 + 480);
        sub_1CA94AC18();
        swift_allocBox();
        OUTLINED_FUNCTION_165();
        sub_1CA948988();
        v64 = *(v61 + 8);
        v65 = OUTLINED_FUNCTION_3_3();
        v66(v65);
        v67 = *MEMORY[0x1E69DAD98];
        OUTLINED_FUNCTION_19_23();
        (*(v68 + 104))(v11);
        *v63 = v36;
        v69 = *MEMORY[0x1E69DAE70];
        v70 = sub_1CA94AC88();
        OUTLINED_FUNCTION_0_1(v70);
        v72 = *(v71 + 104);
        v73 = v63;
        goto LABEL_20;
      }

      v155 = *(v0 + 848);
      v156 = *(v0 + 840);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443AA0, &qword_1CA982780);
      v157 = *(v155 + 72);
      v158 = *(v155 + 80);
      v159 = OUTLINED_FUNCTION_171_2();
      *(v159 + 16) = xmmword_1CA981310;
      sub_1CA94AD98();
      v160 = swift_allocBox();
      OUTLINED_FUNCTION_53_12(v160, v161);
      v162 = *MEMORY[0x1E69DB008];
      OUTLINED_FUNCTION_19_23();
      (*(v163 + 104))();
      *(v159 + v12) = v36;
      (*(v155 + 104))(v159 + v12, *MEMORY[0x1E69DB0B0], v156);
      sub_1CA2E83F8();
      v165 = v164;
      sub_1CA2F0CD4();
      OUTLINED_FUNCTION_4_0();
      v166 = swift_allocError();
      v167 = MEMORY[0x1E69E7CD0];
      *v168 = v165;
      *(v168 + 8) = v167;
      *(v168 + 16) = 0;
      OUTLINED_FUNCTION_139_4(v166);
      v169 = *(v61 + 8);
      v170 = OUTLINED_FUNCTION_3_3();
      v171(v170);
      goto LABEL_30;
    }

    v129 = *(v0 + 496);
    objc_opt_self();
    OUTLINED_FUNCTION_93();
    v130 = swift_dynamicCastObjCClass();
    if (v130)
    {
      v131 = v130;
      v1021 = *(v0 + 1144);
      v132 = *(v0 + 1064);
      v133 = *(v0 + 1056);
      OUTLINED_FUNCTION_102_4();
      v134 = sub_1CA94AC18();
      v1028 = swift_allocBox();
      v136 = v135;
      v137 = [v131 URL];
      v138 = sub_1CA948BA8();
      OUTLINED_FUNCTION_1_0(v138);
      v140 = v139;
      v142 = *(v141 + 64);
      OUTLINED_FUNCTION_45();
      sub_1CA948B68();

      (*(v132 + 8))(v1021, v133);
      v143 = *(v140 + 32);
      v144 = OUTLINED_FUNCTION_121();
      v145(v144);
      v146 = MEMORY[0x1E69DADB8];
LABEL_27:
      v147 = *v146;
      OUTLINED_FUNCTION_39(v134);
      (*(v148 + 104))(v136);
      *v13 = v1028;
      v149 = *MEMORY[0x1E69DAE70];
      v150 = sub_1CA94AC88();
      OUTLINED_FUNCTION_0_1(v150);
      v152 = *(v151 + 104);
      v153 = OUTLINED_FUNCTION_3_3();
      v154(v153);
LABEL_28:

      goto LABEL_22;
    }

    v209 = *(v0 + 496);
    objc_opt_self();
    OUTLINED_FUNCTION_93();
    v210 = swift_dynamicCastObjCClass();
    if (v210)
    {
      v211 = v210;
      v212 = *(v0 + 1144);
      v213 = *(v0 + 1064);
      v214 = *(v0 + 1056);
      OUTLINED_FUNCTION_102_4();
      sub_1CA94AC18();
      swift_allocBox();
      OUTLINED_FUNCTION_165();
      v215 = [v211 number];
      v216 = [v215 BOOLValue];

      v217 = *(v213 + 8);
      v218 = OUTLINED_FUNCTION_69_0();
      v219(v218);
      *v11 = v216;
      v220 = *MEMORY[0x1E69DADC0];
      OUTLINED_FUNCTION_19_23();
      (*(v221 + 104))(v11);
      *v13 = v36;
      goto LABEL_78;
    }

    v251 = *(v0 + 496);
    objc_opt_self();
    OUTLINED_FUNCTION_93();
    v252 = swift_dynamicCastObjCClass();
    if (v252)
    {
      v253 = v252;
      v254 = *(v0 + 1040);
      v255 = *(v0 + 1016);
      v256 = *(v0 + 488);
      v257 = *MEMORY[0x1E69DB498];
      v258 = *(*(v0 + 1024) + 104);
      v259 = OUTLINED_FUNCTION_141();
      v258(v259);
      OUTLINED_FUNCTION_129();
      LOBYTE(v256) = sub_1CA94B648();
      v260 = OUTLINED_FUNCTION_52_0();
      (v36)(v260);
      if (v256)
      {
        v261 = [v253 number];
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v262 = *(v0 + 1144);
          v263 = *(v0 + 1064);
          v264 = *(v0 + 1056);
          v1029 = *(v0 + 480);
          v265 = sub_1CA94AC18();
          v1023 = swift_allocBox();
          v267 = v266;
          v268 = sub_1CA94D068();
          v270 = v269;
          v272 = v271;

          (*(v263 + 8))(v262, v264);
          *v267 = v268;
          *(v267 + 8) = v270;
          *(v267 + 16) = v272;
          v273 = *MEMORY[0x1E69DADF8];
          OUTLINED_FUNCTION_39(v265);
          (*(v274 + 104))(v267);
          v275 = v1023;
          v276 = v1029;
LABEL_77:
          *v276 = v275;
          goto LABEL_78;
        }
      }

      v333 = *(v0 + 1064);
      v334 = *(v0 + 1040);
      v335 = *(v0 + 1016);
      v336 = *(v0 + 488);
      v337 = *MEMORY[0x1E69DB4A0];
      v338 = OUTLINED_FUNCTION_141();
      v258(v338);
      OUTLINED_FUNCTION_129();
      v339 = sub_1CA94B648();
      v340 = OUTLINED_FUNCTION_52_0();
      (v36)(v340);
      v341 = sub_1CA94AC18();
      v1030 = swift_allocBox();
      v343 = v342;
      v344 = [v253 number];
      v345 = v344;
      v346 = (v333 + 8);
      v347 = *(v0 + 1144);
      v348 = *(v0 + 1056);
      v276 = *(v0 + 480);
      if (v339)
      {
        v349 = [v344 integerValue];

        v350 = *v346;
        v351 = OUTLINED_FUNCTION_122_2();
        v352(v351);
        v353 = MEMORY[0x1E69DADB0];
        *v343 = v349;
      }

      else
      {
        [v344 doubleValue];
        v355 = v354;

        v356 = *v346;
        v357 = OUTLINED_FUNCTION_122_2();
        v358(v357);
        v353 = MEMORY[0x1E69DADE0];
        *v343 = v355;
      }

      (*(*(v341 - 8) + 104))(v343, *v353, v341);
      v275 = v1030;
      goto LABEL_77;
    }

    v296 = *(v0 + 496);
    objc_opt_self();
    OUTLINED_FUNCTION_93();
    v297 = swift_dynamicCastObjCClass();
    if (!v297)
    {
      v320 = *(v0 + 496);
      objc_opt_self();
      OUTLINED_FUNCTION_93();
      v321 = swift_dynamicCastObjCClass();
      if (v321)
      {
        v322 = [v321 currencyAmount];
        *(v0 + 1192) = v322;
        v323 = [v322 amount];
        if (!v323)
        {
          sub_1CA25B3D0(0, &qword_1EC4463B0, 0x1E696AB90);
          OUTLINED_FUNCTION_40();
          v323 = sub_1CA94CFB8();
        }

        v324 = sub_1CA94D068();
        v326 = v325;
        v328 = v327;

        *(v0 + 1200) = v324;
        *(v0 + 1208) = v326;
        *(v0 + 244) = v328;
        v329 = sub_1CA3F132C(v322, &selRef_currencyCode);
        if (v330)
        {
          v331 = v329;
          v332 = v330;
        }

        else
        {
          v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446FA0, &unk_1CA98E358);
          OUTLINED_FUNCTION_18_0(v399);
          v401 = *(v400 + 64);
          v402 = OUTLINED_FUNCTION_45();
          v403 = [objc_opt_self() currentLocale];
          OUTLINED_FUNCTION_40();
          v404 = sub_1CA948E58();
          OUTLINED_FUNCTION_1_0(v404);
          v406 = v405;
          v408 = *(v407 + 64);
          OUTLINED_FUNCTION_45();
          sub_1CA948DA8();

          sub_1CA948E38();
          v409 = *(v406 + 8);
          v410 = OUTLINED_FUNCTION_70();
          v411(v410);
          v412 = sub_1CA948E08();
          v413 = OUTLINED_FUNCTION_201_0();
          OUTLINED_FUNCTION_49(v413, v414, v412);
          if (v205)
          {

            sub_1CA5F03BC(v402, &qword_1EC446FA0);

            v331 = 0;
            v332 = 0xE000000000000000;
          }

          else
          {
            v331 = sub_1CA948D58();
            v332 = v432;
            OUTLINED_FUNCTION_39(v412);
            (*(v433 + 8))(v402, v412);
          }
        }

        *(v0 + 1224) = v332;
        *(v0 + 1216) = v331;
        v434 = *(v0 + 1144);
        v435 = *(v0 + 1136);
        v436 = *(v0 + 1056);
        v437 = *(v0 + 496);
        *(v0 + 1232) = sub_1CA94AC18();
        v438 = swift_allocBox();
        *(v0 + 248) = v438;
        *(v0 + 256) = v439;
        *(v0 + 1240) = v438;
        v440 = OUTLINED_FUNCTION_134();
        i(v440);
        v441 = v437;
        swift_task_alloc();
        OUTLINED_FUNCTION_77();
        *(v0 + 1248) = v442;
        *v442 = v443;
        v442[1] = sub_1CA5DE1C0;
        v444 = *(v0 + 1136);
        v445 = *(v0 + 784);
        goto LABEL_98;
      }

      v382 = *(v0 + 496);
      objc_opt_self();
      OUTLINED_FUNCTION_93();
      v383 = swift_dynamicCastObjCClass();
      if (v383)
      {
        v384 = *(v0 + 1144);
        v385 = *(v0 + 1128);
        v386 = *(v0 + 1056);
        v387 = *(v0 + 688);
        v388 = *(v0 + 496);
        v389 = [v383 paymentMethod];
        *(v0 + 1272) = v389;
        *(v0 + 1280) = sub_1CA94AC18();
        v390 = swift_allocBox();
        *(v0 + 264) = v390;
        *(v0 + 272) = v391;
        *(v0 + 1288) = v390;
        sub_1CA2F0A08([v389 type], v387);
        *(v0 + 280) = sub_1CA3F132C(v389, &selRef_identificationHint);
        *(v0 + 288) = v392;
        *(v0 + 1296) = v392;
        v393 = OUTLINED_FUNCTION_129();
        i(v393);
        v394 = v388;
        swift_task_alloc();
        OUTLINED_FUNCTION_77();
        *(v0 + 1304) = v395;
        *v395 = v396;
        v395[1] = sub_1CA5DE600;
        v397 = *(v0 + 1128);
        v398 = *(v0 + 776);
LABEL_98:
        OUTLINED_FUNCTION_134_5();
        OUTLINED_FUNCTION_93_0();

        return DisplayRepresentation.init(from:thumbnailSize:displayRepresentationConfig:)();
      }

      goto LABEL_90;
    }

    v298 = v297;
    v299 = *(v0 + 1040);
    v300 = *(v0 + 1016);
    v301 = *(v0 + 488);
    v302 = *MEMORY[0x1E69DB470];
    v303 = *(*(v0 + 1024) + 104);
    v304 = OUTLINED_FUNCTION_141();
    v305(v304);
    OUTLINED_FUNCTION_129();
    LOBYTE(v301) = sub_1CA94B648();
    v306 = OUTLINED_FUNCTION_52_0();
    (v36)(v306);
    if (v301)
    {
      v307 = [v298 dateComponents];
      ObjCClassMetadata = sub_1CA9488E8();
      OUTLINED_FUNCTION_1_0(ObjCClassMetadata);
      v309 = v308;
      v311 = *(v310 + 64);
      OUTLINED_FUNCTION_45();
      if (v307)
      {
        v312 = OUTLINED_FUNCTION_103_3();
        v313 = swift_allocBox();
        OUTLINED_FUNCTION_154_4(v313);
        sub_1CA9488C8();

        v314 = v298[1];
        v315 = OUTLINED_FUNCTION_126();
        v316(v315);
        v317 = *(v309 + 32);
        OUTLINED_FUNCTION_14_0();
        v318();
        v319 = MEMORY[0x1E69DAD80];
LABEL_81:
        v374 = *v319;
        OUTLINED_FUNCTION_39(v312);
        (*(v375 + 104))(v12);
        *v1026 = i;
        v376 = *MEMORY[0x1E69DAE70];
        v377 = sub_1CA94AC88();
        OUTLINED_FUNCTION_0_1(v377);
        (*(v378 + 104))(v1026, v376);
        goto LABEL_28;
      }

      __break(1u);
    }

    else
    {
      v363 = [v298 date];
      ObjCClassMetadata = sub_1CA948CB8();
      OUTLINED_FUNCTION_1_0(ObjCClassMetadata);
      v365 = v364;
      v367 = *(v366 + 64);
      OUTLINED_FUNCTION_45();
      if (v363)
      {
        v312 = OUTLINED_FUNCTION_103_3();
        v368 = swift_allocBox();
        OUTLINED_FUNCTION_154_4(v368);
        sub_1CA948C78();

        v369 = v298[1];
        v370 = OUTLINED_FUNCTION_126();
        v371(v370);
        v372 = *(v365 + 32);
        OUTLINED_FUNCTION_14_0();
        v373();
        v319 = MEMORY[0x1E69DADC8];
        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_146:
    v722 = *(v0 + 496);
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v723 = swift_dynamicCastObjCClass();
    if (v723)
    {
      v724 = v723;
      v725 = [v723 app];
      if (v725)
      {
        v726 = v725;
        v727 = [v725 bundleIdentifier];

        sub_1CA94C3A8();
      }

      v748 = [v724 intentApplication];
      v749 = [v748 displayRepresentation];

      if (v749)
      {
        v750 = *(v0 + 712);
        (i)(*(v0 + 1096), *(v0 + 1144), *(v0 + 1056));
        v751 = OUTLINED_FUNCTION_188();
        DisplayRepresentation.init(from:displayRepresentationConfig:)(v751, v752);
      }

      else
      {
        v1031 = [v724 app];
        if (v1031)
        {
          v753 = [v1031 displayRepresentation];
          if (v753)
          {
            v754 = v753;
            v755 = *(v0 + 560);
            sub_1CA3F132C(v753, &selRef_subtitle);
            sub_1CA3F132C(v754, &selRef_altText);
            v756 = sub_1CA94B318();
            OUTLINED_FUNCTION_46();
            __swift_storeEnumTagSinglePayload(v757, v758, v759, v756);
            sub_1CA5EF524(v754, &selRef_imageData);
            if (v760 >> 60 != 15)
            {
              OUTLINED_FUNCTION_165();
              v761 = *(v0 + 560);
              sub_1CA5F03BC(v761, &unk_1EC444A78);
              *v761 = v755;
              v761[1] = v11;
              v762 = *MEMORY[0x1E69DB380];
              OUTLINED_FUNCTION_19_23();
              (*(v763 + 104))(v761);
              OUTLINED_FUNCTION_89();
              __swift_storeEnumTagSinglePayload(v764, v765, v766, v756);
            }

            v767 = *(v0 + 576);
            v768 = sub_1CA94B2E8();
            OUTLINED_FUNCTION_46();
            __swift_storeEnumTagSinglePayload(v769, v770, v771, v768);
            sub_1CA5EF524(v754, &selRef_snippetPluginModelData);
            if (v772 >> 60 != 15)
            {
              sub_1CA3F132C(v754, &selRef_snippetPluginModelBundleIdentifier);
              if (v773)
              {
                v774 = *(v0 + 584);
                v775 = *(v0 + 576);
                v776 = OUTLINED_FUNCTION_204();
                MEMORY[0x1CCAA0150](v776);
                sub_1CA5F03BC(v775, &qword_1EC444A70);
                OUTLINED_FUNCTION_89();
                __swift_storeEnumTagSinglePayload(v777, v778, v779, v768);
                sub_1CA5F0374(v774, v775, &qword_1EC444A70, &qword_1CA985610);
              }

              else
              {
                v853 = OUTLINED_FUNCTION_204();
                sub_1CA39F318(v853, v854);
              }
            }

            v855 = *(v0 + 704);
            v977 = *(v0 + 576);
            v983 = *(v0 + 712);
            v856 = *(v0 + 568);
            v857 = *(v0 + 560);
            v858 = *(v0 + 552);
            sub_1CA5EF580(v754);
            v859 = [v754 title];
            sub_1CA94C3A8();

            sub_1CA5EFF54(v857, v858, &unk_1EC444A78, &qword_1CA985618);
            sub_1CA5EFF54(v977, v856, &qword_1EC444A70, &qword_1CA985610);
            OUTLINED_FUNCTION_3_3();
            sub_1CA94B358();

            sub_1CA5F03BC(v977, &qword_1EC444A70);
            sub_1CA5F03BC(v857, &unk_1EC444A78);
            sub_1CA94B458();
            OUTLINED_FUNCTION_89();
            __swift_storeEnumTagSinglePayload(v860, v861, v862, v863);
            sub_1CA5F0374(v855, v983, &qword_1EC4468C0, &qword_1CA988C00);
            goto LABEL_186;
          }
        }

        v783 = *(v0 + 712);
        sub_1CA94B458();
        OUTLINED_FUNCTION_121_1();
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v784, v785, v786, v787);
      }

LABEL_186:
      v1025 = *(v0 + 1144);
      v864 = *(v0 + 1064);
      v865 = *(v0 + 1056);
      v866 = *(v0 + 792);
      v867 = *(v0 + 712);
      v105 = *(v0 + 480);
      v868 = sub_1CA94AC18();
      v1032 = swift_allocBox();
      v870 = v869;
      sub_1CA5EFF54(v867, v866, &qword_1EC4468C0, &qword_1CA988C00);
      sub_1CA94AAC8();
      sub_1CA5F03BC(v867, &qword_1EC4468C0);
      (*(v864 + 8))(v1025, v865);
      v871 = *MEMORY[0x1E69DADA8];
      OUTLINED_FUNCTION_39(v868);
      (*(v872 + 104))(v870);
      *v105 = v1032;
      goto LABEL_19;
    }

    v728 = *(v0 + 496);
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v729 = swift_dynamicCastObjCClass();
    if (v729)
    {
      v730 = v729;
      v731 = *(v0 + 1144);
      v732 = *(v0 + 1072);
      v733 = *(v0 + 1056);
      v734 = *(v0 + 496);
      *(v0 + 1768) = sub_1CA94AC18();
      v735 = swift_allocBox();
      *(v0 + 408) = v735;
      *(v0 + 416) = v736;
      *(v0 + 1776) = v735;
      v737 = [v730 workflowReference];
      v738 = [v737 identifier];

      v739 = sub_1CA94C3A8();
      v741 = v740;
      *(v0 + 424) = v739;
      *(v0 + 432) = v740;

      *(v0 + 1784) = v741;
      v742 = OUTLINED_FUNCTION_129();
      i(v742);
      v743 = v734;
      swift_task_alloc();
      OUTLINED_FUNCTION_77();
      *(v0 + 1792) = v744;
      *v744 = v745;
      v744[1] = sub_1CA5E13A8;
      v746 = *(v0 + 1072);
      v747 = *(v0 + 696);
      goto LABEL_98;
    }

    v780 = *(v0 + 496);
    type metadata accessor for WFRemoteAppValueContentItem();
    OUTLINED_FUNCTION_93();
    v781 = swift_dynamicCastClass();
    if (v781)
    {
      v782 = v781;
      type metadata accessor for WFRemoteAppValue();
      if ([v782 objectForClass_])
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_160_3();
      }

      *(v0 + 192) = v1034;
      *(v0 + 208) = v1035;
      if (*(v0 + 216))
      {
        if (swift_dynamicCast())
        {
          v797 = *(v0 + 1056);
          v798 = *(v0 + 544);
          v799 = *(v0 + 536);
          v800 = *(v0 + 472);
          *(v0 + 1824) = v800;
          v801 = *(v800 + OBJC_IVAR____TtC11WorkflowKit16WFRemoteAppValue_value);
          v802 = OBJC_IVAR____TtC11WorkflowKit16WFRemoteAppValue_sourceContainer;
          v803 = v799[5];
          v804 = sub_1CA94B1C8();
          OUTLINED_FUNCTION_0_1(v804);
          (*(v805 + 16))(&v798[v803], v800 + v802);
          (i)(&v798[v799[6]], &v1000[v1009], v797);
          v806 = objc_opt_self();
          v807 = v801;
          v808 = [v806 defaultContext];
          *v798 = v807;
          *&v798[v799[7]] = v808;
          *&v798[v799[8]] = 0;
          swift_task_alloc();
          OUTLINED_FUNCTION_77();
          *(v0 + 1832) = v809;
          *v809 = v810;
          v809[1] = sub_1CA5E17BC;
          v811 = *(v0 + 544);
          v812 = *(v0 + 480);
          OUTLINED_FUNCTION_134_5();
          OUTLINED_FUNCTION_93_0();

          return TypedValueTransformer.transform(input:with:)();
        }

LABEL_177:
        v815 = *(v0 + 1144);
        goto LABEL_178;
      }

      v814 = v0 + 192;
LABEL_176:
      sub_1CA5F03BC(v814, &unk_1EC444650);
      goto LABEL_177;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_93();
    if (swift_dynamicCastObjCClass())
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_77();
      *(v0 + 1848) = v788;
      *v788 = v789;
      v788[1] = sub_1CA5E1D90;
      v790 = *(v0 + 528);
      v791 = *(v0 + 488);
      v792 = *(v0 + 496);
      OUTLINED_FUNCTION_134_5();
      OUTLINED_FUNCTION_93_0();

      return sub_1CA5E8AEC(v793, v794, v795);
    }

    v824 = *(v0 + 496);
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_40();
      v825 = sub_1CA949058();
      OUTLINED_FUNCTION_1_0(v825);
      v827 = v826;
      v829 = *(v828 + 64);
      OUTLINED_FUNCTION_45();
      v830 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BB0, &qword_1CA985928);
      OUTLINED_FUNCTION_18_0(v830);
      v832 = *(v831 + 64);
      v833 = OUTLINED_FUNCTION_45();
      if ([v824 recurrenceRule])
      {
        OUTLINED_FUNCTION_162_1();
        sub_1CA94CEB8();

        v834 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_49(v834, v835, v825);
        if (!v205)
        {
          v836 = OUTLINED_FUNCTION_11_32();
          v837 = *(v0 + 480);
          (*(v838 + 8))(v836);
          v839 = *(v827 + 32);
          v840 = OUTLINED_FUNCTION_107_0();
          v839(v840);

          sub_1CA94AC18();
          v841 = swift_allocBox();
          v843 = OUTLINED_FUNCTION_47_13(v841, v842);
          v839(v843);
          v844 = MEMORY[0x1E69DAD88];
LABEL_183:
          v845 = *v844;
          OUTLINED_FUNCTION_20_27();
          v847 = *(v846 + 104);
          v848 = OUTLINED_FUNCTION_101();
          v849(v848);
          *v837 = v35;
          v850 = *MEMORY[0x1E69DAE70];
          v851 = sub_1CA94AC88();
          OUTLINED_FUNCTION_0_1(v851);
          (*(v852 + 104))(v837, v850);
          goto LABEL_28;
        }
      }

      else
      {
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v874, v875, v876, v825);
      }

      v877 = *(v0 + 1144);
      v878 = *(v0 + 1064);
      v879 = *(v0 + 1056);
      sub_1CA5F03BC(v833, &qword_1EC444BB0);

      sub_1CA2F0CD4();
      OUTLINED_FUNCTION_4_0();
      v880 = swift_allocError();
      OUTLINED_FUNCTION_48_6(v880, v881);
      OUTLINED_FUNCTION_139_4(v882);
      v883 = *(v878 + 8);
      v458 = OUTLINED_FUNCTION_41_0();
      goto LABEL_24;
    }

    v873 = *(v0 + 496);
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_30();
      sub_1CA94CC88();
      if ([v780 objectForClass_])
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_160_3();
      }

      *(v0 + 160) = v1034;
      *(v0 + 176) = v1035;
      if (!*(v0 + 184))
      {
        v814 = v0 + 160;
        goto LABEL_176;
      }

      if ((OUTLINED_FUNCTION_138_6() & 1) == 0)
      {
        goto LABEL_177;
      }

      v885 = *(v0 + 464);
      v886 = sub_1CA948898();
      OUTLINED_FUNCTION_1_0(v886);
      v888 = v887;
      v890 = *(v889 + 64);
      OUTLINED_FUNCTION_45();
      v891 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444690, &unk_1CA983A20);
      OUTLINED_FUNCTION_18_0(v891);
      v893 = *(v892 + 64);
      v894 = OUTLINED_FUNCTION_45();
      sub_1CA5EF3D8(&qword_1EC444BE8, MEMORY[0x1EEE77BF0]);
      OUTLINED_FUNCTION_173_1();

      v895 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_49(v895, v896, v886);
      if (!v205)
      {
        v908 = OUTLINED_FUNCTION_11_32();
        v837 = *(v0 + 480);
        (*(v909 + 8))(v908);
        v910 = *(v888 + 32);
        v911 = OUTLINED_FUNCTION_107_0();
        v910(v911);

        sub_1CA94AC18();
        v912 = swift_allocBox();
        v914 = OUTLINED_FUNCTION_47_13(v912, v913);
        v910(v914);
        v844 = MEMORY[0x1E69DAD68];
        goto LABEL_183;
      }

      v897 = &qword_1EC444690;
LABEL_201:
      sub_1CA5F03BC(v894, v897);

      goto LABEL_177;
    }

    v884 = *(v0 + 496);
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    if (!swift_dynamicCastObjCClass())
    {
      v898 = *(v0 + 496);
      *(v0 + 440) = v898;
      sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
      v899 = v898;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446F90, &qword_1CA98E318);
      if (swift_dynamicCast())
      {
        sub_1CA27F268((v0 + 16), v0 + 56);
        v900 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
        OUTLINED_FUNCTION_148_3();
        OUTLINED_FUNCTION_35_2();
        v1033 = v901 + *v901;
        v903 = *(v902 + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_77();
        *(v0 + 1864) = v904;
        *v904 = v905;
        v904[1] = sub_1CA5E2134;
        OUTLINED_FUNCTION_106_5();
        OUTLINED_FUNCTION_93_0();

        __asm { BRAA            X4, X16 }
      }

      v926 = *(v0 + 496);

      objc_opt_self();
      OUTLINED_FUNCTION_5_3();
      if (!swift_dynamicCastObjCClass())
      {
LABEL_106:
        OUTLINED_FUNCTION_88_3();
        OUTLINED_FUNCTION_116_5();
        v453 = [ObjCClassMetadata description];
        sub_1CA94C3A8();

        v454 = OUTLINED_FUNCTION_21_6();
        MEMORY[0x1CCAA1300](v454);

        MEMORY[0x1CCAA1300](0xD000000000000031, 0x80000001CA9D3DF0);
        sub_1CA2F0CD4();
        OUTLINED_FUNCTION_4_0();
        v455 = swift_allocError();
        *v456 = v1034;
        *(v456 + 16) = 3;
        OUTLINED_FUNCTION_139_4(v455);
        v457 = *(v36 + 8);
        v458 = OUTLINED_FUNCTION_107_0();
LABEL_24:
        v459(v458);
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_30();
      sub_1CA94CC88();
      if ([v898 objectForClass_])
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_160_3();
      }

      *(v0 + 96) = v1034;
      *(v0 + 112) = v1035;
      if (!*(v0 + 120))
      {
        v814 = v0 + 96;
        goto LABEL_176;
      }

      if ((OUTLINED_FUNCTION_138_6() & 1) == 0)
      {
        goto LABEL_177;
      }

      v927 = *(v0 + 448);
      v928 = sub_1CA948A48();
      OUTLINED_FUNCTION_1_0(v928);
      v930 = v929;
      v932 = *(v931 + 64);
      OUTLINED_FUNCTION_45();
      v933 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
      OUTLINED_FUNCTION_18_0(v933);
      v935 = *(v934 + 64);
      v894 = OUTLINED_FUNCTION_45();
      sub_1CA5EF3D8(&qword_1EC444BE0, MEMORY[0x1EEE78218]);
      OUTLINED_FUNCTION_173_1();

      v936 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_49(v936, v937, v928);
      if (!v205)
      {
        v938 = OUTLINED_FUNCTION_11_32();
        v837 = *(v0 + 480);
        (*(v939 + 8))(v938);
        v940 = *(v930 + 32);
        v941 = OUTLINED_FUNCTION_107_0();
        v940(v941);

        sub_1CA94AC18();
        v942 = swift_allocBox();
        v944 = OUTLINED_FUNCTION_47_13(v942, v943);
        v940(v944);
        v844 = MEMORY[0x1E69DADA0];
        goto LABEL_183;
      }

      v897 = &qword_1EC447940;
      goto LABEL_201;
    }

    OUTLINED_FUNCTION_30();
    sub_1CA94CC88();
    if ([v780 objectForClass_])
    {
      sub_1CA94D258();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_160_3();
    }

    *(v0 + 128) = v1034;
    *(v0 + 144) = v1035;
    if (!*(v0 + 152))
    {
      v814 = v0 + 128;
      goto LABEL_176;
    }

    if ((OUTLINED_FUNCTION_138_6() & 1) == 0)
    {
      goto LABEL_177;
    }

    v915 = *(v0 + 456);
    sub_1CA94CC68();

    if (*(v0 + 240) == 1)
    {
      goto LABEL_177;
    }

    v916 = OUTLINED_FUNCTION_11_32();
    v917 = *(v0 + 480);
    v919 = *(v0 + 224);
    v918 = *(v0 + 232);
    (*(v920 + 8))(v916);
    v921 = sub_1CA94AC18();
    v922 = swift_allocBox();
    *v923 = v919;
    v923[1] = v918;
    v924 = *MEMORY[0x1E69DAE00];
    OUTLINED_FUNCTION_39(v921);
    (*(v925 + 104))();
    *v917 = v922;
LABEL_78:
    v359 = *MEMORY[0x1E69DAE70];
    v360 = sub_1CA94AC88();
    OUTLINED_FUNCTION_0_1(v360);
    v362 = *(v361 + 104);
    v73 = OUTLINED_FUNCTION_3_3();
    goto LABEL_21;
  }

  v39 = sub_1CA3F132C(v38, &selRef_string);
  if (!v40)
  {
    v74 = *(v0 + 1144);
    v75 = *(v0 + 1064);
    v76 = *(v0 + 1056);
    v77 = *(v0 + 848);
    v78 = *(v0 + 840);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443AA0, &qword_1CA982780);
    v79 = *(v77 + 72);
    v80 = *(v77 + 80);
    v81 = OUTLINED_FUNCTION_171_2();
    *(v81 + 16) = xmmword_1CA981310;
    sub_1CA94AD98();
    v82 = swift_allocBox();
    OUTLINED_FUNCTION_53_12(v82, v83);
    v84 = *MEMORY[0x1E69DB060];
    OUTLINED_FUNCTION_19_23();
    (*(v85 + 104))();
    *(v81 + v12) = v36;
    (*(v77 + 104))(v81 + v12, *MEMORY[0x1E69DB0B0], v78);
    sub_1CA2E83F8();
    v87 = v86;
    sub_1CA2F0CD4();
    OUTLINED_FUNCTION_4_0();
    v88 = swift_allocError();
    v89 = MEMORY[0x1E69E7CD0];
    *v90 = v87;
    *(v90 + 8) = v89;
    *(v90 + 16) = 0;
    OUTLINED_FUNCTION_139_4(v88);
    v91 = *(v75 + 8);
    v92 = OUTLINED_FUNCTION_3_3();
    v93(v92);
LABEL_30:
    OUTLINED_FUNCTION_12_29();
    v172 = *(v0 + 1120);
    v173 = *(v0 + 1112);
    OUTLINED_FUNCTION_0_63();
    v949 = *(v0 + 712);
    v951 = *(v0 + 704);
    v953 = *(v0 + 696);
    v956 = *(v0 + 688);
    v959 = *(v0 + 664);
    v962 = *(v0 + 640);
    v966 = *(v0 + 616);
    v970 = *(v0 + 608);
    v975 = *(v0 + 600);
    v979 = *(v0 + 584);
    v985 = *(v0 + 576);
    v990 = *(v0 + 568);
    v994 = *(v0 + 560);
    v1003 = *(v0 + 552);
    v1011 = *(v0 + 544);
    v1022 = *(v0 + 528);

    OUTLINED_FUNCTION_5();
    goto LABEL_31;
  }

  v14 = v40;
  v1026 = v39;
  v41 = *(v0 + 960);
  v42 = *(v0 + 952);
  sub_1CA5EFF54(*(v0 + 488) + ObjCClassMetadata[6], v42, &unk_1EC445A40, &unk_1CA983150);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v41);
  v44 = *(v0 + 976);
  v45 = *(v0 + 968);
  v46 = *(v0 + 960);
  v47 = *(v0 + 952);
  if (EnumTagSinglePayload == 1)
  {
    v1019 = v14;
    v48 = *(v0 + 848);
    v49 = *(v0 + 840);
    v1001 = swift_allocBox();
    v51 = v50;
    sub_1CA94AD98();
    v52 = swift_allocBox();
    OUTLINED_FUNCTION_10_22(v52, v53);
    v54 = *MEMORY[0x1E69DB060];
    OUTLINED_FUNCTION_19_23();
    (*(v55 + 104))();
    *v51 = v18;
    v56 = *MEMORY[0x1E69DB0B0];
    (*(v48 + 104))(v51, v56, v49);
    *v44 = v1001;
    (*(v45 + 104))(v44, *MEMORY[0x1E69DAF30], v46);
    OUTLINED_FUNCTION_49(v47, 1, v46);
    if (!v205)
    {
      sub_1CA5F03BC(*(v0 + 952), &unk_1EC445A40);
    }

    v14 = v1019;
  }

  else
  {
    v94 = *(v45 + 32);
    v95 = OUTLINED_FUNCTION_204();
    v96(v95);
    v97 = *MEMORY[0x1E69DB060];
    v56 = *MEMORY[0x1E69DB0B0];
  }

  v98 = *(v0 + 976);
  v99 = *(v0 + 944);
  v100 = *(v0 + 848);
  v101 = *(v0 + 840);
  sub_1CA94ACE8();
  OUTLINED_FUNCTION_40();
  v36 = sub_1CA94AD98();
  v102 = swift_allocBox();
  OUTLINED_FUNCTION_39(v36);
  (*(v103 + 104))();
  *v99 = v102;
  (*(v100 + 104))(v99, v56, v101);
  OUTLINED_FUNCTION_23();
  sub_1CA2B5928();
  v105 = v104;

  v107 = *(v100 + 8);
  v106 = (v100 + 8);
  v35 = v107;
  v108 = OUTLINED_FUNCTION_107_0();
  v107(v108);
  if (v105)
  {
    goto LABEL_18;
  }

  v127 = *(v0 + 976);
  v128 = *(v0 + 936);
  sub_1CA94ACE8();
  sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  static WFContentItem.AnyTypeIdentifier.getter(v128);
  v176 = *(v0 + 936);
  v105 = *(v0 + 840);
  OUTLINED_FUNCTION_23();
  sub_1CA2B5928();
  v178 = v177;

  v179 = OUTLINED_FUNCTION_20_0();
  v35(v179);
  if (v178)
  {
LABEL_18:
    v109 = *(v0 + 1144);
    v110 = *(v0 + 1064);
    v111 = *(v0 + 1056);
    v112 = *(v0 + 976);
    v113 = *(v0 + 960);
    OUTLINED_FUNCTION_119_3(*(v0 + 968));
    v114();
    v115 = *(v110 + 8);
    v116 = OUTLINED_FUNCTION_3_3();
    v117(v116);
    v118 = sub_1CA94AC18();
    v119 = swift_allocBox();
    OUTLINED_FUNCTION_10_22(v119, v120);
    *v121 = v1026;
    v121[1] = v14;
    v122 = *MEMORY[0x1E69DADF0];
    OUTLINED_FUNCTION_39(v118);
    (*(v123 + 104))();
    *v105 = v111;
LABEL_19:
    v69 = *MEMORY[0x1E69DAE70];
    v124 = sub_1CA94AC88();
    OUTLINED_FUNCTION_0_1(v124);
    v72 = *(v125 + 104);
    v73 = v105;
    goto LABEL_20;
  }

  v995 = v106;
  v180 = *(v0 + 976);
  v181 = *(v0 + 848);
  v182 = sub_1CA94ACE8();
  v11 = v182;
  ObjCClassMetadata = (v182 + 56);
  v183 = -1;
  v184 = -1 << *(v182 + 32);
  if (-v184 < 64)
  {
    v183 = ~(-1 << -v184);
  }

  v185 = v183 & *(v182 + 56);
  v186 = (63 - v184) >> 6;
  v1000 = (v181 + 32);
  v1009 = (v181 + 16);
  v980 = v181;
  v971 = *MEMORY[0x1E69DB098];
  v957 = (v181 + 96);
  v954 = *MEMORY[0x1E69E0FB0];
  v13 = 0;
  v986 = sub_1CA94C218();
  v991 = v35;
  v963 = v186;
  v967 = ObjCClassMetadata;
  for (i = v14; v185; ObjCClassMetadata = v967)
  {
LABEL_42:
    v188 = *(v0 + 920);
    v189 = *(v0 + 912);
    v190 = *(v11 + 48) + v980[9] * (__clz(__rbit64(v185)) | (v13 << 6));
    v191 = v980[2];
    v14 = v1009;
    (v191)(*(v0 + 928), v190, *(v0 + 840));
    v192 = v980[4];
    v193 = OUTLINED_FUNCTION_130();
    v960 = v194;
    v194(v193);
    v195 = OUTLINED_FUNCTION_52_11();
    v191(v195);
    v196 = v980[11];
    v197 = OUTLINED_FUNCTION_126();
    if (v198(v197) == v971)
    {
      v199 = *(v0 + 904);
      (v191)(v199, *(v0 + 912), *(v0 + 840));
      v200 = *v957;
      v201 = OUTLINED_FUNCTION_107_0();
      v202(v201);
      v203 = *(*v199 + 16);
      v14 = *(*v199 + 24);
      v205 = sub_1CA94C3A8() == v203 && v204 == v14;
      if (v205)
      {

LABEL_83:

        v379 = *(v0 + 920);
        v380 = *(v0 + 832);
        (v991)(*(v0 + 912), *(v0 + 840));
        v381 = OUTLINED_FUNCTION_130();
        v960(v381);
        v222 = 0;
LABEL_54:
        v223 = *(v0 + 840);
        v224 = *(v0 + 824);
        __swift_storeEnumTagSinglePayload(*(v0 + 832), v222, 1, v223);

        v225 = OUTLINED_FUNCTION_69_0();
        sub_1CA5EFF54(v225, v226, v227, v228);
        v229 = OUTLINED_FUNCTION_50_0();
        v231 = __swift_getEnumTagSinglePayload(v229, v230, v223);
        v232 = *(v0 + 1144);
        v233 = *(v0 + 1064);
        v987 = *(v0 + 1056);
        v234 = *(v0 + 968);
        v235 = *(v0 + 960);
        if (v231 == 1)
        {
          v236 = *(v0 + 824);
          v237 = *(v0 + 480);
          sub_1CA5F03BC(*(v0 + 832), &qword_1EC444368);
          v238 = *(v234 + 8);
          v239 = OUTLINED_FUNCTION_162();
          v240(v239);
          (*(v233 + 8))(v232, v987);
          v241 = OUTLINED_FUNCTION_107_0();
          sub_1CA5F03BC(v241, v242);
          v243 = sub_1CA94AC18();
          v244 = swift_allocBox();
          OUTLINED_FUNCTION_10_22(v244, v245);
          *v246 = v1026;
          v246[1] = i;
          v247 = *MEMORY[0x1E69DADF0];
          OUTLINED_FUNCTION_39(v243);
          (*(v248 + 104))();
          *v237 = v236;
          v69 = *MEMORY[0x1E69DAE70];
          v249 = sub_1CA94AC88();
          OUTLINED_FUNCTION_0_1(v249);
          v72 = *(v250 + 104);
          v73 = v237;
          goto LABEL_20;
        }

        v277 = *(v0 + 944);
        v964 = *(v0 + 832);
        v968 = *(v0 + 976);
        v278 = *(v0 + 816);
        v972 = *(v0 + 1144);
        v279 = *(v0 + 808);
        v280 = *(v0 + 792);
        v976 = *(v0 + 800);
        v981 = *(v0 + 480);
        (*v1000)(*(v0 + 896), *(v0 + 824), *(v0 + 840));
        v281 = *v1009;
        v282 = OUTLINED_FUNCTION_107_0();
        v283(v282);
        sub_1CA94B458();
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v284, v285, v286, v287);
        sub_1CA94A8A8();
        v288 = OUTLINED_FUNCTION_70();
        v991(v288);
        sub_1CA5F03BC(v964, &qword_1EC444368);
        (*(v234 + 8))(v968, v235);
        (*(v233 + 8))(v972, v987);
        v289 = swift_allocBox();
        v291 = OUTLINED_FUNCTION_56_9(v289, v290);
        (*(v279 + 32))(v291, v278, v976);
        v292 = v981;
        *v981 = v233 + 8;
LABEL_61:
        v293 = MEMORY[0x1E69DAE20];
LABEL_62:
        v69 = *v293;
        v294 = sub_1CA94AC88();
        OUTLINED_FUNCTION_0_1(v294);
        v72 = *(v295 + 104);
        v73 = v292;
LABEL_20:
        v126 = v69;
LABEL_21:
        v72(v73, v126);
LABEL_22:
        OUTLINED_FUNCTION_1_45();
        v945 = *(v0 + 744);
        v946 = *(v0 + 736);
        v947 = *(v0 + 728);
        v948 = *(v0 + 720);
        v950 = *(v0 + 712);
        v952 = *(v0 + 704);
        v955 = *(v0 + 696);
        v958 = *(v0 + 688);
        v961 = *(v0 + 664);
        v965 = *(v0 + 640);
        v969 = *(v0 + 616);
        v974 = *(v0 + 608);
        v978 = *(v0 + 600);
        v984 = *(v0 + 584);
        v989 = *(v0 + 576);
        v993 = *(v0 + 568);
        v1002 = *(v0 + 560);
        v1010 = *(v0 + 552);
        v1020 = *(v0 + 544);
        v1027 = *(v0 + 528);

        OUTLINED_FUNCTION_3_6();
LABEL_31:
        OUTLINED_FUNCTION_93_0();

        __asm { BRAA            X1, X16 }
      }

      OUTLINED_FUNCTION_130_3();
      v206 = sub_1CA94D7F8();

      if (v206)
      {
        goto LABEL_83;
      }
    }

    v185 &= v185 - 1;
    v207 = *(v0 + 920);
    v36 = v991;
    v35 = v995;
    (v991)(*(v0 + 912), *(v0 + 840));
    v208 = OUTLINED_FUNCTION_107_0();
    v991(v208);
    v11 = v986;
    v186 = v963;
  }

  while (1)
  {
    v187 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v187 >= v186)
    {

      v222 = 1;
      goto LABEL_54;
    }

    v185 = *&ObjCClassMetadata[2 * v187];
    ++v13;
    if (v185)
    {
      v13 = v187;
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_90:
  v415 = *(v0 + 496);
  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v416 = swift_dynamicCastObjCClass();
  if (v416)
  {
    v417 = [v416 entity];
    *(v0 + 1336) = v417;
    if (v417)
    {
      OUTLINED_FUNCTION_87();
      [swift_getObjCClassFromObject() entityContentItemClass];
      ObjCClassMetadata = swift_getObjCClassMetadata();
      sub_1CA25B3D0(0, &unk_1EC441810, off_1E836E808);
      if (swift_dynamicCastMetatype())
      {
        v418 = *(v0 + 768);
        sub_1CA94B458();
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v419, v420, v421, v422);
        swift_task_alloc();
        OUTLINED_FUNCTION_77();
        *(v0 + 1344) = v423;
        *v423 = v424;
        v423[1] = sub_1CA5DEA34;
        v425 = *(v0 + 768);
        OUTLINED_FUNCTION_106_5();
LABEL_94:
        OUTLINED_FUNCTION_93_0();

        return sub_1CA5EB608(v426, v427, v428, v429, v430);
      }
    }

    goto LABEL_106;
  }

  v447 = *(v0 + 496);
  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v448 = swift_dynamicCastObjCClass();
  *(v0 + 1360) = v448;
  ObjCClassMetadata = *(v0 + 496);
  if (v448)
  {
    *(v0 + 1368) = sub_1CA25B3D0(0, &unk_1EC447E40, 0x1E695FC20);
    v449 = *(MEMORY[0x1E6996C40] + 4);
    v450 = ObjCClassMetadata;
    v451 = swift_task_alloc();
    *(v0 + 1376) = v451;
    *v451 = v0;
    v451[1] = sub_1CA5DEDA8;
    OUTLINED_FUNCTION_93_0();

    return MEMORY[0x1EEDF8160]();
  }

  objc_opt_self();
  v460 = swift_dynamicCastObjCClass();
  if (v460)
  {
    v461 = v460;
    v1012 = *(v0 + 1144);
    v462 = *(v0 + 1112);
    v463 = *(v0 + 1056);
    v464 = *(v0 + 888);
    v465 = *(v0 + 848);
    v466 = *(v0 + 840);
    v467 = *(v0 + 512);
    v468 = *(v0 + 496);
    OUTLINED_FUNCTION_123();
    v469 = swift_allocObject();
    v470 = *MEMORY[0x1E69E0FB0];
    v469[2] = sub_1CA94C3A8();
    v469[3] = v471;
    v472 = sub_1CA3F132C(v461, &selRef_activityTypeIdentifier);
    if (v473)
    {
      v474 = v472;
    }

    else
    {
      v474 = 0;
    }

    v475 = 0xE000000000000000;
    if (v473)
    {
      v475 = v473;
    }

    v469[4] = v474;
    v469[5] = v475;
    v476 = swift_allocBox();
    *(v0 + 312) = v476;
    *(v0 + 320) = v477;
    *(v0 + 1440) = v476;
    *v464 = v469;
    (*(v465 + 104))(v464, *MEMORY[0x1E69DB098], v466);
    v478 = [v468 name];
    v479 = sub_1CA94C3A8();
    v481 = v480;
    *(v0 + 328) = v479;
    *(v0 + 336) = v480;

    *(v0 + 1448) = v481;
    *(v0 + 1456) = sub_1CA94AC88();
    *(v0 + 1464) = sub_1CA94C1E8();
    (i)(v462, v1012, v463);
    v482 = v468;
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v0 + 1472) = v483;
    *v483 = v484;
    v483[1] = sub_1CA5DF79C;
    v485 = *(v0 + 1112);
    v486 = *(v0 + 752);
    goto LABEL_98;
  }

  v487 = *(v0 + 496);
  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v488 = swift_dynamicCastObjCClass();
  if (v488)
  {
    v489 = [v488 contact];
    *(v0 + 1504) = v489;
    v490 = *(v0 + 1144);
    if (v489)
    {
      v491 = v489;
      v492 = *(v0 + 1104);
      v493 = *(v0 + 1056);
      v494 = *(v0 + 496);
      *(v0 + 1512) = sub_1CA94AC18();
      v495 = swift_allocBox();
      *(v0 + 344) = v495;
      *(v0 + 352) = v496;
      *(v0 + 1520) = v495;
      *(v0 + 1528) = [v491 INPersonRepresentation];
      v497 = OUTLINED_FUNCTION_129();
      i(v497);
      v498 = v494;
      swift_task_alloc();
      OUTLINED_FUNCTION_77();
      *(v0 + 1536) = v499;
      *v499 = v500;
      v499[1] = sub_1CA5DFBAC;
      v501 = *(v0 + 1104);
      v502 = *(v0 + 744);
      goto LABEL_98;
    }

LABEL_178:
    v816 = *(v0 + 1064);
    v817 = *(v0 + 1056);
    sub_1CA2F0CD4();
    OUTLINED_FUNCTION_4_0();
    v818 = swift_allocError();
    OUTLINED_FUNCTION_48_6(v818, v819);
    OUTLINED_FUNCTION_139_4(v820);
    v821 = *(v816 + 8);
    v822 = OUTLINED_FUNCTION_3_3();
    v823(v822);
    goto LABEL_30;
  }

  v503 = *(v0 + 496);
  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v504 = swift_dynamicCastObjCClass();
  if (v504)
  {
    v505 = v504;
    v506 = *(v0 + 1064);
    v992 = *(v0 + 1056);
    v996 = *(v0 + 1144);
    v507 = *(v0 + 944);
    v508 = *(v0 + 848);
    v973 = *(v0 + 840);
    v509 = *(v0 + 800);
    v982 = *(v0 + 792);
    v988 = *(v0 + 1096);
    v1013 = *(v0 + 480);
    ObjCClassFromObject = swift_getObjCClassFromObject();
    v1004 = swift_allocBox();
    OUTLINED_FUNCTION_123();
    v511 = swift_allocObject();
    v512 = [ObjCClassFromObject appBundleIdentifier];
    v513 = sub_1CA94C3A8();
    v515 = v514;

    v511[2] = v513;
    v511[3] = v515;
    v516 = [ObjCClassFromObject enumMetadata];
    v517 = [v516 identifier];

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_1_2();

    v511[4] = v516;
    v511[5] = v513;
    *v507 = v511;
    (*(v508 + 104))(v507, *MEMORY[0x1E69DB098], v973);
    v518 = [v505 enumCase];
    v519 = [v518 identifier];

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_1_2();

    v520 = [v505 enumCaseMetadata];
    v521 = [v520 displayRepresentation];

    (i)(v988, v996, v992);
    DisplayRepresentation.init(from:displayRepresentationConfig:)(v521, v988);
    OUTLINED_FUNCTION_14_0();
    sub_1CA94A8A8();
    v522 = *(v506 + 8);
    v523 = OUTLINED_FUNCTION_107_0();
    v524(v523);
    v292 = v1013;
    *v1013 = v1004;
    goto LABEL_61;
  }

  v525 = *(v0 + 496);
  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v526 = swift_dynamicCastObjCClass();
  if (v526)
  {
    v527 = v526;
    v997 = *(v0 + 1144);
    v528 = *(v0 + 1096);
    v529 = *(v0 + 1064);
    v530 = *(v0 + 1056);
    v531 = *(v0 + 792);
    v1014 = *(v0 + 480);
    v532 = swift_getObjCClassFromObject();
    sub_1CA94A9E8();
    v1005 = swift_allocBox();
    v533 = [v532 valueType];
    v534 = [v533 identifier];

    sub_1CA94C3A8();
    v535 = [v527 codableValue];
    v536 = [v535 data];

    sub_1CA948C08();
    v537 = [v527 displayRepresentation];
    (i)(v528, v997, v530);
    v538 = OUTLINED_FUNCTION_52_0();
    DisplayRepresentation.init(from:displayRepresentationConfig:)(v538, v539);
    sub_1CA94A9B8();
    v540 = *(v529 + 8);
    v541 = OUTLINED_FUNCTION_121();
    v542(v541);
    v292 = v1014;
    *v1014 = v1005;
    v293 = MEMORY[0x1E69DAE60];
    goto LABEL_62;
  }

  v543 = *(v0 + 496);
  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v998 = swift_dynamicCastObjCClass();
  if (!v998)
  {
    v560 = *(v0 + 496);
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v561 = swift_dynamicCastObjCClass();
    if (v561)
    {
      v562 = v561;
      v563 = *(v0 + 1088);
      v564 = *(v0 + 1056);
      v565 = *(v0 + 880);
      v566 = *(v0 + 848);
      v567 = *(v0 + 840);
      v568 = *(v0 + 512);
      v1006 = *(v0 + 1144);
      v1015 = *(v0 + 496);
      v569 = sub_1CA94AD98();
      v570 = swift_allocBox();
      OUTLINED_FUNCTION_56_9(v570, v571);
      v572 = *MEMORY[0x1E69DB018];
      OUTLINED_FUNCTION_39(v569);
      (*(v573 + 104))();
      *v565 = v560;
      (*(v566 + 104))(v565, *MEMORY[0x1E69DB0B0], v567);
      *(v0 + 360) = sub_1CA5A30FC([v562 object], &selRef_identifier);
      *(v0 + 368) = v574;
      *(v0 + 1600) = v574;
      v575 = swift_allocBox();
      *(v0 + 376) = v575;
      *(v0 + 384) = v576;
      *(v0 + 1608) = v575;
      *(v0 + 1616) = sub_1CA94AC88();
      *(v0 + 1624) = sub_1CA94C1E8();
      (i)(v563, v1006, v564);
      v577 = v1015;
      swift_task_alloc();
      OUTLINED_FUNCTION_77();
      *(v0 + 1632) = v578;
      *v578 = v579;
      v578[1] = sub_1CA5E0700;
      v580 = *(v0 + 1088);
      v581 = *(v0 + 728);
      goto LABEL_98;
    }

    v591 = *(v0 + 496);
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v592 = swift_dynamicCastObjCClass();
    if (v592)
    {
      v593 = v592;
      v594 = *(v0 + 1024);
      v595 = *(v0 + 1016);
      v596 = *(v0 + 872);
      v597 = *(v0 + 616);
      v598 = *(v0 + 592);
      v600 = *(v0 + 504);
      v599 = *(v0 + 512);
      v601 = swift_allocBox();
      v603 = OUTLINED_FUNCTION_129_3(v601, v602);
      (*(v594 + 104))(v597 + v604, *MEMORY[0x1E69DB488], v595, v603);
      v605 = v597 + *(v598 + 24);
      _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
      v606 = [objc_opt_self() defaultContext];
      OUTLINED_FUNCTION_140_5(v606);
      v607 = *(v0 + 1144);
      v608 = *(v0 + 1064);
      v609 = *(v0 + 1056);
      if (!v596)
      {
        v631 = *(v0 + 792);
        v632 = *(v0 + 616);
        v999 = *(v0 + 584);
        v1007 = *(v0 + 872);
        v1016 = *(v0 + 480);
        OUTLINED_FUNCTION_4_49();
        sub_1CA5EF5D8();
        v633 = [v593 reminder];
        v634 = [v633 objectID];

        v635 = [v634 description];
        sub_1CA94C3A8();

        v636 = sub_1CA94AC88();
        sub_1CA94C1E8();
        v637 = [v593 name];
        sub_1CA94C3A8();

        sub_1CA94B2E8();
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v638, v639, v640, v641);
        OUTLINED_FUNCTION_122_2();
        sub_1CA94B338();
        sub_1CA94B458();
        OUTLINED_FUNCTION_89();
        __swift_storeEnumTagSinglePayload(v642, v643, v644, v645);
        sub_1CA94A988();
        (*(v608 + 8))(v607, v609);
        *v1016 = v1026;
        v646 = *MEMORY[0x1E69DAE58];
        OUTLINED_FUNCTION_39(v636);
        (*(v647 + 104))(v648, v649);
        goto LABEL_22;
      }

      v610 = *(v0 + 616);
      OUTLINED_FUNCTION_4_49();
      sub_1CA5EF5D8();
      (*(v608 + 8))(v607, v609);
LABEL_135:
      swift_deallocBox();
      goto LABEL_30;
    }

    v611 = *(v0 + 496);
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v612 = swift_dynamicCastObjCClass();
    if (v612)
    {
      v613 = v612;
      v614 = *(v0 + 1024);
      v615 = *(v0 + 1016);
      v616 = *(v0 + 864);
      v617 = *(v0 + 608);
      v618 = *(v0 + 592);
      v620 = *(v0 + 504);
      v619 = *(v0 + 512);
      v621 = swift_allocBox();
      v623 = OUTLINED_FUNCTION_129_3(v621, v622);
      (*(v614 + 104))(v617 + v624, *MEMORY[0x1E69DB488], v615, v623);
      v625 = v617 + *(v618 + 24);
      _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
      v626 = [objc_opt_self() defaultContext];
      OUTLINED_FUNCTION_140_5(v626);
      v627 = *(v0 + 1144);
      v628 = *(v0 + 1064);
      v629 = *(v0 + 1056);
      if (!v616)
      {
        v660 = *(v0 + 792);
        v661 = *(v0 + 608);
        v1008 = *(v0 + 864);
        v1017 = *(v0 + 480);
        OUTLINED_FUNCTION_4_49();
        sub_1CA5EF5D8();
        v662 = [v613 event];
        v663 = [v662 calendarItemIdentifier];

        sub_1CA94C3A8();
        v664 = sub_1CA94AC88();
        sub_1CA94C1E8();
        v665 = [v613 name];
        sub_1CA94C3A8();

        sub_1CA94B368();
        sub_1CA94B458();
        OUTLINED_FUNCTION_89();
        __swift_storeEnumTagSinglePayload(v666, v667, v668, v669);
        sub_1CA94A988();
        (*(v628 + 8))(v627, v629);
        *v1017 = v1026;
        v670 = *MEMORY[0x1E69DAE58];
        OUTLINED_FUNCTION_39(v664);
        (*(v671 + 104))(v672, v673);
        goto LABEL_22;
      }

      v630 = *(v0 + 608);
      OUTLINED_FUNCTION_4_49();
      sub_1CA5EF5D8();
      (*(v628 + 8))(v627, v629);
      goto LABEL_135;
    }

    v650 = *(v0 + 496);
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastObjCClass())
    {
      v651 = *(v0 + 1024);
      v652 = *(v0 + 1016);
      v653 = *(v0 + 856);
      v654 = *(v0 + 600);
      v655 = *(v0 + 592);
      v657 = *(v0 + 504);
      v656 = *(v0 + 512);
      *(v0 + 1664) = swift_allocBox();
      *(v0 + 1672) = v658;
      *v654 = 0u;
      *(v654 + 16) = 0u;
      *(v654 + 32) = 0;
      (*(v651 + 104))(v654 + v655[5], *MEMORY[0x1E69DB488], v652);
      v659 = v654 + v655[6];
      _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
      *(v654 + v655[7]) = [objc_opt_self() defaultContext];
      static WFContentItem.toolkitTypeIdentifier(context:)(v654, v653);
      v693 = *(v0 + 1080);
      v694 = *(v0 + 600);
      v695 = *(v0 + 496);
      OUTLINED_FUNCTION_4_49();
      sub_1CA5EF5D8();
      v696 = sub_1CA948D28();
      OUTLINED_FUNCTION_1_0(v696);
      v698 = v697;
      v700 = *(v699 + 64);
      v701 = OUTLINED_FUNCTION_45();
      *(v0 + 1680) = v701;
      sub_1CA948D18();
      *(v0 + 392) = sub_1CA948CC8();
      *(v0 + 400) = v702;
      *(v0 + 1688) = v702;
      (*(v698 + 8))(v701, v696);
      *(v0 + 1696) = sub_1CA94AC88();
      *(v0 + 1704) = sub_1CA94C1E8();
      v703 = v695;
      sub_1CA94B718();
      swift_task_alloc();
      OUTLINED_FUNCTION_77();
      *(v0 + 1712) = v704;
      *v704 = v705;
      v704[1] = sub_1CA5E0B44;
      v706 = *(v0 + 1080);
      v707 = *(v0 + 720);
      goto LABEL_98;
    }

    v674 = *(v0 + 496);
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastObjCClass())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446F98, &unk_1CA98E330);
      OUTLINED_FUNCTION_40();
      v675 = sub_1CA949D18();
      OUTLINED_FUNCTION_12(v675);
      v677 = *(v676 + 72);
      v679 = (*(v678 + 80) + 32) & ~*(v678 + 80);
      v680 = swift_allocObject();
      *(v0 + 1736) = v680;
      *(v680 + 16) = xmmword_1CA981310;
      sub_1CA949CA8();
      v681 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
      OUTLINED_FUNCTION_18_0(v681);
      v683 = *(v682 + 64);
      *(v0 + 1744) = OUTLINED_FUNCTION_45();
      sub_1CA948BA8();
      OUTLINED_FUNCTION_46();
      __swift_storeEnumTagSinglePayload(v684, v685, v686, v687);
      swift_task_alloc();
      OUTLINED_FUNCTION_77();
      *(v0 + 1752) = v688;
      *v688 = v689;
      v688[1] = sub_1CA5E0F78;
      v690 = *(v0 + 1144);
      v691 = *(v0 + 1000);
      v692 = *(v0 + 496);
      goto LABEL_3;
    }

    v13 = *(v0 + 496);
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v708 = swift_dynamicCastObjCClass();
    if (v708)
    {
      v709 = v708;
      v1024 = *(v0 + 1144);
      v710 = *(v0 + 1064);
      v711 = *(v0 + 1056);
      OUTLINED_FUNCTION_102_4();
      v134 = sub_1CA94AC18();
      v1028 = swift_allocBox();
      v136 = v712;
      v713 = [v709 measurement];
      v714 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AD0, &unk_1CA981530);
      OUTLINED_FUNCTION_1_0(v714);
      v716 = v715;
      v718 = *(v717 + 64);
      OUTLINED_FUNCTION_45();
      sub_1CA25B3D0(0, &qword_1EC443828, 0x1E696AFD0);
      sub_1CA948808();

      (*(v710 + 8))(v1024, v711);
      v719 = *(v716 + 32);
      v720 = OUTLINED_FUNCTION_121();
      v721(v720);
      v146 = MEMORY[0x1E69DAD60];
      goto LABEL_27;
    }

    goto LABEL_146;
  }

  v544 = *(v0 + 1032);
  v545 = *(v0 + 1016);
  v546 = *(v0 + 488);
  swift_getObjectType();
  v547 = OUTLINED_FUNCTION_130();
  (v11)(v547);
  v548 = OUTLINED_FUNCTION_188();
  v549 = (v14)(v548);
  v550 = *MEMORY[0x1E69DB490];
  v551 = OUTLINED_FUNCTION_188();
  (v36)(v551);
  if (v549 != v550)
  {
    v582 = *(v0 + 1144);
    v583 = *(v0 + 1096);
    v584 = *(v0 + 1056);
    v585 = *(v0 + 736);
    *(v0 + 1576) = [v998 entity];
    v586 = [v998 displayRepresentation];
    v587 = OUTLINED_FUNCTION_52_11();
    i(v587);
    DisplayRepresentation.init(from:displayRepresentationConfig:)(v586, v583);
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v0 + 1584) = v588;
    *v588 = v589;
    v588[1] = sub_1CA5E0384;
    v590 = *(v0 + 736);
    OUTLINED_FUNCTION_106_5();
    goto LABEL_94;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v0 + 1560) = v552;
  *v552 = v553;
  v552[1] = sub_1CA5DFFB8;
  v554 = *(v0 + 640);
  v555 = *(v0 + 496);
  OUTLINED_FUNCTION_93_0();

  return sub_1CA5E8254(v556, v557, v558);
}