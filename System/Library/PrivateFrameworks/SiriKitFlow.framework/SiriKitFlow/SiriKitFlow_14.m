void sub_1DCC5C1C4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v6 = a2();
  v8 = v7;
  sub_1DCC18004(v27, v6, v7, *a4);
  v9 = v27[3];
  sub_1DCB16D50(v27, &qword_1ECCA27A8, &qword_1DD0E68C8);
  if (v9)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v10, qword_1EDE57E00);

    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27[0] = v14;
      *v13 = 136315138;
      v15 = sub_1DCB10E9C(v6, v8, v27);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_1DCAFC000, v11, v12, "An extension mapped to '%s' already exists. Custom extension will not be used.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A8390](v14, -1, -1);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57E00);
    sub_1DCB17CA0(a1, v27);

    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v19 = 136315394;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA27A0, &qword_1DD0E68C0);
      v25[0] = swift_allocObject();
      sub_1DCB17CA0(v27, v25[0] + 16);
      __swift_project_boxed_opaque_existential_1(v25, v26);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v20 = sub_1DD0DF2AC();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v23 = sub_1DCB10E9C(v20, v22, &v28);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1DCB10E9C(v6, v8, &v28);
      _os_log_impl(&dword_1DCAFC000, v17, v18, "Mapping custom type %s to '%s'", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v24, -1, -1);
      MEMORY[0x1E12A8390](v19, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v27);
    }

    sub_1DCB17CA0(a1, v27);
    sub_1DD06E0F8(v27);
  }
}

void sub_1DCC5C584(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v6 = a2();
  v8 = v7;
  sub_1DCC18004(v27, v6, v7, *a4);
  v9 = v27[3];
  sub_1DCB16D50(v27, &qword_1ECCA27B8, qword_1DD10DE10);
  if (v9)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v10, qword_1EDE57E00);

    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27[0] = v14;
      *v13 = 136315138;
      v15 = sub_1DCB10E9C(v6, v8, v27);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_1DCAFC000, v11, v12, "An extension mapped to '%s' already exists. Custom extension will not be used.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A8390](v14, -1, -1);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57E00);
    sub_1DCB17CA0(a1, v27);

    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v19 = 136315394;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA27B0, &unk_1DD0E68D0);
      v25[0] = swift_allocObject();
      sub_1DCB17CA0(v27, v25[0] + 16);
      __swift_project_boxed_opaque_existential_1(v25, v26);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v20 = sub_1DD0DF2AC();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v23 = sub_1DCB10E9C(v20, v22, &v28);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1DCB10E9C(v6, v8, &v28);
      _os_log_impl(&dword_1DCAFC000, v17, v18, "Mapping custom type %s to '%s'", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v24, -1, -1);
      MEMORY[0x1E12A8390](v19, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v27);
    }

    sub_1DCB17CA0(a1, v27);
    sub_1DD06E190(v27);
  }
}

void sub_1DCC5C944(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v6 = a2();
  v8 = v7;
  sub_1DCC18004(v27, v6, v7, *a4);
  v9 = v27[3];
  sub_1DCB16D50(v27, &qword_1ECCA2730, &qword_1DD0E6860);
  if (v9)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v10, qword_1EDE57E00);

    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27[0] = v14;
      *v13 = 136315138;
      v15 = sub_1DCB10E9C(v6, v8, v27);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_1DCAFC000, v11, v12, "An extension mapped to '%s' already exists. Custom extension will not be used.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A8390](v14, -1, -1);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57E00);
    sub_1DCB17CA0(a1, v27);

    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v19 = 136315394;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA27C0, &unk_1DD0E68E0);
      v25[0] = swift_allocObject();
      sub_1DCB17CA0(v27, v25[0] + 16);
      __swift_project_boxed_opaque_existential_1(v25, v26);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v20 = sub_1DD0DF2AC();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v23 = sub_1DCB10E9C(v20, v22, &v28);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1DCB10E9C(v6, v8, &v28);
      _os_log_impl(&dword_1DCAFC000, v17, v18, "Mapping custom type %s to '%s'", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v24, -1, -1);
      MEMORY[0x1E12A8390](v19, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v27);
    }

    sub_1DCB17CA0(a1, v27);
    sub_1DD06E228(v27);
  }
}

unint64_t sub_1DCC5CD04()
{
  result = qword_1ECCA2708;
  if (!qword_1ECCA2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2708);
  }

  return result;
}

uint64_t sub_1DCC5CD90()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_63_2(v5);

  return sub_1DCC5A668(v7, v8, v9, v10);
}

unint64_t sub_1DCC5CE28()
{
  result = qword_1ECCA2718;
  if (!qword_1ECCA2718)
  {
    sub_1DCB10E5C(255, &qword_1ECCA2710, 0x1E69A8DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2718);
  }

  return result;
}

void *sub_1DCC5CF70(void *result, char *__dst, unint64_t a3, uint64_t a4)
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
  if (!__dst)
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
    v11 = __dst;
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
      v17 = (*(a4 + 48) + ((v15 << 12) | (v16 << 6)));
      v19 = v17[1];
      v18 = v17[2];
      v20 = *v17;
      *&v23[9] = *(v17 + 41);
      v22[1] = v19;
      *v23 = v18;
      v22[0] = v20;
      memmove(v11, v17, 0x39uLL);
      if (v14 == v10)
      {
        sub_1DCB32880(v22, v21);
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 64;
      result = sub_1DCB32880(v22, v21);
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

unint64_t sub_1DCC5D100(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1DD0DB3AC();
  v9 = *(v8 - 8);
  v44 = v8;
  v45 = v9;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v43 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v42 = &v35 - v15;
  v17 = a4 + 56;
  v16 = *(a4 + 56);
  v41 = -1 << *(a4 + 32);
  if (-v41 < 64)
  {
    v18 = ~(-1 << -v41);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  if (!a2)
  {
    v22 = 0;
    result = 0;
LABEL_22:
    v34 = ~v41;
    *a1 = a4;
    a1[1] = v17;
    a1[2] = v34;
    a1[3] = v22;
    a1[4] = v19;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v22 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = a1;
    v37 = a4 + 56;
    v21 = 0;
    v22 = 0;
    v23 = (63 - v41) >> 6;
    v38 = v45 + 32;
    v39 = v45 + 16;
    v40 = result;
    while (v21 < result)
    {
      if (__OFADD__(v21, 1))
      {
        goto LABEL_26;
      }

      if (!v19)
      {
        v17 = v37;
        while (1)
        {
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v24 >= v23)
          {
            v19 = 0;
            result = v21;
            a1 = v36;
            goto LABEL_22;
          }

          v19 = *(v37 + 8 * v24);
          ++v22;
          if (v19)
          {
            v46 = v21 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v46 = v21 + 1;
      v24 = v22;
LABEL_17:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = a4;
      v27 = *(a4 + 48);
      v29 = v44;
      v28 = v45;
      v30 = *(v45 + 72);
      v31 = v43;
      (*(v45 + 16))(v43, v27 + v30 * (v25 | (v24 << 6)), v44);
      v32 = *(v28 + 32);
      v33 = v42;
      v32(v42, v31, v29);
      v32(a2, v33, v29);
      result = v40;
      v21 = v46;
      if (v46 == v40)
      {
        v22 = v24;
        a1 = v36;
        v17 = v37;
        a4 = v26;
        goto LABEL_22;
      }

      a2 += v30;
      v22 = v24;
      a4 = v26;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DCC5D398(void *result, void *a2, unint64_t a3, uint64_t a4)
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

uint64_t sub_1DCC5D4F0(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

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

uint64_t sub_1DCC5D64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC5D670, 0, 0);
}

uint64_t sub_1DCC5D670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  v15 = v14[9];
  v16 = v14[10];
  v60 = MEMORY[0x1E69E7CC8];

  v17 = OUTLINED_FUNCTION_76_0();
  sub_1DCC519FC(v17, v18, v19);
  v20 = *(v60 + 64);
  v21 = *(v60 + 32);
  OUTLINED_FUNCTION_5_20();
  v24 = v23 & v22;
  OUTLINED_FUNCTION_74_4();
  v26 = v25 >> 6;

  v27 = 0;
  while (v24)
  {
    v28 = v27;
LABEL_8:
    OUTLINED_FUNCTION_46_7(v28);
    v29 = v14[6];
    __swift_project_boxed_opaque_existential_1(v14 + 2, v14[5]);
    v30 = OUTLINED_FUNCTION_44_5();
    v32 = v31(v30);

    __swift_destroy_boxed_opaque_existential_1Tm(v14 + 2);
    if (v32)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v33 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v33, qword_1EDE57E00);
      v34 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v35 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_97_0(v37);
        OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v38, v39, "Parser indicates that it will produce an event for the current input. Will process input.");
        v40 = OUTLINED_FUNCTION_11_3();
        MEMORY[0x1E12A8390](v40);
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v28 >= v26)
    {
      break;
    }

    v24 = *(v60 + 64 + 8 * v28);
    ++v27;
    if (v24)
    {
      v27 = v28;
      goto LABEL_8;
    }
  }

  if (qword_1EDE4F900 == -1)
  {
    goto LABEL_15;
  }

LABEL_22:
  OUTLINED_FUNCTION_1_2();
  swift_once();
LABEL_15:
  v41 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v41, qword_1EDE57E00);
  v42 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v43 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v45);
    OUTLINED_FUNCTION_15_8();
    _os_log_impl(v46, v47, v48, v49, v50, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

LABEL_18:
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_76();

  return v54(v51, v52, v53, v54, v55, v56, v57, v58, a9, v60, a11, a12, a13, a14);
}

uint64_t sub_1DCC5D8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC5D8E4, 0, 0);
}

uint64_t sub_1DCC5D8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  v15 = v14[9];
  v16 = v14[10];
  v60 = MEMORY[0x1E69E7CC8];

  v17 = OUTLINED_FUNCTION_76_0();
  sub_1DCC51870(v17, v18, v19);
  v20 = *(v60 + 64);
  v21 = *(v60 + 32);
  OUTLINED_FUNCTION_5_20();
  v24 = v23 & v22;
  OUTLINED_FUNCTION_74_4();
  v26 = v25 >> 6;

  v27 = 0;
  while (v24)
  {
    v28 = v27;
LABEL_8:
    OUTLINED_FUNCTION_46_7(v28);
    v29 = v14[6];
    __swift_project_boxed_opaque_existential_1(v14 + 2, v14[5]);
    v30 = OUTLINED_FUNCTION_44_5();
    v32 = v31(v30);

    __swift_destroy_boxed_opaque_existential_1Tm(v14 + 2);
    if (v32)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v33 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v33, qword_1EDE57E00);
      v34 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v35 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_97_0(v37);
        OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v38, v39, "Parser indicates that it will produce an event for the current input. Will process input.");
        v40 = OUTLINED_FUNCTION_11_3();
        MEMORY[0x1E12A8390](v40);
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v28 >= v26)
    {
      break;
    }

    v24 = *(v60 + 64 + 8 * v28);
    ++v27;
    if (v24)
    {
      v27 = v28;
      goto LABEL_8;
    }
  }

  if (qword_1EDE4F900 == -1)
  {
    goto LABEL_15;
  }

LABEL_22:
  OUTLINED_FUNCTION_1_2();
  swift_once();
LABEL_15:
  v41 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v41, qword_1EDE57E00);
  v42 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v43 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v45);
    OUTLINED_FUNCTION_15_8();
    _os_log_impl(v46, v47, v48, v49, v50, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

LABEL_18:
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_76();

  return v54(v51, v52, v53, v54, v55, v56, v57, v58, a9, v60, a11, a12, a13, a14);
}

uint64_t sub_1DCC5DB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = type metadata accessor for FlowLocatorWrapper();
  v15 = &off_1F585B768;
  *&v13 = a4;
  sub_1DCC5DD14();
  v10 = swift_allocError();
  *v11 = 0;
  *(a5 + 16) = v10;
  *(a5 + 24) = 64;
  *(a5 + 96) = 1;
  *(a5 + 32) = a1;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  sub_1DCAFF9E8(&v13, a5 + 56);
  return a5;
}

uint64_t sub_1DCC5DBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FlowLocatorWrapper();
  v18[3] = v8;
  v18[4] = &off_1F585B768;
  v18[0] = a4;
  type metadata accessor for DirectInvocationExecutingFlow();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v18, v8);
  v11 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v10);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_1DCC5DB34(a1, a2, a3, *v13, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v15;
}

unint64_t sub_1DCC5DD14()
{
  result = qword_1ECCA2738;
  if (!qword_1ECCA2738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2738);
  }

  return result;
}

uint64_t sub_1DCC5DD68(uint64_t a1)
{
  v2 = type metadata accessor for PresentationElements(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCC5DDC4()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_63_2(v5);

  return sub_1DCC59480(v7, v8, v9, v10);
}

void sub_1DCC5DE5C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}

uint64_t sub_1DCC5DEBC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_75_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *destroy for AuthoredFlowRunner.ProcessingAction(uint64_t *result)
{
  if (result[3] >= 0xFFFFFFFF)
  {
    v2 = result;
    __swift_destroy_boxed_opaque_existential_1Tm(result);
    v3 = v2[5];
  }

  return result;
}

uint64_t initializeWithCopy for AuthoredFlowRunner.ProcessingAction(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 < 0xFFFFFFFF)
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
    *(a1 + 40) = *(a2 + 40);
  }

  return a1;
}

uint64_t assignWithCopy for AuthoredFlowRunner.ProcessingAction(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 5);

      return a1;
    }

LABEL_7:
    v8 = *a2;
    v9 = a2[2];
    *(a1 + 16) = a2[1];
    *(a1 + 32) = v9;
    *a1 = v8;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v7 = *(a1 + 40);

    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v5 = *(a2 + 5);
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;

  return a1;
}

uint64_t assignWithTake for AuthoredFlowRunner.ProcessingAction(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (v4 < 0xFFFFFFFF)
  {
    v8 = *(a1 + 40);

LABEL_5:
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    *(a1 + 32) = *(a2 + 32);
    return a1;
  }

  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *(a2 + 40);
  v7 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for AuthoredFlowRunner.ProcessingAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 48))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for AuthoredFlowRunner.ProcessingAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_1DCC5E330(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

id sub_1DCC5E370(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {

    return a3;
  }
}

uint64_t sub_1DCC5E400(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{

  if ((a6 & 1) == 0)
  {
  }

  return result;
}

uint64_t initializeWithCopy for AuthoredFlowRunner.AuthoredFlowError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_1DCC5E370(*a2, v4, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return a1;
}

uint64_t assignWithCopy for AuthoredFlowRunner.AuthoredFlowError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_1DCC5E370(*a2, v4, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  sub_1DCC5E400(v9, v10, v11, v12, v13, v14);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for AuthoredFlowRunner.AuthoredFlowError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  sub_1DCC5E400(v5, v7, v6, v8, v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for AuthoredFlowRunner.AuthoredFlowError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 41))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for AuthoredFlowRunner.AuthoredFlowError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

void destroy for NextAction(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 >= 4)
  {
    v2 = *a1 + 4;
  }

  switch(v2)
  {
    case 0u:
      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      __swift_destroy_boxed_opaque_existential_1Tm((a1 + 40));
      v3 = *(a1 + 80);

      break;
    case 1u:
    case 2u:
      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      break;
    case 3u:
      v4 = *a1;

      break;
    default:
      return;
  }
}

void *initializeWithCopy for NextAction(void *__dst, void *__src)
{
  v4 = *(__src + 88);
  if (v4 >= 4)
  {
    v4 = *__src + 4;
  }

  switch(v4)
  {
    case 0u:
      v5 = __src[3];
      if (v5)
      {
        v6 = __src[4];
        __dst[3] = v5;
        __dst[4] = v6;
        (**(v5 - 8))(__dst, __src);
      }

      else
      {
        v16 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v16;
        __dst[4] = __src[4];
      }

      v17 = *(__src + 4);
      *(__dst + 4) = v17;
      (**(v17 - 8))(__dst + 40, __src + 40);
      __dst[10] = __src[10];
      *(__dst + 88) = 0;

      goto LABEL_21;
    case 1u:
      v12 = __src[3];
      if (v12)
      {
        v13 = __src[4];
        __dst[3] = v12;
        __dst[4] = v13;
        (**(v12 - 8))(__dst, __src);
      }

      else
      {
        v18 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v18;
        __dst[4] = __src[4];
      }

      v11 = 1;
      goto LABEL_20;
    case 2u:
      v7 = __src[3];
      if (v7)
      {
        v8 = __src[4];
        __dst[3] = v7;
        __dst[4] = v8;
        (**(v7 - 8))(__dst, __src);
      }

      else
      {
        v15 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v15;
        __dst[4] = __src[4];
      }

      v11 = 2;
      goto LABEL_20;
    case 3u:
      v9 = *__src;
      v10 = *__src;
      *__dst = v9;
      *(__dst + 8) = *(__src + 8);
      v11 = 3;
LABEL_20:
      *(__dst + 88) = v11;
LABEL_21:
      result = __dst;
      break;
    default:

      result = memcpy(__dst, __src, 0x59uLL);
      break;
  }

  return result;
}

uint64_t *assignWithCopy for NextAction(uint64_t *__dst, uint64_t *__src)
{
  if (__dst != __src)
  {
    v4 = *(__dst + 88);
    if (v4 >= 4)
    {
      v4 = *__dst + 4;
    }

    switch(v4)
    {
      case 0u:
        if (__dst[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(__dst);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(__dst + 5);
        v5 = __dst[10];

        break;
      case 1u:
      case 2u:
        if (__dst[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(__dst);
        }

        break;
      case 3u:

        break;
      default:
        break;
    }

    v6 = *(__src + 88);
    if (v6 >= 4)
    {
      v6 = *__src + 4;
    }

    switch(v6)
    {
      case 0u:
        v7 = __src[3];
        if (v7)
        {
          __dst[3] = v7;
          __dst[4] = __src[4];
          (**(v7 - 8))(__dst, __src);
        }

        else
        {
          v16 = *__src;
          v17 = *(__src + 1);
          __dst[4] = __src[4];
          *__dst = v16;
          *(__dst + 1) = v17;
        }

        v18 = __src[8];
        __dst[8] = v18;
        __dst[9] = __src[9];
        (**(v18 - 8))(__dst + 40, __src + 40);
        __dst[10] = __src[10];
        *(__dst + 88) = 0;

        return __dst;
      case 1u:
        v12 = __src[3];
        if (v12)
        {
          __dst[3] = v12;
          __dst[4] = __src[4];
          (**(v12 - 8))(__dst, __src);
        }

        else
        {
          v19 = *__src;
          v20 = *(__src + 1);
          __dst[4] = __src[4];
          *__dst = v19;
          *(__dst + 1) = v20;
        }

        v11 = 1;
        goto LABEL_30;
      case 2u:
        v8 = __src[3];
        if (v8)
        {
          __dst[3] = v8;
          __dst[4] = __src[4];
          (**(v8 - 8))(__dst, __src);
        }

        else
        {
          v14 = *__src;
          v15 = *(__src + 1);
          __dst[4] = __src[4];
          *__dst = v14;
          *(__dst + 1) = v15;
        }

        v11 = 2;
        goto LABEL_30;
      case 3u:
        v9 = *__src;
        v10 = *__src;
        *__dst = v9;
        *(__dst + 8) = *(__src + 8);
        v11 = 3;
LABEL_30:
        *(__dst + 88) = v11;
        return __dst;
      default:

        return memcpy(__dst, __src, 0x59uLL);
    }
  }

  return __dst;
}

uint64_t *assignWithTake for NextAction(uint64_t *__dst, uint64_t *__src)
{
  if (__dst != __src)
  {
    v4 = *(__dst + 88);
    if (v4 >= 4)
    {
      v4 = *__dst + 4;
    }

    switch(v4)
    {
      case 0u:
        if (__dst[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(__dst);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(__dst + 5);
        v5 = __dst[10];

        break;
      case 1u:
      case 2u:
        if (__dst[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(__dst);
        }

        break;
      case 3u:

        break;
      default:
        break;
    }

    v6 = *(__src + 88);
    if (v6 >= 4)
    {
      v6 = *__src + 4;
    }

    switch(v6)
    {
      case 0u:
        memcpy(__dst, __src, 0x58uLL);
        *(__dst + 88) = 0;
        return __dst;
      case 1u:
        v9 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v9;
        __dst[4] = __src[4];
        v8 = 1;
        goto LABEL_18;
      case 2u:
        v7 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v7;
        __dst[4] = __src[4];
        v8 = 2;
        goto LABEL_18;
      case 3u:
        *__dst = *__src;
        *(__dst + 8) = *(__src + 8);
        v8 = 3;
LABEL_18:
        *(__dst + 88) = v8;
        return __dst;
      default:

        return memcpy(__dst, __src, 0x59uLL);
    }
  }

  return __dst;
}

uint64_t getEnumTagSinglePayload for NextAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 89))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 88);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NextAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 73) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCC5EE24(uint64_t a1)
{
  result = *(a1 + 88);
  if (result >= 4)
  {
    return (*a1 + 4);
  }

  return result;
}

uint64_t sub_1DCC5EE40(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = a2 - 4;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 88) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_81_2()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_105_4()
{

  return sub_1DD0DF2AC();
}

uint64_t static AuthoredValueProvidingResult.taskComplete()@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "Building result based on a completed task", v5, 2u);
    OUTLINED_FUNCTION_80();
  }

  result = sub_1DD0DDE9C();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t static AuthoredValueProvidingResult.authoredVariables(variables:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);

  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_1DD0DDEAC();
    v11 = sub_1DCB10E9C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "Building result based on a variables with keys '%s'", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  *a2 = a1;
  *(a2 + 8) = 0;
}

id static AuthoredValueProvidingResult.error(error:handled:)@<X0>(id a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2 | 0x40;
  return a1;
}

BOOL static AuthoredValueProvidingResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!(v2 >> 6))
  {
    if (v4 < 0x40)
    {
      v5 = *a1;
      sub_1DCC5F868(*a2, *(a2 + 8));
      sub_1DCC5F868(v5, v2);
      sub_1DCC5F21C();
      v7 = v6;
      sub_1DCC5F884(v5, v2);
      sub_1DCC5F884(v3, v4);
      return v7 & 1;
    }

    return 0;
  }

  if (v2 >> 6 != 1)
  {
    v9 = (v4 & 0xC0) == 0x80 && v3 == 0;
    return v9 && v4 == 128;
  }

  return (v4 & 0xC0) == 0x40;
}

void sub_1DCC5F21C()
{
  OUTLINED_FUNCTION_20_10();
  if (v0 == v1 || (v2 = v1, v3 = v0, *(v0 + 16) != *(v1 + 16)))
  {
LABEL_14:
    OUTLINED_FUNCTION_15_5();
  }

  else
  {
    v5 = v0 + 64;
    v4 = *(v0 + 64);
    v6 = *(v0 + 32);
    OUTLINED_FUNCTION_10_16();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;

    v12 = 0;
    while (v9)
    {
LABEL_9:
      if (*(v2 + 16))
      {
        v14 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v15 = (*(v3 + 48) + ((v12 << 10) | (16 * v14)));
        v17 = *v15;
        v16 = v15[1];

        sub_1DCB21038(v17, v16);
        LOBYTE(v17) = v18;

        if (v17)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        goto LABEL_14;
      }

      v9 = *(v5 + 8 * v13);
      ++v12;
      if (v9)
      {
        v12 = v13;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t static AuthoredValueProvidingResult.authoredVariableAsEntity(entityName:entityAttributes:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v8 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v8, qword_1EDE57E00);

  v9 = sub_1DD0DD8EC();
  v10 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1DCB10E9C(a1, a2, &v15);
    _os_log_impl(&dword_1DCAFC000, v9, v10, "Building result based on a single entity named '%s'", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  *(inited + 48) = a3;

  result = sub_1DD0DDE9C();
  *a4 = result;
  *(a4 + 8) = 0;
  return result;
}

uint64_t AuthoredValueProvidingResult.extractVariables(variableNameMap:)(uint64_t a1)
{
  if (*(v1 + 8) > 0x3Fu)
  {

    return sub_1DD0DDE9C();
  }

  v3 = *v1;
  v4 = sub_1DD0DDE9C();
  v6 = v3 + 64;
  v5 = *(v3 + 64);
  v7 = *(v3 + 32);
  OUTLINED_FUNCTION_10_16();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v40 = v3;

  v13 = 0;
  v38 = v3 + 64;
  v39 = a1;
  if (!v10)
  {
    goto LABEL_4;
  }

  do
  {
    v14 = v13;
LABEL_7:
    v15 = __clz(__rbit64(v10)) | (v14 << 6);
    v16 = (*(v40 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_1DCB0DF6C(*(v40 + 56) + 32 * v15, &v46);
    v45[0] = v18;
    v45[1] = v17;
    sub_1DCC60138(v45, v43);
    v19 = v43[1];
    if (*(a1 + 16))
    {
      v20 = v43[0];

      v21 = sub_1DCB21038(v20, v19);
      LOBYTE(v20) = v22;

      if (v20)
      {
        v23 = (*(a1 + 56) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];

        goto LABEL_12;
      }
    }

    else
    {
    }

    sub_1DCC60138(v45, &v41);
    v25 = *(&v41 + 1);
    v24 = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    sub_1DCC60138(v45, v43);

    sub_1DCB20B30(v44, &v41);
    swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_1DCB21038(v24, v25);
    if (__OFADD__(v4[2], (v27 & 1) == 0))
    {
      goto LABEL_27;
    }

    v28 = v26;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2750, &qword_1DD0E6878);
    if (sub_1DD0DEDCC())
    {
      v30 = sub_1DCB21038(v24, v25);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_29;
      }

      v28 = v30;
    }

    v10 &= v10 - 1;
    if (v29)
    {

      v32 = (v4[7] + 32 * v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      sub_1DCB20B30(&v41, v32);
      sub_1DCC60A8C(v45);
    }

    else
    {
      v4[(v28 >> 6) + 8] |= 1 << v28;
      v33 = (v4[6] + 16 * v28);
      *v33 = v24;
      v33[1] = v25;
      sub_1DCB20B30(&v41, (v4[7] + 32 * v28));
      sub_1DCC60A8C(v45);
      v34 = v4[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_28;
      }

      v4[2] = v36;
    }

    v13 = v14;
    v6 = v38;
    a1 = v39;
  }

  while (v10);
LABEL_4:
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return v4;
    }

    v10 = *(v6 + 8 * v14);
    ++v13;
    if (v10)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1DD0DF12C();
  __break(1u);
  return result;
}

id sub_1DCC5F868(id result, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    return result;
  }

  if (!(a2 >> 6))
  {
  }

  return result;
}

void sub_1DCC5F884(void *a1, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
  }

  else if (!(a2 >> 6))
  {
  }
}

unint64_t sub_1DCC5F8A0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DD0DEB9C();

  return sub_1DCC5FA40(a1, v5);
}

unint64_t sub_1DCC5F8E4()
{
  OUTLINED_FUNCTION_16_9();
  MEMORY[0x1E12A7840](0);
  v0 = sub_1DD0DF20C();

  return sub_1DCC5FB04(v0);
}

unint64_t sub_1DCC5F934(uint64_t a1)
{
  OUTLINED_FUNCTION_16_9();
  MEMORY[0x1E12A7840](a1);
  v2 = sub_1DD0DF20C();

  return sub_1DCC5FB30(a1, v2);
}

unint64_t sub_1DCC5F998(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DD0DE8DC();

  return sub_1DCC5FB90(a1, v5);
}

unint64_t sub_1DCC5F9DC(char a1)
{
  OUTLINED_FUNCTION_16_9();
  MEMORY[0x1E12A7840](a1 & 1);
  v2 = sub_1DD0DF20C();

  return sub_1DCC5FC50(a1 & 1, v2);
}

unint64_t sub_1DCC5FA40(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1DCC60FBC(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1E12A7200](v8, a1);
    sub_1DCC61018(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1DCC5FB04(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_1DCC5FB30(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1DCC5FB90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1DCC60D38();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1DD0DE8EC();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1DCC5FC50(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

uint64_t sub_1DCC5FCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DCB21038(a3, a4);
  OUTLINED_FUNCTION_0_17(v11, v12);
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = sub_1DD0DF12C();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2810, &qword_1DD0F4B30);
  if (OUTLINED_FUNCTION_19_11())
  {
    v18 = *v5;
    sub_1DCB21038(a3, a4);
    OUTLINED_FUNCTION_7_21();
    if (!v20)
    {
      goto LABEL_14;
    }

    v16 = v19;
  }

  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
    OUTLINED_FUNCTION_49();
  }

  else
  {
    sub_1DCC608E8(v16, a3, a4, a1, a2, v21);
    OUTLINED_FUNCTION_49();
  }
}

uint64_t sub_1DCC5FDD4()
{
  OUTLINED_FUNCTION_20_10();
  v5 = OUTLINED_FUNCTION_6_16(v2, v3, v4);
  OUTLINED_FUNCTION_0_17(v5, v6);
  if (v8)
  {
    __break(1u);
LABEL_13:
    result = sub_1DD0DF12C();
    __break(1u);
    return result;
  }

  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA27E8, &unk_1DD0E6B10);
  OUTLINED_FUNCTION_4_17();
  if (sub_1DD0DEDCC())
  {
    v10 = OUTLINED_FUNCTION_9_16();
    sub_1DCB21038(v10, v1);
    OUTLINED_FUNCTION_7_21();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v9)
  {
    v12 = *(*v0 + 56);
    v13 = *(*(type metadata accessor for Input(0) - 8) + 72);
    OUTLINED_FUNCTION_15_5();

    return sub_1DCC60EC8(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_11_19();
    sub_1DCC60934(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_15_5();
  }
}

_OWORD *sub_1DCC5FF18(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1DCC5F8A0(a2);
  OUTLINED_FUNCTION_0_17(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    result = sub_1DD0DF12C();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2818, &qword_1DD0E6B48);
  if (sub_1DD0DEDCC())
  {
    v14 = *v3;
    sub_1DCC5F8A0(a2);
    OUTLINED_FUNCTION_5_21();
    if (!v16)
    {
      goto LABEL_12;
    }

    v12 = v15;
  }

  v17 = *v3;
  if (v13)
  {
    v18 = (v17[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);

    return sub_1DCB20B30(a1, v18);
  }

  else
  {
    sub_1DCC60FBC(a2, v20);
    return sub_1DCC609CC(v12, v20, a1, v17);
  }
}

_OWORD *sub_1DCC60044()
{
  OUTLINED_FUNCTION_20_10();
  v7 = OUTLINED_FUNCTION_6_16(v4, v5, v6);
  OUTLINED_FUNCTION_0_17(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_1DD0DF12C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_18_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2750, &qword_1DD0E6878);
  OUTLINED_FUNCTION_4_17();
  if (sub_1DD0DEDCC())
  {
    v10 = OUTLINED_FUNCTION_9_16();
    sub_1DCB21038(v10, v1);
    OUTLINED_FUNCTION_5_21();
    if (!v12)
    {
      goto LABEL_14;
    }

    v3 = v11;
  }

  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((*(*v0 + 56) + 32 * v3));
    OUTLINED_FUNCTION_15_5();

    return sub_1DCB20B30(v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_11_19();
    sub_1DCC60A48(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_15_5();
  }
}

uint64_t sub_1DCC60138(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2760, &unk_1DD0E6A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCC601A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_20_10();
  v13 = v10;
  v17 = OUTLINED_FUNCTION_6_16(v14, v15, v16);
  OUTLINED_FUNCTION_0_17(v17, v18);
  if (v21)
  {
    __break(1u);
LABEL_14:
    result = sub_1DD0DF12C();
    __break(1u);
    return result;
  }

  v22 = v19;
  v23 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA27C8, &qword_1DD0E6AE8);
  OUTLINED_FUNCTION_4_17();
  if (sub_1DD0DEDCC())
  {
    v24 = *v10;
    sub_1DCB21038(v12, v11);
    OUTLINED_FUNCTION_7_21();
    if (!v26)
    {
      goto LABEL_14;
    }

    v22 = v25;
  }

  if (v23)
  {
    v27 = *(*v13 + 56);
    v28 = *(sub_1DD0DAFDC() - 8);
    v29 = *(v28 + 40);
    v30 = v27 + *(v28 + 72) * v22;
    OUTLINED_FUNCTION_15_5();

    return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_11_19();
    sub_1DCC60C88(v40, v41, v42, v43, v44);
    OUTLINED_FUNCTION_15_5();
  }
}

uint64_t sub_1DCC60320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v13 = *v6;
  v14 = sub_1DCB21038(a2, a3);
  OUTLINED_FUNCTION_0_17(v14, v15);
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (OUTLINED_FUNCTION_19_11())
  {
    v21 = *v9;
    v22 = sub_1DCB21038(a2, a3);
    if ((v20 & 1) == (v23 & 1))
    {
      v19 = v22;
      goto LABEL_5;
    }

LABEL_13:
    result = sub_1DD0DF12C();
    __break(1u);
    return result;
  }

LABEL_5:
  v24 = *v9;
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((*(v24 + 56) + 40 * v19));
    OUTLINED_FUNCTION_12_1();

    __asm { BRAA            X2, X16 }
  }

  sub_1DCC60D7C(v19, a2, a3, a1, v24);
  OUTLINED_FUNCTION_12_1();
}

uint64_t sub_1DCC60528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = OUTLINED_FUNCTION_2_30(a1, a2, a3);
  OUTLINED_FUNCTION_0_17(v12, v13);
  if (v16)
  {
    __break(1u);
LABEL_14:
    result = sub_1DD0DF12C();
    __break(1u);
    return result;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4_17();
  if (sub_1DD0DEDCC())
  {
    v19 = OUTLINED_FUNCTION_9_16();
    sub_1DCB21038(v19, v6);
    OUTLINED_FUNCTION_7_21();
    if (!v21)
    {
      goto LABEL_14;
    }

    v17 = v20;
  }

  v22 = *v9;
  if (v18)
  {
    v23 = *(v22 + 56);
    OUTLINED_FUNCTION_12_1();

    __asm { BRAA            X2, X16 }
  }

  sub_1DCC60E28(v17, v8, v6, v7, v22);
  OUTLINED_FUNCTION_12_1();
}

void sub_1DCC60648()
{
  OUTLINED_FUNCTION_20_10();
  v8 = OUTLINED_FUNCTION_2_30(v5, v6, v7);
  OUTLINED_FUNCTION_0_17(v8, v9);
  if (v10)
  {
    __break(1u);
LABEL_14:
    sub_1DD0DF12C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_18_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2800, &qword_1DD0E6B28);
  OUTLINED_FUNCTION_4_17();
  if (sub_1DD0DEDCC())
  {
    v11 = OUTLINED_FUNCTION_9_16();
    sub_1DCB21038(v11, v0);
    OUTLINED_FUNCTION_5_21();
    if (!v13)
    {
      goto LABEL_14;
    }

    v4 = v12;
  }

  if (v3)
  {
    v14 = *(*v2 + 56);
    v15 = *(v14 + 8 * v4);
    *(v14 + 8 * v4) = v1;
    OUTLINED_FUNCTION_15_5();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_8_22();
    sub_1DCC60F2C(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_15_5();
  }
}

void sub_1DCC60728()
{
  OUTLINED_FUNCTION_20_10();
  v8 = OUTLINED_FUNCTION_2_30(v5, v6, v7);
  OUTLINED_FUNCTION_0_17(v8, v9);
  if (v10)
  {
    __break(1u);
LABEL_12:
    sub_1DD0DF12C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_18_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA27F8, &qword_1DD0E6B20);
  OUTLINED_FUNCTION_4_17();
  if (sub_1DD0DEDCC())
  {
    v11 = OUTLINED_FUNCTION_9_16();
    sub_1DCB21038(v11, v0);
    OUTLINED_FUNCTION_5_21();
    if (!v13)
    {
      goto LABEL_12;
    }

    v4 = v12;
  }

  if (v3)
  {
    *(*(*v2 + 56) + 8 * v4) = v1;
    OUTLINED_FUNCTION_15_5();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_8_22();
    sub_1DCC60F2C(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_15_5();
  }
}

void sub_1DCC607F4()
{
  OUTLINED_FUNCTION_20_10();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v0;
  v7 = sub_1DCC5F9DC(v2 & 1);
  OUTLINED_FUNCTION_0_17(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    sub_1DD0DF12C();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA27F0, &unk_1DD1097F0);
  if (sub_1DD0DEDCC())
  {
    v14 = *v1;
    sub_1DCC5F9DC(v3 & 1);
    OUTLINED_FUNCTION_5_21();
    if (!v16)
    {
      goto LABEL_12;
    }

    v12 = v15;
  }

  if (v13)
  {
    *(*(*v1 + 56) + v12) = v5 & 1;
    OUTLINED_FUNCTION_15_5();
  }

  else
  {
    OUTLINED_FUNCTION_15_5();

    sub_1DCC60F74(v17, v18, v19, v20);
  }
}

unint64_t sub_1DCC608E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1DCC60934(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Input(0);
  result = sub_1DCC333DC(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

_OWORD *sub_1DCC609CC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1DCB20B30(a3, (a4[7] + 32 * a1));
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

_OWORD *sub_1DCC60A48(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_1_23(a1, a2, a3, a4, a5);
  result = sub_1DCB20B30(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

uint64_t sub_1DCC60A8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2760, &unk_1DD0E6A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCC60B40(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_17(a1, a2);
  v5 = *v2;
  *v2 = v3;
  v6 = *(v2 + 8);
  *(v2 + 8) = v4;
  sub_1DCC5F884(v5, v6);
  return v2;
}

uint64_t sub_1DCC60B80(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 9))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
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

uint64_t sub_1DCC60BCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1DCC60C20(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_1DCC60C50(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    v2 = 0x80;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_1DCC60C88(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1DD0DAFDC();
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

unint64_t sub_1DCC60D38()
{
  result = qword_1ECCA27D0;
  if (!qword_1ECCA27D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCA27D0);
  }

  return result;
}

uint64_t sub_1DCC60D7C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_1_23(a1, a2, a3, a4, a5);
  result = v9(v8, v7 + 40 * v6);
  v11 = *(a5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }

  return result;
}

unint64_t sub_1DCC60E28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_1_23(a1, a2, a3, a4, a5);
  v8 = (v7 + 48 * result);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v8[2] = v9[2];
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v13;
  }

  return result;
}

uint64_t sub_1DCC60EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Input(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCC60F2C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1DCC60F74(unint64_t result, char a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1DCC6106C()
{
  v0 = sub_1DD0DDFBC();
  v2 = v1;
  if (v0 == sub_1DD0DDFBC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1DD0DF0AC();
  }

  return v5 & 1;
}

uint64_t sub_1DCC61108()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E6B70;
  sub_1DCB10E5C(0, &qword_1ECCA2830, 0x1E696E820);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1DCC615E8(ObjCClassFromMetadata);
  OUTLINED_FUNCTION_0_18();
  if (v4)
  {
    v5 = 0xE000000000000000;
  }

  else
  {
    v5 = v2;
  }

  *(inited + 32) = v3;
  *(inited + 40) = v5;
  sub_1DCB10E5C(0, &qword_1ECCA2838, 0x1E696EA18);
  v6 = swift_getObjCClassFromMetadata();
  sub_1DCC615E8(v6);
  OUTLINED_FUNCTION_0_18();
  if (v4)
  {
    v9 = 0xE000000000000000;
  }

  else
  {
    v9 = v7;
  }

  *(inited + 48) = v8;
  *(inited + 56) = v9;
  sub_1DCB10E5C(0, &qword_1ECCA2840, 0x1E696E710);
  v10 = swift_getObjCClassFromMetadata();
  sub_1DCC615E8(v10);
  OUTLINED_FUNCTION_0_18();
  if (v4)
  {
    v13 = 0xE000000000000000;
  }

  else
  {
    v13 = v11;
  }

  *(inited + 64) = v12;
  *(inited + 72) = v13;
  sub_1DCB10E5C(0, &qword_1ECCA2848, 0x1E696E7C0);
  v14 = swift_getObjCClassFromMetadata();
  sub_1DCC615E8(v14);
  OUTLINED_FUNCTION_0_18();
  if (v4)
  {
    v17 = 0xE000000000000000;
  }

  else
  {
    v17 = v15;
  }

  *(inited + 80) = v16;
  *(inited + 88) = v17;
  sub_1DCB10E5C(0, &qword_1ECCA2850, 0x1E696EA40);
  v18 = swift_getObjCClassFromMetadata();
  sub_1DCC615E8(v18);
  OUTLINED_FUNCTION_0_18();
  if (v4)
  {
    v21 = 0xE000000000000000;
  }

  else
  {
    v21 = v19;
  }

  *(inited + 96) = v20;
  *(inited + 104) = v21;
  sub_1DCB10E5C(0, &qword_1ECCA2858, 0x1E696E7C8);
  v22 = swift_getObjCClassFromMetadata();
  sub_1DCC615E8(v22);
  OUTLINED_FUNCTION_0_18();
  if (v4)
  {
    v25 = 0xE000000000000000;
  }

  else
  {
    v25 = v23;
  }

  *(inited + 112) = v24;
  *(inited + 120) = v25;
  sub_1DCB10E5C(0, &qword_1ECCA2860, 0x1E696E758);
  v26 = swift_getObjCClassFromMetadata();
  sub_1DCC615E8(v26);
  OUTLINED_FUNCTION_0_18();
  if (v4)
  {
    v29 = 0xE000000000000000;
  }

  else
  {
    v29 = v27;
  }

  *(inited + 128) = v28;
  *(inited + 136) = v29;
  sub_1DCB10E5C(0, &qword_1ECCA2868, 0x1E696E9D8);
  v30 = swift_getObjCClassFromMetadata();
  sub_1DCC615E8(v30);
  OUTLINED_FUNCTION_0_18();
  if (v4)
  {
    v33 = 0xE000000000000000;
  }

  else
  {
    v33 = v31;
  }

  *(inited + 144) = v32;
  *(inited + 152) = v33;
  result = sub_1DCB18D80(inited);
  qword_1ECCA2828 = result;
  return result;
}

uint64_t sub_1DCC612CC(uint64_t a1)
{
  v2 = sub_1DD0DB14C();
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v40 = &v31 - v9;
  if (!*(a1 + 16))
  {
    v11 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2878, &qword_1DD0E6B88);
  result = sub_1DD0DEBFC();
  v11 = result;
  v35 = *(a1 + 16);
  if (!v35)
  {
LABEL_15:

    return v11;
  }

  v12 = 0;
  v39 = result + 56;
  v13 = *(v36 + 80);
  v33 = a1;
  v34 = a1 + ((v13 + 32) & ~v13);
  v38 = v36 + 16;
  v14 = (v36 + 8);
  v32 = (v36 + 32);
  while (v12 < *(a1 + 16))
  {
    v15 = *(v36 + 72);
    v37 = v12 + 1;
    v16 = *(v36 + 16);
    v16(v40, v34 + v15 * v12, v2);
    v17 = *(v11 + 40);
    sub_1DCC6164C(&qword_1ECCA2880);
    v18 = sub_1DD0DDF0C();
    v19 = ~(-1 << *(v11 + 32));
    while (1)
    {
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v39 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) == 0)
      {
        break;
      }

      v24 = v11;
      v16(v7, *(v11 + 48) + v20 * v15, v2);
      sub_1DCC6164C(&qword_1ECCA2888);
      v25 = sub_1DD0DDF7C();
      v26 = *v14;
      (*v14)(v7, v2);
      if (v25)
      {
        result = (v26)(v40, v2);
        v11 = v24;
        goto LABEL_12;
      }

      v18 = v20 + 1;
      v11 = v24;
    }

    v27 = v40;
    *(v39 + 8 * v21) = v23 | v22;
    result = (*v32)(*(v11 + 48) + v20 * v15, v27, v2);
    v28 = *(v11 + 16);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_17;
    }

    *(v11 + 16) = v30;
LABEL_12:
    v12 = v37;
    a1 = v33;
    if (v37 == v35)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DCC615E8(void *a1)
{
  v1 = [a1 typeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDFBC();

  return v3;
}

uint64_t sub_1DCC6164C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DD0DB14C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t BaseConcept.conceptType.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t BaseConcept.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t BaseConcept.__deallocating_deinit()
{
  BaseConcept.deinit();

  return swift_deallocClassInstance();
}

double static BehaviorResponseResult.complete()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 3;
  return result;
}

uint64_t static BehaviorResponseResult.executeFlow(flow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DCB17CA0(a1, a2);
  *(a2 + 40) = 1;
  return result;
}

uint64_t static BehaviorResponseResult.executeDirectInvocation(invocation:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 40) = 0;
}

uint64_t static BehaviorResponseResult.setAuthoredFlowVariables(variables:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 40) = 2;
}

uint64_t dispatch thunk of BehaviorResponseHandler.handle(parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1DCB193FC;

  return v13(a1, a2, a3, a4);
}

uint64_t destroy for BehaviorResponseResult(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2 == 2)
  {
    v5 = *result;
LABEL_9:
  }

  if (v2 != 1)
  {
    if (*(result + 40))
    {
      return result;
    }

    v3 = *(result + 8);

    v4 = *(v1 + 16);
    goto LABEL_9;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(result);
}

uint64_t initializeWithCopy for BehaviorResponseResult(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    *a1 = *a2;
    *(a1 + 40) = 2;
LABEL_7:

    return a1;
  }

  if (v3 != 1)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
      *(a1 + 25) = *(a2 + 25);
      return a1;
    }

    v4 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v4;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 40) = 0;

    goto LABEL_7;
  }

  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  (**(v5 - 8))(a1);
  *(a1 + 40) = 1;
  return a1;
}

uint64_t assignWithCopy for BehaviorResponseResult(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    sub_1DCC61BC4(a1);
    v4 = *(a2 + 40);
    if (v4 == 2)
    {
      *a1 = *a2;
      *(a1 + 40) = 2;
LABEL_8:

      return a1;
    }

    if (v4 != 1)
    {
      if (*(a2 + 40))
      {
        v6 = *a2;
        v7 = a2[1];
        *(a1 + 25) = *(a2 + 25);
        *a1 = v6;
        *(a1 + 16) = v7;
        return a1;
      }

      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 16) = *(a2 + 2);
      *(a1 + 40) = 0;

      goto LABEL_8;
    }

    v5 = *(a2 + 3);
    *(a1 + 24) = v5;
    *(a1 + 32) = *(a2 + 4);
    (**(v5 - 8))(a1, a2);
    *(a1 + 40) = 1;
  }

  return a1;
}

_OWORD *assignWithTake for BehaviorResponseResult(_OWORD *a1, _OWORD *a2)
{
  if (a1 != a2)
  {
    sub_1DCC61BC4(a1);
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
    *(a1 + 25) = *(a2 + 25);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for BehaviorResponseResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 41))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 3)
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

uint64_t storeEnumTagSinglePayload for BehaviorResponseResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destroy for BehaviorResponseResult.BehaviorResponseResultType(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2 >= 3)
  {
    v2 = *result + 3;
  }

  if (v2 == 2)
  {
    v5 = *result;
LABEL_11:
  }

  if (v2 != 1)
  {
    if (v2)
    {
      return result;
    }

    v3 = *(result + 8);

    v4 = *(v1 + 16);
    goto LABEL_11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(result);
}

uint64_t initializeWithCopy for BehaviorResponseResult.BehaviorResponseResultType(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 3)
  {
    v3 = *a2 + 3;
  }

  if (v3 == 2)
  {
    *a1 = *a2;
    *(a1 + 40) = 2;
LABEL_9:

    return a1;
  }

  if (v3 != 1)
  {
    if (v3)
    {
      v6 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
      *(a1 + 25) = *(a2 + 25);
      return a1;
    }

    v4 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v4;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 40) = 0;

    goto LABEL_9;
  }

  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  (**(v5 - 8))(a1);
  *(a1 + 40) = 1;
  return a1;
}

__int128 *assignWithCopy for BehaviorResponseResult.BehaviorResponseResultType(__int128 *a1, __int128 *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *(a1 + 40);
  if (v4 >= 3)
  {
    v4 = *a1 + 3;
  }

  switch(v4)
  {
    case 2u:
      v7 = *a1;
      goto LABEL_10;
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      break;
    case 0u:
      v5 = *(a1 + 1);

      v6 = *(a1 + 2);
LABEL_10:

      break;
  }

  v8 = *(a2 + 40);
  if (v8 >= 3)
  {
    v8 = *a2 + 3;
  }

  if (v8 == 2)
  {
    *a1 = *a2;
    *(a1 + 40) = 2;
LABEL_19:

    return a1;
  }

  if (v8 != 1)
  {
    if (v8)
    {
      v10 = *a2;
      v11 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v10;
      a1[1] = v11;
      return a1;
    }

    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 40) = 0;

    goto LABEL_19;
  }

  v9 = *(a2 + 3);
  *(a1 + 3) = v9;
  *(a1 + 4) = *(a2 + 4);
  (**(v9 - 8))(a1, a2);
  *(a1 + 40) = 1;
  return a1;
}

uint64_t *assignWithTake for BehaviorResponseResult.BehaviorResponseResultType(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4 == 2)
    {
      v7 = *a1;
    }

    else
    {
      if (v4 == 1)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        goto LABEL_11;
      }

      if (v4)
      {
        goto LABEL_11;
      }

      v5 = a1[1];

      v6 = a1[2];
    }

LABEL_11:
    v8 = *(a2 + 40);
    if (v8 >= 3)
    {
      v8 = *a2 + 3;
    }

    if (v8 == 2)
    {
      *a1 = *a2;
      v10 = 2;
    }

    else
    {
      if (v8 != 1)
      {
        if (v8)
        {
          v11 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v11;
          *(a1 + 25) = *(a2 + 25);
        }

        else
        {
          *a1 = *a2;
          a1[2] = a2[2];
          *(a1 + 40) = 0;
        }

        return a1;
      }

      v9 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v9;
      a1[4] = a2[4];
      v10 = 1;
    }

    *(a1 + 40) = v10;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for BehaviorResponseResult.BehaviorResponseResultType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BehaviorResponseResult.BehaviorResponseResultType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCC62104(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t sub_1DCC62120(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

id sub_1DCC62158(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_1DD0DEB3C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_1DCB35460(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1E12A72C0](0, a1);
  }

  else
  {
    return *(a1 + 32);
  }
}

uint64_t sub_1DCC6221C(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = a2(0);
  if (v2)
  {
    OUTLINED_FUNCTION_112(v3);
    v5 = *(v4 + 16);
    v6 = *(v4 + 80);
    v7 = OUTLINED_FUNCTION_8_23();
    v8(v7);
  }

  v9 = OUTLINED_FUNCTION_6_17();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void *sub_1DCC622AC(uint64_t a1)
{
  result = sub_1DCC63250(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_1DCC63290(&v5, result, v3, 0, a1);
  }
}

uint64_t sub_1DCC62390@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  if (v7)
  {
    sub_1DCC63324(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
  }

  v9 = OUTLINED_FUNCTION_6_17();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_1DCC62440(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28A8, &unk_1DD0FE400);
  if (v1)
  {
    OUTLINED_FUNCTION_112(v2);
    v4 = *(v3 + 16);
    v5 = *(v3 + 80);
    v6 = OUTLINED_FUNCTION_8_23();
    v7(v6);
  }

  v8 = OUTLINED_FUNCTION_6_17();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_1DCC624D8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1DD0DE1CC();
  }

  else
  {
    return 0;
  }
}

void sub_1DCC62520(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD0DCF8C();
}

void SiriEnvironment.callState.setter()
{
  type metadata accessor for CallStateEnvironmentProvider();
  OUTLINED_FUNCTION_0_19(&qword_1EDE4DB38);

  sub_1DD0DCA8C();
}

void SiriEnvironment.callState.modify(void *a1)
{
  a1[1] = v1;
  a1[2] = type metadata accessor for CallStateEnvironmentProvider();
  a1[3] = OUTLINED_FUNCTION_0_19(&qword_1EDE4DB38);
  sub_1DD0DCA7C();
}

void sub_1DCC62620(uint64_t *a1, char a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    v6 = *a1;
    sub_1DD0DCF8C();
  }

  v7 = *a1;
  sub_1DD0DCA8C();
}

void sub_1DCC626A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC626CC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void sub_1DCC62790(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DCB19354();
}

void sub_1DCC627B8()
{
  OUTLINED_FUNCTION_5_22();
  v1 = *(v0 + 24);
  sub_1DD0DCF8C();
}

void sub_1DCC62804()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28B8, &qword_1DD0E6E88);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_4();
  v6 = *(v0 + 24);
  v7 = OUTLINED_FUNCTION_3_8();
  v8(v7);
  sub_1DD0DCF8C();
}

void sub_1DCC62918(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DCB195D4();
}

void sub_1DCC62954()
{
  OUTLINED_FUNCTION_5_22();
  v1 = *(v0 + 32);
  sub_1DD0DCF8C();
}

void sub_1DCC629A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28B0, &qword_1DD0E6E80);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_4();
  v6 = *(v0 + 32);
  v7 = OUTLINED_FUNCTION_3_8();
  v8(v7);
  sub_1DD0DCF8C();
}

void sub_1DCC62AB4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DCB1963C();
}

void sub_1DCC62AF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2898, &qword_1DD0E6C90);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_24(&qword_1EDE4DB40);
  sub_1DD0DCEDC();
}

uint64_t sub_1DCC62B90(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_4_1();
  (*(v16 + 16))(v7, a1);
  v17 = *a2;
  return a7(v7);
}

void sub_1DCC62C4C()
{
  OUTLINED_FUNCTION_5_22();
  v1 = *(v0 + 40);
  sub_1DD0DCF8C();
}

void sub_1DCC62C98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28B0, &qword_1DD0E6E80);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_4();
  v6 = *(v0 + 40);
  v7 = OUTLINED_FUNCTION_3_8();
  v8(v7);
  sub_1DD0DCF8C();
}

void CallStateEnvironmentProvider.init(storage:)()
{
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_10_9();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2890, &qword_1DD0E6C40);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1DD0DCE9C();
}

void *CallStateEnvironmentProvider.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t CallStateEnvironmentProvider.__deallocating_deinit()
{
  CallStateEnvironmentProvider.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCC62FF8()
{
  type metadata accessor for CallStateEnvironmentProvider();

    ;
  }
}

void sub_1DCC63044()
{
  type metadata accessor for CallStateEnvironmentProvider();

  sub_1DD0DCF8C();
}

uint64_t sub_1DCC63250(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1DD0DEACC();
  v4 = *(a1 + 36);
  return result;
}

void *sub_1DCC63290(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    *result = *(*(a5 + 56) + 8 * a2);

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1DCC63324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_112(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_1DCC633A8()
{
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  v3 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC634C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_1DCC63650;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_1DCC635E8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCC635E8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_1DCC63650()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[8];

  return v1();
}

_BYTE *storeEnumTagSinglePayload for CamDirectInvocationIdentifiers(_BYTE *result, int a2, int a3)
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

id static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69CA348]) init];
  v3 = [a1 aceId];
  v4 = OUTLINED_FUNCTION_76_0();
  [v4 v5];

  v6 = [objc_allocWithZone(MEMORY[0x1E69C9FA8]) init];
  [v6 setReferentialCommand_];
  v7 = [objc_allocWithZone(MEMORY[0x1E69C9E60]) init];
  [v7 setType_];
  [v7 setValue_];

  return v7;
}

void static CasinoFactory.makeRowCardSection(possibleTitle:imageSize:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_39_7();
  v28 = v27;
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_37_11();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  OUTLINED_FUNCTION_20_0(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_34_0();
  v34 = OUTLINED_FUNCTION_10_17();
  v41 = sub_1DCC648A4(v34, v35, v36, v37, v38, v39, v40, 0);
  if (v24 && *(v24 + 16))
  {
    v42 = [objc_allocWithZone(MEMORY[0x1E69C9FC0]) init];
    sub_1DCC65CE0(v24, v42);
    v43 = qword_1DD0E6F18[v26];
    OUTLINED_FUNCTION_41_8(v42);
    OUTLINED_FUNCTION_12_16();
    [v42 v44];
    v45 = OUTLINED_FUNCTION_76_0();
    [v45 v46];

LABEL_19:
    goto LABEL_20;
  }

  if (a24)
  {
    v47 = [objc_allocWithZone(MEMORY[0x1E69CA260]) init];
    v48 = OUTLINED_FUNCTION_21_5();
    sub_1DCC65C8C(v48, v49, v50);
    [v47 setMonogramStyle_];
    v51 = qword_1DD0E6F18[v26];
    OUTLINED_FUNCTION_40_10(v47);
    OUTLINED_FUNCTION_12_16();
    [v47 v52];
    [v41 setImage_];
  }

  else if (v28)
  {
    v53 = objc_allocWithZone(MEMORY[0x1E69CA548]);
    v54 = v28;
    [v53 init];
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_16_10();
    if (!v56 & v55)
    {
      sub_1DCC65BC8(v54);
      if (v57)
      {
        OUTLINED_FUNCTION_15_16();
        OUTLINED_FUNCTION_1_25(v58, v59, v60, &selRef_setContentType_);
        OUTLINED_FUNCTION_138();
        sub_1DD0DAEBC();

        v61 = sub_1DD0DAECC();
        v62 = OUTLINED_FUNCTION_2_31(v61);
        if (!v56)
        {
          sub_1DD0DAE6C();
          OUTLINED_FUNCTION_3_26();
          v64 = *(v63 + 8);
          v65 = OUTLINED_FUNCTION_17_11();
          v62 = v66(v65);
        }

        OUTLINED_FUNCTION_26_4(v62, sel_setUrlValue_);
      }
    }

    else
    {
      v67 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_6_18(v67);

      v68 = OUTLINED_FUNCTION_124();
      sub_1DCB2C520(v68, v69);
    }

    v42 = 0;
    OUTLINED_FUNCTION_12_16();
    v72 = [v70 v71];
    if (!v26)
    {
      OUTLINED_FUNCTION_24_11(v54);
      if (v73 <= 0.0 || (OUTLINED_FUNCTION_20_11(), v74 <= 0.0))
      {
      }

      else
      {
        OUTLINED_FUNCTION_20_11();
        OUTLINED_FUNCTION_20_11();
      }
    }

    OUTLINED_FUNCTION_28_8(v72, sel_setSize_);
    v75 = OUTLINED_FUNCTION_76_0();
    [v75 v76];

    OUTLINED_FUNCTION_27_8(v77, sel_setImageIsRightAligned_);
    goto LABEL_19;
  }

LABEL_20:
  OUTLINED_FUNCTION_38_9();
}

void static CasinoFactory.makeRowCardSection(possibleTitle:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:maxLines:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v25;
  a20 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  OUTLINED_FUNCTION_23_7();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  OUTLINED_FUNCTION_20_0(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &a9 - v38;
  sub_1DCC648A4(v24, v23, v22, v21, v20, v32, v28, 0);
  if (v30)
  {
    v40 = objc_allocWithZone(MEMORY[0x1E69CA548]);
    v41 = v30;
    [v40 init];
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_16_10();
    if (!v43 & v42)
    {
      sub_1DCC65BC8(v41);
      if (v44)
      {
        OUTLINED_FUNCTION_15_16();
        OUTLINED_FUNCTION_1_25(v45, v46, v47, &selRef_setContentType_);
        OUTLINED_FUNCTION_138();
        sub_1DD0DAEBC();

        v48 = sub_1DD0DAECC();
        v49 = OUTLINED_FUNCTION_2_31(v48);
        if (!v43)
        {
          sub_1DD0DAE6C();
          OUTLINED_FUNCTION_3_26();
          v51 = *(v50 + 8);
          v52 = OUTLINED_FUNCTION_17_11();
          v49 = v53(v52);
        }

        OUTLINED_FUNCTION_26_4(v49, sel_setUrlValue_);
      }
    }

    else
    {
      v54 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_6_18(v54);

      v55 = OUTLINED_FUNCTION_124();
      sub_1DCB2C520(v55, v56);
    }

    v57 = v40;
    [v57 setShouldCropToCircle_];
    [v57 setSize_];
    v58 = OUTLINED_FUNCTION_76_0();
    [v58 v59];

    OUTLINED_FUNCTION_27_8(v60, sel_setImageIsRightAligned_);
  }

  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_49();
}

void static CasinoFactory.makeRowCardSection(possibleTitle:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleImageUri:maxLines:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  v68 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  OUTLINED_FUNCTION_20_0(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v67 - v44;
  sub_1DCC648A4(v38, v36, v34, v32, v30, v28, a24, 0);
  if (a21)
  {
    v46 = [objc_allocWithZone(MEMORY[0x1E69CA260]) init];
    sub_1DCC65C8C(v68, a21, v46);
    [v46 setMonogramStyle_];
    v47 = v46;
    [v47 setSize_];
    [v47 setShouldCropToCircle_];
    v48 = OUTLINED_FUNCTION_76_0();
    [v48 v49];

LABEL_11:
    goto LABEL_12;
  }

  if (v26)
  {
    v50 = objc_allocWithZone(MEMORY[0x1E69CA548]);
    v51 = v26;
    [v50 init];
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_16_10();
    if (!v53 & v52)
    {
      sub_1DCC65BC8(v51);
      if (v54)
      {
        OUTLINED_FUNCTION_15_16();
        OUTLINED_FUNCTION_1_25(v55, v56, v57, &selRef_setContentType_);
        OUTLINED_FUNCTION_138();
        sub_1DD0DAEBC();

        v58 = sub_1DD0DAECC();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v58);
        if (EnumTagSinglePayload != 1)
        {
          sub_1DD0DAE6C();
          OUTLINED_FUNCTION_3_26();
          EnumTagSinglePayload = (*(v60 + 8))(v45, v58);
        }

        OUTLINED_FUNCTION_26_4(EnumTagSinglePayload, sel_setUrlValue_);
      }
    }

    else
    {
      v61 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_6_18(v61);

      v62 = OUTLINED_FUNCTION_124();
      sub_1DCB2C520(v62, v63);
    }

    v47 = v26;
    [v47 setShouldCropToCircle_];
    [v47 setSize_];
    v64 = OUTLINED_FUNCTION_76_0();
    [v64 v65];

    OUTLINED_FUNCTION_27_8(v66, sel_setImageIsRightAligned_);
    goto LABEL_11;
  }

LABEL_12:
  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_49();
}

void static CasinoFactory.makeRowCardSection(possibleTitle:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  OUTLINED_FUNCTION_50();
  v27 = v26;
  OUTLINED_FUNCTION_4_18();
  v28 = a25;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  OUTLINED_FUNCTION_20_0(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_13();
  if (a22 && *(a22 + 16))
  {
    v28 = [objc_allocWithZone(MEMORY[0x1E69C9FC0]) init];
    sub_1DCC65CE0(a22, v28);
LABEL_6:
    v34 = v28;
    [v34 setSize_];
    [v34 setShouldCropToCircle_];
    v35 = OUTLINED_FUNCTION_76_0();
    [v35 v36];

    goto LABEL_7;
  }

  if (a21)
  {
    OUTLINED_FUNCTION_42_8([objc_allocWithZone(MEMORY[0x1E69CA260]) init]);
    [a25 setMonogramStyle_];
    goto LABEL_6;
  }

  if (!v27)
  {
    goto LABEL_8;
  }

  v37 = objc_allocWithZone(MEMORY[0x1E69CA548]);
  v38 = v27;
  [v37 init];
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_16_10();
  if (!v40 & v39)
  {
    sub_1DCC65BC8(v38);
    if (v41)
    {
      OUTLINED_FUNCTION_15_16();
      OUTLINED_FUNCTION_1_25(v42, v43, v44, &selRef_setContentType_);
      OUTLINED_FUNCTION_138();
      sub_1DD0DAEBC();

      v45 = sub_1DD0DAECC();
      v46 = OUTLINED_FUNCTION_2_31(v45);
      if (!v40)
      {
        sub_1DD0DAE6C();
        OUTLINED_FUNCTION_3_26();
        v48 = *(v47 + 8);
        v49 = OUTLINED_FUNCTION_17_11();
        v46 = v50(v49);
      }

      OUTLINED_FUNCTION_26_4(v46, sel_setUrlValue_);
    }
  }

  else
  {
    v51 = OUTLINED_FUNCTION_29_7();
    OUTLINED_FUNCTION_6_18(v51);

    v52 = OUTLINED_FUNCTION_124();
    sub_1DCB2C520(v52, v53);
  }

  v34 = v27;
  [v34 setShouldCropToCircle_];
  [v34 setSize_];
  v54 = OUTLINED_FUNCTION_76_0();
  [v54 v55];

  OUTLINED_FUNCTION_27_8(v56, sel_setImageIsRightAligned_);
LABEL_7:

LABEL_8:
  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_49();
}

void static CasinoFactory.makeRowCardSection(possibleTitle:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:shouldUseDefaultImageSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, char a28, char a29)
{
  OUTLINED_FUNCTION_39_7();
  v31 = v30;
  OUTLINED_FUNCTION_4_18();
  v32 = a27;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  OUTLINED_FUNCTION_20_0(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v36, v37);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_13();
  if (a24 && *(a24 + 16))
  {
    v32 = [objc_allocWithZone(MEMORY[0x1E69C9FC0]) init];
    sub_1DCC65CE0(a24, v32);
LABEL_6:
    v38 = v32;
    [v38 setSize_];
    OUTLINED_FUNCTION_12_16();
    [v38 v39];
    v40 = OUTLINED_FUNCTION_76_0();
    [v40 v41];

    goto LABEL_7;
  }

  if (a23)
  {
    OUTLINED_FUNCTION_42_8([objc_allocWithZone(MEMORY[0x1E69CA260]) init]);
    [a27 setMonogramStyle_];
    goto LABEL_6;
  }

  if (!v31)
  {
    goto LABEL_8;
  }

  v42 = objc_allocWithZone(MEMORY[0x1E69CA548]);
  v43 = v31;
  [v42 init];
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_16_10();
  if (!v45 & v44)
  {
    sub_1DCC65BC8(v43);
    if (v46)
    {
      OUTLINED_FUNCTION_15_16();
      OUTLINED_FUNCTION_1_25(v47, v48, v49, &selRef_setContentType_);
      OUTLINED_FUNCTION_138();
      sub_1DD0DAEBC();

      v50 = sub_1DD0DAECC();
      v51 = OUTLINED_FUNCTION_2_31(v50);
      if (!v45)
      {
        sub_1DD0DAE6C();
        OUTLINED_FUNCTION_3_26();
        v53 = *(v52 + 8);
        v54 = OUTLINED_FUNCTION_17_11();
        v51 = v55(v54);
      }

      OUTLINED_FUNCTION_26_4(v51, sel_setUrlValue_);
    }
  }

  else
  {
    v56 = OUTLINED_FUNCTION_29_7();
    OUTLINED_FUNCTION_6_18(v56);

    v57 = OUTLINED_FUNCTION_124();
    sub_1DCB2C520(v57, v58);
  }

  v38 = v31;
  OUTLINED_FUNCTION_12_16();
  v61 = [v59 v60];
  if ((a29 & 1) == 0)
  {
    OUTLINED_FUNCTION_24_11(v43);
    if (v62 <= 0.0 || (OUTLINED_FUNCTION_20_11(), v63 <= 0.0))
    {
    }

    else
    {
      OUTLINED_FUNCTION_20_11();
      OUTLINED_FUNCTION_20_11();
    }
  }

  OUTLINED_FUNCTION_28_8(v61, sel_setSize_);
  v64 = OUTLINED_FUNCTION_76_0();
  [v64 v65];

  OUTLINED_FUNCTION_27_8(v66, sel_setImageIsRightAligned_);
LABEL_7:

LABEL_8:
  OUTLINED_FUNCTION_38_9();
}

void static CasinoFactory.makeRowCardSection(possibleTitle:imageSize:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:withBlueTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, char a30)
{
  OUTLINED_FUNCTION_39_7();
  v83 = v33;
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_37_11();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  OUTLINED_FUNCTION_20_0(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_34_0();
  v39 = OUTLINED_FUNCTION_10_17();
  v46 = sub_1DCC648A4(v39, v40, v41, v42, v43, v44, v45, a30);
  if (v30 && *(v30 + 16))
  {
    v47 = [objc_allocWithZone(MEMORY[0x1E69C9FC0]) init];
    sub_1DCC65CE0(v30, v47);
    v48 = qword_1DD0E6F18[v32];
    OUTLINED_FUNCTION_41_8(v47);
    OUTLINED_FUNCTION_12_16();
    [v47 v49];
    v50 = OUTLINED_FUNCTION_76_0();
    [v50 v51];

LABEL_19:
    goto LABEL_20;
  }

  if (a24)
  {
    v52 = [objc_allocWithZone(MEMORY[0x1E69CA260]) init];
    v53 = OUTLINED_FUNCTION_21_5();
    sub_1DCC65C8C(v53, v54, v55);
    [v52 setMonogramStyle_];
    v56 = qword_1DD0E6F18[v32];
    OUTLINED_FUNCTION_40_10(v52);
    OUTLINED_FUNCTION_12_16();
    [v52 v57];
    [v46 setImage_];
  }

  else if (v83)
  {
    v58 = objc_allocWithZone(MEMORY[0x1E69CA548]);
    v59 = v83;
    [v58 init];
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_16_10();
    if (!v61 & v60)
    {
      sub_1DCC65BC8(v59);
      if (v62)
      {
        OUTLINED_FUNCTION_15_16();
        OUTLINED_FUNCTION_1_25(v63, v64, v65, &selRef_setContentType_);
        OUTLINED_FUNCTION_138();
        sub_1DD0DAEBC();

        v66 = sub_1DD0DAECC();
        v67 = OUTLINED_FUNCTION_2_31(v66);
        if (!v61)
        {
          sub_1DD0DAE6C();
          OUTLINED_FUNCTION_3_26();
          v69 = *(v68 + 8);
          v70 = OUTLINED_FUNCTION_17_11();
          v67 = v71(v70);
        }

        OUTLINED_FUNCTION_26_4(v67, sel_setUrlValue_);
      }
    }

    else
    {
      v72 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_6_18(v72);

      v73 = OUTLINED_FUNCTION_124();
      sub_1DCB2C520(v73, v74);
    }

    v47 = 0;
    OUTLINED_FUNCTION_12_16();
    v77 = [v75 v76];
    if (!v32)
    {
      OUTLINED_FUNCTION_24_11(v59);
      if (v78 <= 0.0 || (OUTLINED_FUNCTION_20_11(), v79 <= 0.0))
      {
      }

      else
      {
        OUTLINED_FUNCTION_20_11();
        OUTLINED_FUNCTION_20_11();
      }
    }

    OUTLINED_FUNCTION_28_8(v77, sel_setSize_);
    v80 = OUTLINED_FUNCTION_76_0();
    [v80 v81];

    OUTLINED_FUNCTION_27_8(v82, sel_setImageIsRightAligned_);
    goto LABEL_19;
  }

LABEL_20:
  OUTLINED_FUNCTION_38_9();
}

id sub_1DCC648A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v13 = [objc_allocWithZone(MEMORY[0x1E69CA3B0]) init];
  [v13 setSeparatorStyle_];
  v14 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  if (a2)
  {
    if (a8)
    {
      v15 = 4;
    }

    else
    {
      v15 = 0;
    }

    v16 = [objc_allocWithZone(MEMORY[0x1E69CA0F0]) &selRef_setCanUseServerTTS_];
    sub_1DCB72D80(a1, a2, v16);
    [v16 setIsBold_];
    if (a7 < 1)
    {
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5();
      }

      sub_1DD0DE6EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
      v17 = OUTLINED_FUNCTION_32_6();
      *(v17 + 16) = xmmword_1DD0E07C0;
      v40[0] = a7;
      sub_1DD0DF03C();
      OUTLINED_FUNCTION_35_1();
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = sub_1DCB34060();
      *(v17 + 32) = v40;
      *(v17 + 40) = 0x1E864E000;
      sub_1DD0DD7EC();

      [v16 setMaxLines_];

      v14 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
    }

    else
    {
      [v16 setMaxLines_];
    }

    [v16 v14[176]];
    v18 = [objc_allocWithZone(MEMORY[0x1E69CA3A0]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1DD0E15D0;
    *(v19 + 32) = v16;
    sub_1DCC65A90(v19, v18);
    v20 = OUTLINED_FUNCTION_76_0();
    [v20 v21];
  }

  if (a4)
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E69CA0F0]) init];
    sub_1DCB72D80(a3, a4, v22);
    [v22 setIsBold_];
    v23 = a7;
    if (a7 <= 0)
    {
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5();
      }

      sub_1DD0DE6EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
      v24 = OUTLINED_FUNCTION_32_6();
      *(v24 + 16) = xmmword_1DD0E07C0;
      v40[0] = a7;
      sub_1DD0DF03C();
      OUTLINED_FUNCTION_35_1();
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1DCB34060();
      *(v24 + 32) = v40;
      *(v24 + 40) = v14;
      OUTLINED_FUNCTION_9_17();
      sub_1DD0DD7EC();

      v23 = 1;
    }

    [v22 setMaxLines_];

    [v22 v14[176]];
    v25 = [objc_allocWithZone(MEMORY[0x1E69CA3A0]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1DD0E15D0;
    *(v26 + 32) = v22;
    sub_1DCC65A90(v26, v25);
    if (a6)
    {
      v40[0] = 2105376;
      v40[1] = 0xE300000000000000;
      MEMORY[0x1E12A6780](a5);
      v27 = [objc_allocWithZone(MEMORY[0x1E69CA0F0]) init];
      v28 = OUTLINED_FUNCTION_17_11();
      sub_1DCB72D80(v28, v29, v27);
      [v27 setIsBold_];
      if (a7 <= 0)
      {
        if (qword_1EDE4F908 != -1)
        {
          OUTLINED_FUNCTION_1_5();
        }

        sub_1DD0DE6EC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
        v30 = OUTLINED_FUNCTION_32_6();
        *(v30 + 16) = xmmword_1DD0E07C0;
        v40[0] = a7;
        v31 = sub_1DD0DF03C();
        v33 = v32;
        *(v30 + 56) = MEMORY[0x1E69E6158];
        *(v30 + 64) = sub_1DCB34060();
        *(v30 + 32) = v31;
        *(v30 + 40) = v33;
        sub_1DD0DD7EC();

        a7 = 1;
        v14 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
      }

      [v27 &selRef_operatingSystemVersionString + 3];

      [v27 v14[176]];

      v40[0] = sub_1DCC65B04(v25);
      if (v40[0])
      {
        v34 = v27;
        MEMORY[0x1E12A6920]();
        if (*((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DD0DE33C();
        }

        sub_1DD0DE3AC();
        if (v40[0])
        {
          sub_1DCC65E48();
          v35 = sub_1DD0DE2DC();
        }

        else
        {
          v35 = 0;
        }

        [v25 setFormattedTextPieces_];
      }

      else
      {
        [v25 setFormattedTextPieces_];
      }
    }

    [v13 setLeadingSubtitle_];
  }

  return v13;
}

id static CasinoFactory.makeRichText(text:bold:maxLines:textColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_36_11();
  v9 = [objc_allocWithZone(MEMORY[0x1E69CA0F0]) init];
  v10 = OUTLINED_FUNCTION_138();
  sub_1DCB72D80(v10, v11, v9);
  [v9 setIsBold_];
  if (v5 < 1)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v15 = OUTLINED_FUNCTION_32_6();
    *(v15 + 16) = xmmword_1DD0E07C0;
    v19 = v5;
    sub_1DD0DF03C();
    OUTLINED_FUNCTION_35_1();
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1DCB34060();
    *(v15 + 32) = &v19;
    *(v15 + 40) = v7;
    OUTLINED_FUNCTION_9_17();
    sub_1DD0DD7EC();

    v13 = sel_setMaxLines_;
    v12 = v9;
    v14 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_76_0();
  }

  [v12 v13];

  [v9 setTextColor_];
  v16 = [objc_allocWithZone(MEMORY[0x1E69CA3A0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DD0E15D0;
  *(v17 + 32) = v9;
  sub_1DCC65A90(v17, v16);
  return v16;
}

id static CasinoFactory.makeFormattedText(textValue:bold:maxLines:textColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_36_11();
  v9 = [objc_allocWithZone(MEMORY[0x1E69CA0F0]) init];
  v10 = OUTLINED_FUNCTION_138();
  sub_1DCB72D80(v10, v11, v9);
  [v9 setIsBold_];
  if (v5 < 1)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v12 = OUTLINED_FUNCTION_32_6();
    *(v12 + 16) = xmmword_1DD0E07C0;
    v14 = v5;
    sub_1DD0DF03C();
    OUTLINED_FUNCTION_35_1();
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1DCB34060();
    *(v12 + 32) = &v14;
    *(v12 + 40) = v7;
    OUTLINED_FUNCTION_9_17();
    sub_1DD0DD7EC();

    [v9 setMaxLines_];
  }

  else
  {
    [v9 setMaxLines_];
  }

  [v9 setTextColor_];
  return v9;
}

id static CasinoFactory.makePlaceholderCardSection()()
{
  v1 = sub_1DD0DB04C();
  v2 = OUTLINED_FUNCTION_22_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E69C9F08]) init];
  sub_1DD0DB03C();
  v11 = sub_1DD0DAFFC();
  v13 = v12;
  (*(v4 + 8))(v9, v0);
  sub_1DCB2C534(v11, v13, v10, &selRef_setCardSectionId_);
  v14 = @"0";
  sub_1DD0DDFBC();

  v15 = OUTLINED_FUNCTION_21_5();
  sub_1DCB2C534(v15, v16, v17, v18);
  return v10;
}

uint64_t static CasinoFactory.makeSendCommandsFromMachineUtterance(machineUtterance:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  static CasinoFactory.makeSendCommandsFromMachineUtterances(machineUtterances:)();
  v6 = v5;
  swift_setDeallocating();
  sub_1DCB19D2C();
  return v6;
}

void static CasinoFactory.makeSendCommandsFromMachineUtterances(machineUtterances:)()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v3 = sub_1DD0DB04C();
  v4 = OUTLINED_FUNCTION_22_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  v14 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  if (v12)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1DD0DED0C();
    v15 = (v6 + 8);
    v16 = *MEMORY[0x1E69C7F28];
    v17 = (v2 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v20 = objc_allocWithZone(MEMORY[0x1E69C7AB0]);

      v21 = [v20 init];
      v22 = sub_1DD0DDFBC();
      sub_1DCB2C534(v22, v23, v21, &selRef_setInputOrigin_);
      v24 = sub_1DD0DDFBC();
      sub_1DCB2C534(v24, v25, v21, &selRef_setOrigin_);
      sub_1DCC65D48(v18, v19, v21);
      v26 = v21;
      sub_1DD0DB03C();
      v27 = sub_1DD0DAFFC();
      v29 = v28;
      (*v15)(v11, v0);
      sub_1DCB2C534(v27, v29, v26, &selRef_setAceId_);

      sub_1DD0DECDC();
      v30 = *(v34 + 16);
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
      v17 += 2;
      --v12;
    }

    while (v12);
    v13 = v34;
    v14 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  }

  v31 = [objc_allocWithZone(MEMORY[0x1E69C7A48]) v14[37]];

  if (v13 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D8, &qword_1DD106560);
    v32 = sub_1DD0DEE0C();
  }

  else
  {
    sub_1DD0DF0CC();
    v32 = v13;
  }

  sub_1DCC6589C(v32, v31);
  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_49();
}

void static CasinoFactory.makeConfirmationOptionFromCommands(commands:label:confirmationType:isActive:iconType:)()
{
  OUTLINED_FUNCTION_50();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_23_7();
  v9 = [objc_allocWithZone(MEMORY[0x1E69C7B28]) init];
  [v9 setActive_];
  sub_1DCC6591C(v1, v0, v9);
  sub_1DCC65970(v2, v9);
  v10 = OUTLINED_FUNCTION_138();
  sub_1DCC659E4(v10, v11, v9);
  if (v4)
  {
    sub_1DCC65A38(v6, v4, v9);
  }

  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCC65718()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC657A8()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC657E4()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28F8, &qword_1DD0E6F08) - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC65860()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

void sub_1DCC6589C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D8, &qword_1DD106560);
  v3 = sub_1DD0DE2DC();

  [a2 setCommands_];
}

void sub_1DCC6591C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1DD0DDF8C();
  OUTLINED_FUNCTION_14_18();
  [a3 setLabel_];
}

void sub_1DCC65970(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  sub_1DD0DE2DC();
  OUTLINED_FUNCTION_14_18();
  [a2 setCommands_];
}

void sub_1DCC659E4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1DD0DDF8C();
  OUTLINED_FUNCTION_14_18();
  [a3 setType_];
}

void sub_1DCC65A38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setIconType_];
}

void sub_1DCC65A90(uint64_t a1, void *a2)
{
  sub_1DCC65E48();
  v3 = sub_1DD0DE2DC();

  [a2 setFormattedTextPieces_];
}

uint64_t sub_1DCC65B04(void *a1)
{
  v1 = [a1 formattedTextPieces];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1DCC65E48();
  v3 = sub_1DD0DE2EC();

  return v3;
}

uint64_t sub_1DCC65B64(void *a1)
{
  v1 = [a1 _imageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DAF2C();

  return v3;
}

uint64_t sub_1DCC65BC8(void *a1)
{
  v1 = [a1 _identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDFBC();

  return v3;
}

void sub_1DCC65C38(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1DD0DAEFC();
  OUTLINED_FUNCTION_14_18();
  [a3 setImageData_];
}

void sub_1DCC65C8C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1DD0DDF8C();
  OUTLINED_FUNCTION_14_18();
  [a3 setMonogramLetters_];
}

void sub_1DCC65CE0(uint64_t a1, void *a2)
{
  sub_1DD0DE2DC();
  OUTLINED_FUNCTION_14_18();
  [a2 setContactIdentifiers_];
}

void sub_1DCC65D48(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1DD0DDF8C();
  OUTLINED_FUNCTION_14_18();
  [a3 setUtterance_];
}

_BYTE *storeEnumTagSinglePayload for CasinoFactory(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCC65E48()
{
  result = qword_1ECCA2918;
  if (!qword_1ECCA2918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCA2918);
  }

  return result;
}

uint64_t CATIConfigDefaults.entityName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t CATIConfigDefaults.taskAttributeName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t CATIConfigDefaults.taskAttributeName.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t CATIConfigDefaults.verb.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t CATIConfigDefaults.verb.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t CATIConfigDefaults.entityAttributeName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t CATIConfigDefaults.entityAttributeName.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t CATIConfigDefaults.namespace.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t CATIConfigDefaults.namespace.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t CATIConfigDefaults.init(entityName:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = a1;
  *(a4 + 8) = a2;
  return a3(a4);
}

uint64_t destroy for CATIConfigDefaults(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[5];

  v5 = a1[7];

  v6 = a1[9];
}

void *initializeWithCopy for CATIConfigDefaults(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;

  return a1;
}

void *assignWithCopy for CATIConfigDefaults(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  v5 = a1[3];
  a1[3] = a2[3];

  a1[4] = a2[4];
  v6 = a1[5];
  a1[5] = a2[5];

  a1[6] = a2[6];
  v7 = a1[7];
  a1[7] = a2[7];

  a1[8] = a2[8];
  v8 = a2[9];
  v9 = a1[9];
  a1[9] = v8;

  return a1;
}

void *assignWithTake for CATIConfigDefaults(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  v6 = a2[3];
  v7 = a1[3];
  a1[2] = a2[2];
  a1[3] = v6;

  v8 = a2[5];
  v9 = a1[5];
  a1[4] = a2[4];
  a1[5] = v8;

  v10 = a2[7];
  v11 = a1[7];
  a1[6] = a2[6];
  a1[7] = v10;

  v12 = a2[9];
  v13 = a1[9];
  a1[8] = a2[8];
  a1[9] = v12;

  return a1;
}

uint64_t getEnumTagSinglePayload for CATIConfigDefaults(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for CATIConfigDefaults(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DCC663BC()
{
  v0 = sub_1DD0DEE9C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DCC66408(char a1)
{
  result = 0x614E797469746E65;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 1651664246;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x63617073656D616ELL;
      break;
    case 5:
      result = 0x696669746E656469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCC664F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCC663BC();
  *a2 = result;
  return result;
}

unint64_t sub_1DCC66528@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DCC66408(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for CATIParameterNames(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CATIParameterNames(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCC666BC()
{
  result = qword_1ECCA2920;
  if (!qword_1ECCA2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2920);
  }

  return result;
}

uint64_t sub_1DCC66710(char a1)
{
  if (a1)
  {
    return 0x64656C65636E6143;
  }

  else
  {
    return 0x6F74747542707041;
  }
}

uint64_t sub_1DCC66770@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCC66BD0();
  *a2 = result;
  return result;
}

uint64_t sub_1DCC667A8()
{
  v1 = OUTLINED_FUNCTION_6_19();
  result = sub_1DCC66710(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_1DCC667D0()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  return OUTLINED_FUNCTION_15_17();
}

BOOL sub_1DCC66818@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCC667D0();
  *a2 = result;
  return result;
}

void sub_1DCC66870(char a1)
{
  switch(a1)
  {
    case 3:
      OUTLINED_FUNCTION_57_0();
      break;
    default:
      return;
  }
}

uint64_t sub_1DCC66990()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DCC669F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCC66990();
  *a2 = result;
  return result;
}

void sub_1DCC66A24()
{
  v1 = OUTLINED_FUNCTION_6_19();
  sub_1DCC66870(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1DCC66A4C(char a1)
{
  result = 0x6C65636E6143;
  switch(a1)
  {
    case 1:
      result = 0x6D7269666E6F43;
      break;
    case 2:
      result = 28494;
      break;
    case 3:
      result = 19279;
      break;
    case 4:
      result = 0x7070416E65704FLL;
      break;
    case 5:
      result = 7562585;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCC66ADC()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DCC66B1C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DCE05D58();
}

uint64_t sub_1DCC66B40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCC66ADC();
  *a2 = result;
  return result;
}

uint64_t sub_1DCC66B70()
{
  v1 = OUTLINED_FUNCTION_6_19();
  result = sub_1DCC66A4C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1DCC66B98(char a1)
{
  if (a1)
  {
    return 0xD000000000000027;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1DCC66BD0()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
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

uint64_t sub_1DCC66C38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCC66BD0();
  *a2 = result;
  return result;
}

unint64_t sub_1DCC66C70()
{
  v1 = OUTLINED_FUNCTION_6_19();
  result = sub_1DCC66B98(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_1DCC66C98(char a1)
{
  switch(a1)
  {
    case 2:
    case 5:
    case 6:
    case 7:
      return;
    case 3:
    case 11:
    case 12:
      OUTLINED_FUNCTION_57_0();
      break;
    case 4:
    case 8:
      OUTLINED_FUNCTION_5_4();
      break;
    default:
      OUTLINED_FUNCTION_12_17();
      break;
  }
}

uint64_t sub_1DCC66E58()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DCC66EBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCC66E58();
  *a2 = result;
  return result;
}

void sub_1DCC66EEC()
{
  v1 = OUTLINED_FUNCTION_6_19();
  sub_1DCC66C98(v1);
  *v0 = v2;
  v0[1] = v3;
}

unint64_t sub_1DCC66F18(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
    case 11:
      result = 0xD000000000000011;
      break;
    case 7:
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD00000000000002ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCC67024()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DCC67088@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCC67024();
  *a2 = result;
  return result;
}

unint64_t sub_1DCC670B8()
{
  v1 = OUTLINED_FUNCTION_6_19();
  result = sub_1DCC66F18(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_1DCC670E0()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  return OUTLINED_FUNCTION_15_17();
}

BOOL sub_1DCC67124@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCC670E0();
  *a2 = result;
  return result;
}

BOOL sub_1DCC6717C()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  return OUTLINED_FUNCTION_15_17();
}

BOOL sub_1DCC671C0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCC6717C();
  *a2 = result;
  return result;
}

unint64_t sub_1DCC6721C(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
    case 3:
    case 6:
    case 8:
      result = 0xD000000000000018;
      break;
    case 2:
    case 4:
    case 9:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCC67304()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DCC67368@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCC67304();
  *a2 = result;
  return result;
}

unint64_t sub_1DCC67398()
{
  v1 = OUTLINED_FUNCTION_6_19();
  result = sub_1DCC6721C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_1DCC673DC()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  return OUTLINED_FUNCTION_15_17();
}

BOOL sub_1DCC67420@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCC673DC();
  *a2 = result;
  return result;
}

unint64_t sub_1DCC67454@<X0>(void *a1@<X8>)
{
  result = sub_1DCC673C0();
  *a1 = 0xD000000000000012;
  a1[1] = v3;
  return result;
}

unint64_t sub_1DCC67488(char a1)
{
  result = 0x546D7269666E6F43;
  switch(a1)
  {
    case 1:
      result = 0x4E746361746E6F43;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x64726143654D6F4ELL;
      break;
    case 4:
      OUTLINED_FUNCTION_12_17();
      result = v3 + 2;
      break;
    case 5:
      result = OUTLINED_FUNCTION_5_4();
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCC6756C()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DCC675D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCC6756C();
  *a2 = result;
  return result;
}

unint64_t sub_1DCC67600()
{
  v1 = OUTLINED_FUNCTION_6_19();
  result = sub_1DCC67488(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_1DCC6762C(char a1)
{
  switch(a1)
  {
    case 2:
    case 3:
    case 4:
      return;
    case 5:
      OUTLINED_FUNCTION_57_0();
      break;
    default:
      OUTLINED_FUNCTION_12_17();
      break;
  }
}

uint64_t sub_1DCC6771C()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DCC67780@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCC6771C();
  *a2 = result;
  return result;
}

void sub_1DCC677B0()
{
  v1 = OUTLINED_FUNCTION_6_19();
  sub_1DCC6762C(v1);
  *v0 = v2;
  v0[1] = v3;
}

unint64_t sub_1DCC677D8(unsigned __int8 a1)
{
  switch(a1 >> 4)
  {
    case 1:
      OUTLINED_FUNCTION_8_24();
      v18 = OUTLINED_FUNCTION_14_19();
      sub_1DCC66870(v18);
      goto LABEL_25;
    case 2:
      OUTLINED_FUNCTION_8_24();
      v9 = OUTLINED_FUNCTION_14_19();
      v2 = sub_1DCC66A4C(v9);
      goto LABEL_25;
    case 3:
      OUTLINED_FUNCTION_0_21();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_1_0();
      v24[0] = v11 + 2;
      v24[1] = v10;
      v12 = v11 | 8;
      v13 = v11 + 21;
      if (a1)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }

      if (a1)
      {
        v15 = "GenericHandoffNotification";
      }

      else
      {
        v15 = "Confirm";
      }

      MEMORY[0x1E12A6780](v14, v15 | 0x8000000000000000);
      goto LABEL_26;
    case 4:
      OUTLINED_FUNCTION_0_21();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_1_0();
      v24[0] = v6 - 2;
      v24[1] = v5;
      sub_1DCC66C98(a1 & 0xF);
      goto LABEL_25;
    case 5:
      OUTLINED_FUNCTION_8_24();
      v19 = OUTLINED_FUNCTION_14_19();
      v2 = sub_1DCC66F18(v19);
      goto LABEL_25;
    case 6:
      OUTLINED_FUNCTION_0_21();
      sub_1DD0DEC1C();

      v20 = OUTLINED_FUNCTION_14_19();
      v2 = sub_1DCC6721C(v20);
      goto LABEL_25;
    case 7:
      OUTLINED_FUNCTION_0_21();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_1_0();
      v24[0] = v17;
      v24[1] = v16;
      v2 = sub_1DCC67488(a1 & 0xF);
      goto LABEL_25;
    case 8:
      OUTLINED_FUNCTION_0_21();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_1_0();
      v24[0] = v22;
      v24[1] = v21;
      sub_1DCC6762C(a1 & 0xF);
      goto LABEL_25;
    case 9:
      switch(a1)
      {
        case 0x91u:
        case 0x92u:
          result = 0xD00000000000001BLL;
          break;
        case 0x93u:
          OUTLINED_FUNCTION_13_14();
          result = v23 + 18;
          break;
        default:
          OUTLINED_FUNCTION_13_14();
          result = v7 + 3;
          break;
      }

      return result;
    default:
      OUTLINED_FUNCTION_0_21();
      sub_1DD0DEC1C();

      strcpy(v24, "AppResolution#");
      HIBYTE(v24[1]) = -18;
      if (a1)
      {
        v2 = 0x64656C65636E6143;
      }

      else
      {
        v2 = 0x6F74747542707041;
      }

      if (a1)
      {
        v3 = 0xE800000000000000;
      }

      else
      {
        v3 = 0xE90000000000006ELL;
      }

      v4 = v3;
LABEL_25:
      MEMORY[0x1E12A6780](v2, v4);
LABEL_26:

      return v24[0];
  }
}

uint64_t sub_1DCC67AD4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 7)
  {
    if (a2 + 249 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 249) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 250;
    return v5 + 1;
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 0x9F)
  {
    v5 = -1;
  }

  else
  {
    v5 = (v6 ^ 0xF0) >> 4;
  }

  return v5 + 1;
}

_BYTE *sub_1DCC67B64(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 249 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 249) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 6)
  {
    v6 = ((a2 - 7) >> 8) + 1;
    *result = a2 - 7;
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
          *result = -16 * a2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCC67C30(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x8F)
  {
    return v1 >> 4;
  }

  else
  {
    return (v1 & 0xF) + 9;
  }
}

_BYTE *sub_1DCC67C5C(_BYTE *result, unsigned int a2)
{
  if (a2 < 9)
  {
    v2 = *result & 0xF | (16 * a2);
  }

  else
  {
    v2 = (a2 + 7) & 0xF | 0x90;
  }

  *result = v2;
  return result;
}

uint64_t sub_1DCC67CB4(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_67(a1);
}

_BYTE *sub_1DCC67D00(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCC67DB4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1DCC67E3C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_10_18(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CompositionResolutionError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1DCC67F98(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DCC68070(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1DCC680F8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCC681D0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1DCC68258(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DCC6833C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DefaultFlowActivity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1DCC6849C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DCC68574(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_10_18(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCC6864C()
{
  result = qword_1ECCA2928;
  if (!qword_1ECCA2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2928);
  }

  return result;
}

unint64_t sub_1DCC686A4()
{
  result = qword_1ECCA2930;
  if (!qword_1ECCA2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2930);
  }

  return result;
}

unint64_t sub_1DCC686FC()
{
  result = qword_1ECCA2938;
  if (!qword_1ECCA2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2938);
  }

  return result;
}

unint64_t sub_1DCC68754()
{
  result = qword_1ECCA2940;
  if (!qword_1ECCA2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2940);
  }

  return result;
}

unint64_t sub_1DCC687AC()
{
  result = qword_1ECCA2948;
  if (!qword_1ECCA2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2948);
  }

  return result;
}

unint64_t sub_1DCC68804()
{
  result = qword_1ECCA2950;
  if (!qword_1ECCA2950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2950);
  }

  return result;
}

unint64_t sub_1DCC6885C()
{
  result = qword_1ECCA2958;
  if (!qword_1ECCA2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2958);
  }

  return result;
}

unint64_t sub_1DCC688B4()
{
  result = qword_1ECCA2960;
  if (!qword_1ECCA2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2960);
  }

  return result;
}

unint64_t sub_1DCC6890C()
{
  result = qword_1ECCA2968;
  if (!qword_1ECCA2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2968);
  }

  return result;
}

unint64_t sub_1DCC68964()
{
  result = qword_1ECCA2970;
  if (!qword_1ECCA2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2970);
  }

  return result;
}

unint64_t sub_1DCC689BC()
{
  result = qword_1ECCA2978;
  if (!qword_1ECCA2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2978);
  }

  return result;
}

unint64_t sub_1DCC68A14()
{
  result = qword_1ECCA2980;
  if (!qword_1ECCA2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2980);
  }

  return result;
}

unint64_t sub_1DCC68A6C()
{
  result = qword_1ECCA2988;
  if (!qword_1ECCA2988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2988);
  }

  return result;
}

uint64_t sub_1DCC68B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for CATINLRepresentationProducer();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  memcpy(v9 + 4, a3, 0x50uLL);
  a4[3] = v8;
  a4[4] = &off_1F5856130;
  *a4 = v9;

  return sub_1DCC68C68(a3, &v11);
}

uint64_t CATINLRepresentationProducerProviding.makeCATINLRepresentationProducer(name:catiConfig:)@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = type metadata accessor for CATINLRepresentationProducer();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  memcpy(v9 + 4, __src, 0x50uLL);
  a4[3] = v8;
  a4[4] = &off_1F5856130;
  *a4 = v9;

  return sub_1DCC68C68(__dst, &v11);
}

uint64_t sub_1DCC68DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a1;
  v12 = sub_1DD0DB44C();
  v6[7] = v12;
  v13 = *(v12 - 8);
  v6[8] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v6[9] = v15;
  v16 = swift_task_alloc();
  v6[10] = v16;
  *v16 = v6;
  v16[1] = sub_1DCC68EEC;

  return sub_1DCC6921C(v15, a2, a3, a4, a5, a6);
}

uint64_t sub_1DCC68EEC()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1DCC69090;
  }

  else
  {
    v3 = sub_1DCC69000;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DCC69000()
{
  (*(v0[8] + 32))(v0[6], v0[9], v0[7]);
  type metadata accessor for NLProducerResult.ProducerResultBase(0);
  swift_storeEnumTagMultiPayload();
  v1 = v0[9];

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCC69090()
{
  v17 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = *(v0 + 88);
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    OUTLINED_FUNCTION_151();
    v16 = OUTLINED_FUNCTION_52_0();
    *v1 = 136315138;
    swift_getErrorValue();
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = *(v0 + 32);
    v10 = sub_1DD0DF18C();
    v12 = sub_1DCB10E9C(v10, v11, &v16);

    *(v1 + 1) = v12;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "Unable to write USO protobuf graph: %s", v1, 0xCu);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_92_0();
  }

  **(v0 + 48) = *(v0 + 88);
  type metadata accessor for NLProducerResult.ProducerResultBase(0);
  swift_storeEnumTagMultiPayload();
  v13 = *(v0 + 72);

  OUTLINED_FUNCTION_29();

  return v14();
}

uint64_t sub_1DCC6921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2990, &qword_1DD0E8E30) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v9 = sub_1DD0DBB1C();
  v7[11] = v9;
  v10 = *(v9 - 8);
  v7[12] = v10;
  v11 = *(v10 + 64) + 15;
  v7[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCC6931C, 0, 0);
}

void sub_1DCC6931C()
{
  v2 = v0[8];
  v1 = v0[9];
  type metadata accessor for ParameterWrapper();
  inited = swift_initStackObject();
  *(inited + 16) = v2;

  sub_1DCC696A0(inited, 1, v1);
  v4 = sub_1DCC697B8(inited, 0, v0[9]);
  v6 = v5;
  v7 = sub_1DCC698D4(inited, 2, v0[9]);
  v9 = v8;
  sub_1DCC699EC(inited, 4, v0[9]);
  v19 = v0[13];
  v20 = v0[12];
  v21 = v0[11];
  v10 = v0[7];
  v22 = v0[10];
  v23 = v0[5];
  sub_1DCC6A4DC(0x696669746E656469, 0xEF65756C61567265, v0[6]);
  v11 = sub_1DD0DBC9C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  MEMORY[0x1E12A42D0](v4, v6, v7, v9);
  v14 = sub_1DD0DBCBC();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = MEMORY[0x1E12A4300](v4, v6);
  sub_1DD0DBAEC();
  sub_1DD0DBA0C();
  (*(v20 + 8))(v19, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DD0E15D0;
  *(v18 + 32) = v17;
  sub_1DD0DCF8C();
}

_BYTE *sub_1DCC696A0(uint64_t a1, char a2, uint64_t a3)
{
  sub_1DCC66408(a2);
  v5 = sub_1DCC69D70();
  v7 = v6;

  if (!v7)
  {
    memcpy(__dst, (a3 + 32), sizeof(__dst));
    if (!__dst[1] || (v5 = __dst[2], v8 = __dst[3], sub_1DCC6A5EC(__dst, &v11), , , , , !v8))
    {
      sub_1DCC6A65C();
      swift_allocError();
      v5 = v9;
      *(v9 + 24) = &type metadata for CATIParameterNames;
      *(v9 + 32) = sub_1DCC6A6B0();
      *v5 = a2;
      swift_willThrow();
    }
  }

  return v5;
}

uint64_t sub_1DCC697B8(uint64_t a1, char a2, uint64_t a3)
{
  sub_1DCC66408(a2);
  v5 = sub_1DCC69D70();
  v7 = v6;

  if (!v7)
  {
    memcpy(__dst, (a3 + 32), sizeof(__dst));
    if (__dst[1])
    {
      v5 = __dst[0];
      sub_1DCC6A5EC(__dst, &v11);
    }

    else
    {
      sub_1DCC6A65C();
      swift_allocError();
      v9 = v8;
      *(v8 + 24) = &type metadata for CATIParameterNames;
      *(v8 + 32) = sub_1DCC6A6B0();
      *v9 = a2;
      swift_willThrow();
    }
  }

  return v5;
}

_BYTE *sub_1DCC698D4(uint64_t a1, char a2, uint64_t a3)
{
  sub_1DCC66408(a2);
  v5 = sub_1DCC69D70();
  v7 = v6;

  if (!v7)
  {
    memcpy(__dst, (a3 + 32), sizeof(__dst));
    if (!__dst[1] || (v5 = __dst[4], v8 = __dst[5], sub_1DCC6A5EC(__dst, &v11), , , , , !v8))
    {
      sub_1DCC6A65C();
      swift_allocError();
      v5 = v9;
      *(v9 + 24) = &type metadata for CATIParameterNames;
      *(v9 + 32) = sub_1DCC6A6B0();
      *v5 = a2;
      swift_willThrow();
    }
  }

  return v5;
}

_BYTE *sub_1DCC699EC(uint64_t a1, char a2, uint64_t a3)
{
  sub_1DCC66408(a2);
  v5 = sub_1DCC69D70();
  v7 = v6;

  if (!v7)
  {
    memcpy(__dst, (a3 + 32), sizeof(__dst));
    if (!__dst[1] || (v5 = __dst[8], v8 = __dst[9], sub_1DCC6A5EC(__dst, &v11), , , , , !v8))
    {
      sub_1DCC6A65C();
      swift_allocError();
      v5 = v9;
      *(v9 + 24) = &type metadata for CATIParameterNames;
      *(v9 + 32) = sub_1DCC6A6B0();
      *v5 = a2;
      swift_willThrow();
    }
  }

  return v5;
}

uint64_t sub_1DCC69B04()
{
  sub_1DCC6A88C(v0, v7);
  sub_1DCAFF9E8(v7, v6);
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_1DD0DEC1C();
  v4 = 0;
  v5 = 0xE000000000000000;
  MEMORY[0x1E12A6780](0xD000000000000024, 0x80000001DD115D80);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v3[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v3);
  sub_1DD0DE26C();
  sub_1DD0DEDBC();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v1 = v4;
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v1;
}

void *sub_1DCC69C1C()
{
  v1 = v0[3];

  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[11];
  v9 = v0[12];
  v10 = v0[13];
  sub_1DCC6A704(v0[4], v0[5]);
  return v0;
}

uint64_t sub_1DCC69C60()
{
  sub_1DCC69C1C();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC69C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *v6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DCB3FF64;

  return sub_1DCC68DB4(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DCC69D70()
{
  OUTLINED_FUNCTION_2_32();
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_86();
    v5 = sub_1DCB21038(v3, v4);
    if (v6)
    {
      OUTLINED_FUNCTION_8_25(v5, v6, v7);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  if (swift_dynamicCast())
  {
    return v21;
  }

  if (*(v0 + 16))
  {

    v9 = OUTLINED_FUNCTION_86();
    sub_1DCB21038(v9, v10);
    v12 = v11;

    if (v12)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v13 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v13, qword_1EDE57E00);

      v14 = sub_1DD0DD8EC();
      v15 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v14, v15))
      {
        OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_52_0();
        *v1 = 136315138;
        v16 = OUTLINED_FUNCTION_86();
        *(v1 + 4) = sub_1DCB10E9C(v16, v17, v18);
        OUTLINED_FUNCTION_4_19(&dword_1DCAFC000, v19, v20, "Optional parameter '%s' is present but is not of the expected type.");
        OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_92_0();
      }
    }
  }

  return 0;
}

uint64_t sub_1DCC69EFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_2_32();
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_86();
    v10 = sub_1DCB21038(v8, v9);
    if (v11)
    {
      OUTLINED_FUNCTION_8_25(v10, v11, v12);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (swift_dynamicCast())
  {
    return v26;
  }

  if (*(v4 + 16))
  {

    v14 = OUTLINED_FUNCTION_86();
    sub_1DCB21038(v14, v15);
    v17 = v16;

    if (v17)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v18 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v18, qword_1EDE57E00);

      v19 = sub_1DD0DD8EC();
      v20 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v19, v20))
      {
        OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_52_0();
        *a3 = 136315138;
        v21 = OUTLINED_FUNCTION_86();
        *(a3 + 4) = sub_1DCB10E9C(v21, v22, v23);
        OUTLINED_FUNCTION_4_19(&dword_1DCAFC000, v24, v25, "Optional parameter '%s' is present but is not of the expected type.");
        OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_92_0();
      }
    }
  }

  return 0;
}

uint64_t sub_1DCC6A084()
{
  OUTLINED_FUNCTION_2_32();
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_86();
    v5 = sub_1DCB21038(v3, v4);
    if (v6)
    {
      OUTLINED_FUNCTION_8_25(v5, v6, v7);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  if (swift_dynamicCast())
  {
    return v21;
  }

  if (*(v0 + 16))
  {

    v9 = OUTLINED_FUNCTION_86();
    sub_1DCB21038(v9, v10);
    v12 = v11;

    if (v12)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v13 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v13, qword_1EDE57E00);

      v14 = sub_1DD0DD8EC();
      v15 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v14, v15))
      {
        OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_52_0();
        *v1 = 136315138;
        v16 = OUTLINED_FUNCTION_86();
        *(v1 + 4) = sub_1DCB10E9C(v16, v17, v18);
        OUTLINED_FUNCTION_4_19(&dword_1DCAFC000, v19, v20, "Optional parameter '%s' is present but is not of the expected type.");
        OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_92_0();
      }
    }
  }

  return 2;
}

uint64_t sub_1DCC6A20C(uint64_t a1, unint64_t a2)
{
  v5 = [v2 parameters];
  v6 = sub_1DD0DDE6C();

  sub_1DCB90D40(a1, a2, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B0, &unk_1DD0E7AF0);
  if (swift_dynamicCast())
  {
    return v17;
  }

  v8 = [v2 parameters];
  v9 = sub_1DD0DDE6C();

  if (*(v9 + 16))
  {
    sub_1DCB21038(a1, a2);
    v11 = v10;

    if (v11)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v12 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v12, qword_1EDE57E00);

      v13 = sub_1DD0DD8EC();
      v14 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v18 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_1DCB10E9C(a1, a2, &v18);
        _os_log_impl(&dword_1DCAFC000, v13, v14, "Optional parameter '%s' is present but is not of the expected type.", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x1E12A8390](v16, -1, -1);
        MEMORY[0x1E12A8390](v15, -1, -1);
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1DCC6A4A0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = sub_1DCC6A20C(a1, a2);
  if (v4)
  {
    return v4;
  }

  return a3;
}

uint64_t sub_1DCC6A4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DCC69D70();
  if (v5)
  {
    return v4;
  }

  return a3;
}

uint64_t sub_1DCC6A540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = sub_1DCC69EFC(a1, a2, a4, a5);
  if (v6)
  {
    return v6;
  }

  return a3;
}

uint64_t sub_1DCC6A584(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2990, &qword_1DD0E8E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCC6A5EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2998, &qword_1DD0E7AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCC6A65C()
{
  result = qword_1ECCA29A0;
  if (!qword_1ECCA29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA29A0);
  }

  return result;
}

unint64_t sub_1DCC6A6B0()
{
  result = qword_1ECCA29A8;
  if (!qword_1ECCA29A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA29A8);
  }

  return result;
}

uint64_t sub_1DCC6A704(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t assignWithTake for CATINLRepresentationProducer.ProducerError(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for CATINLRepresentationProducer.ProducerError(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for CATINLRepresentationProducer.ProducerError(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1DCC6A8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for CATIUserInputParser();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  a5[3] = v10;
  a5[4] = &off_1F58561F0;
  *a5 = v11;
}

uint64_t CATIUserInputParserProviding.makeCATIUserInputParser(name:targetEntityName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v12[0] = a3;
  *(&v12[0] + 1) = a4;
  memset(&v12[1], 0, 64);
  v10 = *(a6 + 16);

  v10(a1, a2, v12, a5, a6);
  memcpy(__dst, v12, sizeof(__dst));
  return sub_1DCC6AA08(__dst);
}

uint64_t sub_1DCC6AA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for CATIUserInputParser();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  memcpy(v9 + 4, a3, 0x50uLL);
  a4[3] = v8;
  a4[4] = &off_1F58561F0;
  *a4 = v9;

  return sub_1DCC68C68(a3, &v11);
}

uint64_t CATIUserInputParserProviding.makeCATIUserInputParser(name:catiConfig:)@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = type metadata accessor for CATIUserInputParser();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  memcpy(v9 + 4, __src, 0x50uLL);
  a4[3] = v8;
  a4[4] = &off_1F58561F0;
  *a4 = v9;

  return sub_1DCC68C68(__dst, &v11);
}

uint64_t sub_1DCC6ACF8(uint64_t a1, uint64_t a2)
{
  v64 = *v2;
  v5 = type metadata accessor for Parse(0);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for USOParse();
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v67 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v59 - v18;
  if (qword_1EDE4F900 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v20 = sub_1DD0DD8FC();
    v69 = __swift_project_value_buffer(v20, qword_1EDE57E00);
    v21 = sub_1DD0DD8EC();
    v22 = sub_1DD0DE6DC();
    v23 = os_log_type_enabled(v21, v22);
    v63 = v19;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v24 = 136315394;
      v25 = sub_1DD0DF2AC();
      v27 = a2;
      v28 = sub_1DCB10E9C(v25, v26, &v70);

      *(v24 + 4) = v28;
      a2 = v27;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_1DCB10E9C(0xD00000000000002CLL, 0x80000001DD115E10, &v70);
      _os_log_impl(&dword_1DCAFC000, v21, v22, "%s.%s", v24, 0x16u);
      OUTLINED_FUNCTION_8_26();
      OUTLINED_FUNCTION_80();
      v19 = v63;
      OUTLINED_FUNCTION_80();
    }

    v29 = type metadata accessor for Input(0);
    sub_1DCB24628(a1 + *(v29 + 20), v11, type metadata accessor for Parse);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      break;
    }

    sub_1DCC6D300(v11, v19);
    v11 = (a2 + 64);
    v30 = 1 << *(a2 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v65 = v31 & *(a2 + 64);
    v62 = (v30 + 63) >> 6;

    v19 = 0;
    *&v32 = 136315138;
    v61 = v32;
    *&v32 = 136315394;
    v59[2] = v32;
    *&v32 = 134217984;
    v59[0] = v32;
    *&v32 = 136315650;
    v59[4] = v32;
    a1 = v67;
    for (i = (a2 + 64); ; v11 = i)
    {
      v33 = v65;
      if (!v65)
      {
        break;
      }

LABEL_13:
      v65 = (v33 - 1) & v33;
      v35 = __clz(__rbit64(v33)) | (v19 << 6);
      v36 = (*(a2 + 48) + 16 * v35);
      v37 = *v36;
      v38 = v36[1];
      v39 = *(*(a2 + 56) + 8 * v35);
      v68 = type metadata accessor for ParameterWrapper();
      inited = swift_initStackObject();
      *(inited + 16) = v39;

      v41 = v63;
      v66 = inited;
      if (sub_1DCC6BC7C(v63))
      {

        sub_1DD0DCF8C();
      }

      sub_1DCB24628(v41, a1, type metadata accessor for USOParse);
      v42 = v69;
      v43 = sub_1DD0DD8EC();
      v44 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v43, v44))
      {
        OUTLINED_FUNCTION_151();
        v45 = OUTLINED_FUNCTION_10_0();
        v70 = v45;
        *a1 = v61;
        v46 = USOParse.debugDescription.getter();
        v48 = v47;
        OUTLINED_FUNCTION_0_22();
        sub_1DCB283D8(v67, v49);
        v50 = sub_1DCB10E9C(v46, v48, &v70);

        *(a1 + 4) = v50;
        OUTLINED_FUNCTION_9_18(&dword_1DCAFC000, v43, v44, "Could not extract a unique entity from USO parse: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_2_33();
        OUTLINED_FUNCTION_13_15();
        v53 = *(v50 + 16);
      }

      else
      {
        OUTLINED_FUNCTION_13_15();
        v51 = *(v42 + 16);

        OUTLINED_FUNCTION_0_22();
        sub_1DCB283D8(a1, v52);
      }
    }

    while (1)
    {
      v34 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v34 >= v62)
      {
        OUTLINED_FUNCTION_0_22();
        sub_1DCB283D8(v63, v57);

        return 0;
      }

      v33 = *&v11[8 * v34];
      ++v19;
      if (v33)
      {
        v19 = v34;
        goto LABEL_13;
      }
    }

    __break(1u);
    __break(1u);
LABEL_25:
    swift_once();
  }

  sub_1DCB283D8(v11, type metadata accessor for Parse);
  v54 = sub_1DD0DD8EC();
  v55 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_1DCAFC000, v54, v55, "Not a USO Parse...will not process", v56, 2u);
    OUTLINED_FUNCTION_80();
  }

  return 0;
}

uint64_t sub_1DCC6BC7C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for USOParse();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v59 - v12;
  v14 = sub_1DD0DB5BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DD0DB46C();
  sub_1DCC621EC(v20);

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1DCC6D410(v13);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v21 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v21, qword_1EDE57E00);
    sub_1DCB24628(a1, v8, type metadata accessor for USOParse);
    v22 = sub_1DD0DD8EC();
    v23 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v60 = v25;
      *v24 = 136315138;
      sub_1DD0DB4BC();
      sub_1DCC6D478(&qword_1EDE4D758, MEMORY[0x1E69D09E0]);
      v26 = sub_1DD0DD6EC();
      v28 = v27;
      sub_1DCB283D8(v8, type metadata accessor for USOParse);
      v29 = sub_1DCB10E9C(v26, v28, &v60);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1DCAFC000, v22, v23, "Unable to get unique UDA from userParse. Will not parse: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1E12A8390](v25, -1, -1);
      MEMORY[0x1E12A8390](v24, -1, -1);
    }

    else
    {

      sub_1DCB283D8(v8, type metadata accessor for USOParse);
    }

    return 0;
  }

  (*(v15 + 32))(v19, v13, v14);
  if (!sub_1DCC6CED0(v19))
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v34 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v34, qword_1EDE57E00);
    v35 = sub_1DD0DD8EC();
    v36 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1DCAFC000, v35, v36, "Unable to find desired task attribute in UsoTask arguements", v37, 2u);
      MEMORY[0x1E12A8390](v37, -1, -1);
    }

    goto LABEL_40;
  }

  v30 = sub_1DCC69D70();
  if (v31)
  {
    v32 = v30;
    v33 = v31;
  }

  else
  {
    v33 = *(v2 + 40);
    if (!v33)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v57 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v57, qword_1EDE57E00);
      v53 = sub_1DD0DD8EC();
      v54 = sub_1DD0DE6DC();
      if (!os_log_type_enabled(v53, v54))
      {
        goto LABEL_38;
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = "Unable to determine the targetEntityName. Skipping matching.";
      goto LABEL_37;
    }

    v32 = *(v2 + 32);
    v38 = *(v2 + 40);
  }

  v39 = sub_1DD0DC79C();
  if (!v39)
  {

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v52 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v52, qword_1EDE57E00);
    v53 = sub_1DD0DD8EC();
    v54 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v53, v54))
    {
      goto LABEL_38;
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "Unable convert UsoTask attribute to a USOEntity. Skipping matching.";
LABEL_37:
    _os_log_impl(&dword_1DCAFC000, v53, v54, v56, v55, 2u);
    MEMORY[0x1E12A8390](v55, -1, -1);
LABEL_38:

    goto LABEL_39;
  }

  v40 = v39;
  if (sub_1DD0DC6EC() == v32 && v41 == v33)
  {
  }

  else
  {
    v43 = sub_1DD0DF0AC();

    if ((v43 & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v44 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v44, qword_1EDE57E00);

      v45 = sub_1DD0DD8EC();
      v46 = sub_1DD0DE6DC();

      if (!os_log_type_enabled(v45, v46))
      {

        goto LABEL_40;
      }

      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v59 = v45;
      v60 = v48;
      v49 = v48;
      *v47 = 136315138;
      v50 = sub_1DCB10E9C(v32, v33, &v60);

      *(v47 + 4) = v50;
      v51 = v59;
      _os_log_impl(&dword_1DCAFC000, v59, v46, "Entity does not match targetEntityName '%s'. Continuing", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x1E12A8390](v49, -1, -1);
      MEMORY[0x1E12A8390](v47, -1, -1);

LABEL_39:

LABEL_40:
      (*(v15 + 8))(v19, v14);
      return 0;
    }
  }

  (*(v15 + 8))(v19, v14);

  return v40;
}

uint64_t sub_1DCC6C444(uint64_t a1)
{
  v3 = sub_1DCC69D70();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
  }

  else
  {
    if (!v1[5] || (v6 = v1[11]) == 0)
    {
      sub_1DCC622AC(a1);
      if (!v18)
      {
        return 0;
      }

      v19 = v17;

      if (sub_1DCB08B14(v19))
      {
        sub_1DCB35460(0, (v19 & 0xC000000000000001) == 0, v19);
        if ((v19 & 0xC000000000000001) == 0)
        {
          v20 = *(v19 + 32);
          sub_1DD0DCF8C();
        }

        v21 = MEMORY[0x1E12A72C0](0, v19);
        goto LABEL_10;
      }

LABEL_15:

      return 0;
    }

    v5 = v1[10];
    v7 = v1[11];
  }

  v8 = sub_1DCB90DA0(v5, v6, a1);
  if (!v8)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v11 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v11, qword_1EDE57E00);

    v12 = sub_1DD0DD8EC();
    v13 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      v16 = sub_1DCB10E9C(v5, v6, &v23);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_1DCAFC000, v12, v13, "Cannot find attribute '%s'. No match.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1E12A8390](v15, -1, -1);
      MEMORY[0x1E12A8390](v14, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v9 = v8;

  if (!sub_1DCB08B14(v9))
  {
    goto LABEL_15;
  }

  sub_1DCB35460(0, (v9 & 0xC000000000000001) == 0, v9);
  if ((v9 & 0xC000000000000001) == 0)
  {
    v10 = *(v9 + 32);
    sub_1DD0DCF8C();
  }

  v21 = MEMORY[0x1E12A72C0](0, v9);
LABEL_10:

  return v21;
}