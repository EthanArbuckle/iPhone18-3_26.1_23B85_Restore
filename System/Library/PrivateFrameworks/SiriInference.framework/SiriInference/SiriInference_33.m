void sub_1DD5D50AC()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_0_138(v4, v5, v6, v7);
  if (!v9)
  {
    OUTLINED_FUNCTION_9_57();
LABEL_17:
    OUTLINED_FUNCTION_2_107(v17);
    OUTLINED_FUNCTION_17();
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v17 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_122();
    while (v12 < v10)
    {
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v11, 1))
        {
          if (v11 + 1 >= v3)
          {
            OUTLINED_FUNCTION_12_45();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_14_43();
        }

        __break(1u);
        break;
      }

      v13 = v11;
      OUTLINED_FUNCTION_90_0();
      v14 = *(v0 + 48);
      OUTLINED_FUNCTION_7_64(v15);
      if (v16)
      {

        v17 = v13;
        goto LABEL_17;
      }

      v1 += 8;

      OUTLINED_FUNCTION_13_47();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DD5D5178(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_1DD640778();
    type metadata accessor for DateTimeConstraint();
    sub_1DD5D5388(&qword_1ECCDC188, 255, type metadata accessor for DateTimeConstraint);
    result = sub_1DD6402A8();
    v4 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
    v11 = v27;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
LABEL_27:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v10;
    v7[4] = v11;
    return v12;
  }

  v10 = 0;
  v18 = -1 << *(a4 + 32);
  v8 = a4 + 56;
  v9 = ~v18;
  v19 = -v18;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v11 = v20 & *(a4 + 56);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v21 = v9;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!sub_1DD6407F8())
        {
          goto LABEL_25;
        }

        type metadata accessor for DateTimeConstraint();
        swift_dynamicCast();
        result = v22;
        if (!v22)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v11 = 0;
              goto LABEL_25;
            }

            v11 = *(v8 + 8 * v15);
            ++v10;
            if (v11)
            {
              v10 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        OUTLINED_FUNCTION_19_36();
        v17 = *(*(v4 + 48) + ((v10 << 9) | (8 * v16)));

        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v12;
      if (v14 == a3)
      {
        v12 = a3;
LABEL_25:
        v9 = v21;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD5D5388(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1DD5D53D0()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_0_138(v3, v4, v5, v6);
  if (!v8)
  {
    OUTLINED_FUNCTION_9_57();
LABEL_17:
    OUTLINED_FUNCTION_2_107(v19);
    OUTLINED_FUNCTION_17();
    return;
  }

  v9 = v7;
  if (!v7)
  {
    v19 = 0;
    goto LABEL_17;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_122();
    while (v11 < v9)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v10, 1))
        {
          if (v10 + 1 >= v2)
          {
            OUTLINED_FUNCTION_12_45();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_14_43();
        }

        __break(1u);
        break;
      }

      v13 = v10;
      v14 = OUTLINED_FUNCTION_17_39();
      v17 = *(v16 + 8 * v15);
      v1 &= v1 - 1;
      *v0 = v18;
      v0[1] = v14;
      v0[2] = v17;
      if (v12 == v9)
      {

        v19 = v13;
        goto LABEL_17;
      }

      v0 += 3;

      OUTLINED_FUNCTION_13_47();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DD5D54AC(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v12 = *(a4 + 16);
    v6 = 0;
LABEL_13:
    *v5 = a4;
    v5[1] = v12;
    return v6;
  }

  if (!a3)
  {
    v12 = *(a4 + 16);
LABEL_12:
    v6 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 0;
    v10 = a3 - 1;
    for (i = (a4 + 24 * v6 + 24); ; i -= 3)
    {
      v12 = v6 + v9;
      if (!(v6 + v9))
      {
        break;
      }

      if (v12 > *(a4 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v13 = *(i - 1);
      v14 = *i;
      *v8 = *(i - 2);
      v8[1] = v13;
      v8[2] = v14;
      if (!(v10 + v9))
      {

        v12 = v6 + v9 - 1;
        goto LABEL_12;
      }

      v8 += 3;

      --v9;
    }

    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1DD5D5588()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_0_138(v3, v4, v5, v6);
  if (!v8)
  {
    OUTLINED_FUNCTION_9_57();
LABEL_17:
    OUTLINED_FUNCTION_2_107(v19);
    OUTLINED_FUNCTION_17();
    return;
  }

  v9 = v7;
  if (!v7)
  {
    v19 = 0;
    goto LABEL_17;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_122();
    while (v11 < v9)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v10, 1))
        {
          if (v10 + 1 >= v2)
          {
            OUTLINED_FUNCTION_12_45();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_14_43();
        }

        __break(1u);
        break;
      }

      v13 = v10;
      v14 = OUTLINED_FUNCTION_17_39();
      v17 = *(v16 + 8 * v15);
      v1 &= v1 - 1;
      *v0 = v18;
      v0[1] = v14;
      v0[2] = v17;
      if (v12 == v9)
      {

        v19 = v13;
        goto LABEL_17;
      }

      v0 += 3;

      OUTLINED_FUNCTION_13_47();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1DD5D5664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 + 64;
  v4 = *(a4 + 64);
  v6 = -1 << *(a4 + 32);
  OUTLINED_FUNCTION_5_84();
  v13 = v12 & v11;
  if (!v8)
  {
    OUTLINED_FUNCTION_9_57();
LABEL_18:
    *v7 = a4;
    v7[1] = v5;
    v7[2] = ~v10;
    v7[3] = v16;
    v7[4] = v13;
    return;
  }

  v14 = v9;
  if (!v9)
  {
    v16 = 0;
    goto LABEL_18;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v15 = v8;
    v27 = v10;
    v28 = v7;
    OUTLINED_FUNCTION_4_89();
    v20 = (v18 - v19) >> 6;
    while (1)
    {
      if (v17 >= v14)
      {
        goto LABEL_21;
      }

      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_22;
      }

      if (!v13)
      {
        while (1)
        {
          v22 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v22 >= v20)
          {
            v13 = 0;
            goto LABEL_16;
          }

          v13 = *(v5 + 8 * v22);
          ++v16;
          if (v13)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v22 = v16;
LABEL_12:
      OUTLINED_FUNCTION_20_34();
      v24 = v23 | (v22 << 6);
      v25 = (*(a4 + 48) + (v24 << 7));
      memcpy(__dst, v25, 0x80uLL);
      v26 = *(*(a4 + 56) + 8 * v24);
      memmove(v15, v25, 0x80uLL);
      v15[16] = v26;
      if (v21 == v14)
      {
        break;
      }

      v15 += 17;
      sub_1DD400BFC(__dst, v30);
      v17 = v21;
      v16 = v22;
    }

    sub_1DD400BFC(__dst, v30);
    v16 = v22;
LABEL_16:
    v10 = v27;
    v7 = v28;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1DD5D57EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 64);
  v5 = *(a4 + 32);
  OUTLINED_FUNCTION_11_49();
  if (!v10)
  {
    v7 = 0;
    goto LABEL_15;
  }

  if (!v7)
  {
LABEL_15:
    OUTLINED_FUNCTION_3_91(v6, v7, v8, v9);
    return;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_23_32();
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (!v12)
      {
        while (1)
        {
          v17 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v17 >= v14)
          {
            v7 = v15;
            goto LABEL_15;
          }

          v12 = *(v9 + 8 * v17);
          ++v13;
          if (v12)
          {
            v13 = v17;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      *v11++ = *(*(v8 + 56) + ((v13 << 9) | (8 * v18)));
      v15 = v16;
      if (v16 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1DD5D58B8()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_0_138(v4, v5, v6, v7);
  if (!v9)
  {
    OUTLINED_FUNCTION_9_57();
LABEL_17:
    OUTLINED_FUNCTION_2_107(v17);
    OUTLINED_FUNCTION_17();
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v17 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_122();
    while (v12 < v10)
    {
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v11, 1))
        {
          if (v11 + 1 >= v3)
          {
            OUTLINED_FUNCTION_12_45();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_14_43();
        }

        __break(1u);
        break;
      }

      v13 = v11;
      OUTLINED_FUNCTION_90_0();
      v14 = *(v0 + 56);
      OUTLINED_FUNCTION_7_64(v15);
      if (v16)
      {
        swift_unknownObjectRetain();
        v17 = v13;
        goto LABEL_17;
      }

      v1 += 8;
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_13_47();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1DD5D5984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 64);
  v5 = *(a4 + 32);
  OUTLINED_FUNCTION_11_49();
  if (!v10)
  {
    v7 = 0;
    goto LABEL_15;
  }

  if (!v7)
  {
LABEL_15:
    OUTLINED_FUNCTION_3_91(v6, v7, v8, v9);
    return;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_23_32();
    while (!__OFADD__(v15, 1))
    {
      if (!v12)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v7 = v15;
            goto LABEL_15;
          }

          ++v13;
          if (*(v9 + 8 * v16))
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        break;
      }

LABEL_10:
      OUTLINED_FUNCTION_18_37(v6, v11, v7, v8);
      if (v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DD5D5A38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_91@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a1 = a3;
  a1[1] = a4;
  a1[2] = ~v4;
  a1[3] = v6;
  a1[4] = v5;
  return a2;
}

uint64_t OUTLINED_FUNCTION_22_31()
{

  return swift_unexpectedError();
}

uint64_t OUTLINED_FUNCTION_24_23()
{

  return sub_1DD640A38();
}

uint64_t sub_1DD5D5B60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a4;
  v68 = a3;
  v63 = sub_1DD63F598();
  v6 = OUTLINED_FUNCTION_0(v63);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61[-v15];
  v17 = sub_1DD63D078();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_4();
  v65 = (v23 - v24);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v25);
  v64 = &v61[-v26];
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v27);
  v69 = &v61[-v28];
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v61[-v30];
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v61[-v33];
  v66 = a2;
  sub_1DD63F508();
  v35 = *(type metadata accessor for RunTimeDataRecord() + 28);
  OUTLINED_FUNCTION_2_60();
  sub_1DD5DA740(v36);
  if (sub_1DD63FD78())
  {
    (*(v20 + 8))(v31, v17);
    (*(v20 + 16))(v34, a1 + v35, v17);
  }

  else
  {
    (*(v20 + 32))(v34, v31, v17);
  }

  sub_1DD63F528();
  v37 = v63;
  (*(v8 + 104))(v13, *MEMORY[0x1E69CF930], v63);
  sub_1DD3B1B90();
  v38 = *(v8 + 8);
  v38(v13, v37);
  v38(v16, v37);
  v39 = v69;
  sub_1DD63CF98();
  v40 = v65;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v41 = sub_1DD63F9F8();
  __swift_project_value_buffer(v41, qword_1EE16F068);
  v42 = *(v20 + 16);
  v43 = v64;
  v66 = v34;
  v42(v64, v34, v17);
  v42(v40, v39, v17);
  v44 = sub_1DD63F9D8();
  v45 = sub_1DD640368();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v70[0] = v63;
    *v46 = 136315394;
    sub_1DD5DA740(&qword_1EE1663F8);
    v62 = v45;
    v47 = sub_1DD640CB8();
    v48 = v43;
    v49 = v40;
    v51 = v50;
    v52 = *(v20 + 8);
    v52(v48, v17);
    v53 = sub_1DD39565C(v47, v51, v70);

    *(v46 + 4) = v53;
    *(v46 + 12) = 2080;
    v54 = sub_1DD640CB8();
    v56 = v55;
    v52(v49, v17);
    v57 = sub_1DD39565C(v54, v56, v70);
    v39 = v69;

    *(v46 + 14) = v57;
    _os_log_impl(&dword_1DD38D000, v44, v62, "finding interaction between %s and %s", v46, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    v52 = *(v20 + 8);
    v52(v40, v17);
    v58 = (v52)(v43, v17);
  }

  MEMORY[0x1EEE9AC00](v58);
  v59 = v66;
  *&v61[-16] = v66;
  *&v61[-8] = v39;
  sub_1DD608240();
  v52(v39, v17);
  return (v52)(v59, v17);
}

uint64_t sub_1DD5D60F4()
{
  v0 = sub_1DD63D078();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_4();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15[-v10];
  v12 = *(type metadata accessor for StitchableInteraction() + 24);
  sub_1DD63CF98();
  sub_1DD63CF98();
  v16 = v11;
  v17 = v8;
  sub_1DD608240();
  v13 = *(v3 + 8);
  v13(v8, v0);
  return (v13)(v11, v0);
}

uint64_t sub_1DD5D624C(uint64_t a1)
{
  v3 = 0;
  v64 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  while (v4 != v3)
  {
    v5 = *(type metadata accessor for RunTimeDataRecord() - 8);
    sub_1DD5D7D70(&v64, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3++);
  }

  v6 = v64;
  v48 = *(type metadata accessor for StitchableInteraction() + 36);
  v49 = v1;
  v7 = *(v1 + v48);

  v50 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_31:
    sub_1DD5869E8(v7);
    v50 = v43;
  }

  v9 = 0;
  v10 = 0;
  v11 = *(v7 + 16);
  *&v8 = 136315394;
  v46 = v8;
  v51 = v11;
  v52 = v6;
  while (v11 != v10)
  {
    if (v10 >= *(v7 + 16))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    memcpy(__dst, (v7 + v9 + 32), sizeof(__dst));
    v12 = memmove(&v64, (v7 + v9 + 32), 0x50uLL);
    if (!v66 || !*(v6 + 16))
    {
      v32 = OUTLINED_FUNCTION_8_70(v12, v13, v14, v15, v16, v17, v18, v19, v44, v45, v46, *(&v46 + 1), v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, __dst[0]);
      sub_1DD3E6404(v32, v33);
LABEL_18:
      sub_1DD3E6460(&v64);
      goto LABEL_19;
    }

    v20 = OUTLINED_FUNCTION_8_70(v12, v13, v14, v15, v16, v17, v18, v19, v44, v45, v46, *(&v46 + 1), v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, __dst[0]);
    sub_1DD3E6404(v20, v21);

    v22 = sub_1DD3978DC();
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_18;
    }

    v25 = (*(v6 + 56) + 16 * v22);
    v26 = *v25;
    v27 = v25[1];
    v6 = v64;
    v28 = v65;
    v29 = *v25 == v64 && v27 == v65;
    if (v29 || (v30 = *v25, v31 = v25[1], (sub_1DD640CD8() & 1) != 0))
    {
      sub_1DD3E6460(&v64);
    }

    else
    {
      v34 = qword_1EE165FB0;

      if (v34 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v35 = sub_1DD63F9F8();
      __swift_project_value_buffer(v35, qword_1EE16F068);

      sub_1DD3E6404(&v64, &v53);
      v36 = sub_1DD63F9D8();
      v37 = sub_1DD640368();
      sub_1DD3E6460(&v64);

      if (os_log_type_enabled(v36, v37))
      {
        HIDWORD(v44) = v37;
        v38 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v53 = v45;
        *v38 = v46;

        sub_1DD3E6460(&v64);
        v39 = sub_1DD39565C(v6, v28, &v53);

        *(v38 + 4) = v39;
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_1DD39565C(v26, v27, &v53);
        _os_log_impl(&dword_1DD38D000, v36, BYTE4(v44), "replacing interaction contact ID: %s -> %s", v38, 0x16u);
        v6 = v45;
        swift_arrayDestroy();
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      else
      {

        sub_1DD3E6460(&v64);
      }

      if (v10 >= *(v50 + 16))
      {
        goto LABEL_30;
      }

      v40 = v50 + v9;
      v41 = *(v50 + v9 + 40);
      *(v40 + 32) = v26;
      *(v40 + 40) = v27;
    }

    v11 = v51;
    v6 = v52;
LABEL_19:
    v9 += 80;
    ++v10;
  }

  *(v49 + v48) = v50;
  return result;
}

uint64_t sub_1DD5D6624(void *a1)
{
  objc_opt_self();
  OUTLINED_FUNCTION_6_9();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 contacts];
    if (v5)
    {
      goto LABEL_9;
    }
  }

  objc_opt_self();
  OUTLINED_FUNCTION_6_9();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v4 = a1;
    v5 = [v7 recipients];
    if (!v5)
    {

      goto LABEL_7;
    }

LABEL_9:
    v10 = v5;
    sub_1DD408AE4();
    v11 = sub_1DD640118();

    goto LABEL_10;
  }

LABEL_7:
  objc_opt_self();
  OUTLINED_FUNCTION_6_9();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v4 = a1;
    v5 = [v9 recipients];
    if (v5)
    {
      goto LABEL_9;
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
  v87 = MEMORY[0x1E69E7CC0];
  result = sub_1DD5DA164(a1);
  if (!result)
  {
LABEL_10:
    result = sub_1DD3CC020(v11);
    v13 = result;
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v13 == v14)
      {

        return v15;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1E12B2C10](v14, v11);
      }

      else
      {
        if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        result = *(v11 + 8 * v14 + 32);
      }

      if (__OFADD__(v14, 1))
      {
        break;
      }

      sub_1DD5D8978(result, __src);
      result = memcpy(__dst, __src, sizeof(__dst));
      if (*(&__src[0] + 1))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = *(v15 + 16);
          sub_1DD3BF370();
          v15 = v19;
        }

        v17 = *(v15 + 16);
        v16 = *(v15 + 24);
        if (v17 >= v16 >> 1)
        {
          OUTLINED_FUNCTION_23_4(v16);
          sub_1DD3BF370();
          v15 = v20;
        }

        memcpy(v85, __dst, sizeof(v85));
        *(v15 + 16) = v17 + 1;
        result = memcpy((v15 + 80 * v17 + 32), v85, 0x50uLL);
        ++v14;
      }

      else
      {
        ++v14;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v21 = result;
  v22 = 0;
  v23 = result + 64;
  v24 = 1 << *(result + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(result + 64);
  v27 = (v24 + 63) >> 6;
  v81 = v27;
  v82 = result;
  while (v26)
  {
LABEL_35:
    v29 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v30 = v29 | (v22 << 6);
    v31 = *(v21 + 56);
    v32 = (*(v21 + 48) + 16 * v30);
    v34 = *v32;
    v33 = v32[1];
    sub_1DD395720(v31 + 32 * v30, &__src[1]);
    *&__dst[0] = v34;
    *(&__dst[0] + 1) = v33;
    v35 = sub_1DD400AE4(&__src[1], &__dst[1]);
    v43 = OUTLINED_FUNCTION_8_70(v35, v36, v37, v38, v39, v40, v41, v42, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0], v85[1], v85[2], v85[3], v85[4], v85[5], v85[6], v85[7], v85[8], v85[9], __dst[0]);
    sub_1DD4DDC08(v43, v44, &qword_1ECCDF880, &qword_1DD6613B8);

    sub_1DD408AE4();
    v45 = swift_dynamicCast();
    if (v45)
    {
      v53 = v84;
      MEMORY[0x1E12B23F0]();
      if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD640138();
      }

      sub_1DD640168();

      result = sub_1DD390754(__dst, &qword_1ECCDF880, &qword_1DD6613B8);
      v11 = v87;
      v21 = v82;
    }

    else
    {
      v54 = OUTLINED_FUNCTION_8_70(v45, v46, v47, v48, v49, v50, v51, v52, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0], v85[1], v85[2], v85[3], v85[4], v85[5], v85[6], v85[7], v85[8], v85[9], __dst[0]);
      sub_1DD4DDC08(v54, v55, &qword_1ECCDF880, &qword_1DD6613B8);

      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF420, &unk_1DD65F3E0);
      if (swift_dynamicCast())
      {
        v79 = v56;
        if (v84 >> 62)
        {
          v57 = sub_1DD6407B8();
        }

        else
        {
          v57 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v58 = v11 >> 62;
        if (v11 >> 62)
        {
          result = sub_1DD6407B8();
        }

        else
        {
          result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v59 = result + v57;
        if (__OFADD__(result, v57))
        {
          goto LABEL_77;
        }

        result = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (result)
        {
          if (v58)
          {
            goto LABEL_53;
          }

          v60 = v11 & 0xFFFFFFFFFFFFFF8;
          if (v59 <= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v58)
          {
LABEL_53:
            sub_1DD6407B8();
            goto LABEL_54;
          }

          v60 = v11 & 0xFFFFFFFFFFFFFF8;
        }

        v61 = *(v60 + 16);
LABEL_54:
        result = sub_1DD640918();
        v11 = result;
        v60 = result & 0xFFFFFFFFFFFFFF8;
LABEL_55:
        v62 = *(v60 + 16);
        v63 = (*(v60 + 24) >> 1) - v62;
        v64 = v60 + 8 * v62;
        v80 = v60;
        if (v84 >> 62)
        {
          v66 = sub_1DD6407B8();
          if (v66)
          {
            v67 = v66;
            result = sub_1DD6407B8();
            if (v63 < result)
            {
              goto LABEL_81;
            }

            v76 = result;
            v77 = v23;
            v78 = v57;
            if (v67 < 1)
            {
              goto LABEL_82;
            }

            v83 = v64 + 32;
            sub_1DD5B6244();
            for (i = 0; i != v67; ++i)
            {
              v69 = sub_1DD5B5E98(v85, i, v84);
              v71 = *v70;
              v69(v85, 0);
              *(v83 + 8 * i) = v71;
            }

            v21 = v82;
            v65 = v76;
            v23 = v77;
            goto LABEL_65;
          }
        }

        else
        {
          v65 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v65)
          {
            v78 = v57;
            if (v63 < v65)
            {
              goto LABEL_80;
            }

            swift_arrayInitWithCopy();
            v21 = v82;
LABEL_65:

            v27 = v81;
            if (v65 < v78)
            {
              goto LABEL_78;
            }

            if (v65 > 0)
            {
              v72 = *(v80 + 16);
              v73 = __OFADD__(v72, v65);
              v74 = v72 + v65;
              if (v73)
              {
                goto LABEL_79;
              }

              *(v80 + 16) = v74;
            }

            goto LABEL_70;
          }
        }

        v27 = v81;
        v21 = v82;
        if (v57 > 0)
        {
          goto LABEL_78;
        }

LABEL_70:
        v87 = v11;
        result = sub_1DD390754(__dst, &qword_1ECCDF880, &qword_1DD6613B8);
      }

      else
      {
        result = sub_1DD390754(__dst, &qword_1ECCDF880, &qword_1DD6613B8);
        v21 = v82;
      }
    }
  }

  while (1)
  {
    v28 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v28 >= v27)
    {

      goto LABEL_10;
    }

    v26 = *(v23 + 8 * v28);
    ++v22;
    if (v26)
    {
      v22 = v28;
      goto LABEL_35;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

unint64_t *sub_1DD5D6CEC(uint64_t a1)
{
  v2 = v1;
  v110 = *MEMORY[0x1E69E9840];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF888, &unk_1DD6613C0);
  v4 = OUTLINED_FUNCTION_7(v102);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_4();
  v101 = (v7 - v8);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v9);
  v97 = v91 - v10;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v11);
  v103 = (v91 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v91 - v15;
  v17 = type metadata accessor for StitchableInteraction();
  v18 = OUTLINED_FUNCTION_0(v17);
  v99 = v19;
  v100 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_4();
  v98 = v22 - v23;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v24);
  v95 = v91 - v25;
  v26 = sub_1DD63D078();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v32 = v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = swift_allocObject();
  *(v33 + 16) = MEMORY[0x1E69E7CC0];
  v92 = v33 + 16;
  v104 = [objc_opt_self() sharedConnection];
  sub_1DD41859C(&unk_1F58AAF78);
  v96 = sub_1DD640258();

  v34 = *(v29 + 16);
  v93 = a1;
  v34(v32, a1, v26);
  v35 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v36 = (v31 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v32;
  v39 = v26;
  v40 = v33;
  (*(v29 + 32))(v37 + v35, v38, v39);
  *(v37 + v36) = v33;
  v108 = sub_1DD5DA254;
  v109 = v37;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v106 = sub_1DD3CBCD0;
  v107 = &block_descriptor_22;
  v41 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v42 = v104;
  v43 = v96;
  LODWORD(v35) = [v104 accessBundleContentForBundleIdentifiers:v96 withBlock:v41 error:&aBlock];
  _Block_release(v41);

  v44 = aBlock;
  if (v35)
  {
    v91[1] = v40;
    v96 = v29;
    v45 = v92;
    swift_beginAccess();
    v46 = *v45;
    v47 = *(*v45 + 16);
    v48 = v44;

    v49 = 0;
    v50 = (v46 + 56);
    v104 = MEMORY[0x1E69E7CC0];
    while (v47 != v49)
    {
      if (v49 >= *(v46 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        sub_1DD586B20(v104);
        v104 = v90;
LABEL_15:
        v61 = v96;
        v62 = v104;
        v63 = v104[2];
        v95 = v104 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
        *&aBlock = v95;
        *(&aBlock + 1) = v63;
        sub_1DD5D90CC(&aBlock);
        v92 = v2;
        v2 = sub_1DD63FC88();
        v64 = 0;
        v98 = v62[2];
        v94 = v39;
        while (1)
        {
          if (v98 == v64)
          {
            (*(v61 + 8))(v93, v39);

            goto LABEL_28;
          }

          if (v64 >= v104[2])
          {
            goto LABEL_30;
          }

          v65 = v95 + *(v99 + 72) * v64;
          v66 = v102;
          v67 = v103;
          v68 = *(v102 + 48);
          v100 = v64;
          *v103 = v64;
          sub_1DD5DA35C(v65, v67 + v68, type metadata accessor for StitchableInteraction);
          v69 = v97;
          sub_1DD4DDC08(v67, v97, &qword_1ECCDF888, &unk_1DD6613C0);
          v70 = v69 + *(v66 + 48);
          v39 = *(v70 + 16);
          v71 = *(v70 + 24);

          sub_1DD5DA3BC(v70, type metadata accessor for StitchableInteraction);
          v72 = v101;
          sub_1DD4DDC08(v67, v101, &qword_1ECCDF888, &unk_1DD6613C0);
          v73 = *v72;
          swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v2;
          v74 = sub_1DD3978DC();
          if (__OFADD__(*(v2 + 16), (v75 & 1) == 0))
          {
            goto LABEL_31;
          }

          v76 = v74;
          v77 = v75;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF1B0, &unk_1DD643EE0);
          if (sub_1DD640A08())
          {
            v78 = sub_1DD3978DC();
            if ((v77 & 1) != (v79 & 1))
            {
              result = sub_1DD640D58();
              __break(1u);
              return result;
            }

            v76 = v78;
          }

          if (v77)
          {

            v2 = aBlock;
            v80 = OUTLINED_FUNCTION_11_50();
            sub_1DD390754(v80, v81, &unk_1DD6613C0);
          }

          else
          {
            v2 = aBlock;
            *(aBlock + 8 * (v76 >> 6) + 64) |= 1 << v76;
            v82 = (*(v2 + 48) + 16 * v76);
            *v82 = v39;
            v82[1] = v71;
            v83 = OUTLINED_FUNCTION_11_50();
            sub_1DD390754(v83, v84, &unk_1DD6613C0);
            v85 = *(v2 + 16);
            v86 = __OFADD__(v85, 1);
            v87 = v85 + 1;
            if (v86)
            {
              goto LABEL_32;
            }

            *(v2 + 16) = v87;
          }

          sub_1DD5DA3BC(v101 + *(v102 + 48), type metadata accessor for StitchableInteraction);
          v64 = v100 + 1;
          v39 = v94;
          v61 = v96;
        }
      }

      v52 = *(v50 - 1);
      v51 = *v50;
      aBlock = *(v50 - 3);
      v106 = v52;
      v107 = v51;
      sub_1DD5D777C(&aBlock, v16);
      if (__swift_getEnumTagSinglePayload(v16, 1, v100) == 1)
      {
        sub_1DD390754(v16, &qword_1ECCDC1B0, &unk_1DD6454F0);
      }

      else
      {
        v53 = v95;
        sub_1DD5DA2F8(v16, v95);
        sub_1DD5DA2F8(v53, v98);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = v104[2];
          sub_1DD3C085C();
          v104 = v58;
        }

        v55 = v104[2];
        v54 = v104[3];
        if (v55 >= v54 >> 1)
        {
          OUTLINED_FUNCTION_23_4(v54);
          sub_1DD3C085C();
          v104 = v59;
        }

        v56 = v104;
        v104[2] = v55 + 1;
        sub_1DD5DA2F8(v98, v56 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v55);
      }

      v50 += 4;
      ++v49;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_15;
  }

  v60 = aBlock;
  sub_1DD63CD98();

  swift_willThrow();
  (*(v29 + 8))(v93, v39);

LABEL_28:
  v88 = *MEMORY[0x1E69E9840];
  return v104;
}

uint64_t sub_1DD5D7584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D078();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DD63CF78();
  v9 = sub_1DD3CE548(0, a1, v8, 2, 0, 0, 0x7FFFFFFFFFFFFFFFLL);
  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  v10 = *(a2 + 16);
  *(a2 + 16) = v9;
}

uint64_t sub_1DD5D777C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC170, &qword_1DD645270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v61 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  v15 = sub_1DD63D078();
  v67 = *(v15 - 8);
  v68 = v15;
  v16 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x1EEE9AC00](v19).n128_u64[0];
  v69 = &v61 - v21;
  v22 = *(a1 + 24);
  v23 = [v22 intent];
  v24 = [v23 _className];

  v64 = sub_1DD63FDD8();
  v26 = v25;

  if ([v22 intentHandlingStatus] != 3)
  {

    v35 = type metadata accessor for StitchableInteraction();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v35);
  }

  v27 = sub_1DD582C90([v22 intent]);
  if (v28)
  {
    v29 = v28;
    v62 = v27;
    v63 = v26;
    v30 = [v22 dateInterval];
    v31 = a2;
    if (v30)
    {
      v32 = v30;
      sub_1DD63C818();

      v33 = sub_1DD63C868();
      v34 = 0;
    }

    else
    {
      v33 = sub_1DD63C868();
      v34 = 1;
    }

    __swift_storeEnumTagSinglePayload(v11, v34, 1, v33);
    sub_1DD4DDCBC(v11, v14, &qword_1ECCDC170, &qword_1DD645270);
    sub_1DD63C868();
    if (__swift_getEnumTagSinglePayload(v14, 1, v33))
    {

      v39 = v14;
    }

    else
    {
      sub_1DD63C848();
      sub_1DD390754(v14, &qword_1ECCDC170, &qword_1DD645270);
      v40 = v67;
      v41 = v68;
      (*(v67 + 32))(v69, v18, v68);
      v42 = [v22 dateInterval];
      if (v42)
      {
        v43 = v42;
        v44 = v65;
        sub_1DD63C818();

        v45 = 0;
      }

      else
      {
        v45 = 1;
        v44 = v65;
      }

      __swift_storeEnumTagSinglePayload(v44, v45, 1, v33);
      v46 = v66;
      sub_1DD4DDCBC(v44, v66, &qword_1ECCDC170, &qword_1DD645270);
      if (!__swift_getEnumTagSinglePayload(v46, 1, v33))
      {
        v48 = v40;
        sub_1DD63C858();
        v50 = v49;
        sub_1DD390754(v46, &qword_1ECCDC170, &qword_1DD645270);
        v51 = type metadata accessor for StitchableInteraction();
        v52 = *(v40 + 16);
        v53 = v31 + v51[6];
        v66 = v29;
        v54 = v69;
        v52(v53, v69, v41);
        v55 = [v22 _donatedBySiri];
        v56 = [v22 intent];
        v57 = sub_1DD5D6624(v56);

        (*(v48 + 8))(v54, v41);
        v59 = v62;
        v58 = v63;
        *v31 = v64;
        v31[1] = v58;
        v60 = v66;
        v31[2] = v59;
        v31[3] = v60;
        *(v31 + v51[7]) = v50;
        *(v31 + v51[8]) = v55;
        *(v31 + v51[9]) = v57;
        v38 = v31;
        v47 = 0;
        v37 = v51;
        return __swift_storeEnumTagSinglePayload(v38, v47, 1, v37);
      }

      (*(v40 + 8))(v69, v41);

      v39 = v46;
    }

    sub_1DD390754(v39, &qword_1ECCDC170, &qword_1DD645270);
    v37 = type metadata accessor for StitchableInteraction();
    v38 = v31;
  }

  else
  {

    v37 = type metadata accessor for StitchableInteraction();
    v38 = a2;
  }

  v47 = 1;
  return __swift_storeEnumTagSinglePayload(v38, v47, 1, v37);
}

uint64_t sub_1DD5D7CD4()
{
  v0 = *(type metadata accessor for StitchableInteraction() + 24);
  sub_1DD63D078();
  OUTLINED_FUNCTION_2_60();
  sub_1DD5DA740(v1);
  if (sub_1DD63FD68())
  {
    return 0;
  }

  else
  {
    return sub_1DD63CFC8() & 1;
  }
}

uint64_t sub_1DD5D7D70(void *a1, uint64_t a2)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v65 = *(matched - 8);
  v5 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](matched - 8);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ContactResolverRunTimeData(0);
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for RunTimeDataRecord();
  v12 = *(a2 + *(result + 24));
  v56 = *(v12 + 16);
  if (v56)
  {
    v13 = 0;
    v57 = v12 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v67 = a1;
    v61 = v7;
    v55 = v12;
    while (v13 < *(v12 + 16))
    {
      v14 = *(v60 + 72);
      v59 = v13;
      v15 = v58;
      sub_1DD5DA35C(v57 + v14 * v13, v58, type metadata accessor for ContactResolverRunTimeData);
      v16 = *(v15 + 296);

      sub_1DD5DA3BC(v15, type metadata accessor for ContactResolverRunTimeData);
      v64 = *(v16 + 16);
      if (v64)
      {
        v17 = 0;
        v18 = *(v65 + 80);
        v62 = v16;
        v63 = v16 + ((v18 + 32) & ~v18);
        while (v17 < *(v16 + 16))
        {
          v19 = *(v65 + 72);
          v66 = v17;
          sub_1DD5DA35C(v63 + v19 * v17, v7, type metadata accessor for ContactMatchRuntimeData);
          v20 = v7[1];
          v71 = *v7;
          v21 = *(v7 + *(type metadata accessor for Contact() + 80));
          v22 = *(v21 + 16);
          if (v22)
          {
            v72 = MEMORY[0x1E69E7CC0];
            sub_1DD42A2D4();
            v23 = v72;
            v24 = (v21 + 96);
            do
            {
              v25 = *(v24 - 1);
              v26 = *v24;
              v72 = v23;
              v28 = v23[2];
              v27 = v23[3];

              if (v28 >= v27 >> 1)
              {
                sub_1DD42A2D4();
                v23 = v72;
              }

              v23[2] = v28 + 1;
              v29 = &v23[2 * v28];
              v29[4] = v25;
              v29[5] = v26;
              v24 += 10;
              --v22;
            }

            while (v22);
            v30 = v28 + 1;
LABEL_14:
            v31 = 0;
            v32 = v23 + 5;
            v69 = v23;
            v70 = v20;
            v68 = v30;
            while (v31 < v23[2])
            {
              v34 = *(v32 - 1);
              v33 = *v32;

              v35 = *a1;
              swift_isUniquelyReferenced_nonNull_native();
              v72 = *a1;
              v36 = v72;
              v37 = sub_1DD3978DC();
              if (__OFADD__(v36[2], (v38 & 1) == 0))
              {
                goto LABEL_30;
              }

              v39 = v37;
              v40 = v38;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC328, &qword_1DD6521F0);
              if (sub_1DD640A08())
              {
                v41 = sub_1DD3978DC();
                if ((v40 & 1) != (v42 & 1))
                {
                  goto LABEL_34;
                }

                v39 = v41;
              }

              if (v40)
              {

                v43 = v72;
                v44 = (v72[7] + 16 * v39);
                v45 = v44[1];
                v46 = v70;
                *v44 = v71;
                v44[1] = v46;
              }

              else
              {
                v43 = v72;
                v72[(v39 >> 6) + 8] |= 1 << v39;
                v47 = (v43[6] + 16 * v39);
                *v47 = v34;
                v47[1] = v33;
                v48 = (v43[7] + 16 * v39);
                v49 = v70;
                *v48 = v71;
                v48[1] = v49;
                v50 = v43[2];
                v51 = __OFADD__(v50, 1);
                v52 = v50 + 1;
                if (v51)
                {
                  goto LABEL_31;
                }

                v43[2] = v52;
              }

              ++v31;
              a1 = v67;
              v53 = v68;
              *v67 = v43;
              v32 += 2;
              v23 = v69;
              if (v53 == v31)
              {
                v7 = v61;
                goto LABEL_26;
              }
            }

            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            break;
          }

          v23 = MEMORY[0x1E69E7CC0];
          v30 = *(MEMORY[0x1E69E7CC0] + 16);
          if (v30)
          {
            goto LABEL_14;
          }

LABEL_26:
          v17 = v66 + 1;

          sub_1DD5DA3BC(v7, type metadata accessor for ContactMatchRuntimeData);
          v16 = v62;
          if (v17 == v64)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
        break;
      }

LABEL_27:

      v13 = v59 + 1;
      v12 = v55;
      if (v59 + 1 == v56)
      {
        return result;
      }
    }

    __break(1u);
LABEL_34:
    result = sub_1DD640D58();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD5D8234(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6574616E6F447369 && a2 == 0xEF69726953794264;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x656C706F6570 && a2 == 0xE600000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD640CD8();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD5D8430(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x7461447472617473;
      break;
    case 3:
      result = 0x6E6F697461727564;
      break;
    case 4:
      result = 0x6574616E6F447369;
      break;
    case 5:
      result = 0x656C706F6570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5D84EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF8A0, &qword_1DD6615C0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v23[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5DA6EC();
  sub_1DD640EF8();
  v14 = *v3;
  v15 = v3[1];
  v28 = 0;
  OUTLINED_FUNCTION_32();
  sub_1DD640C18();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    OUTLINED_FUNCTION_9_58();
    OUTLINED_FUNCTION_32();
    sub_1DD640C18();
    v18 = type metadata accessor for StitchableInteraction();
    v19 = v18[6];
    v27 = 2;
    sub_1DD63D078();
    sub_1DD5DA740(&unk_1EE165CD0);
    OUTLINED_FUNCTION_32();
    sub_1DD640C68();
    v20 = *(v3 + v18[7]);
    v26 = 3;
    OUTLINED_FUNCTION_32();
    sub_1DD640C38();
    v21 = *(v3 + v18[8]);
    v25 = 4;
    OUTLINED_FUNCTION_32();
    sub_1DD640C28();
    v24 = *(v3 + v18[9]);
    v23[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF8A8, &qword_1DD6615C8);
    sub_1DD5DA780();
    OUTLINED_FUNCTION_32();
    sub_1DD640C68();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1DD5D873C()
{
  v0 = sub_1DD640AA8();

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

uint64_t sub_1DD5D8798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5D8234(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5D87C0(uint64_t a1)
{
  v2 = sub_1DD5DA6EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5D87FC(uint64_t a1)
{
  v2 = sub_1DD5DA6EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD5D8874@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD5D873C();
  *a2 = result;
  return result;
}

uint64_t sub_1DD5D88A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD3A7D80(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD5D88D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD5D873C();
  *a1 = result;
  return result;
}

uint64_t sub_1DD5D8900(uint64_t a1)
{
  v2 = sub_1DD5DA698();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5D893C(uint64_t a1)
{
  v2 = sub_1DD5DA698();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD5D8978(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4C8, &unk_1DD646850);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_1_4();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  v19 = sub_1DD4E0980(a1);
  if (v20)
  {
    v21 = v19;
    v22 = v20;
  }

  else
  {
    v23 = sub_1DD5DA1D0(a1);
    v22 = v24;
    if (!v24)
    {

      goto LABEL_12;
    }

    v21 = v23;
  }

  v25 = [a1 personHandle];
  if (!v25)
  {

    v22 = 0;
LABEL_12:
    OUTLINED_FUNCTION_7_65();
    v27 = 0;
    goto LABEL_13;
  }

  sub_1DD3E79C0(v25);
  v27 = v26;
  if (!v26)
  {

    v22 = 0;
    OUTLINED_FUNCTION_7_65();
LABEL_13:
    v37 = 0;
    v38 = 0;
    goto LABEL_24;
  }

  v49 = v21;
  v28 = sub_1DD40B5BC();
  v47 = v29;
  v48 = v28;

  v30 = [a1 nameComponents];
  if (v30)
  {
    v31 = v30;
    sub_1DD63CCC8();

    v32 = sub_1DD63CD18();
    v33 = 0;
  }

  else
  {
    v32 = sub_1DD63CD18();
    v33 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v33, 1, v32);
  sub_1DD4DDCBC(v15, v18, &qword_1ECCDC4C8, &unk_1DD646850);
  sub_1DD63CD18();
  v2 = 0;
  v15 = 0;
  if (!__swift_getEnumTagSinglePayload(v18, 1, v32))
  {
    v2 = sub_1DD63CC08();
    v15 = v39;
  }

  sub_1DD390754(v18, &qword_1ECCDC4C8, &unk_1DD646850);
  v40 = [a1 nameComponents];
  if (v40)
  {
    v41 = v40;
    sub_1DD63CCC8();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v42, 1, v32);
  sub_1DD4DDCBC(v9, v12, &qword_1ECCDC4C8, &unk_1DD646850);
  if (__swift_getEnumTagSinglePayload(v12, 1, v32))
  {
    v18 = 0;
    v27 = 0;
  }

  else
  {
    v18 = sub_1DD63CC28();
    v27 = v43;
  }

  sub_1DD390754(v12, &qword_1ECCDC4C8, &unk_1DD646850);
  v44 = [a1 displayName];
  v37 = sub_1DD63FDD8();
  v38 = v45;

  v35 = v48;
  v34 = v49;
  v36 = v47;
LABEL_24:
  *a2 = v34;
  a2[1] = v22;
  a2[2] = v35;
  a2[3] = v36;
  a2[4] = v2;
  a2[5] = v15;
  a2[6] = v18;
  a2[7] = v27;
  a2[8] = v37;
  a2[9] = v38;
}

uint64_t sub_1DD5D8CDC(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {
    return 1;
  }

  v7 = a1[3];
  v8 = a2[3];
  v5 = v7 != 0;
  if (!v7)
  {
    if (!v8)
    {
      return v5;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = a1[2] == a2[2] && v7 == v8;
  if (!v9 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  return v5;
}

uint64_t sub_1DD5D8D7C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD63FD28();
  if (!v0[3])
  {
    return sub_1DD640E48();
  }

  v3 = v0[2];
  sub_1DD640E48();

  return sub_1DD63FD28();
}

uint64_t sub_1DD5D8DFC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF898, &qword_1DD6615B8);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5DA698();
  sub_1DD640EF8();
  v14 = *v3;
  v15 = v3[1];
  v19[15] = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    OUTLINED_FUNCTION_9_58();
    sub_1DD640BC8();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1DD5D8F48()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DD640E28();
  sub_1DD63FD28();
  sub_1DD640E48();
  if (v4)
  {
    sub_1DD63FD28();
  }

  return sub_1DD640E78();
}

uint64_t type metadata accessor for StitchableInteraction()
{
  result = qword_1EE1619C0;
  if (!qword_1EE1619C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD5D9044()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DD640E28();
  sub_1DD63FD28();
  sub_1DD640E48();
  if (v4)
  {
    sub_1DD63FD28();
  }

  return sub_1DD640E78();
}

void sub_1DD5D90CC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1DD640CA8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for StitchableInteraction();
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for StitchableInteraction() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DD5D9420(v8, v9, a1, v4);
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
    sub_1DD5D91FC(0, v2, 1, a1);
  }
}

void sub_1DD5D91FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = type metadata accessor for StitchableInteraction();
  v8 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v33 = v20;
      v34 = a3;
      v31 = v23;
      v32 = v22;
      v24 = v36;
      do
      {
        sub_1DD5DA35C(v23, v17, type metadata accessor for StitchableInteraction);
        sub_1DD5DA35C(v20, v13, type metadata accessor for StitchableInteraction);
        v25 = *(v24 + 24);
        v26 = sub_1DD63CFC8();
        sub_1DD5DA3BC(v13, type metadata accessor for StitchableInteraction);
        sub_1DD5DA3BC(v17, type metadata accessor for StitchableInteraction);
        if ((v26 & 1) == 0)
        {
          break;
        }

        if (!v35)
        {
          __break(1u);
          return;
        }

        sub_1DD5DA2F8(v23, v10);
        v24 = v36;
        swift_arrayInitWithTakeFrontToBack();
        sub_1DD5DA2F8(v10, v20);
        v20 += v21;
        v23 += v21;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v34 + 1;
      v20 = v33 + v29;
      v22 = v32 - 1;
      v23 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1DD5D9420(uint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v4;
  v106 = a1;
  v9 = type metadata accessor for StitchableInteraction();
  v115 = *(v9 - 8);
  v10 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v119 = &v103 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v120 = &v103 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v103 - v17;
  v117 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v5 = *v106;
    if (!*v106)
    {
      goto LABEL_144;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v97 = v21 + 16;
      v98 = *(v21 + 2);
      for (i = v21; v98 >= 2; v21 = i)
      {
        if (!*v117)
        {
          goto LABEL_141;
        }

        v99 = &v21[16 * v98];
        v100 = *v99;
        v21 = &v97[2 * v98];
        v101 = *(v21 + 1);
        sub_1DD5D9CD8(*v117 + *(v115 + 72) * *v99, *v117 + *(v115 + 72) * *v21, *v117 + *(v115 + 72) * v101, v5);
        if (v6)
        {
          break;
        }

        if (v101 < v100)
        {
          goto LABEL_129;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_130;
        }

        *v99 = v100;
        *(v99 + 1) = v101;
        v102 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_131;
        }

        v98 = *v97 - 1;
        sub_1DD4EC4E4(v21 + 16, v102, v21);
        *v97 = v98;
      }

LABEL_113:

      return;
    }

LABEL_138:
    v21 = sub_1DD4EC2B8(v21);
    goto LABEL_105;
  }

  v105 = a4;
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v121 = v9;
  v111 = &v103 - v17;
  while (1)
  {
    v22 = v20++;
    i = v21;
    v107 = v22;
    if (v20 < v19)
    {
      v23 = *v117;
      v5 = *(v115 + 72);
      v24 = v22;
      v25 = *v117 + v5 * v20;
      v114 = v19;
      sub_1DD5DA35C(v25, v18, type metadata accessor for StitchableInteraction);
      v26 = v23 + v5 * v24;
      v27 = v120;
      sub_1DD5DA35C(v26, v120, type metadata accessor for StitchableInteraction);
      v28 = *(v9 + 24);
      LODWORD(v113) = sub_1DD63CFC8();
      sub_1DD5DA3BC(v27, type metadata accessor for StitchableInteraction);
      sub_1DD5DA3BC(v18, type metadata accessor for StitchableInteraction);
      v29 = v114;
      v30 = v107 + 2;
      v116 = v5;
      v21 = (v23 + v5 * (v107 + 2));
      while (1)
      {
        v31 = v30;
        if (++v20 >= v29)
        {
          break;
        }

        sub_1DD5DA35C(v21, v18, type metadata accessor for StitchableInteraction);
        v5 = v120;
        sub_1DD5DA35C(v25, v120, type metadata accessor for StitchableInteraction);
        v32 = *(v121 + 24);
        v33 = sub_1DD63CFC8() & 1;
        sub_1DD5DA3BC(v5, type metadata accessor for StitchableInteraction);
        sub_1DD5DA3BC(v18, type metadata accessor for StitchableInteraction);
        v21 += v116;
        v25 += v116;
        v30 = v31 + 1;
        v29 = v114;
        if ((v113 & 1) != v33)
        {
          goto LABEL_9;
        }
      }

      v20 = v29;
LABEL_9:
      if (v113)
      {
        v22 = v107;
        if (v20 < v107)
        {
          goto LABEL_135;
        }

        if (v107 >= v20)
        {
          v21 = i;
          v9 = v121;
          goto LABEL_32;
        }

        v104 = v6;
        if (v29 >= v31)
        {
          v34 = v31;
        }

        else
        {
          v34 = v29;
        }

        v35 = v116 * (v34 - 1);
        v36 = v107;
        v37 = v116 * v34;
        v38 = v107 * v116;
        v39 = v20;
        v21 = i;
        do
        {
          if (v36 != --v39)
          {
            v5 = *v117;
            if (!*v117)
            {
              goto LABEL_142;
            }

            sub_1DD5DA2F8(v5 + v38, v110);
            v40 = v38 < v35 || v5 + v38 >= v5 + v37;
            if (v40)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v38 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1DD5DA2F8(v110, v5 + v35);
            v21 = i;
          }

          ++v36;
          v35 -= v116;
          v37 -= v116;
          v38 += v116;
        }

        while (v36 < v39);
        v6 = v104;
      }

      else
      {
        v21 = i;
      }

      v9 = v121;
      v22 = v107;
    }

LABEL_32:
    v41 = v117[1];
    if (v20 < v41)
    {
      if (__OFSUB__(v20, v22))
      {
        goto LABEL_134;
      }

      if (v20 - v22 < v105)
      {
        break;
      }
    }

LABEL_50:
    if (v20 < v22)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v94 = *(v21 + 2);
      sub_1DD3BEB7C();
      v21 = v95;
    }

    v52 = *(v21 + 2);
    v53 = v52 + 1;
    if (v52 >= *(v21 + 3) >> 1)
    {
      sub_1DD3BEB7C();
      v21 = v96;
    }

    *(v21 + 2) = v53;
    v54 = v21 + 32;
    v55 = &v21[16 * v52 + 32];
    *v55 = v107;
    *(v55 + 1) = v20;
    v116 = *v106;
    if (!v116)
    {
      goto LABEL_143;
    }

    v56 = v18;
    if (v52)
    {
      i = v21;
      while (1)
      {
        v57 = v53 - 1;
        v58 = &v54[16 * v53 - 16];
        v59 = &v21[16 * v53];
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v60 = *(v21 + 4);
          v61 = *(v21 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_71:
          if (v63)
          {
            goto LABEL_120;
          }

          v75 = *v59;
          v74 = *(v59 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_123;
          }

          v79 = *(v58 + 1);
          v80 = v79 - *v58;
          if (__OFSUB__(v79, *v58))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v77, v80))
          {
            goto LABEL_128;
          }

          if (v77 + v80 >= v62)
          {
            if (v62 < v80)
            {
              v57 = v53 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        if (v53 < 2)
        {
          goto LABEL_122;
        }

        v82 = *v59;
        v81 = *(v59 + 1);
        v70 = __OFSUB__(v81, v82);
        v77 = v81 - v82;
        v78 = v70;
LABEL_86:
        if (v78)
        {
          goto LABEL_125;
        }

        v84 = *v58;
        v83 = *(v58 + 1);
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_127;
        }

        if (v85 < v77)
        {
          goto LABEL_100;
        }

LABEL_93:
        if (v57 - 1 >= v53)
        {
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v117)
        {
          goto LABEL_140;
        }

        v89 = &v54[16 * v57 - 16];
        v90 = *v89;
        v91 = v54;
        v5 = v57;
        v21 = &v54[16 * v57];
        v92 = *(v21 + 1);
        sub_1DD5D9CD8(*v117 + *(v115 + 72) * *v89, *v117 + *(v115 + 72) * *v21, *v117 + *(v115 + 72) * v92, v116);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v92 < v90)
        {
          goto LABEL_115;
        }

        v6 = *(i + 2);
        if (v5 > v6)
        {
          goto LABEL_116;
        }

        *v89 = v90;
        *(v89 + 1) = v92;
        if (v5 >= v6)
        {
          goto LABEL_117;
        }

        v53 = v6 - 1;
        sub_1DD4EC4E4(v21 + 16, v6 - 1 - v5, v21);
        v21 = i;
        *(i + 2) = v6 - 1;
        v93 = v6 > 2;
        v6 = 0;
        v9 = v121;
        v56 = v111;
        v54 = v91;
        if (!v93)
        {
          goto LABEL_100;
        }
      }

      v64 = &v54[16 * v53];
      v65 = *(v64 - 8);
      v66 = *(v64 - 7);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_118;
      }

      v69 = *(v64 - 6);
      v68 = *(v64 - 5);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_119;
      }

      v71 = *(v59 + 1);
      v72 = v71 - *v59;
      if (__OFSUB__(v71, *v59))
      {
        goto LABEL_121;
      }

      v70 = __OFADD__(v62, v72);
      v73 = v62 + v72;
      if (v70)
      {
        goto LABEL_124;
      }

      if (v73 >= v67)
      {
        v87 = *v58;
        v86 = *(v58 + 1);
        v70 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v70)
        {
          goto LABEL_132;
        }

        if (v62 < v88)
        {
          v57 = v53 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_71;
    }

LABEL_100:
    v19 = v117[1];
    v18 = v56;
    if (v20 >= v19)
    {
      goto LABEL_103;
    }
  }

  v42 = v22 + v105;
  if (__OFADD__(v22, v105))
  {
    goto LABEL_136;
  }

  if (v42 >= v41)
  {
    v42 = v117[1];
  }

  if (v42 < v22)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v20 == v42)
  {
    goto LABEL_50;
  }

  v104 = v6;
  v43 = *v117;
  v44 = *(v115 + 72);
  v5 = *v117 + v44 * (v20 - 1);
  v45 = -v44;
  v46 = v22 - v20;
  v108 = v44;
  v109 = v42;
  v47 = v43 + v20 * v44;
LABEL_41:
  v116 = v20;
  v112 = v47;
  v113 = v46;
  v114 = v5;
  while (1)
  {
    sub_1DD5DA35C(v47, v18, type metadata accessor for StitchableInteraction);
    v48 = v120;
    sub_1DD5DA35C(v5, v120, type metadata accessor for StitchableInteraction);
    v49 = *(v9 + 24);
    v50 = sub_1DD63CFC8();
    sub_1DD5DA3BC(v48, type metadata accessor for StitchableInteraction);
    sub_1DD5DA3BC(v18, type metadata accessor for StitchableInteraction);
    if ((v50 & 1) == 0)
    {
      v9 = v121;
LABEL_48:
      v20 = v116 + 1;
      v5 = v114 + v108;
      v46 = v113 - 1;
      v47 = v112 + v108;
      if (v116 + 1 == v109)
      {
        v20 = v109;
        v6 = v104;
        v21 = i;
        v22 = v107;
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    if (!v43)
    {
      break;
    }

    v51 = v119;
    sub_1DD5DA2F8(v47, v119);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_1DD5DA2F8(v51, v5);
    v5 += v45;
    v47 += v45;
    v40 = __CFADD__(v46++, 1);
    if (v40)
    {
      goto LABEL_48;
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
}

void sub_1DD5D9CD8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = type metadata accessor for StitchableInteraction();
  v8 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v19 = v15 / v14;
  v59 = a1;
  v58 = a4;
  v20 = v17 / v14;
  if (v15 / v14 >= v17 / v14)
  {
    sub_1DD3C1EE4(a2, v17 / v14, a4);
    v30 = a4 + v20 * v14;
    v31 = -v14;
    v32 = v30;
    v51 = a1;
    v52 = v31;
LABEL_36:
    v53 = a2 + v31;
    v54 = a2;
    v33 = a3;
    v34 = v32;
    v50 = v32;
    while (1)
    {
      if (v30 <= a4)
      {
        v59 = v54;
        v57 = v34;
        goto LABEL_58;
      }

      if (v54 <= a1)
      {
        break;
      }

      v49 = v34;
      v35 = a4;
      v36 = v33 + v31;
      v37 = v30 + v31;
      v38 = v33;
      sub_1DD5DA35C(v30 + v31, v12, type metadata accessor for StitchableInteraction);
      v39 = v12;
      v40 = v55;
      sub_1DD5DA35C(v53, v55, type metadata accessor for StitchableInteraction);
      v41 = *(v56 + 24);
      v42 = sub_1DD63CFC8();
      v43 = v40;
      v12 = v39;
      sub_1DD5DA3BC(v43, type metadata accessor for StitchableInteraction);
      sub_1DD5DA3BC(v39, type metadata accessor for StitchableInteraction);
      if (v42)
      {
        v46 = v38 < v54 || v36 >= v54;
        a4 = v35;
        if (v46)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v36;
          v32 = v49;
          a1 = v51;
          v31 = v52;
        }

        else
        {
          v16 = v38 == v54;
          v31 = v52;
          v47 = v53;
          a2 = v53;
          a3 = v36;
          v32 = v49;
          a1 = v51;
          if (!v16)
          {
            v32 = v49;
            swift_arrayInitWithTakeBackToFront();
            a2 = v47;
          }
        }

        goto LABEL_36;
      }

      v44 = v38 < v30 || v36 >= v30;
      a4 = v35;
      if (v44)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = v36;
        v30 = v37;
        v34 = v37;
        a1 = v51;
        v31 = v52;
        v32 = v50;
      }

      else
      {
        v34 = v37;
        v16 = v30 == v38;
        v33 = v36;
        v30 = v37;
        v45 = v36;
        a1 = v51;
        v31 = v52;
        v32 = v50;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = v45;
          v30 = v37;
          v34 = v37;
        }
      }
    }

    v59 = v54;
    v57 = v32;
  }

  else
  {
    sub_1DD3C1EE4(a1, v15 / v14, a4);
    v54 = a4 + v19 * v14;
    v57 = v54;
    while (a4 < v54 && a2 < a3)
    {
      v22 = a3;
      sub_1DD5DA35C(a2, v12, type metadata accessor for StitchableInteraction);
      v23 = a2;
      v24 = v55;
      sub_1DD5DA35C(a4, v55, type metadata accessor for StitchableInteraction);
      v25 = *(v56 + 24);
      v26 = sub_1DD63CFC8();
      sub_1DD5DA3BC(v24, type metadata accessor for StitchableInteraction);
      sub_1DD5DA3BC(v12, type metadata accessor for StitchableInteraction);
      if (v26)
      {
        a2 = v23 + v14;
        v27 = a1 < v23 || a1 >= a2;
        v28 = v23;
        if (v27)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v22;
        }

        else
        {
          a3 = v22;
          if (a1 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v23;
        if (a1 < a4 || a1 >= a4 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v22;
        }

        else
        {
          a3 = v22;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v58 = a4 + v14;
        a4 += v14;
      }

      a1 += v14;
      v59 = a1;
    }
  }

LABEL_58:
  sub_1DD4EC3EC(&v59, &v58, &v57);
}

uint64_t sub_1DD5DA164(void *a1)
{
  v1 = [a1 parametersByName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FC58();

  return v3;
}

uint64_t sub_1DD5DA1D0(void *a1)
{
  v1 = [a1 customIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t sub_1DD5DA234()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DD5D7CD4() & 1;
}

uint64_t sub_1DD5DA254()
{
  v1 = *(sub_1DD63D078() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DD5D7584(v0 + v2, v3);
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD5DA2F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StitchableInteraction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD5DA35C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD5DA3BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD5DA414(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_1DD5DA468(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriInference27ComparableContactNameValuesVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_1DD5DA534()
{
  sub_1DD63D078();
  if (v0 <= 0x3F)
  {
    sub_1DD5DA5E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD5DA5E0()
{
  if (!qword_1EE160300)
  {
    v0 = sub_1DD640178();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE160300);
    }
  }
}

unint64_t sub_1DD5DA644()
{
  result = qword_1ECCDF890;
  if (!qword_1ECCDF890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF890);
  }

  return result;
}

unint64_t sub_1DD5DA698()
{
  result = qword_1EE162750[0];
  if (!qword_1EE162750[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE162750);
  }

  return result;
}

unint64_t sub_1DD5DA6EC()
{
  result = qword_1EE1619E8[0];
  if (!qword_1EE1619E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1619E8);
  }

  return result;
}

uint64_t sub_1DD5DA740(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DD63D078();
    OUTLINED_FUNCTION_6_9();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD5DA780()
{
  result = qword_1EE1602F8;
  if (!qword_1EE1602F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDF8A8, &qword_1DD6615C8);
    sub_1DD5DA804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1602F8);
  }

  return result;
}

unint64_t sub_1DD5DA804()
{
  result = qword_1EE162738;
  if (!qword_1EE162738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162738);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StitchableInteraction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StitchablePerson.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5DAA14()
{
  result = qword_1ECCDF8B0;
  if (!qword_1ECCDF8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF8B0);
  }

  return result;
}

unint64_t sub_1DD5DAA6C()
{
  result = qword_1ECCDF8B8;
  if (!qword_1ECCDF8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF8B8);
  }

  return result;
}

unint64_t sub_1DD5DAAC4()
{
  result = qword_1EE1619D8;
  if (!qword_1EE1619D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1619D8);
  }

  return result;
}

unint64_t sub_1DD5DAB1C()
{
  result = qword_1EE1619E0;
  if (!qword_1EE1619E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1619E0);
  }

  return result;
}

unint64_t sub_1DD5DAB74()
{
  result = qword_1EE162740;
  if (!qword_1EE162740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162740);
  }

  return result;
}

unint64_t sub_1DD5DABCC()
{
  result = qword_1EE162748;
  if (!qword_1EE162748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162748);
  }

  return result;
}

uint64_t sub_1DD5DAC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DD63F5E8();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  (*(v7 + 16))(v11 - v10, a3, v4);
  v13 = (*(v7 + 88))(v12, v4);
  if (v13 == *MEMORY[0x1E69CF958])
  {
LABEL_2:
    (*(v7 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v13 != *MEMORY[0x1E69CF948] && v13 != *MEMORY[0x1E69CF950] && v13 != *MEMORY[0x1E69CF940])
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v15 = sub_1DD63F9F8();
    __swift_project_value_buffer(v15, qword_1EE16F068);
    v16 = sub_1DD63F9D8();
    v17 = sub_1DD640378();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DD38D000, v16, v17, "unknown ConfirmationResolution variant", v18, 2u);
      MEMORY[0x1E12B3DA0](v18, -1, -1);
    }

    goto LABEL_2;
  }

LABEL_6:

  return OUTLINED_FUNCTION_14_9();
}

uint64_t sub_1DD5DAE88()
{
  v4 = sub_1DD63F4D8();
  v5 = OUTLINED_FUNCTION_0(v4);
  v32 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_66();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = OUTLINED_FUNCTION_57_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_3(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  v18 = type metadata accessor for StitchedContactData(0);
  OUTLINED_FUNCTION_22_32(v18);
  v19 = type metadata accessor for StitchableInteraction();
  v20 = 1;
  OUTLINED_FUNCTION_33_17(v19, v21, v19);
  if (v3 == 1)
  {
    v22 = *(v2 + 36);
    if (*(v0 + v22))
    {
      v23 = *(v0 + v22);

      sub_1DD63F578();
      v24 = v32;
      (*(v32 + 104))(v1, *MEMORY[0x1E69CF8B0], v4);
      OUTLINED_FUNCTION_11_51();
      sub_1DD5DED1C(v25, v26);
      v27 = OUTLINED_FUNCTION_23_33();

      v28 = *(v24 + 8);
      v29 = OUTLINED_FUNCTION_14_9();
      v28(v29);
      (v28)(v11, v4);
      v20 = v27 ^ 1;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20 & 1;
}

BOOL sub_1DD5DB06C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  OUTLINED_FUNCTION_3(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = type metadata accessor for StitchableInteraction();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v13 = (v12 - v11);
  v14 = type metadata accessor for StitchedContactData(0);
  sub_1DD3DD9B4(v0 + *(v14 + 28), v6, &qword_1ECCDC1B0, &unk_1DD6454F0);
  OUTLINED_FUNCTION_36_16(v6);
  if (v23)
  {
    sub_1DD390754(v6, &qword_1ECCDC1B0, &unk_1DD6454F0);
    return 0;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_14_9();
    sub_1DD5DA2F8(v16, v17);
    v18 = *v13;
    v19 = v13[1];
    OUTLINED_FUNCTION_34_18();
    v23 = v20 == 0xD000000000000011 && v22 == v21;
    if (v23 || (v15 = 0, (OUTLINED_FUNCTION_26_27() & 1) != 0))
    {
      v15 = *(v13 + *(v7 + 28)) < 5.0;
    }

    OUTLINED_FUNCTION_14_44();
  }

  return v15;
}

uint64_t sub_1DD5DB1C4()
{
  v4 = sub_1DD63F4D8();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_66();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = OUTLINED_FUNCTION_57_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_3(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  v19 = type metadata accessor for StitchedContactData(0);
  OUTLINED_FUNCTION_22_32(v19);
  v20 = type metadata accessor for StitchableInteraction();
  OUTLINED_FUNCTION_33_17(v20, v21, v20);
  if (v3 == 1 || *(v0 + *(v2 + 44)) == 1)
  {
    v22 = *(v0 + 16);
    v23 = *(v0 + 24);
    OUTLINED_FUNCTION_34_18();
    v25 = v22 == 0xD000000000000011 && v24 == v23;
    if (v25 || (OUTLINED_FUNCTION_57_3(), (OUTLINED_FUNCTION_26_27() & 1) != 0) || ((OUTLINED_FUNCTION_34_18(), v22 == 0xD000000000000013) ? (v27 = v26 == v23) : (v27 = 0), v27 || (OUTLINED_FUNCTION_57_3(), (sub_1DD640CD8() & 1) != 0) || (v28 = *(v2 + 36), !*(v0 + v28))))
    {
      v35 = 0;
    }

    else
    {
      v29 = *(v0 + v28);

      sub_1DD63F578();
      (*(v7 + 104))(v1, *MEMORY[0x1E69CF8B0], v4);
      OUTLINED_FUNCTION_11_51();
      sub_1DD5DED1C(v30, v31);
      v32 = OUTLINED_FUNCTION_23_33();

      v33 = *(v7 + 8);
      v34 = OUTLINED_FUNCTION_14_9();
      v33(v34);
      (v33)(v12, v4);
      v35 = v32 ^ 1;
    }
  }

  else
  {
    v35 = 1;
  }

  return v35 & 1;
}

uint64_t sub_1DD5DB410()
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_7(v59);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v47 - v4;
  v58 = type metadata accessor for StitchedContactResolverRecommendation(0);
  v6 = OUTLINED_FUNCTION_0(v58);
  v60 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = type metadata accessor for StitchedContactResolverRequest(0);
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  result = type metadata accessor for StitchedContactData(0);
  if (*(v0 + *(result + 48)) != 1)
  {
    return 0;
  }

  v23 = *(v0 + 32);
  v51 = *(v23 + 16);
  if (!v51)
  {
    return 1;
  }

  v24 = 0;
  v25 = *(v13 + 24);
  v52 = v23 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v53 = v25;
  v55 = "ndoned";
  v56 = "ssistant_service";
  v49 = v21;
  v50 = v16;
  v48 = v23;
  while (v24 < *(v23 + 16))
  {
    v26 = *(v16 + 72);
    v54 = v24;
    sub_1DD5DE6A4(v52 + v26 * v24, v21, type metadata accessor for StitchedContactResolverRequest);
    v27 = *(v21 + v53);

    result = sub_1DD5DE64C(v21, type metadata accessor for StitchedContactResolverRequest);
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = 0;
      v57 = v27 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
      while (v29 < *(v27 + 16))
      {
        v30 = v29 + 1;
        sub_1DD5DE6A4(v57 + *(v60 + 72) * v29, v12, type metadata accessor for StitchedContactResolverRecommendation);
        v31 = type metadata accessor for ContactResolverRunTimeData(0);
        sub_1DD3DD9B4(v12 + *(v31 + 40), v5, &qword_1ECCDBEE0, &unk_1DD645510);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
          case 2u:
            sub_1DD390754(v5, &qword_1ECCDBEE0, &unk_1DD645510);
            goto LABEL_11;
          case 3u:
LABEL_11:
            v32 = sub_1DD640CD8();

            if (v32)
            {
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_15_49();
            goto LABEL_19;
          default:
            sub_1DD390754(v5, &qword_1ECCDBEE0, &unk_1DD645510);

LABEL_12:
            v33 = *(v12 + *(v31 + 48));
            v34 = v12 + *(v58 + 20);
            v35 = *v34;
            v36 = *(v34 + 8);
            v37 = *(v34 + 16);
            v38 = *(v34 + 24);
            v39 = OUTLINED_FUNCTION_32_20();
            sub_1DD458BE0(v39, v40, v41, v42);
            result = OUTLINED_FUNCTION_15_49();
            if (v38 != 255)
            {
              v43 = OUTLINED_FUNCTION_32_20();
              result = sub_1DD3E6340(v43, v44, v45, v46);
              if (!v33)
              {
LABEL_19:

                return 0;
              }
            }

            v29 = v30;
            if (v28 == v30)
            {
              goto LABEL_15;
            }

            break;
        }
      }

      __break(1u);
      break;
    }

LABEL_15:
    v24 = v54 + 1;

    result = 1;
    v16 = v50;
    v23 = v48;
    v21 = v49;
    if (v24 == v51)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD5DB828(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55[-v11 - 8];
  v13 = type metadata accessor for StitchableInteraction();
  v14 = OUTLINED_FUNCTION_7(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_66();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55[-v18 - 8];
  v20 = type metadata accessor for StitchedContactData(0);
  if (*(v1 + *(v20 + 48)))
  {
    return 2;
  }

  sub_1DD3DD9B4(v1 + *(v20 + 28), v12, &qword_1ECCDC1B0, &unk_1DD6454F0);
  OUTLINED_FUNCTION_36_16(v12);
  if (v22)
  {
    v21 = v12;
LABEL_8:
    sub_1DD390754(v21, &qword_1ECCDC1B0, &unk_1DD6454F0);
    return 2;
  }

  sub_1DD5DA2F8(v12, v19);
  sub_1DD3DD9B4(a1, v9, &qword_1ECCDC1B0, &unk_1DD6454F0);
  OUTLINED_FUNCTION_36_16(v9);
  if (v22)
  {
    OUTLINED_FUNCTION_14_44();
    v21 = v9;
    goto LABEL_8;
  }

  sub_1DD5DA2F8(v9, v2);
  v23 = *v19;
  v24 = v19[1];
  OUTLINED_FUNCTION_34_18();
  v26 = v23 == 0xD000000000000011 && v25 == v24;
  if (!v26 && (OUTLINED_FUNCTION_26_27() & 1) == 0 || (v23 == *v2 ? (v27 = v24 == v2[1]) : (v27 = 0), !v27 && (sub_1DD640CD8() & 1) == 0 || (v28 = v2 + v13[6], sub_1DD63CF88(), v30 = v29, v29 >= 30.0) || (*(v2 + v13[8]) & 1) != 0 || (v31 = *(v19 + v13[9]), *(v31 + 16) != 1) || (memcpy(__dst, (v31 + 32), sizeof(__dst)), v32 = *(v2 + v13[9]), *(v32 + 16) != 1)))
  {
    sub_1DD5DE64C(v2, type metadata accessor for StitchableInteraction);
    sub_1DD5DE64C(v19, type metadata accessor for StitchableInteraction);
    return 2;
  }

  v33 = __dst[0];
  v34 = __dst[1];
  memcpy(v57, (v32 + 32), 0x50uLL);
  v35 = v57[0];
  v36 = v57[1];
  KeyPath = swift_getKeyPath();
  sub_1DD3E6404(__dst, v55);
  sub_1DD3E6404(v57, v55);
  v54 = sub_1DD5DBD90(KeyPath, __dst, v57);

  v38 = swift_getKeyPath();
  v39 = sub_1DD5DBD90(v38, __dst, v57);

  v40 = swift_getKeyPath();
  v41 = sub_1DD5DBD90(v40, __dst, v57);

  if (v33 == v35 && v34 == v36)
  {
    v43 = 0x1000000;
  }

  else if (sub_1DD640CD8())
  {
    v43 = 0x1000000;
  }

  else
  {
    v43 = 0;
  }

  v45 = v57[3];
  if (__dst[3])
  {
    if (v57[3])
    {
      v46 = 0x100000000;
      v47 = __dst[2] == v57[2] && __dst[3] == v57[3];
      if (!v47 && (sub_1DD640CD8() & 1) == 0)
      {
        v46 = 0;
      }

      sub_1DD3E6460(v57);
      sub_1DD3E6460(__dst);
    }

    else
    {

      sub_1DD3E6460(v57);
      sub_1DD3E6460(__dst);
      v46 = 0;
    }

    goto LABEL_45;
  }

  sub_1DD3E6460(v57);
  result = sub_1DD3E6460(__dst);
  if (v45)
  {
    v46 = 0;
LABEL_45:

    goto LABEL_46;
  }

  v46 = 0x100000000;
LABEL_46:
  v48 = *(v2 + v13[7]);
  if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_59;
  }

  if (v48 <= -9.22337204e18)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v48 >= 9.22337204e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  result = sub_1DD55D7D8(v48);
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_63:
    __break(1u);
    return result;
  }

  v49 = result;
  v50 = sub_1DD55D7D8(v30);
  sub_1DD5DE64C(v2, type metadata accessor for StitchableInteraction);
  sub_1DD5DE64C(v19, type metadata accessor for StitchableInteraction);
  v51 = 256;
  if ((v39 & 1) == 0)
  {
    v51 = 0;
  }

  v52 = v51 & 0xFFFFFFFFFFFFFFFELL | v54 & 1;
  v53 = 0x10000;
  if ((v41 & 1) == 0)
  {
    v53 = 0;
  }

  return v52 | v53 | v43 | v46 | (v49 << 40) | (v50 << 48);
}

uint64_t sub_1DD5DBD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 40) == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
    v7 = 1;
    if (*(a3 + 40) == 1)
    {
      goto LABEL_8;
    }

LABEL_7:
    v18 = *(a3 + 32);
    v20 = *(a3 + 48);
    v22 = *(a3 + 56);
    v24 = *(a3 + 72);

    swift_getAtKeyPath();

    v5 = v15;
    v7 = v16;
    if (v6 == 1)
    {
      goto LABEL_8;
    }

    if (v16 != 1)
    {
      if (v6)
      {
        if (!v16)
        {
          sub_1DD3EB430(v15, 0);
          goto LABEL_10;
        }

        if (v4 != v15 || v6 != v16)
        {
          v10 = sub_1DD640CD8();
          sub_1DD3EB430(v15, v16);
          sub_1DD3EB430(v4, v6);
          return v10 & 1;
        }

        sub_1DD3EB430(v4, v6);
        v13 = v4;
        v14 = v6;
      }

      else
      {
        if (v16)
        {
          sub_1DD3EB430(v15, v16);
          v8 = v4;
          v9 = 0;
          goto LABEL_11;
        }

        v13 = v4;
        v14 = 0;
      }

      sub_1DD3EB430(v13, v14);
      v10 = 1;
      return v10 & 1;
    }

LABEL_10:
    v8 = v4;
    v9 = v6;
    goto LABEL_11;
  }

  v17 = *(a2 + 32);
  v19 = *(a2 + 48);
  v21 = *(a2 + 56);
  v23 = *(a2 + 72);

  swift_getAtKeyPath();

  v4 = v15;
  v6 = v16;
  if (*(a3 + 40) != 1)
  {
    goto LABEL_7;
  }

  if (v16 != 1)
  {
    goto LABEL_10;
  }

  v5 = 0;
  v7 = 1;
LABEL_8:
  v8 = v5;
  v9 = v7;
LABEL_11:
  sub_1DD3EB430(v8, v9);
  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1DD5DBFBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496B736174 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7954746E65746E69 && a2 == 0xEA00000000006570;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7374736575716572 && a2 == 0xE800000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001DLL && 0x80000001DD66C940 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6552746E65746E69 && a2 == 0xEC000000746C7573;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7475636578457369 && a2 == 0xEA00000000006465;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x486B636975517369 && a2 == 0xED00007075676E61;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7365636375537369 && a2 == 0xE900000000000073;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000018 && 0x80000001DD674770 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1DD640CD8();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_1DD5DC2F8(char a1)
{
  result = 0x64496B736174;
  switch(a1)
  {
    case 1:
      result = 0x7954746E65746E69;
      break;
    case 2:
      result = 0x7374736575716572;
      break;
    case 3:
      result = 0x7463617265746E69;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0x6552746E65746E69;
      break;
    case 6:
      result = 0x7475636578457369;
      break;
    case 7:
      result = 0x486B636975517369;
      break;
    case 8:
      result = 0x7365636375537369;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5DC444()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF8C8, &qword_1DD661B68);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_12_46();
  sub_1DD5DEC14();
  OUTLINED_FUNCTION_59_4();
  v6 = *v0;
  v7 = v0[1];
  OUTLINED_FUNCTION_32();
  sub_1DD640C18();
  if (!v1)
  {
    v8 = v0[2];
    v9 = v0[3];
    OUTLINED_FUNCTION_32();
    sub_1DD640C18();
    v20 = v0[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF8D0, &qword_1DD661B70);
    sub_1DD5DEC68();
    OUTLINED_FUNCTION_3_92();
    sub_1DD640C68();
    v10 = type metadata accessor for StitchedContactData(0);
    v11 = v10[7];
    type metadata accessor for StitchableInteraction();
    sub_1DD5DED1C(&qword_1EE1619D0, type metadata accessor for StitchableInteraction);
    OUTLINED_FUNCTION_3_92();
    sub_1DD640C08();
    v12 = v10[8];
    v21 = *(v0 + v12);
    v24 = *(v0 + v12 + 6);
    v23 = *(v0 + v12 + 4);
    sub_1DD45A940();
    OUTLINED_FUNCTION_10();
    sub_1DD640C08();
    v22 = *(v0 + v10[9]);
    sub_1DD63F588();
    sub_1DD5DED1C(&qword_1EE160350, MEMORY[0x1E69CF918]);
    OUTLINED_FUNCTION_3_92();
    sub_1DD640C08();
    v13 = *(v0 + v10[10]);
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    v14 = *(v0 + v10[11]);
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    v15 = *(v0 + v10[12]);
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    v16 = *(v0 + v10[13]);
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
  }

  v17 = OUTLINED_FUNCTION_16_50();
  return v18(v17);
}

uint64_t sub_1DD5DC77C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6769666E6F63 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E656D6D6F636572 && a2 == 0xEF736E6F69746164)
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

uint64_t sub_1DD5DC890(char a1)
{
  if (!a1)
  {
    return 0x6769666E6F63;
  }

  if (a1 == 1)
  {
    return 1702125924;
  }

  return 0x6E656D6D6F636572;
}

uint64_t sub_1DD5DC8E8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF930, &qword_1DD661B98);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_12_46();
  sub_1DD5DEFC0();
  OUTLINED_FUNCTION_59_4();
  type metadata accessor for PrivatizedContactResolverConfig(0);
  sub_1DD5DED1C(&qword_1EE163CC8, type metadata accessor for PrivatizedContactResolverConfig);
  OUTLINED_FUNCTION_3_92();
  sub_1DD640C68();
  if (!v1)
  {
    v6 = type metadata accessor for StitchedContactResolverRequest(0);
    v7 = *(v6 + 20);
    sub_1DD63D078();
    sub_1DD5DED1C(&unk_1EE165CD0, MEMORY[0x1E6969530]);
    OUTLINED_FUNCTION_3_92();
    sub_1DD640C68();
    v11 = *(v0 + *(v6 + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF938, &qword_1DD661BA0);
    sub_1DD5DF014();
    OUTLINED_FUNCTION_3_92();
    sub_1DD640C68();
  }

  v8 = OUTLINED_FUNCTION_16_50();
  return v9(v8);
}

uint64_t sub_1DD5DCAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5DBFBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5DCB1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD5DC2F0();
  *a1 = result;
  return result;
}

uint64_t sub_1DD5DCB44(uint64_t a1)
{
  v2 = sub_1DD5DEC14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5DCB80(uint64_t a1)
{
  v2 = sub_1DD5DEC14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD5DCBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5DC77C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5DCC04(uint64_t a1)
{
  v2 = sub_1DD5DEFC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5DCC40(uint64_t a1)
{
  v2 = sub_1DD5DEFC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD5DCC94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44656D69546E7572 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6F725072657375 && a2 == 0xEA00000000007470)
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

uint64_t sub_1DD5DCD68(char a1)
{
  if (a1)
  {
    return 0x6D6F725072657375;
  }

  else
  {
    return 0x44656D69546E7572;
  }
}

uint64_t sub_1DD5DCDAC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF940, &qword_1DD661BA8);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_12_46();
  sub_1DD5DF0C8();
  OUTLINED_FUNCTION_59_4();
  type metadata accessor for ContactResolverRunTimeData(0);
  sub_1DD5DED1C(&qword_1EE163E00, type metadata accessor for ContactResolverRunTimeData);
  OUTLINED_FUNCTION_3_92();
  sub_1DD640C68();
  if (!v1)
  {
    v6 = (v0 + *(type metadata accessor for StitchedContactResolverRecommendation(0) + 20));
    v10 = *v6;
    v11 = *(v6 + 2);
    v12 = *(v6 + 24);
    sub_1DD45A898();
    sub_1DD640C08();
  }

  v7 = OUTLINED_FUNCTION_16_50();
  return v8(v7);
}

uint64_t sub_1DD5DCF48()
{
  v0 = sub_1DD640AA8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD5DCF94(char a1)
{
  result = 6775156;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x6974756C6F736572;
      break;
    case 3:
      result = 7562345;
      break;
    case 4:
      result = 0x64657463656C6573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5DD028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5DCC94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5DD050(uint64_t a1)
{
  v2 = sub_1DD5DF0C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5DD08C(uint64_t a1)
{
  v2 = sub_1DD5DF0C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD5DD104@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD5DCF48();
  *a2 = result;
  return result;
}

uint64_t sub_1DD5DD134@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD5DCF94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD5DD168@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD5DCF48();
  *a1 = result;
  return result;
}

uint64_t sub_1DD5DD19C(uint64_t a1)
{
  v2 = sub_1DD5DED64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5DD1D8(uint64_t a1)
{
  v2 = sub_1DD5DED64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD5DD214(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF8D8, &qword_1DD661B78);
  OUTLINED_FUNCTION_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_21_5();
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5DED64();
  sub_1DD640EF8();
  if (a5)
  {
    OUTLINED_FUNCTION_32();
    sub_1DD640C18();
    if (!v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
      sub_1DD5DEEBC(&qword_1EE1638D0);
      OUTLINED_FUNCTION_3_92();
      sub_1DD640C68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
      sub_1DD5DEDB8(&qword_1ECCDF8E8);
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_20();
    OUTLINED_FUNCTION_32();
    sub_1DD640C18();
    if (!v5)
    {
      OUTLINED_FUNCTION_32();
      sub_1DD640C18();
      sub_1DD5DEE14();
LABEL_6:
      OUTLINED_FUNCTION_32();
      sub_1DD640C68();
    }
  }

  return (*(v11 + 8))(v6, v9);
}

uint64_t sub_1DD5DD4F4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF8F8, &qword_1DD661B80);
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1DD5DED64();
  OUTLINED_FUNCTION_24_24();
  if (!v1)
  {
    LOBYTE(v22) = 0;
    OUTLINED_FUNCTION_0_103();
    v7 = sub_1DD640B28();
    v9 = v8;
    v11 = v7 == OUTLINED_FUNCTION_30_20() && v9 == v10;
    if (v11 || (OUTLINED_FUNCTION_25_24() & 1) != 0)
    {

      OUTLINED_FUNCTION_0_103();
      v7 = sub_1DD640B28();
      sub_1DD5DEF18();
      sub_1DD640B78();
      v16 = OUTLINED_FUNCTION_67();
      v17(v16);
    }

    else
    {
      v15 = v7 == 0xD000000000000015 && 0x80000001DD668B10 == v9;
      if (v15 || (OUTLINED_FUNCTION_25_24() & 1) != 0 || (v7 == 0xD000000000000014 ? (v18 = 0x80000001DD668B30 == v9) : (v18 = 0), v18 || (OUTLINED_FUNCTION_25_24() & 1) != 0))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
        OUTLINED_FUNCTION_18_38(&qword_1EE160268);
        OUTLINED_FUNCTION_2_108();
        v7 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
        OUTLINED_FUNCTION_17_40(&qword_1ECCDF908);
        OUTLINED_FUNCTION_2_108();
        v20 = OUTLINED_FUNCTION_67();
        v21(v20);
      }

      else
      {
        sub_1DD5DEE68();
        swift_allocError();
        *v19 = v7;
        v19[1] = v9;
        swift_willThrow();
        v12 = OUTLINED_FUNCTION_67();
        v13(v12);
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_1DD5DD8E4()
{
  v0 = sub_1DD640AA8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD5DD930(char a1)
{
  result = 0x656D7269666E6F63;
  switch(a1)
  {
    case 1:
      result = 0x64657463656A6572;
      break;
    case 2:
      result = 0x656C6C65636E6163;
      break;
    case 3:
      result = 0x7465736E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5DD9B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DD5DD4F4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_1DD5DDA08(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DD3AEA94();
}

uint64_t sub_1DD5DDA2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD5DD8E4();
  *a2 = result;
  return result;
}

uint64_t sub_1DD5DDA5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD5DD930(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD5DDB40(unint64_t a1, unint64_t a2)
{
  v2 = 0;
  if (((a1 >> 8) & 1) != ((a2 >> 8) & 1) || ((a1 ^ a2) & 1) != 0 || ((a1 >> 16) & 1) != ((a2 >> 16) & 1) || ((a1 >> 24) & 1) != ((a2 >> 24) & 1) || (BYTE4(a1) & 1) != (BYTE4(a2) & 1))
  {
    return v2;
  }

  v3 = a2 & 0xFF0000000000;
  v4 = 0xA0000000000;
  if ((a1 & 0xFF0000000000) != 0xA0000000000)
  {
    if (v3 == 0xA0000000000)
    {
      return 0;
    }

    v3 = qword_1DD6622D0[(a1 << 16) >> 56];
    v4 = qword_1DD6622D0[(a2 << 16) >> 56];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v5 = a2 & 0xFF000000000000;
  if ((a1 & 0xFF000000000000) == 0xA000000000000)
  {
    if (v5 != 0xA000000000000)
    {
      return 0;
    }
  }

  else if (v5 == 0xA000000000000 || qword_1DD6622D0[(a1 << 8) >> 56] != qword_1DD6622D0[(a2 << 8) >> 56])
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1DD5DDC1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000026 && 0x80000001DD674790 == a2;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000027 && 0x80000001DD6747C0 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000028 && 0x80000001DD6747F0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001FLL && 0x80000001DD674820 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000028 && 0x80000001DD674840 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000019 && 0x80000001DD66C920 == a2;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD00000000000001CLL && 0x80000001DD674870 == a2)
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

unint64_t sub_1DD5DDE48(char a1)
{
  result = 0xD000000000000026;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000027;
      break;
    case 2:
    case 4:
      result = 0xD000000000000028;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5DDF00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF928, &qword_1DD661B90);
  OUTLINED_FUNCTION_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_12_46();
  sub_1DD5DEF6C();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_10();
  sub_1DD640C28();
  if (!v0)
  {
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    sub_1DD45A8EC();
    OUTLINED_FUNCTION_32();
    sub_1DD640C08();
    OUTLINED_FUNCTION_32();
    sub_1DD640C08();
  }

  v5 = OUTLINED_FUNCTION_16_50();
  return v6(v5);
}

uint64_t sub_1DD5DE0EC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF918, &qword_1DD661B88);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5DEF6C();
  OUTLINED_FUNCTION_24_24();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = 0;
  OUTLINED_FUNCTION_0_103();
  v12 = sub_1DD640B38();
  v32 = 1;
  OUTLINED_FUNCTION_0_103();
  v13 = sub_1DD640B38();
  v31 = 2;
  OUTLINED_FUNCTION_0_103();
  v14 = sub_1DD640B38();
  v30 = 3;
  OUTLINED_FUNCTION_0_103();
  v24 = sub_1DD640B38();
  v29 = 4;
  OUTLINED_FUNCTION_0_103();
  v22 = sub_1DD640B38();
  v27 = 5;
  v23 = sub_1DD45AC80();
  sub_1DD640B18();
  v21 = v28;
  v25 = 6;
  sub_1DD640B18();
  (*(v5 + 8))(v10, v3);
  v16 = v26;
  __swift_destroy_boxed_opaque_existential_1(a1);
  v17 = 0x100000000;
  if ((v22 & 1) == 0)
  {
    v17 = 0;
  }

  v18 = 0x1000000;
  if ((v24 & 1) == 0)
  {
    v18 = 0;
  }

  v19 = 0x10000;
  if ((v14 & 1) == 0)
  {
    v19 = 0;
  }

  v20 = 256;
  if ((v13 & 1) == 0)
  {
    v20 = 0;
  }

  return (v21 << 40) | (v16 << 48) | v12 & 1 | v20 | v19 | v18 | v17;
}

uint64_t sub_1DD5DE3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5DDC1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5DE3C8(uint64_t a1)
{
  v2 = sub_1DD5DEF6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5DE404(uint64_t a1)
{
  v2 = sub_1DD5DEF6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

int8x8_t sub_1DD5DE440@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD5DE0EC(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    v6 = vdupq_n_s64(v4);
    *v6.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v6, xmmword_1DD661840), vshlq_u64(v6, xmmword_1DD661830))), 0x1000100010001);
    result = vuzp1_s8(*v6.i8, *v6.i8);
    *(a2 + 1) = result.i32[0];
    *(a2 + 5) = BYTE5(v4);
    *(a2 + 6) = BYTE6(v4);
  }

  return result;
}

uint64_t sub_1DD5DE4B4()
{
  v1 = 0x100000000;
  if (!v0[4])
  {
    v1 = 0;
  }

  v2 = 0x1000000;
  if (!v0[3])
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if (!v0[2])
  {
    v3 = 0;
  }

  v4 = 256;
  if (!v0[1])
  {
    v4 = 0;
  }

  v5 = v4 | *v0 | v3 | v2 | v1 | (v0[5] << 40) | (v0[6] << 48);
  return sub_1DD5DDF00();
}

uint64_t sub_1DD5DE530(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[5];
  v7 = a1[6];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  if (a1[4])
  {
    v15 = 0x100000000;
  }

  else
  {
    v15 = 0;
  }

  v16 = v5 == 0;
  v17 = 0x1000000;
  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0x1000000;
  }

  v16 = v4 == 0;
  v19 = 0x10000;
  if (v16)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0x10000;
  }

  v16 = v3 == 0;
  v21 = 256;
  if (v16)
  {
    v22 = 0;
  }

  else
  {
    v22 = 256;
  }

  v23 = v22 | v2 | v20 | v18 | v15 | (v6 << 40) | (v7 << 48);
  if (v12)
  {
    v24 = 0x100000000;
  }

  else
  {
    v24 = 0;
  }

  if (!v11)
  {
    v17 = 0;
  }

  if (!v10)
  {
    v19 = 0;
  }

  if (!v9)
  {
    v21 = 0;
  }

  return sub_1DD5DDB40(v23, v21 | v8 | v19 | v17 | v24 | (v13 << 40) | (v14 << 48));
}

uint64_t sub_1DD5DE64C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD5DE6A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD5DE710(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
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

uint64_t sub_1DD5DE750(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

_DWORD *__swift_memcpy7_1(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PotentialRetryInteractionInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[7])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
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

uint64_t storeEnumTagSinglePayload for PotentialRetryInteractionInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1DD5DE888()
{
  type metadata accessor for PrivatizedContactResolverConfig(319);
  if (v0 <= 0x3F)
  {
    sub_1DD63D078();
    if (v1 <= 0x3F)
    {
      sub_1DD5DEBB0(319, &qword_1EE160298, type metadata accessor for StitchedContactResolverRecommendation, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD5DE97C()
{
  type metadata accessor for ContactResolverRunTimeData(319);
  if (v0 <= 0x3F)
  {
    sub_1DD3EBBE4(319, &qword_1EE1613B0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD5DEA38()
{
  sub_1DD5DEBB0(319, &qword_1EE1602B0, type metadata accessor for StitchedContactResolverRequest, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1DD5DEBB0(319, qword_1EE161980, type metadata accessor for StitchableInteraction, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1DD3EBBE4(319, &qword_1EE160CD0);
      if (v2 <= 0x3F)
      {
        sub_1DD5DEBB0(319, &qword_1EE160348, MEMORY[0x1E69CF918], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DD5DEBB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1DD5DEC14()
{
  result = qword_1EE162088[0];
  if (!qword_1EE162088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE162088);
  }

  return result;
}

unint64_t sub_1DD5DEC68()
{
  result = qword_1EE1602A8;
  if (!qword_1EE1602A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDF8D0, &qword_1DD661B70);
    sub_1DD5DED1C(&qword_1EE160A88, type metadata accessor for StitchedContactResolverRequest);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1602A8);
  }

  return result;
}

uint64_t sub_1DD5DED1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DD5DED64()
{
  result = qword_1ECCDF8E0;
  if (!qword_1ECCDF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF8E0);
  }

  return result;
}

uint64_t sub_1DD5DEDB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECCDFDF0, &unk_1DD644950);
    result = OUTLINED_FUNCTION_35_16();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD5DEE14()
{
  result = qword_1ECCDF8F0;
  if (!qword_1ECCDF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF8F0);
  }

  return result;
}

unint64_t sub_1DD5DEE68()
{
  result = qword_1ECCDF900;
  if (!qword_1ECCDF900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF900);
  }

  return result;
}

uint64_t sub_1DD5DEEBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECCDFD20, &qword_1DD648290);
    result = OUTLINED_FUNCTION_35_16();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD5DEF18()
{
  result = qword_1ECCDF910;
  if (!qword_1ECCDF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF910);
  }

  return result;
}

unint64_t sub_1DD5DEF6C()
{
  result = qword_1ECCDF920;
  if (!qword_1ECCDF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF920);
  }

  return result;
}

unint64_t sub_1DD5DEFC0()
{
  result = qword_1EE160AA0;
  if (!qword_1EE160AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE160AA0);
  }

  return result;
}

unint64_t sub_1DD5DF014()
{
  result = qword_1EE160290;
  if (!qword_1EE160290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDF938, &qword_1DD661BA0);
    sub_1DD5DED1C(&qword_1EE160690, type metadata accessor for StitchedContactResolverRecommendation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE160290);
  }

  return result;
}

unint64_t sub_1DD5DF0C8()
{
  result = qword_1EE1606A8[0];
  if (!qword_1EE1606A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1606A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StitchedContactResolverRecommendation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StitchedContactResolverRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PotentialRetryInteractionInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StitchedContactUserPrompt.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StitchedContactData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StitchedContactConfirmationResolution(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5DF658()
{
  result = qword_1ECCDF948;
  if (!qword_1ECCDF948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF948);
  }

  return result;
}

unint64_t sub_1DD5DF6B0()
{
  result = qword_1ECCDF950;
  if (!qword_1ECCDF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF950);
  }

  return result;
}

unint64_t sub_1DD5DF708()
{
  result = qword_1ECCDF958;
  if (!qword_1ECCDF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF958);
  }

  return result;
}

unint64_t sub_1DD5DF760()
{
  result = qword_1ECCDF960;
  if (!qword_1ECCDF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF960);
  }

  return result;
}

unint64_t sub_1DD5DF7B8()
{
  result = qword_1ECCDF968;
  if (!qword_1ECCDF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF968);
  }

  return result;
}

unint64_t sub_1DD5DF810()
{
  result = qword_1ECCDF970;
  if (!qword_1ECCDF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF970);
  }

  return result;
}

unint64_t sub_1DD5DF868()
{
  result = qword_1EE160698;
  if (!qword_1EE160698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE160698);
  }

  return result;
}

unint64_t sub_1DD5DF8C0()
{
  result = qword_1EE1606A0;
  if (!qword_1EE1606A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1606A0);
  }

  return result;
}

unint64_t sub_1DD5DF918()
{
  result = qword_1EE160A90;
  if (!qword_1EE160A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE160A90);
  }

  return result;
}

unint64_t sub_1DD5DF970()
{
  result = qword_1EE160A98;
  if (!qword_1EE160A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE160A98);
  }

  return result;
}

unint64_t sub_1DD5DF9C8()
{
  result = qword_1ECCDF978;
  if (!qword_1ECCDF978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF978);
  }

  return result;
}

unint64_t sub_1DD5DFA20()
{
  result = qword_1ECCDF980;
  if (!qword_1ECCDF980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF980);
  }

  return result;
}

unint64_t sub_1DD5DFA78()
{
  result = qword_1ECCDF988;
  if (!qword_1ECCDF988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF988);
  }

  return result;
}

unint64_t sub_1DD5DFAD0()
{
  result = qword_1ECCDF990;
  if (!qword_1ECCDF990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF990);
  }

  return result;
}

unint64_t sub_1DD5DFB28()
{
  result = qword_1EE162078;
  if (!qword_1EE162078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162078);
  }

  return result;
}

unint64_t sub_1DD5DFB80()
{
  result = qword_1EE162080;
  if (!qword_1EE162080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162080);
  }

  return result;
}

unint64_t sub_1DD5DFBD4()
{
  result = qword_1ECCDF998[0];
  if (!qword_1ECCDF998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCDF998);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_44()
{

  return sub_1DD5DE64C(v0, type metadata accessor for StitchableInteraction);
}

uint64_t OUTLINED_FUNCTION_22_32(uint64_t a1)
{
  v6 = v1 + *(a1 + 28);

  return sub_1DD3DD9B4(v6, v4, v2, v3);
}

uint64_t OUTLINED_FUNCTION_24_24()
{

  return sub_1DD640ED8();
}

uint64_t OUTLINED_FUNCTION_26_27()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_33_17(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_getEnumTagSinglePayload(v5, 1, a3);

  return sub_1DD390754(v5, v3, v4);
}

uint64_t OUTLINED_FUNCTION_35_16()
{

  return swift_getWitnessTable();
}

uint64_t sub_1DD5DFDB8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1DD42B518();
    v3 = v26;
    v5 = (a1 + 32);
    do
    {
      memcpy(__dst, v5, 0x4AuLL);
      v6 = __dst[7];
      v7 = __dst[8];
      v8 = HIBYTE(__dst[8]) & 0xFLL;
      if ((__dst[8] & 0x2000000000000000) == 0)
      {
        v8 = __dst[7] & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v9 = *a2;
        if (!*(*a2 + 16))
        {
          sub_1DD3C6A40(__dst, v24);
LABEL_12:
          sub_1DD5E13F8();
          v14 = v13;
          v16 = v15;

          v17 = *a2;
          swift_isUniquelyReferenced_nonNull_native();
          v24[0] = *a2;
          sub_1DD3FFBC0();
          *a2 = v24[0];
          sub_1DD3C6A9C(__dst);
          v6 = v14;
          v7 = v16;
          goto LABEL_13;
        }

        sub_1DD3C6A40(__dst, v24);
        v10 = sub_1DD3978DC();
        if ((v11 & 1) == 0)
        {
          goto LABEL_12;
        }

        v12 = (*(v9 + 56) + 16 * v10);
        v6 = *v12;
        v7 = v12[1];
      }

      else
      {
        sub_1DD3C6A40(__dst, v24);
      }

      sub_1DD3C6A9C(__dst);
LABEL_13:
      v18 = __dst[2];
      *v23 = v24[0];
      *&v23[3] = *(v24 + 3);
      v26 = v3;
      v19 = *(v3 + 16);
      if (v19 >= *(v3 + 24) >> 1)
      {
        sub_1DD42B518();
        v3 = v26;
      }

      *(v3 + 16) = v19 + 1;
      v20 = v3 + 80 * v19;
      *(v20 + 32) = 0;
      *(v20 + 40) = 0xE000000000000000;
      *(v20 + 48) = v18;
      *(v20 + 49) = *v23;
      *(v20 + 52) = *&v23[3];
      *(v20 + 56) = 0;
      *(v20 + 64) = 0xE000000000000000;
      *(v20 + 72) = 0;
      *(v20 + 80) = 0xE000000000000000;
      *(v20 + 88) = v6;
      *(v20 + 96) = v7;
      *(v20 + 104) = 512;
      v5 += 80;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1DD5DFFC0(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for Contact();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v50 = *(a1 + 16);
  v51 = v2;
  v53 = MEMORY[0x1E69E7CC0];
  v45 = a2;
  sub_1DD42B5EC(0, v10, 0);
  v12 = v45;
  v13 = v53;
  v48 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = (a1 + v48);
  v47 = *(v6 + 72);
  v46 = sub_1DD63CBB8();
  v44 = v5;
  do
  {
    v49 = v13;
    v9[16] = 2;
    *(v9 + 3) = 0;
    *(v9 + 4) = 0xE000000000000000;
    *(v9 + 5) = 0;
    *(v9 + 6) = 0xE000000000000000;
    *(v9 + 7) = 0;
    *(v9 + 8) = 0xE000000000000000;
    *(v9 + 9) = 0;
    *(v9 + 10) = 0xE000000000000000;
    *(v9 + 11) = 0;
    *(v9 + 12) = 0xE000000000000000;
    *(v9 + 13) = 0;
    *(v9 + 14) = 0xE000000000000000;
    *(v9 + 15) = 0;
    *(v9 + 16) = 0xE000000000000000;
    *(v9 + 17) = 0;
    *(v9 + 18) = 0xE000000000000000;
    *(v9 + 19) = 0;
    *(v9 + 20) = 0xE000000000000000;
    *(v9 + 21) = 0;
    *(v9 + 22) = 0xE000000000000000;
    *(v9 + 23) = 0;
    *(v9 + 24) = 0xE000000000000000;
    *(v9 + 25) = 0;
    *(v9 + 26) = 0xE000000000000000;
    *(v9 + 27) = v11;
    __swift_storeEnumTagSinglePayload(&v9[v5[19]], 1, 1, v46);
    v9[v5[21]] = 0;
    v15 = &v9[v5[22]];
    *v15 = 0;
    *(v15 + 1) = 0;
    v9[v5[23]] = 2;
    v16 = &v9[v5[24]];
    *v16 = 0;
    *(v16 + 1) = 0xE000000000000000;
    v18 = *v14;
    v17 = v14[1];
    v19 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v19 = *v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v20 = *v12;
      if (*(*v12 + 16) && (v21 = *v14, v22 = v14[1], v23 = sub_1DD3978DC(), (v24 & 1) != 0))
      {
        v25 = (*(v20 + 56) + 16 * v23);
        v18 = *v25;
        v17 = v25[1];

        v12 = v45;
      }

      else
      {
        sub_1DD5E13F8();
        v27 = v26;
        v29 = v28;

        v12 = v45;
        v30 = *v45;
        swift_isUniquelyReferenced_nonNull_native();
        v52 = *v12;
        sub_1DD3FFBC0();
        *v12 = v52;
        v18 = v27;
        v5 = v44;
        v17 = v29;
      }
    }

    else
    {
      v31 = v14[1];
    }

    v32 = v5[20];
    *v9 = v18;
    *(v9 + 1) = v17;
    v33 = (v14 + v5[22]);
    v35 = *v33;
    v34 = v33[1];
    v36 = *(v15 + 1);

    *v15 = v35;
    *(v15 + 1) = v34;
    v37 = v51;
    v38 = sub_1DD5DFDB8(*(v14 + v5[20]), v12);
    v51 = v37;
    *&v9[v32] = v38;
    v13 = v49;
    v53 = v49;
    v40 = *(v49 + 16);
    v39 = *(v49 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_1DD42B5EC(v39 > 1, v40 + 1, 1);
      v12 = v45;
      v13 = v53;
    }

    *(v13 + 16) = v40 + 1;
    v41 = v47;
    sub_1DD3C95D4(v9, v13 + v48 + v40 * v47);
    v14 = (v14 + v41);
    --v50;
    v11 = MEMORY[0x1E69E7CC0];
  }

  while (v50);
  return v13;
}

void sub_1DD5E02F0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v46 = MEMORY[0x1E69E7CC0];
  sub_1DD42C0EC(0, v2, 0);
  for (i = (a1 + 72); ; i += 6)
  {
    v42 = *(i - 40);
    v5 = *(i - 4);
    v6 = *(i - 3);
    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v10 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v11 = *a2;
      v12 = *(*a2 + 16);
      v13 = *(i - 3);

      if (v12 && (v14 = sub_1DD3978DC(), (v15 & 1) != 0))
      {
        v16 = (*(v11 + 56) + 16 * v14);
        v5 = *v16;
        v40 = v16[1];
      }

      else
      {
        sub_1DD5E13F8();
        v39 = v2;
        v5 = v17;
        v19 = v18;

        v20 = *a2;
        swift_isUniquelyReferenced_nonNull_native();
        v44 = *a2;
        v40 = v19;
        v2 = v39;
        sub_1DD3FFBC0();
        *a2 = v44;
      }
    }

    else
    {
      v21 = *(i - 3);
      swift_bridgeObjectRetain_n();

      v40 = v6;
    }

    v22 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v22 = v8 & 0xFFFFFFFFFFFFLL;
    }

    v41 = v5;
    if (v22)
    {
      v23 = *a2;
      if (*(*a2 + 16) && (v24 = sub_1DD3978DC(), (v25 & 1) != 0))
      {
        v26 = (*(v23 + 56) + 16 * v24);
        v8 = *v26;
        v27 = v26[1];
      }

      else
      {
        sub_1DD5E13F8();
        v29 = v28;
        v27 = v30;

        v31 = *a2;
        swift_isUniquelyReferenced_nonNull_native();
        v45 = *a2;
        sub_1DD3FFBC0();
        *a2 = v45;
        v8 = v29;
      }
    }

    else
    {

      v27 = v7;
    }

    if (v9 != 0.0)
    {
      break;
    }

LABEL_30:
    v37 = *(v46 + 16);
    v36 = *(v46 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_1DD42C0EC(v36 > 1, v37 + 1, 1);
    }

    *(v46 + 16) = v37 + 1;
    v38 = v46 + 48 * v37;
    *(v38 + 32) = v42;
    *(v38 + 40) = v41;
    *(v38 + 48) = v40;
    *(v38 + 56) = v8;
    *(v38 + 64) = v27;
    *(v38 + 72) = v9;
    if (!--v2)
    {
      return;
    }
  }

  v32 = log10(fabs(v9));
  v33 = v32;
  if (v32 >= 0.0)
  {
    if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_35;
    }

    if (v32 <= -9.22337204e18)
    {
      goto LABEL_37;
    }

    v34 = -1.0;
    if (v32 >= 9.22337204e18)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v32 <= -9.22337204e18)
    {
      goto LABEL_36;
    }

    v34 = -2.0;
    if (v32 >= 9.22337204e18)
    {
      goto LABEL_38;
    }

LABEL_29:

    v35 = __exp10(v34 + v33);
    v9 = v35 * round(v9 / v35);
    goto LABEL_30;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_1DD5E0680(uint64_t a1, void *a2)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v31 - v7);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v31 = v2;
    v38 = MEMORY[0x1E69E7CC0];
    sub_1DD42B5CC(0, v9, 0);
    v10 = v38;
    v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v12 = a1 + v11;
    v34 = *(v5 + 72);
    v32 = v11;
    do
    {
      sub_1DD3DD9B4(v12, v8, &qword_1ECCDBBD8, &unk_1DD645A90);
      memcpy(__dst, v8, 0x4AuLL);
      v13 = __dst[7];
      v14 = __dst[8];
      v15 = HIBYTE(__dst[8]) & 0xFLL;
      if ((__dst[8] & 0x2000000000000000) == 0)
      {
        v15 = __dst[7] & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        v16 = *v35;
        if (!*(*v35 + 16))
        {
          sub_1DD3C6A40(__dst, v36);
LABEL_12:
          sub_1DD5E13F8();
          v21 = v20;
          v23 = v22;

          v33 = v10;
          v24 = v35;
          v25 = *v35;
          swift_isUniquelyReferenced_nonNull_native();
          v36[0] = *v24;
          sub_1DD3FFBC0();
          *v24 = v36[0];
          v10 = v33;
          sub_1DD3C6A9C(__dst);
          v13 = v21;
          v11 = v32;
          v14 = v23;
          goto LABEL_13;
        }

        sub_1DD3C6A40(__dst, v36);
        v17 = sub_1DD3978DC();
        if ((v18 & 1) == 0)
        {
          goto LABEL_12;
        }

        v19 = (*(v16 + 56) + 16 * v17);
        v13 = *v19;
        v14 = v19[1];
      }

      else
      {
        sub_1DD3C6A40(__dst, v36);
      }

      sub_1DD3C6A9C(__dst);
LABEL_13:
      v26 = __dst[2];
      memcpy(v36, v8, 0x4AuLL);
      sub_1DD3C6A9C(v36);
      *v8 = 0;
      v8[1] = 0xE000000000000000;
      *(v8 + 16) = v26;
      v8[3] = 0;
      v8[4] = 0xE000000000000000;
      v8[5] = 0;
      v8[6] = 0xE000000000000000;
      v8[7] = v13;
      v8[8] = v14;
      *(v8 + 36) = 512;
      v28 = *(v10 + 16);
      v27 = *(v10 + 24);
      v38 = v10;
      if (v28 >= v27 >> 1)
      {
        sub_1DD42B5CC(v27 > 1, v28 + 1, 1);
        v10 = v38;
      }

      *(v10 + 16) = v28 + 1;
      v29 = v34;
      sub_1DD3CD2CC(v8, v10 + v11 + v28 * v34);
      v12 += v29;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_1DD5E096C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v61 = MEMORY[0x1E69E7CC0];
    sub_1DD42C10C(0, v2, 0);
    v3 = v61;
    for (i = (a1 + 106); ; i += 11)
    {
      memcpy(__dst, i - 74, sizeof(__dst));
      v48[0] = *(i - 57);
      *(v48 + 3) = *(i - 54);
      v6 = __dst[7];
      v7 = __dst[8];
      v8 = *i;
      *&v47[6] = *(i + 6);
      *v47 = v8;
      v62 = __dst[0];
      v50[0] = __dst[0];
      v50[1] = __dst[1];
      v32 = __dst[1];
      v31 = __dst[2];
      v51 = __dst[2];
      *v52 = *(i - 57);
      *&v52[3] = *(i - 54);
      v29 = __dst[4];
      v30 = __dst[3];
      v53 = __dst[3];
      v54 = __dst[4];
      v27 = __dst[6];
      v28 = __dst[5];
      v55 = __dst[5];
      v56 = __dst[6];
      v57 = __dst[7];
      v58 = __dst[8];
      v9 = HIBYTE(__dst[8]) & 0xFLL;
      v25 = BYTE1(__dst[9]);
      v26 = __dst[9];
      v59 = __dst[9];
      if ((__dst[8] & 0x2000000000000000) == 0)
      {
        v9 = __dst[7] & 0xFFFFFFFFFFFFLL;
      }

      v60 = BYTE1(__dst[9]);
      if (v9)
      {
        break;
      }

      sub_1DD3DD9B4(__dst, v35, &qword_1ECCDCAE0, &unk_1DD649FF0);
      sub_1DD3DD9B4(__dst, v35, &qword_1ECCDCAE0, &unk_1DD649FF0);
      sub_1DD3C6A40(v50, v35);

      sub_1DD3C6A9C(v50);
      v14 = v6;
      v15 = v7;
LABEL_13:
      v19 = v51;
      v35[0] = v62;
      v35[1] = v32;
      v36 = v31;
      *v37 = v48[0];
      *&v37[3] = *(v48 + 3);
      v38 = v30;
      v39 = v29;
      v40 = v28;
      v41 = v27;
      v42 = v6;
      v43 = v7;
      v44 = v26;
      v45 = v25;
      sub_1DD3C6A9C(v35);
      sub_1DD5E15E4(__dst);
      v48[0] = *v46;
      *(v48 + 3) = *&v46[3];
      *v34 = *v46;
      *&v34[3] = *&v46[3];
      *v33 = *v47;
      *&v33[6] = *&v47[6];
      v21 = *(v3 + 16);
      v20 = *(v3 + 24);
      v61 = v3;
      if (v21 >= v20 >> 1)
      {
        sub_1DD42C10C(v20 > 1, v21 + 1, 1);
        v3 = v61;
      }

      *(v3 + 16) = v21 + 1;
      v22 = v3 + 88 * v21;
      *(v22 + 32) = 0;
      *(v22 + 40) = 0xE000000000000000;
      *(v22 + 48) = v19;
      *(v22 + 49) = *v34;
      *(v22 + 52) = *&v34[3];
      *(v22 + 56) = 0;
      *(v22 + 64) = 0xE000000000000000;
      *(v22 + 72) = 0;
      *(v22 + 80) = 0xE000000000000000;
      *(v22 + 88) = v14;
      *(v22 + 96) = v15;
      *(v22 + 104) = 512;
      *(v22 + 106) = *v33;
      *(v22 + 112) = *&v33[6];
      if (!--v2)
      {
        return v3;
      }
    }

    v10 = *a2;
    if (*(*a2 + 16))
    {
      sub_1DD3DD9B4(__dst, v35, &qword_1ECCDCAE0, &unk_1DD649FF0);
      sub_1DD3DD9B4(__dst, v35, &qword_1ECCDCAE0, &unk_1DD649FF0);
      sub_1DD3C6A40(v50, v35);
      v11 = sub_1DD3978DC();
      if (v12)
      {
        v13 = (*(v10 + 56) + 16 * v11);
        v14 = *v13;
        v15 = v13[1];

LABEL_12:
        sub_1DD3C6A9C(v50);
        goto LABEL_13;
      }
    }

    else
    {
      sub_1DD3DD9B4(__dst, v35, &qword_1ECCDCAE0, &unk_1DD649FF0);
      sub_1DD3DD9B4(__dst, v35, &qword_1ECCDCAE0, &unk_1DD649FF0);
      sub_1DD3C6A40(v50, v35);
    }

    sub_1DD5E13F8();
    v14 = v16;
    v15 = v17;

    v18 = *a2;
    swift_isUniquelyReferenced_nonNull_native();
    v35[0] = *a2;
    sub_1DD3FFBC0();
    *a2 = v35[0];
    goto LABEL_12;
  }

  return v3;
}

uint64_t sub_1DD5E0D30(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = v2;
    v6 = *v2;
    if (!*(v6 + 16) || (v7 = sub_1DD3978DC(), (v8 & 1) == 0))
    {
      sub_1DD5E13F8();
      v12 = v11;

      v13 = *v5;
      swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      sub_1DD3FFBC0();
      *v5 = v15;
      return v12;
    }

    v9 = (*(v6 + 56) + 16 * v7);
    v3 = *v9;
    v10 = v9[1];
  }

  return v3;
}

uint64_t sub_1DD5E0E10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for ContactResolver.SignalSet(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = type metadata accessor for Contact();
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  sub_1DD5E1524(a1, a3, type metadata accessor for ContactMatchRuntimeData);
  *(v15 + 16) = 2;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0xE000000000000000;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0xE000000000000000;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0xE000000000000000;
  *(v15 + 72) = 0;
  *(v15 + 80) = 0xE000000000000000;
  *(v15 + 88) = 0;
  *(v15 + 96) = 0xE000000000000000;
  *(v15 + 104) = 0;
  *(v15 + 112) = 0xE000000000000000;
  *(v15 + 120) = 0;
  *(v15 + 128) = 0xE000000000000000;
  *(v15 + 136) = 0;
  *(v15 + 144) = 0xE000000000000000;
  *(v15 + 152) = 0;
  *(v15 + 160) = 0xE000000000000000;
  *(v15 + 168) = 0;
  *(v15 + 176) = 0xE000000000000000;
  *(v15 + 184) = 0;
  *(v15 + 192) = 0xE000000000000000;
  *(v15 + 200) = 0;
  *(v15 + 208) = 0xE000000000000000;
  *(v15 + 216) = MEMORY[0x1E69E7CC0];
  v16 = v11[21];
  v17 = sub_1DD63CBB8();
  __swift_storeEnumTagSinglePayload(v15 + v16, 1, 1, v17);
  v41 = v11[22];
  *(v15 + v11[23]) = 0;
  v18 = (v15 + v11[24]);
  *v18 = 0;
  v18[1] = 0;
  *(v15 + v11[25]) = 2;
  v19 = (v15 + v11[26]);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  *v15 = sub_1DD5E0D30(*a3, *(a3 + 8));
  *(v15 + 8) = v20;
  v21 = (a3 + v11[24]);
  v23 = *v21;
  v22 = v21[1];
  v24 = v18[1];

  *v18 = v23;
  v18[1] = v22;
  *(v15 + v41) = sub_1DD5DFDB8(*(a3 + v11[22]), a2);
  sub_1DD5E1584(v15, a3, type metadata accessor for Contact);
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v42 = *(matched + 20);
  sub_1DD5E1524(a3 + v42, v9, type metadata accessor for ContactResolver.SignalSet);
  memcpy(v45, (v9 + 8), sizeof(v45));
  v25 = v45[0];
  v26 = v45[1];
  v27 = v45[30];
  sub_1DD3C9478(v45, v48);
  v28 = sub_1DD5E0D30(v25, v26);
  v30 = v29;
  sub_1DD5E02F0(v27, a2);
  v32 = v31;
  sub_1DD3C9580(v45);
  memcpy(v48, (v9 + 8), 0x108uLL);
  sub_1DD3C9580(v48);
  *(v9 + 8) = v28;
  *(v9 + 16) = v30;
  *(v9 + 24) = 0;
  *(v9 + 25) = *v47;
  *(v9 + 28) = *&v47[3];
  *(v9 + 32) = 0;
  *(v9 + 40) = 0xE000000000000000;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0xE000000000000000;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0xE000000000000000;
  *(v9 + 80) = 0;
  *(v9 + 88) = 0xE000000000000000;
  *(v9 + 96) = 0;
  *(v9 + 104) = 0xE000000000000000;
  *(v9 + 112) = 0;
  *(v9 + 120) = 0xE000000000000000;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0xE000000000000000;
  *(v9 + 144) = 0;
  *(v9 + 152) = 0xE000000000000000;
  *(v9 + 160) = 0;
  *(v9 + 168) = 0xE000000000000000;
  *(v9 + 208) = 0u;
  *(v9 + 224) = 0u;
  *(v9 + 176) = 0u;
  *(v9 + 192) = 0u;
  *(v9 + 240) = 0;
  *(v9 + 248) = v32;
  *(v9 + 256) = 1;
  *(v9 + 257) = *v46;
  *(v9 + 260) = *&v46[3];
  *(v9 + 264) = 0;
  v33 = sub_1DD5E0680(*(v9 + 272), a2);

  *(v9 + 272) = v33;
  sub_1DD5E1584(v9, a3 + v42, type metadata accessor for ContactResolver.SignalSet);
  v34 = a3 + *(matched + 24);
  LOBYTE(v33) = *v34;
  v35 = *(v34 + 8);
  v36 = *(v34 + 16);

  v38 = sub_1DD5E096C(v37, a2);

  v39 = *(v34 + 16);

  *v34 = v33;
  *(v34 + 8) = v35;
  *(v34 + 16) = v38;
  return result;
}

uint64_t sub_1DD5E11D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Contact();
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24[-v16];
  sub_1DD3DD9B4(a1, &v24[-v16], &qword_1ECCDBEE0, &unk_1DD645510);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v18 = sub_1DD5DFFC0(*v17, v2);

      *a2 = v18;
      OUTLINED_FUNCTION_52();
      break;
    case 3u:
      OUTLINED_FUNCTION_52();
      break;
    default:
      sub_1DD3C95D4(v17, v11);
      Contact.init()(a2);
      sub_1DD5E0D30(*v11, *(v11 + 8));
      v19 = a2[1];

      OUTLINED_FUNCTION_1_123();

      v20 = OUTLINED_FUNCTION_3_93();
      v21 = *(v5 + 80);
      v22 = *(a2 + v21);

      *(a2 + v21) = v20;
      sub_1DD415B40(v11);
      OUTLINED_FUNCTION_52();
      break;
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1DD5E13F8()
{
  v0 = 0;
  v5[1] = 0;
  v5[2] = 0xE000000000000000;
  while (("potentialRetryIntervalBucket" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v1 = sub_1DD63FF08();
    if (v1 < 0)
    {
      goto LABEL_11;
    }

    v2 = v1;
    if (!v1)
    {
      goto LABEL_12;
    }

    v5[0] = 0;
    MEMORY[0x1E12B3DC0](v5, 8);
    if (v2 > v5[0] * v2)
    {
      v3 = -v2 % v2;
      while (v3 > v5[0] * v2)
      {
        v5[0] = 0;
        MEMORY[0x1E12B3DC0](v5, 8);
      }
    }

    ++v0;
    sub_1DD63FF38();
    v4 = sub_1DD640038();
    MEMORY[0x1E12B2250](v4);

    if (v0 == 6)
    {
      return;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_1DD5E1524(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD5E1584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 40))(a2, a1);
  return a2;
}

uint64_t sub_1DD5E15E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAE0, &unk_1DD649FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_3_93()
{
  *v5 = v4;
  v5[1] = v1;
  v7 = *(v2 + *(v3 + 80));

  return sub_1DD5DFDB8(v7, v0);
}

uint64_t sub_1DD5E1680(uint64_t a1)
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

uint64_t sub_1DD5E1714()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = v0 + *(*v0 + 96);
  return sub_1DD63FCF8();
}

uint64_t sub_1DD5E1778(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 96);
  v4 = *(*(v2 + 88) + 8);
  v5 = a2 + *(*a2 + 96);
  v6 = *(v2 + 80);
  return sub_1DD63FD98() & 1;
}

uint64_t sub_1DD5E1848()
{
  v0 = *sub_1DD5E17D8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DD5E18B4()
{
  sub_1DD640E28();
  sub_1DD5E1714();
  return sub_1DD640E78();
}

uint64_t sub_1DD5E193C()
{
  sub_1DD640E28();
  v1 = *v0;
  sub_1DD5E1714();
  return sub_1DD640E78();
}

uint64_t sub_1DD5E1988(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
    [v3 setCountLimit_];
  }

  *(v2 + 16) = v3;
  return v2;
}

uint64_t sub_1DD5E19F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  if (!v5)
  {
    return sub_1DD5E1B00(a1, a2);
  }

  v6 = v5;
  v7 = sub_1DD63FDA8();
  v8 = [v6 objectForKey_];
  if (v8)
  {
    v9 = v8;

    v10 = v9[2];
  }

  else
  {
    v10 = sub_1DD5E1B00(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFA38, &qword_1DD662470);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;

    [v6 setObject:v12 forKey:v7];
  }

  return v10;
}

uint64_t sub_1DD5E1B00(uint64_t a1, uint64_t a2)
{
  sub_1DD5E1E48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFA28, &qword_1DD662460);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD643F90;
  v5 = *MEMORY[0x1E69779C8];
  *(v4 + 32) = *MEMORY[0x1E69779C8];
  v6 = v5;
  v7 = sub_1DD5E1CC4();
  sub_1DD5E1E8C(a1, a2, v7);
  v18 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFA30, &qword_1DD662468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643BB0;
  v9 = *MEMORY[0x1E6977938];
  v10 = *MEMORY[0x1E6977948];
  *(inited + 32) = *MEMORY[0x1E6977938];
  *(inited + 40) = v10;
  v11 = *MEMORY[0x1E6977980];
  v12 = *MEMORY[0x1E69779A8];
  *(inited + 48) = *MEMORY[0x1E6977980];
  *(inited + 56) = v12;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_1DD56BC10(inited);
  sub_1DD640578();

  return v18;
}

id sub_1DD5E1CC4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NLTagScheme(0);
  v1 = sub_1DD6400F8();

  v2 = [v0 initWithTagSchemes_];

  return v2;
}

uint64_t sub_1DD5E1D3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a1)
  {
    v7 = a1;
    if (sub_1DD47EFA0(v7, a4))
    {
    }

    else
    {
      v8 = sub_1DD640058();
      v9 = MEMORY[0x1E12B2190](v8);
      v11 = v10;

      sub_1DD3BDF34();
      v12 = *(*a5 + 16);
      sub_1DD3BE0F8(v12);

      v13 = *a5;
      *(v13 + 16) = v12 + 1;
      v14 = v13 + 16 * v12;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }
  }

  return 1;
}

unint64_t sub_1DD5E1E48()
{
  result = qword_1ECCDFA20;
  if (!qword_1ECCDFA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCDFA20);
  }

  return result;
}

void sub_1DD5E1E8C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD63FDA8();
  [a3 setString_];
}

uint64_t sub_1DD5E1EE4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  return sub_1DD5E1D3C(a1, a2, a3, *(v3 + 16), *(v3 + 24));
}

uint64_t StreetAddress.CrossStreetJoin.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DD640AA8();

  *a1 = v2 != 0;
  return result;
}

__n128 StreetAddress.init(streetName:streetNumber:streetType:crossStreetName:crossStreetType:crossStreetJoin:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, __n128 *a4@<X3>, __int16 *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  v9 = *a3;
  v10 = a4[1].n128_u8[0];
  v11 = *a5;
  v12 = *a6;
  *a7 = *a1;
  *(a7 + 16) = v7;
  *(a7 + 24) = *a2;
  *(a7 + 40) = v8;
  *(a7 + 41) = v9;
  result = *a4;
  *(a7 + 48) = *a4;
  *(a7 + 64) = v10;
  *(a7 + 65) = v11;
  *(a7 + 67) = v12;
  *(a7 + 72) = 0;
  *(a7 + 80) = 0;
  return result;
}

uint64_t sub_1DD5E1FC8@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return StreetAddress.CrossStreetJoin.init(rawValue:)(a1);
}

uint64_t StreetAddress.streetName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t StreetAddress.streetNumber.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  return OUTLINED_FUNCTION_3_94(*(v1 + 32), a1);
}

uint64_t StreetAddress.crossStreetName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 64);
  return OUTLINED_FUNCTION_3_94(*(v1 + 56), a1);
}

uint64_t StreetAddress.fullThoroughfare.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t static StreetAddress.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[3];
  v2 = a1[4];
  v4 = *(a1 + 40);
  v5 = *(a1 + 41);
  v6 = *(a2 + 8);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 41);
  if (a1[1])
  {
    v87 = *a1;
    v88 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }

    v72 = __PAIR64__(*(a2 + 64), *(a1 + 65));
    v74 = *(a2 + 48);
    HIDWORD(v76) = *(a1 + 64);
    v77 = a1[6];
    v79 = *(a2 + 56);
    v69 = __PAIR64__(*(a2 + 65), *(a1 + 67));
    v81 = a1[7];
    v84 = *a2;
    HIDWORD(v68) = *(a2 + 67);
    LOWORD(v86) = *(a2 + 16);
    swift_bridgeObjectRetain_n();

    v19 = OUTLINED_FUNCTION_7_67(v11, v12, v13, v14, v15, v16, v17, v18, v68, v69, v72, v74, v76, v77, v79, v81, v84, v6, v86, v87);
    v21 = static StreetName.== infix(_:_:)(v19, v20);

    if ((v21 & 1) == 0)
    {
      goto LABEL_15;
    }

    if (v2)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (v7)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (v6)
  {
    v41 = *(a2 + 8);

LABEL_14:

    goto LABEL_15;
  }

  LODWORD(v73) = *(a1 + 65);
  HIDWORD(v73) = *(a2 + 64);
  v75 = *(a2 + 48);
  HIDWORD(v76) = *(a1 + 64);
  v78 = a1[6];
  v80 = *(a2 + 56);
  LODWORD(v70) = *(a1 + 67);
  HIDWORD(v70) = *(a2 + 65);
  v82 = a1[7];
  HIDWORD(v68) = *(a2 + 67);

  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (!v7)
  {
    goto LABEL_13;
  }

  LOBYTE(v86) = v9;
  swift_bridgeObjectRetain_n();

  v30 = OUTLINED_FUNCTION_7_67(v22, v23, v24, v25, v26, v27, v28, v29, v68, v70, v73, v75, v76, v78, v80, v82, v8, v7, v86, v3);
  v32 = static StreetNumber.== infix(_:_:)(v30, v31);

  if ((v32 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  if ((v5 & 0xFF00) == 0x900)
  {
    if ((v10 & 0xFF00) != 0x900)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v10 & 0xFF00) == 0x900)
    {
      goto LABEL_15;
    }

    LOWORD(v83) = v10;
    v44 = OUTLINED_FUNCTION_7_67(v33, v34, v35, v36, v37, v38, v39, v40, v68, v70, v73, v75, v76, v78, v80, v82, v83, v85, v86, v5);
    if ((static StreetType.== infix(_:_:)(v44, v45) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (v82)
  {
    if (v80)
    {
      LOBYTE(v86) = BYTE4(v73);
      swift_bridgeObjectRetain_n();

      v54 = OUTLINED_FUNCTION_7_67(v46, v47, v48, v49, v50, v51, v52, v53, v68, v70, v73, v75, v76, v78, v80, v82, v75, v80, v86, v78);
      v56 = static CrossStreetName.== infix(_:_:)(v54, v55);

      if ((v56 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }

    goto LABEL_13;
  }

  if (v80)
  {
LABEL_13:

    goto LABEL_14;
  }

LABEL_31:
  if ((v73 & 0xFF00) == 0x900)
  {
    if (((WORD2(v70) & 0xFF00) != 2304) | v70 & 1)
    {
      v42 = ((WORD2(v70) & 0xFF00) == 2304) & BYTE4(v68);
      return v42 & 1;
    }

LABEL_37:
    v42 = BYTE4(v68) ^ 1;
    return v42 & 1;
  }

  if ((WORD2(v70) & 0xFF00) != 0x900)
  {
    LOWORD(v83) = WORD2(v70);
    v65 = OUTLINED_FUNCTION_7_67(v57, v58, v59, v60, v61, v62, v63, v64, v68, v70, v73, v75, v76, v78, v80, v82, v83, v85, v86, v73);
    v67 = static StreetType.== infix(_:_:)(v65, v66);
    if (v71 & 1 | ((v67 & 1) == 0))
    {
      v42 = v67 & BYTE4(v68);
      return v42 & 1;
    }

    goto LABEL_37;
  }

LABEL_15:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_1DD5E2484(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E746565727473 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x754E746565727473 && a2 == 0xEC0000007265626DLL;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7954746565727473 && a2 == 0xEA00000000006570;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72745373736F7263 && a2 == 0xEF656D614E746565;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x72745373736F7263 && a2 == 0xEF65707954746565;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x72745373736F7263 && a2 == 0xEF6E696F4A746565;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000010 && 0x80000001DD6748F0 == a2)
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

unint64_t sub_1DD5E26D0(char a1)
{
  result = 0x614E746565727473;
  switch(a1)
  {
    case 1:
      result = 0x754E746565727473;
      break;
    case 2:
      result = 0x7954746565727473;
      break;
    case 3:
    case 4:
    case 5:
      result = 0x72745373736F7263;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5E27B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5E2484(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5E27DC(uint64_t a1)
{
  v2 = sub_1DD5E30B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5E2818(uint64_t a1)
{
  v2 = sub_1DD5E30B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreetAddress.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFA40, &qword_1DD662478);
  v4 = OUTLINED_FUNCTION_0(v3);
  v36 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v26 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = *(v1 + 8);
  v13 = v1[4];
  v33 = v1[3];
  v34 = v13;
  v40 = *(v1 + 40);
  v32 = *(v1 + 41);
  v14 = v1[6];
  v30 = v1[7];
  v31 = v14;
  LODWORD(v14) = *(v1 + 64);
  v28 = *(v1 + 65);
  v29 = v14;
  v27 = *(v1 + 67);
  v15 = v1[10];
  v26[0] = v1[9];
  v26[1] = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5E30B4();

  sub_1DD640EF8();
  v37 = v10;
  v38 = v11;
  v39 = v12;
  v41 = 0;
  sub_1DD5E3108();
  OUTLINED_FUNCTION_1_124();
  v17 = v35;
  sub_1DD640C08();
  if (v17)
  {

    return (*(v36 + 8))(v9, v3);
  }

  else
  {
    v19 = v32;
    v20 = v29;
    v22 = v30;
    v21 = v31;
    v23 = v36;

    v37 = v33;
    v38 = v34;
    LOBYTE(v39) = v40;
    v41 = 1;
    v24 = sub_1DD5E315C();

    OUTLINED_FUNCTION_1_124();
    OUTLINED_FUNCTION_5_85();
    sub_1DD640C08();
    if (v24)
    {
    }

    else
    {

      LOWORD(v37) = v19;
      v41 = 2;
      sub_1DD5E31B0();
      OUTLINED_FUNCTION_1_124();
      OUTLINED_FUNCTION_5_85();
      sub_1DD640C08();
      v37 = v21;
      v38 = v22;
      LOBYTE(v39) = v20;
      v41 = 3;
      v25 = sub_1DD5E3204();

      OUTLINED_FUNCTION_1_124();
      OUTLINED_FUNCTION_5_85();
      sub_1DD640C08();

      if (!v25)
      {
        LOWORD(v37) = v28;
        v41 = 4;
        OUTLINED_FUNCTION_1_124();
        OUTLINED_FUNCTION_5_85();
        sub_1DD640C08();
        LOBYTE(v37) = v27;
        v41 = 5;
        sub_1DD5E3258();
        OUTLINED_FUNCTION_1_124();
        OUTLINED_FUNCTION_5_85();
        sub_1DD640C08();
        LOBYTE(v37) = 6;
        OUTLINED_FUNCTION_5_85();
        sub_1DD640BC8();
      }
    }

    return (*(v23 + 8))(v9, v3);
  }
}

uint64_t StreetAddress.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFA78, &qword_1DD662480);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5E30B4();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(__src[0]) = 0;
  sub_1DD5E32AC();
  OUTLINED_FUNCTION_0_139();
  OUTLINED_FUNCTION_4_90();
  sub_1DD640B18();
  v14 = v37;
  v53 = v38;
  v15 = v39;
  OUTLINED_FUNCTION_6_73(1);
  sub_1DD5E3300();
  OUTLINED_FUNCTION_0_139();
  OUTLINED_FUNCTION_4_90();
  sub_1DD640B18();
  v32 = v15;
  v33 = v37;
  v35 = v38;
  v34 = v39;
  OUTLINED_FUNCTION_6_73(2);
  v16 = sub_1DD5E3354();
  OUTLINED_FUNCTION_0_139();
  OUTLINED_FUNCTION_4_90();
  sub_1DD640B18();
  v31 = v16;
  v30 = v14;
  v29 = v37;
  OUTLINED_FUNCTION_6_73(3);
  sub_1DD5E33A8();
  OUTLINED_FUNCTION_0_139();
  OUTLINED_FUNCTION_4_90();
  sub_1DD640B18();
  v27 = v37;
  v28 = v38;
  LODWORD(v16) = v39;
  OUTLINED_FUNCTION_6_73(4);
  OUTLINED_FUNCTION_0_139();
  OUTLINED_FUNCTION_4_90();
  sub_1DD640B18();
  LODWORD(v31) = v16;
  LODWORD(v16) = v37;
  OUTLINED_FUNCTION_6_73(5);
  sub_1DD5E33FC();
  OUTLINED_FUNCTION_0_139();
  OUTLINED_FUNCTION_4_90();
  sub_1DD640B18();
  v52 = v37;
  v51 = 6;
  OUTLINED_FUNCTION_4_90();
  v17 = sub_1DD640AD8();
  v19 = v18;
  (*(v8 + 8))(v12, v5);
  __src[0] = v30;
  v20 = v53;
  __src[1] = v53;
  v21 = v16;
  v26 = v16;
  LOWORD(v16) = v32;
  LOWORD(__src[2]) = v32;
  v22 = v35;
  __src[3] = v33;
  __src[4] = v35;
  LOBYTE(__src[5]) = v34;
  *(&__src[5] + 1) = v29;
  v23 = v28;
  __src[6] = v27;
  __src[7] = v28;
  LOBYTE(__src[8]) = v31;
  *(&__src[8] + 1) = v21;
  v25 = v52;
  BYTE3(__src[8]) = v52;
  __src[9] = v17;
  __src[10] = v19;
  memcpy(a2, __src, 0x58uLL);
  sub_1DD5E3450(__src, &v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37 = v30;
  v38 = v20;
  v39 = v16;
  v40 = v33;
  v41 = v22;
  v42 = v34;
  v43 = v29;
  v44 = v27;
  v45 = v23;
  v46 = v31;
  v47 = v26;
  v48 = v25;
  v49 = v17;
  v50 = v19;
  return sub_1DD501440(&v37);
}

unint64_t sub_1DD5E30B4()
{
  result = qword_1ECCDFA48;
  if (!qword_1ECCDFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA48);
  }

  return result;
}

unint64_t sub_1DD5E3108()
{
  result = qword_1ECCDFA50;
  if (!qword_1ECCDFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA50);
  }

  return result;
}

unint64_t sub_1DD5E315C()
{
  result = qword_1ECCDFA58;
  if (!qword_1ECCDFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA58);
  }

  return result;
}

unint64_t sub_1DD5E31B0()
{
  result = qword_1ECCDFA60;
  if (!qword_1ECCDFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA60);
  }

  return result;
}

unint64_t sub_1DD5E3204()
{
  result = qword_1ECCDFA68;
  if (!qword_1ECCDFA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA68);
  }

  return result;
}

unint64_t sub_1DD5E3258()
{
  result = qword_1ECCDFA70;
  if (!qword_1ECCDFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA70);
  }

  return result;
}

unint64_t sub_1DD5E32AC()
{
  result = qword_1ECCDFA80;
  if (!qword_1ECCDFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA80);
  }

  return result;
}

unint64_t sub_1DD5E3300()
{
  result = qword_1ECCDFA88;
  if (!qword_1ECCDFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA88);
  }

  return result;
}

unint64_t sub_1DD5E3354()
{
  result = qword_1ECCDFA90;
  if (!qword_1ECCDFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA90);
  }

  return result;
}

unint64_t sub_1DD5E33A8()
{
  result = qword_1ECCDFA98;
  if (!qword_1ECCDFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA98);
  }

  return result;
}

unint64_t sub_1DD5E33FC()
{
  result = qword_1ECCDFAA0;
  if (!qword_1ECCDFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAA0);
  }

  return result;
}

unint64_t sub_1DD5E348C()
{
  result = qword_1ECCDFAA8;
  if (!qword_1ECCDFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAA8);
  }

  return result;
}

uint64_t sub_1DD5E34E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 88))
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

uint64_t sub_1DD5E3534(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreetAddress.CrossStreetJoin(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for StreetAddress.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5E3738()
{
  result = qword_1ECCDFAB0;
  if (!qword_1ECCDFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAB0);
  }

  return result;
}

unint64_t sub_1DD5E3790()
{
  result = qword_1ECCDFAB8;
  if (!qword_1ECCDFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAB8);
  }

  return result;
}

unint64_t sub_1DD5E37E8()
{
  result = qword_1ECCDFAC0;
  if (!qword_1ECCDFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAC0);
  }

  return result;
}

unint64_t sub_1DD5E383C()
{
  result = qword_1ECCDFAC8;
  if (!qword_1ECCDFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = v2;
  *(a2 + 8) = a1;
  *(a2 + 16) = v3;
}

SiriInference::StreetName::Prefix_optional __swiftcall StreetName.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StreetName.Prefix.rawValue.getter()
{
  result = 28265;
  switch(*v0)
  {
    case 1:
      result = 0x754E746565727473;
      break;
    case 2:
      result = 1918985582;
      break;
    case 3:
      result = 28271;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5E3974(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DD3B18F4();
}

uint64_t sub_1DD5E39A4@<X0>(uint64_t *a1@<X8>)
{
  result = StreetName.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriInference::StreetName::Suffix_optional __swiftcall StreetName.Suffix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640D18();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t StreetName.Suffix.rawValue.getter()
{
  result = 0x79617765657266;
  switch(*v0)
  {
    case 1:
      return 0x726176656C756F62;
    case 2:
      return 0x7954746565727473;
    case 3:
      return 0x7773736572707865;
    case 4:
      return 0x656461637261;
    case 5:
      return 0x7472756F63;
    case 6:
      return 7954807;
    case 7:
      return 0x617A616C70;
    case 8:
      return 0x746E656373657263;
    case 9:
      return 1684107122;
    case 0xA:
      return 0x746565727473;
    case 0xB:
      return 0x65756E657661;
    case 0xC:
      return 0x7961776573756163;
    case 0xD:
      v3 = 1667329136;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0xE:
      v2 = 1751607656;
      goto LABEL_19;
    case 0xF:
      v3 = 1986622052;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x10:
      return 0x656C63726963;
    case 0x11:
      return 0x79656C6C61;
    case 0x12:
      v2 = 1802658160;
LABEL_19:
      result = v2 | 0x79617700000000;
      break;
    case 0x13:
      result = 1701732716;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5E3D8C@<X0>(uint64_t *a1@<X8>)
{
  result = StreetName.Suffix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t StreetName.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static StreetName.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 4)
  {
    if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 == 4 || (sub_1DD3B18F4() & 1) == 0)
  {
    return 0;
  }

  result = v5 == 20 && v3 == 20;
  if (v3 != 20 && v5 != 20)
  {

    return sub_1DD3B19C0(v3, v5);
  }

  return result;
}

uint64_t sub_1DD5E3F84(uint64_t a1)
{
  v2 = sub_1DD5E43F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5E3FC0(uint64_t a1)
{
  v2 = sub_1DD5E43F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreetName.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFAD0, &qword_1DD662788);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v22 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = *(v1 + 16);
  v23 = *(v1 + 17);
  v24 = v14;
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v15);
  sub_1DD5E43F8();
  sub_1DD640EF8();
  v29 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v20 = v23;
    v28 = v24;
    v27 = 1;
    sub_1DD5E444C();
    sub_1DD640C08();
    v26 = v20;
    v25 = 2;
    sub_1DD5E44A0();
    sub_1DD640C08();
  }

  return (*(v7 + 8))(v11, v19);
}

uint64_t StreetName.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFAF0, &qword_1DD662790);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5E43F8();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1DD640B28();
  v12 = v11;
  sub_1DD5E44F4();
  OUTLINED_FUNCTION_3_4();
  sub_1DD5E4548();
  OUTLINED_FUNCTION_3_4();
  v14 = OUTLINED_FUNCTION_0_0();
  v15(v14);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 17) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD5E43F8()
{
  result = qword_1ECCDFAD8;
  if (!qword_1ECCDFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAD8);
  }

  return result;
}

unint64_t sub_1DD5E444C()
{
  result = qword_1ECCDFAE0;
  if (!qword_1ECCDFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAE0);
  }

  return result;
}

unint64_t sub_1DD5E44A0()
{
  result = qword_1ECCDFAE8;
  if (!qword_1ECCDFAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAE8);
  }

  return result;
}

unint64_t sub_1DD5E44F4()
{
  result = qword_1ECCDFAF8;
  if (!qword_1ECCDFAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAF8);
  }

  return result;
}

unint64_t sub_1DD5E4548()
{
  result = qword_1ECCDFB00;
  if (!qword_1ECCDFB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB00);
  }

  return result;
}

unint64_t sub_1DD5E45A0()
{
  result = qword_1ECCDFB08;
  if (!qword_1ECCDFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB08);
  }

  return result;
}

unint64_t sub_1DD5E45F8()
{
  result = qword_1ECCDFB10;
  if (!qword_1ECCDFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreetName.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StreetName.Suffix(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}