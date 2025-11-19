uint64_t sub_2698077F0(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v12 = sub_26973CEF8(v8, v7);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v10[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F50, qword_269858D50);
        sub_2698552F4();
      }
    }

    else
    {
      sub_26980EFB0(v15);
      v17 = *a3;
      v18 = sub_26973CEF8(v8, v7);
      if ((v16 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v12 = v18;
    }

    v20 = *a3;
    if (v16)
    {

      *(v20[7] + 8 * v12) = v9;
    }

    else
    {
      v20[(v12 >> 6) + 8] |= 1 << v12;
      v21 = (v20[6] + 16 * v12);
      *v21 = v8;
      v21[1] = v7;
      *(v20[7] + 8 * v12) = v9;
      v22 = v20[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_18;
      }

      v20[2] = v24;
    }

    ++v5;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2698555F4();
  __break(1u);
  return result;
}

uint64_t sub_2698079F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324298, &unk_2698679F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269807A6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_269815440(0, v1, 0);
  v2 = v31;
  result = sub_269811248(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v25 = v3 + 64;
  v26 = v3 + 56;
  v27 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v30 = v6;
      v28 = v8;
      v29 = v5;
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v15 = *(v31 + 16);
      v14 = *(v31 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_269815440(v14 > 1, v15 + 1, 1);
      }

      *(v31 + 16) = v15 + 1;
      v16 = (v31 + 24 * v15);
      v16[4] = v12;
      v16[5] = v13;
      v16[6] = MEMORY[0x277D84F90];
      if (v30)
      {
        goto LABEL_29;
      }

      v9 = v26;
      v3 = v27;
      v17 = 1 << *(v27 + 32);
      if (v7 >= v17)
      {
        goto LABEL_26;
      }

      v18 = *(v26 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v27 + 36) != v29)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (v25 + 8 * v10);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_26968E5C8(v7, v29, 0);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        result = sub_26968E5C8(v7, v29, 0);
      }

LABEL_19:
      v8 = v28 + 1;
      if (v28 + 1 == v1)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v27 + 36);
      v7 = v17;
      if (v17 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

BOOL sub_269807CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_269855674();
  sub_269854B34();
  v7 = sub_2698556C4();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_269855584();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

void sub_269807DA0()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v2 = sub_269851F04();
  v3 = OUTLINED_FUNCTION_8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  if (*(v1 + 16))
  {
    v11 = *(v1 + 40);
    OUTLINED_FUNCTION_2_39();
    sub_26980B58C(v12, v13);
    v14 = sub_269854A24();
    v15 = v1 + 56;
    v20 = v1;
    v16 = ~(-1 << *(v1 + 32));
    do
    {
      v17 = v14 & v16;
      if (((1 << (v14 & v16)) & *(v15 + (((v14 & v16) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v5 + 16))(v10, *(v20 + 48) + *(v5 + 72) * v17, v2);
      OUTLINED_FUNCTION_2_39();
      sub_26980B58C(&qword_280323F50, v18);
      v19 = sub_269854A54();
      (*(v5 + 8))(v10, v2);
      v14 = v17 + 1;
    }

    while ((v19 & 1) == 0);
  }

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269807F60(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = *(a2 + 40);
  sub_269854A94();
  sub_269855674();
  sub_269854B34();
  v4 = sub_2698556C4();

  v5 = ~(-1 << *(a2 + 32));
  do
  {
    v6 = v4 & v5;
    v7 = (1 << (v4 & v5)) & *(a2 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8));
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    v9 = *(*(a2 + 48) + 8 * v6);
    v10 = sub_269854A94();
    v12 = v11;
    if (v10 == sub_269854A94() && v12 == v13)
    {

      return 1;
    }

    v15 = sub_269855584();

    v4 = v6 + 1;
  }

  while ((v15 & 1) == 0);
  return v8;
}

void sub_2698080B0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v21 = a3 & 0xC000000000000001;
  v22 = sub_26975004C(a3);
  v19 = a3 & 0xFFFFFFFFFFFFFF8;
  v20 = a3;
  v6 = MEMORY[0x277D84F90];
  while (v22 != v5)
  {
    if (v21)
    {
      v7 = MEMORY[0x26D646120](v5, v20);
    }

    else
    {
      if (v5 >= *(v19 + 16))
      {
        goto LABEL_19;
      }

      v7 = *(v20 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v31 = v7;
    a1(&v25, &v31);
    if (v3)
    {

      return;
    }

    v9 = v26;
    if (v26)
    {
      v10 = v25;
      v11 = v27;
      v12 = v28;
      v23 = v30;
      v24 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = *(v6 + 16);
        sub_26977C904();
        v6 = v16;
      }

      v13 = *(v6 + 16);
      if (v13 >= *(v6 + 24) >> 1)
      {
        sub_26977C904();
        v6 = v17;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 48 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v9;
      *(v14 + 48) = v11;
      *(v14 + 56) = v12;
      *(v14 + 64) = v24;
      *(v14 + 72) = v23;
    }

    ++v5;
  }
}

uint64_t sub_269808254(void (*a1)(void), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325868, &qword_2698677D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - v10;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324390, &unk_2698677E0);
  v12 = OUTLINED_FUNCTION_8(v33);
  v29 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12();
  v32 = v16 - v17;
  result = MEMORY[0x28223BE20](v18);
  v21 = &v28 - v20;
  v22 = MEMORY[0x277D84F90];
  v23 = a3;
  v30 = a1;
  v31 = a3;
  while (1)
  {
    if (a4 == v23)
    {
      return v22;
    }

    if (a4 < a3)
    {
      break;
    }

    if (v23 >= a4)
    {
      goto LABEL_17;
    }

    v34 = v23;
    a1(&v34);
    if (v4)
    {

      return v22;
    }

    if (__swift_getEnumTagSinglePayload(v11, 1, v33) == 1)
    {
      result = sub_26969B0C0(v11, &qword_280325868, &qword_2698677D8);
    }

    else
    {
      sub_26980B5D4(v11, v21, &qword_280324390, &unk_2698677E0);
      sub_26980B5D4(v21, v32, &qword_280324390, &unk_2698677E0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(v22 + 16);
        sub_26977D158();
        v22 = v26;
      }

      v24 = *(v22 + 16);
      if (v24 >= *(v22 + 24) >> 1)
      {
        sub_26977D158();
        v22 = v27;
      }

      *(v22 + 16) = v24 + 1;
      result = sub_26980B5D4(v32, v22 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24, &qword_280324390, &unk_2698677E0);
      a1 = v30;
      a3 = v31;
    }

    ++v23;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_2698084F8(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v27[3] = a2;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v22 = v4;
  if (v8)
  {
LABEL_8:
    while (1)
    {
      v13 = (*(v4 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v27[0] = *v13;
      v27[1] = v14;

      a1(&v25, v27);
      if (v3)
      {
        break;
      }

      if (v26)
      {
        v23 = v26;
        v15 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = *(v11 + 16);
          sub_26977D270();
          v11 = v20;
        }

        v16 = *(v11 + 16);
        v17 = v23;
        if (v16 >= *(v11 + 24) >> 1)
        {
          sub_26977D270();
          v17 = v23;
          v11 = v21;
        }

        *(v11 + 16) = v16 + 1;
        v18 = v11 + 24 * v16;
        *(v18 + 32) = v15;
        *(v18 + 40) = v17;
        v4 = v22;
      }

      v8 &= v8 - 1;
      if (!v8)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        return;
      }

      v8 = *(v5 + 8 * v12);
      ++v10;
      if (v8)
      {
        v10 = v12;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2698086DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_12();
  v4 = v2 - v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_269854294();
  v8 = sub_2698542A4();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_2696C96F0(v7, v4);
  type metadata accessor for SiriRemembersPartialMatchEntitySignals();
  OUTLINED_FUNCTION_51_4();
  v9 = swift_allocObject();
  sub_26980881C();
  sub_26969B0C0(v7, &qword_280322D70, &qword_2698582E8);
  return v9;
}

void sub_26980881C()
{
  OUTLINED_FUNCTION_19_1();
  v78 = v1;
  v3 = v2;
  v73 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  v10 = OUTLINED_FUNCTION_5_12(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v71 = &v63 - v15;
  v76 = sub_2698542D4();
  v16 = OUTLINED_FUNCTION_8(v76);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12();
  v23 = (v21 - v22);
  MEMORY[0x28223BE20](v24);
  v65 = (&v63 - v25);
  v72 = sub_2698541D4();
  v26 = OUTLINED_FUNCTION_8(v72);
  v68 = v27;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v64 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v66 = v34;
  v67 = &v63 - v33;
  MEMORY[0x28223BE20](v32);
  v77 = &v63 - v35;
  v36 = "entityPartialAppCount";
  v74 = v3;
  v37 = 0xD000000000000015;
  if (v3)
  {
    v37 = 0xD000000000000016;
  }

  else
  {
    v36 = "signalNamePrefix";
  }

  *(v0 + 16) = v37;
  *(v0 + 24) = v36 | 0x8000000000000000;
  v75 = v0;
  v38 = sub_269808DD8(v8, v6);

  v39 = *(v38 + 16);
  v69 = v14;
  v70 = v12;
  if (v39)
  {
    v83 = MEMORY[0x277D84F90];
    sub_269815018(0, v39, 0);
    v40 = v83;
    LODWORD(v82) = *MEMORY[0x277D5FFF0];
    v80 = *(v18 + 104);
    v81 = v18 + 104;
    v79 = v18 + 32;
    v63 = v38;
    v41 = (v38 + 40);
    v42 = v76;
    do
    {
      v43 = *v41;
      *v23 = *(v41 - 1);
      v23[1] = v43;
      v80(v23, v82, v42);
      v83 = v40;
      v45 = *(v40 + 16);
      v44 = *(v40 + 24);

      if (v45 >= v44 >> 1)
      {
        sub_269815018(v44 > 1, v45 + 1, 1);
        v40 = v83;
      }

      *(v40 + 16) = v45 + 1;
      (*(v18 + 32))(v40 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v45, v23, v42);
      v41 += 2;
      --v39;
    }

    while (v39);
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  v46 = v64;
  sub_2698541C4();
  v47 = v67;
  sub_2698541B4();
  v48 = v68;
  v49 = *(v68 + 8);
  v50 = v72;
  v49(v46, v72);
  v82 = v49;
  v51 = v65;
  *v65 = v40;
  v52 = v76;
  (*(v18 + 104))(v51, *MEMORY[0x277D5FFE0], v76);
  v53 = v77;
  sub_2698541A4();
  (*(v18 + 8))(v51, v52);
  v49(v47, v50);
  v54 = v71;
  sub_2696C96F0(v78, v71);
  (*(v48 + 16))(v47, v53, v50);
  v55 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v56 = (v69 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (*(v48 + 80) + v56 + 8) & ~*(v48 + 80);
  v58 = v57 + v66;
  v59 = swift_allocObject();
  sub_26980B5D4(v54, v59 + v55, &qword_280322D70, &qword_2698582E8);
  *(v59 + v56) = v73;
  (*(v48 + 32))(v59 + v57, v47, v50);
  *(v59 + v58) = v74 & 1;
  OUTLINED_FUNCTION_23();
  v60 = swift_allocObject();
  *(v60 + 16) = sub_26980B3D4;
  *(v60 + 24) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325840, &qword_2698677C0);
  swift_allocObject();
  sub_269809FA0();
  v62 = v61;
  sub_26969B0C0(v78, &qword_280322D70, &qword_2698582E8);
  v82(v77, v50);
  *(v75 + 32) = v62;
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269808DD8(uint64_t a1, uint64_t a2)
{
  sub_26969329C(0, &qword_280325848, 0x277CD89D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325850, &qword_2698677C8);
  OUTLINED_FUNCTION_51_4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269857710;
  v5 = *MEMORY[0x277CD8960];
  *(v4 + 32) = *MEMORY[0x277CD8960];
  v6 = v5;
  v7 = sub_269809DD0();
  sub_26980B18C(a1, a2, v7);
  v18 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325858, &qword_2698677D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26985A2C0;
  v9 = *MEMORY[0x277CD88E0];
  v10 = *MEMORY[0x277CD88F0];
  *(inited + 32) = *MEMORY[0x277CD88E0];
  *(inited + 40) = v10;
  v11 = *MEMORY[0x277CD8918];
  v12 = *MEMORY[0x277CD8930];
  *(inited + 48) = *MEMORY[0x277CD8918];
  *(inited + 56) = v12;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_269831A98(inited);
  sub_269855014();

  return v18;
}

uint64_t sub_269808FA8(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24[-v13];
  v15 = sub_2698542A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v24[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2696C96F0(a3, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_26969B0C0(v14, &qword_280322D70, &qword_2698582E8);
    v20 = sub_269807A6C(a4);
    sub_26980C27C(v20);
    a1();
  }

  else
  {
    v22 = (*(v16 + 32))(v19, v14, v15);
    MEMORY[0x28223BE20](v22);
    *&v24[-32] = a5;
    v24[-24] = a6 & 1;
    *&v24[-16] = v19;
    sub_2698084F8(sub_26980B4EC, &v24[-48], a4);
    sub_26980C27C(v23);
    a1();

    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_2698091D4@<X0>(uint64_t *a1@<X0>, int a2@<W2>, uint64_t (*a3)(char *, uint64_t)@<X3>, void *a4@<X8>)
{
  v44 = a3;
  LODWORD(v43) = a2;
  v47 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D78, &unk_26985A370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v40 - v7;
  v46 = sub_269854204();
  v41 = *(v46 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v46);
  v40 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269854284();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v40 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v24 = *a1;
  v25 = a1[1];
  v48 = v24;
  sub_269854274();
  sub_269854254();
  v28 = *(v11 + 8);
  v26 = (v11 + 8);
  v27 = v28;
  v28(v15, v10);
  sub_269854244();
  v29 = v18;
  v30 = v42;
  v28(v29, v10);
  v43 = v25;
  v31 = v10;
  sub_269854264();
  v28(v21, v10);
  v32 = v45;
  sub_269854234();
  if (v32)
  {

    __swift_storeEnumTagSinglePayload(v30, 1, 1, v46);
    sub_26969B0C0(v30, &qword_280322D78, &unk_26985A370);
    v33 = v43;

    result = v27(v23, v10);
    v35 = MEMORY[0x277D84F90];
  }

  else
  {
    v44 = v27;
    v45 = v26;
    v36 = v46;
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v46);
    v38 = v40;
    v37 = v41;
    (*(v41 + 32))(v40, v30, v36);
    v33 = v43;

    v35 = sub_2698541E4();
    (*(v37 + 8))(v38, v36);
    result = v44(v23, v31);
  }

  v39 = v47;
  *v47 = v48;
  v39[1] = v33;
  v39[2] = v35;
  return result;
}

uint64_t sub_26980957C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1), uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(sub_269693184, v6);
}

void sub_269809610()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v27 = MEMORY[0x277D84F90];
  sub_269815070(0, 7, 0);
  v2 = 0;
  v3 = v27;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  do
  {
    v6 = byte_287A39490[v2 + 32];
    v23 = v5;
    v24 = v4;

    MEMORY[0x26D645A60](46, 0xE100000000000000);
    v7 = 0xE400000000000000;
    v8 = 1852402994;
    switch(v6)
    {
      case 1:
        v7 = 0xE500000000000000;
        v8 = 0x6E696D3031;
        break;
      case 2:
        v7 = 0xE300000000000000;
        v8 = 7497777;
        break;
      case 3:
        v8 = 7497782;
        v7 = 0xE300000000000000;
        break;
      case 4:
        v8 = 2036425777;
        break;
      case 5:
        v8 = 2036425783;
        break;
      case 6:
        v7 = 0xE500000000000000;
        v8 = 0x7961643832;
        break;
      default:
        break;
    }

    MEMORY[0x26D645A60](v8, v7);

    v9 = v23;
    v10 = v24;
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    *(v11 + 24) = v6;
    v12 = type metadata accessor for GetterSignal();
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = v10;
    v13[4] = sub_26980B27C;
    v13[5] = v11;
    v25 = v12;
    v14 = sub_26980B58C(&qword_280325808, type metadata accessor for GetterSignal);
    v26 = v14;
    v27 = v3;
    v23 = v13;
    v16 = *(v3 + 16);
    v15 = *(v3 + 24);

    if (v16 >= v15 >> 1)
    {
      sub_269815070((v15 > 1), v16 + 1, 1);
      v12 = v25;
      v14 = v26;
    }

    ++v2;
    v17 = __swift_mutable_project_boxed_opaque_existential_1(&v23, v12);
    v18 = *(*(v12 - 8) + 64);
    MEMORY[0x28223BE20](v17);
    OUTLINED_FUNCTION_3_1();
    v21 = v20 - v19;
    (*(v22 + 16))(v20 - v19);
    sub_26980B1E4(v16, v21, &v27, v12, v14);
    __swift_destroy_boxed_opaque_existential_0(&v23);
    v3 = v27;
  }

  while (v2 != 7);
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2698098FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(a3 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;

  sub_26980A22C();
}

uint64_t sub_2698099B4(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v50 = a4;
  v51 = a3;
  v60 = a2;
  v59 = sub_269854224();
  v5 = *(v59 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269853904();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8);
  v47 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803255E8, &unk_269866810);
  result = sub_269855394();
  v13 = 0;
  v15 = v11 + 64;
  v14 = *(v11 + 64);
  v57 = v11;
  v16 = 1 << *(v11 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v46 = *MEMORY[0x277D5FF68];
  v20 = (v5 + 104);
  v45 = *MEMORY[0x277D5FF58];
  v44 = *MEMORY[0x277D5FF70];
  v43 = *MEMORY[0x277D5FF50];
  v42 = *MEMORY[0x277D5FF80];
  v41 = *MEMORY[0x277D5FF60];
  v56 = *MEMORY[0x277D5FF88];
  v54 = result;
  v55 = (v5 + 8);
  v52 = result + 64;
  v53 = (v5 + 104);
  if ((v17 & v14) != 0)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_10:
      v24 = v21 | (v13 << 6);
      v25 = *(v57 + 56);
      v26 = (*(v57 + 48) + 16 * v24);
      v27 = v26[1];
      v61 = *v26;
      v28 = *(v25 + 8 * v24);
      v29 = v56;
      switch(v60)
      {
        case 1:
          v29 = v41;
          break;
        case 2:
          v29 = v42;
          break;
        case 3:
          v29 = v43;
          break;
        case 4:
          v29 = v44;
          break;
        case 5:
          v29 = v45;
          break;
        case 6:
          v29 = v46;
          break;
        default:
          break;
      }

      v30 = v58;
      v31 = v59;
      (*v20)(v58, v29, v59);

      v32 = sub_269854214();
      result = (*v55)(v30, v31);
      if (v32 >= *(v28 + 16))
      {

        v33 = -1;
      }

      else
      {
        if (v32 < 0)
        {
          goto LABEL_27;
        }

        v33 = *(v28 + 2 * v32 + 32);
      }

      *(v52 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v20 = v53;
      result = v54;
      v34 = (*(v54 + 48) + 16 * v24);
      *v34 = v61;
      v34[1] = v27;
      *(*(result + 56) + 8 * v24) = v33;
      v35 = *(result + 16);
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        break;
      }

      *(result + 16) = v37;
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v19)
      {
        v39 = v47;
        v38 = v48;
        *v47 = result;
        v40 = v49;
        (*(v38 + 104))(v39, *MEMORY[0x277D60188], v49);
        v51(v39);
        return (*(v38 + 8))(v39, v40);
      }

      v23 = *(v15 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v18 = (v23 - 1) & v23;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id sub_269809DD0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NLTagScheme(0);
  v1 = sub_269854CA4();

  v2 = [v0 initWithTagSchemes_];

  return v2;
}

uint64_t sub_269809E48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a1)
  {
    v7 = a1;
    if (sub_269807F60(v7, a4))
    {
    }

    else
    {
      v8 = sub_269854C04();
      v9 = MEMORY[0x26D645A10](v8);
      v11 = v10;

      sub_26977BA60();
      v12 = *(*a5 + 16);
      sub_26977BBB8();

      v13 = *a5;
      *(v13 + 16) = v12 + 1;
      v14 = v13 + 16 * v12;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }
  }

  return 1;
}

uint64_t sub_269809F14()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_269809F3C()
{
  sub_269809F14();
  OUTLINED_FUNCTION_51_4();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_269809FA0()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v1;
  v21 = v3;
  v22 = v4;
  v20 = sub_269854F94();
  v5 = OUTLINED_FUNCTION_8(v20);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = sub_269854F74();
  v14 = OUTLINED_FUNCTION_4_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = sub_269854994();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_3_1();
  v19 = MEMORY[0x277D84F90];
  v0[4] = v2;
  v0[5] = v19;
  sub_26969329C(0, &qword_2815718E0, 0x277D85C78);
  sub_269854974();
  sub_26980B58C(&qword_2815718E8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324D40, &unk_269862100);
  sub_2697A1A60(&qword_281571900, &unk_280324D40, &unk_269862100);
  sub_269855174();
  (*(v7 + 104))(v12, *MEMORY[0x277D85260], v20);
  v0[6] = sub_269854FB4();
  v0[2] = v21;
  v0[3] = v22;
  OUTLINED_FUNCTION_21_0();
}

void sub_26980A22C()
{
  OUTLINED_FUNCTION_19_1();
  v31 = v1;
  v3 = v2;
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v9 = sub_269854954();
  v10 = OUTLINED_FUNCTION_8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  v33 = sub_269854994();
  v18 = OUTLINED_FUNCTION_8(v33);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v25 = v24 - v23;
  v32 = *(v4 + 48);
  OUTLINED_FUNCTION_51_4();
  v26 = swift_allocObject();
  v26[2] = v4;
  v26[3] = v8;
  v26[4] = v6;
  v34[4] = v3;
  v34[5] = v26;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 1107296256;
  OUTLINED_FUNCTION_4_39();
  v34[2] = v27;
  v34[3] = v31;
  v28 = _Block_copy(v34);

  sub_269854974();
  OUTLINED_FUNCTION_3_46();
  sub_26980B58C(v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_2697A1A60(&qword_281571908, &unk_2803228A0, &qword_2698577D0);
  sub_269855174();
  MEMORY[0x26D645EA0](0, v25, v17, v28);
  _Block_release(v28);
  (*(v12 + 8))(v17, v9);
  (*(v20 + 8))(v25, v33);

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_26980A498(void *a1, void (*a2)(void *), uint64_t a3)
{
  v6 = a1[4];
  if (v6 == 2)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    swift_beginAccess();

    sub_26977BB18();
    v17 = *(a1[5] + 16);
    sub_26977BC6C();
    v18 = a1[5];
    *(v18 + 16) = v17 + 1;
    v19 = v18 + 16 * v17;
    *(v19 + 32) = sub_26980B398;
    *(v19 + 40) = v16;
    a1[5] = v18;
    return swift_endAccess();
  }

  else if (v6 == 1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    swift_beginAccess();

    sub_26977BB18();
    v8 = *(a1[5] + 16);
    sub_26977BC6C();
    v9 = a1[5];
    *(v9 + 16) = v8 + 1;
    v10 = v9 + 16 * v8;
    *(v10 + 32) = sub_26980B660;
    *(v10 + 40) = v7;
    a1[5] = v9;
    swift_endAccess();
    v11 = a1[4];
    a1[4] = 2;
    sub_26980B564(v11);
    v13 = a1[2];
    v12 = a1[3];
    v14 = swift_allocObject();
    swift_weakInit();

    v13(sub_26980B578, v14);
  }

  else
  {
    v20[0] = a1[4];

    a2(v20);
  }
}

uint64_t sub_26980A680(void *a1, void (*a2)(void *), uint64_t a3)
{
  v6 = a1[4];
  if (v6 == 1)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    swift_beginAccess();

    sub_26977BB90();
    v17 = *(a1[5] + 16);
    sub_26977BCBC();
    v18 = a1[5];
    *(v18 + 16) = v17 + 1;
    v19 = v18 + 16 * v17;
    *(v19 + 32) = sub_26980B398;
    *(v19 + 40) = v16;
    a1[5] = v18;
    return swift_endAccess();
  }

  else if (v6)
  {
    v20[0] = a1[4];

    a2(v20);
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    swift_beginAccess();

    sub_26977BB90();
    v8 = *(a1[5] + 16);
    sub_26977BCBC();
    v9 = a1[5];
    *(v9 + 16) = v8 + 1;
    v10 = v9 + 16 * v8;
    *(v10 + 32) = sub_26980B660;
    *(v10 + 40) = v7;
    a1[5] = v9;
    swift_endAccess();
    v11 = a1[4];
    a1[4] = 1;
    sub_26968C9EC(v11);
    v13 = a1[2];
    v12 = a1[3];
    v14 = swift_allocObject();
    swift_weakInit();

    v13(sub_26980B3CC, v14);
  }
}

uint64_t sub_26980A864(void *a1, void (*a2)(void *), uint64_t a3)
{
  v6 = a1[4];
  if (v6 == 1)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    swift_beginAccess();

    sub_26977BBA4();
    v17 = *(a1[5] + 16);
    sub_26977BCD0();
    v18 = a1[5];
    *(v18 + 16) = v17 + 1;
    v19 = v18 + 16 * v17;
    *(v19 + 32) = sub_26980B660;
    *(v19 + 40) = v16;
    a1[5] = v18;
    return swift_endAccess();
  }

  else if (v6)
  {
    v20[0] = a1[4];

    a2(v20);
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    swift_beginAccess();

    sub_26977BBA4();
    v8 = *(a1[5] + 16);
    sub_26977BCD0();
    v9 = a1[5];
    *(v9 + 16) = v8 + 1;
    v10 = v9 + 16 * v8;
    *(v10 + 32) = sub_26980B660;
    *(v10 + 40) = v7;
    a1[5] = v9;
    swift_endAccess();
    v11 = a1[4];
    a1[4] = 1;
    sub_26968C9EC(v11);
    v13 = a1[2];
    v12 = a1[3];
    v14 = swift_allocObject();
    swift_weakInit();

    v13(sub_26980B378, v14);
  }
}

uint64_t sub_26980AA48(uint64_t a1)
{
  v2 = sub_269854954();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269854994();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v19 = *(result + 48);
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a1;
    aBlock[4] = sub_26980B580;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2696A8DD0;
    aBlock[3] = &block_descriptor_76;
    v18 = _Block_copy(aBlock);

    sub_269854974();
    v20 = MEMORY[0x277D84F90];
    sub_26980B58C(&qword_281571918, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
    v17 = v7;
    sub_2697A1A60(&qword_281571908, &unk_2803228A0, &qword_2698577D0);
    sub_269855174();
    v15 = v18;
    MEMORY[0x26D645EA0](0, v11, v6, v18);
    _Block_release(v15);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v17);
  }

  return result;
}

void sub_26980AD40()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_269854954();
  v7 = OUTLINED_FUNCTION_8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  v15 = sub_269854994();
  v16 = OUTLINED_FUNCTION_8(v15);
  v31 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v22 = v21 - v20;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v30 = *(Strong + 48);
    OUTLINED_FUNCTION_23();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v5;
    v32[4] = v3;
    v32[5] = v25;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 1107296256;
    OUTLINED_FUNCTION_4_39();
    v32[2] = v26;
    v32[3] = v1;
    v27 = _Block_copy(v32);

    sub_269854974();
    OUTLINED_FUNCTION_3_46();
    sub_26980B58C(v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
    sub_2697A1A60(&qword_281571908, &unk_2803228A0, &qword_2698577D0);
    sub_269855174();
    MEMORY[0x26D645EA0](0, v22, v14, v27);
    _Block_release(v27);
    (*(v9 + 8))(v14, v6);
    (*(v31 + 8))(v22, v15);
  }

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_26980AFD4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  *(a1 + 32) = a2;

  sub_26980B564(v4);
  swift_beginAccess();
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(a1 + 40);

    v8 = (v5 + 40);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v13 = a2;

      v10(&v13);

      v8 += 2;
      --v6;
    }

    while (v6);

    v11 = *(a1 + 40);
  }

  *(a1 + 40) = MEMORY[0x277D84F90];
}

uint64_t sub_26980B0AC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = *(a1 + 32);
  *(a1 + 32) = a2;

  a3(v6);
  swift_beginAccess();
  v7 = *(a1 + 40);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(a1 + 40);

    v10 = (v7 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v15 = a2;

      v12(&v15);

      v10 += 2;
      --v8;
    }

    while (v8);

    v13 = *(a1 + 40);
  }

  *(a1 + 40) = MEMORY[0x277D84F90];
}

void sub_26980B18C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();
  [a3 setString_];
}

uint64_t sub_26980B1E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_26968E5D4(&v12, v10 + 40 * a1 + 32);
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26980B3D4(void (*a1)(void), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  OUTLINED_FUNCTION_5_12(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = sub_2698541D4();
  OUTLINED_FUNCTION_5_12(v10);
  v13 = *(v2 + v9);
  v14 = v2 + ((v9 + *(v11 + 80) + 8) & ~*(v11 + 80));
  v15 = *(v14 + *(v12 + 64));

  return sub_269808FA8(a1, a2, v2 + v7, v13, v14, v15);
}

uint64_t sub_26980B510(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  return sub_269809E48(a1, a2, a3, *(v3 + 16), *(v3 + 24));
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_51_4();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_26980B564(uint64_t result)
{
  if ((result - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_26980B58C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26980B5D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_3(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_12_29(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
}

uint64_t sub_26980B6D0(void (*a1)(void *))
{
  v3 = sub_269853904();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 16);

  sub_2697F1EE0(v9);
  v11 = v10;
  v12 = *v1;
  v16 = *(v1 + 24);
  v17 = v12;

  sub_269698250(&v17, v15);
  sub_269698250(&v16, v15);
  sub_2696C9ED8(v11, v1);
  *v7 = v13;
  (*(v4 + 104))(v7, *MEMORY[0x277D60188], v3);
  a1(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_26980B82C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_26980B85C(void (*a1)(void *))
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_26980B6D0(a1);
}

uint64_t sub_26980B8C4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_27_15(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_26980E0D0(result, 1, sub_26977C2B4);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324010, &qword_2698679E0);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26980B9A4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_27_15(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26980E0D0(result, 1, sub_26977C4D4);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_269852EF4();
  v8 = *(result - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26980BAD4(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_26980E148(result);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_26980BBC0(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v6 = *(a1 + 16);
  if (v6)
  {
    v8 = a1;
    v49 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v6, 0);
    v9 = v49;
    v10 = sub_2698110C4(v8);
    v13 = v12;
    v14 = 0;
    v44 = v8 + 56;
    v38 = v8 + 64;
    v39 = v6;
    v40 = a2;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(v8 + 32))
      {
        v15 = v10 >> 6;
        v16 = 1 << v10;
        if ((*(v44 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v8 + 36) != v11)
        {
          goto LABEL_28;
        }

        v42 = v10;
        v43 = v11;
        v41 = v14;
        v17 = v8;
        v18 = (*(v8 + 48) + 16 * v10);
        v19 = v18[1];
        v45[0] = *v18;
        v45[1] = v19;

        sub_26980DD94(v45, a2, &v46, a3);
        if (v4)
        {
          goto LABEL_32;
        }

        v21 = v46;
        v22 = v47;
        v23 = v48;
        v49 = v9;
        v25 = *(v9 + 16);
        v24 = *(v9 + 24);
        if (v25 >= v24 >> 1)
        {
          v36 = v47;
          v37 = v46;
          result = sub_269814EEC(v24 > 1, v25 + 1, 1);
          v22 = v36;
          v21 = v37;
          v9 = v49;
        }

        *(v9 + 16) = v25 + 1;
        v26 = (v9 + 24 * v25);
        v26[4] = v21;
        v26[5] = v22;
        v26[6] = v23;
        if (v13)
        {
          goto LABEL_33;
        }

        v27 = 1 << *(v17 + 32);
        if (v42 >= v27)
        {
          goto LABEL_29;
        }

        v28 = *(v44 + 8 * v15);
        if ((v28 & v16) == 0)
        {
          goto LABEL_30;
        }

        v8 = v17;
        if (*(v17 + 36) != v43)
        {
          goto LABEL_31;
        }

        v4 = 0;
        v29 = v28 & (-2 << (v42 & 0x3F));
        if (v29)
        {
          v27 = __clz(__rbit64(v29)) | v42 & 0x7FFFFFFFFFFFFFC0;
          v30 = v39;
        }

        else
        {
          v31 = v15 << 6;
          v32 = v15 + 1;
          v30 = v39;
          v33 = (v38 + 8 * v15);
          while (v32 < (v27 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              sub_26968E5C8(v42, v43, 0);
              v27 = __clz(__rbit64(v34)) + v31;
              goto LABEL_20;
            }
          }

          sub_26968E5C8(v42, v43, 0);
        }

LABEL_20:
        a2 = v40;
        v14 = v41 + 1;
        if (v41 + 1 == v30)
        {

          return v9;
        }

        v13 = 0;
        v11 = *(v8 + 36);
        v10 = v27;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_26980BE8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v31 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v1, 0);
    v3 = v31;
    result = sub_2698110C4(v2);
    v7 = result;
    v8 = 0;
    v9 = v2 + 56;
    v25 = v2 + 64;
    v26 = v2 + 56;
    v27 = v2;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v7 < 1 << *(v2 + 32))
      {
        v10 = v7 >> 6;
        if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v2 + 36) != v5)
        {
          goto LABEL_27;
        }

        v30 = v6;
        v28 = v8;
        v29 = v5;
        v11 = (*(v2 + 48) + 16 * v7);
        v12 = *v11;
        v13 = v11[1];
        v15 = *(v31 + 16);
        v14 = *(v31 + 24);

        if (v15 >= v14 >> 1)
        {
          result = sub_269814EEC(v14 > 1, v15 + 1, 1);
        }

        *(v31 + 16) = v15 + 1;
        v16 = (v31 + 24 * v15);
        v16[4] = v12;
        v16[5] = v13;
        v16[6] = -1;
        if (v30)
        {
          goto LABEL_31;
        }

        v9 = v26;
        v2 = v27;
        v17 = 1 << *(v27 + 32);
        if (v7 >= v17)
        {
          goto LABEL_28;
        }

        v18 = *(v26 + 8 * v10);
        if ((v18 & (1 << v7)) == 0)
        {
          goto LABEL_29;
        }

        if (*(v27 + 36) != v29)
        {
          goto LABEL_30;
        }

        v19 = v18 & (-2 << (v7 & 0x3F));
        if (v19)
        {
          v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v10 << 6;
          v21 = v10 + 1;
          v22 = (v25 + 8 * v10);
          while (v21 < (v17 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              result = sub_26968E5C8(v7, v29, 0);
              v17 = __clz(__rbit64(v23)) + v20;
              goto LABEL_19;
            }
          }

          result = sub_26968E5C8(v7, v29, 0);
        }

LABEL_19:
        v8 = v28 + 1;
        if (v28 + 1 == v1)
        {

          return v3;
        }

        v6 = 0;
        v5 = *(v27 + 36);
        v7 = v17;
        if (v17 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_26980C18C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_86();
    v9 = sub_2698553C4();
  }

  else
  {
    v9 = MEMORY[0x277D84F98];
  }

  v12 = v9;

  sub_26980FCC4(v10, 1, &v12, a2, a3, a4, a5);

  return v12;
}

uint64_t sub_26980C2CC(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_86();
    v5 = sub_2698553C4();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

void sub_26980C370(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_269690530;
    v4[3] = &block_descriptor_35_0;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setFoundItemsHandler_];
  _Block_release(v3);
}

void sub_26980C41C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_26969106C;
    v4[3] = &block_descriptor_32;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setCompletionHandler_];
  _Block_release(v3);
}

id sub_26980C4EC(uint64_t a1, uint64_t a2)
{
  sub_269855204();

  MEMORY[0x26D645A60](a1, a2);
  MEMORY[0x26D645A60](0x7477646322, 0xE500000000000000);
  v4 = objc_allocWithZone(MEMORY[0x277CC3498]);
  return sub_26980E010(0x3D3D20656C746974, 0xEA00000000002220, &unk_287A3B748);
}

uint64_t sub_26980C5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0xD000000000000016;
  *(v4 + 24) = 0x800000026987AD10;
  *(v4 + 64) = xmmword_2698678A0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  return v4;
}

uint64_t sub_26980C5EC(uint64_t a1, uint64_t a2)
{
  v93 = a1;
  v83 = a2;
  v2 = sub_269854954();
  v89 = OUTLINED_FUNCTION_8(v2);
  v90 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_3_1();
  v88 = v7 - v6;
  v8 = sub_269854944();
  v9 = OUTLINED_FUNCTION_8(v8);
  v84 = v10;
  v85 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v82 = (v14 - v13);
  v15 = sub_2698549B4();
  v94 = OUTLINED_FUNCTION_8(v15);
  v95 = v16;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v94);
  v80 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v81 = &v74 - v21;
  v77 = sub_269854F94();
  v22 = OUTLINED_FUNCTION_8(v77);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v29 = v28 - v27;
  v30 = sub_269854F74();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_1();
  v32 = sub_269854994();
  v33 = OUTLINED_FUNCTION_8(v32);
  v86 = v34;
  v87 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_1();
  v39 = v38 - v37;
  v91 = swift_allocObject();
  v40 = MEMORY[0x277D84F90];
  *(v91 + 16) = MEMORY[0x277D84F90];
  v41 = v40;
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  v75 = sub_26969329C(0, &qword_2815718E0, 0x277D85C78);
  v78 = v39;
  sub_269854974();
  aBlock[0] = v41;
  sub_26981114C(&qword_2815718E8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324D40, &unk_269862100);
  v79 = MEMORY[0x277D83970];
  sub_26971CA38(&qword_281571900, &unk_280324D40, &unk_269862100);
  sub_269855174();
  (*(v24 + 104))(v29, *MEMORY[0x277D85260], v77);
  v42 = sub_269854FB4();
  v43 = *(v92 + 56);
  v44 = (*(v92 + 48))();
  v46 = v45;
  ObjectType = swift_getObjectType();
  v75 = ObjectType;
  v48 = swift_allocObject();
  v49 = v91;
  *(v48 + 16) = v42;
  *(v48 + 24) = v49;
  v50 = *(v46 + 16);
  v51 = v42;

  v50(sub_269811104, v48, ObjectType, v46);
  v52 = swift_allocObject();
  v53 = v76;
  v52[2] = v51;
  v52[3] = v53;
  v55 = v92;
  v54 = v93;
  v52[4] = v92;
  v52[5] = v54;
  v56 = v83;
  v52[6] = v83;
  v52[7] = v49;
  v57 = *(v46 + 40);
  v77 = v51;

  v58 = v75;
  v57(sub_26981110C, v52, v75, v46);
  v59 = v44;
  (*(v46 + 56))(v58, v46);
  v60 = v80;
  sub_2698549A4();
  v61 = v55;
  v62 = v82;
  *v82 = *(v55 + 40);
  v64 = v84;
  v63 = v85;
  (*(v84 + 104))(v62, *MEMORY[0x277D85178], v85);
  v65 = v81;
  MEMORY[0x26D6458C0](v60, v62);
  (*(v64 + 8))(v62, v63);
  v66 = *(v95 + 8);
  v95 += 8;
  v85 = v66;
  v66(v60, v94);
  v67 = swift_allocObject();
  v67[2] = v53;
  v67[3] = v59;
  v67[4] = v46;
  v67[5] = v61;
  v67[6] = v93;
  v67[7] = v56;
  aBlock[4] = sub_26981111C;
  aBlock[5] = v67;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2696A8DD0;
  aBlock[3] = &block_descriptor_26;
  v68 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  v69 = v78;
  sub_269854974();
  v96 = MEMORY[0x277D84F90];
  sub_26981114C(&qword_281571918, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_26971CA38(&qword_281571908, &unk_2803228A0, &qword_2698577D0);
  v71 = v88;
  v70 = v89;
  sub_269855174();
  v72 = v77;
  MEMORY[0x26D645E80](v65, v69, v71, v68);
  _Block_release(v68);

  swift_unknownObjectRelease();
  (*(v90 + 8))(v71, v70);
  (*(v86 + 8))(v69, v87);
  v85(v65, v94);
}

uint64_t sub_26980CE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v5 = sub_269854954();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_269854994();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  aBlock[4] = sub_2698111C0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2696A8DD0;
  aBlock[3] = &block_descriptor_29_1;
  v15 = _Block_copy(aBlock);

  sub_269854974();
  v20 = MEMORY[0x277D84F90];
  sub_26981114C(&qword_281571918, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_26971CA38(&qword_281571908, &unk_2803228A0, &qword_2698577D0);
  sub_269855174();
  MEMORY[0x26D645EA0](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);
}

uint64_t sub_26980D0E0()
{
  swift_beginAccess();

  sub_26980BAD4(v0, sub_26975004C, sub_269810A94);
  return swift_endAccess();
}

uint64_t sub_26980D160(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a2;
  v13 = sub_269854954();
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_269854994();
  v17 = *(v25 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v25);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a1;
  v21[4] = a4;
  v21[5] = a5;
  v21[6] = a6;
  v21[7] = a7;
  aBlock[4] = sub_269811190;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2696A8DD0;
  aBlock[3] = &block_descriptor_23_1;
  v22 = _Block_copy(aBlock);

  v23 = a1;

  sub_269854974();
  v28 = MEMORY[0x277D84F90];
  sub_26981114C(&qword_281571918, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_26971CA38(&qword_281571908, &unk_2803228A0, &qword_2698577D0);
  sub_269855174();
  MEMORY[0x26D645EA0](0, v20, v16, v22);
  _Block_release(v22);
  (*(v26 + 8))(v16, v13);
  (*(v17 + 8))(v20, v25);
}

uint64_t sub_26980D46C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6)
{
  v47 = a3;
  v48 = a5;
  v10 = sub_269853904();
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_2698548D4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  result = swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    v46 = a4;
    swift_beginAccess();
    *(a1 + 16) = 1;
    if (a2)
    {
      v23 = a2;
      if (qword_2803226F0 != -1)
      {
        swift_once();
      }

      v45 = v10;
      v24 = __swift_project_value_buffer(v14, qword_28033D940);
      (*(v15 + 16))(v21, v24, v14);
      v25 = a2;
      v26 = sub_2698548B4();
      v27 = sub_269854F24();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v51 = v44;
        *v28 = 136315138;
        v50 = a2;
        v29 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
        v30 = sub_269854AE4();
        v32 = sub_26974F520(v30, v31, &v51);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_269684000, v26, v27, "SpotlightRelativeCountSignal error %s", v28, 0xCu);
        v33 = v44;
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x26D647170](v33, -1, -1);
        MEMORY[0x26D647170](v28, -1, -1);
      }

      (*(v15 + 8))(v21, v14);
      v34 = *(v47 + 32);

      v35 = sub_26980BE8C(v34);
      *v13 = sub_26980C2CC(v35, &qword_2803255E8, &unk_269866810, sub_26980F6FC);
      v36 = v49;
      v10 = v45;
      (*(v49 + 104))(v13, *MEMORY[0x277D60188], v45);
      v46(v13);
    }

    else
    {
      if (qword_2803226F0 != -1)
      {
        swift_once();
      }

      v37 = __swift_project_value_buffer(v14, qword_28033D940);
      (*(v15 + 16))(v19, v37, v14);

      v38 = sub_2698548B4();
      v39 = sub_269854F14();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        swift_beginAccess();
        *(v40 + 4) = sub_26975004C(*(a6 + 16));

        _os_log_impl(&dword_269684000, v38, v39, "SpotlightRelativeCountSignal completionHandler, gathered %ld items", v40, 0xCu);
        MEMORY[0x26D647170](v40, -1, -1);
      }

      else
      {
      }

      (*(v15 + 8))(v19, v14);
      swift_beginAccess();
      v41 = *(a6 + 16);

      v43 = sub_26980DD1C(v42);

      *v13 = v43;
      v36 = v49;
      (*(v49 + 104))(v13, *MEMORY[0x277D60188], v10);
      v46(v13);
    }

    return (*(v36 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_26980D9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v28 = a4;
  v29 = a6;
  v9 = sub_269853904();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_2698548D4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    v27 = a5;
    swift_beginAccess();
    *(a1 + 16) = 1;
    ObjectType = swift_getObjectType();
    (*(a3 + 64))(ObjectType, a3);
    if (qword_2803226F0 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v14, qword_28033D940);
    (*(v15 + 16))(v18, v21, v14);
    v22 = sub_2698548B4();
    v23 = sub_269854F24();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_269684000, v22, v23, "SpotlightRelativeCountSignal timeout", v24, 2u);
      MEMORY[0x26D647170](v24, -1, -1);
    }

    (*(v15 + 8))(v18, v14);
    v25 = *(v28 + 32);

    v26 = sub_26980BE8C(v25);
    *v13 = sub_26980C2CC(v26, &qword_2803255E8, &unk_269866810, sub_26980F6FC);
    (*(v10 + 104))(v13, *MEMORY[0x277D60188], v9);
    v27(v13);
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_26980DD1C(uint64_t a1)
{
  v3 = sub_26975004C(a1);
  v4 = *(v1 + 32);

  sub_26980BBC0(v4, a1, v3);
  OUTLINED_FUNCTION_22_19();
  return sub_26980C2CC(v5, v6, v7, v8);
}

void sub_26980DD94(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v6 = *a1;
  v7 = a1[1];
  v24 = MEMORY[0x277D84F90];
  v8 = sub_26975004C(a2);
  v9 = 0;
  v23 = v6;
  while (v8 != v9)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D646120](v9, a2);
    }

    else
    {
      if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v12 = sub_269810A30(v10);
    if (!v13)
    {

      goto LABEL_18;
    }

    if (v12 == v6 && v13 == v7)
    {

LABEL_16:
      sub_269855284();
      v16 = *(v24 + 16);
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      goto LABEL_17;
    }

    v15 = sub_269855584();

    if (v15)
    {
      goto LABEL_16;
    }

LABEL_17:
    v6 = v23;
LABEL_18:
    ++v9;
  }

  v17 = sub_26975004C(v24);

  v18 = v17 * 100.0 / a4;
  v19 = round(v18);
  v20 = v19 >= 9.22337204e18 || v19 <= -9.22337204e18;
  v21 = llround(v18);
  if (v20)
  {
    v21 = 0;
  }

  *a3 = v6;
  a3[1] = v7;
  a3[2] = v21;
}

void *sub_26980DF64()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[7];

  return v0;
}

uint64_t sub_26980DF94()
{
  sub_26980DF64();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

id sub_26980E010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_269854A64();

  if (a3)
  {
    v6 = sub_269854CA4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithQueryString:v5 attributes:v6];

  return v7;
}

uint64_t sub_26980E0D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_26980E148(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_269855324();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_269855234();
  *v1 = result;
  return result;
}

void sub_26980E1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  OUTLINED_FUNCTION_30_17();
  OUTLINED_FUNCTION_3_47(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803255E8, &unk_269866810);
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_23_19();
  if (!v17)
  {
LABEL_29:

    *v12 = v14;
    OUTLINED_FUNCTION_31_15();
    return;
  }

  v43 = v13;
  v18 = 0;
  v19 = v13;
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_36();
  if (!v15)
  {
LABEL_4:
    v21 = v18;
    while (1)
    {
      v18 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v18 >= v12)
      {
        break;
      }

      OUTLINED_FUNCTION_26_18();
      if (v22)
      {
        OUTLINED_FUNCTION_10_30();
        v15 = v24 & v23;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      OUTLINED_FUNCTION_9_35();
      if (v39 != v40)
      {
        OUTLINED_FUNCTION_15_29(v38);
      }

      else
      {
        v41 = OUTLINED_FUNCTION_14_30();
        sub_26980F698(v41, v42, v19);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_30();
LABEL_9:
    OUTLINED_FUNCTION_20_17(v20);
    v27 = *(v26 + 8 * v25);
    if ((a12 & 1) == 0)
    {
    }

    OUTLINED_FUNCTION_33_15();
    OUTLINED_FUNCTION_28_16();
    v28 = sub_2698556C4();
    OUTLINED_FUNCTION_1_52(v28);
    OUTLINED_FUNCTION_18_19(v29);
    if (v30)
    {
      break;
    }

    OUTLINED_FUNCTION_6_48();
LABEL_21:
    OUTLINED_FUNCTION_2_40(v31);
    OUTLINED_FUNCTION_24_19(v35);
    *(v37 + 8 * v36) = v27;
    OUTLINED_FUNCTION_13_28();
    v13 = v43;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_41();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (v30)
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

    OUTLINED_FUNCTION_17_23(v32);
    if (!v30)
    {
      OUTLINED_FUNCTION_4_40();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_26980E3B0(uint64_t a1)
{
  OUTLINED_FUNCTION_3_47(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803258D8, &unk_269867A30);
  sub_2698553A4();
  OUTLINED_FUNCTION_23_19();
  if (!v5)
  {
LABEL_31:

    *v1 = v3;
    return;
  }

  v6 = 0;
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_36();
  if (!v4)
  {
LABEL_4:
    v8 = v6;
    while (1)
    {
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v1)
      {
        break;
      }

      OUTLINED_FUNCTION_26_18();
      if (v9)
      {
        OUTLINED_FUNCTION_10_30();
        v4 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v3)
    {
      OUTLINED_FUNCTION_9_35();
      if (v26 != v27)
      {
        OUTLINED_FUNCTION_15_29(v25);
      }

      else
      {
        v28 = OUTLINED_FUNCTION_14_30();
        sub_26980F698(v28, v29, v2);
      }

      v2[2] = 0;
    }

    goto LABEL_31;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_30();
LABEL_9:
    v12 = v7 | (v6 << 6);
    v13 = *(v2[7] + 8 * v12);
    v30 = *(v2[6] + 16 * v12);
    v14 = *(v2[6] + 16 * v12 + 8);
    if ((v3 & 1) == 0)
    {
    }

    v15 = *(v3 + 40);
    sub_269855674();
    sub_269855694();
    if (v14)
    {
      sub_269854B34();
    }

    v16 = sub_2698556C4();
    OUTLINED_FUNCTION_1_52(v16);
    OUTLINED_FUNCTION_18_19(v17);
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_6_48();
LABEL_23:
    OUTLINED_FUNCTION_2_40(v19);
    *(v24 + 16 * v23) = v30;
    *(*(v3 + 56) + 8 * v23) = v13;
    OUTLINED_FUNCTION_13_28();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_41();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (v18)
    {
      if (v21)
      {
        break;
      }
    }

    if (v20 == v22)
    {
      v20 = 0;
    }

    OUTLINED_FUNCTION_17_23(v20);
    if (!v18)
    {
      OUTLINED_FUNCTION_4_40();
      goto LABEL_23;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_26980E594(uint64_t a1, char a2)
{
  v4 = v2;
  v6 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v7 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B10, &qword_26985C1F0);
  sub_2698553A4();
  OUTLINED_FUNCTION_23_19();
  if (!v8)
  {
LABEL_31:

LABEL_32:
    *v4 = v3;
    return;
  }

  v41 = v4;
  v9 = 0;
  OUTLINED_FUNCTION_0_59();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v3 + 8;
  if ((v11 & v10) == 0)
  {
LABEL_6:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v9 >= v14)
      {
        break;
      }

      ++v17;
      if (v6[v9])
      {
        OUTLINED_FUNCTION_10_30();
        v12 = v19 & v18;
        goto LABEL_11;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v41;
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_9_35();
    v4 = v41;
    if (v37 != v38)
    {
      OUTLINED_FUNCTION_15_29(v36);
    }

    else
    {
      v39 = OUTLINED_FUNCTION_14_30();
      sub_26980F698(v39, v40, v6);
    }

    v6[2] = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v20 = v16 | (v9 << 6);
    v21 = *(v6[6] + 8 * v20);
    v22 = *(v6[7] + 8 * v20);
    if ((a2 & 1) == 0)
    {
      v23 = v21;
    }

    v24 = v3[5];
    v25 = sub_269855054();
    OUTLINED_FUNCTION_1_52(v25);
    if (((v28 << v27) & ~v15[v26]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_6_48();
LABEL_23:
    OUTLINED_FUNCTION_7_45();
    *(v15 + v33) |= v34;
    *(v3[6] + 8 * v35) = v21;
    *(v3[7] + 8 * v35) = v22;
    OUTLINED_FUNCTION_13_28();
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_5_41();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (v32)
    {
      if (v30)
      {
        break;
      }
    }

    if (v29 == v31)
    {
      v29 = 0;
    }

    if (v15[v29] != -1)
    {
      OUTLINED_FUNCTION_4_40();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_26980E770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  OUTLINED_FUNCTION_30_17();
  OUTLINED_FUNCTION_3_47(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803258E8, &qword_269867A40);
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_23_19();
  if (!v17)
  {
LABEL_31:

    *v12 = v14;
    OUTLINED_FUNCTION_31_15();
    return;
  }

  v18 = 0;
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_36();
  if (!v15)
  {
LABEL_4:
    v20 = v18;
    while (1)
    {
      v18 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v18 >= v12)
      {
        break;
      }

      OUTLINED_FUNCTION_26_18();
      if (v21)
      {
        OUTLINED_FUNCTION_10_30();
        v15 = v23 & v22;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      OUTLINED_FUNCTION_9_35();
      if (v37 != v38)
      {
        OUTLINED_FUNCTION_15_29(v36);
      }

      else
      {
        v39 = OUTLINED_FUNCTION_14_30();
        sub_26980F698(v39, v40, v13);
      }

      v13[2] = 0;
    }

    goto LABEL_31;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_30();
LABEL_9:
    v24 = v19 | (v18 << 6);
    v25 = *(v13[6] + v24);
    v26 = *(v13[7] + 8 * v24);
    if ((a12 & 1) == 0)
    {
    }

    OUTLINED_FUNCTION_33_15();
    sub_269855694();
    if (v25 != 8)
    {
      MEMORY[0x26D646580](v25);
    }

    v27 = sub_2698556C4();
    OUTLINED_FUNCTION_1_52(v27);
    OUTLINED_FUNCTION_18_19(v28);
    if (v29)
    {
      break;
    }

    OUTLINED_FUNCTION_6_48();
LABEL_23:
    OUTLINED_FUNCTION_2_40(v30);
    *(v35 + v34) = v25;
    *(*(v14 + 56) + 8 * v34) = v26;
    OUTLINED_FUNCTION_13_28();
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_41();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (v29)
    {
      if (v32)
      {
        break;
      }
    }

    if (v31 == v33)
    {
      v31 = 0;
    }

    OUTLINED_FUNCTION_17_23(v31);
    if (!v29)
    {
      OUTLINED_FUNCTION_4_40();
      goto LABEL_23;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_26980E904(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803258B0, &unk_269867A00);
  v45 = a2;
  v7 = sub_2698553A4();
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return;
  }

  v43 = v3;
  v44 = v5;
  v8 = 0;
  v9 = v5;
  OUTLINED_FUNCTION_0_59();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 8;
  if ((v11 & v10) == 0)
  {
LABEL_6:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v17;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_10_30();
        v12 = v19 & v18;
        goto LABEL_11;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_32;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v43;
    if (v40 >= 64)
    {
      v41 = OUTLINED_FUNCTION_14_30();
      sub_26980F698(v41, v42, v9);
    }

    else
    {
      OUTLINED_FUNCTION_15_29(v40);
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v20 = v16 | (v8 << 6);
    v21 = (*(v5 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = (*(v5 + 56) + 16 * v20);
    v25 = v24[1];
    v46 = *v24;
    if ((v45 & 1) == 0)
    {
    }

    v26 = v7[5];
    sub_269855674();
    sub_269854B34();
    v27 = sub_2698556C4();
    OUTLINED_FUNCTION_1_52(v27);
    if (((v30 << v29) & ~v15[v28]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_6_48();
LABEL_23:
    OUTLINED_FUNCTION_7_45();
    *(v15 + v35) |= v36;
    v38 = (v7[6] + 16 * v37);
    *v38 = v22;
    v38[1] = v23;
    v39 = (v7[7] + 16 * v37);
    *v39 = v46;
    v39[1] = v25;
    OUTLINED_FUNCTION_13_28();
    v5 = v44;
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_5_41();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (v34)
    {
      if (v32)
      {
        break;
      }
    }

    if (v31 == v33)
    {
      v31 = 0;
    }

    if (v15[v31] != -1)
    {
      OUTLINED_FUNCTION_4_40();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_26980EB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  OUTLINED_FUNCTION_30_17();
  OUTLINED_FUNCTION_3_47(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_23_19();
  if (!v19)
  {
LABEL_29:

    *v12 = v14;
    OUTLINED_FUNCTION_31_15();
    return;
  }

  v46 = v13;
  v20 = 0;
  v21 = v13;
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_36();
  if (!v15)
  {
LABEL_4:
    v23 = v20;
    while (1)
    {
      v20 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v20 >= v12)
      {
        break;
      }

      OUTLINED_FUNCTION_26_18();
      if (v24)
      {
        OUTLINED_FUNCTION_10_30();
        v15 = v26 & v25;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      OUTLINED_FUNCTION_9_35();
      if (v42 != v43)
      {
        OUTLINED_FUNCTION_15_29(v41);
      }

      else
      {
        v44 = OUTLINED_FUNCTION_14_30();
        sub_26980F698(v44, v45, v21);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_30();
LABEL_9:
    OUTLINED_FUNCTION_20_17(v22);
    v29 = *(v28 + 8 * v27);
    if ((a12 & 1) == 0)
    {

      v30 = v29;
    }

    OUTLINED_FUNCTION_33_15();
    OUTLINED_FUNCTION_28_16();
    v31 = sub_2698556C4();
    OUTLINED_FUNCTION_1_52(v31);
    OUTLINED_FUNCTION_18_19(v32);
    if (v33)
    {
      break;
    }

    OUTLINED_FUNCTION_6_48();
LABEL_21:
    OUTLINED_FUNCTION_2_40(v34);
    OUTLINED_FUNCTION_24_19(v38);
    *(v40 + 8 * v39) = v29;
    OUTLINED_FUNCTION_13_28();
    v13 = v46;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_41();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (v33)
    {
      if (v36)
      {
        break;
      }
    }

    if (v35 == v37)
    {
      v35 = 0;
    }

    OUTLINED_FUNCTION_17_23(v35);
    if (!v33)
    {
      OUTLINED_FUNCTION_4_40();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_26980EC98(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v63 = a3(0);
  v11 = OUTLINED_FUNCTION_8(v63);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v62 = &v55 - v16;
  v17 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v18 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v60 = a2;
  v19 = sub_2698553A4();
  v20 = v19;
  if (!*(v17 + 16))
  {
LABEL_35:

LABEL_36:
    *v8 = v20;
    return;
  }

  v21 = 0;
  v22 = (v17 + 64);
  v23 = 1 << *(v17 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & *(v17 + 64);
  v26 = (v23 + 63) >> 6;
  v56 = v8;
  v57 = (v13 + 16);
  v58 = v17;
  v59 = v13;
  v61 = (v13 + 32);
  v27 = v19 + 64;
  if (!v25)
  {
LABEL_9:
    v29 = v21;
    while (1)
    {
      v21 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v21 >= v26)
      {
        break;
      }

      ++v29;
      if (v22[v21])
      {
        OUTLINED_FUNCTION_10_30();
        v25 = v31 & v30;
        goto LABEL_14;
      }
    }

    if ((v60 & 1) == 0)
    {

      v8 = v56;
      goto LABEL_36;
    }

    v52 = 1 << *(v17 + 32);
    v8 = v56;
    if (v52 >= 64)
    {
      v53 = OUTLINED_FUNCTION_14_30();
      sub_26980F698(v53, v54, v22);
    }

    else
    {
      *v22 = -1 << v52;
    }

    *(v17 + 16) = 0;
    goto LABEL_35;
  }

  while (1)
  {
    v28 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
LABEL_14:
    v32 = v28 | (v21 << 6);
    v33 = *(v17 + 56);
    v34 = (*(v17 + 48) + 16 * v32);
    v36 = *v34;
    v35 = v34[1];
    v37 = *(v59 + 72);
    v38 = v33 + v37 * v32;
    if (v60)
    {
      (*v61)(v62, v38, v63);
    }

    else
    {
      (*v57)(v62, v38, v63);
    }

    v39 = v20[5];
    sub_269855674();
    sub_269854B34();
    v40 = sub_2698556C4();
    OUTLINED_FUNCTION_1_52(v40);
    if (((v43 << v42) & ~*(v27 + 8 * v41)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_6_48();
LABEL_27:
    OUTLINED_FUNCTION_7_45();
    *(v27 + v48) |= v49;
    v51 = (v20[6] + 16 * v50);
    *v51 = v36;
    v51[1] = v35;
    (*v61)((v20[7] + v37 * v50), v62, v63);
    OUTLINED_FUNCTION_13_28();
    v17 = v58;
    if (!v25)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_5_41();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (v47)
    {
      if (v45)
      {
        break;
      }
    }

    if (v44 == v46)
    {
      v44 = 0;
    }

    if (*(v27 + 8 * v44) != -1)
    {
      OUTLINED_FUNCTION_4_40();
      goto LABEL_27;
    }
  }

LABEL_38:
  __break(1u);
}

void sub_26980EFB0(uint64_t a1)
{
  OUTLINED_FUNCTION_3_47(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325830, &unk_269867740);
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_23_19();
  if (!v5)
  {
LABEL_29:

    *v1 = v3;
    return;
  }

  v6 = 0;
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_36();
  if (!v4)
  {
LABEL_4:
    v8 = v6;
    while (1)
    {
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v1)
      {
        break;
      }

      OUTLINED_FUNCTION_26_18();
      if (v9)
      {
        OUTLINED_FUNCTION_10_30();
        v4 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v30)
    {
      OUTLINED_FUNCTION_9_35();
      if (v26 != v27)
      {
        OUTLINED_FUNCTION_15_29(v25);
      }

      else
      {
        v28 = OUTLINED_FUNCTION_14_30();
        sub_26980F698(v28, v29, v2);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_30();
LABEL_9:
    OUTLINED_FUNCTION_20_17(v7);
    v14 = *(v13 + 8 * v12);
    if ((v30 & 1) == 0)
    {
    }

    OUTLINED_FUNCTION_33_15();
    OUTLINED_FUNCTION_28_16();
    v15 = sub_2698556C4();
    OUTLINED_FUNCTION_1_52(v15);
    OUTLINED_FUNCTION_18_19(v16);
    if (v17)
    {
      break;
    }

    OUTLINED_FUNCTION_6_48();
LABEL_21:
    OUTLINED_FUNCTION_2_40(v18);
    OUTLINED_FUNCTION_24_19(v22);
    *(v24 + 8 * v23) = v14;
    OUTLINED_FUNCTION_13_28();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_41();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (v17)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    OUTLINED_FUNCTION_17_23(v19);
    if (!v17)
    {
      OUTLINED_FUNCTION_4_40();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_26980F130(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325890, &qword_2698679D0);
  v38 = a2;
  result = sub_2698553A4();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_26980F698(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
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
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_269855674();
    sub_269854B34();
    result = sub_2698556C4();
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
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
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

uint64_t sub_26980F3D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803258F0, &qword_269867A48);
  v39 = a2;
  result = sub_2698553A4();
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
      sub_26980F698(0, (v36 + 63) >> 6, v10);
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
    v23 = (*(v5 + 56) + 24 * v19);
    v24 = v23[1];
    v40 = v23[2];
    v41 = *v23;
    if ((v39 & 1) == 0)
    {
    }

    v25 = *(v8 + 40);
    sub_269855674();
    sub_269854B34();
    result = sub_2698556C4();
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
    v35 = (*(v8 + 56) + 24 * v29);
    *v35 = v41;
    v35[1] = v24;
    v35[2] = v40;
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

uint64_t sub_26980F698(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26985C790;
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

void sub_26980F6FC(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v35 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v35 == v4)
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
      sub_2698555F4();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v17 = sub_26973CEF8(v7, v6);
    v18 = v9[2];
    v19 = (v10 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v10;
    if (v9[3] < v20)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280326500, &unk_2698577E0);
      sub_2698552F4();
      if (v21)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v25 = *a3;
    *(*a3 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v26 = (v25[6] + 16 * v17);
    *v26 = v7;
    v26[1] = v6;
    *(v25[7] + 8 * v17) = v8;
    v27 = v25[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_20;
    }

    v25[2] = v29;
    ++v4;
    a2 = 1;
  }

  sub_26980E1E8(v20, a2 & 1, v11, v12, v13, v14, v15, v16, v32, v33, *v34, v34[4]);
  v22 = *a3;
  v23 = sub_26973CEF8(v7, v6);
  if ((v21 & 1) != (v24 & 1))
  {
    goto LABEL_21;
  }

  v17 = v23;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v30 = swift_allocError();
  swift_willThrow();
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_269855204();
  MEMORY[0x26D645A60](0xD00000000000001BLL, 0x8000000269880F20);
  sub_2698552D4();
  MEMORY[0x26D645A60](39, 0xE100000000000000);
  sub_269855354();
  __break(1u);
}

void sub_26980F9D0(uint64_t a1, char a2, void *a3)
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
      sub_2698555F4();
      __break(1u);
      goto LABEL_22;
    }

    v30 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_26973CEF8(v7, v6);
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264D0, &qword_26986AC80);
      sub_2698552F4();
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

  sub_26980E904(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_26973CEF8(v7, v6);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_269855204();
  MEMORY[0x26D645A60](0xD00000000000001BLL, 0x8000000269880F20);
  sub_2698552D4();
  MEMORY[0x26D645A60](39, 0xE100000000000000);
  sub_269855354();
  __break(1u);
}

void sub_26980FCC4(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v37 = a6;
  v8 = 0;
  v41 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v41 == v8)
    {

      return;
    }

    if (v8 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2698555F4();
      __break(1u);
      goto LABEL_22;
    }

    v10 = *(i - 2);
    v11 = *(i - 1);
    v12 = *i;
    v13 = *a3;

    v14 = v12;
    v20 = sub_26973CEF8(v10, v11);
    v21 = v13[2];
    v22 = (v15 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_19;
    }

    v24 = v15;
    if (v13[3] < v23)
    {
      break;
    }

    if (a2)
    {
      if (v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v37, a7);
      sub_2698552F4();
      if (v24)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v28 = *a3;
    *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    v29 = (v28[6] + 16 * v20);
    *v29 = v10;
    v29[1] = v11;
    *(v28[7] + 8 * v20) = v14;
    v30 = v28[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_20;
    }

    v28[2] = v32;
    ++v8;
    a2 = 1;
  }

  sub_26980EB38(v23, a2 & 1, a4, a5, v16, v17, v18, v19, v35, v36, v37, SBYTE4(v37));
  v25 = *a3;
  v26 = sub_26973CEF8(v10, v11);
  if ((v24 & 1) != (v27 & 1))
  {
    goto LABEL_21;
  }

  v20 = v26;
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v33 = swift_allocError();
  swift_willThrow();
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_269855204();
  MEMORY[0x26D645A60](0xD00000000000001BLL, 0x8000000269880F20);
  sub_2698552D4();
  MEMORY[0x26D645A60](39, 0xE100000000000000);
  sub_269855354();
  __break(1u);
}

void sub_26980FFA8(uint64_t a1, char a2, uint64_t *a3)
{
  v52 = a3;
  v6 = sub_269854204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v51 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324298, &unk_2698679F0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = (v42 - v14);
  v48 = *(a1 + 16);
  if (!v48)
  {
LABEL_13:

    return;
  }

  v42[1] = v3;
  v43 = a1;
  v15 = 0;
  v47 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v16 = *(v12 + 48);
  v45 = v7;
  v46 = v16;
  v50 = (v7 + 32);
  v44 = v6;
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2698555F4();
      __break(1u);
      goto LABEL_22;
    }

    v17 = v13;
    v18 = v49;
    sub_2698111C8(v47 + *(v13 + 72) * v15, v49);
    v20 = v18[1];
    v55 = *v18;
    v19 = v55;
    v56 = v20;
    v21 = *v50;
    (*v50)(v51, v18 + v46, v6);
    v22 = *v52;
    v24 = sub_26973CEF8(v19, v20);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803258A8, &unk_26986ACD0);
      sub_2698552F4();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = v51;
    v34 = *v52;
    *(*v52 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v35 = (v34[6] + 16 * v24);
    *v35 = v19;
    v35[1] = v20;
    v36 = v34[7] + *(v45 + 72) * v24;
    v6 = v44;
    v21(v36, v33, v44);
    v37 = v34[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_20;
    }

    ++v15;
    v34[2] = v39;
    a2 = 1;
    a1 = v43;
    v13 = v17;
    if (v48 == v15)
    {
      goto LABEL_13;
    }
  }

  v29 = v52;
  sub_26980EC98(v27, a2 & 1, MEMORY[0x277D5FF48], &qword_2803258A0, &qword_2698679E8);
  v30 = *v29;
  v31 = sub_26973CEF8(v19, v20);
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v40 = swift_allocError();
  swift_willThrow();
  v57 = v40;
  v41 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v45 + 8))(v51, v44);

    return;
  }

LABEL_22:
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_269855204();
  MEMORY[0x26D645A60](0xD00000000000001BLL, 0x8000000269880F20);
  sub_2698552D4();
  MEMORY[0x26D645A60](39, 0xE100000000000000);
  sub_269855354();
  __break(1u);
}

void sub_269810444(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
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
      sub_2698555F4();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_26973CEF8(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325898, &qword_2698679D8);
      sub_2698552F4();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 8 * v11) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_26980F130(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_26973CEF8(v7, v6);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_269855204();
  MEMORY[0x26D645A60](0xD00000000000001BLL, 0x8000000269880F20);
  sub_2698552D4();
  MEMORY[0x26D645A60](39, 0xE100000000000000);
  sub_269855354();
  __break(1u);
}

void sub_269810728(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v29 = *(a1 + 16);
  for (i = (a1 + 64); ; i += 5)
  {
    if (v29 == v4)
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
      sub_2698555F4();
      __break(1u);
      goto LABEL_22;
    }

    v31 = v4;
    v7 = *(i - 4);
    v6 = *(i - 3);
    v9 = *(i - 2);
    v8 = *(i - 1);
    v10 = *i;
    v11 = *a3;

    v13 = sub_26973CEF8(v7, v6);
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_19;
    }

    v17 = v12;
    if (v11[3] < v16)
    {
      break;
    }

    if (a2)
    {
      if (v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803258F8, &qword_269867A50);
      sub_2698552F4();
      if (v17)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v21 = *a3;
    *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v22 = (v21[6] + 16 * v13);
    *v22 = v7;
    v22[1] = v6;
    v23 = (v21[7] + 24 * v13);
    *v23 = v9;
    v23[1] = v8;
    v23[2] = v10;
    v24 = v21[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_20;
    }

    v21[2] = v26;
    v4 = v31 + 1;
    a2 = 1;
  }

  sub_26980F3D4(v16, a2 & 1);
  v18 = *a3;
  v19 = sub_26973CEF8(v7, v6);
  if ((v17 & 1) != (v20 & 1))
  {
    goto LABEL_21;
  }

  v13 = v19;
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v27 = swift_allocError();
  swift_willThrow();
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_269855204();
  MEMORY[0x26D645A60](0xD00000000000001BLL, 0x8000000269880F20);
  sub_2698552D4();
  MEMORY[0x26D645A60](39, 0xE100000000000000);
  sub_269855354();
  __break(1u);
}

uint64_t sub_269810A30(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269854A94();

  return v3;
}

uint64_t sub_269810A94(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_269855324();
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
    result = sub_26975004C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_26969329C(0, &qword_2803228C8, 0x277CC34B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_26971CA38(&qword_280325878, &qword_280325870, &unk_2698679B0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325870, &unk_2698679B0);
          v9 = sub_26977DD6C(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
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

uint64_t sub_269810C2C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_269855324();
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
    result = sub_26975004C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_269854664();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_26971CA38(&qword_2803258D0, &qword_2803258C8, &unk_269867A20);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803258C8, &unk_269867A20);
          v9 = sub_26977DD6C(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
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

uint64_t sub_269810DB4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_269855324();
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
    result = sub_26975004C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for Person();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_26971CA38(&qword_2803258C0, &qword_2803258B8, &unk_269867A10);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803258B8, &unk_269867A10);
          v9 = sub_26977DDC8(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
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

uint64_t sub_269810F3C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_269855324();
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
    result = sub_26975004C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for Content();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_26971CA38(&qword_2803258E0, &qword_280323A40, &qword_26985BB90);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A40, &qword_26985BB90);
          v9 = sub_26977DD6C(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
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

uint64_t sub_2698110C4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_269855184();
  v4 = *(a1 + 36);
  return result;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26981114C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_86();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2698111C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_26980D0E0();
}

uint64_t sub_2698111C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324298, &unk_2698679F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_47(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_25()
{

  return sub_2698553A4();
}

void OUTLINED_FUNCTION_20_17(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = (*(v1 + 48) + 16 * (a1 | (v2 << 6)));
  v5 = *v4;
  v6 = v4[1];
}

void OUTLINED_FUNCTION_24_19(uint64_t a1@<X8>)
{
  v5 = (v1 + 16 * a1);
  *v5 = v3;
  v5[1] = v4;
  v6 = *(v2 + 56);
}

uint64_t OUTLINED_FUNCTION_28_16()
{

  return sub_269854B34();
}

uint64_t OUTLINED_FUNCTION_32_12(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FEBD8](v2, a2, 22, 1, 490);
}

uint64_t OUTLINED_FUNCTION_33_15()
{
  v2 = *(v0 + 40);

  return sub_269855674();
}

uint64_t type metadata accessor for StaticSignal()
{
  result = qword_280325918;
  if (!qword_280325918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269811574()
{
  result = sub_269853904();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26981164C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a1;
  v52 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D80, &unk_2698582F0);
  v6 = *(*(v50 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v50);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v44 - v10;
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v61 = MEMORY[0x277D84F90];
  sub_269814E64(0, v11, 0);
  v12 = v61;
  v15 = sub_2697F1D9C(a3);
  v16 = 0;
  v17 = a3 + 64;
  v45 = v13;
  v46 = v11;
  v44 = a3 + 72;
  v47 = a3 + 64;
  v48 = a3;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a3 + 32))
  {
    if ((*(v17 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_24;
    }

    if (*(a3 + 36) != v13)
    {
      goto LABEL_25;
    }

    v56 = 1 << v15;
    v57 = v15 >> 6;
    v54 = v16;
    v55 = v13;
    v53 = v14;
    v58 = v4;
    v59 = v12;
    v18 = v50;
    v19 = *(v50 + 48);
    v20 = *(a3 + 56);
    v21 = (*(a3 + 48) + 16 * v15);
    v22 = *v21;
    v23 = v21[1];
    v24 = sub_269854204();
    OUTLINED_FUNCTION_8(v24);
    v26 = v25;
    v28 = v20 + *(v27 + 72) * v15;
    v29 = v49;
    (*(v25 + 16))(&v49[v19], v28, v24);
    *v9 = v22;
    *(v9 + 1) = v23;
    (*(v26 + 32))(&v9[*(v18 + 48)], &v29[v19], v24);

    v30 = v58;
    v51(&v60, v9);
    if (v30)
    {
      goto LABEL_29;
    }

    v4 = 0;
    sub_269698048(v9, &unk_280322D80, &unk_2698582F0);
    v31 = v60;
    v12 = v59;
    v61 = v59;
    v33 = *(v59 + 16);
    v32 = *(v59 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_269814E64(v32 > 1, v33 + 1, 1);
      v12 = v61;
    }

    *(v12 + 16) = v33 + 1;
    *(v12 + 8 * v33 + 32) = v31;
    a3 = v48;
    v34 = 1 << *(v48 + 32);
    if (v15 >= v34)
    {
      goto LABEL_26;
    }

    v17 = v47;
    v35 = *(v47 + 8 * v57);
    if ((v35 & v56) == 0)
    {
      goto LABEL_27;
    }

    if (*(v48 + 36) != v55)
    {
      goto LABEL_28;
    }

    v36 = v35 & (-2 << (v15 & 0x3F));
    if (v36)
    {
      v34 = __clz(__rbit64(v36)) | v15 & 0x7FFFFFFFFFFFFFC0;
      v37 = v54;
    }

    else
    {
      v38 = v57 << 6;
      v39 = v57 + 1;
      v40 = (v44 + 8 * v57);
      while (v39 < (v34 + 63) >> 6)
      {
        v42 = *v40++;
        v41 = v42;
        v38 += 64;
        ++v39;
        if (v42)
        {
          sub_26968E5C8(v15, v55, v53 & 1);
          v34 = __clz(__rbit64(v41)) + v38;
          goto LABEL_20;
        }
      }

      sub_26968E5C8(v15, v55, v53 & 1);
LABEL_20:
      v37 = v54;
    }

    v14 = 0;
    v16 = v37 + 1;
    v15 = v34;
    v13 = v45;
    if (v16 == v46)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_269698048(v9, &unk_280322D80, &unk_2698582F0);

  __break(1u);
  return result;
}

uint64_t sub_269811A10(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = a3;
    v50 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v5, 0);
    v9 = sub_269811248(v7);
    result = v50;
    v11 = v10;
    v12 = 0;
    v13 = v7 + 56;
    v39 = v7 + 64;
    v40 = v5;
    v41 = v7;
    if ((v9 & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(v7 + 32))
      {
        v14 = v9 >> 6;
        v15 = 1 << v9;
        if ((*(v13 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v7 + 36) != v8)
        {
          goto LABEL_26;
        }

        v44 = v9;
        v45 = v8;
        v16 = v13;
        v43 = v12;
        v17 = result;
        v18 = (*(v7 + 48) + 16 * v9);
        v19 = v18[1];
        v46[0] = *v18;
        v46[1] = v19;

        a1(&v47, v46);
        if (v4)
        {
          goto LABEL_30;
        }

        v4 = 0;

        v20 = v47;
        v21 = v48;
        v22 = v49;
        result = v17;
        v50 = v17;
        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        if (v24 >= v23 >> 1)
        {
          v37 = v49;
          v38 = v47;
          v36 = v48;
          sub_269814EEC(v23 > 1, v24 + 1, 1);
          v22 = v37;
          v20 = v38;
          v21 = v36;
          result = v50;
        }

        *(result + 16) = v24 + 1;
        v25 = (result + 24 * v24);
        v25[4] = v20;
        v25[5] = v21;
        v25[6] = v22;
        if (v11)
        {
          goto LABEL_31;
        }

        v13 = v16;
        v7 = v41;
        v26 = 1 << *(v41 + 32);
        if (v44 >= v26)
        {
          goto LABEL_27;
        }

        v27 = *(v16 + 8 * v14);
        if ((v27 & v15) == 0)
        {
          goto LABEL_28;
        }

        if (*(v41 + 36) != v45)
        {
          goto LABEL_29;
        }

        v28 = v27 & (-2 << (v44 & 0x3F));
        if (v28)
        {
          v26 = __clz(__rbit64(v28)) | v44 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v29 = v14 << 6;
          v30 = v14 + 1;
          v31 = (v39 + 8 * v14);
          while (v30 < (v26 + 63) >> 6)
          {
            v33 = *v31++;
            v32 = v33;
            v29 += 64;
            ++v30;
            if (v33)
            {
              v34 = result;
              sub_26968E5C8(v44, v45, 0);
              result = v34;
              v26 = __clz(__rbit64(v32)) + v29;
              goto LABEL_20;
            }
          }

          v35 = result;
          sub_26968E5C8(v44, v45, 0);
          result = v35;
        }

LABEL_20:
        v12 = v43 + 1;
        if (v43 + 1 == v40)
        {
          return result;
        }

        v11 = 0;
        v8 = *(v41 + 36);
        v9 = v26;
        if (v26 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:

    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

void *sub_269811CC8()
{
  result = sub_269811CE8();
  off_280325928 = result;
  return result;
}

uint64_t sub_269811CE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325930, &unk_269867C10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269860B70;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000026987B880;
  *(inited + 48) = xmmword_269867AF0;
  *(inited + 64) = 0x800000026987B8E0;
  *(inited + 72) = xmmword_269867B00;
  *(inited + 88) = 0x800000026987B900;
  *(inited + 96) = xmmword_269867B10;
  *(inited + 112) = 0x800000026987B8A0;
  *(inited + 120) = xmmword_269867B20;
  *(inited + 136) = 0x800000026987B8C0;
  *(inited + 144) = xmmword_269867B30;
  *(inited + 160) = 0x800000026987B820;
  *(inited + 168) = xmmword_269867B40;
  *(inited + 184) = 0x8000000269880F60;
  *(inited + 192) = 64;
  v31 = MEMORY[0x277D84F90];
  sub_269815460(0, 7, 0);
  v1 = v31;
  v3 = *(inited + 32);
  v2 = *(inited + 40);
  v4 = *(inited + 48);
  v5 = *(v31 + 16);
  v6 = *(v31 + 24);
  v7 = v6 >> 1;
  v8 = v5 + 1;
  swift_bridgeObjectRetain_n();
  if (v6 >> 1 <= v5)
  {
    sub_269815460(v6 > 1, v5 + 1, 1);
    v1 = v31;
    v6 = *(v31 + 24);
    v7 = v6 >> 1;
  }

  *(v1 + 16) = v8;
  v9 = (v1 + 40 * v5);
  v9[4] = v3;
  v9[5] = v2;
  v9[6] = v3;
  v9[7] = v2;
  v9[8] = v4;
  if (v7 <= v8)
  {
    sub_269815460(v6 > 1, v5 + 2, 1);
    v1 = v31;
  }

  *(v1 + 16) = v5 + 2;
  v10 = (v1 + 40 * v8);
  v10[4] = 0xD000000000000017;
  v10[5] = 0x800000026987B8E0;
  v10[6] = 0xD000000000000017;
  v10[7] = 0x800000026987B8E0;
  v10[8] = 2;
  v12 = *(v1 + 16);
  v11 = *(v1 + 24);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    sub_269815460(v11 > 1, v12 + 1, 1);
  }

  v14 = v31;
  *(v31 + 16) = v13;
  v15 = (v31 + 40 * v12);
  v15[4] = 0xD000000000000019;
  v15[5] = 0x800000026987B900;
  v15[6] = 0xD000000000000019;
  v15[7] = 0x800000026987B900;
  v15[8] = 4;
  v16 = *(v31 + 24);
  v17 = v12 + 2;
  if (v13 >= v16 >> 1)
  {
    sub_269815460(v16 > 1, v17, 1);
    v14 = v31;
  }

  *(v14 + 16) = v17;
  v18 = (v14 + 40 * v13);
  v18[4] = 0xD000000000000014;
  v18[5] = 0x800000026987B8A0;
  v18[6] = 0xD000000000000014;
  v18[7] = 0x800000026987B8A0;
  v18[8] = 8;
  v20 = *(v14 + 16);
  v19 = *(v14 + 24);
  v21 = v19 >> 1;
  v22 = v20 + 1;
  if (v19 >> 1 <= v20)
  {
    sub_269815460(v19 > 1, v20 + 1, 1);
    v14 = v31;
    v19 = *(v31 + 24);
    v21 = v19 >> 1;
  }

  *(v14 + 16) = v22;
  v23 = (v14 + 40 * v20);
  v23[4] = 0xD000000000000016;
  v23[5] = 0x800000026987B8C0;
  v23[6] = 0xD000000000000016;
  v23[7] = 0x800000026987B8C0;
  v23[8] = 16;
  v24 = v20 + 2;
  if (v21 <= v22)
  {
    sub_269815460(v19 > 1, v20 + 2, 1);
  }

  v25 = v31;
  *(v31 + 16) = v24;
  v26 = (v31 + 40 * v22);
  v26[4] = 0xD000000000000014;
  v26[5] = 0x800000026987B820;
  v26[6] = 0xD000000000000014;
  v26[7] = 0x800000026987B820;
  v26[8] = 32;
  v28 = *(v31 + 16);
  v27 = *(v31 + 24);
  if (v28 >= v27 >> 1)
  {
    sub_269815460(v27 > 1, v28 + 1, 1);
    v25 = v31;
  }

  *(v25 + 16) = v28 + 1;
  v29 = (v25 + 40 * v28);
  v29[4] = 0xD000000000000019;
  v29[5] = 0x8000000269880F60;
  v29[6] = 0xD000000000000019;
  v29[7] = 0x8000000269880F60;
  v29[8] = 64;
  swift_setDeallocating();
  sub_269819EC0();
  return sub_26980C2A4(v25);
}

uint64_t sub_2698120E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  __swift_project_boxed_opaque_existential_1((a2 + 24), *(a2 + 48));
  sub_2697ADE90(v5, v4, &v29);
  if (v30)
  {
    v27 = v5;
    v28 = v4;
    sub_26968E5D4(&v29, v31);
    v6 = v32;
    v7 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v8 = (*(v7 + 40))(v6, v7);
    v9 = v8;
    v10 = v8 + 56;
    v11 = 1 << *(v8 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v8 + 56);
    v14 = (v11 + 63) >> 6;

    v16 = 0;
    v34 = 0;
    while (v13)
    {
LABEL_10:
      v18 = (*(v9 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v13)))));
      v20 = *v18;
      v19 = v18[1];
      v21 = qword_2803226C0;

      if (v21 != -1)
      {
        swift_once();
      }

      v13 &= v13 - 1;
      v22 = off_280325928;
      if (*(off_280325928 + 2) && (v23 = sub_26973CEF8(v20, v19), (v24 & 1) != 0))
      {
        v25 = *(v22[7] + 24 * v23 + 16);

        v26 = __OFADD__(v34, v25);
        v34 += v25;
        if (v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        *a3 = v27;
        a3[1] = v28;
        a3[2] = v34;

        return __swift_destroy_boxed_opaque_existential_0(v31);
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        v16 = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    sub_269698048(&v29, &unk_2803263B0, &unk_26985D0B0);
    *a3 = v5;
    a3[1] = v4;
    a3[2] = -1;
  }

  return result;
}

uint64_t sub_269812328(void (*a1)(uint64_t *))
{
  v3 = sub_269853904();
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v1 + 16);
  v14 = v1;
  sub_269811A10(sub_26981245C, v13, v11);
  *v10 = sub_26980C0F4();
  (*(v6 + 104))(v10, *MEMORY[0x277D60188], v3);
  a1(v10);
  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_26981248C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325938, &unk_269867C50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v24 - v7);
  v9 = sub_269853904();
  v10 = OUTLINED_FUNCTION_8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_48();
  if (*(a1 + 16))
  {
    v15 = sub_26973CEF8(0xD000000000000015, 0x8000000269880BB0);
    if (v16)
    {
      (*(v12 + 16))(v2, *(a1 + 56) + *(v12 + 72) * v15, v9);
      v17 = *(v12 + 88);
      v18 = v17(v2, v9);
      if (v18 == *MEMORY[0x277D60170])
      {
        v19 = v18;
        v25 = *(v12 + 96);
        v25(v2, v9);
        v20 = *v2;
        sub_26981D718(0xD000000000000015, 0x8000000269880BD0, a1);
        if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
        {
          sub_26969B0C0(v8, &qword_280325938, &unk_269867C50);
        }

        else
        {
          if (v17(v8, v9) == v19)
          {
            v25(v8, v9);
            v23 = *v8;
            return sub_2696CA210();
          }

          (*(v12 + 8))(v8, v9);
        }
      }

      else
      {
        (*(v12 + 8))(v2, v9);
      }
    }
  }

  v21 = sub_269851DA4();
  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v21);
}

void sub_269812708(uint64_t *a1@<X8>)
{
  if (!v1[1])
  {
    goto LABEL_71;
  }

  v4 = v1[2];
  v3 = v1[3];
  v5 = HIBYTE(v3) & 0xF;
  v6 = v4 & 0xFFFFFFFFFFFFLL;
  if (!((v3 & 0x2000000000000000) != 0 ? HIBYTE(v3) & 0xF : v4 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_71;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v32 = v1[3];

    sub_2697ECE58(v4, v3, 10);
    v10 = v33;
    v35 = v34;

    if ((v35 & 1) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((v4 & 0x1000000000000000) != 0)
    {
      v8 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v36 = v1[2];
      v37 = v1[3];
      v8 = sub_269855264();
    }

    v9 = *v8;
    if (v9 == 43)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          v10 = 0;
          if (v8)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_48();
              if (!v12 & v11)
              {
                goto LABEL_69;
              }

              OUTLINED_FUNCTION_0_60();
              if (!v12)
              {
                goto LABEL_69;
              }

              v10 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                goto LABEL_69;
              }

              OUTLINED_FUNCTION_4_36();
              if (v12)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_69;
      }

      goto LABEL_78;
    }

    if (v9 != 45)
    {
      if (v6)
      {
        v10 = 0;
        if (v8)
        {
          while (1)
          {
            v22 = *v8 - 48;
            if (v22 > 9)
            {
              goto LABEL_69;
            }

            v23 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              goto LABEL_69;
            }

            v10 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_69;
            }

            ++v8;
            if (!--v6)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_69:
      v10 = 0;
      v15 = 1;
LABEL_70:
      if ((v15 & 1) == 0)
      {
LABEL_72:
        v26 = type metadata accessor for StaticSignal();
        a1[3] = v26;
        a1[4] = sub_26974FF94();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
        *boxed_opaque_existential_1 = 0xD000000000000011;
        boxed_opaque_existential_1[1] = 0x800000026987ADD0;
        v28 = *(v26 + 20);
        *(boxed_opaque_existential_1 + v28) = v10;
        v29 = *MEMORY[0x277D60170];
        v30 = sub_269853904();
        OUTLINED_FUNCTION_4_3(v30);
        (*(v31 + 104))(boxed_opaque_existential_1 + v28, v29);
        return;
      }

LABEL_71:
      v10 = -1;
      goto LABEL_72;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        v10 = 0;
        if (v8)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_48();
            if (!v12 & v11)
            {
              goto LABEL_69;
            }

            OUTLINED_FUNCTION_0_60();
            if (!v12)
            {
              goto LABEL_69;
            }

            v10 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_69;
            }

            OUTLINED_FUNCTION_4_36();
            if (v12)
            {
              goto LABEL_70;
            }
          }
        }

LABEL_60:
        v15 = 0;
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v1[2] != 43)
  {
    if (v1[2] != 45)
    {
      if (v5)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_48();
          if (!v12 & v11)
          {
            break;
          }

          OUTLINED_FUNCTION_0_60();
          if (!v12)
          {
            break;
          }

          v10 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          OUTLINED_FUNCTION_4_36();
          if (v12)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    if (v5)
    {
      if (v5 != 1)
      {
        OUTLINED_FUNCTION_5_42();
        while (1)
        {
          OUTLINED_FUNCTION_1_48();
          if (!v12 & v11)
          {
            break;
          }

          OUTLINED_FUNCTION_0_60();
          if (!v12)
          {
            break;
          }

          v10 = v17 - v16;
          if (__OFSUB__(v17, v16))
          {
            break;
          }

          OUTLINED_FUNCTION_4_36();
          if (v12)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    goto LABEL_77;
  }

  if (v5)
  {
    if (v5 != 1)
    {
      OUTLINED_FUNCTION_5_42();
      while (1)
      {
        OUTLINED_FUNCTION_1_48();
        if (!v12 & v11)
        {
          break;
        }

        OUTLINED_FUNCTION_0_60();
        if (!v12)
        {
          break;
        }

        v10 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        OUTLINED_FUNCTION_4_36();
        if (v12)
        {
          goto LABEL_70;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_79:
  __break(1u);
}

uint64_t sub_269812A00()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F0, &qword_2698603D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - v4;
  v6 = sub_269851DA4();
  v7 = OUTLINED_FUNCTION_8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_48();
  if (!*(v0 + 8))
  {
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    goto LABEL_5;
  }

  v14 = v0 + 32;
  v12 = *(v0 + 32);
  v13 = *(v14 + 8);

  sub_269851D44();

  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
LABEL_5:
    sub_26969B0C0(v5, &qword_2803240F0, &qword_2698603D0);
    v15 = -1;
    v30 = -1;
    goto LABEL_6;
  }

  (*(v9 + 32))(v1, v5, v6);
  v15 = sub_2696CA120();
  v30 = v16;
  (*(v9 + 8))(v1, v6);
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324270, &unk_26985F2B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2698580D0;
  v18 = type metadata accessor for StaticSignal();
  *(v17 + 56) = v18;
  v19 = sub_26974FF94();
  *(v17 + 64) = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v17 + 32));
  *boxed_opaque_existential_1 = 0xD000000000000015;
  boxed_opaque_existential_1[1] = 0x8000000269880BB0;
  v21 = *(v18 + 20);
  *(boxed_opaque_existential_1 + v21) = v15;
  v22 = *MEMORY[0x277D60170];
  v23 = sub_269853904();
  OUTLINED_FUNCTION_4_3(v23);
  v25 = *(v24 + 104);
  v25(boxed_opaque_existential_1 + v21, v22, v23);
  *(v17 + 96) = v18;
  *(v17 + 104) = v19;
  v26 = __swift_allocate_boxed_opaque_existential_1((v17 + 72));
  *v26 = 0xD000000000000015;
  v26[1] = 0x8000000269880BD0;
  v27 = *(v18 + 20);
  *(v26 + v27) = v30;
  v25(v26 + v27, v22, v23);
  return v17;
}

uint64_t sub_269812CFC()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for AppDisambiguationContext(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_8_9(v4);
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_4_7();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323CC8, &unk_269866680);
  OUTLINED_FUNCTION_8_9(v7);
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_4_7();
  v10 = type metadata accessor for AppSelectionResult(0);
  v1[8] = v10;
  OUTLINED_FUNCTION_8_9(v10);
  v12 = *(v11 + 64);
  v1[9] = OUTLINED_FUNCTION_4_7();
  v13 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_269812DCC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[3];
  sub_269814B44(*(v0[4] + 32), *(v0[4] + 40));
  OUTLINED_FUNCTION_1_53();
  sub_269815844(v3, v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[9];
  if (EnumCaseMultiPayload == 1)
  {
    v21 = v0[6];
    OUTLINED_FUNCTION_0_61();
    sub_2698158A0(v6, v22, v23);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[12] = v24;
    *v24 = v25;
    v24[1] = sub_269813194;
    v26 = v0[6];
    v27 = v0[4];
    v28 = v0[2];

    return sub_269813EB4();
  }

  else if (EnumCaseMultiPayload)
  {
    v30 = v0[2];
    v29 = v0[3];
    OUTLINED_FUNCTION_1_53();
    sub_269815844(v31, v32, v33);
    sub_2698158FC(v6, type metadata accessor for AppSelectionResult);
    v34 = v0[9];
    v35 = v0[6];
    v36 = v0[7];

    OUTLINED_FUNCTION_7_7();

    return v37();
  }

  else
  {
    v7 = v0[7];
    v8 = *(v6 + 8);

    v9 = *(v6 + 16);

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F48, &unk_2698667E0);
    v11 = *(v10 + 64);
    v12 = (v6 + *(v10 + 80));
    v13 = *v12;
    v0[10] = v12[1];
    sub_269715290(v6 + v11, v7);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[11] = v14;
    *v14 = v15;
    v14[1] = sub_26981300C;
    v16 = v0[7];
    v17 = v0[3];
    v18 = v0[4];
    v19 = v0[2];

    return sub_269813304();
  }
}

uint64_t sub_26981300C()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_269813110()
{
  OUTLINED_FUNCTION_2_7();
  sub_26969B0C0(v0[7], &qword_280323CC8, &unk_269866680);
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];

  OUTLINED_FUNCTION_7_7();

  return v4();
}

uint64_t sub_269813194()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(*v0 + 96);
  v2 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26981327C()
{
  OUTLINED_FUNCTION_2_7();
  sub_2698158FC(v0[6], type metadata accessor for AppDisambiguationContext);
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];

  OUTLINED_FUNCTION_7_7();

  return v4();
}

uint64_t sub_269813304()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[3] = v7;
  v8 = sub_2698548D4();
  v1[10] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[11] = v9;
  v11 = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_4_7();
  v12 = sub_269853984();
  v1[13] = v12;
  OUTLINED_FUNCTION_5_12(v12);
  v1[14] = v13;
  v15 = *(v14 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  OUTLINED_FUNCTION_8_9(v16);
  v18 = *(v17 + 64);
  v1[17] = OUTLINED_FUNCTION_4_7();
  v19 = type metadata accessor for AppDisambiguationContext(0);
  v1[18] = v19;
  OUTLINED_FUNCTION_8_9(v19);
  v21 = *(v20 + 64);
  v1[19] = OUTLINED_FUNCTION_4_7();
  v22 = type metadata accessor for ModelInput(0);
  OUTLINED_FUNCTION_8_9(v22);
  v24 = *(v23 + 64);
  v1[20] = OUTLINED_FUNCTION_4_7();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323CC8, &unk_269866680);
  OUTLINED_FUNCTION_8_9(v25);
  v27 = *(v26 + 64);
  v1[21] = OUTLINED_FUNCTION_4_7();
  v28 = type metadata accessor for ModelParams(0);
  v1[22] = v28;
  OUTLINED_FUNCTION_8_9(v28);
  v30 = *(v29 + 64);
  v1[23] = OUTLINED_FUNCTION_4_7();
  v31 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_2698134D4()
{
  if (!*(v0 + 48) || (v1 = *(v0 + 72), (sub_269814BA8() & 1) != 0))
  {
    v2 = *(*(v0 + 72) + 80);
    if ((sub_2697B9454() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  sub_2696F3F6C(*(v0 + 32), v3, &qword_280323CC8, &unk_269866680);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_26969B0C0(*(v0 + 168), &qword_280323CC8, &unk_269866680);
LABEL_8:
    v9 = *(v0 + 40);
    v10 = *(v0 + 24);
    OUTLINED_FUNCTION_1_53();
    sub_269815844(v11, v12, v13);
    goto LABEL_9;
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  sub_2698158A0(*(v0 + 168), v6, type metadata accessor for ModelParams);
  v7 = *(v6 + *(v5 + 24));
  v8 = *(v0 + 184);
  if (v7[2] < 2uLL)
  {
    sub_2698158FC(*(v0 + 184), type metadata accessor for ModelParams);
    goto LABEL_8;
  }

  v16 = *(v0 + 176);
  v17 = *(v0 + 160);
  v18 = *(v0 + 72);
  v19 = *(v18 + 56);
  *(v0 + 232) = v19;
  v20 = sub_2697E0304(v7, *(v18 + 24), 0, *(v18 + 184), *(v18 + 192), v19);
  *(v0 + 192) = v20;
  v21 = *(v16 + 20);
  OUTLINED_FUNCTION_10_31();
  sub_269815844(v8 + v22, v17, v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F40, &unk_269858D40);
  if (__swift_getEnumTagSinglePayload(v17, 1, v24) != 1)
  {
    v35 = *(v0 + 184);
    v36 = *(v0 + 152);
    v37 = *(v0 + 136);
    v38 = *(v0 + 144);
    v39 = *(v0 + 104);
    v41 = *(v0 + 64);
    v40 = *(v0 + 72);
    v42 = *(v0 + 56);
    v68 = v42;
    v69 = v35;
    v67 = *(v0 + 48);
    v70 = *(v0 + 24);
    (*(*(v0 + 112) + 8))(*(v0 + 160), v39);
    v43 = v38[7];
    OUTLINED_FUNCTION_2_41();
    sub_269815844(v35, v36 + v44, v45);
    __swift_storeEnumTagSinglePayload(v36 + v38[8], 1, 1, v39);
    *v36 = v20;
    *(v36 + 8) = v19;
    *(v36 + 16) = 1;
    *(v36 + v38[9]) = v67;
    v46 = (v36 + v38[10]);
    *v46 = v68;
    v46[1] = v41;
    v47 = v40[10];
    v49 = v40[21];
    v48 = v40[22];

    v49(v50);
    sub_269851D34();
    OUTLINED_FUNCTION_24_4();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
    sub_2697B9094(v37);
    OUTLINED_FUNCTION_3_49();
    sub_2698158FC(v69, v55);
    OUTLINED_FUNCTION_0_61();
    sub_2698158A0(v36, v70, v56);
    type metadata accessor for AppSelectionResult(0);
    OUTLINED_FUNCTION_16_26();
LABEL_9:
    OUTLINED_FUNCTION_9_36();

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_7_8();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_15_30(*(v0 + 160));
  v25 = v7[2];
  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v71 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_28_17();
    v26 = v71;
    v27 = *(v71 + 16);
    v28 = 16 * v27;
    v29 = v7 + 5;
    do
    {
      v31 = *(v29 - 1);
      v30 = *v29;
      v32 = v27 + 1;
      v33 = *(v71 + 24);

      if (v27 >= v33 >> 1)
      {
        sub_269814F0C(v33 > 1, v32, 1);
      }

      *(v71 + 16) = v32;
      v34 = v71 + v28;
      *(v34 + 32) = v31;
      *(v34 + 40) = v30;
      v28 += 16;
      v29 += 3;
      ++v27;
      --v25;
    }

    while (v25);
  }

  *(v0 + 200) = v26;
  v57 = *(v0 + 72);
  v58 = *(v57 + 104);
  *(v0 + 208) = (*(v57 + 96))(**(v0 + 184), *(*(v0 + 184) + 8), *(v57 + 16), v26);
  __swift_project_boxed_opaque_existential_1((v57 + 112), *(v57 + 136));
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 216) = v59;
  *v59 = v60;
  v59[1] = sub_26981390C;
  v61 = *(v0 + 120);
  OUTLINED_FUNCTION_7_8();

  return sub_2697B7D94(v62, v63, v64);
}

uint64_t sub_26981390C()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;
  v5 = v2[27];
  *v4 = *v1;
  v3[28] = v0;

  v6 = v2[26];
  v7 = v2[25];
  if (v0)
  {
    v8 = v3[24];

    v9 = sub_269813A74;
  }

  else
  {

    v9 = sub_269813CB8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_269813A74()
{
  v32 = v0;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v1 = v0[28];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = __swift_project_value_buffer(v4, qword_281571B50);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2698548B4();
  v8 = sub_269854F24();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[28];
  v11 = v0[11];
  v12 = v0[12];
  v13 = v0[10];
  if (v9)
  {
    v30 = v0[12];
    v14 = OUTLINED_FUNCTION_27_2();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136315138;
    v0[2] = v10;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v17 = sub_269854AE4();
    v19 = sub_26974F520(v17, v18, &v31);

    *(v14 + 4) = v19;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v20, v21, "AppSelectionResultRemapper error gathering signals for AppSelectionResult.selected, %s");
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v11 + 8))(v30, v13);
  }

  else
  {

    (*(v11 + 8))(v12, v13);
  }

  v22 = v0[23];
  v23 = v0[5];
  v24 = v0[3];
  OUTLINED_FUNCTION_3_49();
  sub_2698158FC(v25, v26);
  OUTLINED_FUNCTION_1_53();
  sub_269815844(v23, v24, v27);
  OUTLINED_FUNCTION_9_36();

  OUTLINED_FUNCTION_7_7();

  return v28();
}

uint64_t sub_269813CB8()
{
  v33 = *(v0 + 232);
  v1 = *(v0 + 184);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 112);
  v7 = *(v0 + 104);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v0 + 56);
  v31 = v10;
  v32 = *(v0 + 192);
  v30 = *(v0 + 48);
  v34 = v1;
  v35 = *(v0 + 24);
  (*(v6 + 32))(v4, *(v0 + 120), v7);
  v11 = v3[7];
  OUTLINED_FUNCTION_2_41();
  sub_269815844(v1, v2 + v12, v13);
  (*(v6 + 16))(v2 + v3[8], v4, v7);
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v7);
  *v2 = v32;
  *(v2 + 8) = v33;
  *(v2 + 16) = 1;
  *(v2 + v3[9]) = v30;
  v17 = (v2 + v3[10]);
  *v17 = v31;
  v17[1] = v9;
  v18 = v8[10];
  v20 = v8[21];
  v19 = v8[22];

  v20(v21);
  sub_269851D34();
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_2697B9094(v5);
  (*(v6 + 8))(v4, v7);
  OUTLINED_FUNCTION_3_49();
  sub_2698158FC(v34, v26);
  OUTLINED_FUNCTION_0_61();
  sub_2698158A0(v2, v35, v27);
  type metadata accessor for AppSelectionResult(0);
  OUTLINED_FUNCTION_16_26();
  OUTLINED_FUNCTION_9_36();

  OUTLINED_FUNCTION_7_7();

  return v28();
}

uint64_t sub_269813EB4()
{
  OUTLINED_FUNCTION_2_7();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_269853984();
  v1[7] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[8] = v6;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v9 = sub_2698548D4();
  v1[12] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[13] = v10;
  v12 = *(v11 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v13 = type metadata accessor for AppDisambiguationContext(0);
  v1[17] = v13;
  OUTLINED_FUNCTION_8_9(v13);
  v15 = *(v14 + 64);
  v1[18] = OUTLINED_FUNCTION_4_7();
  v16 = type metadata accessor for ModelInput(0);
  OUTLINED_FUNCTION_8_9(v16);
  v18 = *(v17 + 64);
  v1[19] = OUTLINED_FUNCTION_4_7();
  v19 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_26981402C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_269814B44(*(v1 + 64), *(v1 + 72));
  v4 = v3;
  *(v0 + 160) = v3;
  if (v2)
  {
    v77 = v2;
    v5 = *(v0 + 48);
    v6 = (v5 + 56);
    v7 = *(v0 + 32);
  }

  else
  {
    v7 = *(v0 + 32);
    if (!v3)
    {
      v71 = *(v0 + 24);
      OUTLINED_FUNCTION_11_37();
      sub_269815844(v7, v71, v72);
      type metadata accessor for AppSelectionResult(0);
      OUTLINED_FUNCTION_16_26();
LABEL_22:
      OUTLINED_FUNCTION_24_20();

      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_7_8();

      __asm { BRAA            X1, X16 }
    }

    v77 = 0;
    v6 = (v7 + 8);
    v5 = *(v0 + 48);
  }

  v8 = *(v0 + 152);
  v75 = *(v0 + 40);
  v76 = *(v0 + 136);
  v9 = *v6;
  *(v0 + 260) = *v6;
  v10 = *(v76 + 28);
  *(v0 + 256) = v10;
  v11 = (v7 + v10);
  v12 = type metadata accessor for ModelParams(0);
  v13 = *(v11 + *(v12 + 24));
  v14 = sub_2697E0304(v13, *(v1 + 24), 0, *(v5 + 184), *(v5 + 192), v9);
  *(v0 + 168) = v14;
  v15 = *(v7 + 16);
  *(v0 + 176) = v15;
  v16 = *(v12 + 20);
  OUTLINED_FUNCTION_10_31();
  sub_269815844(v11 + v17, v8, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F40, &unk_269858D40);
  if (__swift_getEnumTagSinglePayload(v8, 1, v19) != 1)
  {
    v30 = v77 != 0;
    v79 = v75 | v4;
    v31 = v11;
    v32 = v15 | v30;
    v33 = *(v0 + 144);
    v34 = *(v0 + 136);
    v35 = *(v0 + 24);
    v36 = *(v0 + 32);
    (*(*(v0 + 64) + 8))(*(v0 + 152), *(v0 + 56));
    v37 = *(v76 + 28);
    OUTLINED_FUNCTION_2_41();
    sub_269815844(v31, v33 + v38, v39);
    sub_2696F3F6C(v36 + v34[8], v33 + v34[8], &qword_2803254E8, &unk_269866100);
    v40 = (v36 + v34[10]);
    v41 = *v40;
    v42 = v40[1];
    *v33 = v14;
    *(v33 + 8) = v9;
    *(v33 + 16) = v32;
    *(v33 + v34[9]) = v79;
    v43 = (v33 + v34[10]);
    *v43 = v41;
    v43[1] = v42;
    OUTLINED_FUNCTION_0_61();
    v44 = OUTLINED_FUNCTION_50_0();
    sub_2698158A0(v44, v45, v46);
    type metadata accessor for AppSelectionResult(0);
    OUTLINED_FUNCTION_16_26();

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_15_30(*(v0 + 152));
  v20 = v13[2];
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v78 = v11;
    v80 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_28_17();
    v21 = v80;
    v22 = *(v80 + 16);
    v23 = 16 * v22;
    v24 = v13 + 5;
    do
    {
      v26 = *(v24 - 1);
      v25 = *v24;
      v27 = v22 + 1;
      v28 = *(v80 + 24);

      if (v22 >= v28 >> 1)
      {
        sub_269814F0C(v28 > 1, v27, 1);
      }

      *(v80 + 16) = v27;
      v29 = v80 + v23;
      *(v29 + 32) = v26;
      *(v29 + 40) = v25;
      v23 += 16;
      v24 += 3;
      ++v22;
      --v20;
    }

    while (v20);
    v11 = v78;
  }

  *(v0 + 184) = v21;
  v47 = *(v0 + 48);
  v48 = *(v47 + 104);
  v49 = (*(v47 + 96))(*v11, v11[1], *(v47 + 16), v21);
  *(v0 + 192) = v49;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v50 = *(v0 + 128);
  v51 = *(v0 + 96);
  v52 = *(v0 + 104);
  v53 = __swift_project_value_buffer(v51, qword_281571B50);
  *(v0 + 200) = v53;
  v54 = *(v52 + 16);
  *(v0 + 208) = v54;
  *(v0 + 216) = (v52 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v54(v50, v53, v51);

  v55 = sub_2698548B4();
  v56 = sub_269854F14();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = OUTLINED_FUNCTION_27_2();
    *v57 = 134217984;
    *(v57 + 4) = *(v49 + 16);

    _os_log_impl(&dword_269684000, v55, v56, "AppSelectionResultRemapper created %ld to gather", v57, 0xCu);
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  v58 = *(v0 + 128);
  v59 = *(v0 + 96);
  v60 = *(v0 + 104);
  v61 = *(v0 + 48);
  v62 = *(v60 + 8);
  *(v0 + 224) = v62;
  *(v0 + 232) = (v60 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v62(v58, v59);
  __swift_project_boxed_opaque_existential_1((v61 + 112), *(v61 + 136));
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 240) = v63;
  *v63 = v64;
  v63[1] = sub_2698144F0;
  v65 = *(v0 + 80);
  OUTLINED_FUNCTION_7_8();

  return sub_2697B7D94(v66, v67, v68);
}

uint64_t sub_2698144F0()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;
  v5 = v2[30];
  v6 = v2[24];
  *v4 = *v1;
  v3[31] = v0;

  v7 = v2[23];
  if (v0)
  {
    v8 = v3[21];

    v9 = sub_269814934;
  }

  else
  {

    v9 = sub_269814650;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_269814650()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 120);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v58 = *(v8 + 32);
  v58(v5, *(v0 + 80), v7);
  v9 = OUTLINED_FUNCTION_50_0();
  v2(v9);
  (*(v8 + 16))(v6, v5, v7);
  v10 = sub_2698548B4();
  v11 = sub_269854F14();
  v12 = os_log_type_enabled(v10, v11);
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  v15 = *(v0 + 56);
  if (v12)
  {
    v16 = OUTLINED_FUNCTION_27_2();
    *v16 = 134217984;
    v17 = *(sub_269853964() + 16);

    (*(v14 + 8))(v13, v15);
    *(v16 + 4) = v17;
    _os_log_impl(&dword_269684000, v10, v11, "AppSelectionResultRemapper gathered %ld values", v16, 0xCu);
    OUTLINED_FUNCTION_10();
  }

  else
  {
    (*(v14 + 8))(*(v0 + 72), *(v0 + 56));
  }

  v18 = v10;
  v51 = *(v0 + 224);
  v52 = *(v0 + 232);
  v56 = *(v0 + 260);
  v19 = *(v0 + 176);
  v55 = *(v0 + 168);
  v20 = *(v0 + 160);
  v21 = *(v0 + 136);
  v22 = *(v0 + 144);
  v23 = *(v0 + 120);
  v24 = *(v0 + 96);
  v53 = *(v0 + 256);
  v54 = *(v0 + 88);
  v25 = *(v0 + 56);
  v27 = *(v0 + 32);
  v26 = *(v0 + 40);
  v57 = *(v0 + 24);

  v28 = v26 | v20;
  v29 = v19 | (v26 != 0);
  v51(v23, v24);
  v30 = v21[7];
  OUTLINED_FUNCTION_2_41();
  sub_269815844(v27 + v53, v22 + v31, v32);
  v58(v22 + v21[8], v54, v25);
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v25);
  v36 = (v27 + v21[10]);
  v37 = *v36;
  v38 = v36[1];
  *v22 = v55;
  *(v22 + 8) = v56;
  *(v22 + 16) = v29;
  *(v22 + v21[9]) = v28;
  v39 = (v22 + v21[10]);
  *v39 = v37;
  v39[1] = v38;
  OUTLINED_FUNCTION_0_61();
  sub_2698158A0(v22, v57, v40);
  type metadata accessor for AppSelectionResult(0);
  OUTLINED_FUNCTION_16_26();
  v42 = *(v0 + 144);
  v41 = *(v0 + 152);
  v44 = *(v0 + 120);
  v43 = *(v0 + 128);
  v45 = *(v0 + 112);
  v47 = *(v0 + 80);
  v46 = *(v0 + 88);
  v48 = *(v0 + 72);

  OUTLINED_FUNCTION_7_7();

  return v49();
}

uint64_t sub_269814934()
{
  v30 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 216);
  (*(v0 + 208))(*(v0 + 112), *(v0 + 200), *(v0 + 96));
  v3 = v1;
  v4 = sub_2698548B4();
  v5 = sub_269854F24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 248);
    v27 = *(v0 + 224);
    v28 = *(v0 + 232);
    v7 = *(v0 + 112);
    v8 = *(v0 + 96);
    v9 = OUTLINED_FUNCTION_27_2();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136315138;
    *(v0 + 16) = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v12 = sub_269854AE4();
    v14 = sub_26974F520(v12, v13, &v29);

    *(v9 + 4) = v14;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v15, v16, "AppSelectionResultRemapper error gathering signals for AppSelectionResult.disambiguate, %s");
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v27(v7, v8);
  }

  else
  {
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    v19 = *(v0 + 112);
    v20 = *(v0 + 96);

    v18(v19, v20);
  }

  v22 = *(v0 + 24);
  v21 = *(v0 + 32);
  OUTLINED_FUNCTION_11_37();
  sub_269815844(v23, v22, v24);
  type metadata accessor for AppSelectionResult(0);
  OUTLINED_FUNCTION_16_26();
  OUTLINED_FUNCTION_24_20();

  OUTLINED_FUNCTION_7_7();

  return v25();
}

BOOL sub_269814B44(double a1, double a2)
{
  v5 = *(v2 + 152);
  v6 = *(v2 + 160);
  v7 = v5();
  v5();
  v9 = 2;
  if (v7 < a1)
  {
    v9 = 3;
  }

  if (v8 >= a2)
  {
    return v7 < a1;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_269814BA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v3 = OUTLINED_FUNCTION_8_9(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = sub_269851D34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = *(v0 + 80);
  sub_2697B8EC4(v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_26969B0C0(v7, &unk_280322D50, &unk_2698583F0);
    return 0;
  }

  v18 = (*(v9 + 32))(v15, v7, v8);
  v19 = *(v1 + 176);
  (*(v1 + 168))(v18);
  sub_269851CB4();
  v21 = v20;
  v22 = *(v9 + 8);
  v22(v13, v8);
  result = (v22)(v15, v8);
  v23 = *(v1 + 48);
  v24 = (v23 * 60) >> 64;
  v25 = 60 * v23;
  if (v24 == v25 >> 63)
  {
    if ((v25 * 60) >> 64 == (60 * v25) >> 63)
    {
      return v21 < (60 * v25);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_269814DC4()
{
  v1 = v0[10];
  swift_unknownObjectRelease();
  v2 = v0[13];

  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  v3 = v0[20];

  v4 = v0[22];

  v5 = v0[24];
  sub_269815954(v0[23]);
  return v0;
}

uint64_t sub_269814E0C()
{
  sub_269814DC4();

  return MEMORY[0x2821FE8D8](v0, 200, 7);
}

uint64_t sub_269814EEC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_269815480(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_269815070(void *a1, int64_t a2, char a3)
{
  result = sub_269815964(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_269815090(uint64_t a1, int64_t a2, char a3)
{
  result = sub_269815A7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2698150B0(void *a1, int64_t a2, char a3)
{
  result = sub_269815B8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2698151C4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_269815D7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26981523C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_269815E8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_269815304(uint64_t a1, int64_t a2, char a3)
{
  result = sub_269815F9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_269815324(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2698160AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_269815440(uint64_t a1, int64_t a2, char a3)
{
  result = sub_269816440(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_269815460(uint64_t a1, int64_t a2, char a3)
{
  result = sub_269816558(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_269815480(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242C8, &qword_26985F308);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_26977D8A4((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242D0, &qword_26985F310);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_269815598(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_29();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
      v11 = OUTLINED_FUNCTION_117_0();
      _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_25_20();
      *(v11 + 16) = v9;
      *(v11 + 24) = v12;
      if (a1)
      {
LABEL_12:
        sub_26968E61C((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_42_4();
  if (!v7)
  {
    OUTLINED_FUNCTION_6_28();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_269815678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_29();
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
      OUTLINED_FUNCTION_30_18(a1, a2, a3, a4, a5, a6);
      v15 = OUTLINED_FUNCTION_117_0();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_25_20();
      v15[2] = v13;
      v15[3] = v16;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_42_4();
  if (!v11)
  {
    OUTLINED_FUNCTION_6_28();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_269815750(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_29();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324228, &qword_269867D20);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      *(v11 + 16) = v9;
      *(v11 + 24) = 2 * ((v12 - 32) / 24);
      if (a1)
      {
LABEL_12:
        sub_26977D8A4((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_42_4();
  if (!v7)
  {
    OUTLINED_FUNCTION_6_28();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_269815844(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_50_0();
  v8(v7);
  return a2;
}

uint64_t sub_2698158A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_50_0();
  v8(v7);
  return a2;
}

uint64_t sub_2698158FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_269815954(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_269815964(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324270, &unk_26985F2B0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_26977E47C(a4 + 32, v8, v10 + 4);
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324010, &qword_2698679E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_269815A7C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325948, &unk_269867D50);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26977D884((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228B0, &qword_2698577D8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_269815B8C(void *result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242B8, &unk_269867D40);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_26977E47C(a4 + 32, v8, v10 + 4);
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242C0, &qword_26985F300);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_269815CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_29();
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
      OUTLINED_FUNCTION_30_18(a1, a2, a3, a4, a5, a6);
      v15 = OUTLINED_FUNCTION_117_0();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_25_20();
      v15[2] = v13;
      v15[3] = v16;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_42_4();
  if (!v11)
  {
    OUTLINED_FUNCTION_6_28();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_269815D7C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325970, &qword_269867D98);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26968E61C((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325978, &unk_269867DA0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_269815E8C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325960, &qword_269867D78);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26977E468((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B08, &unk_269867D80);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_269815F9C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803249A8, &qword_269860CE8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26968E61C((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2698160AC(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324300, &qword_26985F370);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26977E468((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324308, &qword_26985F378);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2698161BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_29();
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
      OUTLINED_FUNCTION_30_18(a1, a2, a3, a4, a5, a6);
      v15 = OUTLINED_FUNCTION_117_0();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_25_20();
      v15[2] = v13;
      v15[3] = v16;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_42_4();
  if (!v11)
  {
    OUTLINED_FUNCTION_6_28();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26981629C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_7_29();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_42_4();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
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
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_30_18(a1, a2, a3, a4, a5, a6);
  v17 = a7(0);
  OUTLINED_FUNCTION_5_12(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(a7(0) - 8);
  if (v11)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    a8(a4 + v26, v15, v22 + v26);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_269816440(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324280, &unk_26985F2C0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_26977D8A4((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324288, &unk_269867D30);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_269816558(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325988, &qword_269867DC0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_269689B50((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325990, qword_269867DC8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_269816670(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x26D647190](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_269816670(v6, a2, a3);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_36()
{
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[15];
  v9 = v0[12];
}

uint64_t OUTLINED_FUNCTION_15_30(uint64_t a1)
{

  return sub_2698158FC(a1, type metadata accessor for ModelInput);
}

uint64_t OUTLINED_FUNCTION_16_26()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_24_20()
{
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];
}

void OUTLINED_FUNCTION_28_17()
{

  sub_269814F0C(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_30_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t sub_269816874(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a5;
  v61 = a3;
  v65 = sub_2698548D4();
  v67 = *(v65 - 8);
  v9 = *(v67 + 64);
  v10 = MEMORY[0x28223BE20](v65);
  v62 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v59 = &v57 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v57 - v17;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = (*(v20 + 8))(v19, v20);
  if (!v22)
  {
    return 0;
  }

  v58 = v16;
  v23 = v22;
  v63 = v21;
  v64 = v5;
  v25 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v26 = (*(v24 + 32))(v25, v24);
  v27 = a2;
  if (a2)
  {
    v28 = 0xD000000000000016;
    v29 = 0x800000026987B860;
  }

  else
  {
    v29 = 0x800000026987B840;
    v28 = 0xD000000000000011;
  }

  v30 = sub_269807CB4(v28, v29, v26);

  v31 = 0xD000000000000011;
  if (v30)
  {
    v32 = v63;
    if (sub_269807CB4(v63, v23, a4))
    {
      if (qword_280322708 != -1)
      {
        OUTLINED_FUNCTION_2_1();
      }

      v33 = v65;
      __swift_project_value_buffer(v65, qword_281571B50);
      OUTLINED_FUNCTION_2_42();
      v34(v18);

      v35 = sub_2698548B4();
      sub_269854F14();
      OUTLINED_FUNCTION_27_11();
      if (OUTLINED_FUNCTION_7_46())
      {
        OUTLINED_FUNCTION_27_2();
        v36 = OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_4_41(v36);
        OUTLINED_FUNCTION_1_54(4.8149e-34);
        OUTLINED_FUNCTION_9_37();
        *(a1 + 4) = a2;
        v39 = "PlayOnThirdPartyApp including %s due to includeAsVideoApps override";
LABEL_31:
        OUTLINED_FUNCTION_5_43(&dword_269684000, v37, v38, v39);
        __swift_destroy_boxed_opaque_existential_0(a2);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();

LABEL_33:
        (*(v31 + 8))(v18, v33);
        return 1;
      }

      goto LABEL_32;
    }

    if (sub_269807CB4(v32, v23, v60))
    {
      if (qword_280322708 != -1)
      {
        OUTLINED_FUNCTION_2_1();
      }

      v40 = v65;
      __swift_project_value_buffer(v65, qword_281571B50);
      OUTLINED_FUNCTION_2_42();
      v41 = v58;
      v42(v58);

      v43 = sub_2698548B4();
      sub_269854F14();
      OUTLINED_FUNCTION_27_11();
      if (OUTLINED_FUNCTION_7_46())
      {
        OUTLINED_FUNCTION_27_2();
        v44 = OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_4_41(v44);
        OUTLINED_FUNCTION_1_54(4.8149e-34);
        OUTLINED_FUNCTION_9_37();
        *(a1 + 4) = a2;
        OUTLINED_FUNCTION_5_43(&dword_269684000, v45, v46, "PlayOnThirdPartyApp excluding %s due to excludeAsVideoApps override");
        __swift_destroy_boxed_opaque_existential_0(a2);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      else
      {
      }

      MEMORY[0xD000000000000019](v41, v40);
      return 0;
    }

    v47 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v47);
    v48 = (v27[5])(v47, v27);
    v49 = sub_269807CB4(0xD000000000000014, 0x800000026987B820, v48);

    if (v49)
    {
      if (qword_280322708 != -1)
      {
        OUTLINED_FUNCTION_2_1();
      }

      v33 = v65;
      __swift_project_value_buffer(v65, qword_281571B50);
      OUTLINED_FUNCTION_2_42();
      v18 = v59;
      v50(v59);

      v35 = sub_2698548B4();
      sub_269854F14();
      OUTLINED_FUNCTION_27_11();
      if (OUTLINED_FUNCTION_7_46())
      {
        OUTLINED_FUNCTION_27_2();
        v51 = OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_4_41(v51);
        OUTLINED_FUNCTION_1_54(4.8149e-34);
        OUTLINED_FUNCTION_9_37();
        *(a1 + 4) = v27;
        v39 = "PlayOnThirdPartyApp including %s due to SiriKit video category support";
        goto LABEL_31;
      }

LABEL_32:

      goto LABEL_33;
    }
  }

  v66[3] = &type metadata for SiriVideoFeatureKeys;
  v66[4] = sub_2696A2978();
  LOBYTE(v66[0]) = 3;
  v52 = sub_269853B34();
  __swift_destroy_boxed_opaque_existential_0(v66);
  if (v52)
  {
    if (a2)
    {
      v53 = sub_269832F24(v63);
    }

    else
    {
      v53 = sub_269832854(v63);
    }

    v33 = v65;
    v31 = v67;
    v18 = v62;
    if (v53)
    {

      if (qword_280322708 != -1)
      {
        OUTLINED_FUNCTION_2_1();
      }

      v54 = __swift_project_value_buffer(v33, qword_281571B50);
      (*(v31 + 16))(v18, v54, v33);

      v35 = sub_2698548B4();
      sub_269854F14();
      OUTLINED_FUNCTION_27_11();
      if (OUTLINED_FUNCTION_7_46())
      {
        OUTLINED_FUNCTION_27_2();
        v55 = OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_4_41(v55);
        OUTLINED_FUNCTION_1_54(4.8149e-34);
        OUTLINED_FUNCTION_9_37();
        *(a1 + 4) = v27;
        v39 = "PlayOnThirdPartyApp including %s due to AppIntents support";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    return 0;
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_1_54(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 144);

  return sub_26974F520(v5, v2, (v3 - 120));
}

void OUTLINED_FUNCTION_5_43(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_7_46()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_9_37()
{
}

_BYTE *storeEnumTagSinglePayload for SignalRecordingType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for SignalRecordingContext()
{
  result = qword_280325998;
  if (!qword_280325998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26981708C()
{
  sub_26981713C();
  if (v0 <= 0x3F)
  {
    sub_2698171D4();
    if (v1 <= 0x3F)
    {
      sub_269817254();
      if (v2 <= 0x3F)
      {
        sub_269817368();
        if (v3 <= 0x3F)
        {
          sub_2698173D4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26981713C()
{
  if (!qword_2803259A8)
  {
    sub_269817184();
    if (!v1)
    {
      atomic_store(v0, &qword_2803259A8);
    }
  }
}

void sub_269817184()
{
  if (!qword_2803259B0)
  {
    v0 = sub_269854D04();
    if (!v1)
    {
      atomic_store(v0, &qword_2803259B0);
    }
  }
}

void sub_2698171D4()
{
  if (!qword_2803259B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322EA0, &unk_2698577C0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2803259B8);
    }
  }
}

void sub_269817254()
{
  if (!qword_2803259C0)
  {
    MEMORY[0x28223BE20](0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322EA0, &unk_2698577C0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2803259C0);
    }
  }
}

void sub_269817368()
{
  if (!qword_2803259C8)
  {
    type metadata accessor for AppDisambiguationContext(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803259C8);
    }
  }
}

uint64_t sub_2698173D4()
{
  result = qword_2803259D0;
  if (!qword_2803259D0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_2803259D0);
  }

  return result;
}

unint64_t sub_269817400()
{
  result = qword_2803259D8;
  if (!qword_2803259D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803259D8);
  }

  return result;
}

uint64_t sub_269817454()
{
  v1 = type metadata accessor for SignalRecordingContext();
  v2 = OUTLINED_FUNCTION_4_3(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  sub_2697EE474(v0, v6 - v5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2697EE4D8(v7, type metadata accessor for SignalRecordingContext);
      result = 1;
      break;
    case 2u:
      sub_2697EE4D8(v7, type metadata accessor for SignalRecordingContext);
      result = 2;
      break;
    case 3u:
      v13 = *(v7 + 8);

      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0) + 48);
      OUTLINED_FUNCTION_0_55();
      sub_2697EE4D8(v7 + v15, v16);
      result = 3;
      break;
    case 4u:
      v9 = *(v7 + 8);

      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0) + 48);
      OUTLINED_FUNCTION_0_55();
      sub_2697EE4D8(v7 + v11, v12);
      result = 4;
      break;
    case 5u:
      sub_2697EE4D8(v7, type metadata accessor for SignalRecordingContext);
      result = 5;
      break;
    default:
      sub_2697EE4D8(v7, type metadata accessor for SignalRecordingContext);
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_2698175E8()
{
  v1 = v0;
  v2 = type metadata accessor for AppDisambiguationContext(0);
  v3 = OUTLINED_FUNCTION_4_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = type metadata accessor for SignalRecordingContext();
  v10 = OUTLINED_FUNCTION_4_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v15 = (v14 - v13);
  sub_2697EE474(v1, v14 - v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v22 = v15[2];
      v23 = v15[4];
      v19 = v15[5];
      v24 = v15[6];

      break;
    case 3u:
    case 4u:
      v16 = v15[1];

      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0);
      sub_26971522C(v15 + *(v17 + 48), v8);
      v18 = (v8 + *(v2 + 40));
      v19 = *v18;
      v20 = v18[1];

      OUTLINED_FUNCTION_0_55();
      sub_2697EE4D8(v8, v21);
      break;
    case 5u:
      v19 = *v15;
      v25 = v15[1];
      break;
    default:
      sub_2697EE4D8(v15, type metadata accessor for SignalRecordingContext);
      v19 = 0;
      break;
  }

  return v19;
}

void sub_269817778()
{
  OUTLINED_FUNCTION_19_1();
  v16 = sub_269854F94();
  v0 = OUTLINED_FUNCTION_8(v16);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v8 = sub_269854F74();
  v9 = OUTLINED_FUNCTION_4_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = sub_269854994();
  v13 = OUTLINED_FUNCTION_8_9(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  sub_2696ADFE4();
  sub_269854974();
  sub_26981A020(&qword_2815718E8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324D40, &unk_269862100);
  sub_269693204(&qword_281571900, &unk_280324D40, &unk_269862100);
  sub_269855174();
  (*(v2 + 104))(v7, *MEMORY[0x277D85260], v16);
  sub_269854FB4();
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269817994(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = *(a4 + 16);

  a2(v7);
}

id sub_269817A14(void *a1, uint64_t a2, void (*a3)(void))
{
  result = [a1 eventBody];
  if (result)
  {
    v6 = swift_beginAccess();
    MEMORY[0x26D645B90](v6);
    a3(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_269854CF4();
    return swift_endAccess();
  }

  return result;
}

void sub_269817ABC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_269817B24()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v0[2] = v12;
  v0[3] = v13;
  v0[4] = v14;
  OUTLINED_FUNCTION_25_3();
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = v9;
  v15[4] = v7;
  v15[5] = v5;
  v15[6] = v3;

  sub_269817778();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A48, &unk_269867F28);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_269853B14();

  v1[5] = v19;
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269817C20()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_7_47();
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = v5;
  v12[4] = v3;
  v12[5] = v1;
  v12[6] = v11;
  v12[7] = v9;

  sub_269853B24();
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269817CC4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, void (*a6)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A40, &qword_2698672A8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v18[-1] - v13;
  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325AE0, &qword_269867F48);
  v18[4] = sub_269693204(&qword_280325AE8, &qword_280325AE0, &qword_269867F48);
  v15 = swift_allocObject();
  v18[0] = v15;
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = sub_26981A488;
  v15[6] = 0;
  v15[7] = sub_26981A4A0;
  v15[8] = 0;

  a4(v18);
  __swift_destroy_boxed_opaque_existential_0(v18);
  a6(v14);
  return sub_26969B0C0(v14, &qword_280325A40, &qword_2698672A8);
}

uint64_t sub_269817E54(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, void (*a6)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A40, &qword_2698672A8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v18[-1] - v13;
  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A50, &qword_269867F38);
  v18[4] = sub_269693204(&qword_280325A58, &qword_280325A50, &qword_269867F38);
  v15 = swift_allocObject();
  v18[0] = v15;
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = sub_26981A488;
  v15[6] = 0;
  v15[7] = sub_26981A4A0;
  v15[8] = 0;

  a4(v18);
  __swift_destroy_boxed_opaque_existential_0(v18);
  a6(v14);
  return sub_26969B0C0(v14, &qword_280325A40, &qword_2698672A8);
}

uint64_t sub_269817FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 40);
  a3[3] = &type metadata for LastAppSignal;
  a3[4] = sub_269819F50();
  OUTLINED_FUNCTION_7_47();
  v9 = swift_allocObject();
  *a3 = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v7;
  v9[5] = v8;
  v9[6] = sub_269801F50;
  v9[7] = 0;
}

uint64_t sub_26981808C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_12_31(a1, a2, a3, a4);
  v9 = OUTLINED_FUNCTION_8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A40, &qword_2698672A8);
  v13 = OUTLINED_FUNCTION_8_9(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = OUTLINED_FUNCTION_14_31();
  v17 = OUTLINED_FUNCTION_4_3(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6_49();
  if (__swift_getEnumTagSinglePayload(v6, 1, v16) == 1)
  {
    sub_26969B0C0(v6, &qword_280325A40, &qword_2698672A8);
    return -1;
  }

  sub_26981A1B8(v6, v5, type metadata accessor for AppLifecycle);
  v21 = *v5 == v4 && v5[1] == v32;
  if (!v21 && (sub_269855584() & 1) == 0)
  {
    sub_269819FA4(v5);
    return -1;
  }

  v22 = *(v31 + 32);
  (*(v31 + 24))();
  v23 = *(v16 + 20);
  sub_269851CB4();
  v24 = OUTLINED_FUNCTION_11_38();
  v25(v24);
  v26 = OUTLINED_FUNCTION_10_32();
  if (v27)
  {
    v28 = v26 <= -9.22337204e18;
  }

  else
  {
    v28 = 1;
  }

  v29 = llround(v7);
  if (v28)
  {
    v20 = -1;
  }

  else
  {
    v20 = v29;
  }

  sub_269819FA4(v5);
  return v20;
}

uint64_t sub_269818290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 40);
  a4[3] = &type metadata for LastAppSignal;
  a4[4] = sub_269819F50();
  OUTLINED_FUNCTION_7_47();
  v11 = swift_allocObject();
  *a4 = v11;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v9;
  v11[5] = v10;
  v11[6] = a3;
  v11[7] = v4;
}