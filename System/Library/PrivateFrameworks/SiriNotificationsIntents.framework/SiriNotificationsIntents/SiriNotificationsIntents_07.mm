void *sub_26855BAF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_26854C378(*(a1 + 16), 0);
  v4 = sub_26855CF90(&v6, v3 + 4, v2, a1);
  sub_26855D16C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_26855BB84(uint64_t a1)
{
  result = MEMORY[0x26D61BF10](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_26855C690(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_26855BC44(uint64_t a1)
{
  OUTLINED_FUNCTION_8_19(a1);

  sub_2684DEAF0(v1);
  OUTLINED_FUNCTION_7_23();
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == v4)
    {
      v13 = sub_26855BB84(v6);
      sub_26855BAF4(v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282B80, &qword_26856A608);
      v14 = *(sub_268567800() - 8);
      v15 = *(v14 + 72);
      v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      *(swift_allocObject() + 16) = xmmword_26856CED0;
      sub_2685677F0();
      v18[3] = type metadata accessor for DefaultGuardFlowProvider();
      v18[4] = sub_26855D118();
      v18[0] = v17;

      sub_2685677D0();

      __swift_destroy_boxed_opaque_existential_0(v18);
      sub_2685676E0();

      return;
    }

    if (v2)
    {
      v7 = MEMORY[0x26D61C170](v4, v1);
    }

    else
    {
      if (v4 >= *(v5 + 16))
      {
        goto LABEL_15;
      }

      v7 = *(v1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_26();
      v6 = v11;
    }

    v10 = *(v6 + 24);
    if (*(v6 + 16) >= v10 >> 1)
    {
      OUTLINED_FUNCTION_2_8(v10);
      OUTLINED_FUNCTION_4_27();
      v6 = v12;
    }

    OUTLINED_FUNCTION_5_23();
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_26855BE48(uint64_t a1)
{
  OUTLINED_FUNCTION_8_19(a1);

  sub_2684DEAF0(v1);
  OUTLINED_FUNCTION_7_23();
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == v4)
    {
      v13 = sub_26855BB84(v6);
      sub_26855BAF4(v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282B80, &qword_26856A608);
      v14 = *(sub_268567800() - 8);
      v15 = *(v14 + 72);
      v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      *(swift_allocObject() + 16) = xmmword_26856A540;
      v18[3] = type metadata accessor for DefaultGuardFlowProvider();
      v18[4] = sub_26855D118();
      v18[0] = v17;

      sub_2685677D0();

      __swift_destroy_boxed_opaque_existential_0(v18);
      sub_2685676E0();

      return;
    }

    if (v2)
    {
      v7 = MEMORY[0x26D61C170](v4, v1);
    }

    else
    {
      if (v4 >= *(v5 + 16))
      {
        goto LABEL_15;
      }

      v7 = *(v1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_26();
      v6 = v11;
    }

    v10 = *(v6 + 24);
    if (*(v6 + 16) >= v10 >> 1)
    {
      OUTLINED_FUNCTION_2_8(v10);
      OUTLINED_FUNCTION_4_27();
      v6 = v12;
    }

    OUTLINED_FUNCTION_5_23();
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_26855C040(uint64_t a1, uint64_t a2)
{
  v3 = sub_2685689F0();
  v4 = OUTLINED_FUNCTION_1(v3);
  v69 = v5;
  v70 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_5();
  v68 = v9 - v8;
  v10 = sub_268567DF0();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_5();
  v79 = v17 - v16;
  v80 = sub_268567E20();
  v18 = OUTLINED_FUNCTION_1(v80);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_5();
  v25 = v24 - v23;
  v26 = MEMORY[0x277D84F90];
  v82 = MEMORY[0x277D84F90];
  v27 = *(a2 + 16);
  if (v27)
  {
    v29 = *(v20 + 16);
    v28 = v20 + 16;
    v30 = a2 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v77 = *(v28 + 56);
    v78 = v29;
    v31 = (v13 + 88);
    v76 = *MEMORY[0x277D5BDF8];
    v74 = *MEMORY[0x277D5BE00];
    v72 = (v13 + 8);
    v75 = v10;
    do
    {
      v78(v25, v30, v80);
      sub_268567E10();
      v32 = (*v31)(v79, v10);
      if (v32 == v76)
      {
        v33 = sub_268567E00();
        v35 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_0_26();
          v26 = v50;
        }

        v37 = *(v26 + 16);
        v36 = *(v26 + 24);
        if (v37 >= v36 >> 1)
        {
          OUTLINED_FUNCTION_2_8(v36);
          OUTLINED_FUNCTION_4_27();
          v26 = v51;
        }

        v38 = OUTLINED_FUNCTION_2_29();
        v39(v38);
        *(v26 + 16) = v37 + 1;
        v40 = v26 + 16 * v37;
        *(v40 + 32) = v33;
        *(v40 + 40) = v35;
        v82 = v26;
        v10 = v75;
      }

      else if (v32 == v74)
      {
        v73 = sub_268567E00();
        v42 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_0_26();
          v26 = v52;
        }

        v44 = *(v26 + 16);
        v43 = *(v26 + 24);
        if (v44 >= v43 >> 1)
        {
          OUTLINED_FUNCTION_2_8(v43);
          OUTLINED_FUNCTION_4_27();
          v26 = v53;
        }

        v45 = OUTLINED_FUNCTION_2_29();
        v46(v45);
        *(v26 + 16) = v44 + 1;
        v47 = v26 + 16 * v44;
        *(v47 + 32) = v73;
        *(v47 + 40) = v42;
        v82 = v26;
      }

      else
      {
        v48 = OUTLINED_FUNCTION_2_29();
        v49(v48);
        (*v72)(v79, v10);
      }

      v30 += v77;
      --v27;
    }

    while (v27);
  }

  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v54 = __swift_project_value_buffer(v70, qword_28028B348);
  (*(v69 + 16))(v68, v54, v70);
  v55 = sub_2685689E0();
  v56 = sub_268568DC0();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v81 = v58;
    *v57 = 136315138;

    v60 = MEMORY[0x26D61BE70](v59, MEMORY[0x277D837D0]);
    v62 = v61;

    v63 = sub_2684EABEC(v60, v62, &v81);

    *(v57 + 4) = v63;
    _os_log_impl(&dword_2684CA000, v55, v56, "DefaultGuardFlowProvider#protectedAppCheck filtering out apps: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x26D61CB30](v58, -1, -1);
    MEMORY[0x26D61CB30](v57, -1, -1);
  }

  (*(v69 + 8))(v68, v70);
  if (*(v71 + 16))
  {

    v65 = sub_26855B954(v64, &v82);
  }

  else
  {
    v65 = MEMORY[0x277D84F90];
  }

  v66 = *(v71 + 24);
  *(v71 + 24) = v65;
}

uint64_t sub_26855C544()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_26855C56C()
{
  sub_26855C544();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26855C5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2685691C0() & 1;
  }
}

BOOL sub_26855C690(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_268569260();
  sub_268568C00();
  v9 = sub_268569280();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_2685691C0() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_26855CA38(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_26855C7DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283A68, &unk_268570B30);
  result = sub_268568F80();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_26855CBA0(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_268569260();
    sub_268568C00();
    result = sub_268569280();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26855CA38(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_26855C7DC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_26855CD5C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_268569260();
      sub_268568C00();
      result = sub_268569280();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_2685691C0() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_26855CC04();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_268569200();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_26855CBA0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_268570A50;
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

void *sub_26855CC04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283A68, &unk_268570B30);
  v2 = *v0;
  v3 = sub_268568F70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26855CD5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283A68, &unk_268570B30);
  result = sub_268568F80();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_268569260();

        sub_268568C00();
        result = sub_268569280();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26855CF90(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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

unint64_t sub_26855D118()
{
  result = qword_280283A60;
  if (!qword_280283A60)
  {
    type metadata accessor for DefaultGuardFlowProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283A60);
  }

  return result;
}

void OUTLINED_FUNCTION_0_26()
{
  v2 = *(v0 + 16) + 1;

  sub_26854BB3C();
}

uint64_t OUTLINED_FUNCTION_2_29()
{
  v3 = *v1;
  result = v0;
  v5 = *(v2 - 112);
  return result;
}

void OUTLINED_FUNCTION_4_27()
{

  sub_26854BB3C();
}

void OUTLINED_FUNCTION_5_23()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v3;
  *(v5 + 32) = v4;
  *(v5 + 40) = v1;
}

uint64_t OUTLINED_FUNCTION_8_19(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_26855D208(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((a1 & 0x8000000000000000) == 0 && *(a2 + 16) > a1)
  {
    v4 = *(a2 + 8 * a1 + 32);
  }

  return result;
}

uint64_t sub_26855D25C(unint64_t a1, unint64_t a2, void (*a3)(unint64_t, BOOL, unint64_t))
{
  if (a2 >> 62)
  {
    v6 = sub_2685690A0();
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 <= a1)
  {
    return 0;
  }

  a3(a1, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) == 0)
  {
    v7 = *(a2 + 8 * a1 + 32);
  }

LABEL_9:
  v9 = OUTLINED_FUNCTION_17_9();
  return MEMORY[0x26D61C170](v9);
}

_BYTE *sub_26855D2F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v33 = a6;
  v34 = a8;
  v32 = a4;
  v35 = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283AC8, qword_268570DF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v32 - v17);
  *(&v32 - v17) = a1;
  sub_2684D57FC(a3 + 80, v39);
  v19 = sub_268567D00();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();

  v22 = sub_268567CF0();
  v37 = v19;
  v38 = MEMORY[0x277D5BD58];
  v36 = v22;
  v23 = sub_268567840();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_268567830();
  v27 = MEMORY[0x277D5B808];
  v18[4] = v23;
  v18[5] = v27;
  v18[1] = v26;
  swift_storeEnumTagMultiPayload();
  sub_268563EEC(v18, &v10[*(*v10 + 136)]);
  v28 = v33;
  *(v9 + 16) = v32;
  *(v9 + 24) = a5;
  *(v9 + 32) = v28;
  *(v9 + 40) = a7;
  *(v9 + 48) = v34;
  *(v9 + 56) = a9;
  sub_2684CC878(a3, v9 + 72);
  *(v9 + 64) = v35 & 1;

  sub_268526B14();
  v30 = v29;

  sub_2684CC8D4(a3);
  v10[65] = v30 & 1;
  v10[66] = HIBYTE(v30) & 1;
  return v10;
}

id sub_26855D4F0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_268568CD0();

  v2 = [v0 initWithArray_];

  return v2;
}

uint64_t sub_26855D568@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v4 = OUTLINED_FUNCTION_10(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v55 - v9;
  v11 = *a1;
  v12 = type metadata accessor for NotificationsApp.Builder(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_268518184();
  v16 = sub_2684DEAF0(v11);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v18 = v16;
    v58[0] = MEMORY[0x277D84F90];
    v19 = v58;
    sub_268569040();
    if (v18 < 0)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v56 = v10;
    v20 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D61C170](v20, v11);
      }

      else
      {
        v21 = *(v11 + 8 * v20 + 32);
      }

      ++v20;
      sub_268555B38();

      sub_268569020();
      v22 = *(v58[0] + 16);
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    while (v18 != v20);
    v17 = v58[0];
    v10 = v56;
  }

  v19 = sub_268518208(v17);

  v15 = sub_2684DEAF0(v11);
  if (!v15)
  {
    goto LABEL_16;
  }

  v17 = v11 & 0xC000000000000001;
  v23 = OUTLINED_FUNCTION_33_3();
  sub_2684DEAFC(v23, v24, v11);
  if ((v11 & 0xC000000000000001) == 0)
  {
    v25 = *(v11 + 32);
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);

    goto LABEL_12;
  }

LABEL_33:
  v50 = MEMORY[0x26D61C170](0, v11);
  v51 = *(v50 + 16);
  v52 = *(v50 + 24);

  swift_unknownObjectRelease();
LABEL_12:
  v28 = OUTLINED_FUNCTION_33_3();
  sub_2684DEAFC(v28, v29, v11);
  if (v17)
  {
    v30 = MEMORY[0x26D61C170](0, v11);
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);

    swift_unknownObjectRelease();
  }

  else
  {
    v33 = *(v11 + 32);
    v34 = *(v33 + 16);
    v35 = *(v33 + 24);
  }

LABEL_16:
  sub_2685687F0();
  v36 = sub_268568810();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v36);
  v37 = OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appId;
  OUTLINED_FUNCTION_33_2();
  sub_268532644(v10, v19 + v37);
  swift_endAccess();
  sub_26853D95C(v10, &qword_280282AF0, &qword_26856A1E0);
  v38 = (v11 & 0xC000000000000001) == 0;
  if (v15)
  {
    v39 = OUTLINED_FUNCTION_33_3();
    sub_2684DEAFC(v39, v40, v11);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x26D61C170](0, v11);
      v54 = *(v53 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type);
      v10 = *(v53 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type + 8);

      swift_unknownObjectRelease();
      v38 = 0;
    }

    else
    {
      v41 = (*(v11 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_type);
      v42 = *v41;
      v10 = v41[1];

      v38 = 1;
    }
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v43 = v59;
  sub_268568BB0();

  __swift_storeEnumTagSinglePayload(v43, 0, 1, v36);
  v17 = OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appName;
  OUTLINED_FUNCTION_33_2();
  sub_268532644(v43, v19 + v17);
  swift_endAccess();
  sub_26853D95C(v43, &qword_280282AF0, &qword_26856A1E0);
  v44 = 0;
  do
  {
    v45 = v44;
    if (v15 == v44)
    {
      break;
    }

    if (v38)
    {
      if (v44 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v17 = *(v11 + 8 * v44 + 32);
    }

    else
    {
      v17 = MEMORY[0x26D61C170](v44, v11);
    }

    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v58[0] = v17;
    v10 = sub_26855DA10(v58, v11);

    v44 = v45 + 1;
  }

  while ((v10 & 1) != 0);
  *(v19 + OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_canUseSenderName) = v15 == v45;
  v46 = type metadata accessor for NotificationsApp(0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  result = sub_2685182C0(v19);
  *v57 = result;
  return result;
}

uint64_t sub_26855DA10(void *a1, uint64_t a2)
{
  v2 = *a1 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_notificationContent;
  v3 = *(v2 + 8);
  if (v3 == 255)
  {
    goto LABEL_41;
  }

  v5 = *v2;
  v6 = *v2;
  v7 = (v3 & 1) != 0 ? sub_2684E06CC() : sub_2684E0640();
  v8 = v7;
  sub_268542D78(v5, v3);
  if ((v8 & 1) == 0 || !sub_2684DEAF0(a2))
  {
    goto LABEL_41;
  }

  v9 = a2 & 0xC000000000000001;
  sub_2684DEAFC(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x26D61C170](0, a2);
  }

  else
  {
    v10 = *(a2 + 32);
  }

  v11 = *(v10 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_stackSummary);
  v12 = *(v10 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_stackSummary + 8);

  LOBYTE(v11) = sub_2684CCCAC(v11, v12);

  if ((v11 & 1) == 0)
  {
    goto LABEL_41;
  }

  v13 = *(v2 + 8);
  if (v13 == 255)
  {
    v18 = 0;
    v19 = 0;
    if (v9)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v14 = *v2;
  v15 = v14;
  if (v13)
  {
    if (sub_2684E0514())
    {
      v16 = sub_2684E0764();
LABEL_19:
      v18 = v16;
      v19 = v17;
      goto LABEL_21;
    }
  }

  else if (sub_2684E03C8())
  {
    v16 = sub_2684E12C4();
    goto LABEL_19;
  }

  v18 = 0;
  v19 = 0;
LABEL_21:
  sub_268542D78(v14, v13);
  if (v9)
  {
LABEL_22:
    v23 = MEMORY[0x26D61C170](0, a2);
    v22 = *(v23 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_notificationContent);
    v21 = *(v23 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_notificationContent + 8);
    sub_268542E54(v22, *(v23 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_notificationContent + 8));
    swift_unknownObjectRelease();
    if (v21 == 255)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

LABEL_15:
  v20 = *(a2 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_notificationContent;
  v21 = *(v20 + 8);
  if (v21 == 255)
  {
    goto LABEL_32;
  }

  v22 = *v20;
LABEL_23:
  if (v21)
  {
    v24 = v22;
    if (sub_2684E0514())
    {
      v25 = sub_2684E0764();
      goto LABEL_28;
    }
  }

  else
  {
    v24 = v22;
    if (sub_2684E03C8())
    {
      v25 = sub_2684E12C4();
LABEL_28:
      v27 = v25;
      v28 = v26;

      if (!v19)
      {
        goto LABEL_29;
      }

      goto LABEL_33;
    }
  }

LABEL_32:
  v27 = 0;
  v28 = 0;
  if (!v19)
  {
LABEL_29:
    if (v28)
    {
      goto LABEL_40;
    }

    goto LABEL_44;
  }

LABEL_33:
  if (!v28)
  {
LABEL_40:

    goto LABEL_41;
  }

  if (v18 == v27 && v19 == v28)
  {

    goto LABEL_44;
  }

  v30 = sub_2685691C0();

  if (v30)
  {
LABEL_44:
    if (v9)
    {
      v33 = MEMORY[0x26D61C170](0, a2);
      v34 = *(v33 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_notificationContent);
      v35 = *(v33 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_notificationContent + 8);
      sub_268542E54(v34, *(v33 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_notificationContent + 8));
      swift_unknownObjectRelease();
      if (v35 == 255)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v36 = *(a2 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_notificationContent;
      v35 = *(v36 + 8);
      if (v35 == 255)
      {
        goto LABEL_41;
      }

      v34 = *v36;
    }

    if (v35)
    {
      v37 = v34;
      if (sub_2684E0514())
      {
        v38 = sub_2684E0764();
LABEL_54:
        v40 = v38;
        v41 = v39;

LABEL_56:
        v42 = sub_2684CCCAC(v40, v41);

        v31 = v42 ^ 1;
        return v31 & 1;
      }
    }

    else
    {
      v37 = v34;
      if (sub_2684E03C8())
      {
        v38 = sub_2684E12C4();
        goto LABEL_54;
      }
    }

    v40 = 0;
    v41 = 0;
    goto LABEL_56;
  }

LABEL_41:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_26855DD9C()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  v1[8] = OUTLINED_FUNCTION_39();
  v5 = sub_268567F20();
  v1[9] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[10] = v6;
  v8 = *(v7 + 64);
  v1[11] = OUTLINED_FUNCTION_39();
  v9 = sub_2685679B0();
  v1[12] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v1[13] = v10;
  v12 = *(v11 + 64);
  v1[14] = OUTLINED_FUNCTION_39();
  v13 = sub_268567B60();
  v1[15] = v13;
  OUTLINED_FUNCTION_2_4(v13);
  v1[16] = v14;
  v16 = *(v15 + 64);
  v1[17] = OUTLINED_FUNCTION_39();
  v17 = sub_2685689F0();
  v1[18] = v17;
  OUTLINED_FUNCTION_2_4(v17);
  v1[19] = v18;
  v20 = *(v19 + 64);
  v1[20] = OUTLINED_FUNCTION_39();
  v21 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_26855E108()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  v1[8] = OUTLINED_FUNCTION_39();
  v5 = sub_268567F20();
  v1[9] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[10] = v6;
  v8 = *(v7 + 64);
  v1[11] = OUTLINED_FUNCTION_39();
  v9 = sub_2685679B0();
  v1[12] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v1[13] = v10;
  v12 = *(v11 + 64);
  v1[14] = OUTLINED_FUNCTION_39();
  v13 = sub_268567B60();
  v1[15] = v13;
  OUTLINED_FUNCTION_2_4(v13);
  v1[16] = v14;
  v16 = *(v15 + 64);
  v1[17] = OUTLINED_FUNCTION_39();
  v17 = sub_2685689F0();
  v1[18] = v17;
  OUTLINED_FUNCTION_2_4(v17);
  v1[19] = v18;
  v20 = *(v19 + 64);
  v1[20] = OUTLINED_FUNCTION_39();
  v21 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_26855E474()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  v1[8] = OUTLINED_FUNCTION_39();
  v5 = sub_268567F20();
  v1[9] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[10] = v6;
  v8 = *(v7 + 64);
  v1[11] = OUTLINED_FUNCTION_39();
  v9 = sub_2685679B0();
  v1[12] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v1[13] = v10;
  v12 = *(v11 + 64);
  v1[14] = OUTLINED_FUNCTION_39();
  v13 = sub_268567B60();
  v1[15] = v13;
  OUTLINED_FUNCTION_2_4(v13);
  v1[16] = v14;
  v16 = *(v15 + 64);
  v1[17] = OUTLINED_FUNCTION_39();
  v17 = sub_2685689F0();
  v1[18] = v17;
  OUTLINED_FUNCTION_2_4(v17);
  v1[19] = v18;
  v20 = *(v19 + 64);
  v1[20] = OUTLINED_FUNCTION_39();
  v21 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_26855E7E0()
{
  OUTLINED_FUNCTION_5();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_2685689F0();
  v1[6] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_39();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837D8, &unk_26856EFD0);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_39();
  v11 = sub_268567A60();
  v1[10] = v11;
  OUTLINED_FUNCTION_2_4(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_50();
  v1[13] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_26855E90C()
{
  v46 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[4];
  sub_268567A50();
  LOBYTE(v4) = sub_268567A40();
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_17_9();
  v5(v6);
  if (v4)
  {
    v0[2] = v0[5];
    v7 = v0[9];
    v8 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837F0, &unk_26856EFE0);
    type metadata accessor for RNReadNotificationsFlowProvider();
    sub_268563F5C(&qword_280283AD0, v9, type metadata accessor for RNReadNotificationsFlowProvider);
    sub_268567820();
    sub_268567EC0();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837E0, &unk_26856EB30);
    v11 = v8;
    v12 = 0;
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[10];
    v17 = v0[7];
    v16 = v0[8];
    v18 = v0[6];
    v19 = v0[4];
    v20 = __swift_project_value_buffer(v18, qword_28028B348);
    (*(v17 + 16))(v16, v20, v18);
    (*(v14 + 16))(v13, v19, v15);
    v21 = sub_2685689E0();
    v22 = sub_268568DE0();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[12];
    v25 = v0[10];
    v27 = v0[7];
    v26 = v0[8];
    v28 = v0[6];
    if (v23)
    {
      v44 = v0[6];
      v29 = OUTLINED_FUNCTION_4();
      v43 = OUTLINED_FUNCTION_51();
      v45 = v43;
      *v29 = 136315138;
      sub_268563F5C(&qword_2802837E8, 255, MEMORY[0x277D5B9D0]);
      v41 = v22;
      v30 = sub_2685691A0();
      v42 = v26;
      v32 = v31;
      (v5)(v24, v25);
      v33 = sub_2684EABEC(v30, v32, &v45);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_2684CA000, v21, v41, "Unsupported promptType '%s'. Will not support windowing.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v27 + 8))(v42, v44);
    }

    else
    {

      (v5)(v24, v25);
      (*(v27 + 8))(v26, v28);
    }

    v34 = v0[3];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837E0, &unk_26856EB30);
    v11 = v34;
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  v36 = v0[12];
  v35 = v0[13];
  v38 = v0[8];
  v37 = v0[9];

  OUTLINED_FUNCTION_9_1();

  return v39();
}

uint64_t sub_26855ECC4()
{
  OUTLINED_FUNCTION_5();
  v1[81] = v0;
  v1[80] = v2;
  v1[79] = v3;
  v4 = sub_268567FF0();
  v1[82] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[83] = v5;
  v1[84] = *(v6 + 64);
  v1[85] = OUTLINED_FUNCTION_50();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  v1[88] = OUTLINED_FUNCTION_39();
  v10 = sub_2685689F0();
  v1[89] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[90] = v11;
  v13 = *(v12 + 64);
  v1[91] = OUTLINED_FUNCTION_50();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26855EE80()
{
  v312 = v0;
  v1 = v0;
  if (qword_280282960 != -1)
  {
LABEL_124:
    OUTLINED_FUNCTION_0_0();
  }

  v2 = *(v1 + 808);
  v3 = *(v1 + 720);
  v4 = *(v1 + 640);
  v289 = __swift_project_value_buffer(*(v1 + 712), qword_28028B348);
  v290 = *(v3 + 16);
  v290(v2);

  v5 = sub_2685689E0();
  v6 = sub_268568DD0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 808);
  v9 = *(v1 + 720);
  v10 = *(v1 + 712);
  if (v7)
  {
    v11 = *(v1 + 640);
    v12 = OUTLINED_FUNCTION_4();
    v13 = OUTLINED_FUNCTION_51();
    v311 = v13;
    *v12 = 136315138;
    v14 = type metadata accessor for NotificationsApp(0);
    v15 = MEMORY[0x26D61BE70](v11, v14);
    v17 = sub_2684EABEC(v15, v16, &v311);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2684CA000, v5, v6, "RNReadNotificationsFlowProvider makeWindowFlow | windowContent: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  v18 = *(v9 + 8);
  v18(v8, v10);
  v19 = v1 + 528;
  v20 = *(v1 + 800);
  v21 = *(v1 + 712);
  v22 = *(v1 + 640);
  v23 = OUTLINED_FUNCTION_22_4();
  v24(v23);

  i = sub_2685689E0();
  LOBYTE(v26) = sub_268568DD0();

  v295 = v1;
  v288 = v18;
  if (os_log_type_enabled(i, v26))
  {
    v27 = 0x6E776F6E6B6E55;
    v28 = *(v1 + 640);
    v29 = OUTLINED_FUNCTION_4();
    v30 = OUTLINED_FUNCTION_51();
    v311 = v30;
    *v29 = 136315138;
    v309 = v30;
    if (sub_2684DEAF0(v28))
    {
      v31 = *(v1 + 640) & 0xC000000000000001;
      v32 = OUTLINED_FUNCTION_33_3();
      sub_2684DEAFC(v32, v33, v34);
      v35 = *(v1 + 704);
      v36 = *(v1 + 640);
      v37 = &OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName;
      if (v31)
      {
LABEL_128:
        v287 = MEMORY[0x26D61C170](0, v36);
        sub_2684D4298(v287 + *v37, v35);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_2684D4298(*(v36 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName, *(v1 + 704));
      }

      v38 = sub_268568810();
      if (__swift_getEnumTagSinglePayload(v35, 1, v38) != 1)
      {
        v1 = v295;
        v43 = *(v295 + 704);
        v27 = sub_268568800();
        v39 = v44;
        sub_268568810();
        OUTLINED_FUNCTION_34_6(v38);
        (*(v45 + 8))(v43, v38);
        goto LABEL_13;
      }

      v1 = v295;
      sub_26853D95C(*(v295 + 704), &qword_280282AF0, &qword_26856A1E0);
    }

    v39 = 0xE700000000000000;
LABEL_13:
    v46 = *(v1 + 800);
    v47 = *(v1 + 720);
    v48 = *(v1 + 712);
    v49 = sub_2684EABEC(v27, v39, &v311);

    *(v29 + 4) = v49;
    _os_log_impl(&dword_2684CA000, i, v26, "RNReadNotificationsFlowProvider makeWindowFlow | App is: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v309);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v288(v46, v48);
    goto LABEL_14;
  }

  v40 = *(v1 + 800);
  v26 = *(v1 + 720);
  v41 = *(v1 + 712);

  v42 = OUTLINED_FUNCTION_23_7();
  (v18)(v42);
LABEL_14:
  v50 = *(v1 + 640);
  v37 = sub_2684DEAF0(v50);
  v29 = 0;
  v299 = v50 & 0xFFFFFFFFFFFFFF8;
  v303 = v50 & 0xC000000000000001;
  v35 = MEMORY[0x277D84F90];
  v297 = v50 + 32;
  v291 = v37;
  while (v29 != v37)
  {
    if (v303)
    {
      v51 = MEMORY[0x26D61C170](v29, *(v295 + 640));
    }

    else
    {
      if (v29 >= *(v299 + 16))
      {
        goto LABEL_117;
      }

      v51 = *(v297 + 8 * v29);
    }

    v52 = __OFADD__(v29, 1);
    v53 = (v29 + 1);
    if (v52)
    {
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
      goto LABEL_124;
    }

    v1 = *(v51 + 24);

    v54 = v1 >> 62;
    if (v1 >> 62)
    {
      v26 = sub_2685690A0();
    }

    else
    {
      v26 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55 = v35 >> 62;
    if (v35 >> 62)
    {
      v56 = sub_2685690A0();
    }

    else
    {
      v56 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v57 = v56 + v26;
    if (__OFADD__(v56, v26))
    {
      goto LABEL_118;
    }

    v309 = v53;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v55)
      {
LABEL_32:
        sub_2685690A0();
      }

      else
      {
        v58 = v35 & 0xFFFFFFFFFFFFFF8;
LABEL_31:
        v60 = *(v58 + 16);
      }

      v35 = sub_268569000();
      v58 = v35 & 0xFFFFFFFFFFFFFF8;
      v59 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_34;
    }

    if (v55)
    {
      goto LABEL_32;
    }

    v58 = v35 & 0xFFFFFFFFFFFFFF8;
    v59 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v59 < v57)
    {
      goto LABEL_31;
    }

LABEL_34:
    v61 = *(v58 + 16);
    v62 = v59 - v61;
    i = v58 + 8 * v61;
    v306 = v58;
    if (v54)
    {
      if (!sub_2685690A0())
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_31_5();
      v64 = sub_2685690A0();
      if (v62 < v64)
      {
        goto LABEL_122;
      }

      if (!(v1 >> 62))
      {
        goto LABEL_123;
      }

      v292 = v64;
      v293 = v35;
      v65 = i + 32;
      OUTLINED_FUNCTION_2_20();
      sub_26852DDF0(&qword_2802837B0, &qword_280283440, &qword_26856D320);
      for (i = 0; i != v54; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
        v66 = sub_2684DEA8C(v19, i, v1);
        v68 = *v67;

        v66(v19, 0);
        *(v65 + 8 * i) = v68;
      }

      v35 = v293;
      v37 = v291;
      v63 = v292;
LABEL_44:

      v29 = v309;
      if (v63 < v26)
      {
        goto LABEL_119;
      }

      if (v63 > 0)
      {
        v69 = *(v306 + 16);
        v52 = __OFADD__(v69, v63);
        v70 = v69 + v63;
        if (v52)
        {
          goto LABEL_120;
        }

        *(v306 + 16) = v70;
      }
    }

    else
    {
      v63 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v63)
      {
        if (v62 < v63)
        {
          goto LABEL_121;
        }

        type metadata accessor for NotificationsNotification(0);
        swift_arrayInitWithCopy();
        goto LABEL_44;
      }

LABEL_48:

      v29 = v309;
      if (v26 > 0)
      {
        goto LABEL_119;
      }
    }
  }

  v71 = sub_2684DEAF0(v35);
  if (v71)
  {
    i = v71;
    v311 = MEMORY[0x277D84F90];
    v27 = &v311;
    sub_268569040();
    if ((i & 0x8000000000000000) != 0)
    {
      goto LABEL_126;
    }

    sub_2684D16C0(0, &qword_280282BC8, 0x277D47610);
    v72 = 0;
    v26 = v35 & 0xC000000000000001;
    do
    {
      if (v26)
      {
        v73 = MEMORY[0x26D61C170](v72, v35);
      }

      else
      {
        v74 = *(v35 + 8 * v72 + 32);
      }

      ++v72;
      sub_2685646B8(v73);
      sub_268569020();
      v75 = *(v311 + 16);
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    while (i != v72);

    v76 = v311;
  }

  else
  {

    v76 = MEMORY[0x277D84F90];
  }

  v309 = v76;
  v29 = v288;
  v19 = v295;
  v77 = *(v295 + 648);
  v78 = *(v77 + 320);
  v27 = v78 + 1;
  if (__OFADD__(v78, 1))
  {
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v27 == sub_2684DEAF0(*(v77 + 120)))
  {
    goto LABEL_67;
  }

  v79 = *(v77 + 320);
  v27 = v79 + 1;
  if (__OFADD__(v79, 1))
  {
    goto LABEL_127;
  }

  v80 = *(v77 + 120);

  OUTLINED_FUNCTION_0_27();
  v81 = OUTLINED_FUNCTION_23_7();
  sub_26855D25C(v81, v82, v83);
  OUTLINED_FUNCTION_31_5();

  if (!v27)
  {
LABEL_67:
    v85 = 0;
  }

  else
  {
    v84 = *(v27 + 24);

    v85 = sub_2684DEAF0(v84);
  }

  v86 = *(v295 + 792);
  v87 = *(v295 + 712);
  v88 = *(v295 + 648);
  v89 = sub_268562A60();
  (v290)(v86, v289, v87);

  v90 = sub_2685689E0();
  v91 = sub_268568DD0();
  if (OUTLINED_FUNCTION_15_10(v91))
  {
    v92 = OUTLINED_FUNCTION_4();
    *v92 = 134217984;
    *(v92 + 4) = sub_2684DEAF0(v309);

    OUTLINED_FUNCTION_9_21();
    _os_log_impl(v93, v94, v95, v96, v97, 0xCu);
    OUTLINED_FUNCTION_13_5();
  }

  else
  {
  }

  v98 = *(v295 + 784);
  v99 = *(v295 + 712);
  v100 = *(v295 + 720) + 8;
  v288(*(v295 + 792), v99);
  (v290)(v98, v289, v99);
  v101 = sub_2685689E0();
  v102 = sub_268568DD0();
  if (OUTLINED_FUNCTION_15_10(v102))
  {
    v103 = OUTLINED_FUNCTION_4();
    *v103 = 134217984;
    *(v103 + 4) = v85;
    OUTLINED_FUNCTION_9_21();
    _os_log_impl(v104, v105, v106, v107, v108, 0xCu);
    OUTLINED_FUNCTION_13_5();
  }

  v300 = v85;
  v109 = v295;
  v110 = *(v295 + 784);
  v111 = *(v295 + 776);
  v112 = *(v295 + 712);

  v288(v110, v112);
  v113 = OUTLINED_FUNCTION_58_2();
  v114(v113);
  v115 = sub_2685689E0();
  v116 = sub_268568DD0();
  if (OUTLINED_FUNCTION_15_10(v116))
  {
    v117 = swift_slowAlloc();
    *v117 = 67109120;
    v117[1] = v89 & 1;
    OUTLINED_FUNCTION_9_21();
    _os_log_impl(v118, v119, v120, v121, v122, 8u);
    OUTLINED_FUNCTION_13_5();
  }

  v304 = v89;
  v123 = *(v295 + 776);
  v124 = *(v295 + 768);
  v125 = *(v295 + 712);
  v126 = *(v295 + 648);

  v288(v123, v125);
  v127 = OUTLINED_FUNCTION_58_2();
  v128(v127);

  v129 = sub_2685689E0();
  v130 = sub_268568DD0();

  v131 = os_log_type_enabled(v129, v130);
  v132 = *(v295 + 768);
  v133 = *(v295 + 712);
  if (v131)
  {
    v307 = *(v295 + 768);
    v134 = *(v295 + 648);
    v135 = OUTLINED_FUNCTION_51();
    v311 = swift_slowAlloc();
    *v135 = 136315650;
    v136 = *(v134 + 112);
    *(v295 + 560) = *(v134 + 104);
    *(v295 + 568) = v136;

    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A50, &unk_268569F80);
    v138 = sub_268568B70();
    v140 = sub_2684EABEC(v138, v139, &v311);

    *(v135 + 4) = v140;
    *(v135 + 12) = 2080;
    *(v295 + 576) = sub_268562D10();
    *(v295 + 584) = v141;
    v142 = sub_268568B70();
    v109 = v143;
    v144 = sub_2684EABEC(v142, v143, &v311);
    OUTLINED_FUNCTION_56_1();

    *(v135 + 14) = v144;
    *(v135 + 22) = 2080;
    v109[74] = sub_268562B48();
    v109[75] = v145;
    v146 = sub_268568B70();
    sub_2684EABEC(v146, v147, &v311);
    OUTLINED_FUNCTION_32_8();

    *(v135 + 24) = v137;
    _os_log_impl(&dword_2684CA000, v129, v130, "RNReadNotificationsFlowProvider repeatThreadId: %s, previousThreadId: %s, currentThreadId: %s", v135, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v288(v307, v133);
  }

  else
  {

    v288(v132, v133);
  }

  v148 = v109[95];
  v149 = v109[89];
  v150 = v109[87];
  v151 = v109[86];
  v152 = v109[83];
  v153 = *(v295 + 656);
  v154 = *(v295 + 632);
  v155 = OUTLINED_FUNCTION_22_4();
  v156(v155);
  v157 = *(v152 + 16);
  v157(v150, v154, v153);
  v294 = v157;
  v157(v151, v154, v153);
  v158 = sub_2685689E0();
  v159 = sub_268568DD0();
  v160 = os_log_type_enabled(v158, v159);
  v161 = *(v295 + 696);
  v162 = *(v295 + 688);
  v163 = *(v295 + 664);
  v164 = *(v295 + 656);
  if (v160)
  {
    v165 = swift_slowAlloc();
    *v165 = 67109376;
    v166 = sub_268567FB0() & 1;
    v167 = *(v163 + 8);
    v167(v161, v164);
    *(v165 + 4) = v166;
    *(v165 + 8) = 1024;
    v168 = sub_268567FA0() & 1;
    v167(v162, v164);
    *(v165 + 10) = v168;
    _os_log_impl(&dword_2684CA000, v158, v159, "RNReadNotificationsFlowProvider: isLastWindow: %{BOOL}d isConclusion: %{BOOL}d", v165, 0xEu);
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    v169 = *(v163 + 8);
    v169(v162, v164);
    v169(v161, v164);
  }

  v170 = *(v295 + 760);
  v171 = *(v295 + 712);
  v172 = *(v295 + 648);

  v173 = OUTLINED_FUNCTION_56_1();
  v288(v173, v171);
  if (v300 > 1)
  {
    v174 = 1;
  }

  else
  {
    v174 = 2;
  }

  if (v304)
  {
    v175 = 0;
  }

  else
  {
    v175 = v174;
  }

  v176 = sub_268562D10();
  if (!v177)
  {
    goto LABEL_98;
  }

  v178 = v177;
  v179 = v170[81];
  v180 = *(v179 + 112);
  if (!v180)
  {

    goto LABEL_96;
  }

  if (*(v179 + 104) == v176 && v180 == v178)
  {

    goto LABEL_98;
  }

  v182 = sub_2685691C0();

  if ((v182 & 1) == 0)
  {
LABEL_96:
    v183 = v170[81];
    sub_268562EE8(0);
  }

LABEL_98:
  v184 = v170[79];
  v185 = sub_268567FA0();
  v186 = v170[89];
  if (v185)
  {
    v187 = v170[91];

    v188 = OUTLINED_FUNCTION_53_2();
    v189(v188);
    v190 = sub_2685689E0();
    v191 = sub_268568DC0();
    if (os_log_type_enabled(v190, v191))
    {
      v192 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_18_2(v192);
      _os_log_impl(&dword_2684CA000, v190, v191, "RNReadNotificationsFlowProvider concluding RNReadNotificationsFlow", v158, 2u);
      OUTLINED_FUNCTION_13_5();
    }

    v193 = v170[91];
    v194 = v170[89];
    v195 = v170[85];
    v196 = v170[84];
    v197 = v170[83];
    v198 = v170[82];
    v199 = v170[81];
    v200 = *(v295 + 640);
    v201 = *(v295 + 632);

    OUTLINED_FUNCTION_39_3();
    v202();
    OUTLINED_FUNCTION_55_1();
    v203();
    v204 = (*(v197 + 80) + 24) & ~*(v197 + 80);
    v205 = swift_allocObject();
    *(v205 + 16) = v199;
    (*(v197 + 32))(v205 + v204, v195, v198);
    *(v205 + ((v196 + v204 + 7) & 0xFFFFFFFFFFFFFFF8)) = v200;
    sub_2684CC878(v199 + 160, v295 + 400);
    type metadata accessor for RNConclusionFlow();
    v206 = swift_allocObject();
    v206[2] = &unk_268570DE8;
    v206[3] = v205;
    memcpy(v206 + 4, (v295 + 400), 0x80uLL);
    *(v295 + 624) = v206;
    sub_268563F5C(&qword_280283840, 255, type metadata accessor for RNConclusionFlow);
    OUTLINED_FUNCTION_56_1();
  }

  else
  {
    v207 = v170[94];
    v208 = OUTLINED_FUNCTION_53_2();
    v209(v208);
    v210 = sub_2685689E0();
    v211 = sub_268568DC0();
    v212 = OUTLINED_FUNCTION_15_10(v211);
    v213 = v170[94];
    v214 = v170[89];
    if (v212)
    {
      v215 = v175;
      v216 = OUTLINED_FUNCTION_4();
      v170 = OUTLINED_FUNCTION_51();
      v311 = v170;
      *v216 = 136315138;
      *(v295 + 816) = v215;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283AC0, &qword_268570DD8);
      v217 = sub_268568B70();
      v219 = sub_2684EABEC(v217, v218, &v311);

      *(v216 + 4) = v219;
      _os_log_impl(&dword_2684CA000, v210, v207, "RNReadNotificationsFlowProvider promptTypeNeeded: %s", v216, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v170);
      OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_2();
      v175 = v215;
      OUTLINED_FUNCTION_2();

      OUTLINED_FUNCTION_39_3();
      v220();
    }

    else
    {

      v288(v213, v214);
    }

    if (v175 == 2 || (*(v170[81] + 329) & 1) != 0)
    {
      v221 = v170[92];
      v222 = v170[89];
      v223 = OUTLINED_FUNCTION_22_4();
      v224(v223);
      v225 = sub_2685689E0();
      v226 = sub_268568DC0();
      if (OUTLINED_FUNCTION_15_10(v226))
      {
        v227 = OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_18_2(v227);
        OUTLINED_FUNCTION_9_21();
        _os_log_impl(v228, v229, v230, v231, v232, 2u);
        OUTLINED_FUNCTION_13_5();
      }

      v233 = v170[92];
      v234 = v170[89];
      v235 = *(v295 + 680);
      v236 = *(v295 + 672);
      v237 = *(v295 + 664);
      v238 = *(v295 + 656);
      v239 = *(v295 + 648);
      v240 = *(v295 + 640);
      v241 = *(v295 + 632);

      v288(v233, v234);
      OUTLINED_FUNCTION_55_1();
      v242();
      v243 = (*(v237 + 80) + 24) & ~*(v237 + 80);
      v244 = swift_allocObject();
      *(v244 + 16) = v239;
      (*(v237 + 32))(v244 + v243, v235, v238);
      *(v244 + ((v236 + v243 + 7) & 0xFFFFFFFFFFFFFFF8)) = v240;
      sub_2684CC878(v239 + 160, v295 + 16);
      type metadata accessor for RNNoPromptFlow();
      swift_allocObject();
      *(v295 + 608) = sub_268511604((v295 + 16), v309, &unk_268570DB8, v244, sub_268563FB4, v239, sub_268563FA8, v239, v304 & 1);
      sub_268563F5C(&qword_280283428, 255, type metadata accessor for RNNoPromptFlow);
      swift_retain_n();

      v200 = v295;
    }

    else
    {
      v301 = v175;
      v245 = v170[93];
      v246 = v170[89];
      v247 = OUTLINED_FUNCTION_22_4();
      v248(v247);
      v249 = sub_2685689E0();
      v250 = sub_268568DC0();
      if (OUTLINED_FUNCTION_15_10(v250))
      {
        v251 = OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_18_2(v251);
        OUTLINED_FUNCTION_9_21();
        _os_log_impl(v252, v253, v254, v255, v256, 2u);
        OUTLINED_FUNCTION_13_5();
      }

      v257 = *(v295 + 744);
      v258 = *(v295 + 712);
      v259 = *(v295 + 680);
      v260 = *(v295 + 672);
      v261 = *(v295 + 664);
      v262 = *(v295 + 656);
      v263 = *(v295 + 648);
      v264 = *(v295 + 640);
      v265 = *(v295 + 632);

      OUTLINED_FUNCTION_39_3();
      v266();
      sub_2684CC878(v263 + 160, v295 + 144);
      v267 = *(v263 + 328);
      v294(v259, v265, v262);
      v268 = (*(v261 + 80) + 24) & ~*(v261 + 80);
      v269 = swift_allocObject();
      *(v269 + 16) = v263;
      (*(v261 + 32))(v269 + v268, v259, v262);
      *(v269 + ((v260 + v268 + 7) & 0xFFFFFFFFFFFFFFF8)) = v264;
      type metadata accessor for RNPromptForFollowupStrategy();
      swift_allocObject();

      v270 = sub_268524950(v295 + 144, v309, v267, v304 & 1, &unk_268570DC8, v269);
      sub_2684CC878(v263 + 160, v295 + 272);
      v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283AB0, &qword_268570DD0);
      v272 = *(v271 + 48);
      v273 = *(v271 + 52);
      swift_allocObject();
      swift_retain_n();
      *(v295 + 616) = sub_26855D2F8(v270, v301, v295 + 272, sub_268563D34, v263, sub_268563D3C, v263, sub_268563D40, v263);
      v200 = v295;
      sub_26852DDF0(&qword_280283AB8, &qword_280283AB0, &qword_268570DD0);
    }
  }

  v310 = sub_2685678F0();

  v274 = v200[101];
  v275 = v200[100];
  v276 = v200[99];
  v277 = v200;
  v278 = v200[98];
  v279 = v277[97];
  v280 = v277[96];
  v281 = v277[95];
  v282 = v277[94];
  v283 = v277[93];
  v284 = v277[92];
  v296 = v277[91];
  v298 = v277[88];
  v302 = v277[87];
  v305 = v277[86];
  v308 = v277[85];

  v285 = v277[1];

  return v285(v310);
}

uint64_t sub_268560570()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26853004C;

  return sub_268561264();
}

uint64_t sub_268560620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_268560644, 0, 0);
}

uint64_t sub_268560644()
{
  OUTLINED_FUNCTION_5();
  if (*(v0[2] + 328))
  {
    v1 = MEMORY[0x277D84F90];
  }

  else
  {
    v1 = v0[4];
  }

  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_268560704;
  v4 = v0[2];
  v3 = v0[3];

  return sub_268561264();
}

uint64_t sub_268560704()
{
  OUTLINED_FUNCTION_20_2();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_4_12();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v10 = v9;
  *(v5 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_14();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 40);

    v15 = *(v9 + 8);

    return v15(v3);
  }
}

uint64_t sub_26856083C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268532A48;

  return sub_268561264();
}

uint64_t sub_2685608EC()
{
  OUTLINED_FUNCTION_5();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2685689F0();
  v1[5] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_50();
  v1[8] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2685609A0()
{
  v37 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[8];
  v2 = v0[6];
  v3 = __swift_project_value_buffer(v0[5], qword_28028B348);
  v4 = *(v2 + 16);
  v5 = OUTLINED_FUNCTION_17_9();
  v4(v5);
  v6 = sub_2685689E0();
  v7 = sub_268568DC0();
  if (OUTLINED_FUNCTION_13_0(v7))
  {
    v8 = OUTLINED_FUNCTION_16_0();
    *v8 = 0;
    _os_log_impl(&dword_2684CA000, v6, v7, "RNReadNotificationsFlowProvider makeFinalWindowFlow", v8, 2u);
    OUTLINED_FUNCTION_2();
  }

  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[3];

  v14 = *(v12 + 8);
  v14(v9, v11);
  v15 = v14;
  (v4)(v10, v3, v11);

  v16 = sub_2685689E0();
  v17 = sub_268568DD0();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[6];
  v20 = v0[7];
  v21 = v0[5];
  if (v18)
  {
    v22 = v0[3];
    v35 = v0[7];
    v23 = OUTLINED_FUNCTION_4();
    v24 = OUTLINED_FUNCTION_51();
    v36 = v24;
    *v23 = 136315138;
    v25 = type metadata accessor for NotificationsApp(0);
    v26 = MEMORY[0x26D61BE70](v22, v25);
    v28 = sub_2684EABEC(v26, v27, &v36);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_2684CA000, v16, v17, "RNReadNotificationsFlowProvider makeFinalWindowFlow | windowContent: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v29 = v35;
  }

  else
  {

    v29 = v20;
  }

  v15(v29, v21);
  v30 = swift_task_alloc();
  v0[9] = v30;
  *v30 = v0;
  v30[1] = sub_268560C3C;
  v31 = v0[3];
  v32 = v0[4];
  v33 = v0[2];

  return sub_26855ECC4();
}

uint64_t sub_268560C3C()
{
  OUTLINED_FUNCTION_20_2();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;

  v8 = *(v4 + 64);
  v9 = *(v4 + 56);

  v11 = *(v6 + 8);
  if (!v0)
  {
    v10 = v3;
  }

  return v11(v10);
}

uint64_t sub_268560D78()
{
  OUTLINED_FUNCTION_5();
  v1[3] = v0;
  v2 = sub_268567FF0();
  v1[4] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_39();
  v6 = sub_2685689F0();
  v1[7] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_39();
  v10 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268560E68(uint64_t a1)
{
  if (qword_280282960 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_0();
  }

  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  v5 = OUTLINED_FUNCTION_8_20(a1, qword_28028B348);
  v6(v5);
  v7 = sub_2685689E0();
  v8 = sub_268568DC0();
  if (OUTLINED_FUNCTION_13_0(v8))
  {
    v9 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v9);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v10, v11, "RNReadNotificationsFlowProvider makeConclusionFlow");
    OUTLINED_FUNCTION_12_3();
  }

  v13 = v1[8];
  v12 = v1[9];
  v15 = v1[6];
  v14 = v1[7];
  v16 = v1[3];

  (*(v13 + 8))(v12, v14);
  v17 = *(v16 + 336);
  sub_268567FD0();
  v18 = swift_task_alloc();
  v1[10] = v18;
  *v18 = v1;
  v18[1] = sub_268560FC8;
  v19 = v1[6];
  v20 = v1[3];

  return sub_26855ECC4();
}

uint64_t sub_268560FC8()
{
  OUTLINED_FUNCTION_20_2();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_4_12();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v10 = v9;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 96) = v3;
  }

  OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2685610D0()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v0[2] = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283AA0, &qword_268570DA8);
  sub_26852DDF0(&qword_280283AA8, &qword_280283AA0, &qword_268570DA8);
  sub_2685678E0();
  OUTLINED_FUNCTION_4_5();

  (*(v3 + 8))(v2, v4);

  v5 = OUTLINED_FUNCTION_3_18();

  return v6(v5);
}

uint64_t sub_2685611E0()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[9];
  (*(v0[5] + 8))(v0[6], v0[4]);

  OUTLINED_FUNCTION_9_1();
  v3 = v0[11];

  return v2();
}

uint64_t sub_268561264()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  *(v1 + 336) = v3;
  *(v1 + 184) = v4;
  v5 = sub_2685688F0();
  *(v1 + 208) = v5;
  OUTLINED_FUNCTION_2_4(v5);
  *(v1 + 216) = v6;
  v8 = *(v7 + 64);
  *(v1 + 224) = OUTLINED_FUNCTION_39();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v9);
  v11 = *(v10 + 64);
  *(v1 + 232) = OUTLINED_FUNCTION_50();
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  v12 = sub_2685689F0();
  *(v1 + 256) = v12;
  OUTLINED_FUNCTION_2_4(v12);
  *(v1 + 264) = v13;
  v15 = *(v14 + 64);
  *(v1 + 272) = OUTLINED_FUNCTION_50();
  *(v1 + 280) = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2685613AC(uint64_t a1)
{
  v210 = i;
  if (qword_280282960 != -1)
  {
LABEL_142:
    a1 = OUTLINED_FUNCTION_0_0();
  }

  v2 = i + 120;
  v3 = *(i + 280);
  v4 = *(i + 256);
  v5 = *(i + 264);
  v6 = OUTLINED_FUNCTION_8_20(a1, qword_28028B348);
  v195 = v7;
  v194 = v8;
  (v8)(v6);
  v9 = sub_2685689E0();
  v10 = sub_268568DC0();
  v208 = i;
  if (OUTLINED_FUNCTION_13_0(v10))
  {
    v11 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_18_2(v11);
    _os_log_impl(&dword_2684CA000, v9, v10, "RNReadNotificationsFlowProvider in executePatternForWindow", v4, 2u);
    OUTLINED_FUNCTION_2();
  }

  v12 = *(i + 280);
  v13 = *(i + 256);
  v14 = *(i + 264);
  i = *(i + 200);

  v196 = *(v14 + 8);
  v196(v12, v13);
  v197 = i;
  v15 = *(i + 120);
  v16 = sub_2684DEAF0(v15);
  v17 = v15 & 0xC000000000000001;

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  while (v16 != v18)
  {
    v20 = v208;
    if (v17)
    {
      v21 = MEMORY[0x26D61C170](v18, v15);
    }

    else
    {
      if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_132;
      }

      v21 = *(v15 + 8 * v18 + 32);
    }

    if (__OFADD__(v18, 1))
    {
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
      goto LABEL_142;
    }

    if (*(v21 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_canUseSenderName) == 1)
    {
      v22 = *(v21 + 24);
      if (v22 >> 62)
      {
        if (v22 < 0)
        {
          v42 = *(v21 + 24);
        }

        if (!sub_2685690A0())
        {
LABEL_32:

          goto LABEL_33;
        }
      }

      else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        i = *(v208 + 248);
        OUTLINED_FUNCTION_10_2();
        sub_2684D4298(v43 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, i);
        swift_unknownObjectRelease();
      }

      else
      {
        if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_138;
        }

        i = *(v208 + 248);
        sub_2684D4298(*(v22 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, i);
      }

      v23 = sub_268568810();
      OUTLINED_FUNCTION_2_1(i);
      if (v24)
      {
        v25 = *(v208 + 248);

        sub_26853D95C(v25, &qword_280282AF0, &qword_26856A1E0);
        v20 = v208;
        v17 = v15 & 0xC000000000000001;
LABEL_33:
        *(v20 + 104) = 0u;
        *(v20 + 88) = 0u;
LABEL_34:
        sub_26853D95C(v20 + 88, &qword_280282BE0, &unk_26856D8C0);
        goto LABEL_35;
      }

      i = v208;
      v35 = *(v208 + 248);
      v36 = sub_268568800();
      *(v208 + 112) = MEMORY[0x277D837D0];
      *(v208 + 88) = v36;
      *(v208 + 96) = v37;

      sub_268568810();
      OUTLINED_FUNCTION_34_6(v23);
      v39 = *(v38 + 8);
      v40 = OUTLINED_FUNCTION_17_9();
      v20 = v208;
      v41(v40);
      v17 = v15 & 0xC000000000000001;
    }

    else
    {
      sub_2684D4298(v21 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName, *(v208 + 240));
      sub_268568810();
      v26 = OUTLINED_FUNCTION_32_8();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, i);
      v28 = *(v208 + 240);
      if (EnumTagSinglePayload == 1)
      {

        sub_26853D95C(v28, &qword_280282AF0, &qword_26856A1E0);
        goto LABEL_33;
      }

      v29 = sub_268568800();
      *(v208 + 112) = MEMORY[0x277D837D0];
      *(v208 + 88) = v29;
      *(v208 + 96) = v30;

      OUTLINED_FUNCTION_34_6(i);
      v32 = *(v31 + 8);
      v33 = OUTLINED_FUNCTION_23_7();
      v34(v33);
    }

    if (!*(v20 + 112))
    {
      goto LABEL_34;
    }

    sub_2685039D0((v20 + 88), (v20 + 56));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = *(v19 + 16);
      sub_26854C2A4();
      v19 = v45;
    }

    i = *(v19 + 16);
    if (i >= *(v19 + 24) >> 1)
    {
      sub_26854C2A4();
      v19 = v46;
    }

    *(v19 + 16) = i + 1;
    sub_2685039D0((v20 + 56), (v19 + 32 * i + 32));
LABEL_35:
    ++v18;
  }

  v48 = *(v208 + 184);
  v47 = *(v208 + 192);

  sub_2684D16C0(0, &qword_280283A80, 0x277CBEB70);
  v49 = sub_26855D4F0();
  *(v208 + 288) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283798, &unk_26856EF90);
  v50 = swift_allocObject();
  *(v50 + 1) = xmmword_268570B40;
  v50[4] = 0x73656D614E707061;
  v50[5] = 0xE800000000000000;
  i = v197;
  if (sub_2684DEAF0(v197[15]) > 4)
  {
    v51 = 3;
  }

  else
  {
    v51 = 4;
  }

  v52 = sub_26856390C(v49, v51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283A88, &qword_268570D90);
  v50[6] = v52;
  v50[9] = v53;
  strcpy(v50 + 80, "isConclusion");
  *(v50 + 93) = 0;
  *(v50 + 47) = -5120;
  v54 = sub_268567FA0();
  v55 = MEMORY[0x277D839B0];
  *(v50 + 96) = v54 & 1;
  v50[15] = v55;
  strcpy(v50 + 128, "isFirstWindow");
  *(v50 + 71) = -4864;
  *(v50 + 144) = sub_268567FC0() & 1;
  v50[21] = v55;
  strcpy(v50 + 176, "isLastWindow");
  *(v50 + 189) = 0;
  *(v50 + 95) = -5120;
  *(v50 + 192) = sub_268567FB0() & 1;
  OUTLINED_FUNCTION_25_2();
  v50[27] = v55;
  v50[28] = 0xD000000000000016;
  v50[29] = v56;
  *(v50 + 240) = sub_268567F70() & 1;
  v50[33] = v55;
  v50[34] = 0x736D657469;
  v201 = v50;
  v50[35] = 0xE500000000000000;
  v57 = sub_2684DEAF0(v47);
  v58 = MEMORY[0x277D84F90];
  v200 = v2;
  if (v57)
  {
    v59 = v57;
    v209 = MEMORY[0x277D84F90];
    sub_2684DD058(0, v57 & ~(v57 >> 63), 0);
    if (v59 < 0)
    {
      goto LABEL_146;
    }

    v61 = 0;
    v58 = v209;
    v62 = *(v208 + 192);
    v63 = v62 & 0xC000000000000001;
    v206 = v62 + 32;
    v50 = &qword_2802837A0;
    do
    {
      if (v63)
      {
        v64 = v208;
        v65 = MEMORY[0x26D61C170](v61, *(v208 + 192));
      }

      else
      {
        v65 = *(v206 + 8 * v61);

        v64 = v208;
      }

      *(v64 + 176) = v65;
      type metadata accessor for NotificationsApp(0);
      sub_268563F5C(&qword_2802837A0, 255, type metadata accessor for NotificationsApp);
      v66 = sub_2685688B0();

      v209 = v58;
      v68 = *(v58 + 16);
      v67 = *(v58 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_2684DD058((v67 > 1), v68 + 1, 1);
        v58 = v209;
      }

      ++v61;
      *(v58 + 16) = v68 + 1;
      *(v58 + 8 * v68 + 32) = v66;
    }

    while (v59 != v61);
    i = v197;
  }

  v69 = *(v208 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837A8, &unk_26856EFA0);
  v201[36] = v58;
  OUTLINED_FUNCTION_8_15();
  *(v72 + 312) = v70;
  *(v72 + 320) = v71;
  *(v72 + 328) = v73;
  *(v72 + 336) = (*(v69 + 328) & 1) == 0;
  *(v72 + 360) = MEMORY[0x277D839B0];
  *(v72 + 368) = 0x6574496C61746F74;
  *(v72 + 376) = 0xEA0000000000736DLL;
  v74 = *(i + 120);
  v75 = sub_2684DEAF0(v74);
  v76 = v74 & 0xC000000000000001;
  v203 = v74 + 32;
  v204 = v74 & 0xFFFFFFFFFFFFFF8;
  v193 = v74;

  v77 = 0;
  v78 = MEMORY[0x277D84F90];
  v198 = v74 & 0xC000000000000001;
  v199 = v75;
  while (v77 != v75)
  {
    if (v76)
    {
      v79 = MEMORY[0x26D61C170](v77, v193);
    }

    else
    {
      if (v77 >= *(v204 + 16))
      {
        goto LABEL_134;
      }

      v79 = *(v203 + 8 * v77);
    }

    v80 = __OFADD__(v77, 1);
    v81 = v77 + 1;
    if (v80)
    {
      goto LABEL_133;
    }

    v82 = *(v79 + 24);

    if (v82 >> 62)
    {
      v50 = sub_2685690A0();
    }

    else
    {
      v50 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v83 = v78 >> 62;
    if (v78 >> 62)
    {
      v84 = sub_2685690A0();
    }

    else
    {
      v84 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    i = v50 + v84;
    if (__OFADD__(v84, v50))
    {
      goto LABEL_135;
    }

    v207 = v81;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v83)
      {
LABEL_68:
        sub_2685690A0();
      }

      else
      {
        v85 = v78 & 0xFFFFFFFFFFFFFF8;
LABEL_67:
        v87 = *(v85 + 16);
      }

      v205 = sub_268569000();
      v85 = v205 & 0xFFFFFFFFFFFFFF8;
      v86 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_70;
    }

    if (v83)
    {
      goto LABEL_68;
    }

    v85 = v78 & 0xFFFFFFFFFFFFFF8;
    v86 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v86 < i)
    {
      goto LABEL_67;
    }

    v205 = v78;
LABEL_70:
    v88 = *(v85 + 16);
    v89 = v86 - v88;
    i = v85 + 8 * v88;
    if (v82 >> 62)
    {
      v91 = sub_2685690A0();
      if (!v91)
      {
        goto LABEL_84;
      }

      v92 = v91;
      v93 = sub_2685690A0();
      if (v89 < v93)
      {
        goto LABEL_140;
      }

      if (v92 < 1)
      {
        goto LABEL_141;
      }

      v202 = v93;
      v94 = i + 32;
      OUTLINED_FUNCTION_2_20();
      sub_26852DDF0(&qword_2802837B0, &qword_280283440, &qword_26856D320);
      for (i = 0; i != v92; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
        v95 = sub_2684DEA8C(v200, i, v82);
        v97 = *v96;

        v95(v200, 0);
        *(v94 + 8 * i) = v97;
      }

      v76 = v198;
      v75 = v199;
      v90 = v202;
LABEL_80:

      v78 = v205;
      v77 = v207;
      if (v90 < v50)
      {
        goto LABEL_136;
      }

      if (v90 > 0)
      {
        v98 = *(v85 + 16);
        v80 = __OFADD__(v98, v90);
        v99 = v98 + v90;
        if (v80)
        {
          goto LABEL_137;
        }

        *(v85 + 16) = v99;
      }
    }

    else
    {
      v90 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v90)
      {
        if (v89 < v90)
        {
          goto LABEL_139;
        }

        type metadata accessor for NotificationsNotification(0);
        swift_arrayInitWithCopy();
        goto LABEL_80;
      }

LABEL_84:

      v78 = v205;
      v77 = v207;
      if (v50 > 0)
      {
        goto LABEL_136;
      }
    }
  }

  v59 = v208;
  v2 = *(v208 + 200);

  v100 = sub_2684DEAF0(v78);

  v55 = MEMORY[0x277D83B88];
  v201[48] = v100;
  OUTLINED_FUNCTION_8_15();
  v102[51] = v55;
  v102[52] = v101 + 3;
  v102[53] = v103;
  v104 = *(v2 + 320);
  v105 = v104 + 1;
  if (__OFADD__(v104, 1))
  {
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v50 = v197;
  v106 = v197[15];

  OUTLINED_FUNCTION_0_27();
  v107 = OUTLINED_FUNCTION_23_7();
  sub_26855D25C(v107, v108, v109);
  OUTLINED_FUNCTION_31_5();

  if (v105)
  {
    v110 = *(v105 + 24);

    sub_2684DEAF0(v110);
    OUTLINED_FUNCTION_31_5();
  }

  v201[54] = v105;
  v201[57] = v55;
  v201[58] = 0x4E7070417478656ELL;
  v201[59] = 0xEB00000000656D61;
  v201[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A50, &unk_268569F80);
  v111 = *(v2 + 320);
  v112 = v111 + 1;
  if (__OFADD__(v111, 1))
  {
    goto LABEL_144;
  }

  v113 = v197[15];

  OUTLINED_FUNCTION_0_27();
  v114 = OUTLINED_FUNCTION_23_7();
  sub_26855D25C(v114, v115, v116);
  OUTLINED_FUNCTION_31_5();

  if (!v112)
  {
    goto LABEL_96;
  }

  v117 = *(v208 + 232);
  sub_2684D4298(v112 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName, v117);

  v118 = sub_268568810();
  v119 = v117;
  v59 = v208;
  if (__swift_getEnumTagSinglePayload(v119, 1, v118) == 1)
  {
    sub_26853D95C(*(v208 + 232), &qword_280282AF0, &qword_26856A1E0);
LABEL_96:
    v120 = v201;
    v201[60] = 0;
    v201[61] = 0;
  }

  else
  {
    v121 = sub_268568800();
    v123 = v122;
    OUTLINED_FUNCTION_34_6(v118);
    v125 = *(v124 + 8);
    v126 = OUTLINED_FUNCTION_23_7();
    v127(v126);
    v120 = v201;
    v201[60] = v121;
    v201[61] = v123;
    v59 = v208;
    v50 = v197;
  }

  v128 = *(v59 + 192);
  *(v120 + 512) = 0x6953776F646E6977;
  *(v120 + 520) = 0xEA0000000000657ALL;
  if (!sub_2684DEAF0(v128))
  {
    v133 = 0;
    goto LABEL_103;
  }

  v129 = *(v59 + 192) & 0xC000000000000001;
  v130 = OUTLINED_FUNCTION_33_3();
  sub_2684DEAFC(v130, v131, v132);
  v60 = *(v59 + 192);
  if (v129)
  {
    goto LABEL_147;
  }

  v133 = *(v60 + 32);

  while (2)
  {
    v134 = *(v133 + 24);

    sub_2684DEAF0(v134);
    OUTLINED_FUNCTION_31_5();

    v120 = v201;
LABEL_103:
    *(v120 + 552) = v55;
    *(v120 + 528) = v133;
    OUTLINED_FUNCTION_8_15();
    v136 = v135 + 5;
    *(v120 + 560) = v135 + 5;
    *(v120 + 568) = v137;
    if (sub_2684DEAF0(v50[15]) < 5)
    {
      v139 = 0;
LABEL_107:
      v140 = *(v59 + 200);
      *(v120 + 600) = v55;
      *(v120 + 576) = v139;
      OUTLINED_FUNCTION_25_2();
      *(v120 + 608) = v136;
      *(v120 + 616) = v141;
      v143 = *(v142 + 336) % 3;
      *(v120 + 648) = v55;
      *(v120 + 624) = v143;
      *(v120 + 656) = 0xD000000000000010;
      *(v120 + 664) = 0x8000000268571A90;
      LOBYTE(v143) = *(v142 + 312);
      v144 = MEMORY[0x277D839B0];
      *(v120 + 696) = MEMORY[0x277D839B0];
      *(v120 + 672) = v143;
      *(v120 + 704) = 0x7461657065527369;
      *(v120 + 712) = 0xE800000000000000;
      LOBYTE(v143) = *(v142 + 329);
      *(v120 + 744) = v144;
      *(v120 + 720) = v143;
      strcpy((v120 + 752), "isReadLatest");
      *(v120 + 765) = 0;
      *(v120 + 766) = -5120;
      LOBYTE(v143) = *(v142 + 152);
      *(v120 + 792) = v144;
      *(v120 + 768) = v143;
      OUTLINED_FUNCTION_25_2();
      v55 = 0xD000000000000010;
      *(v120 + 800) = v145 + 4;
      *(v120 + 808) = v146;
      if (sub_2684DEAF0(v50[15]) == 1 && (v147 = v50[15], sub_2684DEAF0(v147)))
      {
        v148 = v147 & 0xC000000000000001;
        sub_2684DEAFC(0, (v147 & 0xC000000000000001) == 0, v147);
        if ((v147 & 0xC000000000000001) != 0)
        {

          OUTLINED_FUNCTION_10_2();
          OUTLINED_FUNCTION_32_8();
        }

        else
        {
          v148 = *(v147 + 32);
        }

        v149 = *(v148 + 24);

        sub_2684DEAF0(v149);
        OUTLINED_FUNCTION_32_8();

        v150 = v148 == 1;
        v120 = v201;
      }

      else
      {
        v150 = 0;
      }

      *(v120 + 840) = MEMORY[0x277D839B0];
      *(v120 + 816) = v150;
      OUTLINED_FUNCTION_25_2();
      *(v120 + 848) = 0xD00000000000001CLL;
      *(v120 + 856) = v151;
      if (sub_2684DEAF0(v50[15]) == 1 && (v152 = v50[15], sub_2684DEAF0(v152)))
      {
        v153 = v152 & 0xC000000000000001;
        sub_2684DEAFC(0, (v152 & 0xC000000000000001) == 0, v152);
        if ((v152 & 0xC000000000000001) != 0)
        {

          OUTLINED_FUNCTION_10_2();
          OUTLINED_FUNCTION_32_8();
        }

        else
        {
          v153 = *(v152 + 32);
        }

        v154 = *(v153 + 24);

        sub_2684DEAF0(v154);
        OUTLINED_FUNCTION_32_8();

        v155 = v153 > 1;
        v120 = v201;
      }

      else
      {
        v155 = 0;
      }

      v156 = *(v59 + 200);
      v59 = MEMORY[0x277D839B0];
      *(v120 + 888) = MEMORY[0x277D839B0];
      *(v120 + 864) = v155;
      v201[112] = 0xD00000000000001ALL;
      v201[113] = 0x8000000268574080;
      v157 = sub_268562A60();
      v201[117] = v59;
      *(v201 + 912) = v157 & 1;
      OUTLINED_FUNCTION_25_2();
      v201[118] = 0xD00000000000001ELL;
      v201[119] = v158;
      if (!__OFADD__(*(v2 + 320), 1))
      {
        v159 = v50[15];

        OUTLINED_FUNCTION_0_27();
        v160 = OUTLINED_FUNCTION_17_9();
        v163 = sub_26855D25C(v160, v161, v162);

        if (v163)
        {
          v164 = *(v163 + 24);

          if (sub_2684DEAF0(v164))
          {
            v120 = v164 & 0xC000000000000001;
            sub_2684DEAFC(0, (v164 & 0xC000000000000001) == 0, v164);
            if ((v164 & 0xC000000000000001) == 0)
            {
              v165 = *(v164 + 32);

              v166 = *(v165 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary);

              goto LABEL_126;
            }

            goto LABEL_149;
          }
        }

        v166 = 0;
        goto LABEL_126;
      }

LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      v133 = MEMORY[0x26D61C170](0, v60);
      continue;
    }

    break;
  }

  v138 = sub_2684DEAF0(v50[15]);
  if (!__OFSUB__(v138, 4))
  {
    v139 = v138 - 3;
    goto LABEL_107;
  }

  __break(1u);
LABEL_149:
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_32_8();

  v166 = *(v120 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary);
  swift_unknownObjectRelease();
LABEL_126:
  v167 = *(v208 + 272);
  v168 = *(v208 + 256);
  v169 = *(v208 + 336);
  v170 = MEMORY[0x277D839B0];
  v201[123] = MEMORY[0x277D839B0];
  *(v201 + 960) = v166;
  strcpy(v201 + 992, "promptNeeded");
  *(v201 + 1005) = 0;
  *(v201 + 503) = -5120;
  v201[129] = v170;
  *(v201 + 1008) = v169;
  v171 = sub_268568AD0();
  *(v208 + 296) = v171;
  v194(v167, v195, v168);
  v172 = sub_2685689E0();
  v173 = sub_268568DC0();
  v174 = OUTLINED_FUNCTION_13_0(v173);
  v176 = *(v208 + 264);
  v175 = *(v208 + 272);
  v177 = *(v208 + 256);
  if (v174)
  {
    v178 = OUTLINED_FUNCTION_4();
    v179 = OUTLINED_FUNCTION_51();
    v209 = v179;
    *v178 = 136315138;
    v180 = sub_268568AC0();
    v182 = sub_2684EABEC(v180, v181, &v209);

    *(v178 + 4) = v182;
    _os_log_impl(&dword_2684CA000, v172, v173, "RNReadNotificationsFlowProvider#executePatternForWindow executing pattern with parameters=%s", v178, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v179);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  v196(v175, v177);
  v183 = *(v208 + 224);
  v184 = *(v208 + 200);
  sub_2685687E0();
  v185 = *(v184 + 16);
  *(v208 + 304) = v185;
  sub_2685686F0();
  sub_2685685F0();
  v186 = v185;
  v187 = sub_2685685D0();
  v188 = sub_268516318(v184 + 200, v187);
  *(v208 + 312) = v188;

  *(v208 + 48) = 0;
  *(v208 + 32) = 0u;
  *(v208 + 16) = 0u;
  sub_2685688E0();
  v189 = *(MEMORY[0x277D55C30] + 4);
  v190 = swift_task_alloc();
  *(v208 + 320) = v190;
  *v190 = v208;
  v190[1] = sub_268562714;
  v191 = *(v208 + 224);

  return MEMORY[0x2821B7E60](v186, 0xD000000000000023, 0x8000000268571AB0, v171, v188, v208 + 16, v191);
}

uint64_t sub_268562714()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v3[19] = v1;
  v3[20] = v5;
  v3[21] = v0;
  v7 = v6[40];
  v8 = v6[39];
  v9 = v6[38];
  v10 = v6[37];
  v11 = v6[28];
  v12 = v6[27];
  v13 = v6[26];
  v14 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v15 = v14;
  v3[41] = v0;

  (*(v12 + 8))(v11, v13);
  sub_26853D95C((v3 + 2), &qword_280282DB0, &unk_26856B440);
  OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

void sub_2685628F0()
{
  v1 = *(v0 + 200);

  v2 = *(v1 + 320);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 160);
    v7 = *(v0 + 272);
    v6 = *(v0 + 280);
    v9 = *(v0 + 240);
    v8 = *(v0 + 248);
    v11 = *(v0 + 224);
    v10 = *(v0 + 232);
    *(*(v0 + 200) + 320) = v4;

    v12 = OUTLINED_FUNCTION_3_18();

    v13(v12);
  }
}

uint64_t sub_2685629B4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 272);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);

  OUTLINED_FUNCTION_9_1();
  v8 = *(v0 + 328);

  return v7();
}

uint64_t sub_268562A60()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 320);

  OUTLINED_FUNCTION_0_27();
  v3 = OUTLINED_FUNCTION_17_9();
  sub_26855D25C(v3, v4, v5);
  OUTLINED_FUNCTION_4_5();

  if (!v2)
  {
    return 0;
  }

  v6 = *(v2 + 24);

  if (!sub_2684DEAF0(v6))
  {

    return 0;
  }

  v7 = OUTLINED_FUNCTION_33_3();
  sub_2684DEAFC(v7, v8, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D61C170](0, v6);
    OUTLINED_FUNCTION_4_5();

    v10 = *((v6 & 0xC000000000000001) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = *(v6 + 32);

    v10 = *(v9 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary);
  }

  return v10;
}

uint64_t sub_268562B48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v2 = OUTLINED_FUNCTION_10(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(v0 + 120);
  v8 = *(v0 + 320);

  OUTLINED_FUNCTION_0_27();
  v9 = OUTLINED_FUNCTION_17_9();
  v12 = sub_26855D25C(v9, v10, v11);

  if (v12)
  {
    v13 = *(v12 + 24);

    if (sub_2684DEAF0(v13))
    {
      v14 = OUTLINED_FUNCTION_33_3();
      sub_2684DEAFC(v14, v15, v13);
      if ((v13 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D61C170](0, v13);
        OUTLINED_FUNCTION_4_5();

        OUTLINED_FUNCTION_64_1(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_threadId);
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = *(v13 + 32);

        OUTLINED_FUNCTION_64_1(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_threadId);
      }

      v17 = sub_268568810();
      OUTLINED_FUNCTION_2_1(v6);
      if (!v18)
      {
        v12 = sub_268568800();
        sub_268568810();
        OUTLINED_FUNCTION_34_6(v17);
        (*(v20 + 8))(v6, v17);
        return v12;
      }

      sub_26853D95C(v6, &qword_280282AF0, &qword_26856A1E0);
    }

    else
    {
    }

    return 0;
  }

  return v12;
}

uint64_t sub_268562D10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v2 = OUTLINED_FUNCTION_10(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(v0 + 320);
  v8 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = *(v0 + 120);

    OUTLINED_FUNCTION_0_27();
    v11 = sub_26855D25C(v8, v9, v10);

    if (!v11)
    {
      return 0;
    }

    v8 = *(v11 + 24);

    if (!sub_2684DEAF0(v8))
    {

      return 0;
    }

    v12 = OUTLINED_FUNCTION_33_3();
    sub_2684DEAFC(v12, v13, v8);
    if ((v8 & 0xC000000000000001) == 0)
    {
      v14 = *(v8 + 32);

      OUTLINED_FUNCTION_64_1(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_threadId);

      goto LABEL_6;
    }
  }

  MEMORY[0x26D61C170](0, v8);
  OUTLINED_FUNCTION_4_5();

  OUTLINED_FUNCTION_64_1(OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_threadId);
  swift_unknownObjectRelease();
LABEL_6:
  v15 = sub_268568810();
  OUTLINED_FUNCTION_2_1(v6);
  if (v16)
  {
    sub_26853D95C(v6, &qword_280282AF0, &qword_26856A1E0);
    return 0;
  }

  v18 = sub_268568800();
  sub_268568810();
  OUTLINED_FUNCTION_34_6(v15);
  (*(v19 + 8))(v6, v15);
  return v18;
}

uint64_t sub_268562EE8(char a1)
{
  v2 = v1;
  v4 = sub_2685689F0();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v12 = __swift_project_value_buffer(v4, qword_28028B348);
  (*(v7 + 16))(v11, v12, v4);
  v13 = sub_2685689E0();
  v14 = sub_268568DC0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = a1 & 1;
    _os_log_impl(&dword_2684CA000, v13, v14, "#RNReadNotificationsFlowProvider#setIsRepeat %{BOOL}d", v15, 8u);
    OUTLINED_FUNCTION_2();
  }

  v16 = *(v7 + 8);
  v17 = OUTLINED_FUNCTION_23_7();
  v18(v17);
  *(v2 + 329) = a1 & 1;
  if ((a1 & 1) != 0 && (v19 = sub_268562D10(), v20))
  {
    v21 = v19;
    v22 = *(v2 + 112);
    *(v2 + 104) = v21;
    *(v2 + 112) = v20;
  }

  else
  {
    v23 = *(v2 + 112);
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }
}

void sub_2685630A0()
{
  v1 = *(v0 + 336);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 336) = v3;
  }
}

uint64_t sub_2685630B8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 136);
  v4 = *(v0 + 144);

  sub_2684CC8D4(v0 + 160);
  v5 = *(v0 + 296);

  return v0;
}

uint64_t sub_268563120()
{
  sub_2685630B8();

  return MEMORY[0x2821FE8D8](v0, 344, 7);
}

uint64_t sub_268563184()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 296);

  return v1;
}

uint64_t sub_2685631B8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268532A48;

  return sub_26855DD9C();
}

uint64_t sub_268563248()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268532A48;

  return sub_26855E108();
}

uint64_t sub_2685632D8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268532A48;

  return sub_26855E474();
}

uint64_t sub_268563368()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2684DB128;

  return sub_26855E7E0();
}

uint64_t sub_268563414(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_268532A48;

  return sub_2685608EC();
}

uint64_t sub_2685634BC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268532A48;

  return sub_268560D78();
}

uint64_t sub_26856354C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_268532A48;

  return sub_26855ECC4();
}

uint64_t sub_268563684(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_2684D16C0(0, &qword_280282BC8, 0x277D47610);
      result = sub_268568D10();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_2685636F0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = result + 32;
  v7 = MEMORY[0x277D84F90];
  v8 = (MEMORY[0x277D84F90] + 32);
  while (1)
  {
    while (v3)
    {
      result = v3 >> 62 ? sub_2685690A0() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2 == result)
      {
        break;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x26D61C170](v2, v3);
        v11 = result;
      }

      else
      {
        if ((v2 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v11 = *(v3 + 8 * v2 + 32);
      }

      v12 = __OFADD__(v2++, 1);
      if (v12)
      {
        goto LABEL_38;
      }

      if (!v4)
      {
        v13 = v7[3];
        if (((v13 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_42;
        }

        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
        v16 = swift_allocObject();
        v17 = (_swift_stdlib_malloc_size(v16) - 32) / 8;
        v16[2] = v15;
        v16[3] = (2 * v17) | 1;
        v18 = (v16 + 4);
        v19 = v7[3];
        v20 = v19 >> 1;
        if (v7[2])
        {
          if (v16 != v7 || v18 >= &v7[v20 + 4])
          {
            v25 = v7[3];
            v26 = v17;
            memmove(v16 + 4, v7 + 4, 8 * v20);
            v19 = v25;
            v17 = v26;
          }

          v7[2] = 0;
        }

        v8 = (v18 + 8 * v20);
        v4 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

        v7 = v16;
      }

      v12 = __OFSUB__(v4--, 1);
      if (v12)
      {
        goto LABEL_40;
      }

      *v8++ = v11;
    }

    v9 = *(v1 + 16);
    if (v5 == v9)
    {

      v22 = v7[3];
      if (v22 >= 2)
      {
        v23 = v22 >> 1;
        v12 = __OFSUB__(v23, v4);
        v24 = v23 - v4;
        if (v12)
        {
          goto LABEL_41;
        }

        v7[2] = v24;
      }

      return v7;
    }

    if (v5 >= v9)
    {
      break;
    }

    v10 = *(v6 + 8 * v5);

    v2 = 0;
    v3 = v10;
    ++v5;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_26856390C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283A90, &qword_268570D98);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  sub_268568DB0();
  v8 = 0;
  v9 = *(v4 + 44);
  *&v7[v9] = a2;
  v10 = MEMORY[0x277D84F90];
  v11 = (MEMORY[0x277D84F90] + 32);
  for (i = a2 - 1; ; --i)
  {
    if (i == -1)
    {
      v27 = 0u;
      v28 = 0u;
LABEL_21:
      sub_26853D95C(v7, &qword_280283A90, &qword_268570D98);
      result = sub_26853D95C(&v27, &qword_280282BE0, &unk_26856D8C0);
      v24 = v10[3];
      if (v24 >= 2)
      {
        v25 = v24 >> 1;
        v23 = __OFSUB__(v25, v8);
        v26 = v25 - v8;
        if (v23)
        {
          goto LABEL_27;
        }

        v10[2] = v26;
      }

      return v10;
    }

    *&v7[v9] = i;
    sub_2685674E0();
    sub_268563F5C(&qword_280283A98, 255, MEMORY[0x277CC9178]);
    sub_268568EC0();
    if (!*(&v28 + 1))
    {
      goto LABEL_21;
    }

    result = sub_2685039D0(&v27, v29);
    if (!v8)
    {
      v14 = v10[3];
      if (((v14 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283908, &qword_268570DA0);
      v17 = swift_allocObject();
      v18 = (_swift_stdlib_malloc_size(v17) - 32) / 32;
      v17[2] = v16;
      v17[3] = 2 * v18;
      v19 = (v17 + 4);
      v20 = v10[3];
      v21 = v20 >> 1;
      if (v10[2])
      {
        if (v17 != v10 || v19 >= &v10[4 * v21 + 4])
        {
          memmove(v17 + 4, v10 + 4, 32 * v21);
        }

        v10[2] = 0;
      }

      v11 = (v19 + 32 * v21);
      v8 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - (v20 >> 1);

      v10 = v17;
    }

    v23 = __OFSUB__(v8--, 1);
    if (v23)
    {
      break;
    }

    sub_2685039D0(v29, v11);
    v11 += 2;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_268563B7C()
{
  OUTLINED_FUNCTION_20_2();
  v1 = sub_268567FF0();
  OUTLINED_FUNCTION_2_4(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  OUTLINED_FUNCTION_10_15(*(v4 + 64));
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_11_16(v5);

  return sub_268560620(v6, v7, v8);
}

uint64_t sub_268563C58()
{
  OUTLINED_FUNCTION_20_2();
  v1 = sub_268567FF0();
  OUTLINED_FUNCTION_2_4(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  OUTLINED_FUNCTION_10_15(*(v4 + 64));
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_11_16(v5);

  return sub_268560570();
}

uint64_t objectdestroyTm()
{
  v1 = sub_268567FF0();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_268563E10()
{
  OUTLINED_FUNCTION_20_2();
  v1 = sub_268567FF0();
  OUTLINED_FUNCTION_2_4(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  OUTLINED_FUNCTION_10_15(*(v4 + 64));
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_11_16(v5);

  return sub_26856083C();
}

uint64_t sub_268563EEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283AC8, qword_268570DF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268563F5C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void OUTLINED_FUNCTION_5_24()
{
  v3 = v1[19];
  v4 = v1[20];
  v5 = v1[17];
  v6 = v1[18];
  v8 = v1[15];
  v7 = v1[16];
  v9 = v1[13];
  v11 = v1[14];
  v12 = v1[12];
  v14 = v1[11];
  v15 = v1[10];
  v16 = v1[9];
  v10 = v1[7];
  v13 = v1[8];
}

uint64_t OUTLINED_FUNCTION_8_20(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(v2, a2);
  v5 = *(v4 + 16);
  return v3;
}

BOOL OUTLINED_FUNCTION_15_10(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_17_12()
{

  return sub_268567ED0();
}

void *OUTLINED_FUNCTION_21_7()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = v1[12];
  return __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
}

uint64_t OUTLINED_FUNCTION_29_6()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  return sub_268567A20();
}

uint64_t OUTLINED_FUNCTION_33_5()
{

  return sub_268567850();
}

uint64_t OUTLINED_FUNCTION_34_8()
{

  return sub_2685679A0();
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return sub_268567B00();
}

uint64_t OUTLINED_FUNCTION_52_3(int a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10)
{

  return sub_2684EBB74(a1, a2, a3, a4, a5, 0, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_64_1@<X0>(uint64_t a1@<X8>)
{

  return sub_2684D4298(v1 + a1, v2);
}

id sub_26856427C(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = a1[4];
  v4 = a1[5];
  v5 = v2;

  OUTLINED_FUNCTION_5_25();
  v6 = OUTLINED_FUNCTION_4_28();
  OUTLINED_FUNCTION_3_28(v6, sel_setNotificationId_);

  v7 = a1[2];
  v8 = a1[3];

  OUTLINED_FUNCTION_5_25();
  v9 = OUTLINED_FUNCTION_4_28();
  OUTLINED_FUNCTION_3_28(v9, sel_setApplicationId_);

  v11 = a1[7];
  if (v11)
  {
    v12 = a1[6];
    v13 = a1[7];

    OUTLINED_FUNCTION_5_25();
    v10 = OUTLINED_FUNCTION_4_28();
  }

  else
  {
    v12 = 0;
  }

  OUTLINED_FUNCTION_3_28(v10, sel_setThreadIdentifier_);

  v14 = sub_268567570();
  OUTLINED_FUNCTION_3_28(v14, sel_setDate_);

  OUTLINED_FUNCTION_2_30(OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_title);
  if (v11)
  {
    OUTLINED_FUNCTION_8_21(v16);
    OUTLINED_FUNCTION_5_25();
    v15 = OUTLINED_FUNCTION_4_28();
  }

  else
  {
    v14 = 0;
  }

  OUTLINED_FUNCTION_3_28(v15, sel_setTitle_);

  OUTLINED_FUNCTION_2_30(OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_subtitle);
  if (v11)
  {
    OUTLINED_FUNCTION_8_21(v18);
    OUTLINED_FUNCTION_5_25();
    v17 = OUTLINED_FUNCTION_4_28();
  }

  else
  {
    v14 = 0;
  }

  OUTLINED_FUNCTION_3_28(v17, sel_setSubtitle_);

  OUTLINED_FUNCTION_2_30(OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_body);
  if (v11)
  {
    OUTLINED_FUNCTION_8_21(v20);
    OUTLINED_FUNCTION_5_25();
    v19 = OUTLINED_FUNCTION_4_28();
  }

  else
  {
    v14 = 0;
  }

  OUTLINED_FUNCTION_3_28(v19, sel_setBody_);

  v21 = *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isPreviewRestricted);
  sub_2684D16C0(0, &qword_280282BA8, 0x277CCABB0);
  v22 = sub_268568E60();
  OUTLINED_FUNCTION_3_28(v22, sel_setPreviewRestricted_);

  return v5;
}

id sub_268564474(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = a1[4];
  v4 = a1[5];
  v5 = v2;

  OUTLINED_FUNCTION_5_25();
  v6 = OUTLINED_FUNCTION_4_28();
  OUTLINED_FUNCTION_3_28(v6, sel_setNotificationId_);

  v7 = a1[2];
  v8 = a1[3];

  OUTLINED_FUNCTION_5_25();
  v9 = OUTLINED_FUNCTION_4_28();
  OUTLINED_FUNCTION_3_28(v9, sel_setApplicationId_);

  OUTLINED_FUNCTION_2_30(OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_threadIdentifier);
  if (v8)
  {
    OUTLINED_FUNCTION_8_21(v11);
    OUTLINED_FUNCTION_5_25();
    v10 = OUTLINED_FUNCTION_4_28();
  }

  else
  {
    v7 = 0;
  }

  OUTLINED_FUNCTION_3_28(v10, sel_setThreadIdentifier_);

  v12 = sub_268567570();
  OUTLINED_FUNCTION_3_28(v12, sel_setDate_);

  OUTLINED_FUNCTION_2_30(OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title);
  if (v8)
  {
    OUTLINED_FUNCTION_8_21(v14);
    OUTLINED_FUNCTION_5_25();
    v13 = OUTLINED_FUNCTION_4_28();
  }

  else
  {
    v12 = 0;
  }

  OUTLINED_FUNCTION_3_28(v13, sel_setTitle_);

  OUTLINED_FUNCTION_2_30(OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle);
  if (v8)
  {
    OUTLINED_FUNCTION_8_21(v16);
    OUTLINED_FUNCTION_5_25();
    v15 = OUTLINED_FUNCTION_4_28();
  }

  else
  {
    v12 = 0;
  }

  OUTLINED_FUNCTION_3_28(v15, sel_setSubtitle_);

  OUTLINED_FUNCTION_2_30(OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body);
  if (v8)
  {
    OUTLINED_FUNCTION_8_21(v18);
    OUTLINED_FUNCTION_5_25();
    v17 = OUTLINED_FUNCTION_4_28();
  }

  else
  {
    v12 = 0;
  }

  OUTLINED_FUNCTION_3_28(v17, sel_setBody_);

  return v5;
}

uint64_t sub_268564624()
{
  result = sub_2684E1104(v0, &selRef_applicationId);
  if (v2)
  {
    sub_2684D166C();
    v3 = sub_268568F20();

    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2685646B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_268554614(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_notificationId, v17, &qword_280282AF0, &qword_26856A1E0);
  v19 = sub_268568810();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v19);
  v21 = v18;
  if (EnumTagSinglePayload == 1)
  {
    v22 = sub_2684EB7C8(v17, &qword_280282AF0, &qword_26856A1E0);
    v23 = 0;
  }

  else
  {
    sub_268568800();
    OUTLINED_FUNCTION_0_28();
    (*(v24 + 8))(v17, v19);
    v23 = sub_268568B10();
  }

  OUTLINED_FUNCTION_9_22(v22, sel_setNotificationId_);

  sub_268554614(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_appId, v15, &qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_8_7(v15);
  if (v25)
  {
    v28 = sub_2684EB7C8(v15, &qword_280282AF0, &qword_26856A1E0);
    v27 = 0;
  }

  else
  {
    sub_268568800();
    OUTLINED_FUNCTION_0_28();
    (*(v26 + 8))(v15, v19);
    v27 = sub_268568B10();
  }

  OUTLINED_FUNCTION_9_22(v28, sel_setApplicationId_);

  sub_268554614(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_title, v12, &qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_8_7(v12);
  if (v25)
  {
    v31 = sub_2684EB7C8(v12, &qword_280282AF0, &qword_26856A1E0);
    v30 = 0;
  }

  else
  {
    sub_268568800();
    OUTLINED_FUNCTION_0_28();
    (*(v29 + 8))(v12, v19);
    v30 = sub_268568B10();
  }

  OUTLINED_FUNCTION_9_22(v31, sel_setTitle_);

  v32 = OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_subtitle;
  sub_268554614(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_subtitle, v9, &qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_8_7(v9);
  if (v25)
  {
    v35 = sub_2684EB7C8(v9, &qword_280282AF0, &qword_26856A1E0);
    v34 = 0;
  }

  else
  {
    sub_268568800();
    OUTLINED_FUNCTION_0_28();
    (*(v33 + 8))(v9, v19);
    v34 = sub_268568B10();
  }

  OUTLINED_FUNCTION_9_22(v35, sel_setSubtitle_);

  sub_268554614(a1 + v32, v6, &qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_8_7(v6);
  if (v25)
  {
    v38 = sub_2684EB7C8(v6, &qword_280282AF0, &qword_26856A1E0);
    v37 = 0;
  }

  else
  {
    sub_268568800();
    OUTLINED_FUNCTION_0_28();
    (*(v36 + 8))(v6, v19);
    v37 = sub_268568B10();
  }

  OUTLINED_FUNCTION_9_22(v38, sel_setBody_);

  return v21;
}

id sub_268564B9C(void *a1)
{
  v1 = a1;
  SANotificationOnDeviceObject.description.getter();

  v2 = sub_268568B10();

  return v2;
}

uint64_t SANotificationOnDeviceObject.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v49 - v6;
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  sub_268568FD0();
  MEMORY[0x26D61BDA0](0xD000000000000010, 0x80000002685740C0);
  v8 = sub_2684E1104(v0, &selRef_notificationId);
  v10 = OUTLINED_FUNCTION_1_29(v8, v9);
  if (v12)
  {
    v13 = 0xE000000000000000;
  }

  else
  {
    v13 = v11;
  }

  MEMORY[0x26D61BDA0](v10, v13);

  MEMORY[0x26D61BDA0](0xD000000000000011, 0x80000002685740E0);
  v14 = sub_2684E1104(v0, &selRef_applicationId);
  v16 = OUTLINED_FUNCTION_1_29(v14, v15);
  if (v12)
  {
    v18 = 0xE000000000000000;
  }

  else
  {
    v18 = v17;
  }

  MEMORY[0x26D61BDA0](v16, v18);

  MEMORY[0x26D61BDA0](0x646165726854202CLL, 0xEC000000203A6449);
  v19 = sub_2684E1104(v0, &selRef_threadIdentifier);
  v21 = OUTLINED_FUNCTION_1_29(v19, v20);
  if (v12)
  {
    v23 = 0xE000000000000000;
  }

  else
  {
    v23 = v22;
  }

  MEMORY[0x26D61BDA0](v21, v23);

  MEMORY[0x26D61BDA0](0x203A65746144202CLL, 0xE800000000000000);
  v24 = [v0 date];
  if (v24)
  {
    v25 = v24;
    sub_2685675C0();

    v26 = sub_2685675E0();
    v27 = 0;
  }

  else
  {
    v26 = sub_2685675E0();
    v27 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v27, 1, v26);
  sub_268569070();
  sub_2684EB7C8(v7, &qword_280282D40, &qword_26856B330);
  MEMORY[0x26D61BDA0](0x3A656C746954202CLL, 0xE900000000000020);
  v28 = sub_2684E1104(v1, &selRef_title);
  v30 = OUTLINED_FUNCTION_1_29(v28, v29);
  if (v12)
  {
    v32 = 0xE000000000000000;
  }

  else
  {
    v32 = v31;
  }

  MEMORY[0x26D61BDA0](v30, v32);

  MEMORY[0x26D61BDA0](0x746974627553202CLL, 0xEC000000203A656CLL);
  v33 = sub_2684E1104(v1, &selRef_subtitle);
  v35 = OUTLINED_FUNCTION_1_29(v33, v34);
  if (v12)
  {
    v37 = 0xE000000000000000;
  }

  else
  {
    v37 = v36;
  }

  MEMORY[0x26D61BDA0](v35, v37);

  MEMORY[0x26D61BDA0](0x203A79646F42202CLL, 0xE800000000000000);
  v38 = sub_2684E1104(v1, &selRef_body);
  v40 = OUTLINED_FUNCTION_1_29(v38, v39);
  if (v12)
  {
    v42 = 0xE000000000000000;
  }

  else
  {
    v42 = v41;
  }

  MEMORY[0x26D61BDA0](v40, v42);

  MEMORY[0x26D61BDA0](0x656372756F53202CLL, 0xEA0000000000203ALL);
  v43 = sub_2684E1104(v1, &selRef_source);
  v45 = OUTLINED_FUNCTION_1_29(v43, v44);
  if (v12)
  {
    v47 = 0xE000000000000000;
  }

  else
  {
    v47 = v46;
  }

  MEMORY[0x26D61BDA0](v45, v47);

  return v49[0];
}

uint64_t SANotificationOnDeviceObject.isEqual(_:)(uint64_t a1)
{
  v3 = sub_2685689F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268554614(a1, v23, &qword_280282BE0, &unk_26856D8C0);
  if (!v24)
  {
    sub_2684EB7C8(v23, &qword_280282BE0, &unk_26856D8C0);
    goto LABEL_11;
  }

  sub_2684D16C0(0, &qword_280282BC8, 0x277D47610);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v3, qword_28028B348);
    (*(v4 + 16))(v7, v17, v3);
    v18 = sub_2685689E0();
    v19 = sub_268568DC0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2684CA000, v18, v19, "SANotificationOnDeviceObject isEqual | unable to convert object to SANotificationOnDeviceObject", v20, 2u);
      MEMORY[0x26D61CB30](v20, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    goto LABEL_16;
  }

  v8 = v22[1];
  v9 = sub_268565290(v8);
  v11 = v10;
  v12 = sub_2684E1104(v1, &selRef_notificationId);
  v14 = v13;
  if (!v11)
  {

    if (!v14)
    {
LABEL_23:
      v16 = 1;
      return v16 & 1;
    }

    goto LABEL_21;
  }

  if (!v13)
  {

LABEL_21:

LABEL_16:
    v16 = 0;
    return v16 & 1;
  }

  if (v9 == v12 && v11 == v13)
  {

    goto LABEL_23;
  }

  v16 = sub_2685691C0();

  return v16 & 1;
}

uint64_t sub_268565208(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_268568F30();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = SANotificationOnDeviceObject.isEqual(_:)(v8);

  sub_2684EB7C8(v8, &qword_280282BE0, &unk_26856D8C0);
  return v6 & 1;
}

uint64_t sub_268565290(void *a1)
{
  v2 = [a1 notificationId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268568B20();

  return v3;
}

uint64_t OUTLINED_FUNCTION_1_29(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

id OUTLINED_FUNCTION_3_28(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_4_28()
{
}

uint64_t OUTLINED_FUNCTION_5_25()
{

  return sub_268568B10();
}

uint64_t OUTLINED_FUNCTION_8_21@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
}

id OUTLINED_FUNCTION_9_22(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t type metadata accessor for FollowupNotificationsCATs()
{
  result = qword_280283AD8;
  if (!qword_280283AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268565474(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2685654C8(a1, a2);
}

uint64_t sub_2685654C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2685688F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282EC8, &unk_26856D010);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2684F3D80(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_268568700();
  (*(v5 + 8))(a2, v4);
  sub_2684F3DF0(a1);
  return v12;
}

uint64_t sub_26856563C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802833D8, &unk_268570E60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  if (!*(v0 + *(type metadata accessor for NotificationNLv4Intent() + 20)))
  {
    goto LABEL_7;
  }

  if (sub_268568540() == 0x746165706572 && v5 == 0xE600000000000000)
  {

    goto LABEL_10;
  }

  v7 = sub_2685691C0();

  if (v7)
  {
LABEL_10:
    v9 = 1;
    return v9 & 1;
  }

LABEL_7:
  sub_268568550();
  sub_26850C994(v4);
  v8 = sub_268568190();
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    sub_2684D199C(v4, &qword_2802833D8, &unk_268570E60);
    v9 = 0;
  }

  else
  {
    v9 = sub_268568170();
    (*(*(v8 - 8) + 8))(v4, v8);
  }

  return v9 & 1;
}

uint64_t type metadata accessor for NotificationNLv4Intent()
{
  result = qword_280283AF8;
  if (!qword_280283AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268565838(uint64_t (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802833D8, &unk_268570E60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_268568550();
  sub_26850C994(v5);
  v6 = sub_268568190();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2684D199C(v5, &qword_2802833D8, &unk_268570E60);
    v7 = 0;
  }

  else
  {
    v7 = a1();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  return v7 & 1;
}

uint64_t sub_26856596C()
{
  v1 = *(v0 + *(type metadata accessor for NotificationNLv4Intent() + 20));
  sub_2685683B0();
  if (v22)
  {
    v2 = sub_2685684A0();
    OUTLINED_FUNCTION_0_29(v2, v3, v4, v5, v6, v7, v8, v9, v19, v20);
    if (swift_dynamicCast())
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_2684D199C(v21, &qword_280282BE0, &unk_26856D8C0);
  }

  sub_2685683B0();
  if (v22)
  {
    v10 = sub_2685684B0();
    OUTLINED_FUNCTION_0_29(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20);
    if (swift_dynamicCast())
    {
LABEL_7:

      return 1;
    }
  }

  else
  {
    sub_2684D199C(v21, &qword_280282BE0, &unk_26856D8C0);
  }

  return 0;
}

uint64_t sub_268565A50()
{
  v1 = *(v0 + *(type metadata accessor for NotificationNLv4Intent() + 20));
  OUTLINED_FUNCTION_5_26();
  if (v43)
  {
    v2 = sub_268568490();
    OUTLINED_FUNCTION_0_29(v2, v3, v4, v5, v6, v7, v8, v9, v40, v41);
    if (OUTLINED_FUNCTION_4_29())
    {

      sub_2685683F0();

      if (v42[0])
      {

        v10 = sub_268568350();

        if (v10)
        {
          goto LABEL_28;
        }
      }
    }
  }

  else
  {
    sub_2684D199C(v42, &qword_280282BE0, &unk_26856D8C0);
  }

  OUTLINED_FUNCTION_5_26();
  if (v43)
  {
    v11 = sub_2685683D0();
    OUTLINED_FUNCTION_0_29(v11, v12, v13, v14, v15, v16, v17, v18, v40, v41);
    if (OUTLINED_FUNCTION_4_29())
    {

      sub_2685683F0();

      if (v42[0])
      {

        v19 = sub_268568350();

        if (v19)
        {
          goto LABEL_28;
        }
      }
    }
  }

  else
  {
    sub_2684D199C(v42, &qword_280282BE0, &unk_26856D8C0);
  }

  OUTLINED_FUNCTION_5_26();
  if (v43)
  {
    v20 = sub_268568510();
    OUTLINED_FUNCTION_0_29(v20, v21, v22, v23, v24, v25, v26, v27, v40, v41);
    if (OUTLINED_FUNCTION_4_29())
    {

      sub_2685683F0();

      if (v42[0])
      {

        v28 = sub_268568350();

        if (v28)
        {
          goto LABEL_28;
        }
      }
    }
  }

  else
  {
    sub_2684D199C(v42, &qword_280282BE0, &unk_26856D8C0);
  }

  OUTLINED_FUNCTION_5_26();
  if (!v43)
  {
    sub_2684D199C(v42, &qword_280282BE0, &unk_26856D8C0);
    return 0;
  }

  v29 = sub_2685684E0();
  OUTLINED_FUNCTION_0_29(v29, v30, v31, v32, v33, v34, v35, v36, v40, v41);
  if ((OUTLINED_FUNCTION_4_29() & 1) == 0)
  {
    return 0;
  }

  sub_268568260();

  if (!v42[0])
  {
    goto LABEL_32;
  }

  v37 = sub_268568350();

  if (!v37)
  {

LABEL_32:

    return 0;
  }

LABEL_28:
  v38 = sub_26856654C();

  return v38;
}

BOOL sub_268565D84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283AE8, &qword_268570E70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v27 - v3;
  v5 = sub_268568460();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v27 - v14;
  v16 = *(v0 + *(type metadata accessor for NotificationNLv4Intent() + 20));
  sub_2685683B0();
  sub_268566C54(v29, v27);
  if (v28)
  {
    sub_268568510();
    if (OUTLINED_FUNCTION_1_30())
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_2684D199C(v27, &qword_280282BE0, &unk_26856D8C0);
  }

  sub_268566C54(v29, v27);
  if (!v28)
  {
LABEL_13:
    v18 = &qword_280282BE0;
    v19 = &unk_26856D8C0;
    v20 = v27;
    goto LABEL_14;
  }

  sub_268568490();
  if ((OUTLINED_FUNCTION_1_30() & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:

  sub_268566C54(v29, v27);
  if (!v28)
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283AF0, qword_268570E78);
  if ((OUTLINED_FUNCTION_1_30() & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_2685683F0();
  if (!v27[0])
  {
    goto LABEL_29;
  }

  v17 = sub_268568340();

  if (!v17)
  {

LABEL_29:

    goto LABEL_15;
  }

  sub_268568450();

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    v18 = &qword_280283AE8;
    v19 = &qword_268570E70;
    v20 = v4;
LABEL_14:
    sub_2684D199C(v20, v18, v19);
    goto LABEL_15;
  }

  v25 = *(v8 + 32);
  v25(v15, v4, v5);
  v25(v13, v15, v5);
  if ((*(v8 + 88))(v13, v5) != *MEMORY[0x277D5EBE8])
  {
    (*(v8 + 8))(v13, v5);
LABEL_15:
    sub_2685683B0();
    if (v28)
    {
      sub_268568490();
      if (OUTLINED_FUNCTION_1_30())
      {

        sub_2685683F0();

        if (v27[0])
        {
          v21 = sub_268568470();
          if (v21)
          {
            v22 = sub_2684DEAF0(v21);

            sub_2684D199C(v29, &qword_280282BE0, &unk_26856D8C0);
            return v22 != 0;
          }

          sub_2684D199C(v29, &qword_280282BE0, &unk_26856D8C0);
        }

        else
        {
          sub_2684D199C(v29, &qword_280282BE0, &unk_26856D8C0);
        }

        return 0;
      }

      v24 = v29;
    }

    else
    {
      sub_2684D199C(v29, &qword_280282BE0, &unk_26856D8C0);
      v24 = v27;
    }

    sub_2684D199C(v24, &qword_280282BE0, &unk_26856D8C0);
    return 0;
  }

  sub_2684D199C(v29, &qword_280282BE0, &unk_26856D8C0);
  (*(v8 + 8))(v13, v5);
  return 1;
}

uint64_t sub_26856620C()
{
  v1 = sub_2685689F0();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = *(v0 + *(type metadata accessor for NotificationNLv4Intent() + 20));
  sub_2685683B0();
  if (!v24[3])
  {
    sub_2684D199C(v24, &qword_280282BE0, &unk_26856D8C0);
    goto LABEL_6;
  }

  sub_2685683D0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v14 = __swift_project_value_buffer(v1, qword_28028B348);
    (*(v4 + 16))(v9, v14, v1);
    v15 = sub_2685689E0();
    v16 = sub_268568DC0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2684CA000, v15, v16, "NotificationNLv4Intent getEntity | unable covert task to UsoTask_read_uso_NoEntity", v17, 2u);
      MEMORY[0x26D61CB30](v17, -1, -1);
    }

    (*(v4 + 8))(v9, v1);
    return 0;
  }

  sub_2685683F0();

  if (!v24[0])
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v19 = __swift_project_value_buffer(v1, qword_28028B348);
    (*(v4 + 16))(v11, v19, v1);
    v20 = sub_2685689E0();
    v21 = sub_268568DC0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2684CA000, v20, v21, "NotificationNLv4Intent getEntity | unable to obtain reference", v22, 2u);
      MEMORY[0x26D61CB30](v22, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v11, v1);
    return 0;
  }

  v13 = sub_2685682B0();

  return v13;
}

uint64_t sub_26856654C()
{
  v63 = sub_268568390();
  v0 = *(v63 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2685689F0();
  v3 = *(v74 - 8);
  v4 = *(v3 + 8);
  v5 = MEMORY[0x28223BE20](v74);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v56 - v8;
  v10 = sub_2685682F0();
  v71 = *(v10 - 8);
  v11 = *(v71 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v58 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  MEMORY[0x28223BE20](v14);
  v72 = &v56 - v17;
  v18 = sub_268568360();
  if (!v18)
  {
    if (qword_280282960 == -1)
    {
LABEL_19:
      v49 = v74;
      v50 = __swift_project_value_buffer(v74, qword_28028B348);
      (*(v3 + 2))(v7, v50, v49);
      v51 = sub_2685689E0();
      v52 = sub_268568DC0();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_2684CA000, v51, v52, "NotificationNLv4Intent getTargetAppId | unable to get uso identifiers", v53, 2u);
        MEMORY[0x26D61CB30](v53, -1, -1);
      }

      (*(v3 + 1))(v7, v74);
      return 0;
    }

LABEL_27:
    swift_once();
    goto LABEL_19;
  }

  v20 = v18;
  v69 = *(v18 + 16);
  if (v69)
  {
    v7 = 0;
    v68 = v18 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v73 = (v71 + 8);
    v66 = (v3 + 8);
    v67 = (v3 + 16);
    v61 = *MEMORY[0x277D5E700];
    v59 = (v0 + 8);
    v60 = (v0 + 104);
    *&v19 = 136315138;
    v56 = v19;
    v70 = v9;
    v3 = v72;
    v64 = v71 + 16;
    v65 = v16;
    v57 = v18;
    while (v7 < *(v20 + 16))
    {
      v21 = *(v71 + 16);
      v21(v3, v68 + *(v71 + 72) * v7, v10);
      if (qword_280282960 != -1)
      {
        swift_once();
      }

      v22 = v74;
      v23 = __swift_project_value_buffer(v74, qword_28028B348);
      (*v67)(v9, v23, v22);
      v21(v16, v3, v10);
      v24 = sub_2685689E0();
      v25 = sub_268568DD0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = v10;
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v75 = v28;
        *v27 = v56;
        v21(v58, v16, v26);
        v29 = sub_268568B70();
        v31 = v30;
        v32 = *v73;
        (*v73)(v16, v26);
        v33 = sub_2684EABEC(v29, v31, &v75);

        *(v27 + 4) = v33;
        v34 = v32;
        v35 = v74;
        v9 = v70;
        _os_log_impl(&dword_2684CA000, v24, v25, "NotificationNLv4Intent identifier | %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        v36 = v28;
        v3 = v72;
        MEMORY[0x26D61CB30](v36, -1, -1);
        v37 = v27;
        v10 = v26;
        v20 = v57;
        MEMORY[0x26D61CB30](v37, -1, -1);

        (*v66)(v9, v35);
      }

      else
      {

        v34 = *v73;
        (*v73)(v16, v10);
        (*v66)(v9, v74);
      }

      v38 = sub_2685682E0();
      if (v39)
      {
        v40 = v38;
        v41 = v39;
        v43 = v62;
        v42 = v63;
        (*v60)(v62, v61, v63);
        v44 = sub_268568380();
        v46 = v45;
        (*v59)(v43, v42);
        if (v40 == v44 && v41 == v46)
        {

          v3 = v72;
LABEL_24:

          v54 = sub_2685682D0();
          v34(v3, v10);
          return v54;
        }

        v48 = sub_2685691C0();

        v9 = v70;
        v3 = v72;
        if (v48)
        {
          goto LABEL_24;
        }
      }

      ++v7;
      v34(v3, v10);
      v16 = v65;
      if (v69 == v7)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_17:

  return 0;
}

uint64_t sub_268566C54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BE0, &unk_26856D8C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268566CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2685680B0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_268566DA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2685680B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_268566E4C()
{
  sub_2685680B0();
  if (v0 <= 0x3F)
  {
    sub_268566ED0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_268566ED0()
{
  if (!qword_280283B08)
  {
    sub_268568550();
    v0 = sub_268568EB0();
    if (!v1)
    {
      atomic_store(v0, &qword_280283B08);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_30()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_29()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_26()
{

  return sub_2685683B0();
}

void sub_268566F8C(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
      OUTLINED_FUNCTION_0_30();
      break;
    case 2:
    case 5:
    case 7:
    case 8:
    case 9:
    case 10:
      return;
    case 6:
      OUTLINED_FUNCTION_1_31(17);
      break;
    default:
      OUTLINED_FUNCTION_2_31(17);
      break;
  }
}

void sub_2685670F4(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_2_31(21);
      break;
    case 2:
    case 3:
    case 6:
    case 7:
    case 8:
      return;
    case 5:
      OUTLINED_FUNCTION_1_31(21);
      break;
    default:
      OUTLINED_FUNCTION_0_30();
      break;
  }
}

void sub_26856722C(char a1)
{
  switch(a1)
  {
    case 3:
    case 4:
    case 5:
      OUTLINED_FUNCTION_0_30();
      break;
    default:
      return;
  }
}