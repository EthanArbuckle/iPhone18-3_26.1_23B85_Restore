uint64_t sub_1B1E2C2DC(void **__src, id *__dst, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = a3 - __dst;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v11 = &v4[v8];
    v53 = v11;
    v55 = v5;
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_48;
      }

      v57 = v7;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      v16 = [v14 identifier];
      v17 = sub_1B1F1A890();
      v19 = v18;

      v20 = [v15 identifier];
      v21 = sub_1B1F1A890();
      v23 = v22;

      if (v17 == v21 && v19 == v23)
      {

        v26 = v57;
      }

      else
      {
        v25 = sub_1B1F1B510();

        v26 = v57;
        if (v25)
        {
          v27 = v6;
          v28 = v57 == v6++;
          goto LABEL_20;
        }
      }

      v27 = v4;
      v28 = v26 == v4++;
LABEL_20:
      v11 = v53;
      v5 = v55;
      if (!v28)
      {
        *v26 = *v27;
      }

      v7 = v26 + 1;
    }
  }

  if (a4 != __dst || &__dst[v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v11 = &v4[v9];
  v51 = v4;
  v58 = v7;
LABEL_29:
  v30 = v6 - 1;
  v31 = v5 - 1;
  for (i = v6; v11 > v4 && v6 > v7; v6 = i)
  {
    v54 = v11;
    v56 = v31;
    v33 = v11 - 1;
    v34 = v30;
    v35 = *v30;
    v36 = *(v11 - 1);
    v37 = v35;
    v38 = [v36 identifier];
    v39 = sub_1B1F1A890();
    v41 = v40;

    v42 = [v37 identifier];
    v43 = sub_1B1F1A890();
    v45 = v44;

    if (v39 == v43 && v41 == v45)
    {
      v47 = 0;
    }

    else
    {
      v47 = sub_1B1F1B510();
    }

    v7 = v58;
    v11 = v54;
    v30 = v34;
    if (v47)
    {
      v5 = v56;
      v4 = v51;
      v6 = v30;
      if (v56 + 1 != i)
      {
        *v56 = *v30;
        v6 = v30;
      }

      goto LABEL_29;
    }

    v4 = v51;
    if (v54 != v56 + 1)
    {
      *v56 = *v33;
    }

    v31 = v56 - 1;
    v11 = v33;
  }

LABEL_48:
  v48 = v11 - v4;
  if (v6 != v4 || v6 >= &v4[v48])
  {
    memmove(v6, v4, 8 * v48);
  }

  return 1;
}

char *sub_1B1E2C648(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846E8, &qword_1B1F2CC20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1B1E2C748(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B1F1A890();

  return v3;
}

uint64_t sub_1B1E2C7B8(void *a1)
{
  v1 = [a1 fullyQualifiedIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B1F1A890();

  return v3;
}

uint64_t sub_1B1E2C8C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1B1F1B110();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1B1E2B424(v4, 0);
      sub_1B1E2C95C((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1B1E2C95C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B1F1B110();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B1DEBAA4(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1B1DEA98C(0, &qword_1EB783620, 0x1E69AC988);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B1DFA1D4(&qword_1EB783660, &qword_1EB7846D8, &unk_1B1F2CC00);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7846D8, &unk_1B1F2CC00);
          v9 = sub_1B1E2B7A8(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B1E2CB1C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v18 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      result = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1E2CC7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B1E27928();
}

uint64_t sub_1B1E2CC84(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_7(a1);
  v3 = sub_1B1DECA18(v2, v1, sub_1B1E2D064, sub_1B1E2D064, sub_1B1E24A8C, sub_1B1E0E2B8);
  return OUTLINED_FUNCTION_14_2(v3);
}

uint64_t sub_1B1E2CD08(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_7(a1);
  v3 = sub_1B1DECA18(v2, v1, sub_1B1DEBA30, sub_1B1E2D064, sub_1B1E24130, sub_1B1E0E2B8);
  return OUTLINED_FUNCTION_14_2(v3);
}

uint64_t sub_1B1E2CDB8(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = *a1;
  v9 = a2(v5, v4, v6, v7);
  return OUTLINED_FUNCTION_14_2(v9);
}

uint64_t sub_1B1E2CE04(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_7(a1);
  v3 = sub_1B1DECA18(v2, v1, sub_1B1E2D064, sub_1B1E2D064, sub_1B1E2251C, sub_1B1E0E2B8);
  return OUTLINED_FUNCTION_14_2(v3);
}

uint64_t sub_1B1E2CE90(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_31_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B1E2CEE4(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {
        sub_1B1F1A760();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;
      result = sub_1B1F1A760();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_17_2(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_23_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 16) = v1;
  return result;
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_1B1F1A8F0();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_1B1F1A8F0();
    }

LABEL_9:
    __break(1u);
    return sub_1B1F1A8F0();
  }

  __break(1u);
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_1EB783B18 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB7847D8;

  return v1;
}

id sub_1B1E2D288()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EB7847D8 = result;
  return result;
}

uint64_t sub_1B1E2D314(unsigned __int8 a1)
{
  v3 = sub_1B1F1A1D0();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_12_3();
  v9 = sub_1B1F1A370();
  v10 = OUTLINED_FUNCTION_8(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_6();
  v13 = sub_1B1F1A850();
  v14 = OUTLINED_FUNCTION_8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_16_3();
  v17 = (v6 + 104);
  if (a1 > 1u)
  {
    OUTLINED_FUNCTION_15_4();
  }

  sub_1B1F1A840();
  sub_1B1F1A360();
  (*v17)(v1, *MEMORY[0x1E6968DF0], v3);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_7_5();
  return sub_1B1F1A1F0();
}

uint64_t sub_1B1E2D4E0(unsigned __int8 a1)
{
  sub_1B1F1B7C0();
  MEMORY[0x1B273E060](a1);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E2D538()
{
  v0 = sub_1B1F1A1D0();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_3();
  v8 = v7 - v6;
  v9 = sub_1B1F1A370();
  v10 = OUTLINED_FUNCTION_8(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_6();
  v13 = sub_1B1F1A850();
  v14 = OUTLINED_FUNCTION_8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_16_3();
  sub_1B1F1A840();
  sub_1B1F1A360();
  (*(v3 + 104))(v8, *MEMORY[0x1E6968DF0], v0);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_7_5();
  return OUTLINED_FUNCTION_5_7();
}

void sub_1B1E2D6A8()
{
  OUTLINED_FUNCTION_17_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784828, &qword_1B1F2D138);
  OUTLINED_FUNCTION_8(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12_3();
  v7 = sub_1B1F1A1D0();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_6();
  v13 = sub_1B1F1A370();
  v14 = OUTLINED_FUNCTION_8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_16_3();
  v17 = sub_1B1F1A850();
  v18 = OUTLINED_FUNCTION_8(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_11();
  v21 = sub_1B1F1A1E0();
  v22 = OUTLINED_FUNCTION_10(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4();
  sub_1B1F1A840();
  sub_1B1F1A360();
  (*(v10 + 104))(v0, *MEMORY[0x1E6968DF0], v7);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v21);
  sub_1B1F19EA0();
  v28 = sub_1B1F19E90();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v28);
  OUTLINED_FUNCTION_15_1();
}

uint64_t sub_1B1E2D8C0()
{
  KeyPath = swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784848, &qword_1B1F2D180);
  v2 = sub_1B1E2FBF4();
  v3 = sub_1B1E2FC9C(&qword_1EB784850, &qword_1EB784848, &qword_1B1F2D180);

  return MEMORY[0x1EEDB4008](KeyPath, sub_1B1E2D9DC, 0, v1, v2, v3);
}

uint64_t sub_1B1E2D9B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1E2D98C();
  *a2 = result;
  return result;
}

uint64_t sub_1B1E2D9DC@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784858, &qword_1B1F2D188);
  v2 = *(v1 - 8);
  v28 = v1;
  v29 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v26 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784860, &qword_1B1F2D190);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v25 = &v21 - v12;
  v32 = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784868, &qword_1B1F2D198);
  v23 = sub_1B1E2FBF4();
  sub_1B1E2EDA4();
  sub_1B1E2FC9C(&qword_1EB784870, &qword_1EB784868, &qword_1B1F2D198);
  v24 = v13;
  sub_1B1F19FB0();
  sub_1B1E2FC9C(&qword_1EB784878, &qword_1EB784860, &qword_1B1F2D190);
  v14 = v7;
  sub_1B1F19FA0();
  v22 = *(v31 + 8);
  v31 += 8;
  v22(v11, v7);
  v15 = v26;
  sub_1B1F19FD0();
  sub_1B1E2FC9C(&qword_1EB784880, &qword_1EB784858, &qword_1B1F2D188);
  v16 = v27;
  v17 = v28;
  sub_1B1F19FA0();
  v18 = *(v29 + 8);
  v18(v15, v17);
  v19 = v25;
  sub_1B1F19F90();
  v18(v16, v17);
  return (v22)(v19, v14);
}

uint64_t sub_1B1E2DDC0@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784888, &qword_1B1F2D1A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784890, &qword_1B1F2D1A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784868, &qword_1B1F2D198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  sub_1B1E2FBF4();
  sub_1B1F19F10();
  sub_1B1F19F00();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784898, &qword_1B1F2D1B0);
  sub_1B1F19EF0();

  sub_1B1F19F00();
  sub_1B1F19F20();
  sub_1B1F19EE0();
  v13 = sub_1B1E2FC9C(&qword_1EB784870, &qword_1EB784868, &qword_1B1F2D198);
  MEMORY[0x1B273C7E0](v10, &unk_1F28F5670, v5, v13);
  v14 = *(v6 + 8);
  v14(v10, v5);
  MEMORY[0x1B273C7D0](v12, &unk_1F28F5670, v5, v13);
  return (v14)(v12, v5);
}

uint64_t sub_1B1E2E0B4@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784888, &qword_1B1F2D1A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784890, &qword_1B1F2D1A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784868, &qword_1B1F2D198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  sub_1B1E2FBF4();
  sub_1B1F19F10();
  sub_1B1F19F00();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784898, &qword_1B1F2D1B0);
  sub_1B1F19EF0();

  sub_1B1F19F00();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7848A0, &qword_1B1F2D1E0);
  sub_1B1F19EF0();

  sub_1B1F19F00();
  sub_1B1F19F20();
  sub_1B1F19EE0();
  v13 = sub_1B1E2FC9C(&qword_1EB784870, &qword_1EB784868, &qword_1B1F2D198);
  MEMORY[0x1B273C7E0](v10, &unk_1F28F5670, v5, v13);
  v14 = *(v6 + 8);
  v14(v10, v5);
  MEMORY[0x1B273C7D0](v12, &unk_1F28F5670, v5, v13);
  return (v14)(v12, v5);
}

uint64_t sub_1B1E2E41C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1B1E2E3F8();
  *a2 = result;
  return result;
}

void sub_1B1E2E448()
{
  OUTLINED_FUNCTION_17_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784828, &qword_1B1F2D138);
  OUTLINED_FUNCTION_8(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12_3();
  v5 = sub_1B1F1A1D0();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_6();
  v11 = sub_1B1F1A370();
  v12 = OUTLINED_FUNCTION_8(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_16_3();
  v15 = sub_1B1F1A850();
  v16 = OUTLINED_FUNCTION_8(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_11();
  v19 = sub_1B1F1A1E0();
  v20 = OUTLINED_FUNCTION_10(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_14_3();
  sub_1B1F1A840();
  sub_1B1F1A360();
  (*(v8 + 104))(v0, *MEMORY[0x1E6968DF0], v5);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_7_5();
  sub_1B1F1A1F0();
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  sub_1B1F19F80();
  OUTLINED_FUNCTION_15_1();
}

void sub_1B1E2E644()
{
  OUTLINED_FUNCTION_17_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7848A8, &qword_1B1F2D1E8);
  OUTLINED_FUNCTION_8(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v4);
  v58 = v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784828, &qword_1B1F2D138);
  OUTLINED_FUNCTION_8(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  v57 = v49 - v10;
  v11 = sub_1B1F1A1D0();
  v12 = OUTLINED_FUNCTION_9_5(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_11();
  v17 = sub_1B1F1A370();
  v18 = OUTLINED_FUNCTION_8(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_3();
  v21 = sub_1B1F1A850();
  v22 = OUTLINED_FUNCTION_8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_3();
  v55 = sub_1B1F1A1E0();
  v25 = OUTLINED_FUNCTION_10(v55);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7848B0, &qword_1B1F2D1F0);
  v28 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7848B8, &qword_1B1F2D1F8) - 8);
  v29 = *v28;
  v54 = *(*v28 + 72);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  v56 = v31;
  *(v31 + 16) = xmmword_1B1F29850;
  v32 = v31 + v30;
  v49[1] = v28[14];
  *(v31 + v30) = 0;
  sub_1B1F1A840();
  sub_1B1F1A360();
  v50 = *MEMORY[0x1E6968DF0];
  v33 = *(v14 + 104);
  v51 = v14 + 104;
  v53 = v33;
  v33(v0);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_4_6();
  v34 = v55;
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v55);
  v38 = sub_1B1F19EB0();
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
  OUTLINED_FUNCTION_18_3();
  v42 = (v32 + v54);
  v54 = v28[14];
  *v42 = 1;
  sub_1B1F1A840();
  sub_1B1F1A360();
  v53(v0, v50, v52);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v34);
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v38);
  OUTLINED_FUNCTION_18_3();
  sub_1B1F19ED0();
  sub_1B1E2EFFC();
  sub_1B1F1A730();
  OUTLINED_FUNCTION_15_1();
}

uint64_t sub_1B1E2EA38()
{
  v0 = sub_1B1F1B160();

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

uint64_t sub_1B1E2EA8C(char a1)
{
  if (a1)
  {
    return 0x656C67676F74;
  }

  else
  {
    return 1852994932;
  }
}

unint64_t sub_1B1E2EAC8()
{
  result = qword_1ED84EDE0;
  if (!qword_1ED84EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EDE0);
  }

  return result;
}

uint64_t sub_1B1E2EB34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1E2EA38();
  *a2 = result;
  return result;
}

uint64_t sub_1B1E2EB64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1E2EA8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1B1E2EBE8()
{
  result = qword_1ED84EE20;
  if (!qword_1ED84EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EE20);
  }

  return result;
}

unint64_t sub_1B1E2EC40()
{
  result = qword_1ED84EDF8;
  if (!qword_1ED84EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EDF8);
  }

  return result;
}

unint64_t sub_1B1E2EC98()
{
  result = qword_1ED84EDD8;
  if (!qword_1ED84EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EDD8);
  }

  return result;
}

unint64_t sub_1B1E2ECFC()
{
  result = qword_1ED84EE08;
  if (!qword_1ED84EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EE08);
  }

  return result;
}

unint64_t sub_1B1E2ED50()
{
  result = qword_1ED84EE00;
  if (!qword_1ED84EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EE00);
  }

  return result;
}

unint64_t sub_1B1E2EDA4()
{
  result = qword_1ED84EE18;
  if (!qword_1ED84EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EE18);
  }

  return result;
}

unint64_t sub_1B1E2EDFC()
{
  result = qword_1ED84EE10;
  if (!qword_1ED84EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EE10);
  }

  return result;
}

unint64_t sub_1B1E2EEA8()
{
  result = qword_1EB7847F0;
  if (!qword_1EB7847F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7847F0);
  }

  return result;
}

uint64_t sub_1B1E2EEFC(uint64_t a1)
{
  v2 = sub_1B1E2EEA8();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1B1E2EF4C()
{
  result = qword_1ED84EDF0;
  if (!qword_1ED84EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EDF0);
  }

  return result;
}

unint64_t sub_1B1E2EFA4()
{
  result = qword_1ED84EDD0;
  if (!qword_1ED84EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EDD0);
  }

  return result;
}

unint64_t sub_1B1E2EFFC()
{
  result = qword_1ED84EDE8;
  if (!qword_1ED84EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EDE8);
  }

  return result;
}

uint64_t sub_1B1E2F054(uint64_t a1)
{
  v2 = sub_1B1E2EDFC();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1B1E2F0A4()
{
  result = qword_1ED84EDB8;
  if (!qword_1ED84EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EDB8);
  }

  return result;
}

unint64_t sub_1B1E2F0FC()
{
  result = qword_1ED84EDC8;
  if (!qword_1ED84EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EDC8);
  }

  return result;
}

uint64_t sub_1B1E2F188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B1E2F1AC, 0, 0);
}

uint64_t sub_1B1E2F1AC()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 hasCapability_];

  if ((v2 & 1) == 0)
  {
    v4 = *(v0 + 24);
    v5 = [objc_allocWithZone(WFAVSystemController) init];
    sub_1B1F19E50();
    if (*(v0 + 40) == 1)
    {
      OUTLINED_FUNCTION_15_4();
      v6 = sub_1B1F1A860();
      v7 = [v5 toggleSilentModeWithReason:v6 client:1];

      if ((v7 & 1) == 0)
      {
        sub_1B1E2FC48();
        swift_allocError();
        *v8 = 1;
LABEL_9:
        swift_willThrow();

        goto LABEL_10;
      }
    }

    else
    {
      v9 = *(v0 + 32);
      sub_1B1F19E50();
      v10 = *(v0 + 40);
      OUTLINED_FUNCTION_15_4();
      v11 = sub_1B1F1A860();
      LOBYTE(v10) = [v5 setSilentMode:v10 reason:v11 client:1];

      if ((v10 & 1) == 0)
      {
        sub_1B1E2FC48();
        swift_allocError();
        *v14 = 2;
        goto LABEL_9;
      }
    }

    v12 = *(v0 + 16);
    sub_1B1F19E40();

    v13 = *(v0 + 8);
    goto LABEL_11;
  }

  sub_1B1E2FC48();
  swift_allocError();
  *v3 = 0;
  swift_willThrow();
LABEL_10:
  v13 = *(v0 + 8);
LABEL_11:

  return v13();
}

void sub_1B1E2F3D0()
{
  OUTLINED_FUNCTION_17_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784818, &qword_1B1F2D128);
  OUTLINED_FUNCTION_8(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v63 - v4;
  v5 = sub_1B1F19F30();
  v76 = OUTLINED_FUNCTION_0(v5);
  v77 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_2_3();
  v73 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784820, &qword_1B1F2D130);
  v12 = OUTLINED_FUNCTION_8(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v63 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784828, &qword_1B1F2D138);
  OUTLINED_FUNCTION_8(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_1B1F1A1D0();
  v22 = OUTLINED_FUNCTION_9_5(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_3();
  v29 = v28 - v27;
  v30 = sub_1B1F1A370();
  v31 = OUTLINED_FUNCTION_8(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_3();
  v34 = sub_1B1F1A850();
  v35 = OUTLINED_FUNCTION_8(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_3();
  v38 = sub_1B1F1A1E0();
  v68 = v38;
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_3();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784830, &qword_1B1F2D140);
  OUTLINED_FUNCTION_14_3();
  sub_1B1F1A840();
  sub_1B1F1A360();
  v69 = *MEMORY[0x1E6968DF0];
  v40 = *(v24 + 104);
  v70 = v24 + 104;
  v72 = v40;
  v64 = v29;
  v40(v29);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v38);
  v79 = 0;
  v44 = sub_1B1F19E30();
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v44);
  v67 = *MEMORY[0x1E695A500];
  v51 = *(v77 + 104);
  v77 += 104;
  v66 = v51;
  v52 = v73;
  v51(v73);
  sub_1B1E2EEA8();
  sub_1B1F19E70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784838, &qword_1B1F2D148);
  sub_1B1F1A840();
  sub_1B1F1A360();
  v72(v64, v69, v71);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v68);
  v78 = 1;
  sub_1B1F1AA10();
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v44);
  v66(v52, v67, v76);
  sub_1B1F19E80();
  OUTLINED_FUNCTION_15_1();
}

uint64_t sub_1B1E2F8DC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B1E2F988;

  return sub_1B1E2F188(a1, v5, v4);
}

uint64_t sub_1B1E2F988()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1B1E2FA7C(void *a1@<X8>)
{
  sub_1B1E2F3D0();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B1E2FAA4(uint64_t a1)
{
  v2 = sub_1B1E2FBF4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1B1E2FAE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1B1E2FB1C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B1E2FBF4()
{
  result = qword_1ED84EDC0;
  if (!qword_1ED84EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EDC0);
  }

  return result;
}

unint64_t sub_1B1E2FC48()
{
  result = qword_1EB784840;
  if (!qword_1EB784840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784840);
  }

  return result;
}

uint64_t sub_1B1E2FC9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1B1E2FCE4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B1E2FDC0()
{
  result = qword_1EB7848C0;
  if (!qword_1EB7848C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7848C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_7()
{

  return sub_1B1F1A1F0();
}

uint64_t OUTLINED_FUNCTION_9_5(uint64_t result)
{
  *(v1 - 144) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_3()
{

  return MEMORY[0x1EEDB3A88](v0, v1, v2);
}

uint64_t sub_1B1E2FE80(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x80000001B1F38DA0 == a2;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001B1F38DC0 == a2;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F68537865646E69 && a2 == 0xEE00737475637472;
      if (v7 || (sub_1B1F1B510() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E496574656C6564 && a2 == 0xEB00000000786564)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B1F1B510();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1B1E30000(char a1)
{
  result = 0x6F68537865646E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6E496574656C6564;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t sub_1B1E300A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B1F1B510();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B1E30130(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657461647075 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6563726F66 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B1F1B510();

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

uint64_t sub_1B1E3024C(char a1)
{
  if (!a1)
  {
    return 0x64657461647075;
  }

  if (a1 == 1)
  {
    return 0x6465766F6D6572;
  }

  return 0x6563726F66;
}

uint64_t sub_1B1E302A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E2FE80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E302F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E2FFF8();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E30318(uint64_t a1)
{
  v2 = sub_1B1E30B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E30354(uint64_t a1)
{
  v2 = sub_1B1E30B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E303B0@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_17_1();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B1E303DC(uint64_t a1)
{
  v2 = sub_1B1E30BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E30418(uint64_t a1)
{
  v2 = sub_1B1E30BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E30458(uint64_t a1)
{
  v2 = sub_1B1E30CB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E30494(uint64_t a1)
{
  v2 = sub_1B1E30CB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E304D0(uint64_t a1)
{
  v2 = sub_1B1E30C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3050C(uint64_t a1)
{
  v2 = sub_1B1E30C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E30550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E30130(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E30578@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E30244();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E305A0(uint64_t a1)
{
  v2 = sub_1B1E30C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E305DC(uint64_t a1)
{
  v2 = sub_1B1E30C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VoiceShortcutClientRequest.Spotlight.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7848C8, &qword_1B1F2D300);
  v4 = OUTLINED_FUNCTION_0(v3);
  v62 = v5;
  v63 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v61 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7848D0, &qword_1B1F2D308);
  v11 = OUTLINED_FUNCTION_0(v10);
  v58 = v12;
  v59 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v57 = v16;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7848D8, &qword_1B1F2D310);
  OUTLINED_FUNCTION_0(v64);
  v60 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17();
  v66 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7848E0, &qword_1B1F2D318);
  v23 = OUTLINED_FUNCTION_0(v22);
  v55 = v24;
  v56 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v54 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7848E8, &unk_1B1F2D320);
  OUTLINED_FUNCTION_0(v30);
  v67 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v54 - v35;
  v37 = *v1;
  v65 = v1[1];
  v38 = *(v1 + 16);
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1E30B68();
  sub_1B1F1B830();
  if (!(v38 >> 6))
  {
    LOBYTE(v70) = 1;
    sub_1B1E30C64();
    v45 = v30;
    OUTLINED_FUNCTION_12_4();
    v70 = v37;
    v69 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785850, &qword_1B1F31450);
    sub_1B1E322F4(&qword_1EB784910);
    v46 = v64;
    v47 = v68;
    sub_1B1F1B2B0();
    if (v47)
    {
      (*(v60 + 8))(v66, v46);
      OUTLINED_FUNCTION_9_6();
      v43 = v36;
      v44 = v45;
    }

    else
    {
      v51 = v45;
      v70 = v65;
      v69 = 1;
      sub_1B1F1B2B0();
      v52 = v60;
      LOBYTE(v70) = 2;
      v53 = v66;
      sub_1B1F1B280();
      (*(v52 + 8))(v53, v46);
      OUTLINED_FUNCTION_9_6();
      v43 = v36;
      v44 = v51;
    }

    return v42(v43, v44);
  }

  if (v38 >> 6 == 1)
  {
    LOBYTE(v70) = 3;
    sub_1B1E30BBC();
    v40 = v61;
    OUTLINED_FUNCTION_12_4();
    v41 = v63;
    sub_1B1F1B250();
    (*(v62 + 8))(v40, v41);
    OUTLINED_FUNCTION_9_6();
    v43 = v36;
    v44 = v30;
    return v42(v43, v44);
  }

  if (v65 | v37 || v38 != 128)
  {
    LOBYTE(v70) = 2;
    sub_1B1E30C10();
    v48 = v57;
    OUTLINED_FUNCTION_12_4();
    (*(v58 + 8))(v48, v59);
  }

  else
  {
    LOBYTE(v70) = 0;
    sub_1B1E30CB8();
    OUTLINED_FUNCTION_12_4();
    (*(v55 + 8))(v29, v56);
  }

  OUTLINED_FUNCTION_9_6();
  return v49(v36, v30);
}

unint64_t sub_1B1E30B68()
{
  result = qword_1EB7848F0;
  if (!qword_1EB7848F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7848F0);
  }

  return result;
}

unint64_t sub_1B1E30BBC()
{
  result = qword_1EB7848F8;
  if (!qword_1EB7848F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7848F8);
  }

  return result;
}

unint64_t sub_1B1E30C10()
{
  result = qword_1EB784900;
  if (!qword_1EB784900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784900);
  }

  return result;
}

unint64_t sub_1B1E30C64()
{
  result = qword_1EB784908;
  if (!qword_1EB784908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784908);
  }

  return result;
}

unint64_t sub_1B1E30CB8()
{
  result = qword_1EB784918;
  if (!qword_1EB784918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784918);
  }

  return result;
}

void VoiceShortcutClientRequest.Spotlight.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784920, &qword_1B1F2D330);
  v92 = OUTLINED_FUNCTION_0(v3);
  v93 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v95 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784928, &qword_1B1F2D338);
  v10 = OUTLINED_FUNCTION_0(v9);
  v90 = v11;
  v91 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  v98 = v15;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784930, &qword_1B1F2D340);
  OUTLINED_FUNCTION_0(v97);
  v94 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v85 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784938, &qword_1B1F2D348);
  OUTLINED_FUNCTION_0(v22);
  v89 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v85 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784940, &unk_1B1F2D350);
  OUTLINED_FUNCTION_0(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v85 - v35;
  v37 = a1[3];
  v38 = a1[4];
  v99 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v37);
  sub_1B1E30B68();
  v39 = v100;
  sub_1B1F1B810();
  if (v39)
  {
    goto LABEL_9;
  }

  v86 = v22;
  v87 = v28;
  v41 = v97;
  v40 = v98;
  v88 = v21;
  v100 = v31;
  v42 = v36;
  v43 = sub_1B1F1B210();
  sub_1B1E322BC(v43, 0);
  if (v46 == v47 >> 1)
  {
LABEL_8:
    v60 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_18();
    swift_allocError();
    v62 = v61;
    v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
    *v62 = &type metadata for VoiceShortcutClientRequest.Spotlight;
    sub_1B1F1B190();
    sub_1B1F1AFD0();
    (*(*(v60 - 8) + 104))(v62, *MEMORY[0x1E69E6AF8], v60);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_9_6();
    v64(v42, v29);
LABEL_9:
    v65 = v99;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v65);
    return;
  }

  v85 = 0;
  if (v46 < (v47 >> 1))
  {
    v48 = *(v45 + v46);
    sub_1B1E32B64(v46 + 1, v47 >> 1, v44, v45, v46, v47);
    v50 = v49;
    v52 = v51;
    swift_unknownObjectRelease();
    if (v50 == v52 >> 1)
    {
      v53 = v96;
      switch(v48)
      {
        case 1:
          LOBYTE(v103) = 1;
          sub_1B1E30C64();
          OUTLINED_FUNCTION_4_7();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785850, &qword_1B1F31450);
          LOBYTE(v102) = 0;
          sub_1B1E322F4(&qword_1EB783240);
          OUTLINED_FUNCTION_20_2();
          v57 = v103;
          v101 = 1;
          OUTLINED_FUNCTION_20_2();
          v76 = v41;
          v58 = v102;
          v101 = 2;
          v77 = v76;
          v78 = sub_1B1F1B1D0();
          v79 = v100;
          LODWORD(v98) = v78;
          swift_unknownObjectRelease();
          v80 = OUTLINED_FUNCTION_15_5();
          v81(v80, v77);
          v82 = *(v79 + 8);
          v83 = OUTLINED_FUNCTION_11_3();
          v84(v83);
          v59 = v98 & 1;
          v65 = v99;
          v53 = v96;
          break;
        case 2:
          LOBYTE(v103) = 2;
          sub_1B1E30C10();
          OUTLINED_FUNCTION_4_7();
          swift_unknownObjectRelease();
          (*(v90 + 8))(v40, v91);
          OUTLINED_FUNCTION_9_6();
          v66 = OUTLINED_FUNCTION_11_3();
          v67(v66);
          v58 = 0;
          v59 = 0x80;
          v57 = 1;
          goto LABEL_12;
        case 3:
          LOBYTE(v103) = 3;
          sub_1B1E30BBC();
          OUTLINED_FUNCTION_4_7();
          v68 = sub_1B1F1B1A0();
          v69 = v100;
          v58 = v70;
          v98 = v68;
          swift_unknownObjectRelease();
          v71 = OUTLINED_FUNCTION_25_1();
          v72(v71);
          v73 = *(v69 + 8);
          v74 = OUTLINED_FUNCTION_11_3();
          v75(v74);
          v59 = 64;
          v57 = v98;
          v65 = v99;
          break;
        default:
          LOBYTE(v103) = 0;
          sub_1B1E30CB8();
          v54 = v87;
          OUTLINED_FUNCTION_4_7();
          swift_unknownObjectRelease();
          (*(v89 + 8))(v54, v86);
          OUTLINED_FUNCTION_9_6();
          v55 = OUTLINED_FUNCTION_11_3();
          v56(v55);
          v57 = 0;
          v58 = 0;
          v59 = 0x80;
LABEL_12:
          v65 = v99;
          break;
      }

      *v53 = v57;
      *(v53 + 8) = v58;
      *(v53 + 16) = v59;
      goto LABEL_10;
    }

    v42 = v36;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t VCVoiceShortcutClient.indexToolsIntoSpotlight(with:removed:force:)()
{
  OUTLINED_FUNCTION_1();
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  *(v1 + 153) = v3;
  *(v1 + 72) = v4;
  v5 = type metadata accessor for VoiceShortcutClientRequest();
  *(v1 + 96) = v5;
  OUTLINED_FUNCTION_8(v5);
  v7 = *(v6 + 64);
  *(v1 + 104) = OUTLINED_FUNCTION_9();
  v8 = sub_1B1F1A640();
  *(v1 + 112) = v8;
  OUTLINED_FUNCTION_6_0(v8);
  *(v1 + 120) = v9;
  v11 = *(v10 + 64);
  *(v1 + 128) = OUTLINED_FUNCTION_9();
  v12 = OUTLINED_FUNCTION_5_8();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1B1E315E0()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 153);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  *(v0 + 152) = 1;
  *v1 = v4;
  v1[1] = v5;
  OUTLINED_FUNCTION_28_1(v1, v3);
  sub_1B1F1A760();
  sub_1B1F1A760();
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 136) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_19_2(v6);

  return sub_1B1E1978C(v8, (v0 + 152), v9);
}

uint64_t sub_1B1E316A8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_8_5();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v8 = v7;
  *(v3 + 144) = v0;

  sub_1B1E04AB4(*(v3 + 104));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t VCVoiceShortcutClient.indexShortcuts()()
{
  OUTLINED_FUNCTION_1();
  v1[9] = v0;
  v2 = type metadata accessor for VoiceShortcutClientRequest();
  v1[10] = v2;
  OUTLINED_FUNCTION_8(v2);
  v4 = *(v3 + 64);
  v1[11] = OUTLINED_FUNCTION_9();
  v5 = sub_1B1F1A640();
  v1[12] = v5;
  OUTLINED_FUNCTION_6_0(v5);
  v1[13] = v6;
  v8 = *(v7 + 64);
  v1[14] = OUTLINED_FUNCTION_9();
  v9 = OUTLINED_FUNCTION_5_8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B1E31878()
{
  OUTLINED_FUNCTION_1();
  *(v0 + 136) = 1;
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  *v1 = xmmword_1B1F2D2F0;
  OUTLINED_FUNCTION_28_1(v1, 128);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 120) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_14_4(v3);

  return sub_1B1E1978C(v5, v6, v7);
}

uint64_t sub_1B1E31920()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_8_5();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  sub_1B1E04AB4(*(v3 + 88));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B1E31A28()
{
  v1 = v0[16];
  v2 = v0[14];
  sub_1B1E18F74();
  sub_1B1F1A630();
  if (v1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
LABEL_5:
    v9 = v0[14];
    v10 = v0[11];

    OUTLINED_FUNCTION_2_0();
    goto LABEL_6;
  }

  v4 = v0[13];
  v3 = v0[14];
  if (v0[4])
  {
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_18();
    v5 = swift_allocError();
    OUTLINED_FUNCTION_22_2(v5, v6);
    OUTLINED_FUNCTION_18();
    v7 = swift_allocError();
    OUTLINED_FUNCTION_21_2(v7, v8);
    (*(v4 + 8))();
    goto LABEL_5;
  }

  v13 = v0[11];
  (*(v4 + 8))(v0[14], v0[12]);

  OUTLINED_FUNCTION_2_0();
LABEL_6:

  return v11();
}

uint64_t sub_1B1E31B88()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];

  OUTLINED_FUNCTION_2_0();

  return v4();
}

uint64_t VCVoiceShortcutClient.indexContextualActions()()
{
  OUTLINED_FUNCTION_1();
  v1[9] = v0;
  v2 = type metadata accessor for VoiceShortcutClientRequest();
  v1[10] = v2;
  OUTLINED_FUNCTION_8(v2);
  v4 = *(v3 + 64);
  v1[11] = OUTLINED_FUNCTION_9();
  v5 = sub_1B1F1A640();
  v1[12] = v5;
  OUTLINED_FUNCTION_6_0(v5);
  v1[13] = v6;
  v8 = *(v7 + 64);
  v1[14] = OUTLINED_FUNCTION_9();
  v9 = OUTLINED_FUNCTION_5_8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B1E31CB8()
{
  OUTLINED_FUNCTION_1();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  *(v0 + 136) = 1;
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_28_1(v1, 128);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 120) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_14_4(v3);

  return sub_1B1E1978C(v5, v6, v7);
}

uint64_t sub_1B1E31D58()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_8_5();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  sub_1B1E04AB4(*(v3 + 88));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t VCVoiceShortcutClient.deleteIndex(indexIdentifier:)()
{
  OUTLINED_FUNCTION_1();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  v4 = type metadata accessor for VoiceShortcutClientRequest();
  v1[12] = v4;
  OUTLINED_FUNCTION_8(v4);
  v6 = *(v5 + 64);
  v1[13] = OUTLINED_FUNCTION_9();
  v7 = sub_1B1F1A640();
  v1[14] = v7;
  OUTLINED_FUNCTION_6_0(v7);
  v1[15] = v8;
  v10 = *(v9 + 64);
  v1[16] = OUTLINED_FUNCTION_9();
  v11 = OUTLINED_FUNCTION_5_8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B1E31F2C()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 152) = 1;
  *v1 = v3;
  v1[1] = v4;
  OUTLINED_FUNCTION_28_1(v1, 64);
  sub_1B1F1A760();
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 136) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_19_2(v5);

  return sub_1B1E1978C(v7, (v0 + 152), v8);
}

uint64_t sub_1B1E31FEC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_8_5();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v8 = v7;
  *(v3 + 144) = v0;

  sub_1B1E04AB4(*(v3 + 104));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B1E320F4()
{
  v1 = v0[18];
  v2 = v0[16];
  sub_1B1E18F74();
  sub_1B1F1A630();
  if (v1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
LABEL_5:
    v9 = v0[16];
    v10 = v0[13];

    OUTLINED_FUNCTION_2_0();
    goto LABEL_6;
  }

  v4 = v0[15];
  v3 = v0[16];
  if (v0[4])
  {
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_18();
    v5 = swift_allocError();
    OUTLINED_FUNCTION_22_2(v5, v6);
    OUTLINED_FUNCTION_18();
    v7 = swift_allocError();
    OUTLINED_FUNCTION_21_2(v7, v8);
    (*(v4 + 8))();
    goto LABEL_5;
  }

  v13 = v0[13];
  (*(v4 + 8))(v0[16], v0[14]);

  OUTLINED_FUNCTION_2_0();
LABEL_6:

  return v11();
}

uint64_t sub_1B1E32254()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[13];

  OUTLINED_FUNCTION_2_0();

  return v4();
}

void sub_1B1E322BC(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_11();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1B1E322F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB785850, &qword_1B1F31450);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19VoiceShortcutClient0abC7RequestO9SpotlightO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1B1E32380(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 17))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1B1E323CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1B1E32430(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    v2 = 0x80;
  }

  *(result + 16) = v2;
  return result;
}

_BYTE *_s9SpotlightO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s9SpotlightO28IndexToolChangesetCodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s9SpotlightO21DeleteIndexCodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B1E326F0()
{
  result = qword_1EB784948;
  if (!qword_1EB784948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784948);
  }

  return result;
}

unint64_t sub_1B1E32748()
{
  result = qword_1EB784950;
  if (!qword_1EB784950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784950);
  }

  return result;
}

unint64_t sub_1B1E327A0()
{
  result = qword_1EB784958;
  if (!qword_1EB784958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784958);
  }

  return result;
}

unint64_t sub_1B1E327F8()
{
  result = qword_1EB784960;
  if (!qword_1EB784960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784960);
  }

  return result;
}

unint64_t sub_1B1E32850()
{
  result = qword_1EB784968;
  if (!qword_1EB784968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784968);
  }

  return result;
}

unint64_t sub_1B1E328A8()
{
  result = qword_1EB784970;
  if (!qword_1EB784970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784970);
  }

  return result;
}

unint64_t sub_1B1E32900()
{
  result = qword_1EB784978;
  if (!qword_1EB784978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784978);
  }

  return result;
}

unint64_t sub_1B1E32958()
{
  result = qword_1EB784980;
  if (!qword_1EB784980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784980);
  }

  return result;
}

unint64_t sub_1B1E329B0()
{
  result = qword_1EB784988;
  if (!qword_1EB784988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784988);
  }

  return result;
}

unint64_t sub_1B1E32A08()
{
  result = qword_1EB784990;
  if (!qword_1EB784990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784990);
  }

  return result;
}

unint64_t sub_1B1E32A60()
{
  result = qword_1EB784998;
  if (!qword_1EB784998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784998);
  }

  return result;
}

unint64_t sub_1B1E32AB8()
{
  result = qword_1EB7849A0;
  if (!qword_1EB7849A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7849A0);
  }

  return result;
}

unint64_t sub_1B1E32B10()
{
  result = qword_1EB7849A8;
  if (!qword_1EB7849A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7849A8);
  }

  return result;
}

uint64_t sub_1B1E32B64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1B1E32C64(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B1F1B510();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B1E32CD8()
{
  sub_1B1F1B7C0();
  sub_1B1E00C48();
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E32D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E32C64(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B1E32D60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B1E32DB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CodableSecureObject.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  type metadata accessor for CodableSecureObject.CodingKeys();
  OUTLINED_FUNCTION_1_12();
  swift_getWitnessTable();
  v4 = sub_1B1F1B220();
  v5 = OUTLINED_FUNCTION_0(v4);
  v23 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1F1B810();
  if (!v2)
  {
    v12 = v26;
    v22 = a1;
    v13 = v23;
    sub_1B1E0EDAC();
    sub_1B1F1B200();
    v15 = v24;
    v14 = v25;
    sub_1B1E33104();
    v16 = sub_1B1F1AD40();
    v19 = v16;
    if (v16)
    {
      sub_1B1E03C48(v15, v14);
      v20 = OUTLINED_FUNCTION_2_8();
      v21(v20);
      *v12 = v19;
      v17 = v22;
      return __swift_destroy_boxed_opaque_existential_1(v17);
    }

    sub_1B1F1AFE0();
    swift_allocError();
    OUTLINED_FUNCTION_0_11();
    swift_getWitnessTable();
    sub_1B1F1AFC0();
    swift_willThrow();
    sub_1B1E03C48(v15, v14);
    (*(v13 + 8))(v10);
    a1 = v22;
  }

  v17 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_1B1E33104()
{
  result = qword_1EB7849B8[0];
  if (!qword_1EB7849B8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB7849B8);
  }

  return result;
}

uint64_t CodableSecureObject.encode(to:)(void *a1, uint64_t a2)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  type metadata accessor for CodableSecureObject.CodingKeys();
  OUTLINED_FUNCTION_1_12();
  swift_getWitnessTable();
  v25 = sub_1B1F1B2C0();
  v5 = OUTLINED_FUNCTION_0(v25);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v24 - v10;
  v12 = *v2;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1F1B830();
  v14 = objc_opt_self();
  v26[0] = 0;
  v15 = [v14 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v26];
  v16 = v26[0];
  if (v15)
  {
    v17 = sub_1B1F1A290();
    v19 = v18;

    v26[0] = v17;
    v26[1] = v19;
    sub_1B1E0EF20();
    v20 = v25;
    sub_1B1F1B2B0();
    (*(v7 + 8))(v11, v20);
    result = sub_1B1E03C48(v17, v19);
  }

  else
  {
    v22 = v16;
    sub_1B1F1A1C0();

    swift_willThrow();
    result = (*(v7 + 8))(v11, v25);
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B1E333A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_1B1E33404(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B1E334F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7254657461657263 && a2 == 0xED00007265676769;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72546574656C6564 && a2 == 0xED00007265676769;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000019 && 0x80000001B1F38E30 == a2;
      if (v7 || (sub_1B1F1B510() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001B1F38E50 == a2;
        if (v8 || (sub_1B1F1B510() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001B1F38E70 == a2;
          if (v9 || (sub_1B1F1B510() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000021 && 0x80000001B1F38E90 == a2;
            if (v10 || (sub_1B1F1B510() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x5468736572666572 && a2 == 0xEE00726567676972;
              if (v11 || (sub_1B1F1B510() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000001B1F38EC0 == a2;
                if (v12 || (sub_1B1F1B510() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000020 && 0x80000001B1F38EE0 == a2;
                  if (v13 || (sub_1B1F1B510() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6769725465726966 && a2 == 0xEB00000000726567;
                    if (v14 || (sub_1B1F1B510() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001FLL && 0x80000001B1F38F10 == a2;
                      if (v15 || (sub_1B1F1B510() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001CLL && 0x80000001B1F38F30 == a2;
                        if (v16 || (sub_1B1F1B510() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000016 && 0x80000001B1F38F50 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1B1F1B510();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_1B1E338E4(char a1)
{
  result = 0x7254657461657263;
  switch(a1)
  {
    case 1:
      result = 0x72546574656C6564;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0x5468736572666572;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000020;
      break;
    case 9:
      result = 0x6769725465726966;
      break;
    case 10:
      result = 0xD00000000000001FLL;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1E33AA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

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

uint64_t sub_1B1E33B68(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B1E33B80(uint64_t a1)
{
  v2 = sub_1B1E3516C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E33BBC(uint64_t a1)
{
  v2 = sub_1B1E3516C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E33BF8(uint64_t a1)
{
  v2 = sub_1B1E35118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E33C34(uint64_t a1)
{
  v2 = sub_1B1E35118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E33C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E334F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E33CA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E338DC();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E33CC8(uint64_t a1)
{
  v2 = sub_1B1E3500C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E33D04(uint64_t a1)
{
  v2 = sub_1B1E3500C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E33D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E33AA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E33D70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E33B60();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E33D98(uint64_t a1)
{
  v2 = sub_1B1E354B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E33DD4(uint64_t a1)
{
  v2 = sub_1B1E354B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E33E10(uint64_t a1)
{
  v2 = sub_1B1E35460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E33E4C(uint64_t a1)
{
  v2 = sub_1B1E35460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E33E88(uint64_t a1)
{
  v2 = sub_1B1E350C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E33EC4(uint64_t a1)
{
  v2 = sub_1B1E350C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E33F00(uint64_t a1)
{
  v2 = sub_1B1E3540C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E33F3C(uint64_t a1)
{
  v2 = sub_1B1E3540C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E33F78(uint64_t a1)
{
  v2 = sub_1B1E353B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E33FB4(uint64_t a1)
{
  v2 = sub_1B1E353B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E33FF0(uint64_t a1)
{
  v2 = sub_1B1E351C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3402C(uint64_t a1)
{
  v2 = sub_1B1E351C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E34068(uint64_t a1)
{
  v2 = sub_1B1E35214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E340A4(uint64_t a1)
{
  v2 = sub_1B1E35214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E340E0(uint64_t a1)
{
  v2 = sub_1B1E352BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3411C(uint64_t a1)
{
  v2 = sub_1B1E352BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E34158(uint64_t a1)
{
  v2 = sub_1B1E35310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E34194(uint64_t a1)
{
  v2 = sub_1B1E35310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E341D0(uint64_t a1)
{
  v2 = sub_1B1E35268();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3420C(uint64_t a1)
{
  v2 = sub_1B1E35268();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E34248(uint64_t a1)
{
  v2 = sub_1B1E35364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E34284(uint64_t a1)
{
  v2 = sub_1B1E35364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VoiceShortcutClientRequest.Automations.encode(to:)(void *a1)
{
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784AD0, &qword_1B1F2DB60);
  OUTLINED_FUNCTION_0(v161);
  v142[8] = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v160 = v6;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784AD8, &qword_1B1F2DB68);
  OUTLINED_FUNCTION_0(v159);
  v142[7] = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v158 = v11;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784AE0, &qword_1B1F2DB70);
  OUTLINED_FUNCTION_0(v157);
  v142[6] = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v156 = v16;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784AE8, &qword_1B1F2DB78);
  OUTLINED_FUNCTION_0(v155);
  v142[5] = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17();
  v154 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784AF0, &qword_1B1F2DB80);
  v23 = OUTLINED_FUNCTION_0(v22);
  v151 = v24;
  v152 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v28);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784AF8, &qword_1B1F2DB88);
  OUTLINED_FUNCTION_0(v153);
  v142[4] = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_17();
  v150 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784B00, &qword_1B1F2DB90);
  OUTLINED_FUNCTION_0_12(v34, &v177);
  v142[3] = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784B08, &qword_1B1F2DB98);
  OUTLINED_FUNCTION_0_12(v40, &v176);
  v147 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784B10, &qword_1B1F2DBA0);
  OUTLINED_FUNCTION_0_12(v46, &v172);
  v145 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784B18, &qword_1B1F2DBA8);
  OUTLINED_FUNCTION_0_12(v52, &v173);
  v142[2] = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784B20, &qword_1B1F2DBB0);
  OUTLINED_FUNCTION_0_12(v58, &v166);
  v142[9] = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v62);
  v64 = v142 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784B28, &qword_1B1F2DBB8);
  OUTLINED_FUNCTION_0_12(v65, v168);
  v142[0] = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v69);
  v71 = v142 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784B30, &qword_1B1F2DBC0);
  OUTLINED_FUNCTION_0_12(v72, v169);
  v142[1] = v73;
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v77);
  v78 = type metadata accessor for TriggerType(0);
  v79 = OUTLINED_FUNCTION_10(v78);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_18_4(v142 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = type metadata accessor for VoiceShortcutClientRequest.Automations();
  v84 = OUTLINED_FUNCTION_10(v83);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v88 = (v142 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784B38, &qword_1B1F2DBC8);
  OUTLINED_FUNCTION_0(v165);
  v162 = v89;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v92);
  v94 = v142 - v93;
  v95 = a1[3];
  v96 = __swift_project_boxed_opaque_existential_0(a1, v95);
  sub_1B1E3500C();
  v164 = v94;
  sub_1B1F1B830();
  sub_1B1E35060(v163, v88);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v124 = *v88;
      v123 = v88[1];
      LOBYTE(v167) = 1;
      sub_1B1E35460();
      v125 = v164;
      v95 = v165;
      sub_1B1F1B240();
      OUTLINED_FUNCTION_20_3();
      sub_1B1F1B270();
      OUTLINED_FUNCTION_21_3();
      v126 = OUTLINED_FUNCTION_4_8(&v156);
      v127(v126);
      OUTLINED_FUNCTION_23_2();
      v107 = v125;
      goto LABEL_19;
    case 2u:
      v118 = *v88;
      v117 = v88[1];
      LOBYTE(v167) = 3;
      sub_1B1E353B8();
      v114 = v144;
      OUTLINED_FUNCTION_8_6();
      OUTLINED_FUNCTION_20_3();
      v115 = v146;
      OUTLINED_FUNCTION_10_3();
      sub_1B1F1B270();
      OUTLINED_FUNCTION_21_3();
      v116 = &v158;
      goto LABEL_18;
    case 3u:
      v120 = *v88;
      v119 = v88[1];
      LOBYTE(v167) = 6;
      sub_1B1E352BC();
      v114 = v148;
      OUTLINED_FUNCTION_8_6();
      OUTLINED_FUNCTION_20_3();
      v115 = v149;
      OUTLINED_FUNCTION_10_3();
      sub_1B1F1B250();
      OUTLINED_FUNCTION_21_3();
      v116 = &v159;
      goto LABEL_18;
    case 4u:
      v113 = *v88;
      v112 = v88[1];
      LOBYTE(v167) = 7;
      sub_1B1E35268();
      v114 = v150;
      OUTLINED_FUNCTION_8_6();
      OUTLINED_FUNCTION_20_3();
      v115 = v153;
      OUTLINED_FUNCTION_10_3();
      sub_1B1F1B270();
      OUTLINED_FUNCTION_21_3();
      v116 = &v160;
      goto LABEL_18;
    case 5u:
      v129 = *v88;
      v128 = v88[1];
      LOBYTE(v167) = 9;
      sub_1B1E351C0();
      v114 = v154;
      OUTLINED_FUNCTION_8_6();
      OUTLINED_FUNCTION_20_3();
      v115 = v155;
      OUTLINED_FUNCTION_10_3();
      sub_1B1F1B270();
      OUTLINED_FUNCTION_21_3();
      v116 = &v161;
      goto LABEL_18;
    case 6u:
      v131 = *v88;
      v130 = v88[1];
      LOBYTE(v167) = 10;
      sub_1B1E3516C();
      v114 = v156;
      OUTLINED_FUNCTION_8_6();
      OUTLINED_FUNCTION_20_3();
      v115 = v157;
      OUTLINED_FUNCTION_10_3();
      sub_1B1F1B270();
      OUTLINED_FUNCTION_21_3();
      v116 = &v162;
      goto LABEL_18;
    case 7u:
      v122 = *v88;
      v121 = v88[1];
      LOBYTE(v167) = 11;
      sub_1B1E35118();
      v114 = v158;
      OUTLINED_FUNCTION_8_6();
      OUTLINED_FUNCTION_20_3();
      v115 = v159;
      OUTLINED_FUNCTION_10_3();
      sub_1B1F1B270();
      OUTLINED_FUNCTION_21_3();
      v116 = &v163;
      goto LABEL_18;
    case 8u:
      v135 = *v88;
      v134 = v88[1];
      LOBYTE(v167) = 12;
      sub_1B1E350C4();
      v114 = v160;
      OUTLINED_FUNCTION_8_6();
      OUTLINED_FUNCTION_20_3();
      v115 = v161;
      OUTLINED_FUNCTION_10_3();
      sub_1B1F1B270();
      OUTLINED_FUNCTION_21_3();
      v116 = &v164;
LABEL_18:
      OUTLINED_FUNCTION_13_2(v116);
      v136(v114, v115);
      OUTLINED_FUNCTION_23_2();
      v107 = v71;
LABEL_19:
      v108 = v95;
      goto LABEL_20;
    case 9u:
      LOBYTE(v167) = 2;
      sub_1B1E3540C();
      v96 = v164;
      v88 = v165;
      sub_1B1F1B240();
      OUTLINED_FUNCTION_13_2(&v165);
      v110 = v64;
      v111 = &v166;
      goto LABEL_15;
    case 0xAu:
      LOBYTE(v167) = 4;
      sub_1B1E35364();
      OUTLINED_FUNCTION_16_4(v170);
      OUTLINED_FUNCTION_13_2(v171);
      v110 = v94;
      v111 = &v172;
      goto LABEL_15;
    case 0xBu:
      LOBYTE(v167) = 5;
      sub_1B1E35310();
      OUTLINED_FUNCTION_16_4(&v174);
      OUTLINED_FUNCTION_13_2(&v175);
      v110 = v94;
      v111 = &v176;
LABEL_15:
      v109(v110, *(v111 - 32));
      goto LABEL_16;
    case 0xCu:
      LOBYTE(v167) = 8;
      sub_1B1E35214();
      OUTLINED_FUNCTION_16_4(&v178);
      (*(v151 + 8))(v94, v152);
LABEL_16:
      OUTLINED_FUNCTION_23_2();
      result = v132(v96, v88);
      break;
    default:
      v97 = v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7844F8, &qword_1B1F2DBD0) + 48);
      v99 = *v97;
      v98 = *(v97 + 1);
      v161 = *(v97 + 2);
      LODWORD(v163) = v97[24];
      v100 = v143;
      sub_1B1E368C8(v88, v143, type metadata accessor for TriggerType);
      LOBYTE(v167) = 0;
      sub_1B1E354B4();
      v102 = v164;
      v101 = v165;
      sub_1B1F1B240();
      LOBYTE(v167) = 0;
      sub_1B1E36928(&qword_1EB784BB0);
      v103 = v166;
      sub_1B1F1B2B0();
      if (v103)
      {
        sub_1B1E35508(v99, v98, v161, v163);
        v104 = OUTLINED_FUNCTION_4_8(&v157);
        v105(v104);
        sub_1B1E35548(v100);
        OUTLINED_FUNCTION_23_2();
        v107 = v102;
        v108 = v101;
LABEL_20:
        result = v106(v107, v108);
      }

      else
      {
        v159 = v99;
        v160 = v98;
        v167 = v99;
        v168[0] = v98;
        v137 = v161;
        v168[1] = v161;
        v138 = v163;
        v169[0] = v163;
        v171[7] = 1;
        sub_1B1E355A4();
        sub_1B1F1B2B0();
        v139 = OUTLINED_FUNCTION_4_8(&v157);
        v140(v139);
        sub_1B1E35548(v100);
        OUTLINED_FUNCTION_23_2();
        v141(v102, v101);
        result = sub_1B1E35508(v159, v160, v137, v138);
      }

      break;
  }

  return result;
}

uint64_t type metadata accessor for VoiceShortcutClientRequest.Automations()
{
  result = qword_1EB784C40;
  if (!qword_1EB784C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B1E3500C()
{
  result = qword_1EB784B40;
  if (!qword_1EB784B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B40);
  }

  return result;
}

uint64_t sub_1B1E35060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceShortcutClientRequest.Automations();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1E350C4()
{
  result = qword_1EB784B48;
  if (!qword_1EB784B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B48);
  }

  return result;
}

unint64_t sub_1B1E35118()
{
  result = qword_1EB784B50;
  if (!qword_1EB784B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B50);
  }

  return result;
}

unint64_t sub_1B1E3516C()
{
  result = qword_1EB784B58;
  if (!qword_1EB784B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B58);
  }

  return result;
}

unint64_t sub_1B1E351C0()
{
  result = qword_1EB784B60;
  if (!qword_1EB784B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B60);
  }

  return result;
}

unint64_t sub_1B1E35214()
{
  result = qword_1EB784B68;
  if (!qword_1EB784B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B68);
  }

  return result;
}

unint64_t sub_1B1E35268()
{
  result = qword_1EB784B70;
  if (!qword_1EB784B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B70);
  }

  return result;
}

unint64_t sub_1B1E352BC()
{
  result = qword_1EB784B78;
  if (!qword_1EB784B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B78);
  }

  return result;
}

unint64_t sub_1B1E35310()
{
  result = qword_1EB784B80;
  if (!qword_1EB784B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B80);
  }

  return result;
}

unint64_t sub_1B1E35364()
{
  result = qword_1EB784B88;
  if (!qword_1EB784B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B88);
  }

  return result;
}

unint64_t sub_1B1E353B8()
{
  result = qword_1EB784B90;
  if (!qword_1EB784B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B90);
  }

  return result;
}

unint64_t sub_1B1E3540C()
{
  result = qword_1EB784B98;
  if (!qword_1EB784B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B98);
  }

  return result;
}

unint64_t sub_1B1E35460()
{
  result = qword_1EB784BA0;
  if (!qword_1EB784BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784BA0);
  }

  return result;
}

unint64_t sub_1B1E354B4()
{
  result = qword_1EB784BA8;
  if (!qword_1EB784BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784BA8);
  }

  return result;
}

uint64_t sub_1B1E35508(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {

    v4 = vars8;
  }
}

uint64_t sub_1B1E35548(uint64_t a1)
{
  v2 = type metadata accessor for TriggerType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B1E355A4()
{
  result = qword_1EB784BB8;
  if (!qword_1EB784BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784BB8);
  }

  return result;
}

uint64_t VoiceShortcutClientRequest.Automations.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v231 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784BC0, &qword_1B1F2DBD8);
  OUTLINED_FUNCTION_0_12(v3, &v251);
  v233 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v230 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784BC8, &qword_1B1F2DBE0);
  OUTLINED_FUNCTION_0_12(v9, &v250);
  v219 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v229 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784BD0, &qword_1B1F2DBE8);
  OUTLINED_FUNCTION_0_12(v15, &v248);
  v218 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  v228 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784BD8, &qword_1B1F2DBF0);
  OUTLINED_FUNCTION_0_12(v21, &v246);
  v217 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_17();
  v227 = v26;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784BE0, &qword_1B1F2DBF8);
  OUTLINED_FUNCTION_0(v232);
  v215 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_17();
  v226 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784BE8, &qword_1B1F2DC00);
  OUTLINED_FUNCTION_0_12(v32, &v244);
  v216 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_17();
  v225 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784BF0, &qword_1B1F2DC08);
  OUTLINED_FUNCTION_0_12(v38, &v241);
  v214 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_17();
  v224 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784BF8, &qword_1B1F2DC10);
  OUTLINED_FUNCTION_0_12(v44, &v239);
  v212 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_17();
  v239 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784C00, &qword_1B1F2DC18);
  OUTLINED_FUNCTION_0_12(v50, &v236);
  v209 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_17();
  v223 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784C08, &qword_1B1F2DC20);
  OUTLINED_FUNCTION_0_12(v56, &v237);
  v210 = v57;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_17();
  v222[1] = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784C10, &qword_1B1F2DC28);
  OUTLINED_FUNCTION_0_12(v62, &v230);
  v205 = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784C18, &qword_1B1F2DC30);
  OUTLINED_FUNCTION_0_12(v68, &v231);
  v206 = v69;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784C20, &qword_1B1F2DC38);
  OUTLINED_FUNCTION_0_12(v74, &v233);
  v208 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_17();
  v236 = v79;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784C28, &unk_1B1F2DC40);
  OUTLINED_FUNCTION_0(v238);
  v235 = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v197 - v84;
  v234 = type metadata accessor for VoiceShortcutClientRequest.Automations();
  v86 = OUTLINED_FUNCTION_10(v234);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_14_5();
  v94 = MEMORY[0x1EEE9AC00](v93);
  v96 = &v197 - v95;
  v97 = MEMORY[0x1EEE9AC00](v94);
  v99 = &v197 - v98;
  v100 = MEMORY[0x1EEE9AC00](v97);
  v102 = &v197 - v101;
  v103 = MEMORY[0x1EEE9AC00](v100);
  v105 = &v197 - v104;
  MEMORY[0x1EEE9AC00](v103);
  v107 = &v197 - v106;
  v109 = a1[3];
  v108 = a1[4];
  v240 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v109);
  sub_1B1E3500C();
  v237 = v85;
  v110 = v241;
  sub_1B1F1B810();
  if (v110)
  {
    goto LABEL_8;
  }

  v200 = v102;
  v201 = v99;
  v202 = v96;
  v203 = v105;
  v111 = v237;
  v113 = v238;
  v112 = v239;
  v241 = v107;
  v114 = sub_1B1F1B210();
  result = sub_1B1E32BFC(v114, 0);
  if (v117 == v118 >> 1)
  {
LABEL_7:
    v126 = v234;
    v127 = sub_1B1F1AFE0();
    swift_allocError();
    v129 = v128;
    v130 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
    *v129 = v126;
    sub_1B1F1B190();
    sub_1B1F1AFD0();
    (*(*(v127 - 8) + 104))(v129, *MEMORY[0x1E69E6AF8], v127);
    swift_willThrow();
    swift_unknownObjectRelease();
    v131 = OUTLINED_FUNCTION_2_9();
    v132(v131);
LABEL_8:
    v133 = v240;
    return __swift_destroy_boxed_opaque_existential_1(v133);
  }

  v199 = 0;
  if (v117 < (v118 >> 1))
  {
    v198 = *(v116 + v117);
    sub_1B1E32BF8(v117 + 1);
    v120 = v119;
    v122 = v121;
    swift_unknownObjectRelease();
    v123 = v232;
    v124 = v233;
    if (v120 == v122 >> 1)
    {
      switch(v198)
      {
        case 1:
          v242[4] = 1;
          sub_1B1E35460();
          OUTLINED_FUNCTION_7_6();
          OUTLINED_FUNCTION_6_7(&v231);
          sub_1B1F1B1C0();
          OUTLINED_FUNCTION_15_6();
          v176 = OUTLINED_FUNCTION_4_8(&v229);
          v177(v176);
          v178 = OUTLINED_FUNCTION_2_9();
          v179(v178);
          OUTLINED_FUNCTION_5_9(&v220);
          goto LABEL_23;
        case 2:
          v242[5] = 2;
          sub_1B1E3540C();
          v141 = v222[0];
          OUTLINED_FUNCTION_9_7();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_13_2(&v228);
          v142(v141, v207);
          v143 = OUTLINED_FUNCTION_2_9();
          v144(v143);
          OUTLINED_FUNCTION_19_3();
          goto LABEL_22;
        case 3:
          v242[6] = 3;
          sub_1B1E353B8();
          OUTLINED_FUNCTION_7_6();
          OUTLINED_FUNCTION_6_7(&v237);
          sub_1B1F1B1C0();
          OUTLINED_FUNCTION_15_6();
          v166 = OUTLINED_FUNCTION_4_8(&v235);
          v167(v166);
          v168 = OUTLINED_FUNCTION_2_9();
          v169(v168);
          OUTLINED_FUNCTION_5_9(v221);
          goto LABEL_23;
        case 4:
          v242[7] = 4;
          sub_1B1E35364();
          v136 = v223;
          OUTLINED_FUNCTION_9_7();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_13_2(&v234);
          v137(v136, v211);
          v138 = OUTLINED_FUNCTION_2_9();
          v139(v138);
          OUTLINED_FUNCTION_19_3();
          goto LABEL_22;
        case 5:
          v245[0] = 5;
          sub_1B1E35310();
          OUTLINED_FUNCTION_9_7();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_13_2(&v238);
          v145(v112, v213);
          v146 = OUTLINED_FUNCTION_2_9();
          v147(v146);
          OUTLINED_FUNCTION_19_3();
          goto LABEL_22;
        case 6:
          v245[1] = 6;
          sub_1B1E352BC();
          OUTLINED_FUNCTION_7_6();
          OUTLINED_FUNCTION_6_7(&v241);
          sub_1B1F1B1A0();
          OUTLINED_FUNCTION_15_6();
          v180 = OUTLINED_FUNCTION_4_8(&v240);
          v181(v180);
          v182 = OUTLINED_FUNCTION_2_9();
          v183(v182);
          OUTLINED_FUNCTION_5_9(v222);
          goto LABEL_23;
        case 7:
          v245[2] = 7;
          sub_1B1E35268();
          OUTLINED_FUNCTION_7_6();
          OUTLINED_FUNCTION_6_7(&v244);
          sub_1B1F1B1C0();
          OUTLINED_FUNCTION_15_6();
          v170 = OUTLINED_FUNCTION_4_8(v243);
          v171(v170);
          v172 = OUTLINED_FUNCTION_2_9();
          v173(v172);
          OUTLINED_FUNCTION_5_9(&v223);
          goto LABEL_23;
        case 8:
          v245[3] = 8;
          sub_1B1E35214();
          v148 = v226;
          OUTLINED_FUNCTION_7_6();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_13_2(v242);
          v149(v148, v123);
          v150 = OUTLINED_FUNCTION_2_9();
          v151(v150);
          OUTLINED_FUNCTION_19_3();
LABEL_22:
          swift_storeEnumTagMultiPayload();
          goto LABEL_25;
        case 9:
          v245[4] = 9;
          sub_1B1E351C0();
          OUTLINED_FUNCTION_7_6();
          OUTLINED_FUNCTION_6_7(&v246);
          sub_1B1F1B1C0();
          OUTLINED_FUNCTION_15_6();
          v162 = OUTLINED_FUNCTION_4_8(v245);
          v163(v162);
          v164 = OUTLINED_FUNCTION_2_9();
          v165(v164);
          OUTLINED_FUNCTION_5_9(&v224);
          goto LABEL_23;
        case 10:
          v245[5] = 10;
          sub_1B1E3516C();
          OUTLINED_FUNCTION_7_6();
          OUTLINED_FUNCTION_6_7(&v248);
          sub_1B1F1B1C0();
          OUTLINED_FUNCTION_15_6();
          v184 = OUTLINED_FUNCTION_4_8(&v247);
          v185(v184);
          v186 = OUTLINED_FUNCTION_2_9();
          v187(v186);
          OUTLINED_FUNCTION_5_9(&v225);
          goto LABEL_23;
        case 11:
          v245[6] = 11;
          sub_1B1E35118();
          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_24_0();
          v134 = sub_1B1F1B1C0();
          v135 = v235;
          v152 = v134;
          v154 = v153;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_13_2(&v249);
          v155 = OUTLINED_FUNCTION_22_3();
          v156(v155);
          (*(v135 + 8))(v111, v113);
          v157 = v204;
          *v204 = v152;
          v157[1] = v154;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_3_8();
          v159 = v157;
          goto LABEL_24;
        case 12:
          v245[7] = 12;
          sub_1B1E350C4();
          v140 = v230;
          OUTLINED_FUNCTION_9_7();
          v112 = v220;
          OUTLINED_FUNCTION_24_0();
          sub_1B1F1B1C0();
          OUTLINED_FUNCTION_15_6();
          (*(v124 + 8))(v140, v112);
          v160 = OUTLINED_FUNCTION_2_9();
          v161(v160);
          OUTLINED_FUNCTION_5_9(&v227);
LABEL_23:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_3_8();
          v159 = v112;
LABEL_24:
          v122 = v241;
          sub_1B1E368C8(v159, v241, v158);
LABEL_25:
          v196 = v240;
          v125 = v231;
          break;
        default:
          v242[3] = 0;
          sub_1B1E354B4();
          OUTLINED_FUNCTION_9_7();
          type metadata accessor for TriggerType(0);
          v242[2] = 0;
          sub_1B1E36928(&qword_1EB784C30);
          OUTLINED_FUNCTION_24_0();
          sub_1B1F1B200();
          v125 = v231;
          v174 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7844F8, &qword_1B1F2DBD0) + 48);
          v242[1] = 1;
          sub_1B1E3696C();
          OUTLINED_FUNCTION_24_0();
          sub_1B1F1B200();
          v175 = v208;
          swift_unknownObjectRelease();
          v189 = *(v175 + 8);
          v190 = OUTLINED_FUNCTION_22_3();
          v191(v190);
          v192 = OUTLINED_FUNCTION_2_9();
          v193(v192);
          v194 = v203;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_3_8();
          v122 = v241;
          sub_1B1E368C8(v194, v241, v195);
          v196 = v240;
          break;
      }

      OUTLINED_FUNCTION_3_8();
      sub_1B1E368C8(v122, v125, v188);
      v133 = v196;
      return __swift_destroy_boxed_opaque_existential_1(v133);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1E368C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_10(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1B1E36928(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TriggerType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B1E3696C()
{
  result = qword_1EB784C38;
  if (!qword_1EB784C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C38);
  }

  return result;
}

void sub_1B1E369C8()
{
  sub_1B1E36A50();
  if (v0 <= 0x3F)
  {
    sub_1B1E36AB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B1E36A50()
{
  if (!qword_1EB784C50)
  {
    type metadata accessor for TriggerType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB784C50);
    }
  }
}

void sub_1B1E36AB8()
{
  if (!qword_1EB783280)
  {
    v0 = sub_1B1F1AEB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB783280);
    }
  }
}

uint64_t _s11AutomationsO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11AutomationsO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s11AutomationsO23CreateTriggerCodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B1E36DF8(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B1E36EA8()
{
  result = qword_1EB784C58;
  if (!qword_1EB784C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C58);
  }

  return result;
}

unint64_t sub_1B1E36F00()
{
  result = qword_1EB784C60;
  if (!qword_1EB784C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C60);
  }

  return result;
}

unint64_t sub_1B1E36F58()
{
  result = qword_1EB784C68;
  if (!qword_1EB784C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C68);
  }

  return result;
}

unint64_t sub_1B1E36FB0()
{
  result = qword_1EB784C70;
  if (!qword_1EB784C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C70);
  }

  return result;
}

unint64_t sub_1B1E37008()
{
  result = qword_1EB784C78;
  if (!qword_1EB784C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C78);
  }

  return result;
}

unint64_t sub_1B1E37060()
{
  result = qword_1EB784C80;
  if (!qword_1EB784C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C80);
  }

  return result;
}

unint64_t sub_1B1E370B8()
{
  result = qword_1EB784C88;
  if (!qword_1EB784C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C88);
  }

  return result;
}

unint64_t sub_1B1E37110()
{
  result = qword_1EB784C90;
  if (!qword_1EB784C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C90);
  }

  return result;
}

unint64_t sub_1B1E37168()
{
  result = qword_1EB784C98;
  if (!qword_1EB784C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C98);
  }

  return result;
}

unint64_t sub_1B1E371C0()
{
  result = qword_1EB784CA0;
  if (!qword_1EB784CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CA0);
  }

  return result;
}

unint64_t sub_1B1E37218()
{
  result = qword_1EB784CA8;
  if (!qword_1EB784CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CA8);
  }

  return result;
}

unint64_t sub_1B1E37270()
{
  result = qword_1EB784CB0;
  if (!qword_1EB784CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CB0);
  }

  return result;
}

unint64_t sub_1B1E372C8()
{
  result = qword_1EB784CB8;
  if (!qword_1EB784CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CB8);
  }

  return result;
}

unint64_t sub_1B1E37320()
{
  result = qword_1EB784CC0;
  if (!qword_1EB784CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CC0);
  }

  return result;
}

unint64_t sub_1B1E37378()
{
  result = qword_1EB784CC8;
  if (!qword_1EB784CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CC8);
  }

  return result;
}

unint64_t sub_1B1E373D0()
{
  result = qword_1EB784CD0;
  if (!qword_1EB784CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CD0);
  }

  return result;
}

unint64_t sub_1B1E37428()
{
  result = qword_1EB784CD8;
  if (!qword_1EB784CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CD8);
  }

  return result;
}

unint64_t sub_1B1E37480()
{
  result = qword_1EB784CE0;
  if (!qword_1EB784CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CE0);
  }

  return result;
}

unint64_t sub_1B1E374D8()
{
  result = qword_1EB784CE8;
  if (!qword_1EB784CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CE8);
  }

  return result;
}

unint64_t sub_1B1E37530()
{
  result = qword_1EB784CF0;
  if (!qword_1EB784CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CF0);
  }

  return result;
}

unint64_t sub_1B1E37588()
{
  result = qword_1EB784CF8;
  if (!qword_1EB784CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CF8);
  }

  return result;
}

unint64_t sub_1B1E375E0()
{
  result = qword_1EB784D00;
  if (!qword_1EB784D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D00);
  }

  return result;
}

unint64_t sub_1B1E37638()
{
  result = qword_1EB784D08;
  if (!qword_1EB784D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D08);
  }

  return result;
}

unint64_t sub_1B1E37690()
{
  result = qword_1EB784D10;
  if (!qword_1EB784D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D10);
  }

  return result;
}

unint64_t sub_1B1E376E8()
{
  result = qword_1EB784D18;
  if (!qword_1EB784D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D18);
  }

  return result;
}

unint64_t sub_1B1E37740()
{
  result = qword_1EB784D20;
  if (!qword_1EB784D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D20);
  }

  return result;
}

unint64_t sub_1B1E37798()
{
  result = qword_1EB784D28;
  if (!qword_1EB784D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D28);
  }

  return result;
}

unint64_t sub_1B1E377F0()
{
  result = qword_1EB784D30;
  if (!qword_1EB784D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D30);
  }

  return result;
}

unint64_t sub_1B1E37848()
{
  result = qword_1EB784D38;
  if (!qword_1EB784D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D38);
  }

  return result;
}

unint64_t sub_1B1E378A0()
{
  result = qword_1EB784D40;
  if (!qword_1EB784D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D40);
  }

  return result;
}

unint64_t sub_1B1E378F8()
{
  result = qword_1EB784D48;
  if (!qword_1EB784D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D48);
  }

  return result;
}

unint64_t sub_1B1E37950()
{
  result = qword_1EB784D50;
  if (!qword_1EB784D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D50);
  }

  return result;
}

unint64_t sub_1B1E379A8()
{
  result = qword_1EB784D58;
  if (!qword_1EB784D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D58);
  }

  return result;
}

unint64_t sub_1B1E37A00()
{
  result = qword_1EB784D60;
  if (!qword_1EB784D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D60);
  }

  return result;
}

unint64_t sub_1B1E37A58()
{
  result = qword_1EB784D68;
  if (!qword_1EB784D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D68);
  }

  return result;
}

unint64_t sub_1B1E37AB0()
{
  result = qword_1EB784D70;
  if (!qword_1EB784D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D70);
  }

  return result;
}

unint64_t sub_1B1E37B08()
{
  result = qword_1EB784D78;
  if (!qword_1EB784D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D78);
  }

  return result;
}

unint64_t sub_1B1E37B60()
{
  result = qword_1EB784D80;
  if (!qword_1EB784D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D80);
  }

  return result;
}

void *OUTLINED_FUNCTION_5_9@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);
  *v4 = v1;
  v4[1] = v2;
  result = v4;
  v6 = *(v3 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_6()
{
  v3 = *(v0 - 144);
  v2 = *(v0 - 136);

  return sub_1B1F1B240();
}

uint64_t OUTLINED_FUNCTION_9_7()
{

  return sub_1B1F1B180();
}

uint64_t OUTLINED_FUNCTION_15_6()
{

  return swift_unknownObjectRelease();
}

uint64_t LinkSnapshot.State.containerId.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B1F1A760();
  return OUTLINED_FUNCTION_6_8();
}

uint64_t LinkSnapshot.State.installIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_6_8();
  sub_1B1E0E714(v3, v4);
  return OUTLINED_FUNCTION_6_8();
}

uint64_t LinkSnapshot.State.init(containerId:installIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void LinkSnapshot.State.init(bundleMetadata:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 bundleIdentifier];
  v5 = sub_1B1F1A890();
  v7 = v6;

  v8 = [a1 installIdentifier];
  v9 = sub_1B1F1A290();
  v11 = v10;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
}

uint64_t static LinkSnapshot.State.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_1B1F1B510() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_8();

    JUMPOUT(0x1B273CB00);
  }

  return 0;
}

uint64_t sub_1B1E37DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6961746E6F63 && a2 == 0xEB00000000644972;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B1F38F70 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

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

uint64_t sub_1B1E37EB0(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x656E6961746E6F63;
  }
}

uint64_t sub_1B1E37EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E37DDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E37F24(uint64_t a1)
{
  v2 = sub_1B1E38118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E37F60(uint64_t a1)
{
  v2 = sub_1B1E38118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LinkSnapshot.State.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v20 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784D88, &qword_1B1F2EBC0);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v18 = v0[3];
  v19 = v14;
  v15 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  sub_1B1E38118();
  sub_1B1F1B830();
  LOBYTE(v21) = 0;
  v16 = v20;
  sub_1B1F1B270();
  if (!v16)
  {
    v21 = v19;
    v22 = v18;
    sub_1B1E0E714(v19, v18);
    sub_1B1E0EF20();
    sub_1B1F1B2B0();
    sub_1B1E03C48(v21, v22);
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_35();
}

unint64_t sub_1B1E38118()
{
  result = qword_1EB784D90;
  if (!qword_1EB784D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D90);
  }

  return result;
}

uint64_t LinkSnapshot.State.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B1F1A900();

  return sub_1B1F1A2A0();
}

uint64_t LinkSnapshot.State.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B1F1B7C0();
  sub_1B1F1A900();
  sub_1B1F1A2A0();
  return sub_1B1F1B7F0();
}

void LinkSnapshot.State.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784D98, &qword_1B1F2EBC8);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v10);
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  sub_1B1E38118();
  sub_1B1F1B810();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v18) = 0;
    v12 = sub_1B1F1B1C0();
    v14 = v13;
    sub_1B1E0EDAC();
    sub_1B1F1B200();
    v15 = *(v7 + 8);
    v16 = OUTLINED_FUNCTION_2_10();
    v17(v16);
    *v4 = v12;
    v4[1] = v14;
    v4[2] = v18;
    v4[3] = v19;
    sub_1B1F1A760();
    sub_1B1E0E714(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v2);

    sub_1B1E03C48(v18, v19);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E38450()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B1F1B7C0();
  sub_1B1F1A900();
  sub_1B1F1A2A0();
  return sub_1B1F1B7F0();
}

VoiceShortcutClient::LinkSnapshot __swiftcall LinkSnapshot.init(state:)(Swift::OpaquePointer state)
{
  v2 = v1;
  v5 = MEMORY[0x1E69E7CD0];
  v3 = sub_1B1E38EF8(MEMORY[0x1E69E7CC8], state._rawValue, &v5);

  *v2 = v3;
  return result;
}

void sub_1B1E38530(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v87 = a3;
  v5 = sub_1B1F1A500();
  v88 = *(v5 - 8);
  v89 = v5;
  v6 = *(v88 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v85 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v77 - v9;
  v10 = sub_1B1F1A8C0();
  v84 = *(v10 - 8);
  v11 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B1F1A350();
  v83 = *(v14 - 8);
  v15 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v19 = a2[1];
  v20 = a2[3];
  v90 = a2[2];
  v21 = *a1;
  v22 = *(*a1 + 16);
  sub_1B1F1A760();
  if (!v22 || (v23 = sub_1B1DEBED8(), (v24 & 1) == 0))
  {
    sub_1B1F1A760();
    sub_1B1E0E714(v90, v20);
    v50 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v91 = *a1;
    sub_1B1E0DDC0();

    *a1 = v91;
    return;
  }

  v79 = v20;
  v25 = (*(v21 + 56) + 32 * v23);
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[2];
  v29 = v25[3];
  v81 = v18;
  v82 = v28;
  v30 = v26 == v18 && v27 == v19;
  v78 = v29;
  v80 = v27;
  if (v30 || (sub_1B1F1B510() & 1) != 0)
  {
    sub_1B1F1A760();
    v31 = v82;
    sub_1B1E0E714(v82, v29);
    v32 = MEMORY[0x1B273CB00](v31, v29, v90, v79);
    v33 = v87;
    if (v32)
    {
      if (qword_1ED84F030 != -1)
      {
        v32 = swift_once();
      }

      v34 = qword_1ED84F038;
      v35 = MEMORY[0x1EEE9AC00](v32);
      *(&v77 - 2) = "ToolKit";
      MEMORY[0x1EEE9AC00](v35);
      *(&v77 - 2) = sub_1B1E07904;
      *(&v77 - 1) = v36;

      os_unfair_lock_lock(v34 + 4);
      v37 = v85;
      v38 = v92;
      sub_1B1E07944(v39);
      if (!v38)
      {
        os_unfair_lock_unlock(v34 + 4);

        swift_bridgeObjectRetain_n();
        v40 = v90;
        v41 = v79;
        sub_1B1E0E714(v90, v79);
        v42 = sub_1B1F1A4E0();
        v43 = sub_1B1F1AD20();
        swift_bridgeObjectRelease_n();
        sub_1B1E03C48(v40, v41);
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v91 = v45;
          *v44 = 136315394;
          v46 = sub_1B1DF61DC(v81, v19, &v91);

          *(v44 + 4) = v46;
          *(v44 + 12) = 2080;
          v47 = sub_1B1F1A240();
          v49 = sub_1B1DF61DC(v47, v48, &v91);

          *(v44 + 14) = v49;
          _os_log_impl(&dword_1B1DE3000, v42, v43, "Duplicate data found in state for containerId: %s. installId: %s", v44, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B273F720](v45, -1, -1);
          MEMORY[0x1B273F720](v44, -1, -1);

          sub_1B1E03C48(v82, v78);
          (*(v88 + 8))(v85, v89);
        }

        else
        {

          sub_1B1E03C48(v82, v78);

          (*(v88 + 8))(v37, v89);
        }

        return;
      }

LABEL_25:
      os_unfair_lock_unlock(v34 + 4);
      __break(1u);
      return;
    }
  }

  else
  {
    sub_1B1F1A760();
    sub_1B1E0E714(v82, v29);
    v33 = v87;
  }

  v51 = *v33;
  sub_1B1F1A760();
  v52 = sub_1B1E60184(v81, v19, v51);

  if (!v52)
  {
    sub_1B1F1A340();
    sub_1B1F1A300();
    (*(v83 + 8))(v17, v14);
    sub_1B1F1A8B0();
    sub_1B1F1A8A0();

    (*(v84 + 8))(v13, v10);
    swift_bridgeObjectRetain_n();
    v54 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v91 = *a1;
    v55 = v81;
    sub_1B1E0DDC0();

    *a1 = v91;
    sub_1B1F1A760();
    sub_1B1E640C4(&v91, v55, v19);
  }

  if (qword_1ED84F030 != -1)
  {
    v53 = swift_once();
  }

  v34 = qword_1ED84F038;
  v56 = MEMORY[0x1EEE9AC00](v53);
  *(&v77 - 2) = "ToolKit";
  MEMORY[0x1EEE9AC00](v56);
  *(&v77 - 2) = sub_1B1E07904;
  *(&v77 - 1) = v57;

  os_unfair_lock_lock(v34 + 4);
  v58 = v86;
  v59 = v92;
  sub_1B1E07944(v60);
  v61 = v82;
  v92 = v59;
  if (v59)
  {
    goto LABEL_25;
  }

  os_unfair_lock_unlock(v34 + 4);

  swift_bridgeObjectRetain_n();
  v62 = v90;
  v63 = v79;
  sub_1B1E0E714(v90, v79);
  sub_1B1F1A760();
  v64 = v78;
  sub_1B1E0E714(v61, v78);
  v65 = sub_1B1F1A4E0();
  v66 = sub_1B1F1AD20();

  sub_1B1E03C48(v61, v64);

  sub_1B1E03C48(v62, v63);
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v91 = v68;
    *v67 = 136315650;
    v69 = v65;
    v70 = sub_1B1DF61DC(v81, v19, &v91);

    *(v67 + 4) = v70;
    *(v67 + 12) = 2080;
    v71 = sub_1B1F1A240();
    v73 = sub_1B1DF61DC(v71, v72, &v91);

    *(v67 + 14) = v73;
    *(v67 + 22) = 2080;
    v74 = sub_1B1F1A240();
    v76 = sub_1B1DF61DC(v74, v75, &v91);

    *(v67 + 24) = v76;
    _os_log_impl(&dword_1B1DE3000, v69, v66, "Conflicting data found in state for containerId: %s. installId 1: %s. installId 2: %s ", v67, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B273F720](v68, -1, -1);
    MEMORY[0x1B273F720](v67, -1, -1);

    sub_1B1E03C48(v82, v64);
    (*(v88 + 8))(v86, v89);
  }

  else
  {

    sub_1B1E03C48(v61, v64);

    (*(v88 + 8))(v58, v89);
  }
}

uint64_t sub_1B1E38EF8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v17 = a1;
  v6 = *(a2 + 16);
  v7 = (a2 + 56);
  if (!v6)
  {
    return v17;
  }

  while (1)
  {
    v9 = *(v7 - 1);
    v8 = *v7;
    v10 = *(v7 - 2);
    v14[0] = *(v7 - 3);
    v14[1] = v10;
    v15 = v9;
    v16 = v8;
    sub_1B1F1A760();
    sub_1B1E0E714(v9, v8);
    sub_1B1E38530(&v17, v14, a3);
    v11 = v15;
    v12 = v16;

    sub_1B1E03C48(v11, v12);
    if (v4)
    {
      break;
    }

    v7 += 4;
    if (!--v6)
    {
      return v17;
    }
  }
}

uint64_t sub_1B1E38FD4(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_111:
    v22 = 1;
    goto LABEL_116;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_115;
  }

  v4 = 0;
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_0_13();
  v10 = v9 & v8;
  v160 = (v11 + 63) >> 6;
  while (1)
  {
LABEL_4:
    if (v10)
    {
      OUTLINED_FUNCTION_14_6();
      goto LABEL_11;
    }

    v13 = v4;
    do
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
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
      }

      if (v4 >= v160)
      {
        goto LABEL_111;
      }

      ++v13;
    }

    while (!*(v6 + 8 * v4));
    OUTLINED_FUNCTION_13_3();
LABEL_11:
    v14 = v12 | (v4 << 6);
    v15 = (*(v3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = (*(v3 + 56) + 24 * v14);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = v17 == 0;
    sub_1B1F1A760();
    sub_1B1F1A760();
    v23 = v21;
    if (!v17)
    {
      goto LABEL_116;
    }

    v163 = v23;
    v161 = v17 == 0;
    v24 = sub_1B1DEBED8();
    v26 = v25;

    if ((v26 & 1) == 0 || ((v27 = (*(v2 + 56) + 24 * v24), v28 = v27[2], *v27 == v19) ? (v29 = v20 == v27[1]) : (v29 = 0), !v29 && (v30 = v27[1], (sub_1B1F1B510() & 1) == 0)))
    {
      v141 = v163;
      goto LABEL_114;
    }

    sub_1B1F1A760();
    v162 = v28;
    v31 = sub_1B1F1A290();
    v33 = v32;
    v34 = sub_1B1F1A290();
    v3 = v34;
    v36 = v35;
    v37 = v33 >> 62;
    v38 = v35 >> 62;
    if (!v29)
    {
      break;
    }

    if (v31)
    {
      v39 = 0;
    }

    else
    {
      v39 = v33 == 0xC000000000000000;
    }

    v40 = v39 && v35 >> 62 == 3;
    if (!v40 || (!v34 ? (v41 = v35 == 0xC000000000000000) : (v41 = 0), !v41))
    {
      v42 = 0;
      goto LABEL_39;
    }

    sub_1B1E03C48(0, 0xC000000000000000);
    v43 = 0;
    v44 = 0xC000000000000000;
LABEL_58:
    sub_1B1E03C48(v43, v44);

    OUTLINED_FUNCTION_11_4();
  }

  v42 = 0;
  switch(v37)
  {
    case 0uLL:
      v42 = BYTE6(v33);
      break;
    case 1uLL:
      if (__OFSUB__(HIDWORD(v31), v31))
      {
        goto LABEL_120;
      }

      v42 = HIDWORD(v31) - v31;
      break;
    case 2uLL:
      v46 = *(v31 + 16);
      v45 = *(v31 + 24);
      v47 = __OFSUB__(v45, v46);
      v42 = v45 - v46;
      if (!v47)
      {
        break;
      }

      goto LABEL_121;
    case 3uLL:
      break;
    default:
      goto LABEL_138;
  }

LABEL_39:
  switch(v38)
  {
    case 1uLL:
      LODWORD(v48) = HIDWORD(v34) - v34;
      if (__OFSUB__(HIDWORD(v34), v34))
      {
        goto LABEL_118;
      }

      v48 = v48;
LABEL_48:
      if (v42 == v48)
      {
        if (v42 < 1)
        {
LABEL_57:
          v58 = OUTLINED_FUNCTION_1_13();
          sub_1B1E03C48(v58, v59);
          v43 = OUTLINED_FUNCTION_9_8();
          goto LABEL_58;
        }

        v51 = v34 >> 32;
        switch(v37)
        {
          case 1:
            if (v31 >> 32 < v31)
            {
              goto LABEL_122;
            }

            v75 = OUTLINED_FUNCTION_1_13();
            sub_1B1E0E714(v75, v76);
            v77 = OUTLINED_FUNCTION_1_13();
            sub_1B1E0E714(v77, v78);
            v79 = OUTLINED_FUNCTION_1_13();
            sub_1B1E0E714(v79, v80);
            v67 = sub_1B1F1A0C0();
            if (!v67)
            {
              goto LABEL_75;
            }

            v81 = sub_1B1F1A0E0();
            if (__OFSUB__(v31, v81))
            {
              goto LABEL_125;
            }

            v67 += v31 - v81;
LABEL_75:
            sub_1B1F1A0D0();
            sub_1B1E3B6E4(v67, v3, v36, __s1);
            v82 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v82, v83);
            v84 = OUTLINED_FUNCTION_9_8();
            sub_1B1E03C48(v84, v85);
            v86 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v86, v87);
            v88 = __s1[0];

            v89 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v89, v90);
            v91 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v91, v92);

            v2 = a2;
            OUTLINED_FUNCTION_11_4();
            v22 = v161;
            if ((v88 & 1) == 0)
            {
              goto LABEL_116;
            }

            goto LABEL_4;
          case 2:
            v60 = *(v31 + 16);
            __s2d = *(v31 + 24);
            v61 = OUTLINED_FUNCTION_1_13();
            sub_1B1E0E714(v61, v62);
            v63 = OUTLINED_FUNCTION_1_13();
            sub_1B1E0E714(v63, v64);
            v65 = OUTLINED_FUNCTION_1_13();
            sub_1B1E0E714(v65, v66);
            v67 = sub_1B1F1A0C0();
            if (!v67)
            {
              goto LABEL_62;
            }

            v68 = sub_1B1F1A0E0();
            if (__OFSUB__(v60, v68))
            {
              goto LABEL_124;
            }

            v67 += v60 - v68;
LABEL_62:
            OUTLINED_FUNCTION_5_10();
            if (!v47)
            {
              goto LABEL_75;
            }

            goto LABEL_123;
          case 3:
            memset(__s1, 0, 14);
            if (v38 == 2)
            {
              v93 = *(v34 + 16);
              __s2e = *(v34 + 24);
              v94 = OUTLINED_FUNCTION_1_13();
              sub_1B1E0E714(v94, v95);
              v96 = OUTLINED_FUNCTION_1_13();
              sub_1B1E0E714(v96, v97);
              v98 = sub_1B1F1A0C0();
              if (v98)
              {
                v99 = sub_1B1F1A0E0();
                if (__OFSUB__(v93, v99))
                {
                  goto LABEL_130;
                }

                v98 += v93 - v99;
              }

              OUTLINED_FUNCTION_5_10();
              if (v47)
              {
                goto LABEL_128;
              }

              v100 = sub_1B1F1A0D0();
              if (!v98)
              {
                goto LABEL_135;
              }

              if (v100 >= v93)
              {
                v101 = v93;
              }

              else
              {
                v101 = v100;
              }

              v102 = v98;
            }

            else if (v38 == 1)
            {
              if (v51 < v34)
              {
                goto LABEL_126;
              }

              v69 = OUTLINED_FUNCTION_1_13();
              sub_1B1E0E714(v69, v70);
              v71 = OUTLINED_FUNCTION_1_13();
              sub_1B1E0E714(v71, v72);
              v73 = sub_1B1F1A0C0();
              if (v73)
              {
                __s2b = v73;
                v74 = sub_1B1F1A0E0();
                if (__OFSUB__(v3, v74))
                {
                  goto LABEL_132;
                }

                __s2c = &__s2b[v3 - v74];
              }

              else
              {
                __s2c = 0;
              }

              v121 = sub_1B1F1A0D0();
              v102 = __s2c;
              if (!__s2c)
              {
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
LABEL_137:
                __break(1u);
                v148 = OUTLINED_FUNCTION_1_13();
                sub_1B1E03C48(v148, v149);
                v150 = OUTLINED_FUNCTION_1_13();
                sub_1B1E03C48(v150, v151);

                __break(1u);
LABEL_138:
                JUMPOUT(0);
              }

              if (v121 >= v51 - v3)
              {
                v101 = v51 - v3;
              }

              else
              {
                v101 = v121;
              }
            }

            else
            {
              v164 = v34;
              v165 = v35;
              v166 = BYTE2(v35);
              v167 = BYTE3(v35);
              v168 = BYTE4(v35);
              v169 = BYTE5(v35);
              v109 = OUTLINED_FUNCTION_1_13();
              sub_1B1E0E714(v109, v110);
              v111 = OUTLINED_FUNCTION_1_13();
              sub_1B1E0E714(v111, v112);
              v102 = &v164;
              v101 = BYTE6(v36);
            }

            v122 = memcmp(__s1, v102, v101);
            v123 = OUTLINED_FUNCTION_9_8();
            sub_1B1E03C48(v123, v124);
            v125 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v125, v126);

            v127 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v127, v128);
            v2 = a2;
            v22 = v161;
            v129 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v129, v130);
            OUTLINED_FUNCTION_11_4();
            if (v122)
            {
              goto LABEL_116;
            }

            goto LABEL_4;
          default:
            __s1[0] = v31;
            LOWORD(__s1[1]) = v33;
            BYTE2(__s1[1]) = BYTE2(v33);
            BYTE3(__s1[1]) = BYTE3(v33);
            BYTE4(__s1[1]) = BYTE4(v33);
            BYTE5(__s1[1]) = BYTE5(v33);
            if (v38)
            {
              if (v38 == 1)
              {
                if (v51 < v34)
                {
                  goto LABEL_127;
                }

                v52 = OUTLINED_FUNCTION_1_13();
                sub_1B1E0E714(v52, v53);
                v54 = OUTLINED_FUNCTION_1_13();
                sub_1B1E0E714(v54, v55);
                v56 = sub_1B1F1A0C0();
                if (v56)
                {
                  __s2 = v56;
                  v57 = sub_1B1F1A0E0();
                  if (__OFSUB__(v3, v57))
                  {
                    goto LABEL_133;
                  }

                  __s2a = &__s2[v3 - v57];
                }

                else
                {
                  __s2a = 0;
                }

                v131 = sub_1B1F1A0D0();
                v107 = __s2a;
                if (!__s2a)
                {
                  goto LABEL_137;
                }

                if (v131 >= v51 - v3)
                {
                  v108 = v51 - v3;
                }

                else
                {
                  v108 = v131;
                }
              }

              else
              {
                v113 = *(v34 + 16);
                __s2f = *(v34 + 24);
                v114 = OUTLINED_FUNCTION_1_13();
                sub_1B1E0E714(v114, v115);
                v116 = OUTLINED_FUNCTION_1_13();
                sub_1B1E0E714(v116, v117);
                v118 = sub_1B1F1A0C0();
                if (v118)
                {
                  v119 = sub_1B1F1A0E0();
                  if (__OFSUB__(v113, v119))
                  {
                    goto LABEL_131;
                  }

                  v118 += v113 - v119;
                }

                OUTLINED_FUNCTION_5_10();
                if (v47)
                {
                  goto LABEL_129;
                }

                v120 = sub_1B1F1A0D0();
                if (!v118)
                {
                  goto LABEL_136;
                }

                if (v120 >= v113)
                {
                  v108 = v113;
                }

                else
                {
                  v108 = v120;
                }

                v107 = v118;
              }
            }

            else
            {
              v164 = v34;
              v165 = v35;
              v166 = BYTE2(v35);
              v167 = BYTE3(v35);
              v168 = BYTE4(v35);
              v169 = BYTE5(v35);
              v103 = OUTLINED_FUNCTION_1_13();
              sub_1B1E0E714(v103, v104);
              v105 = OUTLINED_FUNCTION_1_13();
              sub_1B1E0E714(v105, v106);
              v107 = &v164;
              v108 = BYTE6(v36);
            }

            v132 = memcmp(__s1, v107, v108);
            v133 = OUTLINED_FUNCTION_9_8();
            sub_1B1E03C48(v133, v134);
            v135 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v135, v136);

            v137 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v137, v138);
            v139 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v139, v140);
            v2 = a2;
            OUTLINED_FUNCTION_11_4();
            v22 = v161;
            if (v132)
            {
              goto LABEL_116;
            }

            break;
        }

        goto LABEL_4;
      }

LABEL_113:
      v142 = OUTLINED_FUNCTION_1_13();
      sub_1B1E03C48(v142, v143);
      v144 = OUTLINED_FUNCTION_9_8();
      sub_1B1E03C48(v144, v145);

      v141 = v162;
LABEL_114:

LABEL_115:
      v22 = 0;
LABEL_116:
      v146 = *MEMORY[0x1E69E9840];
      return v22;
    case 2uLL:
      v50 = *(v34 + 16);
      v49 = *(v34 + 24);
      v47 = __OFSUB__(v49, v50);
      v48 = v49 - v50;
      if (!v47)
      {
        goto LABEL_48;
      }

      goto LABEL_119;
    case 3uLL:
      if (v42)
      {
        goto LABEL_113;
      }

      goto LABEL_57;
    default:
      v48 = BYTE6(v35);
      goto LABEL_48;
  }
}

uint64_t sub_1B1E398D0(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_99:
    result = 1;
  }

  else
  {
    v2 = a2;
    v3 = a1;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = 0;
      v148 = 0;
      v149 = a2;
      v6 = a1 + 64;
      v5 = *(a1 + 64);
      v7 = *(a1 + 32);
      OUTLINED_FUNCTION_0_13();
      v10 = v9 & v8;
      v150 = (v11 + 63) >> 6;
      v151 = v3;
      while (1)
      {
        if (v10)
        {
          OUTLINED_FUNCTION_14_6();
          v153 = v13;
          goto LABEL_11;
        }

        v14 = v4;
        do
        {
          v4 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
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
          }

          if (v4 >= v150)
          {
            goto LABEL_99;
          }

          ++v14;
        }

        while (!*(v6 + 8 * v4));
        OUTLINED_FUNCTION_13_3();
        v153 = v15;
LABEL_11:
        v16 = v12 | (v4 << 6);
        v17 = (*(v3 + 48) + 16 * v16);
        v18 = *v17;
        v19 = v17[1];
        v20 = (*(v3 + 56) + 32 * v16);
        v21 = *v20;
        v22 = v20[1];
        v24 = v20[2];
        v23 = v20[3];
        sub_1B1F1A760();
        sub_1B1F1A760();
        v25 = OUTLINED_FUNCTION_2_10();
        sub_1B1E0E714(v25, v26);
        result = v19 == 0;
        if (!v19)
        {
          goto LABEL_102;
        }

        v28 = sub_1B1DEBED8();
        v30 = v29;

        if ((v30 & 1) == 0)
        {
          break;
        }

        v31 = (*(v2 + 56) + 32 * v28);
        v3 = v31[2];
        v32 = v31[3];
        v33 = *v31 == v21 && v22 == v31[1];
        if (!v33 && (sub_1B1F1B510() & 1) == 0)
        {
          break;
        }

        v34 = v32 >> 62;
        v35 = v23 >> 62;
        if (v33)
        {
          if (v3)
          {
            v36 = 0;
          }

          else
          {
            v36 = v32 == 0xC000000000000000;
          }

          v40 = 0;
          v37 = v36 && v23 >> 62 == 3;
          if (!v37 || v24 || v23 != 0xC000000000000000)
          {
            goto LABEL_36;
          }

          v38 = 0;
          v39 = 0xC000000000000000;
LABEL_57:
          sub_1B1E03C48(v38, v39);
          v3 = v151;
          v10 = v153;
        }

        else
        {
          v40 = 0;
          switch(v34)
          {
            case 0uLL:
              v40 = BYTE6(v32);
              break;
            case 1uLL:
              if (__OFSUB__(HIDWORD(v3), v3))
              {
                goto LABEL_107;
              }

              v40 = HIDWORD(v3) - v3;
              break;
            case 2uLL:
              v42 = *(v3 + 16);
              v41 = *(v3 + 24);
              v43 = __OFSUB__(v41, v42);
              v40 = v41 - v42;
              if (!v43)
              {
                break;
              }

              goto LABEL_106;
            case 3uLL:
              break;
            default:
              goto LABEL_125;
          }

LABEL_36:
          switch(v35)
          {
            case 1uLL:
              LODWORD(v44) = HIDWORD(v24) - v24;
              if (__OFSUB__(HIDWORD(v24), v24))
              {
                goto LABEL_105;
              }

              v44 = v44;
LABEL_45:
              if (v40 != v44)
              {
                goto LABEL_100;
              }

              if (v40 < 1)
              {
LABEL_56:

                v38 = OUTLINED_FUNCTION_2_10();
                goto LABEL_57;
              }

              v2 = v24 >> 32;
              switch(v34)
              {
                case 1:
                  if (v3 >> 32 < v3)
                  {
                    goto LABEL_108;
                  }

                  v147 = v3;
                  v75 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E0E714(v75, v76);
                  v77 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E0E714(v77, v78);
                  v79 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E0E714(v79, v80);
                  sub_1B1F1A760();
                  v81 = OUTLINED_FUNCTION_4_9();
                  sub_1B1E0E714(v81, v82);
                  v65 = sub_1B1F1A0C0();
                  if (!v65)
                  {
                    goto LABEL_79;
                  }

                  v83 = sub_1B1F1A0E0();
                  if (__OFSUB__(v3, v83))
                  {
                    goto LABEL_111;
                  }

                  v65 += v3 - v83;
LABEL_79:
                  sub_1B1F1A0D0();
                  v2 = v148;
                  sub_1B1E3B6E4(v65, v24, v23, __s1);
                  v89 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E03C48(v89, v90);
                  if (v148)
                  {
                    goto LABEL_124;
                  }

                  v91 = OUTLINED_FUNCTION_4_9();
                  sub_1B1E03C48(v91, v92);

                  v93 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E03C48(v93, v94);
                  v95 = __s1[0];
                  v96 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E03C48(v96, v97);
                  v98 = OUTLINED_FUNCTION_2_10();
                  v100 = sub_1B1E03C48(v98, v99);
                  result = OUTLINED_FUNCTION_15_7(v100, v101, v102, v103, v104, v105, v106, v107, v147, 0, v149, v150, v151, v152, 0);
                  if ((v95 & 1) == 0)
                  {
                    goto LABEL_102;
                  }

                  continue;
                case 2:
                  v56 = *(v3 + 16);
                  v147 = *(v3 + 24);
                  v57 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E0E714(v57, v58);
                  v59 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E0E714(v59, v60);
                  v61 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E0E714(v61, v62);
                  sub_1B1F1A760();
                  v63 = OUTLINED_FUNCTION_4_9();
                  sub_1B1E0E714(v63, v64);
                  v65 = sub_1B1F1A0C0();
                  if (!v65)
                  {
                    goto LABEL_61;
                  }

                  v66 = sub_1B1F1A0E0();
                  if (__OFSUB__(v56, v66))
                  {
                    goto LABEL_110;
                  }

                  v65 += v56 - v66;
LABEL_61:
                  OUTLINED_FUNCTION_5_10();
                  if (!v43)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_109;
                case 3:
                  memset(__s1, 0, 14);
                  if (v35 == 2)
                  {
                    v2 = *(v24 + 16);
                    v146 = *(v24 + 24);
                    v108 = OUTLINED_FUNCTION_2_10();
                    sub_1B1E0E714(v108, v109);
                    v110 = OUTLINED_FUNCTION_2_10();
                    sub_1B1E0E714(v110, v111);
                    sub_1B1F1A760();
                    v112 = OUTLINED_FUNCTION_4_9();
                    sub_1B1E0E714(v112, v113);
                    v53 = sub_1B1F1A0C0();
                    if (v53)
                    {
                      v114 = sub_1B1F1A0E0();
                      if (__OFSUB__(v2, v114))
                      {
                        goto LABEL_116;
                      }

                      v53 += v2 - v114;
                    }

                    OUTLINED_FUNCTION_5_10();
                    if (v43)
                    {
                      goto LABEL_114;
                    }

                    v115 = sub_1B1F1A0D0();
                    if (!v53)
                    {
                      goto LABEL_121;
                    }

                    goto LABEL_93;
                  }

                  if (v35 != 1)
                  {
LABEL_78:
                    __s2 = v24;
                    v155 = v23;
                    v156 = BYTE2(v23);
                    v157 = BYTE3(v23);
                    v158 = BYTE4(v23);
                    v159 = BYTE5(v23);
                    v84 = OUTLINED_FUNCTION_2_10();
                    sub_1B1E0E714(v84, v85);
                    v86 = OUTLINED_FUNCTION_2_10();
                    sub_1B1E0E714(v86, v87);
                    v88 = memcmp(__s1, &__s2, BYTE6(v23));
                    goto LABEL_97;
                  }

                  v146 = v24;
                  if (v2 < v24)
                  {
                    goto LABEL_112;
                  }

                  v67 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E0E714(v67, v68);
                  v69 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E0E714(v69, v70);
                  sub_1B1F1A760();
                  v71 = OUTLINED_FUNCTION_4_9();
                  sub_1B1E0E714(v71, v72);
                  v53 = sub_1B1F1A0C0();
                  if (v53)
                  {
                    v73 = sub_1B1F1A0E0();
                    if (__OFSUB__(v24, v73))
                    {
                      goto LABEL_118;
                    }

                    v53 += v24 - v73;
                  }

                  v55 = sub_1B1F1A0D0();
                  if (!v53)
                  {
                    __break(1u);
LABEL_121:
                    __break(1u);
LABEL_122:
                    __break(1u);
LABEL_123:
                    __break(1u);
LABEL_124:
                    v142 = OUTLINED_FUNCTION_2_10();
                    sub_1B1E03C48(v142, v143);
                    v144 = OUTLINED_FUNCTION_2_10();
                    sub_1B1E03C48(v144, v145);

                    __break(1u);
LABEL_125:
                    JUMPOUT(0);
                  }

                  goto LABEL_71;
                default:
                  __s1[0] = v3;
                  LOWORD(__s1[1]) = v32;
                  BYTE2(__s1[1]) = BYTE2(v32);
                  BYTE3(__s1[1]) = BYTE3(v32);
                  BYTE4(__s1[1]) = BYTE4(v32);
                  BYTE5(__s1[1]) = BYTE5(v32);
                  if (!v35)
                  {
                    goto LABEL_78;
                  }

                  if (v35 == 1)
                  {
                    v146 = v24;
                    if (v2 < v24)
                    {
                      goto LABEL_113;
                    }

                    v47 = OUTLINED_FUNCTION_2_10();
                    sub_1B1E0E714(v47, v48);
                    v49 = OUTLINED_FUNCTION_2_10();
                    sub_1B1E0E714(v49, v50);
                    sub_1B1F1A760();
                    v51 = OUTLINED_FUNCTION_4_9();
                    sub_1B1E0E714(v51, v52);
                    v53 = sub_1B1F1A0C0();
                    if (v53)
                    {
                      v54 = sub_1B1F1A0E0();
                      if (__OFSUB__(v24, v54))
                      {
                        goto LABEL_119;
                      }

                      v53 += v24 - v54;
                    }

                    v55 = sub_1B1F1A0D0();
                    if (!v53)
                    {
                      goto LABEL_123;
                    }

LABEL_71:
                    if (v55 >= v2 - v146)
                    {
                      v74 = v2 - v146;
                    }

                    else
                    {
                      v74 = v55;
                    }
                  }

                  else
                  {
                    v2 = *(v24 + 16);
                    v146 = *(v24 + 24);
                    v116 = OUTLINED_FUNCTION_2_10();
                    sub_1B1E0E714(v116, v117);
                    v118 = OUTLINED_FUNCTION_2_10();
                    sub_1B1E0E714(v118, v119);
                    sub_1B1F1A760();
                    v120 = OUTLINED_FUNCTION_4_9();
                    sub_1B1E0E714(v120, v121);
                    v53 = sub_1B1F1A0C0();
                    if (v53)
                    {
                      v122 = sub_1B1F1A0E0();
                      if (__OFSUB__(v2, v122))
                      {
                        goto LABEL_117;
                      }

                      v53 += v2 - v122;
                    }

                    OUTLINED_FUNCTION_5_10();
                    if (v43)
                    {
                      goto LABEL_115;
                    }

                    v115 = sub_1B1F1A0D0();
                    if (!v53)
                    {
                      goto LABEL_122;
                    }

LABEL_93:
                    if (v115 >= v2)
                    {
                      v74 = v2;
                    }

                    else
                    {
                      v74 = v115;
                    }
                  }

                  v88 = memcmp(__s1, v53, v74);

                  v123 = OUTLINED_FUNCTION_4_9();
                  sub_1B1E03C48(v123, v124);
LABEL_97:

                  v125 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E03C48(v125, v126);
                  v127 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E03C48(v127, v128);
                  v129 = OUTLINED_FUNCTION_2_10();
                  v131 = sub_1B1E03C48(v129, v130);
                  result = OUTLINED_FUNCTION_15_7(v131, v132, v133, v134, v135, v136, v137, v138, v146, v148, v149, v150, v151, v152, 0);
                  if (v88)
                  {
                    goto LABEL_102;
                  }

                  break;
              }

              break;
            case 2uLL:
              v46 = *(v24 + 16);
              v45 = *(v24 + 24);
              v43 = __OFSUB__(v45, v46);
              v44 = v45 - v46;
              if (!v43)
              {
                goto LABEL_45;
              }

              goto LABEL_104;
            case 3uLL:
              if (v40)
              {
                goto LABEL_100;
              }

              goto LABEL_56;
            default:
              v44 = BYTE6(v23);
              goto LABEL_45;
          }
        }
      }

LABEL_100:

      v139 = OUTLINED_FUNCTION_2_10();
      sub_1B1E03C48(v139, v140);
    }

    result = 0;
  }

LABEL_102:
  v141 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B1E3A090(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001B1F38F90 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B1F1B510();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B1E3A130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E3A090(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B1E3A15C(uint64_t a1)
{
  v2 = sub_1B1E3A360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3A198(uint64_t a1)
{
  v2 = sub_1B1E3A360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LinkSnapshot.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_34();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784DA0, &qword_1B1F2EBD0);
  OUTLINED_FUNCTION_0(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  v33 = *v20;
  v34 = v24[4];
  __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  sub_1B1E3A360();
  sub_1B1F1A760();
  sub_1B1F1B830();
  a10 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784DB0, &qword_1B1F2EBD8);
  sub_1B1E3C104(&qword_1EB784DB8, sub_1B1E3A3B4);
  sub_1B1F1B2B0();

  (*(v27 + 8))(v32, v25);
  OUTLINED_FUNCTION_35();
}

unint64_t sub_1B1E3A360()
{
  result = qword_1EB784DA8;
  if (!qword_1EB784DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784DA8);
  }

  return result;
}

unint64_t sub_1B1E3A3B4()
{
  result = qword_1EB784DC0;
  if (!qword_1EB784DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784DC0);
  }

  return result;
}

uint64_t LinkSnapshot.hashValue.getter()
{
  v1 = *v0;
  sub_1B1F1B7C0();
  sub_1B1E3BF6C(v3, v1);
  return sub_1B1F1B7F0();
}

void LinkSnapshot.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_34();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784DC8, &qword_1B1F2EBE0);
  OUTLINED_FUNCTION_0(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  v35 = v24[4];
  __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  sub_1B1E3A360();
  sub_1B1F1B810();
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784DB0, &qword_1B1F2EBD8);
    sub_1B1E3C104(&qword_1EB784DD0, sub_1B1E3C184);
    sub_1B1F1B200();
    (*(v29 + 8))(v34, v27);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_35();
}

uint64_t static LinkSnapshot.empty.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = MEMORY[0x1E69E7CD0];
  v2 = sub_1B1E38EF8(MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CC0], &v4);

  *a1 = v2;
  return result;
}

uint64_t sub_1B1E3A684()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B1E3A734;

  return static LinkSnapshot.partial(_:failIfContainerNotFound:)();
}

uint64_t sub_1B1E3A734()
{
  OUTLINED_FUNCTION_1();
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_2_0();

  return v2();
}

uint64_t static LinkSnapshot.partial(_:failIfContainerNotFound:)()
{
  OUTLINED_FUNCTION_1();
  *(v0 + 56) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1B1E3A8B8;

  return static LinkSnapshot.complete()();
}

uint64_t sub_1B1E3A8B8()
{
  OUTLINED_FUNCTION_1();
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1B1E3AAB8;
  }

  else
  {
    v3 = sub_1B1E3A9C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B1E3A9C8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_1B1F1A760();
  v5 = OUTLINED_FUNCTION_6_8();
  v7 = sub_1B1E3B908(v5, v6);

  if (v2 == 1 && *(v7 + 16) < *(*(v0 + 32) + 16))
  {

    sub_1B1E3C1D8();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_2_0();
  }

  else
  {
    **(v0 + 24) = v7;
    OUTLINED_FUNCTION_2_0();
  }

  return v8();
}

uint64_t sub_1B1E3AAB8()
{
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_2_0();
  return v2();
}

uint64_t sub_1B1E3AADC()
{
  OUTLINED_FUNCTION_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B1E3C924;

  return static LinkSnapshot.complete()();
}

uint64_t static LinkSnapshot.complete()()
{
  OUTLINED_FUNCTION_1();
  v7 = *MEMORY[0x1E69E9840];
  v0[3] = v1;
  v2 = sub_1B1F1A500();
  v0[4] = v2;
  v3 = *(v2 - 8);
  v0[5] = v3;
  v4 = *(v3 + 64) + 15;
  v0[6] = swift_task_alloc();
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1B1E3AC58, 0, 0);
}

uint64_t sub_1B1E3AC58()
{
  v51 = v0;
  v50[2] = *MEMORY[0x1E69E9840];
  if (qword_1ED84F030 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = qword_1ED84F038;
  v3 = swift_task_alloc();
  *(v3 + 16) = "ToolKit";
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_1B1DE7A98;
  *(v4 + 24) = v3;

  os_unfair_lock_lock(v2 + 4);
  sub_1B1DE7A64(v5);
  os_unfair_lock_unlock(v2 + 4);

  v6 = v0[6];

  v7 = sub_1B1F1A4E0();
  v8 = sub_1B1F1AD30();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B1DE3000, v7, v8, "Building complete Link snapshot from LNMetadataProvider", v9, 2u);
    MEMORY[0x1B273F720](v9, -1, -1);
  }

  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[4];

  (*(v11 + 8))(v10, v12);
  v13 = [objc_allocWithZone(MEMORY[0x1E69ACF60]) init];
  v0[2] = 0;
  v14 = [v13 bundleRegistrationsWithError_];
  v15 = v0[2];
  if (v14)
  {
    v16 = v14;
    sub_1B1E3C22C();
    v17 = sub_1B1F1A9B0();
    v18 = v15;

    v19 = sub_1B1E2AC98(v17);
    if (v19)
    {
      v20 = v19;
      v47 = v13;
      v48 = v0;
      v50[0] = MEMORY[0x1E69E7CC0];
      sub_1B1E3B2A4(0, v19 & ~(v19 >> 63), 0);
      if (v20 < 0)
      {
        __break(1u);
      }

      v21 = 0;
      v22 = v50[0];
      v49 = v17 & 0xC000000000000001;
      v23 = v17;
      v24 = v20;
      do
      {
        if (v49)
        {
          v25 = MEMORY[0x1B273D840](v21, v17);
        }

        else
        {
          v25 = *(v17 + 8 * v21 + 32);
        }

        v26 = v25;
        v27 = [v25 bundleIdentifier];
        v28 = sub_1B1F1A890();
        v30 = v29;

        v31 = [v26 installIdentifier];
        v32 = sub_1B1F1A290();
        v34 = v33;

        v50[0] = v22;
        v36 = *(v22 + 16);
        v35 = *(v22 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_1B1E3B2A4(v35 > 1, v36 + 1, 1);
          v22 = v50[0];
        }

        ++v21;
        *(v22 + 16) = v36 + 1;
        v37 = (v22 + 32 * v36);
        v37[4] = v28;
        v37[5] = v30;
        v37[6] = v32;
        v37[7] = v34;
        v17 = v23;
      }

      while (v24 != v21);

      v13 = v47;
      v0 = v48;
    }

    else
    {

      v22 = MEMORY[0x1E69E7CC0];
    }

    v42 = v0[6];
    v43 = v0[3];
    v50[0] = MEMORY[0x1E69E7CD0];
    v44 = sub_1B1E38EF8(MEMORY[0x1E69E7CC8], v22, v50);

    *v43 = v44;

    OUTLINED_FUNCTION_2_0();
    v45 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v38 = v0[6];
    v39 = v15;
    sub_1B1F1A1C0();

    swift_willThrow();

    OUTLINED_FUNCTION_2_0();
    v41 = *MEMORY[0x1E69E9840];
  }

  return v40();
}

uint64_t sub_1B1E3B128()
{
  v1 = *v0;
  sub_1B1F1B7C0();
  sub_1B1E3BF6C(v3, v1);
  return sub_1B1F1B7F0();
}

uint64_t LinkSnapshot.debugDescription.getter()
{
  v1 = *v0;
  sub_1B1F1AFA0();

  sub_1B1F1A760();
  v2 = sub_1B1F1A740();
  MEMORY[0x1B273D1A0](v2);

  MEMORY[0x1B273D1A0](0x73656C646E756220, 0xE800000000000000);
  return 0x616E536B6E694C3CLL;
}

uint64_t sub_1B1E3B244(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B1E3B2C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B1E3B264(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B1E3B3C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B1E3B284(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B1E3B4CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B1E3B2A4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B1E3B5E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B1E3B2C4(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783F38, &qword_1B1F2CC10);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1B1E2B4A4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B1E3B3C4(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784E30, &unk_1B1F2F170);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1B1E2B4C4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B1E3B4CC(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784E40, &qword_1B1F2F188);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1B1E2B4E8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784530, &qword_1B1F2F190);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1E3B5E4(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784E38, &qword_1B1F2F180);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1B1E2B510((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
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

void sub_1B1E3B6E4(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      v7 = sub_1B1E3B850(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v7 = 1;
LABEL_10:
        *a4 = v7 & 1;
        v10 = *MEMORY[0x1E69E9840];
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a2;
      v12 = a3;
      v13 = BYTE2(a3);
      v14 = BYTE3(a3);
      v15 = BYTE4(a3);
      v16 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v7 = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      goto LABEL_10;
  }
}

uint64_t sub_1B1E3B850(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_1B1F1A0C0();
  v8 = result;
  if (result)
  {
    result = sub_1B1F1A0E0();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1B1F1A0D0();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t sub_1B1E3B908(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      sub_1B1F1A760();
      v4 = sub_1B1E3BD20(v13, v7, v4, a2);
      MEMORY[0x1B273F720](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1B1E64060(0, v7, v9);
  sub_1B1F1A760();
  v10 = sub_1B1E3BACC(v9, v7, v4, a2);
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

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1B1E3BACC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v33 = a4 + 56;
  v34 = result;
LABEL_5:
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = v12 | (v6 << 6);
    if (*(a4 + 16))
    {
      v39 = v10;
      v40 = v5;
      v16 = (*(a3 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v35 = v15;
      v19 = (*(a3 + 56) + 32 * v15);
      v21 = v19[1];
      v20 = v19[2];
      v22 = v19[3];
      v23 = *(a4 + 40);
      sub_1B1F1B7C0();
      sub_1B1F1A760();
      sub_1B1F1A760();
      v37 = v22;
      v38 = v20;
      sub_1B1E0E714(v20, v22);
      sub_1B1F1A900();
      v24 = sub_1B1F1B7F0();
      v25 = ~(-1 << *(a4 + 32));
      do
      {
        v26 = v24 & v25;
        if (((*(v33 + (((v24 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v25)) & 1) == 0)
        {

          sub_1B1E03C48(v38, v37);

          v5 = v40;
          v10 = v39;
          goto LABEL_5;
        }

        v27 = (*(a4 + 48) + 16 * v26);
        if (*v27 == v17 && v27[1] == v18)
        {
          break;
        }

        v29 = sub_1B1F1B510();
        v24 = v26 + 1;
      }

      while ((v29 & 1) == 0);

      sub_1B1E03C48(v38, v37);

      *(v34 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      v5 = v40 + 1;
      v10 = v39;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_26;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      sub_1B1E66C74(v34, a2, v5, a3);
      v31 = v30;

      return v31;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_1B1E3BD20(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v8 = sub_1B1E3BACC(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1B1E3BDC0(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  v5 = *(a2 + 32);
  OUTLINED_FUNCTION_0_13();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  result = sub_1B1F1A760();
  v29 = 0;
  v12 = 0;
  if (v8)
  {
    while (1)
    {
      v13 = v12;
LABEL_6:
      v14 = __clz(__rbit64(v8)) | (v13 << 6);
      v15 = (*(a2 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      v18 = (*(a2 + 56) + 24 * v14);
      v20 = *v18;
      v19 = v18[1];
      v21 = v18[2];
      sub_1B1F1A760();
      sub_1B1F1A760();
      v22 = v21;
      if (!v16)
      {
        break;
      }

      v23 = v22;
      v8 &= v8 - 1;
      memcpy(__dst, a1, sizeof(__dst));
      sub_1B1F1A900();

      sub_1B1F1A760();
      v24 = v23;
      sub_1B1F1A900();

      v25 = sub_1B1F1A290();
      v27 = v26;
      sub_1B1F1A2A0();
      sub_1B1E03C48(v25, v27);

      result = sub_1B1F1B7F0();
      v29 ^= result;
      v12 = v13;
      if (!v8)
      {
        goto LABEL_3;
      }
    }

LABEL_9:

    return MEMORY[0x1B273E060](v29);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_9;
      }

      v8 = *(v4 + 8 * v13);
      ++v12;
      if (v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E3BF6C(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v2 = *(a2 + 64);
  v4 = *(a2 + 32);
  OUTLINED_FUNCTION_0_13();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  result = sub_1B1F1A760();
  v32 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_6:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = (*(a2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = (*(a2 + 56) + 32 * v13);
      v19 = *v17;
      v18 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      sub_1B1F1A760();
      sub_1B1F1A760();
      v22 = OUTLINED_FUNCTION_7_7();
      sub_1B1E0E714(v22, v23);
      if (!v15)
      {
        break;
      }

      v7 &= v7 - 1;
      memcpy(__dst, a1, sizeof(__dst));
      sub_1B1F1A900();

      sub_1B1F1A760();
      v24 = OUTLINED_FUNCTION_7_7();
      sub_1B1E0E714(v24, v25);
      sub_1B1F1A900();

      sub_1B1F1A2A0();

      v26 = OUTLINED_FUNCTION_7_7();
      sub_1B1E03C48(v26, v27);
      v28 = OUTLINED_FUNCTION_7_7();
      sub_1B1E03C48(v28, v29);
      result = sub_1B1F1B7F0();
      v32 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_3;
      }
    }

LABEL_9:

    return MEMORY[0x1B273E060](v32);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_9;
      }

      v7 = *(v3 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E3C104(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784DB0, &qword_1B1F2EBD8);
    a2();
    OUTLINED_FUNCTION_7_7();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B1E3C184()
{
  result = qword_1EB784DD8;
  if (!qword_1EB784DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784DD8);
  }

  return result;
}

unint64_t sub_1B1E3C1D8()
{
  result = qword_1EB784DE0;
  if (!qword_1EB784DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784DE0);
  }

  return result;
}

unint64_t sub_1B1E3C22C()
{
  result = qword_1EB7835D0;
  if (!qword_1EB7835D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7835D0);
  }

  return result;
}

unint64_t sub_1B1E3C274()
{
  result = qword_1EB784DE8;
  if (!qword_1EB784DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784DE8);
  }

  return result;
}

unint64_t sub_1B1E3C2D4()
{
  result = qword_1EB784DF0;
  if (!qword_1EB784DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784DF0);
  }

  return result;
}

unint64_t sub_1B1E3C328(void *a1)
{
  a1[1] = sub_1B1E3C368();
  a1[2] = sub_1B1E3C3BC();
  a1[3] = sub_1B1E3C410();
  result = sub_1B1E3C464();
  a1[4] = result;
  return result;
}

unint64_t sub_1B1E3C368()
{
  result = qword_1EB783AA0;
  if (!qword_1EB783AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783AA0);
  }

  return result;
}

unint64_t sub_1B1E3C3BC()
{
  result = qword_1EB783AA8;
  if (!qword_1EB783AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783AA8);
  }

  return result;
}

unint64_t sub_1B1E3C410()
{
  result = qword_1EB783AC0;
  if (!qword_1EB783AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783AC0);
  }

  return result;
}

unint64_t sub_1B1E3C464()
{
  result = qword_1EB783AB8;
  if (!qword_1EB783AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783AB8);
  }

  return result;
}

unint64_t sub_1B1E3C4BC()
{
  result = qword_1EB783AB0;
  if (!qword_1EB783AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783AB0);
  }

  return result;
}

_BYTE *sub_1B1E3C534(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LinkSnapshot.State.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B1E3C6C0()
{
  result = qword_1EB784DF8;
  if (!qword_1EB784DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784DF8);
  }

  return result;
}

unint64_t sub_1B1E3C718()
{
  result = qword_1EB784E00;
  if (!qword_1EB784E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784E00);
  }

  return result;
}

unint64_t sub_1B1E3C770()
{
  result = qword_1EB784E08;
  if (!qword_1EB784E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784E08);
  }

  return result;
}

unint64_t sub_1B1E3C7C8()
{
  result = qword_1EB784E10;
  if (!qword_1EB784E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784E10);
  }

  return result;
}

unint64_t sub_1B1E3C820()
{
  result = qword_1EB784E18;
  if (!qword_1EB784E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784E18);
  }

  return result;
}

unint64_t sub_1B1E3C878()
{
  result = qword_1EB784E20;
  if (!qword_1EB784E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784E20);
  }

  return result;
}

unint64_t sub_1B1E3C8D0()
{
  result = qword_1EB784E28;
  if (!qword_1EB784E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784E28);
  }

  return result;
}

uint64_t AsyncSequence.next()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = sub_1B1F19FF0();
  v4[6] = v6;
  OUTLINED_FUNCTION_6_0(v6);
  v4[7] = v7;
  v9 = *(v8 + 64);
  v4[8] = OUTLINED_FUNCTION_9();
  v4[9] = swift_getAssociatedTypeWitness();
  v10 = sub_1B1F1AEB0();
  v4[10] = v10;
  OUTLINED_FUNCTION_6_0(v10);
  v4[11] = v11;
  v13 = *(v12 + 64);
  v4[12] = OUTLINED_FUNCTION_9();
  v14 = *(a2 - 8);
  v4[13] = v14;
  v15 = *(v14 + 64);
  v4[14] = OUTLINED_FUNCTION_9();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[15] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_0(AssociatedTypeWitness);
  v4[16] = v17;
  v19 = *(v18 + 64);
  v4[17] = OUTLINED_FUNCTION_9();

  return MEMORY[0x1EEE6DFA0](sub_1B1E3CB4C, 0, 0);
}

uint64_t sub_1B1E3CB4C()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[4];
  (*(v0[13] + 16))(v0[14], v0[5], v0[3]);
  sub_1B1F1AB60();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1B1E3CC64;
  v7 = v0[17];
  v8 = v0[15];
  v9 = v0[12];

  return MEMORY[0x1EEE6D8C8](v9, v8, AssociatedConformanceWitness);
}

uint64_t sub_1B1E3CC64()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1B1E3CF5C;
  }

  else
  {
    v3 = sub_1B1E3CD78;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B1E3CD78()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);
  if (EnumTagSinglePayload == 1)
  {
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);
    (*(*(v0 + 88) + 8))(v1, *(v0 + 80));
    *(v0 + 160) = 2;
    sub_1B1E3CFF4(MEMORY[0x1E69E7CC0]);
    sub_1B1E3D12C();
    sub_1B1F1A1A0();
    sub_1B1F19FE0();
    (*(v8 + 8))(v7, v9);
    swift_willThrow();
    (*(v5 + 8))(v4, v6);
    OUTLINED_FUNCTION_1_14();
  }

  else
  {
    v11 = *(v0 + 112);
    v12 = *(v0 + 64);
    v13 = *(v0 + 16);
    (*(v5 + 8))(*(v0 + 136), *(v0 + 120));
    (*(*(v2 - 8) + 32))(v13, v1, v2);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1B1E3CF5C()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[19];
  OUTLINED_FUNCTION_1_14();

  v2 = v0[1];

  return v2();
}

unint64_t sub_1B1E3CFF4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E20, &qword_1B1F2F1A0);
  v2 = sub_1B1F1B140();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1B1E3D1FC(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_1B1E3D184(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1B1E077D8(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1B1E3D12C()
{
  result = qword_1EB7835A8;
  if (!qword_1EB7835A8)
  {
    sub_1B1F19FF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7835A8);
  }

  return result;
}

unint64_t sub_1B1E3D184(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B1F1B7C0();
  sub_1B1F1A900();
  v6 = sub_1B1F1B7F0();

  return sub_1B1DEBF4C(a1, a2, v6);
}

uint64_t sub_1B1E3D1FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784E48, &qword_1B1F2F1A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1E3D26C()
{
  qword_1ED84EE40 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

os_activity_t sub_1B1E3D2A8(char *description, int a2, char a3, void *dso)
{
  if ((a3 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_1ED84EE30 == -1)
        {
LABEL_5:
          v6 = qword_1ED84EE40;

          return _os_activity_create(dso, description, v6, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        swift_once();
        goto LABEL_5;
      }

LABEL_28:
      result = sub_1B1F1B100();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v8 = description + 1;
    goto LABEL_13;
  }

  v9 = (description & 0x3F) << 8;
  v10 = (description >> 6) + v9 + 33217;
  v11 = (v9 | (description >> 6) & 0x3F) << 8;
  v12 = (description >> 18) + ((v11 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v13 = (description >> 12) + v11 + 8487393;
  if (description >> 16)
  {
    v8 = v12;
  }

  else
  {
    v8 = v13;
  }

  if (description < 0x800)
  {
    v8 = v10;
  }

LABEL_13:
  *descriptiona = (v8 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v8) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_1ED84EE30 != -1)
  {
    swift_once();
  }

  return _os_activity_create(dso, descriptiona, qword_1ED84EE40, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t WFLogActivity.Handle.deinit()
{
  OUTLINED_FUNCTION_0_14();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t WFLogActivity.Handle.__deallocating_deinit()
{
  WFLogActivity.Handle.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1B1E3D518()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_0_14();
  os_activity_scope_enter(v1, (v0 + 24));
  return swift_endAccess();
}

void *static WFLogActivity.begin(name:)(char *a1, int a2, char a3)
{
  v3 = sub_1B1E3D2A8(a1, a2, a3, &dword_1B1DE3000);
  type metadata accessor for WFLogActivity.Handle();
  v4 = swift_allocObject();
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = v3;
  sub_1B1E3D518();
  return v4;
}

_BYTE *storeEnumTagSinglePayload for WFLogActivity(_BYTE *result, int a2, int a3)
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

uint64_t XPCEndpoint.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1F1B800();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784E50, &qword_1B1F2F200);
    if (swift_dynamicCast())
    {
      v6 = swift_unknownObjectRetain();
      v7 = MEMORY[0x1B273FB80](v6);
      if (v7 == sub_1B1F1A560())
      {

        swift_unknownObjectRelease();
        *a2 = v11;
      }

      else
      {
        sub_1B1E3D7F8();
        swift_allocError();
        *v8 = 1;
        swift_willThrow();

        swift_unknownObjectRelease_n();
      }
    }

    else
    {
      sub_1B1E3D7F8();
      swift_allocError();
      *v9 = 0;
      swift_willThrow();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B1E3D7F8()
{
  result = qword_1EB784E58;
  if (!qword_1EB784E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784E58);
  }

  return result;
}

uint64_t XPCEndpoint.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1F1B820();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784E60, &qword_1B1F2F208);
  if (swift_dynamicCast())
  {

    v4 = *(v9 + 16);
    v5 = *(v9 + 24);
    *(v9 + 16) = v2;
    *(v9 + 24) = 0;
    v6 = *(v9 + 32);
    *(v9 + 32) = 7;
    swift_unknownObjectRetain();
    sub_1B1E177B0(v4, v5, v6);
  }

  else
  {
    sub_1B1E3D7F8();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }
}

uint64_t XPCEndpoint.description.getter()
{
  v1 = *v0;
  sub_1B1F1AFA0();

  v2 = MEMORY[0x1B273FA10](v1);
  v3 = sub_1B1F1A920();
  v5 = v4;
  MEMORY[0x1B273F720](v2, -1, -1);
  MEMORY[0x1B273D1A0](v3, v5);

  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return 0x646E65206370783CLL;
}

_BYTE *storeEnumTagSinglePayload for XPCEndpointCodingError(_BYTE *result, unsigned int a2, unsigned int a3)
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