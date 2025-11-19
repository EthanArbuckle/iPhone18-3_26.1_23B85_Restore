uint64_t sub_2688F1268()
{
  v60 = v0;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[8];
  v5 = __swift_project_value_buffer(v2, qword_2802CDA10);
  v57 = *(v3 + 16);
  v57(v1, v5, v2);

  v6 = sub_268B37A34();
  v7 = sub_268B37EC4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[22];
  if (v8)
  {
    v54 = v0[21];
    v55 = v5;
    v12 = v0[19];
    v13 = v0[20];
    v52 = v0[18];
    v53 = v0[24];
    v14 = v0[8];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v59 = v16;
    *v15 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v17 = sub_268B36784();
    v19 = v18;
    v20 = v13;
    v5 = v55;
    (*(v12 + 8))(v20, v52);
    v21 = sub_26892CDB8(v17, v19, &v59);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_2688BB000, v6, v7, "DeviceDisambiguationStrategy.provideOutput with responseMode = %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();

    v22 = *(v11 + 8);
    v22(v53, v54);
  }

  else
  {

    v22 = *(v11 + 8);
    v22(v9, v10);
  }

  v23 = v0[23];
  v24 = v0[21];
  v25 = v0[17];
  v26 = v0[14];
  v27 = v0[10];
  v56 = *(v0 + 4);
  sub_268B34D64();
  v28 = swift_task_alloc();
  v28[1] = vextq_s8(v56, v56, 8uLL);
  v28[2].i64[0] = v27;
  sub_268B352C4();

  v57(v23, v5, v24);
  v29 = sub_268B37A34();
  v30 = sub_268B37F04();
  if (os_log_type_enabled(v29, v30))
  {
    OUTLINED_FUNCTION_64();
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2688BB000, v29, v30, "DeviceDisambiguationStrategy.provideOutput creating confirmationViewOutput using RF 2.0", v31, 2u);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v33 = v0[22];
  v32 = v0[23];
  v34 = v0[21];
  v36 = v0[12];
  v35 = v0[13];
  v37 = v0[10];
  v38 = v0[11];

  v22(v32, v34);
  v39 = sub_268B35094();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v0[25] = sub_268B35084();
  v42 = sub_268B36A54();
  v0[5] = v42;
  v0[6] = sub_2688F2004(&qword_2802A6470, MEMORY[0x277D55560]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v42 - 8) + 16))(boxed_opaque_existential_1, v38, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v44 = swift_allocObject();
  v0[26] = v44;
  *(v44 + 16) = xmmword_268B3BBA0;
  sub_2688F1FA4(v37, v35, &unk_2802A56E0, &unk_268B3CDF0);
  *(v44 + 32) = *(v35 + *(v36 + 48));
  v45 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v45);
  (*(v46 + 8))(v35);
  v47 = *(MEMORY[0x277D5BD38] + 4);
  v58 = (*MEMORY[0x277D5BD38] + MEMORY[0x277D5BD38]);
  v48 = swift_task_alloc();
  v0[27] = v48;
  *v48 = v0;
  v48[1] = sub_2688F173C;
  v49 = v0[17];
  v50 = v0[7];

  return v58(v50, v0 + 2, v44, v49);
}

uint64_t sub_2688F173C()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v6 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  return MEMORY[0x2822009F8](sub_2688F1880, 0, 0);
}

uint64_t sub_2688F1880()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[14];
  v5 = v0[13];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2688F1944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v26 = sub_268B34E54();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = sub_268B367A4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v25 - v18;
  v20 = sub_268B35044();
  (*(*(v20 - 8) + 16))(v19, a2, v20);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v20);
  sub_268B35314();
  sub_268B35344();
  sub_268B35304();
  sub_268B36714();
  sub_268B36B14();

  sub_268B352D4();
  sub_2688F1FA4(v25, v13, &unk_2802A56E0, &unk_268B3CDF0);
  v21 = *&v13[*(v10 + 56)];
  v22 = [v21 catId];

  sub_268B37BF4();
  sub_268B352F4();
  v23 = sub_268B350F4();
  (*(*(v23 - 8) + 8))(v13, v23);
  (*(v5 + 104))(v8, *MEMORY[0x277D5BC50], v26);
  return sub_268B352E4();
}

id sub_2688F1C54(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  sub_2688EF2C0(a1, v34);
  a2(0);
  if (!OUTLINED_FUNCTION_10_2())
  {
    sub_2688EF2C0(a1, v34);
    sub_2688F28C8();
    if (OUTLINED_FUNCTION_10_2())
    {
      v16 = v33;
      v17 = INTypedObjectWithCustomObject();
      if (v17)
      {
        v15 = v17;

        return v15;
      }

      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      __swift_project_value_buffer(v4, qword_2802CDA10);
      OUTLINED_FUNCTION_6_2();
      v22(v12);
      v23 = sub_268B37A34();
      v24 = sub_268B37EE4();
      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_64();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_8_2();
        _os_log_impl(v25, v26, v27, v28, v29, v30);
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      else
      {
      }

      (*(v7 + 8))(v12, v4);
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      __swift_project_value_buffer(v4, qword_2802CDA10);
      OUTLINED_FUNCTION_6_2();
      v18(v14);
      v19 = sub_268B37A34();
      v20 = sub_268B37EE4();
      if (os_log_type_enabled(v19, v20))
      {
        OUTLINED_FUNCTION_64();
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_2688BB000, v19, v20, "Unexpected disambiguation item type", v21, 2u);
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      (*(v7 + 8))(v14, v4);
    }

    return 0;
  }

  return v33;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2688F1FA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2688F2004(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2688F204C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_268B3C470;
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

uint64_t sub_2688F20B0(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = v13 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_2688F204C(0, v6, v8);
    v9 = sub_2688F2308(v8, v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_2688F2278(v12, v6, a2, a1);

    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_2688F2278(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_2688F2308(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_2688F2308(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v54 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v29 = 0;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a3 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
LABEL_28:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v53 = (v32 - 1) & v32;
LABEL_35:
      v51 = v35 | (v29 << 6);
      v38 = (*(v5 + 48) + 16 * v51);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(v4 + 40);
      sub_268B38514();

      sub_268B37C54();
      v42 = sub_268B38544();
      v43 = ~(-1 << *(v4 + 32));
      do
      {
        v44 = v42 & v43;
        if (((*(v34 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {

          v4 = a4;
          v32 = v53;
          goto LABEL_28;
        }

        v45 = (*(a4 + 48) + 16 * v44);
        if (*v45 == v40 && v45[1] == v39)
        {
          break;
        }

        v47 = sub_268B38444();
        v42 = v44 + 1;
      }

      while ((v47 & 1) == 0);

      *(v54 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v28 = __OFADD__(v55++, 1);
      v4 = a4;
      v32 = v53;
      if (v28)
      {
        goto LABEL_50;
      }
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
LABEL_46:

        return sub_2688F26AC(v54, a2, v55, v5);
      }

      v37 = *(v5 + 56 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v53 = (v37 - 1) & v37;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v48 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v50 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v52 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      sub_268B38514();

      sub_268B37C54();
      v19 = sub_268B38544();
      v20 = v5;
      v21 = ~(-1 << *(v5 + 32));
      do
      {
        v22 = v19 & v21;
        v23 = (v19 & v21) >> 6;
        v24 = 1 << (v19 & v21);
        if ((v24 & *(v11 + 8 * v23)) == 0)
        {

          v5 = v20;
          v4 = a4;
          v10 = v50;
          v9 = v52;
          goto LABEL_6;
        }

        v25 = (*(v20 + 48) + 16 * v22);
        if (*v25 == v17 && v25[1] == v16)
        {
          break;
        }

        v27 = sub_268B38444();
        v19 = v22 + 1;
      }

      while ((v27 & 1) == 0);

      v9 = v52;
      v54[v23] |= v24;
      v28 = __OFADD__(v55++, 1);
      v5 = v20;
      v4 = a4;
      v10 = v50;
      if (v28)
      {
        goto LABEL_49;
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

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v48 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2688F26AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B00, qword_268B3C520);
  result = sub_268B38194();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_268B38514();

    sub_268B37C54();
    result = sub_268B38544();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_2688F28C8()
{
  result = qword_2802A5B08;
  if (!qword_2802A5B08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A5B08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_12_2(uint64_t a1)
{

  return sub_2688C058C(a1, v1, v2);
}

uint64_t sub_2688F29A4(uint64_t a1)
{
  v49 = a1;
  v1 = sub_268B35494();
  v2 = OUTLINED_FUNCTION_1(v1);
  v47 = v3;
  v48 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42 - v10;
  v46 = type metadata accessor for MediaPlayerIntent();
  v12 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v43 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268B37A54();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v44 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v42 = &v42 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v42 - v24;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v45 = *(v17 + 16);
  v45(v25, v26, v14);
  v27 = sub_268B37A34();
  v28 = sub_268B37ED4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "SetPlaybackSpeed.shouldHandle() called", v29, 2u);
    MEMORY[0x26D6266E0](v29, -1, -1);
  }

  v30 = *(v17 + 8);
  v30(v25, v14);
  (*(v47 + 16))(v7, v49, v48);
  sub_26893BA8C(v7);
  if (__swift_getEnumTagSinglePayload(v11, 1, v46) == 1)
  {
    sub_2688C2E64(v11);
LABEL_13:
    v38 = v44;
    v45(v44, v26, v14);
    v39 = sub_268B37A34();
    v40 = sub_268B37EC4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2688BB000, v39, v40, "Could not validate verb from MediaPlayerIntent or SettingsIntent. Ignoring input.", v41, 2u);
      MEMORY[0x26D6266E0](v41, -1, -1);
    }

    v30(v38, v14);
    return 0;
  }

  v31 = v43;
  sub_2688C0464(v11, v43);
  if (*v31 == 24 || (sub_268AD3824(), (v32 & 1) == 0))
  {
    sub_2688C2F6C(v31);
    goto LABEL_13;
  }

  v33 = v42;
  v45(v42, v26, v14);
  v34 = sub_268B37A34();
  v35 = sub_268B37EC4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2688BB000, v34, v35, "Supported mediaPlayerIntent verb from parse.", v36, 2u);
    MEMORY[0x26D6266E0](v36, -1, -1);
  }

  v30(v33, v14);
  sub_2688C2F6C(v31);
  return 1;
}

uint64_t sub_2688F2EB0()
{
  v0 = type metadata accessor for NothingToStopTracker();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC26SiriPlaybackControlIntents20NothingToStopTracker_lastNothingToStopDate;
  v5 = sub_268B34614();
  result = __swift_storeEnumTagSinglePayload(v3 + v4, 1, 1, v5);
  qword_2802CD8E0 = v3;
  return result;
}

uint64_t sub_2688F2F10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v5 = sub_268B34614();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC26SiriPlaybackControlIntents20NothingToStopTracker_lastNothingToStopDate;
  swift_beginAccess();
  sub_2688F33D8(v0 + v13, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2688F3448(v4);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    sub_268B34604();
    sub_268B34584();
    v16 = v15;
    v17 = *(v6 + 8);
    v17(v10, v5);
    v17(v12, v5);
    return v16;
  }
}

uint64_t sub_2688F30FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  sub_268B34604();
  v5 = sub_268B34614();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC26SiriPlaybackControlIntents20NothingToStopTracker_lastNothingToStopDate;
  swift_beginAccess();
  sub_2688F3368(v4, v0 + v6);
  return swift_endAccess();
}

uint64_t sub_2688F31C8()
{
  sub_2688F3448(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents20NothingToStopTracker_lastNothingToStopDate);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for NothingToStopTracker()
{
  result = qword_2802A5B10;
  if (!qword_2802A5B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2688F3280()
{
  sub_2688F3310();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2688F3310()
{
  if (!qword_2802A5B20)
  {
    sub_268B34614();
    v0 = sub_268B380A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2802A5B20);
    }
  }
}

uint64_t sub_2688F3368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2688F33D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2688F3448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2688F34B0(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_268B37BC4();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  sub_2688C04C8(a1, v8);
  v9 = a2;
  [v8 setGroupLeader_];

  return v8;
}

id sub_2688F3558()
{
  result = [v0 groupLeader];
  if (result)
  {
    v2 = result;
    v3 = [result context];

    if (v3)
    {
      return sub_268AE10A4(v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_2688F35C8()
{
  v1 = sub_2688F42F4(v0);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    goto LABEL_12;
  }

  v3 = v1;
  v4 = sub_2688EFD0C(v1);
  if (!v4)
  {
LABEL_11:

LABEL_12:
    sub_26893E750(v2);
    v15 = *(v14 + 16);

    return;
  }

  v5 = v4;
  sub_26894478C();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D625BD0](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = sub_268988568(v7);
      v11 = v10;

      v12 = *(v2 + 16);
      if (v12 >= *(v2 + 24) >> 1)
      {
        sub_26894478C();
      }

      ++v6;
      *(v2 + 16) = v12 + 1;
      v13 = v2 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v11;
    }

    while (v5 != v6);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_2688F36FC()
{
  v1 = sub_2688F42F4(v0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_2688EFD0C(v1);
    v4 = 0;
    while (1)
    {
      if (v3 == v4)
      {
LABEL_11:

        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D625BD0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      Device.isPlayingOrHasPausedContentOnScreen.getter();
      v8 = v7;

      ++v4;
      if (v8)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t MediaStream.description.getter()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_2();
  v1 = [v0 groupLeader];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B28, &qword_268B3C598);
  v2 = sub_268B37C24();
  MEMORY[0x26D625650](v2);

  v3 = OUTLINED_FUNCTION_1_3();
  MEMORY[0x26D625650](v3, v4 & 0xFFFF0000FFFFLL | 0xEB00000000200000);
  sub_2688F42F4(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B30, &qword_268B3EE70);
  v5 = sub_268B37C24();
  MEMORY[0x26D625650](v5);

  OUTLINED_FUNCTION_0_5();
  sub_2688F35C8();
  v6 = sub_268B38404();
  MEMORY[0x26D625650](v6);

  MEMORY[0x26D625650](32032, 0xE200000000000000);
  return v8;
}

uint64_t sub_2688F3970()
{
  v1 = v0;
  v2 = 0x3E6C696E3CLL;
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_2();
  v3 = [v0 groupLeader];
  if (v3)
  {
    v4 = v3;
    v5 = sub_268983C00();
    v7 = v6;
  }

  else
  {
    v7 = 0xE500000000000000;
    v5 = 0x3E6C696E3CLL;
  }

  MEMORY[0x26D625650](v5, v7);

  v8 = OUTLINED_FUNCTION_1_3();
  MEMORY[0x26D625650](v8, v9 & 0xFFFF0000FFFFLL | 0xEB000000000A0000);
  v10 = sub_2688F42F4(v1);
  if (v10)
  {
    sub_2688F3AD4(10, 0xE100000000000000, v10);
    v2 = v11;
    v13 = v12;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x26D625650](v2, v13);

  OUTLINED_FUNCTION_0_5();
  sub_2688F35C8();
  v14 = sub_268B38404();
  MEMORY[0x26D625650](v14);

  MEMORY[0x26D625650](32032, 0xE200000000000000);
  return v16;
}

void sub_2688F3AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2688EFD0C(a3);
  if (!v4)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
    sub_2688F4354(&qword_2802A5B50, &qword_2802A5B48, &qword_268B416A0);
    sub_268B37BA4();

    return;
  }

  v5 = v4;
  v14 = MEMORY[0x277D84F90];
  sub_26894470C();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D625BD0](v6, a3);
      }

      else
      {
        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = sub_268983C00();
      v11 = v10;

      v12 = *(v14 + 16);
      if (v12 >= *(v14 + 24) >> 1)
      {
        sub_26894470C();
      }

      ++v6;
      *(v14 + 16) = v12 + 1;
      v13 = v14 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v11;
    }

    while (v5 != v6);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_2688F3C70(uint64_t a1)
{
  result = sub_2688EFD0C(a1);
  v3 = result;
  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  v28 = a1;
  v31 = a1 + 32;
  v32 = a1 & 0xFFFFFFFFFFFFFF8;
  v6 = MEMORY[0x277D84F90];
  v29 = a1 & 0xC000000000000001;
  v30 = result;
  while (1)
  {
    if (v4 == v3)
    {
      return v6;
    }

    if (v5)
    {
      result = MEMORY[0x26D625BD0](v4, v28);
    }

    else
    {
      if (v4 >= *(v32 + 16))
      {
        goto LABEL_45;
      }

      result = *(v31 + 8 * v4);
    }

    v7 = result;
    v8 = __OFADD__(v4++, 1);
    if (v8)
    {
      break;
    }

    v9 = sub_2688F42F4(result);

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    if (v10 >> 62)
    {
      v11 = sub_268B382A4();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v6 >> 62;
    if (v6 >> 62)
    {
      result = sub_268B382A4();
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = result + v11;
    if (__OFADD__(result, v11))
    {
      goto LABEL_46;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v11;
    if (!result)
    {
      if (v12)
      {
LABEL_22:
        sub_268B382A4();
      }

      else
      {
        v14 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v15 = *(v14 + 16);
      }

      result = sub_268B381F4();
      v6 = result;
      v14 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v12)
    {
      goto LABEL_22;
    }

    v14 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v13 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

LABEL_24:
    v16 = *(v14 + 16);
    v17 = (*(v14 + 24) >> 1) - v16;
    v18 = v14 + 8 * v16;
    v33 = v14;
    if (v10 >> 62)
    {
      v20 = sub_268B382A4();
      if (v20)
      {
        v21 = v20;
        result = sub_268B382A4();
        if (v17 < result)
        {
          goto LABEL_50;
        }

        if (v21 < 1)
        {
          goto LABEL_51;
        }

        v19 = result;
        sub_2688F4354(&qword_2802A5B40, &qword_2802A5B38, &unk_268B51420);
        for (i = 0; i != v21; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B38, &unk_268B51420);
          v23 = sub_26892D47C(v35, i, v10);
          v25 = *v24;
          v23(v35, 0);
          *(v18 + 32 + 8 * i) = v25;
        }

        v5 = v29;
        v3 = v30;
        goto LABEL_34;
      }

LABEL_38:

      if (v34 > 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_38;
      }

      if (v17 < v19)
      {
        goto LABEL_49;
      }

      type metadata accessor for Device();
      swift_arrayInitWithCopy();
LABEL_34:

      if (v19 < v34)
      {
        goto LABEL_47;
      }

      if (v19 > 0)
      {
        v26 = *(v33 + 16);
        v8 = __OFADD__(v26, v19);
        v27 = v26 + v19;
        if (v8)
        {
          goto LABEL_48;
        }

        *(v33 + 16) = v27;
      }
    }
  }

  __break(1u);
LABEL_45:
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
LABEL_51:
  __break(1u);
  return result;
}

id sub_2688F3FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2688EFD0C(a3) == 1)
  {
    result = sub_2688EFD0C(a3);
    if (result)
    {
      sub_2688EFD10(0, (a3 & 0xC000000000000001) == 0, a3);
      if ((a3 & 0xC000000000000001) != 0)
      {
        return MEMORY[0x26D625BD0](0, a3);
      }

      else
      {
        return *(a3 + 32);
      }
    }
  }

  else
  {
    v25 = sub_2688F3C70(a3);
    v10 = sub_2688EFD0C(a3);
    for (i = 0; v10 != i; ++i)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D625BD0](i, a3);
      }

      else
      {
        if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v12 = *(a3 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v14 = [v12 groupLeader];
      if (v14)
      {

        v15 = [v13 groupLeader];
        if (v15)
        {
          type metadata accessor for MediaStream();
          return sub_2688F34B0(v25, v15);
        }

        break;
      }
    }

    if (qword_2802A4F30 == -1)
    {
      goto LABEL_17;
    }

LABEL_23:
    swift_once();
LABEL_17:
    v16 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v8, v16, v4);

    v17 = sub_268B37A34();
    v18 = sub_268B37EE4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      v21 = type metadata accessor for MediaStream();
      v22 = MEMORY[0x26D6256F0](a3, v21);
      v24 = sub_26892CDB8(v22, v23, &v26);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_2688BB000, v17, v18, "Merging streams %s failed. Could not find any group leaders", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x26D6266E0](v20, -1, -1);
      MEMORY[0x26D6266E0](v19, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  return result;
}

uint64_t sub_2688F42F4(void *a1)
{
  v1 = [a1 devices];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for Device();
  v3 = sub_268B37CF4();

  return v3;
}

uint64_t sub_2688F4354(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void OUTLINED_FUNCTION_0_5()
{

  JUMPOUT(0x26D625650);
}

void OUTLINED_FUNCTION_2_2()
{

  JUMPOUT(0x26D625650);
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return sub_268B381C4();
}

uint64_t sub_2688F442C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_268B382A4())
  {
    v2 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v4 = sub_2688F45E4(v3);
    v5 = v4;
    v23 = v2;
    v6 = v4 + 64;
    v7 = 1 << *(v4 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v4 + 64);
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    while (v9)
    {
LABEL_12:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = v13 | (v11 << 6);
      v15 = (*(v5 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(v5 + 56) + 8 * v14);

      v19 = sub_2688F3FAC(v16, v17, v18);

      if (v19)
      {
        MEMORY[0x26D6256C0](v20);
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v21 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_268B37D14();
        }

        sub_268B37D44();
        v2 = v23;
      }
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return v2;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    ;
  }

  return v2;
}

uint64_t sub_2688F45E4(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v26 = MEMORY[0x277D84F98];
  v3 = sub_2688EFD0C(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = sub_2688F3558();
    v9 = v8;
    v11 = sub_268A759D0();
    v12 = v2[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_22;
    }

    v15 = v10;
    if (v2[3] < v14)
    {
      sub_268ADEF48(v14);
      v2 = v26;
      v16 = sub_268A759D0();
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_24;
      }

      v11 = v16;
    }

    if (v15)
    {

      v19 = (v2[7] + 8 * v11);
      MEMORY[0x26D6256C0](v18);
      if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_268B3BBA0;
      *(v20 + 32) = v6;
      v2[(v11 >> 6) + 8] |= 1 << v11;
      v21 = (v2[6] + 16 * v11);
      *v21 = v7;
      v21[1] = v9;
      *(v2[7] + 8 * v11) = v20;
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v2[2] = v24;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  result = sub_268B38494();
  __break(1u);
  return result;
}

uint64_t sub_2688F4820(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v4 = 0;
    v5 = 2;
  }

  else
  {
    if (sub_2688EFD0C(a1))
    {
      if (sub_2688EFD0C(a1) != 1)
      {
        v4 = a1;
        v5 = 1;
        return a3(v4, v5);
      }

      v4 = a1;
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v5 = 0;
  }

  return a3(v4, v5);
}

void sub_2688F48A0()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v58 = v4;
  v6 = v5;
  OUTLINED_FUNCTION_275_0();
  v7 = sub_268B37A54();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_274_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  if (v6)
  {
    v57 = v3;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
    v54 = *(v10 + 16);
    v55 = v17;
    v54(v16);
    v18 = sub_268B37A34();
    v19 = sub_268B37EE4();
    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_172_0();
      v53 = v1;
      v20 = OUTLINED_FUNCTION_123_0();
      v56 = v10;
      v21 = v20;
      v60 = v20;
      *v1 = 136315138;
      v59 = v0 & 1;
      sub_26890C84C();
      v22 = sub_268B384A4();
      v24 = v0;
      v25 = sub_26892CDB8(v22, v23, &v60);

      *(v1 + 4) = v25;
      _os_log_impl(&dword_2688BB000, v18, v19, "DeviceSelectingUtil#smartSelect Error resolving devices: %s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      v26 = v56;
      OUTLINED_FUNCTION_12();
      v1 = v53;
      OUTLINED_FUNCTION_12();

      v27 = v26;
    }

    else
    {

      v27 = v10;
      v24 = v0;
    }

    v41 = *(v27 + 8);
    v41(v16, v7);
    if (v24)
    {
      (v54)(v1, v55, v7);
      v42 = sub_268B37A34();
      v43 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v43))
      {
        v44 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v44);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v45, v46, v47, v48, v49, 2u);
        OUTLINED_FUNCTION_12();
      }

      v41(v1, v7);
      v50 = 1;
    }

    else
    {
      v50 = 0;
    }

    v52 = 2;
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
    v28 = OUTLINED_FUNCTION_139(v10);
    v29(v28);

    v30 = sub_268B37A34();
    v31 = sub_268B37F04();
    sub_26890C840(v0, 0);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_172_0();
      v33 = OUTLINED_FUNCTION_173_0();
      v56 = v10;
      v34 = v33;
      v60 = v33;
      *v32 = 136315138;
      type metadata accessor for Device();
      OUTLINED_FUNCTION_217_0();
      v37 = sub_26892CDB8(v35, v36, &v60);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_2688BB000, v30, v31, "DeviceSelectingUtil#smartSelect Success resolving devices: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      OUTLINED_FUNCTION_83_0();
      OUTLINED_FUNCTION_84_0();

      v38 = *(v56 + 8);
    }

    else
    {

      v51 = *(v10 + 8);
    }

    v39 = OUTLINED_FUNCTION_138();
    v40(v39);
    v50 = v0;
    v52 = 0;
  }

  v58(v50, v52);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688F4CD4()
{
  OUTLINED_FUNCTION_208_0();
  OUTLINED_FUNCTION_0_3();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v0;
  v10 = v6;
  v11 = v5;
  v12 = v4;
  v13 = v1;
  v14 = v3;

  sub_268997188("smartDeviceSelection", 20, 2, 1, sub_26890D788, v7, sub_26890D78C, &v9);
}

void sub_2688F4D90(void (*a1)(char **), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v140 = a7;
  v144 = a6;
  v145 = a4;
  v150 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B80, &qword_268B3C678);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v123 = &v118 - v12;
  v13 = sub_268B36C04();
  v149 = *(v13 - 8);
  v14 = *(v149 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v142 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v148 = &v118 - v16;
  v17 = sub_268B371E4();
  v18 = *(v17 - 1);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v132 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v118 - v22;
  v24 = sub_268B37A54();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v130 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v126 = &v118 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v122 = &v118 - v32;
  MEMORY[0x28223BE20](v31);
  v147 = (&v118 - v33);
  v34 = swift_allocObject();
  v138 = a2;
  v139 = a1;
  *(v34 + 16) = a1;
  *(v34 + 24) = a2;
  v141 = v34;
  v35 = qword_2802A4F30;

  if (v35 != -1)
  {
    goto LABEL_33;
  }

LABEL_2:
  v36 = __swift_project_value_buffer(v24, qword_2802CDA10);
  v37 = *(v25 + 16);
  v135 = v36;
  v136 = v37;
  v137 = v25 + 16;
  (v37)(v147);
  v38 = v18[2];
  v125 = v18 + 2;
  v124 = v38;
  v38(v23, v150, v17);
  v146 = v25;
  v40 = (v149 + 16);
  v39 = *(v149 + 16);
  v39(v148, v145, v13);
  v41 = sub_268B37A34();
  v134 = sub_268B37ED4();
  v42 = os_log_type_enabled(v41, v134);
  v133 = v17;
  v129 = v18;
  v128 = v14;
  v143 = v24;
  v131 = v39;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v151 = v121;
    *v43 = 136446466;
    sub_26890D6F8(&qword_2802A5B90, MEMORY[0x277D5F7E0]);
    v120 = v41;
    v44 = sub_268B38404();
    v45 = v13;
    v47 = v46;
    v48 = v18[1];
    ++v18;
    v48(v23, v17);
    v49 = sub_26892CDB8(v44, v47, &v151);
    v13 = v45;

    *(v43 + 4) = v49;
    *(v43 + 12) = 2082;
    v50 = v148;
    v39(v142, v148, v13);
    v51 = sub_268B37C24();
    v53 = v52;
    (*(v149 + 8))(v50, v13);
    v54 = sub_26892CDB8(v51, v53, &v151);

    *(v43 + 14) = v54;
    v55 = v120;
    _os_log_impl(&dword_2688BB000, v120, v134, "Select devices with deviceType=%{public}s, controlType=%{public}s", v43, 0x16u);
    v56 = v121;
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v56, -1, -1);
    MEMORY[0x26D6266E0](v43, -1, -1);

    v57 = v146[1];
    v24 = v143;
    v57(v147, v143);
  }

  else
  {

    (*(v149 + 8))(v148, v13);
    v58 = v18[1];
    ++v18;
    v58(v23, v17);
    v57 = v146[1];
    v57(v147, v24);
  }

  v59 = sub_2688EFD0C(a5);
  if (v59)
  {
    v66 = v59;
    v147 = v57;
    v148 = v40;
    v25 = v13;
    sub_268902AB0(a5, v150, v60, v61, v62, v63, v64, v65, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129);
    v13 = v71;
    v72 = 0;
    v24 = a5 & 0xC000000000000001;
    v23 = (a5 & 0xFFFFFFFFFFFFFF8);
    v14 = &unk_279C42000;
    while (v66 != v72)
    {
      if (v24)
      {
        v73 = MEMORY[0x26D625BD0](v72, a5);
      }

      else
      {
        if (v72 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v73 = *(a5 + 8 * v72 + 32);
      }

      v17 = v73;
      if (__OFADD__(v72, 1))
      {
        goto LABEL_31;
      }

      v74 = [v73 proximity];
      if ((v74 - 1) >= 4)
      {
        if (!v74)
        {
          goto LABEL_16;
        }

        v151 = v74;
        sub_268B38474();
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        swift_once();
        goto LABEL_2;
      }

      ++v72;
    }

    v17 = 0;
LABEL_16:
    v75 = v143;
    v76 = v140;
    v77 = v150;
    if (!*(v13 + 16))
    {
      v78 = v13;
      v79 = v123;
      v131(v123, v145, v25);
      __swift_storeEnumTagSinglePayload(v79, 0, 1, v25);
      sub_268900698(v79, v77, v76, v17, 1, v80, v81, v82, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129);
      v84 = v83;
      v85 = v79;
      v13 = v78;
      sub_2688C058C(v85, &qword_2802A5B80, &qword_268B3C678);
      if (v84)
      {

        v86 = v122;
        v136(v122, v135, v75);
        v87 = sub_268B37A34();
        v88 = sub_268B37EC4();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          v90 = "No predicates could be generated from context, primary is a logical candidate! Selecting the local device";
          goto LABEL_23;
        }

        goto LABEL_24;
      }
    }

    v91 = v145;
    sub_2688FEE90(v145, v77, v76, a5, v67, v68, v69, v70, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129);
    if (v92)
    {

      v86 = v126;
      v136(v126, v135, v75);
      v87 = sub_268B37A34();
      v88 = sub_268B37F04();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        v90 = "Short circuiting and controlling the local device";
LABEL_23:
        _os_log_impl(&dword_2688BB000, v87, v88, v90, v89, 2u);
        v93 = v89;
        v75 = v143;
        MEMORY[0x26D6266E0](v93, -1, -1);
      }

LABEL_24:

      (v147)(v86, v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_268B3BBA0;
      *(v94 + 32) = sub_268901CB8(v17);
      v151 = v94;
      v152 = 0;
      v139(&v151);

      return;
    }

    v106 = v91;
    v107 = v144;
    v108 = v144[6];
    v147 = v144[5];
    v150 = v108;
    v146 = __swift_project_boxed_opaque_existential_1(v144 + 2, v147);
    v119 = v25;
    v131(v142, v106, v25);
    v124(v132, v77, v133);
    v109 = v149;
    v110 = (*(v149 + 80) + 32) & ~*(v149 + 80);
    v148 = v13;
    v111 = v129;
    v112 = (v128 + *(v129 + 80) + v110) & ~*(v129 + 80);
    v145 = (v127 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
    v113 = (v145 + 15) & 0xFFFFFFFFFFFFFFF8;
    v114 = swift_allocObject();
    *(v114 + 16) = a5;
    *(v114 + 24) = v107;
    (*(v109 + 32))(v114 + v110, v142, v119);
    (*(v111 + 32))(v114 + v112, v132, v133);
    *(v114 + v145) = v140;
    *(v114 + v113) = v17;
    v115 = (v114 + ((v113 + 15) & 0xFFFFFFFFFFFFFFF8));
    v116 = v141;
    *v115 = sub_26890D79C;
    v115[1] = v116;
    v117 = v17;

    sub_268B37424();
  }

  else
  {

    v95 = v130;
    v136(v130, v135, v24);
    v96 = sub_268B37A34();
    v97 = sub_268B37EE4();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = v24;
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_2688BB000, v96, v97, "Non-empty device context expected for smart device selection, returning local device", v99, 2u);
      v100 = v99;
      v24 = v98;
      MEMORY[0x26D6266E0](v100, -1, -1);
    }

    v57(v95, v24);
    type metadata accessor for DeviceContext();
    v101 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v102 = sub_26893A824(0, 0xE000000000000000);
    [v102 setProximity_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_268B3BBA0;
    v104 = v102;
    v105 = sub_268901CB8(v102);

    *(v103 + 32) = v105;
    v151 = v103;
    v152 = 0;
    v139(&v151);
  }
}

uint64_t sub_2688F59FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t), void *a7, void (*a8)(uint64_t, void), uint64_t a9)
{
  v161 = a8;
  v164 = a6;
  v165 = a7;
  v166 = a2;
  v167 = a3;
  v157 = a9;
  v12 = sub_268B36C04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v162 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_268B371E4();
  v155 = *(v16 - 8);
  v156 = v16;
  v17 = *(v155 + 8);
  MEMORY[0x28223BE20](v16);
  v154 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_268B34714();
  v150 = *(v19 - 8);
  v151 = v19;
  v20 = *(v150 + 64);
  MEMORY[0x28223BE20](v19);
  v149 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_268B37474();
  v148 = *(v153 - 8);
  v22 = *(v148 + 64);
  MEMORY[0x28223BE20](v153);
  v147 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_268B37434();
  v159 = *(v152 - 8);
  v24 = *(v159 + 64);
  MEMORY[0x28223BE20](v152);
  v146 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_268B37A54();
  v158 = *(v26 - 8);
  v27 = *(v158 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v140 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v142 = &v136 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v141 = (&v136 - v33);
  MEMORY[0x28223BE20](v32);
  v35 = &v136 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B80, &qword_268B3C678);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = &v136 - v38;
  v40 = sub_268A0358C(v166, a1);
  v170 = v40;
  v166 = v13;
  v41 = v13;
  v42 = v164;
  v43 = *(v41 + 16);
  v160 = a4;
  v43(v39, a4, v12);
  v163 = v12;
  __swift_storeEnumTagSinglePayload(v39, 0, 1, v12);
  sub_268900698(v39, a5, v42, v165, 1, v44, v45, v46, v136, v137, v138, v139, v140, v141, v142, v143, a5, v145, v146, v147);
  LOBYTE(a4) = v47;
  v143 = v39;
  sub_2688C058C(v39, &qword_2802A5B80, &qword_268B3C678);
  v145 = v26;
  if (a4)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v26, qword_2802CDA10);
    v49 = v158;
    (*(v158 + 16))(v35, v48, v26);
    v50 = sub_268B37A34();
    v51 = sub_268B37F04();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2688BB000, v50, v51, "Primary device is a logical candidate. Adding back the local device to the list of devices elligible for controlling", v52, 2u);
      MEMORY[0x26D6266E0](v52, -1, -1);
    }

    (*(v49 + 8))(v35, v26);
    v53 = v167;
    v139 = sub_268901CB8(v165);
    v54 = v53[27];
    v138 = v53[28];
    v137 = __swift_project_boxed_opaque_existential_1(v53 + 24, v54);
    v55 = v146;
    v56 = v152;
    (*(v159 + 104))(v146, *MEMORY[0x277D5F860], v152);
    v57 = v148;
    v58 = v147;
    v59 = v153;
    (*(v148 + 104))(v147, *MEMORY[0x277D5F8A8], v153);
    v60 = v53[11];
    __swift_project_boxed_opaque_existential_1(v53 + 7, v53[10]);
    v61 = v149;
    sub_268B34C94();
    sub_268B376E4();
    v63 = v62;
    (*(v150 + 8))(v61, v151);
    (*(v57 + 8))(v58, v59);
    (*(v159 + 8))(v55, v56);
    if (v63)
    {
      v64 = sub_268B37BC4();
    }

    else
    {
      v64 = 0;
    }

    v42 = v164;
    [v139 setRoomName_];

    MEMORY[0x26D6256C0]();
    if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_268B37D14();
    }

    sub_268B37D44();
    v40 = v170;
  }

  v65 = v154;
  sub_268B37164();
  v66 = v160;
  v67 = sub_2688F6A28();
  (*(v155 + 1))(v65, v156);
  v169 = v67;
  v68 = sub_2688EFD0C(v67);
  v69 = *MEMORY[0x277D5F658];
  v70 = v166;
  v71 = *(v166 + 104);
  v164 = v71;
  if (!v68)
  {
    if (v42)
    {
      v73 = v162;
      v72 = v163;
      v164(v162, v69, v163);
      v74 = sub_268920878(v66, v73);
      (*(v70 + 8))(v73, v72);
      v71 = v164;
      if (v74)
      {
        if (v165)
        {
          v75 = [v165 nowPlayingState];
          v71 = v164;
          if (v75 == 1)
          {
            v76 = v42;

            v77 = sub_268901CB8(v165);
            v78 = v161;
            if (qword_2802A4F30 != -1)
            {
              swift_once();
            }

            v79 = v145;
            v80 = __swift_project_value_buffer(v145, qword_2802CDA10);
            v81 = v158;
            v82 = v141;
            (*(v158 + 16))(v141, v80, v79);
            v83 = sub_268B37A34();
            v84 = sub_268B37ED4();
            if (os_log_type_enabled(v83, v84))
            {
              v85 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              v168 = v86;
              *v85 = 136315138;
              v87 = NLMediaType.description.getter(v76);
              v89 = sub_26892CDB8(v87, v88, &v168);

              *(v85 + 4) = v89;
              _os_log_impl(&dword_2688BB000, v83, v84, "User asked to pause mediaType: %s and nothing was found. Returning local device since it is currently playing", v85, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v86);
              MEMORY[0x26D6266E0](v86, -1, -1);
              MEMORY[0x26D6266E0](v85, -1, -1);

              (*(v81 + 8))(v141, v79);
            }

            else
            {

              (*(v81 + 8))(v82, v79);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
            v133 = swift_allocObject();
            *(v133 + 16) = xmmword_268B3BBA0;
            *(v133 + 32) = v77;
            v132 = v77;
            v78(v133, 0);
LABEL_44:
          }
        }
      }
    }
  }

  v156 = v40;
  v91 = v162;
  v90 = v163;
  v71(v162, v69, v163);
  v92 = sub_268920878(v66, v91);
  v93 = *(v70 + 8);
  v93(v91, v90);
  v94 = v161;
  v166 = v70 + 8;
  v155 = v93;
  if ((v92 & 1) != 0 && sub_2688EFD0C(v67) >= 2)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v95 = v145;
    v96 = __swift_project_value_buffer(v145, qword_2802CDA10);
    v97 = v158;
    v98 = v142;
    (*(v158 + 16))(v142, v96, v95);
    v99 = sub_268B37A34();
    v100 = sub_268B37EC4();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_2688BB000, v99, v100, "More than 1 device. Adding everywhere for pause control", v101, 2u);
      MEMORY[0x26D6266E0](v101, -1, -1);
    }

    (*(v97 + 8))(v98, v145);
    v102 = v167;
    v142 = v167[27];
    v154 = v167[28];
    v141 = __swift_project_boxed_opaque_existential_1(v167 + 24, v142);
    v103 = v159;
    v104 = v146;
    (*(v159 + 104))(v146, *MEMORY[0x277D5F828], v152);
    v105 = v148;
    v106 = v147;
    (*(v148 + 104))(v147, *MEMORY[0x277D5F8A8], v153);
    v107 = v102[11];
    __swift_project_boxed_opaque_existential_1(v102 + 7, v102[10]);
    v108 = v149;
    sub_268B34C94();
    v109 = sub_268B376E4();
    v111 = v110;
    (*(v150 + 8))(v108, v151);
    (*(v105 + 8))(v106, v153);
    (*(v103 + 8))(v104, v152);
    v66 = v160;
    v94 = v161;
    v91 = v162;
    v90 = v163;
    if (v111)
    {
      type metadata accessor for Device();
      v112 = sub_268B37724();
      LOBYTE(v135) = 0;
      sub_268983F14(v112, v113, 0, 0, v109, v111, 0, 1, 0, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
      MEMORY[0x26D6256C0]();
      if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
      v67 = v169;
      v91 = v162;
      v90 = v163;
    }
  }

  v114 = v164;
  v164(v91, *MEMORY[0x277D5F660], v90);
  v115 = sub_268920878(v66, v91);
  v116 = v155;
  v155(v91, v90);
  if (v115)
  {
  }

  else
  {
    v114(v91, *MEMORY[0x277D5F650], v90);
    v117 = sub_268920878(v66, v91);
    v116(v91, v90);

    if ((v117 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (!sub_2688EFD0C(v67))
  {
    v118 = v143;
    __swift_storeEnumTagSinglePayload(v143, 1, 1, v90);
    sub_268900698(v118, v144, 0, v165, 1, v119, v120, v121, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
    v123 = v122;
    sub_2688C058C(v118, &qword_2802A5B80, &qword_268B3C678);
    if (v123)
    {

      v124 = sub_268901CB8(v165);
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v125 = v145;
      v126 = __swift_project_value_buffer(v145, qword_2802CDA10);
      v127 = v140;
      (*(v158 + 16))(v140, v126, v125);
      v128 = sub_268B37A34();
      v129 = sub_268B37EE4();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        *v130 = 0;
        _os_log_impl(&dword_2688BB000, v128, v129, "User asked for .resumable or .any devices to control but we couldn't find any. Returning the local device", v130, 2u);
        MEMORY[0x26D6266E0](v130, -1, -1);
      }

      (*(v158 + 8))(v127, v125);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v131 = swift_allocObject();
      *(v131 + 16) = xmmword_268B3BBA0;
      *(v131 + 32) = v124;
      v132 = v124;
      v94(v131, 0);
      goto LABEL_44;
    }
  }

LABEL_41:
  v94(v67, 0);
}

uint64_t sub_2688F6A28()
{
  v1 = sub_268B37A54();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  sub_268901EE8();
  v11 = v10;
  v12 = *(v0 + 96);
  OUTLINED_FUNCTION_150();
  sub_268ADAEEC();
  v14 = v13;

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v1, qword_2802CDA10);
  (*(v4 + 16))(v9);

  v15 = sub_268B37A34();
  sub_268B37ED4();
  OUTLINED_FUNCTION_149_0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_172_0();
    *v17 = 134217984;
    *(v17 + 4) = sub_2688EFD0C(v14);

    OUTLINED_FUNCTION_277_0(&dword_2688BB000, v15, v11, "resolvedDevice count: %ld");
    OUTLINED_FUNCTION_132_0();
  }

  else
  {
  }

  v18 = *(v4 + 8);
  v19 = OUTLINED_FUNCTION_0_1();
  v20(v19);
  return v14;
}

void sub_2688F6BEC()
{
  OUTLINED_FUNCTION_26();
  v25 = v2;
  v26 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_268B37A24();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v14 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_0_3();
  v15 = swift_allocObject();
  *(v15 + 16) = v6;
  *(v15 + 24) = v4;
  v16 = qword_2802A5028;

  if (v16 != -1)
  {
    swift_once();
  }

  qword_2802CDB28;
  sub_268B37A14();
  (*(v10 + 16))(&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v7);
  v17 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v18 = v17 + v12;
  v19 = (v17 + v12) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "resolveDevice";
  *(v20 + 24) = 13;
  *(v20 + 32) = 2;
  (*(v10 + 32))(v20 + v17, v14, v7);
  *(v20 + v18) = 1;
  v21 = v20 + v19;
  *(v21 + 8) = sub_26890D530;
  *(v21 + 16) = v15;

  sub_268B38004();
  sub_268B37A04();

  sub_2688F6E80(v25, v26, sub_26890D5CC, v20);

  v22 = *(v10 + 8);
  v23 = OUTLINED_FUNCTION_153_0();
  v24(v23);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688F6E80(uint64_t a1, void *a2, void (*a3)(char **), uint64_t a4)
{
  v125 = sub_268B371E4();
  v8 = *(v125 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v125);
  v135 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v115 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v138 = &v115 - v15;
  MEMORY[0x28223BE20](v14);
  v137 = &v115 - v16;
  v139 = sub_268B37594();
  v136 = *(v139 - 8);
  v17 = *(v136 + 64);
  v18 = MEMORY[0x28223BE20](v139);
  v152 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v151 = &v115 - v21;
  MEMORY[0x28223BE20](v20);
  v140 = &v115 - v22;
  v153 = sub_268B37A54();
  v23 = *(v153 - 8);
  v24 = *(v23 + 8);
  v25 = MEMORY[0x28223BE20](v153);
  v124 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v120 = &v115 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v146 = &v115 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v115 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v115 - v34;
  v36 = swift_allocObject();
  *(v36 + 16) = a3;
  *(v36 + 24) = a4;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_26890D668;
  *(v37 + 24) = v36;
  v126 = a1;
  v133 = sub_2688EFD0C(a1);
  if (v133)
  {
    v116 = v37;
    v117 = a2;
    v38 = qword_2802A4F30;
    v119 = a4;

    v118 = v36;

    if (v38 != -1)
    {
LABEL_36:
      swift_once();
    }

    v39 = __swift_project_value_buffer(v153, qword_2802CDA10);
    v40 = v23;
    v41 = *(v23 + 2);
    v143 = v39;
    v144 = v23 + 16;
    v142 = v41;
    (v41)(v33);
    v42 = v126;

    v43 = sub_268B37A34();
    v44 = sub_268B37EC4();

    v45 = os_log_type_enabled(v43, v44);
    v46 = v137;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      type metadata accessor for Device();
      v49 = sub_268B37CE4();
      *(v47 + 4) = v49;
      *v48 = v49;
      _os_log_impl(&dword_2688BB000, v43, v44, "Resolving devices: %@", v47, 0xCu);
      sub_2688C058C(v48, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v48, -1, -1);
      MEMORY[0x26D6266E0](v47, -1, -1);
    }

    v50 = *(v40 + 1);
    v145 = v40 + 8;
    v141 = v50;
    v51 = (v50)(v33, v153);
    v52 = 0;
    v121 = 0;
    v132 = v42 & 0xC000000000000001;
    v122 = v42 & 0xFFFFFFFFFFFFFF8;
    v131 = (v8 + 16);
    v130 = (v8 + 8);
    v150 = (v136 + 16);
    v129 = v136 + 32;
    v128 = (v136 + 8);
    v53 = MEMORY[0x277D84F90];
    v51.n128_u64[0] = 136315138;
    v123 = v51;
    v23 = v138;
    v8 = v139;
    v54 = v125;
    v55 = v140;
    do
    {
      if (v132)
      {
        v56 = MEMORY[0x26D625BD0](v52, v42);
      }

      else
      {
        if (v52 >= *(v122 + 16))
        {
          goto LABEL_35;
        }

        v56 = *(v42 + 8 * v52 + 32);
      }

      v33 = v56;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v148 = v52 + 1;
      v149 = v52;
      v57 = v8;
      v156 = type metadata accessor for Device();
      v157 = sub_26890D6F8(&qword_2802A5BD8, type metadata accessor for Device);
      v154 = v33;
      v147 = v33;
      sub_268B37514();
      sub_268B374E4();
      sub_268B371A4();
      (*v131)(v135, v46, v54);
      sub_26890D6F8(&qword_2802A5BE0, MEMORY[0x277D5F7E0]);
      v58 = v46;
      v59 = v134;
      sub_268B38104();
      v60 = sub_268B38114();
      v61 = *v130;
      (*v130)(v59, v54);
      v61(v23, v54);
      v61(v58, v54);
      if (v60)
      {
        v8 = v57;
      }

      else
      {
        sub_268B374E4();
        sub_268B37164();
        sub_26890D6F8(&qword_2802A5AF8, MEMORY[0x277D5F7E0]);
        v62 = sub_268B37BB4();
        v61(v23, v54);
        v61(v58, v54);
        v8 = v57;
        if ((v62 & 1) == 0)
        {
          v142(v124, v143, v153);
          v63 = sub_268B37A34();
          v64 = sub_268B37EC4();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            *v65 = 0;
            _os_log_impl(&dword_2688BB000, v63, v64, "Forcing disambiguation based on predicate device type", v65, 2u);
            v55 = v140;
            MEMORY[0x26D6266E0](v65, -1, -1);
          }

          v141(v124, v153);
          v121 = 1;
        }
      }

      v66 = *v150;
      (*v150)(v151, v55, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = *(v53 + 16);
        sub_268987BAC();
        v53 = v81;
      }

      v67 = *(v53 + 16);
      if (v67 >= *(v53 + 24) >> 1)
      {
        sub_268987BAC();
        v53 = v82;
      }

      *(v53 + 16) = v67 + 1;
      (*(v136 + 32))(v53 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v67, v151, v8);
      v33 = v146;
      v142(v146, v143, v153);
      v55 = v140;
      v66(v152, v140, v8);
      v68 = sub_268B37A34();
      v69 = sub_268B37ED4();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v154 = v71;
        *v70 = v123.n128_u32[0];
        sub_26890D6F8(&qword_2802A5BE8, MEMORY[0x277D5F918]);
        v72 = sub_268B38404();
        v127 = v53;
        v74 = v73;
        v75 = *v128;
        (*v128)(v152, v139);
        v33 = sub_26892CDB8(v72, v74, &v154);
        v76 = v153;

        *(v70 + 4) = v33;
        _os_log_impl(&dword_2688BB000, v68, v69, "Created predicate: %s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v71);
        v77 = v71;
        v54 = v125;
        MEMORY[0x26D6266E0](v77, -1, -1);
        MEMORY[0x26D6266E0](v70, -1, -1);

        v78 = v76;
        v8 = v139;
        v141(v146, v78);
        v53 = v127;
        v75(v55, v8);
        v42 = v126;
      }

      else
      {

        v79 = *v128;
        (*v128)(v152, v8);
        v141(v33, v153);
        v79(v55, v8);
      }

      v23 = v138;
      v46 = v137;
      v52 = v149 + 1;
    }

    while (v148 != v133);
    v142(v120, v143, v153);
    v83 = sub_268B37A34();
    v84 = sub_268B37EC4();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v154 = v86;
      *v85 = v123.n128_u32[0];

      v88 = MEMORY[0x26D6256F0](v87, v139);
      v90 = v89;

      v91 = sub_26892CDB8(v88, v90, &v154);

      *(v85 + 4) = v91;
      _os_log_impl(&dword_2688BB000, v83, v84, "Using predicates: %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v86);
      MEMORY[0x26D6266E0](v86, -1, -1);
      MEMORY[0x26D6266E0](v85, -1, -1);
    }

    v141(v120, v153);
    v92 = v116;
    v93 = v121;
    v94 = v117[6];
    __swift_project_boxed_opaque_existential_1(v117 + 2, v117[5]);
    v95 = swift_allocObject();
    *(v95 + 16) = sub_26890D670;
    *(v95 + 24) = v92;
    *(v95 + 32) = v93 & 1;

    sub_268B37424();

    swift_bridgeObjectRelease_n();
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v96 = v153;
    v97 = __swift_project_value_buffer(v153, qword_2802CDA10);
    v98 = v23;
    (*(v23 + 2))(v35, v97, v96);
    v99 = sub_268B37A34();
    v100 = sub_268B37EC4();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_2688BB000, v99, v100, "No devices provided in intent, resolving with local device", v101, 2u);
      v102 = v101;
      v98 = v23;
      MEMORY[0x26D6266E0](v102, -1, -1);
    }

    v98[1](v35, v153);
    type metadata accessor for Device();
    sub_268B36C54();
    v103 = sub_268B36C24();
    v105 = v104;
    v106 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v107 = sub_26893A824(v103, v105);
    type metadata accessor for DeviceContext();
    v108 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v109 = sub_26893A824(0, 0xE000000000000000);
    [v109 setProximity_];
    v110 = sub_268B36C24();
    sub_2689884A0(v110, v111, v107);
    [v107 setContext_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_268B3BBA0;
    *(v112 + 32) = v107;
    v154 = v112;
    v155 = 0;
    v113 = v107;
    a3(&v154);
  }
}

uint64_t sub_2688F7E6C(uint64_t a1, void (*a2)(void), uint64_t a3, int a4)
{
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_2802CDA10);
  (*(v8 + 16))(v11, v12, v7);

  v13 = sub_268B37A34();
  v14 = sub_268B37ED4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22[2] = a4;
    v16 = a2;
    v17 = v15;
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    sub_268B378C4();
    v19 = sub_268B37CE4();
    *(v17 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&dword_2688BB000, v13, v14, "Resolved devices: %@", v17, 0xCu);
    sub_2688C058C(v18, &qword_2802A6420, &unk_268B3C680);
    MEMORY[0x26D6266E0](v18, -1, -1);
    v20 = v17;
    a2 = v16;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  sub_268A0358C(MEMORY[0x277D84F90], a1);
  a2();
}

uint64_t sub_2688F80CC()
{
  OUTLINED_FUNCTION_208_0();
  OUTLINED_FUNCTION_0_3();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v0;
  v10 = v6;
  v11 = v1;
  v12 = v5;
  v13 = v3;
  v14 = v4;

  sub_268997188("resolveDevice", 13, 2, 1, sub_26890DF10, v7, sub_26890DA30, &v9);
}

uint64_t sub_2688F8188(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v97 = a7;
  v100 = a5;
  v101 = a6;
  v11 = sub_268B371E4();
  v88 = *(v11 - 8);
  v89 = v11;
  v12 = *(v88 + 64);
  MEMORY[0x28223BE20](v11);
  v87 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268B36C04();
  v95 = *(v14 - 8);
  v96 = v14;
  v15 = *(v95 + 64);
  MEMORY[0x28223BE20](v14);
  v93 = v16;
  v94 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_268B37A54();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v86 = &v84 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v84 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v84 - v28;
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  v102 = a3;
  if (*(a3 + 16))
  {
    v91 = v30;
    v92 = a4;
    v31 = qword_2802A4F30;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v17, qword_2802CDA10);
    v98 = v18[2];
    v98(v29, v32, v17);
    v33 = v102;

    v34 = sub_268B37A34();
    v35 = sub_268B37EC4();

    v36 = os_log_type_enabled(v34, v35);
    v99 = v18;
    v90 = v18 + 2;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v85 = v32;
      v39 = v38;
      v103 = v38;
      *v37 = 136315138;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A40, &qword_268B3C080);
      v41 = MEMORY[0x26D6256F0](v33, v40);
      v43 = sub_26892CDB8(v41, v42, &v103);

      *(v37 + 4) = v43;
      v33 = v102;
      _os_log_impl(&dword_2688BB000, v34, v35, "Using HomeAutomationEntities: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      v44 = v39;
      v32 = v85;
      MEMORY[0x26D6266E0](v44, -1, -1);
      MEMORY[0x26D6266E0](v37, -1, -1);
    }

    v45 = v18[1];
    v45(v29, v17);
    v46 = sub_268B37504();
    v98(v27, v32, v17);
    v47 = sub_268B37A34();
    v48 = sub_268B37EC4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v85 = v45;
      v51 = v32;
      v52 = v50;
      v103 = v50;
      *v49 = 136315138;
      v53 = sub_268B37594();
      v54 = MEMORY[0x26D6256F0](v46, v53);
      v56 = sub_26892CDB8(v54, v55, &v103);
      v33 = v102;

      *(v49 + 4) = v56;
      _os_log_impl(&dword_2688BB000, v47, v48, "Using predicates: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      v57 = v52;
      v32 = v51;
      v45 = v85;
      MEMORY[0x26D6266E0](v57, -1, -1);
      MEMORY[0x26D6266E0](v49, -1, -1);
    }

    v45(v27, v17);
    v58 = v100;
    if (*(v46 + 16))
    {
      v100 = v46;
      v59 = v92;
      v60 = v92[5];
      v102 = v92[6];
      v99 = __swift_project_boxed_opaque_existential_1(v92 + 2, v60);
      v62 = v94;
      v61 = v95;
      v63 = v96;
      (*(v95 + 16))(v94, v58, v96);
      v64 = (*(v61 + 80) + 40) & ~*(v61 + 80);
      v65 = (v93 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      v67 = v91;
      *(v66 + 2) = sub_26890DF14;
      *(v66 + 3) = v67;
      *(v66 + 4) = v101;
      (*(v61 + 32))(&v66[v64], v62, v63);
      *&v66[v65] = v59;
      *&v66[(v65 + 15) & 0xFFFFFFFFFFFFFFF8] = v97;

      sub_268B37424();
    }

    else
    {

      v73 = v86;
      v98(v86, v32, v17);

      v74 = sub_268B37A34();
      v75 = sub_268B37EE4();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = v45;
        v78 = swift_slowAlloc();
        v103 = v78;
        *v76 = 136315138;
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A40, &qword_268B3C080);
        v80 = MEMORY[0x26D6256F0](v33, v79);
        v82 = sub_26892CDB8(v80, v81, &v103);

        *(v76 + 4) = v82;
        _os_log_impl(&dword_2688BB000, v74, v75, "No predicates were created from homeAutomationEntities: %s. Falling back to smart select", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v78);
        MEMORY[0x26D6266E0](v78, -1, -1);
        MEMORY[0x26D6266E0](v76, -1, -1);

        v77(v73, v17);
      }

      else
      {

        v45(v73, v17);
      }

      v83 = v87;
      sub_268B37164();
      sub_2688F4CD4();

      return (*(v88 + 8))(v83, v89);
    }
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v69 = __swift_project_value_buffer(v17, qword_2802CDA10);
    (v18[2])(v22, v69, v17);
    v70 = sub_268B37A34();
    v71 = sub_268B37EC4();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_2688BB000, v70, v71, "No home automation entities in intent, returning failure.", v72, 2u);
      MEMORY[0x26D6266E0](v72, -1, -1);
    }

    (v18[1])(v22, v17);
    v103 = 0;
    v104 = 1;
    return a1(&v103);
  }
}

uint64_t sub_2688F8A9C(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v141 = a7;
  v139 = a6;
  v144 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v153 = &v133 - v13;
  v155 = sub_268B371E4();
  v140 = *(v155 - 8);
  v14 = *(v140 + 64);
  v15 = MEMORY[0x28223BE20](v155);
  v154 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v152 = &v133 - v17;
  v18 = sub_268B36C04();
  v146 = *(v18 - 8);
  v147 = v18;
  v19 = *(v146 + 64);
  MEMORY[0x28223BE20](v18);
  v145 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_268B37A54();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v156 = &v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v138 = &v133 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v137 = &v133 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v142 = &v133 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v133 - v32;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_72;
  }

LABEL_2:
  v34 = __swift_project_value_buffer(v21, qword_2802CDA10);
  v35 = *(v22 + 16);
  v148 = v34;
  v149 = v35;
  v150 = v22 + 16;
  (v35)(v33);

  v36 = sub_268B37A34();
  v37 = sub_268B37ED4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v151 = v22;
    v39 = v38;
    v40 = a4;
    v41 = a3;
    v42 = a2;
    v43 = v21;
    v44 = swift_slowAlloc();
    *v39 = 138412290;
    sub_268B378C4();
    v45 = sub_268B37CE4();
    *(v39 + 4) = v45;
    *v44 = v45;
    _os_log_impl(&dword_2688BB000, v36, v37, "Matched devices: %@", v39, 0xCu);
    sub_2688C058C(v44, &qword_2802A6420, &unk_268B3C680);
    v46 = v44;
    v21 = v43;
    a2 = v42;
    a3 = v41;
    a4 = v40;
    MEMORY[0x26D6266E0](v46, -1, -1);
    v47 = v39;
    v22 = v151;
    MEMORY[0x26D6266E0](v47, -1, -1);
  }

  v50 = *(v22 + 8);
  v48 = v22 + 8;
  v49 = v50;
  v50(v33, v21);
  if (*(a1 + 16))
  {
    v133 = v49;
    v151 = v48;
    v134 = v21;
    v135 = a3;
    v136 = a2;
    v22 = sub_268A0358C(a4, a1);
    a2 = MEMORY[0x277D84F90];
    v157[0] = MEMORY[0x277D84F90];
    a4 = sub_2688EFD0C(v22);
    v33 = 0;
    v21 = v22 & 0xC000000000000001;
    a3 = v22 & 0xFFFFFFFFFFFFFF8;
    v156 = a2;
    while (a4 != v33)
    {
      if (v21)
      {
        v51 = MEMORY[0x26D625BD0](v33, v22);
      }

      else
      {
        if (v33 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v51 = *(v22 + 8 * v33 + 32);
      }

      a1 = v51;
      a2 = (v33 + 1);
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        swift_once();
        goto LABEL_2;
      }

      v52 = [v51 context];
      if (v52)
      {

        MEMORY[0x26D6256C0]();
        if (*((v157[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v157[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268B37D14();
        }

        sub_268B37D44();
        v156 = v157[0];
        ++v33;
      }

      else
      {

        ++v33;
      }
    }

    v33 = 0;
    a1 = MEMORY[0x277D84F90];
    v157[0] = MEMORY[0x277D84F90];
    while (a4 != v33)
    {
      if (v21)
      {
        v53 = MEMORY[0x26D625BD0](v33, v22);
      }

      else
      {
        if (v33 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v53 = *(v22 + 8 * v33 + 32);
      }

      v54 = v53;
      a2 = (v33 + 1);
      if (__OFADD__(v33, 1))
      {
        goto LABEL_68;
      }

      v55 = [v53 context];
      if (v55)
      {
        v56 = v55;

        ++v33;
      }

      else
      {
        MEMORY[0x26D6256C0]();
        if (*((v157[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v157[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268B37D14();
        }

        sub_268B37D44();
        a1 = v157[0];
        ++v33;
      }
    }

    v58 = v145;
    v57 = v146;
    a2 = v147;
    (*(v146 + 16))(v145, v144, v147);
    v59 = (*(v57 + 88))(v58, a2);
    if (v59 == *MEMORY[0x277D5F658])
    {

      sub_268901EE8();
      v61 = v60;

      v157[0] = v61;

      sub_2689848D8(v62);
      v63 = v157[0];
      v64 = v142;
      v65 = v134;
      v149(v142, v148, v134);

      v66 = sub_268B37A34();
      v67 = sub_268B37F04();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v156 = v63;
        v69 = v68;
        v70 = swift_slowAlloc();
        v157[0] = v70;
        *v69 = 136315394;
        v71 = type metadata accessor for Device();
        v72 = MEMORY[0x26D6256F0](v61, v71);
        v74 = v73;

        v75 = sub_26892CDB8(v72, v74, v157);

        *(v69 + 4) = v75;
        *(v69 + 12) = 2080;
        v76 = MEMORY[0x26D6256F0](a1, v71);
        v78 = v77;

        v79 = sub_26892CDB8(v76, v78, v157);

        *(v69 + 14) = v79;
        _os_log_impl(&dword_2688BB000, v66, v67, "Pause in <location> request, returning filtered devices: %s + devices without context: %s", v69, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D6266E0](v70, -1, -1);
        v80 = v69;
        v63 = v156;
        MEMORY[0x26D6266E0](v80, -1, -1);

        v81 = v142;
      }

      else
      {

        v81 = v64;
      }

      v133(v81, v65);
      (v136)(v63, 0);
    }

    if (v59 == *MEMORY[0x277D5F648])
    {

      a1 = 0;
      v157[0] = MEMORY[0x277D84F90];
      v146 = v140 + 8;
      v147 = (v140 + 32);
      v88 = v155;
      v33 = v153;
      v143 = v22;
      while (a4 != a1)
      {
        if (v21)
        {
          v89 = MEMORY[0x26D625BD0](a1, v22);
        }

        else
        {
          if (a1 >= *(a3 + 16))
          {
            goto LABEL_71;
          }

          v89 = *(v22 + 8 * a1 + 32);
        }

        v90 = v89;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_70;
        }

        sub_268988574(v89);
        if (v91)
        {
          sub_268B37154();
          if (__swift_getEnumTagSinglePayload(v33, 1, v88) == 1)
          {

            sub_2688C058C(v33, &qword_2802A58F8, &unk_268B3C510);
          }

          else
          {
            a2 = v152;
            (*v147)(v152, v33, v88);
            v92 = v154;
            sub_268B37194();
            sub_26890D6F8(&qword_2802A5BE0, MEMORY[0x277D5F7E0]);
            LODWORD(v156) = sub_268B380F4();
            v93 = *v146;
            (*v146)(v92, v88);
            v93(a2, v88);
            if (v156)
            {
              sub_268B38214();
              v94 = *(v157[0] + 16);
              sub_268B38244();
              sub_268B38254();
              sub_268B38224();
            }

            else
            {
            }

            v88 = v155;
            v33 = v153;
            v22 = v143;
          }
        }

        else
        {
        }

        ++a1;
      }

      if (sub_2688EFD0C(v157[0]))
      {
      }

      else
      {
      }

      v116 = v136;
      v117 = v134;
      v118 = v137;
      v119 = v149;
      v120 = v148;
      v121 = *(v139 + 96);
      sub_268ADB3A4();
      v123 = v122;

      v119(v118, v120, v117);

      v124 = sub_268B37A34();
      v125 = sub_268B37F04();

      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v157[0] = v127;
        *v126 = 136315138;
        v128 = type metadata accessor for Device();
        v129 = MEMORY[0x26D6256F0](v123, v128);
        v131 = sub_26892CDB8(v129, v130, v157);

        *(v126 + 4) = v131;
        _os_log_impl(&dword_2688BB000, v124, v125, "Volume controls request, returning resolved devices grouped by media system id: %s", v126, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v127);
        MEMORY[0x26D6266E0](v127, -1, -1);
        MEMORY[0x26D6266E0](v126, -1, -1);

        v132 = v137;
      }

      else
      {

        v132 = v118;
      }

      v133(v132, v117);
      (v116)(v123, 0);
    }

    v95 = v154;
    sub_268B37164();
    v96 = sub_2688F6A28();

    (*(v140 + 8))(v95, v155);
    v157[0] = v96;

    sub_2689848D8(a1);
    v97 = v157[0];
    v98 = v138;
    v99 = v134;
    v149(v138, v148, v134);

    v100 = sub_268B37A34();
    v101 = sub_268B37F04();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v156 = v97;
      v103 = v102;
      v104 = swift_slowAlloc();
      v157[0] = v104;
      *v103 = 136315394;
      v105 = type metadata accessor for Device();
      v106 = MEMORY[0x26D6256F0](v96, v105);
      v108 = v107;

      v109 = sub_26892CDB8(v106, v108, v157);

      *(v103 + 4) = v109;
      *(v103 + 12) = 2080;
      v110 = MEMORY[0x26D6256F0](a1, v105);
      v112 = v111;

      v113 = sub_26892CDB8(v110, v112, v157);

      *(v103 + 14) = v113;
      _os_log_impl(&dword_2688BB000, v100, v101, "Returning selected group leaders: %s + devices without context: %s", v103, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6266E0](v104, -1, -1);
      v114 = v103;
      v97 = v156;
      MEMORY[0x26D6266E0](v114, -1, -1);

      v115 = v138;
    }

    else
    {

      v115 = v98;
    }

    v133(v115, v99);
    (v136)(v97, 0);

    return (*(v146 + 8))(v145, v147);
  }

  else
  {
    v82 = a2;
    v83 = v156;
    v149(v156, v148, v21);
    v84 = sub_268B37A34();
    v85 = sub_268B37EE4();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_2688BB000, v84, v85, "No matching devices found in HomeKit.", v86, 2u);
      MEMORY[0x26D6266E0](v86, -1, -1);
    }

    v49(v83, v21);
    return (v82)(1, 1);
  }
}

uint64_t sub_2688F9A5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(v5 + 104);
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 24) = a2;
  *(v13 + 32) = a1;
  *(v13 + 40) = a3;
  *(v13 + 48) = a4;
  *(v13 + 56) = a5;

  v14 = OUTLINED_FUNCTION_150();
  sub_268A0383C(v14, v15, v16, v13);
}

void sub_2688F9B28(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (sub_2688EFD0C(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BB8, &qword_268B3C698);
    sub_26890CAA0(&qword_2802A5BC0, &qword_2802A5BB8, &qword_268B3C698);
    sub_268B37E94();
    sub_2688FA004();
  }

  else
  {
    v16 = *(a2 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BB8, &qword_268B3C698);
    sub_26890CAA0(&qword_2802A5BC0, &qword_2802A5BB8, &qword_268B3C698);
    v14 = sub_268B37E94();
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    *(v15 + 32) = a3;
    *(v15 + 40) = a4;
    *(v15 + 48) = a5 & 1;
    *(v15 + 56) = a6;
    *(v15 + 64) = a7;

    sub_268A04D9C(a4, a3, v14 & 1, sub_26890CC88, v15);
  }
}

void sub_2688F9CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v42 = a4;
  v43 = a5;
  v14 = sub_268B37A54();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v14, qword_2802CDA10);
  (*(v15 + 16))(v18, v19, v14);

  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  v22 = a2;
  v23 = v21;
  v44 = a1;
  v24 = v22;

  if (os_log_type_enabled(v20, v23))
  {
    v25 = swift_slowAlloc();
    v41 = a8;
    v26 = v25;
    v27 = swift_slowAlloc();
    v40 = a7;
    v28 = v27;
    v45 = v27;
    *v26 = 136315394;
    v29 = type metadata accessor for MediaStream();
    v30 = MEMORY[0x26D6256F0](v24, v29);
    v39 = a3;
    v32 = sub_26892CDB8(v30, v31, &v45);
    v38[1] = a6;
    v33 = v32;

    *(v26 + 4) = v33;
    *(v26 + 12) = 2080;
    v34 = type metadata accessor for DeviceGroup();
    v35 = MEMORY[0x26D6256F0](v44, v34);
    v37 = sub_26892CDB8(v35, v36, &v45);

    *(v26 + 14) = v37;
    _os_log_impl(&dword_2688BB000, v20, v23, "Resolving source groups for add speaker request with explicit sources: %s and ambiguousEntities: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v28, -1, -1);
    MEMORY[0x26D6266E0](v26, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  v45 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BB8, &qword_268B3C698);
  sub_26890CAA0(&qword_2802A5BC0, &qword_2802A5BB8, &qword_268B3C698);
  sub_268B37E94();
  sub_2688FA004();
}

void sub_2688FA004()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = v3;
  if (sub_2688EFD0C(v3))
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    OUTLINED_FUNCTION_82(v4, qword_2802CDA10);
    (*(v7 + 16))(v12);

    v14 = sub_268B37A34();
    v15 = sub_268B37F04();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_172_0();
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_165_0(5.7779e-34);
      type metadata accessor for MediaStream();
      v18 = sub_268B37CE4();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&dword_2688BB000, v14, v15, "Found explicit source streams in the intent: %@", v16, 0xCu);
      sub_2688C058C(v17, &qword_2802A6420, &unk_268B3C680);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_83_0();
    }

    (*(v7 + 8))(v12, v4);
    v1(v13);
    OUTLINED_FUNCTION_23();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    sub_2688FA23C();
  }
}

void sub_2688FA23C()
{
  OUTLINED_FUNCTION_26();
  v259 = v0;
  v3 = v2;
  v257 = v4;
  v255 = v5;
  v256 = v6;
  v260 = v7;
  v8 = sub_268B37A54();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_58_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  __swift_project_value_buffer(v8, qword_2802CDA10);
  v26 = OUTLINED_FUNCTION_51_0();
  v261 = v8;
  v27(v26);
  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  if (OUTLINED_FUNCTION_183_0(v29))
  {
    v30 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_10(v30);
    OUTLINED_FUNCTION_206_0(&dword_2688BB000, v28, v29, "Resolving add source from ambiguous entities");
    OUTLINED_FUNCTION_6();
  }

  v32 = *(v11 + 8);
  v31 = (v11 + 8);
  v32(v0, v261);
  i = v260;
  v266 = sub_2688EFD0C(v260);
  v268 = v260 & 0xC000000000000001;
  v267 = v260 + 32;
  v258 = v3;
  swift_retain_n();
  v34 = 0;
  v35 = MEMORY[0x277D84F90];
  v36 = &qword_2802A5BC8;
  while (v34 != v266)
  {
    if (v268)
    {
      v37 = MEMORY[0x26D625BD0](v34, v260);
    }

    else
    {
      if (v34 >= *((v260 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_179;
      }

      v37 = *(v267 + 8 * v34);
    }

    i = v37;
    v38 = __OFADD__(v34, 1);
    v39 = v34 + 1;
    if (v38)
    {
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:

      OUTLINED_FUNCTION_209_1();
      goto LABEL_195;
    }

    v40 = v36;
    v41 = sub_2689CC34C(v37);

    if (v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = MEMORY[0x277D84F90];
    }

    i = v42 >> 62;
    if (v42 >> 62)
    {
      v31 = sub_268B382A4();
    }

    else
    {
      v31 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v43 = v35 >> 62;
    if (v35 >> 62)
    {
      v44 = sub_268B382A4();
    }

    else
    {
      v44 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = &v31[v44];
    if (__OFADD__(v44, v31))
    {
      goto LABEL_180;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v43)
      {
LABEL_26:
        sub_268B382A4();
      }

      else
      {
        v1 = v35 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
        v46 = *(v1 + 16);
      }

      v35 = sub_268B381F4();
      v1 = v35 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_28;
    }

    if (v43)
    {
      goto LABEL_26;
    }

    v1 = v35 & 0xFFFFFFFFFFFFFF8;
    if (v45 > *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_25;
    }

LABEL_28:
    v269 = v39;
    v47 = *(v1 + 16);
    v48 = (*(v1 + 24) >> 1) - v47;
    v49 = v1 + 8 * v47;
    if (i)
    {
      if (v42 < 0)
      {
        i = v42;
      }

      else
      {
        i = v42 & 0xFFFFFFFFFFFFFF8;
      }

      v51 = sub_268B382A4();
      if (v51)
      {
        v52 = v51;
        v53 = sub_268B382A4();
        if (v48 < v53)
        {
          goto LABEL_201;
        }

        if (v52 < 1)
        {
          goto LABEL_202;
        }

        v262 = v53;
        v264 = v35;
        v54 = v49 + 32;
        v36 = v40;
        sub_26890CAA0(&qword_2802A5BD0, v40, &unk_268B3C6A0);
        for (i = 0; i != v52; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(v36, &unk_268B3C6A0);
          v55 = sub_26892D47C(v277, i, v42);
          v57 = *v56;
          v55(v277, 0);
          v36 = v40;
          *(v54 + 8 * i) = v57;
        }

        v35 = v264;
        v50 = v262;
        goto LABEL_41;
      }

LABEL_45:

      v36 = v40;
      v34 = v269;
      if (v31 > 0)
      {
        goto LABEL_181;
      }
    }

    else
    {
      i = v42 & 0xFFFFFFFFFFFFFF8;
      v50 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v50)
      {
        goto LABEL_45;
      }

      if (v48 < v50)
      {
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:

        if ((v255 & 1) == 0)
        {
          goto LABEL_210;
        }

        OUTLINED_FUNCTION_122_0(&v268);
        OUTLINED_FUNCTION_209_1();
        OUTLINED_FUNCTION_12_3();
        v230();
        v231 = sub_268B37A34();
        v232 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_115_0(v232))
        {
          v233 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v233);
          OUTLINED_FUNCTION_57();
          _os_log_impl(v234, v235, v236, v237, v238, 2u);
          OUTLINED_FUNCTION_6();
        }

        OUTLINED_FUNCTION_17_2();
        v239();
        type metadata accessor for GroupingUtil();
        v240 = OUTLINED_FUNCTION_226();
        v224 = sub_268A03764(v240);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_268B3BBA0;
        *(inited + 32) = v224;
        goto LABEL_198;
      }

      type metadata accessor for MediaStream();
      swift_arrayInitWithCopy();
      v36 = v40;
LABEL_41:

      v34 = v269;
      if (v50 < v31)
      {
        goto LABEL_181;
      }

      if (v50 > 0)
      {
        v58 = *(v1 + 16);
        v38 = __OFADD__(v58, v50);
        v59 = v58 + v50;
        if (v38)
        {
          goto LABEL_192;
        }

        *(v1 + 16) = v59;
      }
    }
  }

  v277[0] = MEMORY[0x277D84F90];
  v60 = sub_2688EFD0C(v35);
  v61 = 0;
  v62 = v35 & 0xC000000000000001;
  v63 = v35;
  v64 = v35 & 0xFFFFFFFFFFFFFF8;
  while (v60 != v61)
  {
    if (v62)
    {
      v65 = MEMORY[0x26D625BD0](v61, v63);
    }

    else
    {
      if (v61 >= *(v64 + 16))
      {
        goto LABEL_183;
      }

      v65 = *(v63 + 8 * v61 + 32);
    }

    v31 = v65;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_182;
    }

    sub_2688F36FC();
    if (v66)
    {
      sub_268B38214();
      i = *(v277[0] + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    else
    {
    }

    ++v61;
  }

  v67 = 0;
  v263 = v277[0];
  v269 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_264_0();
  while (2)
  {
    while (2)
    {
      if (v67 == v62)
      {
        v277[0] = MEMORY[0x277D84F90];
        v89 = sub_2688EFD0C(v269);
        for (j = 0; v89 != j; ++j)
        {
          if ((v269 & 0xC000000000000001) != 0)
          {
            v91 = MEMORY[0x26D625BD0](j, v269);
          }

          else
          {
            if (j >= *((v269 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_189;
            }

            v91 = *(v269 + 8 * j + 32);
          }

          v31 = v91;
          if (__OFADD__(j, 1))
          {
            goto LABEL_188;
          }

          sub_2688F36FC();
          if (v92)
          {
          }

          else
          {
            sub_268B38214();
            i = *(v277[0] + 16);
            sub_268B38244();
            sub_268B38254();
            sub_268B38224();
          }
        }

        v93 = v277[0];
        v94 = sub_2688EFD0C(v1);
        v95 = 0;
        v96 = v263;
        while (1)
        {
          if (v94 == v95)
          {
            v31 = 0;
            goto LABEL_126;
          }

          if ((v1 & 0xC000000000000001) != 0)
          {
            v97 = MEMORY[0x26D625BD0](v95, v1);
          }

          else
          {
            if (v95 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_191;
            }

            v97 = *(v1 + 8 * v95 + 32);
          }

          v31 = v97;
          if (__OFADD__(v95, 1))
          {
            goto LABEL_190;
          }

          [v97 proximity];
          OUTLINED_FUNCTION_179_0();
          if (v99)
          {
            break;
          }

          ++v95;
        }

        v145 = v98;
        if (v98)
        {

          v277[0] = v145;
          sub_268B38474();
          __break(1u);
          goto LABEL_144;
        }

LABEL_126:
        OUTLINED_FUNCTION_209_1();
        v100 = v259[10];
        v101 = v259[11];
        OUTLINED_FUNCTION_263_0(v259);
        OUTLINED_FUNCTION_176_0();
        v103 = sub_2688C337C(v102);
        if (v266)
        {
          LOBYTE(v95) = v103;
          v104 = sub_2688EFD0C(v263);
          if (v104 >= 2)
          {

            OUTLINED_FUNCTION_119_0(&v275);
            OUTLINED_FUNCTION_3_3();
            v132();
            v133 = sub_268B37A34();
            v134 = sub_268B37EE4();
            if (OUTLINED_FUNCTION_19(v134))
            {
              v135 = OUTLINED_FUNCTION_14();
              OUTLINED_FUNCTION_81(v135);
              OUTLINED_FUNCTION_27();
              _os_log_impl(v136, v137, v138, v139, v140, 2u);
              OUTLINED_FUNCTION_83_0();
            }

            OUTLINED_FUNCTION_17_2();
            v141();
            OUTLINED_FUNCTION_117_0();
            sub_2688FB73C(v143, v144, *(v142 - 256));

            goto LABEL_149;
          }

          if (v104 == 1 && sub_2688EFD0C(v263))
          {
            v105 = OUTLINED_FUNCTION_270_0();
            sub_2688EFD10(v105, v106, v107);
            if (v100)
            {
LABEL_215:
              v108 = MEMORY[0x26D625BD0](0, v96);
            }

            else
            {
              v108 = *(v263 + 32);
            }

            i = v108;
            v109 = sub_2688EFD0C(v93);

            if (v109)
            {
              OUTLINED_FUNCTION_3_3();
              v110();
              v111 = sub_268B37A34();
              v112 = sub_268B37F04();
              if (OUTLINED_FUNCTION_115_0(v112))
              {
                v113 = OUTLINED_FUNCTION_14();
                OUTLINED_FUNCTION_10(v113);
                OUTLINED_FUNCTION_57();
                _os_log_impl(v114, v115, v116, v117, v118, 2u);
                OUTLINED_FUNCTION_6();
              }

LABEL_176:
              OUTLINED_FUNCTION_17_2();
              v209();
              OUTLINED_FUNCTION_117_0();
              sub_2688FB73C(v211, v212, *(v210 - 256));

              goto LABEL_177;
            }

            OUTLINED_FUNCTION_3_3();
            v190();
            v191 = sub_268B37A34();
            v192 = sub_268B37F04();
            if (os_log_type_enabled(v191, v192))
            {
              v193 = OUTLINED_FUNCTION_14();
              *v193 = 0;
              _os_log_impl(&dword_2688BB000, v191, v192, "All entities in the intent are playing in the same group (1 group found).", v193, 2u);
              OUTLINED_FUNCTION_209_1();
              OUTLINED_FUNCTION_12();
            }

            OUTLINED_FUNCTION_17_2();
            v194();
            if ((v95 & 1) == 0)
            {
              OUTLINED_FUNCTION_119_0(&v271);
              OUTLINED_FUNCTION_3_3();
              v200();
              v201 = sub_268B37A34();
              v202 = sub_268B37F04();
              if (OUTLINED_FUNCTION_115_0(v202))
              {
                v203 = OUTLINED_FUNCTION_14();
                OUTLINED_FUNCTION_10(v203);
                OUTLINED_FUNCTION_57();
                _os_log_impl(v204, v205, v206, v207, v208, 2u);
                OUTLINED_FUNCTION_12();
              }

              goto LABEL_176;
            }

            v195 = sub_2688F42F4(i);
            if (v195)
            {
              v95 = v195;
              v93 = sub_2688EFD0C(v195);
              v196 = 0;
              v96 = v95 & 0xFFFFFFFFFFFFFF8;
              while (v93 != v196)
              {
                if ((v95 & 0xC000000000000001) != 0)
                {
                  v197 = MEMORY[0x26D625BD0](v196, v95);
                }

                else
                {
                  if (v196 >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_214;
                  }

                  v197 = *(v95 + 8 * v196 + 32);
                }

                v198 = v197;
                if (__OFADD__(v196, 1))
                {
                  __break(1u);
LABEL_214:
                  __break(1u);
                  goto LABEL_215;
                }

                v199 = sub_268983434();

                ++v196;
                if (v199)
                {
                  goto LABEL_203;
                }
              }

              goto LABEL_194;
            }

LABEL_195:
            OUTLINED_FUNCTION_109(&v270);
            OUTLINED_FUNCTION_3_3();
            v213();
            v214 = sub_268B37A34();
            v215 = sub_268B37F04();
            if (OUTLINED_FUNCTION_115_0(v215))
            {
              v216 = OUTLINED_FUNCTION_14();
              OUTLINED_FUNCTION_10(v216);
              OUTLINED_FUNCTION_57();
              _os_log_impl(v217, v218, v219, v220, v221, 2u);
              OUTLINED_FUNCTION_6();
            }

            OUTLINED_FUNCTION_17_2();
            v222();
            type metadata accessor for GroupingUtil();
            v223 = OUTLINED_FUNCTION_226();
            v224 = sub_268A03764(v223);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
            v225 = swift_initStackObject();
            *(v225 + 16) = xmmword_268B3C5A0;
            *(v225 + 32) = i;
            *(v225 + 40) = v224;
            i = i;
LABEL_198:
            v226 = v224;
            OUTLINED_FUNCTION_117_0();
            sub_2688FB73C(v228, v229, *(v227 - 256));

            swift_setDeallocating();
LABEL_199:
            sub_268ACE718();
            goto LABEL_150;
          }

LABEL_144:

          if (v256)
          {
            OUTLINED_FUNCTION_119_0(&v273);
            OUTLINED_FUNCTION_3_3();
            v146();
            v147 = sub_268B37A34();
            v148 = sub_268B37F04();
            if (OUTLINED_FUNCTION_19(v148))
            {
              v149 = OUTLINED_FUNCTION_14();
              OUTLINED_FUNCTION_81(v149);
              OUTLINED_FUNCTION_27();
              _os_log_impl(v150, v151, v152, v153, v154, 2u);
              OUTLINED_FUNCTION_83_0();
            }

            OUTLINED_FUNCTION_17_2();
            v155();
            v257(MEMORY[0x277D84F90]);
          }

          else
          {
            OUTLINED_FUNCTION_109(&v274);
            OUTLINED_FUNCTION_3_3();
            v156();
            v157 = sub_268B37A34();
            v158 = sub_268B37F04();
            if (OUTLINED_FUNCTION_19(v158))
            {
              v159 = OUTLINED_FUNCTION_14();
              OUTLINED_FUNCTION_10(v159);
              OUTLINED_FUNCTION_72();
              OUTLINED_FUNCTION_206_0(v160, v161, v162, v163);
              OUTLINED_FUNCTION_6();
            }

            OUTLINED_FUNCTION_17_2();
            v164();
            if (v95)
            {
              OUTLINED_FUNCTION_119_0(&v272);
              OUTLINED_FUNCTION_3_3();
              v165();
              v166 = sub_268B37A34();
              v167 = sub_268B37F04();
              if (OUTLINED_FUNCTION_19(v167))
              {
                v168 = OUTLINED_FUNCTION_14();
                OUTLINED_FUNCTION_81(v168);
                OUTLINED_FUNCTION_27();
                _os_log_impl(v169, v170, v171, v172, v173, 2u);
                OUTLINED_FUNCTION_83_0();
              }

              OUTLINED_FUNCTION_17_2();
              v174();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
              v175 = swift_initStackObject();
              *(v175 + 16) = xmmword_268B3BBA0;
              type metadata accessor for GroupingUtil();
              v176 = OUTLINED_FUNCTION_226();
              *(v175 + 32) = sub_268A03764(v176);
              OUTLINED_FUNCTION_117_0();
              sub_2688FB73C(v178, v179, *(v177 - 256));

              swift_setDeallocating();
              goto LABEL_199;
            }

            OUTLINED_FUNCTION_3_3();
            v180();
            v181 = sub_268B37A34();
            v182 = sub_268B37F04();
            if (OUTLINED_FUNCTION_19(v182))
            {
              v183 = OUTLINED_FUNCTION_14();
              OUTLINED_FUNCTION_81(v183);
              OUTLINED_FUNCTION_27();
              _os_log_impl(v184, v185, v186, v187, v188, 2u);
              OUTLINED_FUNCTION_12();
            }

            OUTLINED_FUNCTION_17_2();
            v189();

            sub_2688FBAB0(v1, v259, v257, v258);
          }
        }

        else
        {

          OUTLINED_FUNCTION_119_0(&v276);
          OUTLINED_FUNCTION_3_3();
          v119();
          v120 = sub_268B37A34();
          v121 = sub_268B37EE4();
          if (OUTLINED_FUNCTION_19(v121))
          {
            v122 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v122);
            OUTLINED_FUNCTION_27();
            _os_log_impl(v123, v124, v125, v126, v127, 2u);
            OUTLINED_FUNCTION_83_0();
          }

          OUTLINED_FUNCTION_17_2();
          v128();
          OUTLINED_FUNCTION_117_0();
          sub_2688FB73C(v130, v131, *(v129 - 256));
        }

        goto LABEL_149;
      }

      v31 = v269;
      if (v268)
      {
        v68 = MEMORY[0x26D625BD0](v67, v260);
      }

      else
      {
        if (v67 >= *((v260 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_185;
        }

        v68 = *(v267 + 8 * v67);
      }

      i = v68;
      v38 = __OFADD__(v67++, 1);
      if (v38)
      {
        goto LABEL_184;
      }

      v69 = sub_2689CC34C(v68);

      if (!v69)
      {
        v69 = MEMORY[0x277D84F90];
      }

      i = v69 >> 62;
      if (v69 >> 62)
      {
        v70 = sub_268B382A4();
      }

      else
      {
        v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v71 = v269 >> 62;
      if (v269 >> 62)
      {
        v72 = sub_268B382A4();
      }

      else
      {
        v72 = *((v269 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v73 = v72 + v70;
      if (__OFADD__(v72, v70))
      {
        goto LABEL_186;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v71)
        {
          v74 = v269 & 0xFFFFFFFFFFFFFF8;
          if (v73 > *((v269 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_80:
            v75 = *(v74 + 16);
            v31 = v269;
            goto LABEL_82;
          }

          goto LABEL_83;
        }
      }

      else if (!v71)
      {
        v74 = v269 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_80;
      }

      sub_268B382A4();
LABEL_82:
      v269 = sub_268B381F4();
      v74 = v269 & 0xFFFFFFFFFFFFFF8;
LABEL_83:
      v76 = *(v74 + 16);
      v77 = (*(v74 + 24) >> 1) - v76;
      v78 = v74 + 8 * v76;
      v265 = v74;
      if (i)
      {
        if (v69 < 0)
        {
          i = v69;
        }

        else
        {
          i = v69 & 0xFFFFFFFFFFFFFF8;
        }

        v79 = sub_268B382A4();
        if (v79)
        {
          v80 = v79;
          v81 = sub_268B382A4();
          if (v77 < v81)
          {
            goto LABEL_208;
          }

          if (v80 < 1)
          {
            goto LABEL_209;
          }

          v31 = v81;
          v82 = v78 + 32;
          v62 = sub_26890CAA0(&qword_2802A5BD0, &qword_2802A5BC8, &unk_268B3C6A0);
          for (i = 0; i != v80; ++i)
          {
            v83 = OUTLINED_FUNCTION_231_0();
            __swift_instantiateConcreteTypeFromMangledNameV2(v83, v84);
            v85 = sub_26892D47C(v277, i, v69);
            v1 = *v86;
            v85(v277, 0);
            *(v82 + 8 * i) = v1;
          }

          OUTLINED_FUNCTION_264_0();
          goto LABEL_96;
        }

        goto LABEL_100;
      }

      i = v69 & 0xFFFFFFFFFFFFFF8;
      v31 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
LABEL_100:

        if (v70 > 0)
        {
          goto LABEL_187;
        }

        continue;
      }

      break;
    }

    if (v77 >= v31)
    {
      type metadata accessor for MediaStream();
      swift_arrayInitWithCopy();
LABEL_96:

      if (v31 < v70)
      {
        goto LABEL_187;
      }

      if (v31 > 0)
      {
        v87 = *(v265 + 16);
        v38 = __OFADD__(v87, v31);
        v88 = &v31[v87];
        if (v38)
        {
          goto LABEL_193;
        }

        *(v265 + 16) = v88;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  OUTLINED_FUNCTION_122_0(&v269);
  OUTLINED_FUNCTION_209_1();
  OUTLINED_FUNCTION_12_3();
  v242();
  v243 = sub_268B37A34();
  v244 = sub_268B37EE4();
  if (OUTLINED_FUNCTION_115_0(v244))
  {
    v245 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_10(v245);
    OUTLINED_FUNCTION_57();
    _os_log_impl(v246, v247, v248, v249, v250, 2u);
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_17_2();
  v251();
  OUTLINED_FUNCTION_117_0();
  sub_2688FB73C(v253, v254, *(v252 - 256));

LABEL_177:

LABEL_149:
LABEL_150:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688FB73C(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v41 = a3;
  v42 = a2;
  v5 = sub_268B37A54();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2688F442C(a1);
  v9 = sub_2688EFD0C(v8);
  v10 = 0;
  v11 = v8 & 0xC000000000000001;
  v12 = v8 & 0xFFFFFFFFFFFFFF8;
  v13 = v8 + 32;
  v39 = v8 & 0xC000000000000001;
  v40 = v9;
  v37 = v8 + 32;
  v38 = v8 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v10 != v9)
  {
    if (v11)
    {
      v14 = MEMORY[0x26D625BD0](v10, v8);
    }

    else
    {
      if (v10 >= *(v12 + 16))
      {
        goto LABEL_30;
      }

      v14 = *(v13 + 8 * v10);
    }

    v3 = v14;
    if (__OFADD__(v10++, 1))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      swift_once();
LABEL_21:
      v23 = v36;
      v24 = __swift_project_value_buffer(v36, qword_2802CDA10);
      v26 = v34;
      v25 = v35;
      (*(v35 + 16))(v34, v24, v23);
      v27 = sub_268B37A34();
      v28 = sub_268B37F04();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_2688BB000, v27, v28, "Multiple sources found, but one of them contains the local device. Choosing that one as the source", v29, 2u);
        MEMORY[0x26D6266E0](v29, -1, -1);
      }

      (*(v25 + 8))(v26, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_268B3BBA0;
      *(v30 + 32) = v3;
      v31 = v3;
      v42(v30);
    }

    v16 = sub_2688F42F4(v14);
    if (v16)
    {
      v17 = v16;
      v18 = sub_2688EFD0C(v16);
      v19 = 0;
      do
      {
        if (v18 == v19)
        {

          v11 = v39;
          v9 = v40;
          v13 = v37;
          v12 = v38;
          goto LABEL_2;
        }

        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x26D625BD0](v19, v17);
        }

        else
        {
          if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v20 = *(v17 + 8 * v19 + 32);
        }

        v21 = v20;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v22 = sub_268983434();

        ++v19;
      }

      while ((v22 & 1) == 0);

      if (qword_2802A4F30 != -1)
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }
  }

  v42(v8);
}

uint64_t sub_2688FBAB0(uint64_t a1, void *a2, void (*a3)(uint64_t), NSObject *a4)
{
  v112 = a2;
  v7 = sub_268B371E4();
  v101 = *(v7 - 8);
  v102 = v7;
  v8 = *(v101 + 64);
  MEMORY[0x28223BE20](v7);
  v100 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v97 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v103 = &v96 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v99 = &v96 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v96 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v96 - v22;
  v24 = swift_allocObject();
  v98 = a3;
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v104 = v24;
  v25 = qword_2802A4F30;

  if (v25 != -1)
  {
    goto LABEL_63;
  }

LABEL_2:
  v105 = a4;
  v26 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v27 = v11[2];
  v106 = v26;
  v107 = v27;
  v108 = v11 + 2;
  (v27)(v23);
  a4 = sub_268B37A34();
  v28 = sub_268B37F04();
  if (os_log_type_enabled(a4, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, a4, v28, "Resolving add source from context", v29, 2u);
    MEMORY[0x26D6266E0](v29, -1, -1);
  }

  v30 = v11[1];
  v110 = v11 + 1;
  v111 = v10;
  v109 = v30;
  v30(v23, v10);
  v31 = sub_2688EFD0C(a1);
  v23 = 0;
  v10 = a1 & 0xC000000000000001;
  v11 = (a1 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v31 == v23)
    {
      a4 = 0;
      goto LABEL_14;
    }

    if (v10)
    {
      v32 = MEMORY[0x26D625BD0](v23, a1);
    }

    else
    {
      if (v23 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v32 = *(a1 + 8 * v23 + 32);
    }

    a4 = v32;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      swift_once();
      goto LABEL_2;
    }

    v33 = [v32 proximity];
    if ((v33 - 1) >= 4)
    {
      break;
    }

    ++v23;
  }

  v90 = v33;
  if (v33)
  {

    v113 = v90;
    sub_268B38474();
    __break(1u);
    goto LABEL_54;
  }

LABEL_14:
  v34 = v112[11];
  v23 = __swift_project_boxed_opaque_existential_1(v112 + 7, v112[10]);
  v35 = sub_2688C337C(a4);
  if (!a4 || (v35 & 1) == 0)
  {
    v21 = 0;
    v113 = MEMORY[0x277D84F90];
    v44 = &unk_279C42000;
    while (v31 != v21)
    {
      if (v10)
      {
        v45 = MEMORY[0x26D625BD0](v21, a1);
      }

      else
      {
        if (v21 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v45 = *(a1 + 8 * v21 + 32);
      }

      v46 = v45;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_59;
      }

      if ([v45 v44[461]] == 1)
      {
        v23 = &v113;
        sub_268B38214();
        v47 = v44;
        v48 = *(v113 + 16);
        sub_268B38244();
        v44 = v47;
        sub_268B38254();
        sub_268B38224();
      }

      else
      {
      }

      ++v21;
    }

    v49 = v113;
    if (sub_2688EFD0C(v113))
    {
      v50 = v103;
      v51 = v111;
      v107(v103, v106, v111);

      v52 = sub_268B37A34();
      v53 = sub_268B37F04();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v113 = v55;
        *v54 = 136315138;
        v56 = type metadata accessor for DeviceContext();
        v57 = MEMORY[0x26D6256F0](v49, v56);
        v59 = sub_26892CDB8(v57, v58, &v113);

        *(v54 + 4) = v59;
        _os_log_impl(&dword_2688BB000, v52, v53, "Found pausable devices from context: %s. Creating device groups", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v55);
        MEMORY[0x26D6266E0](v55, -1, -1);
        MEMORY[0x26D6266E0](v54, -1, -1);

        v60 = v103;
      }

      else
      {

        v60 = v50;
      }

      v109(v60, v51);
      v77 = v104;
      v78 = swift_allocObject();
      *(v78 + 16) = MEMORY[0x277D84F90];
      v79 = v100;
      sub_268B37164();
      sub_268902AB0(v49, v79, v80, v81, v82, v83, v84, v85, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);

      (*(v101 + 8))(v79, v102);
      v86 = v112;
      v87 = v112[5];
      v111 = v112[6];
      __swift_project_boxed_opaque_existential_1(v112 + 2, v87);
      v88 = swift_allocObject();
      v88[2] = a1;
      v88[3] = v78;
      v88[4] = v86;
      v88[5] = sub_26890CAF4;
      v88[6] = v77;

      sub_268B37424();
    }

    else
    {

      v107(v99, v106, v111);
      v23 = sub_268B37A34();
      v21 = sub_268B37EE4();
      if (os_log_type_enabled(v23, v21))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_2688BB000, v23, v21, "No pausable contexts were found. Looking for devices with paused content on screen", v61, 2u);
        MEMORY[0x26D6266E0](v61, -1, -1);
      }

      v109(v99, v111);
      v62 = 0;
      v113 = MEMORY[0x277D84F90];
      while (v31 != v62)
      {
        if (v10)
        {
          v63 = MEMORY[0x26D625BD0](v62, a1);
        }

        else
        {
          if (v62 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v63 = *(a1 + 8 * v62 + 32);
        }

        v21 = v63;
        if (__OFADD__(v62, 1))
        {
          goto LABEL_61;
        }

        if ([v63 v44[461]] == 2)
        {
          v23 = &v113;
          sub_268B38214();
          v64 = *(v113 + 16);
          sub_268B38244();
          sub_268B38254();
          sub_268B38224();
        }

        else
        {
        }

        ++v62;
      }

      v65 = v113;
      if (sub_2688EFD0C(v113))
      {
        v66 = swift_allocObject();
        *(v66 + 16) = MEMORY[0x277D84F90];
        v67 = v100;
        sub_268B371A4();
        sub_268902AB0(v65, v67, v68, v69, v70, v71, v72, v73, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);

        (*(v101 + 8))(v67, v102);
        v74 = v112;
        v75 = v112[6];
        __swift_project_boxed_opaque_existential_1(v112 + 2, v112[5]);
        v76 = swift_allocObject();
        v76[2] = a1;
        v76[3] = v66;
        v76[4] = v74;
        v76[5] = sub_26890CAF4;
        v76[6] = v104;

        sub_268B37424();
      }

LABEL_54:

      v91 = v97;
      v92 = v111;
      v107(v97, v106, v111);
      v93 = sub_268B37A34();
      v94 = sub_268B37EE4();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_2688BB000, v93, v94, "No pausable contexts were found, and no contexts with paused content on the screen either. Bailing...", v95, 2u);
        MEMORY[0x26D6266E0](v95, -1, -1);
      }

      v109(v91, v92);
      sub_2688FB73C(MEMORY[0x277D84F90], v98, v105);
    }
  }

  v36 = v111;
  v107(v21, v106, v111);
  v37 = a4;
  v38 = sub_268B37A34();
  v39 = sub_268B37F04();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2688BB000, v38, v39, "Local device is playing or has paused content on screen. Choosing local device as the source", v40, 2u);
    MEMORY[0x26D6266E0](v40, -1, -1);
  }

  v109(v21, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_268B3BBA0;
  type metadata accessor for GroupingUtil();
  v42 = v37;
  v43 = sub_268A03764(a4);

  *(v41 + 32) = v43;
  sub_2688FB73C(v41, v98, v105);
}

uint64_t sub_2688FC64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_268A0358C(a2, a1);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v14, v16, v10);

  v35 = v14;
  v17 = sub_268B37A34();
  v18 = sub_268B37F04();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = v11;
    v20 = v19;
    v32 = swift_slowAlloc();
    v36 = v32;
    *v20 = 136315138;
    v21 = type metadata accessor for Device();
    v22 = MEMORY[0x26D6256F0](v15, v21);
    v33 = v10;
    v24 = sub_26892CDB8(v22, v23, &v36);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_2688BB000, v17, v18, "Found the following devices with paused content on the screen: %s", v20, 0xCu);
    v25 = v32;
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x26D6266E0](v25, -1, -1);
    MEMORY[0x26D6266E0](v20, -1, -1);

    (*(v34 + 8))(v35, v33);
  }

  else
  {

    (*(v11 + 8))(v35, v10);
  }

  v26 = *(a4 + 104);
  v27 = sub_268A08F04();

  swift_beginAccess();
  v28 = *(a3 + 16);
  *(a3 + 16) = v27;

  a5(v29);
}

uint64_t sub_2688FC92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_268A0358C(a2, a1);
  v8 = *(a4 + 104);
  v9 = sub_268A08F04();

  swift_beginAccess();
  v10 = *(a3 + 16);
  *(a3 + 16) = v9;

  a5(v11);
}

void sub_2688FC9D4()
{
  OUTLINED_FUNCTION_26();
  v74 = v2;
  v75 = v0;
  v77 = v4;
  v78 = v3;
  v6 = v5;
  v76 = v7;
  v8 = sub_268B37464();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v81 = v14;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA0, &unk_268B41020);
  OUTLINED_FUNCTION_4(v87);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v17);
  v19 = &v73 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  v21 = OUTLINED_FUNCTION_22(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_2(v24, v73);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_78();
  v88 = v27;
  OUTLINED_FUNCTION_9();
  v28 = sub_268B37A54();
  v29 = OUTLINED_FUNCTION_1(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_0();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v28, qword_2802CDA10);
  v34 = OUTLINED_FUNCTION_139(v31);
  v35(v34);
  v36 = sub_268B37A34();
  v37 = sub_268B37F04();
  v38 = os_log_type_enabled(v36, v37);
  v79 = v6;
  if (v38)
  {
    v39 = OUTLINED_FUNCTION_14();
    *v39 = 0;
    _os_log_impl(&dword_2688BB000, v36, v37, "Resolving destination groups for add", v39, 2u);
    v6 = v79;
    OUTLINED_FUNCTION_12();
  }

  v40 = *(v31 + 8);
  v41 = OUTLINED_FUNCTION_189();
  v42(v41);
  v43 = *(v6 + 16);
  if (!v43)
  {
LABEL_18:
    v63 = 0;
    goto LABEL_20;
  }

  v44 = v6 + 32;
  v86 = (v11 + 104);
  v80 = (v11 + 32);
  v85 = *MEMORY[0x277D5F870];
  v83 = (v11 + 8);
  while (1)
  {
    sub_26890C900(v44, v89);
    __swift_project_boxed_opaque_existential_1(v89, v89[3]);
    v45 = v88;
    sub_268B37604();
    (*v86)(v1, v85, v8);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v8);
    v49 = *(v87 + 48);
    sub_26890C964(v45, v19, &qword_2802A5BA8, &qword_268B3C690);
    sub_26890C964(v1, &v19[v49], &qword_2802A5BA8, &qword_268B3C690);
    OUTLINED_FUNCTION_54_0(v19);
    if (v52)
    {
      break;
    }

    sub_26890C964(v19, v84, &qword_2802A5BA8, &qword_268B3C690);
    OUTLINED_FUNCTION_54_0(&v19[v49]);
    if (v52)
    {
      sub_2688C058C(v1, &qword_2802A5BA8, &qword_268B3C690);
      v53 = OUTLINED_FUNCTION_231_0();
      sub_2688C058C(v53, v54, &qword_268B3C690);
      v55 = *v83;
      v56 = OUTLINED_FUNCTION_213_0();
      v57(v56);
LABEL_15:
      sub_2688C058C(v19, &qword_2802A5BA0, &unk_268B41020);
      __swift_destroy_boxed_opaque_existential_0Tm(v89);
      goto LABEL_17;
    }

    v58 = v81;
    (*v80)(v81, &v19[v49], v8);
    OUTLINED_FUNCTION_148_0();
    sub_26890D6F8(&qword_2802A5BB0, v59);
    OUTLINED_FUNCTION_223_0();
    v82 = sub_268B37BB4();
    v60 = *v83;
    (*v83)(v58, v8);
    v61 = OUTLINED_FUNCTION_230_0();
    sub_2688C058C(v61, v62, &qword_268B3C690);
    sub_2688C058C(v88, &qword_2802A5BA8, &qword_268B3C690);
    v60(v84, v8);
    sub_2688C058C(v19, &qword_2802A5BA8, &qword_268B3C690);
    __swift_destroy_boxed_opaque_existential_0Tm(v89);
    if (v82)
    {
      goto LABEL_19;
    }

LABEL_17:
    v44 += 40;
    if (!--v43)
    {
      goto LABEL_18;
    }
  }

  sub_2688C058C(v1, &qword_2802A5BA8, &qword_268B3C690);
  v50 = OUTLINED_FUNCTION_231_0();
  sub_2688C058C(v50, v51, &qword_268B3C690);
  OUTLINED_FUNCTION_54_0(&v19[v49]);
  if (!v52)
  {
    goto LABEL_15;
  }

  sub_2688C058C(v19, &qword_2802A5BA8, &qword_268B3C690);
  __swift_destroy_boxed_opaque_existential_0Tm(v89);
LABEL_19:
  v63 = 1;
LABEL_20:
  v64 = v75;
  v65 = *(v75 + 104);
  v66 = swift_allocObject();
  v68 = v76;
  v67 = v77;
  *(v66 + 16) = v64;
  *(v66 + 24) = v68;
  v69 = v78;
  *(v66 + 32) = v78;
  *(v66 + 40) = v63;
  v70 = v79;
  v71 = v74;
  *(v66 + 48) = v79;
  *(v66 + 56) = v71;
  *(v66 + 64) = v67;

  v72 = v68;

  sub_268A04D9C(v70, v69, 1, sub_26890CA88, v66);

  OUTLINED_FUNCTION_23();
}

void sub_2688FCF9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BB8, &qword_268B3C698);
  sub_26890CAA0(&qword_2802A5BC0, &qword_2802A5BB8, &qword_268B3C698);
  sub_268B37EA4();
  sub_2688FD068();
}

void sub_2688FD068()
{
  OUTLINED_FUNCTION_26();
  v173 = v0;
  v176 = v3;
  LODWORD(v170) = v4;
  LODWORD(v172) = v5;
  v168 = v6;
  v8 = v7;
  v10 = v9;
  v11 = sub_268B37A54();
  v174 = OUTLINED_FUNCTION_1(v11);
  v175 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v174);
  OUTLINED_FUNCTION_9_2(v15, v158);
  v17 = MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_33_0(v17, v18, v19, v20, v21, v22, v23, v24, v159);
  v26 = MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_20_1(v26, v27, v28, v29, v30, v31, v32, v33, v160);
  v35 = MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_21_1(v35, v36, v37, v38, v39, v40, v41, v42, v161);
  v44 = MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_32_0(v44, v45, v46, v47, v48, v49, v50, v51, v162);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_18();
  v165 = v53;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_78();
  v169 = v55;
  v178 = MEMORY[0x277D84F90];
  v56 = sub_2688EFD0C(v8);
  v57 = v56;
  v58 = 0;
  v59 = v8 & 0xC000000000000001;
  while (v57 != v58)
  {
    if (v59)
    {
      v56 = MEMORY[0x26D625BD0](v58, v8);
    }

    else
    {
      if (v58 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v56 = *(v8 + 8 * v58 + 32);
    }

    v2 = v56;
    if (__OFADD__(v58, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      if (!v56)
      {

        sub_2688F3558();
        v65 = v175;
        if (v104)
        {
          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_2();
            swift_once();
          }

          OUTLINED_FUNCTION_82(v174, qword_2802CDA10);
          v170 = v105;
          v171 = *(v175 + 16);
          v171(v165);
          v106 = sub_268B37A34();
          sub_268B37EC4();
          OUTLINED_FUNCTION_149_0();
          if (os_log_type_enabled(v106, v107))
          {
            v108 = OUTLINED_FUNCTION_14();
            *v108 = 0;
            _os_log_impl(&dword_2688BB000, v106, v10, "Local device is the source. Checking if this is a add this to the rest of the room/zone request", v108, 2u);
            OUTLINED_FUNCTION_12();
          }

          v109 = *(v175 + 8);
          v65 = v175 + 8;
          v175 += 8;
          v172 = v109;
          v109(v165, v174);
          v173 = v2;
          v10 = sub_2689CB550();
          v110 = sub_2688EFD0C(v10);
          v111 = 0;
          while (1)
          {
            if (v110 == v111)
            {
              goto LABEL_87;
            }

            if ((v10 & 0xC000000000000001) != 0)
            {
              v112 = MEMORY[0x26D625BD0](v111, v10);
            }

            else
            {
              if (v111 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_102;
              }

              v112 = *(v10 + 8 * v111 + 32);
            }

            v113 = v112;
            if (__OFADD__(v111, 1))
            {
              break;
            }

            v65 = sub_268983434();

            ++v111;
            if (v65)
            {

              v137 = v2;
              sub_2689CB8A8();
              v139 = v138;

              if (v139)
              {
                (v171)(v163, v170, v174);
                v140 = sub_268B37A34();
                v141 = sub_268B37ED4();
                if (OUTLINED_FUNCTION_19(v141))
                {
                  v142 = OUTLINED_FUNCTION_14();
                  OUTLINED_FUNCTION_81(v142);
                  OUTLINED_FUNCTION_27();
                  _os_log_impl(v143, v144, v145, v146, v147, 2u);
                  OUTLINED_FUNCTION_83_0();
                }

                v172(v163, v174);
                v148 = v8;
LABEL_95:
                (v176)(v148);

                goto LABEL_84;
              }

LABEL_92:
              (v171)(v164, v170, v174);
              v149 = sub_268B37A34();
              v150 = sub_268B37EE4();
              if (OUTLINED_FUNCTION_19(v150))
              {
                v151 = OUTLINED_FUNCTION_14();
                OUTLINED_FUNCTION_81(v151);
                OUTLINED_FUNCTION_27();
                _os_log_impl(v152, v153, v154, v155, v156, 2u);
                OUTLINED_FUNCTION_83_0();
              }

              v157 = OUTLINED_FUNCTION_150();
              (v172)(v157);
              v148 = MEMORY[0x277D84F90];
              goto LABEL_95;
            }
          }

          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          v96 = MEMORY[0x26D625BD0](0, v8);
          goto LABEL_31;
        }

        goto LABEL_61;
      }

LABEL_86:
      v178 = v56;
      sub_268B38474();
      __break(1u);
LABEL_87:

      v137 = v173;
      goto LABEL_92;
    }

    v177 = v56;
    if (sub_2688FDC3C(&v177))
    {
      v0 = &v178;
      sub_268B38214();
      v1 = v178[2];
      sub_268B38244();
      sub_268B38254();
      v56 = sub_268B38224();
    }

    else
    {
    }

    ++v58;
  }

  v60 = OUTLINED_FUNCTION_268_0();
  if (sub_2688EFD0C(v60))
  {
    sub_2688FE814(v172 & 1, v8);
    if ((v61 & 1) == 0)
    {
      if (qword_2802A4F30 != -1)
      {
        goto LABEL_100;
      }

      goto LABEL_24;
    }

    sub_2688FE880();
    v176();
    OUTLINED_FUNCTION_23();

    return;
  }

  v63 = sub_2688EFD0C(v8);
  if (v63 >= 2)
  {
    sub_268903178();
    v66 = v174;
    v65 = v175;
    if (v64)
    {
      v67 = v64;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      OUTLINED_FUNCTION_82(v174, qword_2802CDA10);
      OUTLINED_FUNCTION_120();
      v68(v169);
      v69 = v67;
      v70 = sub_268B37A34();
      sub_268B37F04();

      if (OUTLINED_FUNCTION_214_0())
      {
        OUTLINED_FUNCTION_172_0();
        v71 = OUTLINED_FUNCTION_120_0();
        OUTLINED_FUNCTION_144_0(v71);
        *v169 = 136315138;
        v72 = [v69 debugDescription];
        sub_268B37BF4();
        v74 = v73;

        v75 = OUTLINED_FUNCTION_265_0();
        v77 = sub_26892CDB8(v75, v74, v76);

        *(v169 + 4) = v77;
        OUTLINED_FUNCTION_57();
        _os_log_impl(v78, v79, v80, v81, v82, 0xCu);
        OUTLINED_FUNCTION_73_0();
        OUTLINED_FUNCTION_6();
      }

      (*(v175 + 8))(v169, v174);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_268B3BBA0;
      *(v101 + 32) = v69;
      v102 = v69;
      v103 = OUTLINED_FUNCTION_137_0();
      (v176)(v103);

      goto LABEL_84;
    }

    goto LABEL_63;
  }

  if (v57 && v63 == 1)
  {
    sub_2688EFD10(0, v59 == 0, v8);
    v65 = v175;
    if (v59)
    {
      goto LABEL_103;
    }

    v96 = *(v8 + 32);
LABEL_31:
    v2 = v96;
    v97 = sub_2688F42F4(v10);
    if (!v97)
    {
LABEL_61:

      goto LABEL_62;
    }

    v58 = v97;
    v59 = sub_2688EFD0C(v97);
    v98 = 0;
    v1 = (v58 & 0xC000000000000001);
    while (v59 != v98)
    {
      if (v1)
      {
        v99 = MEMORY[0x26D625BD0](v98, v58);
      }

      else
      {
        if (v98 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_99;
        }

        v99 = *(v58 + 8 * v98 + 32);
      }

      v0 = v99;
      if (__OFADD__(v98, 1))
      {
        goto LABEL_98;
      }

      sub_2689840D4();
      OUTLINED_FUNCTION_179_0();
      if (v100)
      {
        goto LABEL_46;
      }

      ++v98;
    }
  }

  v65 = v175;
LABEL_62:
  v66 = v174;
LABEL_63:
  if (v170)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    OUTLINED_FUNCTION_82(v66, qword_2802CDA10);
    OUTLINED_FUNCTION_120();
    v114();
    v115 = sub_268B37A34();
    v116 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v116))
    {
      v117 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v117);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v118, v119, v120, v121, v122, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    (*(v65 + 8))(v167, v66);
    (v176)(MEMORY[0x277D84F90]);
    goto LABEL_84;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v66, qword_2802CDA10);
  OUTLINED_FUNCTION_120();
  v123();
  v58 = sub_268B37A34();
  v124 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v124))
  {
    v125 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_10(v125);
    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_206_0(v126, v127, v128, v129);
    OUTLINED_FUNCTION_6();
  }

  (*(v65 + 8))(v166, v66);
  v130 = sub_2688EFD0C(v168);
  v59 = 0;
  v1 = &unk_279C42000;
  while (1)
  {
    if (v130 == v59)
    {
      v58 = 0;
      goto LABEL_83;
    }

    if ((v168 & 0xC000000000000001) != 0)
    {
      v131 = MEMORY[0x26D625BD0](v59, v168);
    }

    else
    {
      if (v59 >= *((v168 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }

      v131 = *(v168 + 8 * v59 + 32);
    }

    v58 = v131;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    [v131 proximity];
    OUTLINED_FUNCTION_179_0();
    if (v100)
    {
      if (v56)
      {
        goto LABEL_86;
      }

LABEL_83:
      type metadata accessor for GroupingUtil();
      v132 = OUTLINED_FUNCTION_129();
      v133 = sub_268A03764(v132);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v134 = swift_allocObject();
      *(v134 + 16) = xmmword_268B3BBA0;
      type metadata accessor for DeviceGroup();
      OUTLINED_FUNCTION_220();
      v135 = swift_allocObject();
      *(v135 + 16) = xmmword_268B3BBA0;
      *(v135 + 32) = v133;
      v136 = v133;
      *(v134 + 32) = sub_2689CBA40(0, 0, 5, 0, v135);
      (v176)(v134);

      goto LABEL_84;
    }

    ++v59;
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  OUTLINED_FUNCTION_0_2();
  swift_once();
LABEL_24:
  OUTLINED_FUNCTION_82(v174, qword_2802CDA10);
  (*(v175 + 16))(v171);

  v83 = sub_268B37A34();
  sub_268B37F04();

  if (OUTLINED_FUNCTION_214_0())
  {
    OUTLINED_FUNCTION_172_0();
    v84 = OUTLINED_FUNCTION_120_0();
    OUTLINED_FUNCTION_144_0(v84);
    OUTLINED_FUNCTION_134_0(4.8149e-34);
    v85 = type metadata accessor for DeviceGroup();
    v86 = MEMORY[0x26D6256F0](v58, v85);
    OUTLINED_FUNCTION_220_0(v86, v87);
    OUTLINED_FUNCTION_241();
    *(v59 + 4) = v1;
    OUTLINED_FUNCTION_57();
    _os_log_impl(v88, v89, v90, v91, v92, 0xCu);
    OUTLINED_FUNCTION_73_0();
    OUTLINED_FUNCTION_6();
  }

  v93 = *(v175 + 8);
  v94 = OUTLINED_FUNCTION_271_0();
  v95(v94);
  (v176)(v58);

LABEL_84:
  OUTLINED_FUNCTION_23();
}

BOOL sub_2688FDC3C(id *a1)
{
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if ([*a1 type] == 4)
  {
    return 1;
  }

  if ([v8 type] == 5)
  {
    if (qword_2802A4F30 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_5;
  }

  v14 = sub_2689CC34C(v8);
  if (!v14)
  {
    return 1;
  }

  v3 = v14;
  v35 = v8;
  v36 = v1;
  v7 = sub_2688EFD0C(v14);
  v4 = 0;
  v37 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v7 == v4)
    {

      return 1;
    }

    if (v37)
    {
      v15 = MEMORY[0x26D625BD0](v4, v3);
    }

    else
    {
      if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v15 = *(v3 + 8 * v4 + 32);
    }

    v16 = v15;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v17 = [v15 groupLeader];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 context];

      if (v19)
      {
        v18 = sub_268AE10A4(v19);
        v21 = v20;
        goto LABEL_20;
      }

      v18 = 0;
    }

    v21 = 0;
LABEL_20:
    v22 = sub_2688F3558();
    if (!v21)
    {
      if (!v23)
      {

        goto LABEL_36;
      }

LABEL_30:

      goto LABEL_31;
    }

    if (!v23)
    {
      goto LABEL_30;
    }

    if (v18 == v22 && v21 == v23)
    {

LABEL_35:

LABEL_36:
      sub_2689CB3F8(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36);
      return v34 != 1;
    }

    v25 = sub_268B38444();

    if (v25)
    {
      goto LABEL_35;
    }

LABEL_31:
    ++v4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  swift_once();
LABEL_5:
  v10 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v4 + 16))(v7, v10, v3);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "User asked to control *this* and local device is an ambiguousEntity. Removing from possible destinations.", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  return 0;
}

void sub_2688FDFDC()
{
  OUTLINED_FUNCTION_26();
  v66 = v0;
  v67 = v2;
  v65 = v3;
  v68 = v4;
  OUTLINED_FUNCTION_275_0();
  v5 = sub_268B37464();
  v6 = OUTLINED_FUNCTION_1(v5);
  v72 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v70 = v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA0, &unk_268B41020);
  OUTLINED_FUNCTION_4(v76);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  v17 = OUTLINED_FUNCTION_22(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_2(v20, v64);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v64 - v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_78();
  v77 = v25;
  OUTLINED_FUNCTION_9();
  v26 = sub_268B37A54();
  v27 = OUTLINED_FUNCTION_1(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v26, qword_2802CDA10);
  v32 = OUTLINED_FUNCTION_139(v29);
  v33(v32);
  v34 = sub_268B37A34();
  v35 = sub_268B37F04();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_14();
    *v36 = 0;
    _os_log_impl(&dword_2688BB000, v34, v35, "Resolving destination groups for moveSpeaker request", v36, 2u);
    OUTLINED_FUNCTION_12();
  }

  v37 = *(v29 + 8);
  v38 = OUTLINED_FUNCTION_189();
  v39(v38);
  v40 = *(v1 + 16);
  if (!v40)
  {
    v59 = 0;
    goto LABEL_22;
  }

  v64 = v1;
  v41 = v1 + 32;
  v75 = (v72 + 13);
  v69 = (v72 + 4);
  v74 = *MEMORY[0x277D5F870];
  ++v72;
  while (1)
  {
    sub_26890C900(v41, v78);
    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    OUTLINED_FUNCTION_129();
    v43 = v42;
    sub_268B37604();
    (*v75)(v24, v74, v5);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v5);
    v47 = *(v76 + 48);
    sub_26890C964(v43, v15, &qword_2802A5BA8, &qword_268B3C690);
    sub_26890C964(v24, &v15[v47], &qword_2802A5BA8, &qword_268B3C690);
    OUTLINED_FUNCTION_278_0(v15);
    if (v51)
    {
      break;
    }

    v50 = v73;
    sub_26890C964(v15, v73, &qword_2802A5BA8, &qword_268B3C690);
    OUTLINED_FUNCTION_278_0(&v15[v47]);
    if (v51)
    {
      v52 = OUTLINED_FUNCTION_191();
      sub_2688C058C(v52, v53, &qword_268B3C690);
      OUTLINED_FUNCTION_241_0(v43);
      (*v72)(v50, v5);
LABEL_15:
      sub_2688C058C(v15, &qword_2802A5BA0, &unk_268B41020);
      __swift_destroy_boxed_opaque_existential_0Tm(v78);
      goto LABEL_17;
    }

    v54 = v70;
    (*v69)(v70, &v15[v47], v5);
    OUTLINED_FUNCTION_148_0();
    sub_26890D6F8(&qword_2802A5BB0, v55);
    OUTLINED_FUNCTION_212_0();
    v71 = sub_268B37BB4();
    v56 = *v72;
    (*v72)(v54, v5);
    v57 = OUTLINED_FUNCTION_191();
    sub_2688C058C(v57, v58, &qword_268B3C690);
    OUTLINED_FUNCTION_241_0(v77);
    v56(v73, v5);
    OUTLINED_FUNCTION_241_0(v15);
    __swift_destroy_boxed_opaque_existential_0Tm(v78);
    if (v71)
    {
      goto LABEL_20;
    }

LABEL_17:
    v41 += 40;
    if (!--v40)
    {
      v59 = 0;
      goto LABEL_21;
    }
  }

  v48 = OUTLINED_FUNCTION_191();
  sub_2688C058C(v48, v49, &qword_268B3C690);
  OUTLINED_FUNCTION_241_0(v43);
  OUTLINED_FUNCTION_278_0(&v15[v47]);
  if (!v51)
  {
    goto LABEL_15;
  }

  sub_2688C058C(v15, &qword_2802A5BA8, &qword_268B3C690);
  __swift_destroy_boxed_opaque_existential_0Tm(v78);
LABEL_20:
  v59 = 1;
LABEL_21:
  v1 = v64;
LABEL_22:
  v60 = v66;
  v61 = *(v66 + 104);
  v62 = swift_allocObject();
  *(v62 + 16) = v60;
  *(v62 + 24) = v59;
  v63 = v67;
  *(v62 + 32) = v65;
  *(v62 + 40) = v63;

  sub_268A04D9C(v1, v68, 0, sub_26890CA00, v62);

  OUTLINED_FUNCTION_23();
}

void sub_2688FE558()
{
  OUTLINED_FUNCTION_26();
  v23 = v1;
  v22 = v2;
  v4 = v3;
  v5 = sub_268B37A54();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v27 = MEMORY[0x277D84F90];
  v14 = sub_2688EFD0C(v4);
  v15 = 0;
  v25 = (v8 + 8);
  v26 = (v8 + 16);
  v24 = v13;
  while (v14 != v15)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x26D625BD0](v15, v4);
    }

    else
    {
      if (v15 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v16 = *(v4 + 8 * v15 + 32);
    }

    v17 = v16;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    if ([v16 type] == 5)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      OUTLINED_FUNCTION_82(v5, qword_2802CDA10);
      (*v26)(v13);
      v18 = sub_268B37A34();
      v19 = sub_268B37F04();
      if (OUTLINED_FUNCTION_115_0(v19))
      {
        v20 = OUTLINED_FUNCTION_14();
        *v20 = 0;
        _os_log_impl(&dword_2688BB000, v18, v0, "User asked to control *this* and local device is an ambiguousEntity. Removing from possible destinations.", v20, 2u);
        v13 = v24;
        OUTLINED_FUNCTION_12();
      }

      (*v25)(v13, v5);
    }

    else
    {
      sub_268B38214();
      v0 = *(v27 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    ++v15;
  }

  sub_2688FE814(v22 & 1, v4);
  if (v21)
  {

    sub_2688FE880();
    v23();
  }

  else
  {
    (v23)(v27);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2688FE814(char a1, unint64_t a2)
{
  if (a1)
  {
    if (a2 >> 62)
    {
      v2 = sub_268B382A4();
    }

    else
    {
      v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v2 >= 2)
    {
      sub_268903178();
      if (v3)
      {
      }
    }
  }
}

void sub_2688FE880()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_275_0();
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v66 - v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_78();
  v74 = v12;
  if (sub_2688EFD0C(v1) < 2 || (sub_268903178(), (v73 = v13) == 0))
  {
    if (qword_2802A4F30 != -1)
    {
LABEL_47:
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_2802CDA10);
    v24 = OUTLINED_FUNCTION_51_0();
    v25(v24);
    v26 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_149_0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_136_0(v28);
      _os_log_impl(&dword_2688BB000, v26, v0, "Cannot filter out excluded groups since superset group cannot be determined", v11, 2u);
      OUTLINED_FUNCTION_84_0();
    }

    v29 = *(v5 + 8);
    v30 = OUTLINED_FUNCTION_189();
    v31(v30);
    goto LABEL_44;
  }

  v67 = v11;
  v68 = v5;
  v75 = MEMORY[0x277D84F90];
  v14 = sub_2688EFD0C(v1);
  v15 = 0;
  v11 = (v1 & 0xC000000000000001);
  v16 = v1 & 0xFFFFFFFFFFFFFF8;
  v5 = v2;
  while (v14 != v15)
  {
    if (v11)
    {
      v2 = v1;
      v17 = MEMORY[0x26D625BD0](v15, v1);
    }

    else
    {
      if (v15 >= *(v16 + 16))
      {
        goto LABEL_46;
      }

      v2 = v1;
      v17 = *(v1 + 8 * v15 + 32);
    }

    v18 = v17;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v0 = sub_2689CC3AC(v17);
    v20 = v19;
    v21 = sub_2689CC3AC(v73);
    if (!v20)
    {
      if (v22)
      {
LABEL_18:

LABEL_19:
        sub_268B38214();
        v0 = *(v75 + 16);
        sub_268B38244();
        sub_268B38254();
        sub_268B38224();
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (!v22)
    {
      goto LABEL_18;
    }

    if (v0 != v21 || v20 != v22)
    {
      LOBYTE(v0) = sub_268B38444();

      if ((v0 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_20:

      goto LABEL_22;
    }

LABEL_22:
    ++v15;
    v1 = v2;
    v2 = v5;
  }

  v32 = v75;
  v33 = sub_2688EFD0C(v75);
  if (!v33)
  {
    goto LABEL_39;
  }

  v34 = v33;
  v66[1] = v1;
  v35 = sub_2688C063C();
  if (v34 < 1)
  {
    __break(1u);
  }

  else
  {
    v37 = v35;
    v38 = 0;
    v39 = v32 & 0xC000000000000001;
    v71 = (v68 + 8);
    v72 = (v68 + 16);
    *&v36 = 138412290;
    v69 = v36;
    v70 = v32 & 0xC000000000000001;
    do
    {
      if (v39)
      {
        v40 = OUTLINED_FUNCTION_271_0();
        v41 = MEMORY[0x26D625BD0](v40);
      }

      else
      {
        v41 = *(v32 + 8 * v38 + 32);
      }

      v42 = v41;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      OUTLINED_FUNCTION_82(v2, qword_2802CDA10);
      v43 = *v72;
      v44 = OUTLINED_FUNCTION_268_0();
      v45(v44);
      v46 = v42;
      v47 = sub_268B37A34();
      v48 = sub_268B37ED4();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_172_0();
        v50 = v37;
        v51 = v2;
        v52 = v34;
        v53 = v32;
        v54 = swift_slowAlloc();
        *v49 = v69;
        *(v49 + 4) = v46;
        *v54 = v46;
        v55 = v46;
        _os_log_impl(&dword_2688BB000, v47, v48, "Setting excludeGroup to true for: %@", v49, 0xCu);
        sub_2688C058C(v54, &qword_2802A6420, &unk_268B3C680);
        v32 = v53;
        v34 = v52;
        v2 = v51;
        v37 = v50;
        v39 = v70;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_84_0();
      }

      ++v38;

      (*v71)(v74, v2);
      v56 = sub_268B38054();
      [v46 setExcludeGroup_];
    }

    while (v34 != v38);
LABEL_39:

    v58 = v67;
    v57 = v68;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    OUTLINED_FUNCTION_82(v2, qword_2802CDA10);
    OUTLINED_FUNCTION_120();
    v59(v58);

    v60 = sub_268B37A34();
    v61 = sub_268B37F04();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = OUTLINED_FUNCTION_172_0();
      v75 = OUTLINED_FUNCTION_173_0();
      *v62 = 136315138;
      type metadata accessor for DeviceGroup();
      OUTLINED_FUNCTION_217_0();
      v65 = sub_26892CDB8(v63, v64, &v75);

      *(v62 + 4) = v65;
      OUTLINED_FUNCTION_277_0(&dword_2688BB000, v60, v61, "containsExcludeGroups set and found a superset group. Returning all ambiguous entities with excludeGroup flag applied to smaller entities: %s");
      OUTLINED_FUNCTION_48_0();
      OUTLINED_FUNCTION_132_0();
    }

    (*(v57 + 8))(v58, v2);
LABEL_44:

    OUTLINED_FUNCTION_23();
  }
}

void sub_2688FEE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v24;
  a20 = v25;
  v386 = v26;
  v387 = v20;
  v391 = v27;
  v380 = v28;
  v381 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B80, &qword_268B3C678);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v33);
  v379 = &v363 - v34;
  OUTLINED_FUNCTION_9();
  v35 = sub_268B36C04();
  v36 = OUTLINED_FUNCTION_1(v35);
  v383 = v37;
  v384 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  v376 = v40;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18();
  v377 = v42;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_78();
  v385 = v44;
  OUTLINED_FUNCTION_9();
  v45 = sub_268B37A54();
  v46 = OUTLINED_FUNCTION_1(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3();
  v382 = v51;
  OUTLINED_FUNCTION_8();
  v53 = MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_20_1(v53, v54, v55, v56, v57, v58, v59, v60, v363);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  v65 = MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_11_2(v65, v66, v67, v68, v69, v70, v71, v72, v363);
  v74 = MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_32_0(v74, v75, v76, v77, v78, v79, v80, v81, v363);
  v83 = MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_21_1(v83, v84, v85, v86, v87, v88, v89, v90, v363);
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_18();
  v375 = v92;
  OUTLINED_FUNCTION_8();
  v94 = MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_2_3(v94, v95, v96, v97, v98, v99, v100, v101, v363);
  v103 = MEMORY[0x28223BE20](v102);
  v105 = &v363 - v104;
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_274_0();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v45, qword_2802CDA10);
  v109 = OUTLINED_FUNCTION_139(v48);
  v388 = v110;
  v389 = v111;
  v390 = v112;
  (v111)(v109);
  v113 = sub_268B37A34();
  v114 = sub_268B37F04();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = OUTLINED_FUNCTION_14();
    *v115 = 0;
    _os_log_impl(&dword_2688BB000, v113, v114, "Determining if we should short circuit and control the primary device immediately", v115, 2u);
    OUTLINED_FUNCTION_12();
  }

  v118 = *(v48 + 8);
  v117 = v48 + 8;
  v116 = v118;
  (v118)(v20, v45);
  v119 = sub_2688EFD0C(v391);
  if (!v119)
  {
    OUTLINED_FUNCTION_75_0();
    v133();
    v134 = sub_268B37A34();
    v135 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v135))
    {
      v136 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v136);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v137, v138, v139, v140, v141, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    v132 = v22;
    goto LABEL_22;
  }

  v120 = v119;
  v121 = v387[10];
  v122 = v387[11];
  OUTLINED_FUNCTION_263_0(v387);
  OUTLINED_FUNCTION_129();
  if (sub_268B34D14())
  {
    OUTLINED_FUNCTION_75_0();
    v123();
    v124 = sub_268B37A34();
    v125 = sub_268B37EC4();
    if (OUTLINED_FUNCTION_19(v125))
    {
      v126 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v126);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v127, v128, v129, v130, v131, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    v132 = v23;
LABEL_22:
    (v116)(v132, v45);
    goto LABEL_23;
  }

  v142 = *MEMORY[0x277D5F640];
  v143 = v383;
  v144 = *(v383 + 104);
  v145 = OUTLINED_FUNCTION_267_0();
  HIDWORD(v365) = v146;
  v366 = v147;
  v367 = v148;
  v148(v145);
  v149 = OUTLINED_FUNCTION_227_0();
  v151 = sub_268920878(v149, v150);
  v152 = *(v143 + 8);
  v153 = OUTLINED_FUNCTION_212_0();
  v369 = v143 + 8;
  v368 = v154;
  (v154)(v153);
  if (v151)
  {
    v155 = v387[10];
    v156 = v387[11];
    OUTLINED_FUNCTION_263_0(v387);
    OUTLINED_FUNCTION_129();
    if (sub_268B34D04())
    {
      OUTLINED_FUNCTION_75_0();
      v157();
      v158 = sub_268B37A34();
      v159 = sub_268B37EC4();
      if (OUTLINED_FUNCTION_19(v159))
      {
        v160 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v160);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v161, v162, v163, v164, v165, 2u);
        OUTLINED_FUNCTION_83_0();
      }

      v132 = v21;
      goto LABEL_22;
    }
  }

  v166 = *MEMORY[0x277D5F648];
  OUTLINED_FUNCTION_267_0();
  LODWORD(v365) = v167;
  OUTLINED_FUNCTION_232_0();
  v168();
  v169 = OUTLINED_FUNCTION_227_0();
  v171 = sub_268920878(v169, v170);
  OUTLINED_FUNCTION_167_0();
  (*(v172 - 256))();
  if (v171)
  {
    OUTLINED_FUNCTION_75_0();
    v173();
    v174 = sub_268B37A34();
    v175 = sub_268B37EC4();
    if (OUTLINED_FUNCTION_19(v175))
    {
      v176 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v176);
      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_206_0(v177, v178, v179, v180);
      OUTLINED_FUNCTION_6();
    }

    v132 = v105;
    goto LABEL_22;
  }

  v364 = v117;
  v181 = 0;
  v182 = v391 & 0xC000000000000001;
  v183 = v391 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v120 == v181)
    {
      v188 = v382;
      OUTLINED_FUNCTION_75_0();
      v189();
      v190 = sub_268B37A34();
      v191 = sub_268B37F04();
      if (OUTLINED_FUNCTION_19(v191))
      {
        v192 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v192);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v193, v194, v195, v196, v197, 2u);
        OUTLINED_FUNCTION_83_0();
      }

      v198 = v188;
LABEL_36:
      v199 = v45;
LABEL_37:
      (v116)(v198, v199);
      goto LABEL_23;
    }

    if (v182)
    {
      v184 = MEMORY[0x26D625BD0](v181, v391);
    }

    else
    {
      if (v181 >= *(v183 + 16))
      {
        goto LABEL_91;
      }

      v184 = *(v391 + 8 * v181 + 32);
    }

    v185 = v184;
    if (__OFADD__(v181, 1))
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      v292 = v181;
      v181 = v45;
LABEL_93:

      v120(v182, v116);

LABEL_166:

LABEL_23:
      OUTLINED_FUNCTION_23();
      return;
    }

    [v184 proximity];
    OUTLINED_FUNCTION_179_0();
    if (v187)
    {
      break;
    }

    ++v181;
  }

  if (v186)
  {
    goto LABEL_181;
  }

  if (sub_2688EFD0C(v391) == 1)
  {
    v200 = v384;
    v201 = v385;
    OUTLINED_FUNCTION_232_0();
    v202();
    v203 = sub_268920878(v386, v201);
    (v368)(v201, v200);
    if (v203)
    {
      v204 = v387[10];
      v205 = v387[11];
      OUTLINED_FUNCTION_263_0(v387);
      OUTLINED_FUNCTION_129();
      if (sub_268B34D24())
      {
        OUTLINED_FUNCTION_145_0(&a17);
        OUTLINED_FUNCTION_75_0();
        v206();
        v207 = sub_268B37A34();
        v208 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v208))
        {
          v209 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v209);
          OUTLINED_FUNCTION_206_0(&dword_2688BB000, v207, v204, "Primary is the only context and user asked for .videoControls on HomePod. shouldControlPrimary: false.");
          OUTLINED_FUNCTION_6();
        }

        else
        {
        }

        v198 = v182;
        goto LABEL_36;
      }
    }

    v210 = *MEMORY[0x277D5F658];
    v211 = v384;
    v212 = v385;
    OUTLINED_FUNCTION_232_0();
    v213();
    OUTLINED_FUNCTION_18_0();
    sub_26890D6F8(v214, v215);
    v216 = sub_268B37BB4();
    (v368)(v212, v211);
    if ((v216 & 1) == 0)
    {
      v271 = v375;
      OUTLINED_FUNCTION_75_0();
      v272();
      v273 = sub_268B37A34();
      v274 = sub_268B37F04();
      if (OUTLINED_FUNCTION_19(v274))
      {
        v275 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v275);
        OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_206_0(v276, v277, v278, v279);
        OUTLINED_FUNCTION_6();
      }

      else
      {
      }

      (v116)(v271, v45);
      goto LABEL_23;
    }
  }

  if (![v185 nowPlayingState])
  {
    v232 = v378;
    v233 = v363;
    v389(v378, v388, v363);
    v234 = sub_268B37A34();
    v235 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v235))
    {
      v236 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v236);
      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_206_0(v237, v238, v239, v240);
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    v198 = v232;
    v199 = v233;
    goto LABEL_37;
  }

  v217 = v384;
  v218 = *(v383 + 16);
  v219 = v379;
  v378 = v383 + 16;
  v375 = v218;
  v218(v379, v386, v384);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v220, v221, v222, v217);
  v223 = v185;
  v224 = v387;
  sub_268900698(v219, v380, v381, v185, 1, v225, v226, v227, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374);
  LOBYTE(v217) = v228;
  v382 = v223;

  v186 = sub_2688C058C(v219, &qword_2802A5B80, &qword_268B3C678);
  if ((v217 & 1) == 0)
  {
    OUTLINED_FUNCTION_228_0();
    v241();
    v242 = sub_268B37A34();
    v243 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v243))
    {
      v244 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v244);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v245, v246, v247, v248, v249, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    else
    {
    }

    v198 = OUTLINED_FUNCTION_278();
    goto LABEL_37;
  }

  v229 = 0;
  v393[0] = MEMORY[0x277D84F90];
  while (1)
  {
    if (v120 == v229)
    {
      v250 = v393[0];
      sub_268AD488C();
      sub_268AD54B8();
      v252 = v251;
      __swift_project_boxed_opaque_existential_1(v387 + 14, v387[17]);
      v253 = OUTLINED_FUNCTION_129();
      sub_2688EFD0C(v253);

      sub_2688EFD0C(v252);
      v254 = *v224;
      sub_26894AE34();
      OUTLINED_FUNCTION_228_0();
      v255();
      v256 = sub_268B37A34();
      v257 = sub_268B37F04();
      v258 = OUTLINED_FUNCTION_183_0(v257);
      v391 = v252;
      if (v258)
      {
        v259 = swift_slowAlloc();
        v381 = swift_slowAlloc();
        v393[0] = v381;
        OUTLINED_FUNCTION_175_0(4.8151e-34);
        v260 = type metadata accessor for DeviceContext();

        MEMORY[0x26D6256F0](v261, v260);
        v387 = v116;

        v262 = OUTLINED_FUNCTION_150();
        v265 = sub_26892CDB8(v262, v263, v264);

        *(v259 + 4) = v265;
        *(v259 + 12) = 2080;

        v267 = MEMORY[0x26D6256F0](v266, v260);
        v269 = v268;

        v270 = sub_26892CDB8(v267, v269, v393);
        v116 = v387;

        *(v259 + 14) = v270;
        _os_log_impl(&dword_2688BB000, v256, v257, "Pausable Contexts: %s, Resumable Contexts :%s", v259, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_138_0();
      }

      OUTLINED_FUNCTION_222_0();
      v116();
      v182 = v384;
      v280 = v375;
      v281 = v376;
      v282 = v377;
      v375(v377, v386, v384);
      v283 = (*(v383 + 88))(v282, v182);
      if (v283 == *MEMORY[0x277D5F658])
      {
        v120 = v116;
        v45 = v382;
        [v382 nowPlayingState];
        v284 = OUTLINED_FUNCTION_145_0(&a18);
        v116 = v363;
        v389(v284, v388, v363);
        v181 = sub_268B37A34();
        v285 = sub_268B37F04();
        if (!OUTLINED_FUNCTION_115_0(v285))
        {
          goto LABEL_92;
        }

        v286 = swift_slowAlloc();
        OUTLINED_FUNCTION_224_0(v286, 1.5047e-36);
        v182 = v374;
        OUTLINED_FUNCTION_57();
        _os_log_impl(v287, v288, v289, v290, v291, 0xEu);
        OUTLINED_FUNCTION_6();
        v292 = v45;
        goto LABEL_93;
      }

      if (v283 == *MEMORY[0x277D5F660])
      {
        v383 = v250;
        v393[0] = MEMORY[0x277D84F90];
        v293 = v391;
        v294 = sub_2688EFD0C(v391);

        for (i = 0; v294 != i; ++i)
        {
          if ((v293 & 0xC000000000000001) != 0)
          {
            v186 = MEMORY[0x26D625BD0](i, v293);
          }

          else
          {
            if (i >= *((v293 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_172;
            }

            v186 = *(v293 + 8 * i + 32);
          }

          v296 = v186;
          if (__OFADD__(i, 1))
          {
            goto LABEL_171;
          }

          [v186 proximity];
          OUTLINED_FUNCTION_179_0();
          if (v187)
          {
            if (v297)
            {
              goto LABEL_182;
            }
          }

          else
          {
            sub_268B38214();
            OUTLINED_FUNCTION_261_0();
            OUTLINED_FUNCTION_278();
            sub_268B38254();
            v186 = sub_268B38224();
          }
        }

        v307 = OUTLINED_FUNCTION_268_0();
        sub_2688EFD0C(v307);

        OUTLINED_FUNCTION_75_0();
        v308();
        v309 = sub_268B37A34();
        v310 = sub_268B37F04();
        if (OUTLINED_FUNCTION_115_0(v310))
        {
          v311 = swift_slowAlloc();
          OUTLINED_FUNCTION_224_0(v311, 1.5047e-36);
          OUTLINED_FUNCTION_57();
          _os_log_impl(v312, v313, v314, v315, v316, 0xEu);
          OUTLINED_FUNCTION_6();
          v317 = v382;
        }

        else
        {
          v317 = v309;
          v309 = v382;
        }

        v318 = OUTLINED_FUNCTION_191();
        (v116)(v318);

        goto LABEL_166;
      }

      v298 = v363;
      if (v283 != HIDWORD(v365))
      {
        if (v283 == v365)
        {

          goto LABEL_23;
        }

        if (v283 != *MEMORY[0x277D5F650])
        {
          v383 = v250;
          v336 = v370;
          OUTLINED_FUNCTION_75_0();
          v337();
          v280(v281, v386, v182);
          v338 = v336;
          v339 = sub_268B37A34();
          v340 = v280;
          v341 = sub_268B37EE4();
          if (OUTLINED_FUNCTION_183_0(v341))
          {
            OUTLINED_FUNCTION_172_0();
            v390 = OUTLINED_FUNCTION_143_0();
            v393[0] = v390;
            *v336 = 136315138;
            v340(v385, v281, v182);
            v342 = sub_268B37C24();
            v343 = v116;
            v345 = v344;
            v346 = v368;
            (v368)(v281, v384);
            v347 = sub_26892CDB8(v342, v345, v393);

            *(v338 + 1) = v347;
            v182 = v384;
            _os_log_impl(&dword_2688BB000, v339, v341, "Unknown controlType: %s, returning false", v338, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v390);
            OUTLINED_FUNCTION_83_0();
            OUTLINED_FUNCTION_138_0();

            (v343)(v370, v298);
          }

          else
          {

            OUTLINED_FUNCTION_167_0();
            v346 = *(v361 - 256);
            v346();
            v362 = OUTLINED_FUNCTION_115();
            (v116)(v362);
          }

          (v346)(v377, v182);

          goto LABEL_23;
        }
      }

      v387 = v116;
      OUTLINED_FUNCTION_267_0();
      OUTLINED_FUNCTION_232_0();
      v299();
      v300 = OUTLINED_FUNCTION_227_0();
      v302 = sub_268920878(v300, v301);
      OUTLINED_FUNCTION_167_0();
      (*(v303 - 256))();
      if (v302)
      {
        v393[0] = MEMORY[0x277D84F90];
        v304 = sub_2688EFD0C(v250);

        for (j = 0; v304 != j; ++j)
        {
          if ((v250 & 0xC000000000000001) != 0)
          {
            v186 = MEMORY[0x26D625BD0](j, v250);
          }

          else
          {
            if (j >= *(v250 + 16))
            {
              goto LABEL_176;
            }

            v186 = *(v250 + 8 * j + 32);
          }

          v306 = v186;
          if (__OFADD__(j, 1))
          {
            goto LABEL_175;
          }

          if ([v186 nowPlayingMediaType] == 7)
          {
            sub_268B38214();
            OUTLINED_FUNCTION_261_0();
            sub_268B38254();
            v186 = sub_268B38224();
          }

          else
          {
          }
        }

        v250 = v393[0];
        OUTLINED_FUNCTION_222_0();
      }

      OUTLINED_FUNCTION_267_0();
      OUTLINED_FUNCTION_232_0();
      v319();
      v320 = OUTLINED_FUNCTION_227_0();
      v322 = sub_268920878(v320, v321);
      v323 = OUTLINED_FUNCTION_212_0();
      (v368)(v323);
      if (v322)
      {
        v383 = v250;
        v393[0] = MEMORY[0x277D84F90];
        v324 = v391;
        v325 = sub_2688EFD0C(v391);

        v326 = 0;
        v327 = v371;
        while (v325 != v326)
        {
          if ((v324 & 0xC000000000000001) != 0)
          {
            v186 = MEMORY[0x26D625BD0](v326, v324);
          }

          else
          {
            if (v326 >= *((v324 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_178;
            }

            v186 = *(v324 + 8 * v326 + 32);
          }

          v328 = v186;
          if (__OFADD__(v326, 1))
          {
            goto LABEL_177;
          }

          if ([v186 nowPlayingMediaType] == 7)
          {
            sub_268B38214();
            OUTLINED_FUNCTION_261_0();
            OUTLINED_FUNCTION_278();
            sub_268B38254();
            v186 = sub_268B38224();
          }

          else
          {
          }

          ++v326;
        }

        swift_bridgeObjectRelease_n();
        v391 = v393[0];
        OUTLINED_FUNCTION_222_0();
        v298 = v363;
        v250 = v383;
      }

      else
      {
        v327 = v371;
      }

      v329 = sub_2688EFD0C(v250);
      LOBYTE(m) = v250 & 0xF8;

      for (k = 0; ; ++k)
      {
        if (v329 == k)
        {

          goto LABEL_138;
        }

        if ((v250 & 0xC000000000000001) != 0)
        {
          v333 = OUTLINED_FUNCTION_231_0();
          v186 = MEMORY[0x26D625BD0](v333);
        }

        else
        {
          if (k >= *((v250 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_174;
          }

          v186 = *(v250 + 8 * k + 32);
        }

        v332 = v186;
        if (__OFADD__(k, 1))
        {
          goto LABEL_173;
        }

        [v186 proximity];
        OUTLINED_FUNCTION_179_0();
        if (v187)
        {
          break;
        }
      }

      if (v186)
      {
        goto LABEL_181;
      }

LABEL_138:
      if (sub_2688EFD0C(v250))
      {
        v334 = 0;
        if (v329 != k)
        {
          v335 = 1;
LABEL_162:
          OUTLINED_FUNCTION_75_0();
          v355();
          v356 = sub_268B37A34();
          sub_268B37F04();
          OUTLINED_FUNCTION_149_0();
          if (os_log_type_enabled(v356, v357))
          {
            v358 = v329 != k;
            v359 = swift_slowAlloc();
            *v359 = 67109632;
            *(v359 + 4) = v358;
            *(v359 + 8) = 1024;
            *(v359 + 10) = v334;
            *(v359 + 14) = 1024;
            *(v359 + 16) = v335;
            _os_log_impl(&dword_2688BB000, v356, m, ".any request and primary is playing something == %{BOOL}d, nothing else is playing and primary is the only resumable == %{BOOL}d. shouldControlPrimary: %{BOOL}d", v359, 0x14u);
            OUTLINED_FUNCTION_83_0();
            v360 = v382;
          }

          else
          {
            v360 = v356;
            v356 = v382;
          }

          (v387)(v327, v298);

          goto LABEL_166;
        }
      }

      else
      {
        v383 = v250;
        v393[0] = MEMORY[0x277D84F90];
        v348 = v391;
        v349 = sub_2688EFD0C(v391);
        v350 = v348 & 0xC000000000000001;
        v351 = v348 & 0xFFFFFFFFFFFFFF8;

        for (m = 0; v349 != m; ++m)
        {
          if (v350)
          {
            v186 = MEMORY[0x26D625BD0](m, v391);
          }

          else
          {
            if (m >= *(v351 + 16))
            {
              goto LABEL_180;
            }

            v186 = *(v391 + 8 * m + 32);
          }

          v352 = v186;
          if (__OFADD__(m, 1))
          {
            goto LABEL_179;
          }

          [v186 proximity];
          OUTLINED_FUNCTION_179_0();
          if (v187)
          {
            if (v297)
            {
LABEL_182:
              v392 = v297;
              goto LABEL_183;
            }
          }

          else
          {
            v348 = v393;
            sub_268B38214();
            v353 = *(v393[0] + 16);
            sub_268B38244();
            v298 = v363;
            sub_268B38254();
            v186 = sub_268B38224();
          }
        }

        v354 = OUTLINED_FUNCTION_268_0();
        sub_2688EFD0C(v354);
        OUTLINED_FUNCTION_129();

        v334 = v348 == 0;
        if (v329 != k)
        {
          v335 = 1;
          OUTLINED_FUNCTION_222_0();
          goto LABEL_162;
        }

        OUTLINED_FUNCTION_222_0();
      }

      v335 = v334;
      goto LABEL_162;
    }

    if (v182)
    {
      v186 = MEMORY[0x26D625BD0](v229, v391);
    }

    else
    {
      if (v229 >= *(v183 + 16))
      {
        goto LABEL_170;
      }

      v186 = *(v391 + 8 * v229 + 32);
    }

    v230 = v186;
    if (__OFADD__(v229, 1))
    {
      break;
    }

    if ([v186 nowPlayingState] == 1)
    {
      v224 = v393;
      sub_268B38214();
      v231 = *(v393[0] + 16);
      sub_268B38244();
      OUTLINED_FUNCTION_152_0();
      sub_268B38254();
      v186 = sub_268B38224();
    }

    else
    {
    }

    ++v229;
  }

  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  v393[0] = v186;
LABEL_183:
  sub_268B38474();
  __break(1u);
}

void sub_268900698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  v337 = v20;
  v320 = v24;
  v352 = v25;
  v335 = v26;
  v28 = v27;
  v30 = v29;
  v350 = sub_268B36C04();
  v31 = OUTLINED_FUNCTION_1(v350);
  v353 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2();
  v336 = v35;
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B78, &qword_268B3C670);
  v36 = OUTLINED_FUNCTION_4(v354);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  v41 = MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_20_1(v41, v42, v43, v44, v45, v46, v47, v48, v316);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_78();
  v349 = v50;
  OUTLINED_FUNCTION_9();
  v51 = sub_268B371E4();
  v52 = OUTLINED_FUNCTION_1(v51);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v58);
  v60 = &v316 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B80, &qword_268B3C678);
  v62 = OUTLINED_FUNCTION_22(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_18();
  v340 = v70;
  OUTLINED_FUNCTION_8();
  v72 = MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_2_3(v72, v73, v74, v75, v76, v77, v78, v79, v316);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_18();
  v346 = v81;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_218_0();
  v84 = sub_268B37A54();
  v85 = OUTLINED_FUNCTION_1(v84);
  v87 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v97);
  v99 = &v316 - v98;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v84, qword_2802CDA10);
  v100 = *(v87 + 16);
  v342 = v101;
  v343 = v100;
  v344 = v87 + 16;
  (v100)(v99);
  v348 = v30;
  sub_26890C964(v30, v21, &qword_2802A5B80, &qword_268B3C678);
  v102 = *(v54 + 16);
  v329 = v28;
  v322 = v54 + 16;
  v321 = v102;
  v102(v60, v28, v51);
  v103 = v84;
  v104 = v54;
  v105 = v352;
  v106 = sub_268B37A34();
  v107 = sub_268B37F04();
  v351 = v105;

  LODWORD(v345) = v107;
  v108 = os_log_type_enabled(v106, v107);
  v338 = v104;
  v339 = v51;
  v347 = v87;
  if (v108)
  {
    v318 = v106;
    v319 = v103;
    v109 = swift_slowAlloc();
    v317 = swift_slowAlloc();
    v356[0] = v317;
    *v109 = 136446978;
    v110 = v333;
    sub_26890C964(v21, v333, &qword_2802A5B80, &qword_268B3C678);
    if (__swift_getEnumTagSinglePayload(v110, 1, v350) == 1)
    {
      sub_2688C058C(v110, &qword_2802A5B80, &qword_268B3C678);
      v111 = 0xE300000000000000;
    }

    else
    {
      sub_268B36BF4();
      v111 = v117;
      OUTLINED_FUNCTION_273_0();
      v118 = OUTLINED_FUNCTION_0_1();
      v119(v118);
    }

    v120 = v339;
    v113 = v348;
    v121 = v99;
    sub_2688C058C(v21, &qword_2802A5B80, &qword_268B3C678);
    v122 = OUTLINED_FUNCTION_265_0();
    v124 = sub_26892CDB8(v122, v111, v123);

    *(v109 + 4) = v124;
    *(v109 + 12) = 2082;
    OUTLINED_FUNCTION_74_0();
    sub_26890D6F8(v125, v126);
    sub_268B38404();
    v333 = *(v338 + 8);
    v333(v60, v120);
    v127 = OUTLINED_FUNCTION_138();
    v130 = sub_26892CDB8(v127, v128, v129);

    *(v109 + 14) = v130;
    *(v109 + 22) = 2082;
    v131 = NLMediaType.description.getter(v335);
    v133 = sub_26892CDB8(v131, v132, v356);

    *(v109 + 24) = v133;
    *(v109 + 32) = 2080;
    v114 = v349;
    if (v352)
    {
      v134 = [v351 description];
      sub_268B37BF4();
      v136 = v135;
    }

    else
    {
      v136 = 0xE300000000000000;
    }

    v137 = v319;
    v116 = v350;
    v138 = OUTLINED_FUNCTION_265_0();
    v140 = sub_26892CDB8(v138, v136, v139);

    *(v109 + 34) = v140;
    v141 = v318;
    _os_log_impl(&dword_2688BB000, v318, v345, "Deciding wether the primary is an acceptable candidate for controls using controlType: %{public}s, deviceType: %{public}s, mediaTypeFilter: %{public}s and primaryContext: %s", v109, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_132_0();

    v142 = v121;
    v112 = v137;
    v345 = *(v347 + 8);
    v345(v142, v137);
    v115 = v346;
  }

  else
  {

    v333 = *(v104 + 8);
    v333(v60, v51);
    sub_2688C058C(v21, &qword_2802A5B80, &qword_268B3C678);
    v345 = *(v87 + 8);
    v345(v99, v103);
    v112 = v103;
    v113 = v348;
    v114 = v349;
    v115 = v346;
    v116 = v350;
  }

  v143 = *MEMORY[0x277D5F648];
  v144 = *(v353 + 104);
  v349 = v353 + 104;
  v350 = v144;
  v144(v115, v143, v116);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_276_0(v145, v146, v147);
  v149 = *(v148 + 48);
  sub_26890C964(v113, v114, &qword_2802A5B80, &qword_268B3C678);
  sub_26890C964(v115, v114 + v149, &qword_2802A5B80, &qword_268B3C678);
  OUTLINED_FUNCTION_54_0(v114);
  v150 = v340;
  if (!v153)
  {
    sub_26890C964(v114, v334, &qword_2802A5B80, &qword_268B3C678);
    OUTLINED_FUNCTION_54_0(v114 + v149);
    if (!v153)
    {
      v156 = v353;
      v157 = v336;
      (*(v353 + 32))(v336, v114 + v149, v116);
      OUTLINED_FUNCTION_18_0();
      sub_26890D6F8(v158, v159);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_223_0();
      v160 = sub_268B37BB4();
      v149 = v114;
      v161 = *(v156 + 8);
      (v161)(v157, v116);
      sub_2688C058C(v346, &qword_2802A5B80, &qword_268B3C678);
      v162 = OUTLINED_FUNCTION_213_0();
      v161(v162);
      v113 = v348;
      v151 = v112;
      v163 = OUTLINED_FUNCTION_153_0();
      sub_2688C058C(v163, v164, &qword_268B3C678);
      v152 = v341;
      if ((v160 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    sub_2688C058C(v346, &qword_2802A5B80, &qword_268B3C678);
    OUTLINED_FUNCTION_273_0();
    v154 = OUTLINED_FUNCTION_213_0();
    v155(v154);
    v151 = v112;
LABEL_20:
    sub_2688C058C(v114, &qword_2802A5B78, &qword_268B3C670);
    v152 = v341;
    goto LABEL_23;
  }

  sub_2688C058C(v115, &qword_2802A5B80, &qword_268B3C678);
  OUTLINED_FUNCTION_54_0(v114 + v149);
  v151 = v112;
  if (!v153)
  {
    goto LABEL_20;
  }

  sub_2688C058C(v114, &qword_2802A5B80, &qword_268B3C678);
  v152 = v341;
LABEL_22:
  v165 = *(v337 + 80);
  v166 = *(v337 + 88);
  OUTLINED_FUNCTION_263_0(v337);
  OUTLINED_FUNCTION_129();
  if ((sub_268B34D04() & 1) == 0)
  {
    v213 = OUTLINED_FUNCTION_56(&v353);
    v214(v213);
    v208 = sub_268B37A34();
    v215 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v215))
    {
LABEL_49:
      v216 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v216);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v217, v218, v219, v220, v221, 2u);
      OUTLINED_FUNCTION_83_0();
    }

LABEL_50:

LABEL_51:
    OUTLINED_FUNCTION_221_0();
    v345(v149, v151);
    goto LABEL_79;
  }

LABEL_23:
  v350(v150, *MEMORY[0x277D5F640], v116);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_276_0(v167, v168, v169);
  v171 = *(v170 + 48);
  OUTLINED_FUNCTION_262_0(v113, v152);
  OUTLINED_FUNCTION_262_0(v150, v152 + v171);
  OUTLINED_FUNCTION_54_0(v152);
  if (!v153)
  {
    v172 = v330;
    sub_26890C964(v152, v330, &qword_2802A5B80, &qword_268B3C678);
    OUTLINED_FUNCTION_54_0(v152 + v171);
    if (!v173)
    {
      v175 = v353;
      (*(v353 + 32))(v336, v152 + v171, v116);
      OUTLINED_FUNCTION_18_0();
      sub_26890D6F8(v176, v177);
      OUTLINED_FUNCTION_223_0();
      v178 = sub_268B37BB4();
      v179 = *(v175 + 8);
      v149 = v175 + 8;
      v180 = OUTLINED_FUNCTION_213_0();
      v179(v180);
      OUTLINED_FUNCTION_135_0();
      sub_2688C058C(v181, v182, v183);
      (v179)(v172, v116);
      v113 = v348;
      OUTLINED_FUNCTION_135_0();
      sub_2688C058C(v184, v185, v186);
      if ((v178 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }

    sub_2688C058C(v150, &qword_2802A5B80, &qword_268B3C678);
    OUTLINED_FUNCTION_273_0();
    v174(v172, v116);
LABEL_31:
    sub_2688C058C(v152, &qword_2802A5B78, &qword_268B3C670);
    goto LABEL_37;
  }

  sub_2688C058C(v150, &qword_2802A5B80, &qword_268B3C678);
  OUTLINED_FUNCTION_54_0(v152 + v171);
  if (!v153)
  {
    goto LABEL_31;
  }

  sub_2688C058C(v152, &qword_2802A5B80, &qword_268B3C678);
LABEL_33:
  v187 = *(v337 + 80);
  v188 = *(v337 + 88);
  OUTLINED_FUNCTION_263_0(v337);
  OUTLINED_FUNCTION_129();
  if (sub_268B34D24())
  {
    v189 = OUTLINED_FUNCTION_56(&v351);
    v190(v189);
    v191 = sub_268B37A34();
    v192 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v192))
    {
      v193 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v193);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v194, v195, v196, v197, v198, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    goto LABEL_77;
  }

LABEL_37:
  if (!v352)
  {
    v206 = OUTLINED_FUNCTION_56(&v355);
    v207(v206);
    v208 = sub_268B37A34();
    v209 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v209))
    {
      goto LABEL_49;
    }

    goto LABEL_50;
  }

  v199 = v331;
  v350(v331, *MEMORY[0x277D5F658], v116);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_276_0(v200, v201, v202);
  v204 = *(v203 + 48);
  v149 = v332;
  OUTLINED_FUNCTION_262_0(v113, v332);
  OUTLINED_FUNCTION_262_0(v199, v149 + v204);
  if (__swift_getEnumTagSinglePayload(v149, 1, v116) == 1)
  {
    v205 = v351;
    sub_2688C058C(v199, &qword_2802A5B80, &qword_268B3C678);
    OUTLINED_FUNCTION_54_0(v149 + v204);
    if (!v153)
    {
      goto LABEL_47;
    }

    sub_2688C058C(v149, &qword_2802A5B80, &qword_268B3C678);
LABEL_53:
    if ([v351 nowPlayingState] != 1)
    {
      v294 = OUTLINED_FUNCTION_56(&v346);
      v295(v294);
      v265 = sub_268B37A34();
      v296 = sub_268B37F04();
      if (OUTLINED_FUNCTION_19(v296))
      {
LABEL_75:
        v297 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v297);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v298, v299, v300, v301, v302, 2u);
        OUTLINED_FUNCTION_83_0();
      }

LABEL_76:

LABEL_77:
      OUTLINED_FUNCTION_221_0();
      v293 = v149;
LABEL_78:
      v345(v293, v151);
      goto LABEL_79;
    }

    goto LABEL_54;
  }

  v210 = v326;
  sub_26890C964(v149, v326, &qword_2802A5B80, &qword_268B3C678);
  OUTLINED_FUNCTION_54_0(v149 + v204);
  if (v153)
  {
    v211 = v351;
    sub_2688C058C(v199, &qword_2802A5B80, &qword_268B3C678);
    OUTLINED_FUNCTION_273_0();
    v212(v210, v116);
LABEL_47:
    sub_2688C058C(v149, &qword_2802A5B78, &qword_268B3C670);
    goto LABEL_54;
  }

  v222 = OUTLINED_FUNCTION_185_0();
  v223(v222);
  OUTLINED_FUNCTION_18_0();
  sub_26890D6F8(v224, v225);
  v152 = v149;
  v226 = v351;
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_223_0();
  v227 = sub_268B37BB4();
  v149 = v151;
  v228 = *(v113 + 8);
  v229 = OUTLINED_FUNCTION_213_0();
  v228(v229);
  OUTLINED_FUNCTION_135_0();
  sub_2688C058C(v230, v231, v232);
  (v228)(v326, v116);
  v113 = v348;
  OUTLINED_FUNCTION_135_0();
  sub_2688C058C(v233, v234, v235);
  if (v227)
  {
    goto LABEL_53;
  }

LABEL_54:
  v236 = *MEMORY[0x277D5F660];
  v237 = OUTLINED_FUNCTION_145_0(&a9);
  (v350)(v237);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_276_0(v238, v239, v240);
  v242 = *(v241 + 48);
  v149 = v327;
  OUTLINED_FUNCTION_262_0(v113, v327);
  OUTLINED_FUNCTION_262_0(v152, v149 + v242);
  OUTLINED_FUNCTION_54_0(v149);
  if (!v153)
  {
    v245 = v323;
    sub_26890C964(v149, v323, &qword_2802A5B80, &qword_268B3C678);
    OUTLINED_FUNCTION_54_0(v149 + v242);
    if (!v246)
    {
      v250 = OUTLINED_FUNCTION_185_0();
      v251(v250);
      OUTLINED_FUNCTION_18_0();
      sub_26890D6F8(v252, v253);
      OUTLINED_FUNCTION_223_0();
      v254 = sub_268B37BB4();
      v255 = *(v113 + 8);
      v256 = OUTLINED_FUNCTION_213_0();
      v255(v256);
      OUTLINED_FUNCTION_135_0();
      sub_2688C058C(v257, v258, v259);
      (v255)(v245, v116);
      OUTLINED_FUNCTION_135_0();
      sub_2688C058C(v260, v261, v262);
      v244 = v329;
      v243 = v328;
      if ((v254 & 1) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_64;
    }

    sub_2688C058C(v152, &qword_2802A5B80, &qword_268B3C678);
    v247 = *(v353 + 8);
    v248 = OUTLINED_FUNCTION_191();
    v249(v248);
    v243 = v328;
LABEL_62:
    sub_2688C058C(v149, &qword_2802A5B78, &qword_268B3C670);
    v244 = v329;
    goto LABEL_67;
  }

  sub_2688C058C(v152, &qword_2802A5B80, &qword_268B3C678);
  OUTLINED_FUNCTION_54_0(v149 + v242);
  v243 = v328;
  if (!v153)
  {
    goto LABEL_62;
  }

  sub_2688C058C(v149, &qword_2802A5B80, &qword_268B3C678);
  v244 = v329;
LABEL_64:
  if ([v351 nowPlayingState] == 1)
  {
    v263 = OUTLINED_FUNCTION_56(&v345);
    v264(v263);
    v265 = sub_268B37A34();
    v266 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v266))
    {
      goto LABEL_75;
    }

    goto LABEL_76;
  }

LABEL_67:
  v149 = v325;
  sub_268B37164();
  OUTLINED_FUNCTION_74_0();
  sub_26890D6F8(v267, v268);
  v269 = v339;
  sub_268B37CA4();
  v270 = v149;
  sub_268B37CA4();
  OUTLINED_FUNCTION_219_0();
  v271();
  if (v356[0] != v355)
  {
    v283 = OUTLINED_FUNCTION_109(&v354);
    v343(v283, v342, v151);
    v321(v243, v244, v269);
    v284 = sub_268B37A34();
    v285 = sub_268B37F04();
    if (OUTLINED_FUNCTION_183_0(v285))
    {
      OUTLINED_FUNCTION_172_0();
      v286 = OUTLINED_FUNCTION_118_0();
      OUTLINED_FUNCTION_144_0(v286);
      *v244 = 136315138;
      OUTLINED_FUNCTION_74_0();
      sub_26890D6F8(v287, v288);
      v289 = sub_268B38404();
      v291 = v290;
      OUTLINED_FUNCTION_219_0();
      v292();
      sub_26892CDB8(v289, v291, v356);
      OUTLINED_FUNCTION_226();

      *(v244 + 4) = v243;
      _os_log_impl(&dword_2688BB000, v284, v285, "A deviceType: %s is specified. Cannot assume that the primary matches that device type. Primary is NOT a valid fallback", v244, 0xCu);
      OUTLINED_FUNCTION_73_0();
      OUTLINED_FUNCTION_83_0();

      OUTLINED_FUNCTION_221_0();
      v293 = v324;
    }

    else
    {

      OUTLINED_FUNCTION_219_0();
      v303();
      OUTLINED_FUNCTION_221_0();
      v293 = v270;
    }

    goto LABEL_78;
  }

  if (!v335)
  {
    v304 = OUTLINED_FUNCTION_56(&v344);
    v305(v304);
    v306 = sub_268B37A34();
    v307 = sub_268B37F04();
    v308 = OUTLINED_FUNCTION_19(v307);
    v309 = v351;
    if (v308)
    {
      v310 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v310);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v311, v312, v313, v314, v315, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    goto LABEL_51;
  }

  v272 = v351;
  v273 = sub_268A514F4(v335, 1, v320 & 1);
  v274 = OUTLINED_FUNCTION_145_0(&v347);
  v343(v274, v342, v151);
  v275 = sub_268B37A34();
  v276 = sub_268B37F04();
  if (OUTLINED_FUNCTION_115_0(v276))
  {
    v277 = swift_slowAlloc();
    *v277 = 67109376;
    *(v277 + 4) = v273 & 1;
    *(v277 + 8) = 1024;
    *(v277 + 10) = v273 & 1;
    OUTLINED_FUNCTION_57();
    _os_log_impl(v278, v279, v280, v281, v282, 0xEu);
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_221_0();
  v345(v243, v151);
LABEL_79:
  OUTLINED_FUNCTION_23();
}

void sub_268901DA4(uint64_t a1)
{
  if (a1)
  {
    v11 = MEMORY[0x277D84F90];
    v2 = sub_2688EFD0C(a1);
    for (i = 0; ; ++i)
    {
      if (v2 == i)
      {
        sub_2688EFD0C(v11);
        OUTLINED_FUNCTION_129();

        return;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = OUTLINED_FUNCTION_153_0();
        v4 = MEMORY[0x26D625BD0](v10);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v4 = *(a1 + 8 * i + 32);
      }

      v5 = v4;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v6 = [v4 context];
      if (v6 && (v7 = v6, v8 = [v6 nowPlayingState], v7, !v8))
      {
        sub_268B38214();
        v9 = *(v11 + 16);
        sub_268B38244();
        OUTLINED_FUNCTION_150();
        sub_268B38254();
        sub_268B38224();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

void sub_268901EE8()
{
  OUTLINED_FUNCTION_26();
  v48 = v3;
  OUTLINED_FUNCTION_275_0();
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v46 = v11;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_78();
  v49 = v13;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v4, qword_2802CDA10);
  v14 = *(v7 + 16);
  v47 = v15;
  (v14)(v49);

  v16 = sub_268B37A34();
  v17 = sub_268B37F04();
  if (os_log_type_enabled(v16, v17))
  {
    swift_slowAlloc();
    v51 = OUTLINED_FUNCTION_123_0();
    *v2 = 134218242;
    *(v2 + 4) = sub_2688EFD0C(v1);

    *(v2 + 12) = 2082;
    v18 = NLMediaType.description.getter(v48);
    v20 = v1;
    v21 = v7;
    v22 = v4;
    v23 = sub_26892CDB8(v18, v19, &v51);

    *(v2 + 14) = v23;
    v4 = v22;
    v7 = v21;
    v1 = v20;
    _os_log_impl(&dword_2688BB000, v16, v17, "Filtering %ld device(s) using mediaTypeFilter %{public}s", v2, 0x16u);
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_125_0();
  }

  else
  {
  }

  v24 = *(v7 + 8);
  v24(v49, v4);
  v25 = sub_268902304(v48, 1, v1);
  v26 = sub_2688EFD0C(v25);
  if (v26 != sub_2688EFD0C(v1))
  {
    (v14)(v46, v47, v4);

    v38 = sub_268B37A34();
    v39 = sub_268B37F04();

    if (OUTLINED_FUNCTION_214_0())
    {
      v50 = v4;
      v40 = OUTLINED_FUNCTION_172_0();
      v51 = OUTLINED_FUNCTION_173_0();
      *v40 = 136315138;
      v41 = type metadata accessor for Device();
      v42 = MEMORY[0x26D6256F0](v25, v41);
      v44 = sub_26892CDB8(v42, v43, &v51);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_2688BB000, v38, v39, "Devices after mediaType filtration: %s", v40, 0xCu);
      OUTLINED_FUNCTION_79_0();
      OUTLINED_FUNCTION_12();

      v37 = v46;
      goto LABEL_11;
    }

    v37 = v46;
LABEL_14:
    v45 = v4;
    goto LABEL_15;
  }

  (v14)(v0, v47, v4);
  v27 = sub_268B37A34();
  v28 = sub_268B37F04();
  if (!OUTLINED_FUNCTION_139_0(v28))
  {

    v37 = v0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_172_0();
  v50 = v4;
  v51 = OUTLINED_FUNCTION_118_0();
  *v14 = 136315138;
  v29 = NLMediaType.description.getter(v48);
  v31 = sub_26892CDB8(v29, v30, &v51);

  *(v14 + 4) = v31;
  OUTLINED_FUNCTION_76_0();
  _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_83_0();

  v37 = v0;
LABEL_11:
  v45 = v50;
LABEL_15:
  v24(v37, v45);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268902304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v45 - v12);
  v50 = a1;
  if (!a1 || NLMediaType.isAmbiguous()())
  {
    if (qword_2802A4F30 != -1)
    {
      goto LABEL_29;
    }

    goto LABEL_4;
  }

  v57 = MEMORY[0x277D84F90];
  v23 = sub_2688EFD0C(a3);
  v24 = 0;
  v54 = a3 & 0xC000000000000001;
  v55 = v23;
  v51 = (v7 + 16);
  v52 = (v7 + 8);
  v53 = a3 & 0xFFFFFFFFFFFFFF8;
  *&v25 = 136315138;
  v47 = v25;
  v48 = a3;
  v49 = v6;
  v46 = v11;
  while (1)
  {
    if (v55 == v24)
    {
      return v57;
    }

    if (v54)
    {
      v26 = MEMORY[0x26D625BD0](v24, a3);
    }

    else
    {
      if (v24 >= *(v53 + 16))
      {
        goto LABEL_28;
      }

      v26 = *(a3 + 8 * v24 + 32);
    }

    v27 = v26;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    v28 = [v26 context];
    if (v28)
    {
      v13 = v28;
      v29 = sub_268A514F4(a1, 1, a2 & 1);

      if ((v29 & 1) == 0)
      {

        goto LABEL_23;
      }
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v30 = __swift_project_value_buffer(v6, qword_2802CDA10);
      (*v51)(v11, v30, v6);
      v31 = v27;
      v32 = sub_268B37A34();
      v33 = v11;
      v34 = sub_268B37EC4();

      if (os_log_type_enabled(v32, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v56 = v36;
        *v35 = v47;
        v37 = [v31 description];
        v38 = sub_268B37BF4();
        v39 = a2;
        v41 = v40;

        v42 = sub_26892CDB8(v38, v41, &v56);
        a2 = v39;

        *(v35 + 4) = v42;
        a3 = v48;
        v6 = v49;
        _os_log_impl(&dword_2688BB000, v32, v34, "Found no context for item: %s, filtering skipped for this item.", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v36);
        MEMORY[0x26D6266E0](v36, -1, -1);
        v43 = v35;
        a1 = v50;
        MEMORY[0x26D6266E0](v43, -1, -1);

        v11 = v46;
        (*v52)(v46, v6);
      }

      else
      {

        (*v52)(v33, v6);
        v11 = v33;
      }
    }

    v13 = &v57;
    sub_268B38214();
    v7 = v57[2];
    sub_268B38244();
    sub_268B38254();
    sub_268B38224();
LABEL_23:
    ++v24;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  swift_once();
LABEL_4:
  v14 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v7 + 16))(v13, v14, v6);
  v15 = sub_268B37A34();
  v16 = sub_268B37EC4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v6;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v57 = v19;
    *v18 = 136446210;
    v20 = NLMediaType.description.getter(v50);
    v22 = sub_26892CDB8(v20, v21, &v57);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_2688BB000, v15, v16, "mediaType: %{public}s is ambiguous or unspecified, filtering skipped.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x26D6266E0](v19, -1, -1);
    MEMORY[0x26D6266E0](v18, -1, -1);

    (*(v7 + 8))(v13, v17);
  }

  else
  {

    (*(v7 + 8))(v13, v6);
  }

  return a3;
}

void sub_26890282C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_182_0();
  v5 = sub_268B37A54();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  if (v0 && !NLMediaType.isAmbiguous()())
  {
    v28 = MEMORY[0x277D84F90];
    v5 = sub_2688EFD0C(v2);
    v23 = 0;
    v8 = v2 & 0xFFFFFFFFFFFFFF8;
    while (v5 != v23)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x26D625BD0](v23, v2);
      }

      else
      {
        if (v23 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v24 = *(v2 + 8 * v23 + 32);
      }

      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v25 = v24;
      v26 = sub_268A514F4(v0, 1, v4 & 1);

      if (v26)
      {
        sub_268B38214();
        v27 = v28[2];
        sub_268B38244();
        sub_268B38254();
        sub_268B38224();
      }

      else
      {
      }

      ++v23;
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
LABEL_21:
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    OUTLINED_FUNCTION_82(v5, qword_2802CDA10);
    v11 = OUTLINED_FUNCTION_139(v8);
    v12(v11);
    v13 = sub_268B37A34();
    v14 = sub_268B37EC4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_172_0();
      v16 = OUTLINED_FUNCTION_173_0();
      v28 = v16;
      *v15 = 136446210;
      v17 = NLMediaType.description.getter(v0);
      v19 = sub_26892CDB8(v17, v18, &v28);

      *(v15 + 4) = v19;
      OUTLINED_FUNCTION_277_0(&dword_2688BB000, v13, v14, "mediaType: %{public}s is ambiguous or unspecified, filtering skipped.");
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_132_0();
    }

    v20 = *(v8 + 8);
    v21 = OUTLINED_FUNCTION_138();
    v22(v21);
  }

  OUTLINED_FUNCTION_23();
}

void sub_268902AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v101 = v23;
  v25 = v24;
  v100 = sub_268B371E4();
  v26 = OUTLINED_FUNCTION_1(v100);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2();
  v99 = v31;
  OUTLINED_FUNCTION_9();
  v32 = sub_268B37A54();
  v33 = OUTLINED_FUNCTION_1(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  v40 = v39 - v38;
  v41 = sub_268B37594();
  v42 = OUTLINED_FUNCTION_1(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3();
  v107 = v47;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_18();
  v106 = v49;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_218_0();
  if (v25 >> 62)
  {
LABEL_49:
    v51 = sub_268B382A4();
  }

  else
  {
    v51 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v105 = v51;
  if (!v51)
  {
    goto LABEL_45;
  }

  v96 = v32;
  v32 = 0;
  v108 = v25 & 0xC000000000000001;
  v102 = v25 + 32;
  v103 = v25 & 0xFFFFFFFFFFFFFF8;
  v111 = (v44 + 8);
  v95 = (v35 + 16);
  v94 = (v35 + 8);
  v98 = (v28 + 16);
  v112 = MEMORY[0x277D84F90];
  v110 = v41;
  v35 = v51;
  v104 = v25;
  v97 = v40;
LABEL_5:
  if (v108)
  {
    v52 = OUTLINED_FUNCTION_178_0();
    v53 = MEMORY[0x26D625BD0](v52);
  }

  else
  {
    if (v32 >= *(v103 + 16))
    {
      goto LABEL_48;
    }

    v53 = *(v102 + 8 * v32);
  }

  v54 = v53;
  if (__OFADD__(v32++, 1))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v109 = v32;
  sub_268A52360(v53);
  if (!v56)
  {
    goto LABEL_33;
  }

  [v54 proximity];
  OUTLINED_FUNCTION_179_0();
  if (!v58)
  {
    v35 = *(v112 + 16);
    if (!v35)
    {
LABEL_27:
      sub_268B37584();
      sub_268A52360(v54);
      sub_268B37544();
      (*v98)(v99, v101, v100);
      sub_268B374F4();
      v74 = *(v44 + 16);
      OUTLINED_FUNCTION_135_0();
      v75();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_169_0(isUniquelyReferenced_nonNull_native, v77, v78, v112);
        sub_268987BAC();
        v112 = v92;
      }

      v25 = v104;
      v35 = v105;
      v79 = *(v112 + 16);
      v28 = v79 + 1;
      if (v79 >= *(v112 + 24) >> 1)
      {
        sub_268987BAC();
        v112 = v93;
      }

      (*(v44 + 8))(v106, v110);
      *(v112 + 16) = v28;
      v80 = v112 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v79;
      v41 = v110;
      (*(v44 + 32))(v80, v107, v110);
      goto LABEL_44;
    }

    v25 = 0;
    v59 = v112 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    while (1)
    {
      if (v25 >= *(v112 + 16))
      {
        __break(1u);
        goto LABEL_47;
      }

      (*(v44 + 16))(v20, v59 + *(v44 + 72) * v25, v41);
      v40 = sub_268B37534();
      v32 = v41;
      v61 = v60;
      v62 = sub_268A52360(v54);
      v28 = v63;
      if (v61)
      {
        if (v63)
        {
          if (v40 == v62 && v61 == v63)
          {

            (*v111)(v20, v110);
LABEL_35:
            if (qword_2802A4F30 != -1)
            {
              OUTLINED_FUNCTION_0_2();
              swift_once();
            }

            OUTLINED_FUNCTION_82(v96, qword_2802CDA10);
            v40 = v97;
            (*v95)(v97);
            v81 = v54;
            v28 = v97;
            v82 = sub_268B37A34();
            v83 = sub_268B37EE4();

            v25 = v104;
            if (os_log_type_enabled(v82, v83))
            {
              v84 = OUTLINED_FUNCTION_172_0();
              v113 = OUTLINED_FUNCTION_173_0();
              *v84 = 136315138;
              v85 = sub_268A52360(v81);
              if (v86)
              {
                v87 = v86;
              }

              else
              {
                v85 = 0x296C696E28;
                v87 = 0xE500000000000000;
              }

              v28 = sub_26892CDB8(v85, v87, &v113);

              *(v84 + 4) = v28;
              OUTLINED_FUNCTION_277_0(&dword_2688BB000, v82, v83, "Predicates already contain condition with routeId: %s, a duplicate will not be added.");
              v88 = OUTLINED_FUNCTION_109(&a17);
              __swift_destroy_boxed_opaque_existential_0Tm(v88);
              OUTLINED_FUNCTION_138_0();
              v40 = v97;
              OUTLINED_FUNCTION_12();
            }

            else
            {
            }

            v89 = *v94;
            v90 = OUTLINED_FUNCTION_150();
            v91(v90);
            v41 = v110;
            v35 = v105;
LABEL_44:
            v32 = v109;
            if (v109 == v35)
            {
LABEL_45:
              OUTLINED_FUNCTION_23();
              return;
            }

            goto LABEL_5;
          }

          v40 = sub_268B38444();

          v41 = v110;
          v65 = *v111;
          v66 = OUTLINED_FUNCTION_152_0();
          v67(v66);
          if (v40)
          {
            goto LABEL_35;
          }
        }

        else
        {

          v41 = v110;
          v71 = *v111;
          v72 = OUTLINED_FUNCTION_152_0();
          v73(v72);
        }
      }

      else
      {
        v68 = *v111;
        v69 = OUTLINED_FUNCTION_153_0();
        v70(v69);
        if (!v28)
        {
          goto LABEL_35;
        }

        v41 = v32;
      }

      if (v35 == ++v25)
      {
        goto LABEL_27;
      }
    }
  }

  if (!v57)
  {
LABEL_33:

    goto LABEL_44;
  }

  v113 = v57;
  sub_268B38474();
  __break(1u);
}

void sub_268903178()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_142_0();
  v2 = sub_268B37A54();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v88 = v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_57_0();

  v100 = sub_268AE1178(v11);
  sub_268903C90(&v100);
  v12 = v100;
  v13 = 0x2802A4000uLL;
  if (!sub_2688EFD0C(v100))
  {

    if (qword_2802A4F30 == -1)
    {
LABEL_9:
      OUTLINED_FUNCTION_82(v2, qword_2802CDA10);
      (*(v5 + 16))(v1);
      v29 = sub_268B37A34();
      v30 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v30))
      {
        v31 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v31);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v32, v33, v34, v35, v36, 2u);
        OUTLINED_FUNCTION_83_0();
      }

      (*(v5 + 8))(v1, v2);
      goto LABEL_61;
    }

LABEL_71:
    OUTLINED_FUNCTION_0_2();
    swift_once();
    goto LABEL_9;
  }

  sub_2688EFD10(0, (v12 & 0xC000000000000001) == 0, v12);
  if ((v12 & 0xC000000000000001) != 0)
  {
    goto LABEL_67;
  }

  v14 = *(v12 + 32);
LABEL_4:
  if (*(v13 + 3888) != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v2, qword_2802CDA10);
  v15 = OUTLINED_FUNCTION_139(v5);
  v86 = v16;
  v85 = v17;
  (v17)(v15);
  v18 = v14;
  v1 = v5;
  v5 = sub_268B37A34();
  v19 = sub_268B37F04();

  v87 = v1;
  v89 = v18;
  if (os_log_type_enabled(v5, v19))
  {
    v1 = OUTLINED_FUNCTION_172_0();
    v20 = OUTLINED_FUNCTION_173_0();
    v99 = v20;
    *v1 = 136315138;
    v21 = [v18 debugDescription];
    v22 = sub_268B37BF4();
    v23 = v2;
    v25 = v24;

    v26 = sub_26892CDB8(v22, v25, &v99);
    v2 = v23;

    *(v1 + 4) = v26;
    _os_log_impl(&dword_2688BB000, v5, v19, "Entity/Group with the most amount of devices found is: %s. Determining if it is a superset of all other groups", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v13 = *(v87 + 8);
    v27 = OUTLINED_FUNCTION_230_0();
  }

  else
  {

    v13 = *(v1 + 8);
    v27 = v0;
    v28 = v2;
  }

  (v13)(v27, v28);
  if (!sub_2688EFD0C(v12))
  {
    __break(1u);
    goto LABEL_69;
  }

  v37 = sub_2689A994C(v12);
  if (!v37)
  {
LABEL_73:
    __break(1u);

    __break(1u);
    return;
  }

  v38 = v37;
  if (!sub_2688EFD0C(v12))
  {
    __break(1u);
    goto LABEL_73;
  }

  if (sub_2688EFBD0(v12) < 1)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v39 = sub_2688EFD0C(v12);
  v40 = __OFSUB__(v39, 1);
  v41 = v39 - 1;
  if (v40)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v83 = v13;
  v84 = v2;
  sub_2688EA32C(v41, 1);
  sub_268904964(0, 1, 0);
  v93 = v100;

  v0 = sub_2689CB550();
  v42 = sub_2688EFD0C(v0);
  v5 = 0;
  v12 = v0 & 0xC000000000000001;
  v97 = MEMORY[0x277D84F90];
  v2 = &selRef_groupLeader;
  while (v42 != v5)
  {
    if (v12)
    {
      v43 = MEMORY[0x26D625BD0](v5, v0);
    }

    else
    {
      if (v5 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      v43 = *(v0 + 8 * v5 + 32);
    }

    v44 = v43;
    v45 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_64;
    }

    v46 = [v43 context];
    if (v46)
    {
      v13 = sub_268B0F784(v46);
      v48 = v47;

      if (!v48)
      {
        goto LABEL_32;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_169_0(isUniquelyReferenced_nonNull_native, v50, v51, v97);
        sub_2689876A4();
        v97 = v54;
      }

      v52 = *(v97 + 16);
      if (v52 >= *(v97 + 24) >> 1)
      {
        sub_2689876A4();
        v97 = v55;
      }

      *(v97 + 16) = v52 + 1;
      v53 = v97 + 16 * v52;
      *(v53 + 32) = v13;
      *(v53 + 40) = v48;
      v5 = v45;
    }

    else
    {

LABEL_32:
      ++v5;
    }
  }

  sub_26893E6A8(v97);
  v91 = v56;
  v92 = sub_2688EFD0C(v93);
  v57 = 0;
  v90 = v93 & 0xC000000000000001;
  v12 = 1;
LABEL_35:
  if (v57 != v92)
  {
    sub_2688EFD10(v57, v90 == 0, v93);
    if (v90)
    {
      v58 = MEMORY[0x26D625BD0](v57, v93);
    }

    else
    {
      v58 = *(v93 + 32 + 8 * v57);
    }

    v40 = __OFADD__(v57, 1);
    v0 = v57 + 1;
    if (v40)
    {
      goto LABEL_66;
    }

    v94 = v58;
    v95 = v0;
    v96 = v12;
    v59 = sub_2689CB550();
    v60 = sub_2688EFD0C(v59);
    v13 = 0;
    v0 = v59 & 0xC000000000000001;
    v5 = v59 & 0xFFFFFFFFFFFFFF8;
    v98 = MEMORY[0x277D84F90];
    while (1)
    {
LABEL_40:
      if (v60 == v13)
      {

        sub_26893E6A8(v98);
        v13 = sub_268903940(v91, v73);

        v12 = v13 & v96;
        v57 = v95;
        goto LABEL_35;
      }

      if (v0)
      {
        v61 = MEMORY[0x26D625BD0](v13, v59);
      }

      else
      {
        if (v13 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v61 = *(v59 + 8 * v13 + 32);
      }

      v62 = v61;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:

        v14 = MEMORY[0x26D625BD0](0, v12);

        goto LABEL_4;
      }

      v63 = [v61 context];
      if (!v63)
      {
        break;
      }

      v64 = sub_268B0F784(v63);
      v12 = v65;

      if (!v12)
      {
        goto LABEL_53;
      }

      v66 = swift_isUniquelyReferenced_nonNull_native();
      if ((v66 & 1) == 0)
      {
        OUTLINED_FUNCTION_169_0(v66, v67, v68, v98);
        sub_2689876A4();
        v98 = v71;
      }

      v69 = *(v98 + 16);
      if (v69 >= *(v98 + 24) >> 1)
      {
        sub_2689876A4();
        v98 = v72;
      }

      *(v98 + 16) = v69 + 1;
      v70 = v98 + 16 * v69;
      *(v70 + 32) = v64;
      *(v70 + 40) = v12;
      ++v13;
    }

LABEL_53:
    ++v13;
    goto LABEL_40;
  }

  v85(v88, v86, v84);
  v74 = sub_268B37A34();
  v75 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 67109120;
    v76[1] = v12 & 1;
    OUTLINED_FUNCTION_27();
    _os_log_impl(v77, v78, v79, v80, v81, 8u);
    OUTLINED_FUNCTION_83_0();
  }

  v82 = OUTLINED_FUNCTION_278();
  v83(v82);
  if ((v12 & 1) == 0)
  {
  }

LABEL_61:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268903940(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v24 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        v17 = *(a1 + 40);
        sub_268B38514();

        sub_268B37C54();
        v18 = sub_268B38544();
        v19 = ~(-1 << *(a1 + 32));
        do
        {
          v20 = v18 & v19;
          if (((*(v9 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
          {

            return 0;
          }

          v21 = (*(a1 + 48) + 16 * v20);
          if (*v21 == v16 && v21[1] == v15)
          {
            break;
          }

          v23 = sub_268B38444();
          v18 = v20 + 1;
        }

        while ((v23 & 1) == 0);

        v2 = v24;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}